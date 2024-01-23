package main_test

import (
	"fmt"
	"testing"

	"github.com/stretchr/testify/require"

	"github.com/cosmos/cosmos-sdk/client/flags"
	svrcmd "github.com/cosmos/cosmos-sdk/server/cmd"
	"github.com/cosmos/cosmos-sdk/x/genutil/client/cli"

	"github.com/evmos/ethermint/app"
	dailyd "github.com/evmos/ethermint/cmd/dailyd"
)

func TestInitCmd(t *testing.T) {
	rootCmd, _ := dailyd.NewRootCmd()
	rootCmd.SetArgs([]string{
		"init",          // Test the init cmd
		"etherminttest", // Moniker
		fmt.Sprintf("--%s=%s", cli.FlagOverwrite, "true"), // Overwrite genesis.json, in case it already exists
		fmt.Sprintf("--%s=%s", flags.FlagChainID, "daily_4568-1"),
	})

	err := svrcmd.Execute(rootCmd, "", app.DefaultNodeHome)
	require.NoError(t, err)
}
