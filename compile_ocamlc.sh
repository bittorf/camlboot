#!/usr/bin/env bash

ulimit -s 2000000

export COMPILER="../miniml/interp/interp -g -nostdlib -I stdlib -use-prims byterun/primitives"
export COMPFLAGS="-strict-sequence -principal -absname -w +a-4-9-41-42-44-45-48 -warn-error A -bin-annot -safe-string -strict-formats -I utils -I parsing -I typing -I bytecomp -I middle_end -I middle_end/base_types -I asmcomp -I asmcomp/debug -I driver -I toplevel"

compile () {
	echo $COMPILER $COMPFLAGS -c $@
	$COMPILER $COMPFLAGS -c $@
}

compile utils/config.mli
compile utils/config.ml
compile utils/misc.mli
compile utils/misc.ml
compile utils/identifiable.mli
compile utils/identifiable.ml
compile utils/numbers.mli
compile utils/numbers.ml
compile utils/arg_helper.mli
compile utils/arg_helper.ml
compile utils/profile.mli
compile utils/clflags.mli
compile utils/clflags.ml
compile utils/tbl.mli
compile utils/tbl.ml
compile utils/profile.ml
compile utils/terminfo.mli
compile utils/terminfo.ml
compile utils/ccomp.mli
compile utils/ccomp.ml
compile utils/warnings.mli
compile utils/warnings.ml
compile utils/consistbl.mli
compile utils/consistbl.ml
compile utils/strongly_connected_components.mli
compile utils/strongly_connected_components.ml
compile utils/build_path_prefix_map.mli
compile utils/build_path_prefix_map.ml
compile utils/targetint.mli
compile utils/targetint.ml
compile parsing/location.mli
compile parsing/location.ml
compile parsing/longident.mli
compile parsing/longident.ml
compile parsing/asttypes.mli
compile parsing/parsetree.mli
compile parsing/docstrings.mli
compile parsing/docstrings.ml
compile parsing/syntaxerr.mli
compile parsing/syntaxerr.ml
compile parsing/ast_helper.mli
compile parsing/ast_helper.ml
compile parsing/parser.mli
compile parsing/parser.ml
compile parsing/lexer.mli
compile parsing/lexer.ml
compile parsing/parse.mli
compile parsing/parse.ml
compile parsing/printast.mli
compile parsing/printast.ml
compile parsing/pprintast.mli
compile parsing/pprintast.ml
compile parsing/ast_mapper.mli
compile parsing/ast_mapper.ml
compile parsing/ast_iterator.mli
compile parsing/ast_iterator.ml
compile parsing/attr_helper.mli
compile parsing/attr_helper.ml
compile parsing/builtin_attributes.mli
compile parsing/builtin_attributes.ml
compile parsing/ast_invariants.mli
compile parsing/ast_invariants.ml
compile parsing/depend.mli
compile parsing/depend.ml
compile typing/ident.mli
compile typing/ident.ml
compile typing/path.mli
compile typing/path.ml
compile typing/outcometree.mli
compile typing/primitive.mli
compile typing/primitive.ml
compile typing/types.mli
compile typing/types.ml
compile typing/btype.mli
compile typing/btype.ml
compile typing/oprint.mli
compile typing/oprint.ml
compile typing/subst.mli
compile typing/subst.ml
compile typing/predef.mli
compile typing/predef.ml
compile typing/datarepr.mli
compile typing/datarepr.ml
compile typing/cmi_format.mli
compile typing/cmi_format.ml
compile typing/env.mli
compile typing/env.ml
compile typing/typedtree.mli
compile typing/typedtree.ml
compile typing/printtyped.mli
compile typing/printtyped.ml
compile typing/ctype.mli
compile typing/ctype.ml
compile typing/printtyp.mli
compile typing/printtyp.ml
compile typing/includeclass.mli
compile typing/includeclass.ml
compile typing/mtype.mli
compile typing/mtype.ml
compile typing/envaux.mli
compile typing/envaux.ml
compile typing/includecore.mli
compile typing/includecore.ml
compile typing/typedtreeIter.mli
compile typing/typedtreeIter.ml
compile typing/typedtreeMap.mli
compile typing/typedtreeMap.ml
compile typing/tast_mapper.mli
compile typing/tast_mapper.ml
compile typing/cmt_format.mli
compile typing/cmt_format.ml
compile typing/untypeast.mli
compile typing/untypeast.ml
compile typing/includemod.mli
compile typing/includemod.ml
compile typing/typetexp.mli
compile typing/typetexp.ml
compile typing/printpat.mli
compile typing/printpat.ml
compile typing/parmatch.mli
compile typing/parmatch.ml
compile typing/annot.mli
compile typing/stypes.mli
compile typing/stypes.ml
compile typing/typedecl.mli
compile typing/typedecl.ml
compile bytecomp/lambda.mli
compile typing/typeopt.mli
compile typing/typeopt.ml
compile typing/typecore.mli
compile typing/typecore.ml
compile typing/typeclass.mli
compile typing/typeclass.ml
compile typing/typemod.mli
compile typing/typemod.ml
compile bytecomp/lambda.ml
compile bytecomp/printlambda.mli
compile bytecomp/printlambda.ml
compile bytecomp/semantics_of_primitives.mli
compile bytecomp/semantics_of_primitives.ml
compile bytecomp/switch.mli
compile bytecomp/switch.ml
compile bytecomp/matching.mli
compile bytecomp/matching.ml
compile bytecomp/translobj.mli
compile bytecomp/translobj.ml
compile bytecomp/translattribute.mli
compile bytecomp/translattribute.ml
compile bytecomp/translprim.mli
compile bytecomp/translprim.ml
compile bytecomp/translcore.mli
compile bytecomp/translcore.ml
compile bytecomp/translclass.mli
compile bytecomp/translclass.ml
compile bytecomp/translmod.mli
compile bytecomp/translmod.ml
compile bytecomp/simplif.mli
compile bytecomp/simplif.ml
compile bytecomp/runtimedef.mli
compile bytecomp/runtimedef.ml
compile bytecomp/instruct.mli
compile bytecomp/meta.mli
compile bytecomp/meta.ml
compile bytecomp/opcodes.ml
compile bytecomp/bytesections.mli
compile bytecomp/bytesections.ml
compile bytecomp/dll.mli
compile bytecomp/dll.ml
compile bytecomp/cmo_format.mli
compile bytecomp/symtable.mli
compile bytecomp/symtable.ml
compile driver/pparse.mli
compile driver/pparse.ml
compile driver/main_args.mli
compile driver/main_args.ml
compile driver/compenv.mli
compile driver/compenv.ml
compile driver/compmisc.mli
compile driver/compmisc.ml
compile driver/compdynlink.mli
compile -impl driver/compdynlink.mlbyte
compile driver/compplugin.mli
compile driver/compplugin.ml
compile driver/makedepend.mli
compile driver/makedepend.ml
echo $COMPILER -a -linkall -o compilerlibs/ocamlcommon.cma utils/config.cmo utils/misc.cmo utils/identifiable.cmo utils/numbers.cmo utils/arg_helper.cmo utils/clflags.cmo utils/tbl.cmo utils/profile.cmo utils/terminfo.cmo utils/ccomp.cmo utils/warnings.cmo utils/consistbl.cmo utils/strongly_connected_components.cmo utils/build_path_prefix_map.cmo utils/targetint.cmo parsing/location.cmo parsing/longident.cmo parsing/docstrings.cmo parsing/syntaxerr.cmo parsing/ast_helper.cmo parsing/parser.cmo parsing/lexer.cmo parsing/parse.cmo parsing/printast.cmo parsing/pprintast.cmo parsing/ast_mapper.cmo parsing/ast_iterator.cmo parsing/attr_helper.cmo parsing/builtin_attributes.cmo parsing/ast_invariants.cmo parsing/depend.cmo typing/ident.cmo typing/path.cmo typing/primitive.cmo typing/types.cmo typing/btype.cmo typing/oprint.cmo typing/subst.cmo typing/predef.cmo typing/datarepr.cmo typing/cmi_format.cmo typing/env.cmo typing/typedtree.cmo typing/printtyped.cmo typing/ctype.cmo typing/printtyp.cmo typing/includeclass.cmo typing/mtype.cmo typing/envaux.cmo typing/includecore.cmo typing/typedtreeIter.cmo typing/typedtreeMap.cmo typing/tast_mapper.cmo typing/cmt_format.cmo typing/untypeast.cmo typing/includemod.cmo typing/typetexp.cmo typing/printpat.cmo typing/parmatch.cmo typing/stypes.cmo typing/typedecl.cmo typing/typeopt.cmo typing/typecore.cmo typing/typeclass.cmo typing/typemod.cmo bytecomp/lambda.cmo bytecomp/printlambda.cmo bytecomp/semantics_of_primitives.cmo bytecomp/switch.cmo bytecomp/matching.cmo bytecomp/translobj.cmo bytecomp/translattribute.cmo bytecomp/translprim.cmo bytecomp/translcore.cmo bytecomp/translclass.cmo bytecomp/translmod.cmo bytecomp/simplif.cmo bytecomp/runtimedef.cmo bytecomp/meta.cmo bytecomp/opcodes.cmo bytecomp/bytesections.cmo bytecomp/dll.cmo bytecomp/symtable.cmo driver/pparse.cmo driver/main_args.cmo driver/compenv.cmo driver/compmisc.cmo driver/compdynlink.cmo driver/compplugin.cmo driver/makedepend.cmo
$COMPILER -a -linkall -o compilerlibs/ocamlcommon.cma utils/config.cmo utils/misc.cmo utils/identifiable.cmo utils/numbers.cmo utils/arg_helper.cmo utils/clflags.cmo utils/tbl.cmo utils/profile.cmo utils/terminfo.cmo utils/ccomp.cmo utils/warnings.cmo utils/consistbl.cmo utils/strongly_connected_components.cmo utils/build_path_prefix_map.cmo utils/targetint.cmo parsing/location.cmo parsing/longident.cmo parsing/docstrings.cmo parsing/syntaxerr.cmo parsing/ast_helper.cmo parsing/parser.cmo parsing/lexer.cmo parsing/parse.cmo parsing/printast.cmo parsing/pprintast.cmo parsing/ast_mapper.cmo parsing/ast_iterator.cmo parsing/attr_helper.cmo parsing/builtin_attributes.cmo parsing/ast_invariants.cmo parsing/depend.cmo typing/ident.cmo typing/path.cmo typing/primitive.cmo typing/types.cmo typing/btype.cmo typing/oprint.cmo typing/subst.cmo typing/predef.cmo typing/datarepr.cmo typing/cmi_format.cmo typing/env.cmo typing/typedtree.cmo typing/printtyped.cmo typing/ctype.cmo typing/printtyp.cmo typing/includeclass.cmo typing/mtype.cmo typing/envaux.cmo typing/includecore.cmo typing/typedtreeIter.cmo typing/typedtreeMap.cmo typing/tast_mapper.cmo typing/cmt_format.cmo typing/untypeast.cmo typing/includemod.cmo typing/typetexp.cmo typing/printpat.cmo typing/parmatch.cmo typing/stypes.cmo typing/typedecl.cmo typing/typeopt.cmo typing/typecore.cmo typing/typeclass.cmo typing/typemod.cmo bytecomp/lambda.cmo bytecomp/printlambda.cmo bytecomp/semantics_of_primitives.cmo bytecomp/switch.cmo bytecomp/matching.cmo bytecomp/translobj.cmo bytecomp/translattribute.cmo bytecomp/translprim.cmo bytecomp/translcore.cmo bytecomp/translclass.cmo bytecomp/translmod.cmo bytecomp/simplif.cmo bytecomp/runtimedef.cmo bytecomp/meta.cmo bytecomp/opcodes.cmo bytecomp/bytesections.cmo bytecomp/dll.cmo bytecomp/symtable.cmo driver/pparse.cmo driver/main_args.cmo driver/compenv.cmo driver/compmisc.cmo driver/compdynlink.cmo driver/compplugin.cmo driver/makedepend.cmo
compile bytecomp/instruct.ml
compile bytecomp/bytegen.mli
compile bytecomp/bytegen.ml
compile bytecomp/printinstr.mli
compile bytecomp/printinstr.ml
compile bytecomp/emitcode.mli
compile bytecomp/emitcode.ml
compile bytecomp/bytelink.mli
compile bytecomp/bytelink.ml
compile bytecomp/bytelibrarian.mli
compile bytecomp/bytelibrarian.ml
compile bytecomp/bytepackager.mli
compile bytecomp/bytepackager.ml
compile driver/errors.mli
compile driver/errors.ml
compile driver/compile.mli
compile driver/compile.ml
echo $COMPILER -a -o compilerlibs/ocamlbytecomp.cma bytecomp/instruct.cmo bytecomp/bytegen.cmo bytecomp/printinstr.cmo bytecomp/emitcode.cmo bytecomp/bytelink.cmo bytecomp/bytelibrarian.cmo bytecomp/bytepackager.cmo driver/errors.cmo driver/compile.cmo
$COMPILER -a -o compilerlibs/ocamlbytecomp.cma bytecomp/instruct.cmo bytecomp/bytegen.cmo bytecomp/printinstr.cmo bytecomp/emitcode.cmo bytecomp/bytelink.cmo bytecomp/bytelibrarian.cmo bytecomp/bytepackager.cmo driver/errors.cmo driver/compile.cmo
compile driver/main.mli
compile driver/main.ml
echo $COMPILER  -compat-32 -o ocamlc compilerlibs/ocamlcommon.cma compilerlibs/ocamlbytecomp.cma driver/main.cmo
$COMPILER  -compat-32 -o ocamlc compilerlibs/ocamlcommon.cma compilerlibs/ocamlbytecomp.cma driver/main.cmo
