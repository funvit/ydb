# Generated by devtools/yamaker.

LIBRARY()

LICENSE(Apache-2.0 WITH LLVM-exception)

LICENSE_TEXTS(.yandex_meta/licenses.list.txt)

PEERDIR(
    contrib/libs/llvm12
    contrib/libs/llvm12/include
    contrib/libs/llvm12/lib/Analysis
    contrib/libs/llvm12/lib/BinaryFormat
    contrib/libs/llvm12/lib/CodeGen
    contrib/libs/llvm12/lib/DebugInfo/CodeView
    contrib/libs/llvm12/lib/DebugInfo/DWARF
    contrib/libs/llvm12/lib/DebugInfo/MSF
    contrib/libs/llvm12/lib/IR
    contrib/libs/llvm12/lib/MC
    contrib/libs/llvm12/lib/MC/MCParser
    contrib/libs/llvm12/lib/Remarks
    contrib/libs/llvm12/lib/Support
    contrib/libs/llvm12/lib/Target
)

IF (SANITIZER_TYPE == "undefined")
    PEERDIR(
        contrib/libs/llvm12/lib/Target/ARM/MCTargetDesc
    )
ENDIF()

ADDINCL(
    contrib/libs/llvm12/lib/CodeGen/AsmPrinter
)

NO_COMPILER_WARNINGS()

NO_UTIL()

SRCS(
    AIXException.cpp
    ARMException.cpp
    AccelTable.cpp
    AddressPool.cpp
    AsmPrinter.cpp
    AsmPrinterDwarf.cpp
    AsmPrinterInlineAsm.cpp
    CodeViewDebug.cpp
    DIE.cpp
    DIEHash.cpp
    DbgEntityHistoryCalculator.cpp
    DebugHandlerBase.cpp
    DebugLocStream.cpp
    DwarfCFIException.cpp
    DwarfCompileUnit.cpp
    DwarfDebug.cpp
    DwarfExpression.cpp
    DwarfFile.cpp
    DwarfStringPool.cpp
    DwarfUnit.cpp
    EHStreamer.cpp
    ErlangGCPrinter.cpp
    OcamlGCPrinter.cpp
    PseudoProbePrinter.cpp
    WasmException.cpp
    WinCFGuard.cpp
    WinException.cpp
)

END()