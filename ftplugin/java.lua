-- need to trim newline from the end
local jdtlsPath = string.gsub(
    vim.fn.system({ 'which', 'jdtls' }),
    "\n",
    ""
)

local config = {
    cmd = { jdtlsPath },
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
