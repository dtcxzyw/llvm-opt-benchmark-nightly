Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/json-lexer?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"lexer->state == lexer->start_state\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"../qobject/json-lexer.c\00", align 1
@__PRETTY_FUNCTION__.json_lexer_flush = private unnamed_addr constant [35 x i8] c"void json_lexer_flush(JSONLexer *)\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"lexer->state < ARRAY_SIZE(json_lexer)\00", align 1
@__PRETTY_FUNCTION__.next_state = private unnamed_addr constant [54 x i8] c"uint8_t next_state(JSONLexer *, char, _Bool, _Bool *)\00", align 1
@json_lexer = internal unnamed_addr constant <{ [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], <{ [58 x i8], [198 x i8] }>, <{ [58 x i8], [198 x i8] }>, <{ [58 x i8], [198 x i8] }>, [256 x i8], [256 x i8], <{ [58 x i8], [198 x i8] }>, [256 x i8], [256 x i8], <{ [126 x i8], [130 x i8] }>, <{ [126 x i8], [130 x i8] }> }> <{ [256 x i8] zeroinitializer, [256 x i8] c"\90\90\90\90\90\90\90\90\90\01\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\01\01\01\01\01\01\01\01\01\01\01\01\90\01\01\01\01\01\01\01\01\01\01\01\01\01\90\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\90\01\90\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\90\01\90\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\90\90", [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00", [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\03m\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00", [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\00\00", [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\05\05\05\05\05\05m\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\00\00", [256 x i8] c"\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\0A\EA\00\00\00\00\00\00\00\00\00\00\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA", [256 x i8] c"\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\07\07\07\07\07\07\07\07\07\07\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB", <{ [58 x i8], [198 x i8] }> <{ [58 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\07\07\07\07\07\07\07\07\07", [198 x i8] zeroinitializer }>, <{ [58 x i8], [198 x i8] }> <{ [58 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\08\00\00\07\07\07\07\07\07\07\07\07\07", [198 x i8] zeroinitializer }>, <{ [58 x i8], [198 x i8] }> <{ [58 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B", [198 x i8] zeroinitializer }>, [256 x i8] c"\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\09\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\09\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB\EB", [256 x i8] c"\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\0A\EA\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\09\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\09\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA\EA", <{ [58 x i8], [198 x i8] }> <{ [58 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\0C\0C\0C\0C\0C\0C\0C\0C\0C", [198 x i8] zeroinitializer }>, [256 x i8] c"\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC", [256 x i8] c"\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\EE\EE\EE\EE\EE\EE\EE\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\EE\EE\EE\EE\EE\EE\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE\EE", <{ [126 x i8], [130 x i8] }> <{ [126 x i8] c"\00\00\00\00\00\00\00\00\00\10\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\03\00\00\00\00\05\00\00\00\00i\0D\00\00\06\0C\0C\0C\0C\0C\0C\0C\0C\0Ch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00f\00g\00\00\00\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0Ed\00e", [130 x i8] zeroinitializer }>, <{ [126 x i8], [130 x i8] }> <{ [126 x i8] c"\00\00\00\00\00\00\00\00\00\10\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\03\00\00\0F\00\05\00\00\00\00i\0D\00\00\06\0C\0C\0C\0C\0C\0C\0C\0C\0Ch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00f\00g\00\00\00\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0Ed\00e", [130 x i8] zeroinitializer }> }>, align 16

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @json_lexer_init(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = select i1 %1, i32 17, i32 16             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.a, ptr %i.b, align 4
  store i32 %i.a, ptr %0, align 8
  %i.c = tail call ptr @g_string_sized_new(i64 noundef 3) #3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> splat (i32 1), ptr %i.e, align 8
  ret void
}

declare ptr @g_string_sized_new(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @json_lexer_feed(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.05 = phi i64 [ %i.c, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.05
  %i.b = load i8, ptr %i.a, align 1
  tail call fastcc void @json_lexer_feed_char(ptr noundef %0, i8 noundef signext %i.b, i1 noundef zeroext false)
  %i.c = add nuw i64 %.05, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @json_lexer_feed_char(ptr noundef %0, i8 noundef signext %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8
  %i.d = icmp eq i8 %1, 10
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 4          ; 5 uses
  %i.i = zext i8 %1 to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr @json_lexer, i64 %i.i
  %not..i = xor i1 %2, true
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ %narrow.i.not, %bb.o ]
  br i1 %2, label %.split, label %bb.e

.split:                                           ; preds = %bb.d
  %i.m = load i32, ptr %i.h, align 4              ; 2 uses
  %i.n = load i32, ptr %0, align 8
  %.not41 = icmp eq i32 %i.m, %i.n
  br i1 %.not41, label %bb.p, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.0, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.val.pre = load i32, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.split
  %.val = phi i32 [ %.val.pre, %._crit_edge ], [ %i.m, %.split ] ; 2 uses
  %i.o = icmp ult i32 %.val, 18
  br i1 %i.o, label %next_state.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__.next_state) #4
  unreachable

next_state.exit:                                  ; preds = %bb.f
  %i.p = zext nneg i32 %.val to i64
  %gep = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep, i64 %i.p
  %i.q = load i8, ptr %gep, align 1               ; 2 uses
  %.not.i42 = icmp sgt i8 %i.q, -1
  %narrow.i.not = select i1 %not..i, i1 %.not.i42, i1 false ; 2 uses
  %i.r = and i8 %i.q, 127                         ; 2 uses
  %i.s = zext nneg i8 %i.r to i32                 ; 2 uses
  br i1 %narrow.i.not, label %bb.h, label %g_string_append_c_inline.exit

bb.h:                                             ; preds = %next_state.exit
  %i.t = load ptr, ptr %i.j, align 8              ; 6 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = add i64 %i.v, 1                          ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp ult i64 %i.w, %i.y
  br i1 %i.z, label %bb.j, label %.critedge.i

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %i.aa = tail call ptr @g_string_insert_c(ptr noundef %i.t, i64 noundef -1, i8 noundef signext %1) #3 ; 0 uses
  br label %g_string_append_c_inline.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.t, align 8
  store i64 %i.w, ptr %i.u, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  store i8 %1, ptr %i.ac, align 1
  %i.ad = load ptr, ptr %i.t, align 8
  %i.ae = load i64, ptr %i.u, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 0, ptr %i.af, align 1
  br label %g_string_append_c_inline.exit

g_string_append_c_inline.exit:                    ; preds = %bb.j, %.critedge.i, %next_state.exit
  switch i8 %i.r, label %bb.o [
    i8 100, label %bb.k
    i8 101, label %bb.k
    i8 102, label %bb.k
    i8 103, label %bb.k
    i8 104, label %bb.k
    i8 105, label %bb.k
    i8 110, label %bb.k
    i8 106, label %bb.k
    i8 107, label %bb.k
    i8 108, label %bb.k
    i8 109, label %bb.k
    i8 16, label %bb.l
    i8 0, label %bb.m
    i8 1, label %bb.n
  ]

bb.k:                                             ; preds = %g_string_append_c_inline.exit, %g_string_append_c_inline.exit, %g_string_append_c_inline.exit, %g_string_append_c_inline.exit, %g_string_append_c_inline.exit, %g_string_append_c_inline.exit, %g_string_append_c_inline.exit, %g_string_append_c_inline.exit, %g_string_append_c_inline.exit, %g_string_append_c_inline.exit, %g_string_append_c_inline.exit
  %i.ag = load ptr, ptr %i.j, align 8
  %i.ah = load i32, ptr %i.k, align 8
  %i.ai = load i32, ptr %i.l, align 4
  tail call void @json_message_process_token(ptr noundef nonnull %0, ptr noundef %i.ag, i32 noundef %i.s, i32 noundef %i.ah, i32 noundef %i.ai) #3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %g_string_append_c_inline.exit
  %i.aj = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 0, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.aj, align 8
  store i8 0, ptr %i.al, align 1
  %i.am = load i32, ptr %0, align 8
  %i.an = load <2 x i32>, ptr %i.a, align 8
  store <2 x i32> %i.an, ptr %i.k, align 8
  br label %bb.o

bb.m:                                             ; preds = %g_string_append_c_inline.exit
  %i.ao = load ptr, ptr %i.j, align 8
  %i.ap = load i32, ptr %i.k, align 8
  %i.aq = load i32, ptr %i.l, align 4
  tail call void @json_message_process_token(ptr noundef nonnull %0, ptr noundef %i.ao, i32 noundef 0, i32 noundef %i.ap, i32 noundef %i.aq) #3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %g_string_append_c_inline.exit
  %i.ar = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 0, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.ar, align 8
  store i8 0, ptr %i.at, align 1
  br label %bb.o

bb.o:                                             ; preds = %g_string_append_c_inline.exit, %bb.n, %bb.l
  %.1 = phi i32 [ %i.s, %g_string_append_c_inline.exit ], [ %i.am, %bb.l ], [ 1, %bb.n ]
  store i32 %.1, ptr %i.h, align 4
  br label %bb.d, !llvm.loop !9

bb.p:                                             ; preds = %.split, %bb.e
  %i.au = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = icmp ugt i64 %i.aw, 67108864
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = load i32, ptr %i.h, align 4
  %i.az = load i32, ptr %i.k, align 8
  %i.ba = load i32, ptr %i.l, align 4
  tail call void @json_message_process_token(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.ba) #3
  %i.bb = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 0, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.bb, align 8
  store i8 0, ptr %i.bd, align 1
  %i.be = load i32, ptr %0, align 8
  store i32 %i.be, ptr %i.h, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @json_lexer_flush(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @json_lexer_feed_char(ptr noundef %0, i8 noundef signext 0, i1 noundef zeroext true)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = load i32, ptr %0, align 8
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 360, ptr noundef nonnull @__PRETTY_FUNCTION__.json_lexer_flush) #4
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4
  tail call void @json_message_process_token(ptr noundef nonnull %0, ptr noundef %i.f, i32 noundef 111, i32 noundef %i.h, i32 noundef %i.j) #3
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @json_message_process_token(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @json_lexer_destroy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @g_string_free(ptr noundef %i.b, i32 noundef 1) #3 ; 0 uses
  ret void
}

declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @g_string_insert_c(ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
end_hunk_0
