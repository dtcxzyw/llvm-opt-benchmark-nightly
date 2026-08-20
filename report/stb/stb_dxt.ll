inline.NumInlined: 20
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stb__OMatch5 = local_unnamed_addr constant [256 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\00\01", [2 x i8] c"\01\00", [2 x i8] c"\01\00", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\01\01", [2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] c"\00\04", [2 x i8] c"\02\01", [2 x i8] c"\02\01", [2 x i8] c"\02\01", [2 x i8] c"\02\02", [2 x i8] c"\02\02", [2 x i8] c"\02\02", [2 x i8] c"\02\03", [2 x i8] c"\01\05", [2 x i8] c"\03\02", [2 x i8] c"\03\02", [2 x i8] c"\04\00", [2 x i8] c"\03\03", [2 x i8] c"\03\03", [2 x i8] c"\03\03", [2 x i8] c"\03\04", [2 x i8] c"\03\04", [2 x i8] c"\03\04", [2 x i8] c"\03\05", [2 x i8] c"\04\03", [2 x i8] c"\04\03", [2 x i8] c"\05\02", [2 x i8] c"\04\04", [2 x i8] c"\04\04", [2 x i8] c"\04\05", [2 x i8] c"\04\05", [2 x i8] c"\05\04", [2 x i8] c"\05\04", [2 x i8] c"\05\04", [2 x i8] c"\06\03", [2 x i8] c"\05\05", [2 x i8] c"\05\05", [2 x i8] c"\05\06", [2 x i8] c"\04\08", [2 x i8] c"\06\05", [2 x i8] c"\06\05", [2 x i8] c"\06\05", [2 x i8] c"\06\06", [2 x i8] c"\06\06", [2 x i8] c"\06\06", [2 x i8] c"\06\07", [2 x i8] c"\05\09", [2 x i8] c"\07\06", [2 x i8] c"\07\06", [2 x i8] c"\08\04", [2 x i8] c"\07\07", [2 x i8] c"\07\07", [2 x i8] c"\07\07", [2 x i8] c"\07\08", [2 x i8] c"\07\08", [2 x i8] c"\07\08", [2 x i8] c"\07\09", [2 x i8] c"\08\07", [2 x i8] c"\08\07", [2 x i8] c"\09\06", [2 x i8] c"\08\08", [2 x i8] c"\08\08", [2 x i8] c"\08\09", [2 x i8] c"\08\09", [2 x i8] c"\09\08", [2 x i8] c"\09\08", [2 x i8] c"\09\08", [2 x i8] c"\0A\07", [2 x i8] c"\09\09", [2 x i8] c"\09\09", [2 x i8] c"\09\0A", [2 x i8] c"\08\0C", [2 x i8] c"\0A\09", [2 x i8] c"\0A\09", [2 x i8] c"\0A\09", [2 x i8] c"\0A\0A", [2 x i8] c"\0A\0A", [2 x i8] c"\0A\0A", [2 x i8] c"\0A\0B", [2 x i8] c"\09\0D", [2 x i8] c"\0B\0A", [2 x i8] c"\0B\0A", [2 x i8] c"\0C\08", [2 x i8] c"\0B\0B", [2 x i8] c"\0B\0B", [2 x i8] c"\0B\0B", [2 x i8] c"\0B\0C", [2 x i8] c"\0B\0C", [2 x i8] c"\0B\0C", [2 x i8] c"\0B\0D", [2 x i8] c"\0C\0B", [2 x i8] c"\0C\0B", [2 x i8] c"\0D\0A", [2 x i8] c"\0C\0C", [2 x i8] c"\0C\0C", [2 x i8] c"\0C\0D", [2 x i8] c"\0C\0D", [2 x i8] c"\0D\0C", [2 x i8] c"\0D\0C", [2 x i8] c"\0D\0C", [2 x i8] c"\0E\0B", [2 x i8] c"\0D\0D", [2 x i8] c"\0D\0D", [2 x i8] c"\0D\0E", [2 x i8] c"\0C\10", [2 x i8] c"\0E\0D", [2 x i8] c"\0E\0D", [2 x i8] c"\0E\0D", [2 x i8] c"\0E\0E", [2 x i8] c"\0E\0E", [2 x i8] c"\0E\0E", [2 x i8] c"\0E\0F", [2 x i8] c"\0D\11", [2 x i8] c"\0F\0E", [2 x i8] c"\0F\0E", [2 x i8] c"\10\0C", [2 x i8] c"\0F\0F", [2 x i8] c"\0F\0F", [2 x i8] c"\0F\0F", [2 x i8] c"\0F\10", [2 x i8] c"\0F\10", [2 x i8] c"\0F\10", [2 x i8] c"\0F\11", [2 x i8] c"\10\0F", [2 x i8] c"\10\0F", [2 x i8] c"\11\0E", [2 x i8] c"\10\10", [2 x i8] c"\10\10", [2 x i8] c"\10\11", [2 x i8] c"\10\11", [2 x i8] c"\11\10", [2 x i8] c"\11\10", [2 x i8] c"\11\10", [2 x i8] c"\12\0F", [2 x i8] c"\11\11", [2 x i8] c"\11\11", [2 x i8] c"\11\12", [2 x i8] c"\10\14", [2 x i8] c"\12\11", [2 x i8] c"\12\11", [2 x i8] c"\12\11", [2 x i8] c"\12\12", [2 x i8] c"\12\12", [2 x i8] c"\12\12", [2 x i8] c"\12\13", [2 x i8] c"\11\15", [2 x i8] c"\13\12", [2 x i8] c"\13\12", [2 x i8] c"\14\10", [2 x i8] c"\13\13", [2 x i8] c"\13\13", [2 x i8] c"\13\13", [2 x i8] c"\13\14", [2 x i8] c"\13\14", [2 x i8] c"\13\14", [2 x i8] c"\13\15", [2 x i8] c"\14\13", [2 x i8] c"\14\13", [2 x i8] c"\15\12", [2 x i8] c"\14\14", [2 x i8] c"\14\14", [2 x i8] c"\14\15", [2 x i8] c"\14\15", [2 x i8] c"\15\14", [2 x i8] c"\15\14", [2 x i8] c"\15\14", [2 x i8] c"\16\13", [2 x i8] c"\15\15", [2 x i8] c"\15\15", [2 x i8] c"\15\16", [2 x i8] c"\14\18", [2 x i8] c"\16\15", [2 x i8] c"\16\15", [2 x i8] c"\16\15", [2 x i8] c"\16\16", [2 x i8] c"\16\16", [2 x i8] c"\16\16", [2 x i8] c"\16\17", [2 x i8] c"\15\19", [2 x i8] c"\17\16", [2 x i8] c"\17\16", [2 x i8] c"\18\14", [2 x i8] c"\17\17", [2 x i8] c"\17\17", [2 x i8] c"\17\17", [2 x i8] c"\17\18", [2 x i8] c"\17\18", [2 x i8] c"\17\18", [2 x i8] c"\17\19", [2 x i8] c"\18\17", [2 x i8] c"\18\17", [2 x i8] c"\19\16", [2 x i8] c"\18\18", [2 x i8] c"\18\18", [2 x i8] c"\18\19", [2 x i8] c"\18\19", [2 x i8] c"\19\18", [2 x i8] c"\19\18", [2 x i8] c"\19\18", [2 x i8] c"\1A\17", [2 x i8] c"\19\19", [2 x i8] c"\19\19", [2 x i8] c"\19\1A", [2 x i8] c"\18\1C", [2 x i8] c"\1A\19", [2 x i8] c"\1A\19", [2 x i8] c"\1A\19", [2 x i8] c"\1A\1A", [2 x i8] c"\1A\1A", [2 x i8] c"\1A\1A", [2 x i8] c"\1A\1B", [2 x i8] c"\19\1D", [2 x i8] c"\1B\1A", [2 x i8] c"\1B\1A", [2 x i8] c"\1C\18", [2 x i8] c"\1B\1B", [2 x i8] c"\1B\1B", [2 x i8] c"\1B\1B", [2 x i8] c"\1B\1C", [2 x i8] c"\1B\1C", [2 x i8] c"\1B\1C", [2 x i8] c"\1B\1D", [2 x i8] c"\1C\1B", [2 x i8] c"\1C\1B", [2 x i8] c"\1D\1A", [2 x i8] c"\1C\1C", [2 x i8] c"\1C\1C", [2 x i8] c"\1C\1D", [2 x i8] c"\1C\1D", [2 x i8] c"\1D\1C", [2 x i8] c"\1D\1C", [2 x i8] c"\1D\1C", [2 x i8] c"\1E\1B", [2 x i8] c"\1D\1D", [2 x i8] c"\1D\1D", [2 x i8] c"\1D\1E", [2 x i8] c"\1D\1E", [2 x i8] c"\1E\1D", [2 x i8] c"\1E\1D", [2 x i8] c"\1E\1D", [2 x i8] c"\1E\1E", [2 x i8] c"\1E\1E", [2 x i8] c"\1E\1E", [2 x i8] c"\1E\1F", [2 x i8] c"\1E\1F", [2 x i8] c"\1F\1E", [2 x i8] c"\1F\1E", [2 x i8] c"\1F\1E", [2 x i8] c"\1F\1F", [2 x i8] c"\1F\1F"], align 16
@stb__OMatch6 = local_unnamed_addr constant [256 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] c"\02\01", [2 x i8] c"\02\02", [2 x i8] c"\02\02", [2 x i8] c"\02\03", [2 x i8] c"\03\02", [2 x i8] c"\03\03", [2 x i8] c"\03\03", [2 x i8] c"\03\04", [2 x i8] c"\04\03", [2 x i8] c"\04\04", [2 x i8] c"\04\04", [2 x i8] c"\04\05", [2 x i8] c"\05\04", [2 x i8] c"\05\05", [2 x i8] c"\05\05", [2 x i8] c"\05\06", [2 x i8] c"\06\05", [2 x i8] c"\06\06", [2 x i8] c"\06\06", [2 x i8] c"\06\07", [2 x i8] c"\07\06", [2 x i8] c"\07\07", [2 x i8] c"\07\07", [2 x i8] c"\07\08", [2 x i8] c"\08\07", [2 x i8] c"\08\08", [2 x i8] c"\08\08", [2 x i8] c"\08\09", [2 x i8] c"\09\08", [2 x i8] c"\09\09", [2 x i8] c"\09\09", [2 x i8] c"\09\0A", [2 x i8] c"\0A\09", [2 x i8] c"\0A\0A", [2 x i8] c"\0A\0A", [2 x i8] c"\0A\0B", [2 x i8] c"\0B\0A", [2 x i8] c"\08\10", [2 x i8] c"\0B\0B", [2 x i8] c"\0B\0C", [2 x i8] c"\0C\0B", [2 x i8] c"\09\11", [2 x i8] c"\0C\0C", [2 x i8] c"\0C\0D", [2 x i8] c"\0D\0C", [2 x i8] c"\0B\10", [2 x i8] c"\0D\0D", [2 x i8] c"\0D\0E", [2 x i8] c"\0E\0D", [2 x i8] c"\0C\11", [2 x i8] c"\0E\0E", [2 x i8] c"\0E\0F", [2 x i8] c"\0F\0E", [2 x i8] c"\0E\10", [2 x i8] c"\0F\0F", [2 x i8] c"\0F\10", [2 x i8] c"\10\0E", [2 x i8] c"\10\0F", [2 x i8] c"\11\0E", [2 x i8] c"\10\10", [2 x i8] c"\10\11", [2 x i8] c"\11\10", [2 x i8] c"\12\0F", [2 x i8] c"\11\11", [2 x i8] c"\11\12", [2 x i8] c"\12\11", [2 x i8] c"\14\0E", [2 x i8] c"\12\12", [2 x i8] c"\12\13", [2 x i8] c"\13\12", [2 x i8] c"\15\0F", [2 x i8] c"\13\13", [2 x i8] c"\13\14", [2 x i8] c"\14\13", [2 x i8] c"\14\14", [2 x i8] c"\14\14", [2 x i8] c"\14\15", [2 x i8] c"\15\14", [2 x i8] c"\15\15", [2 x i8] c"\15\15", [2 x i8] c"\15\16", [2 x i8] c"\16\15", [2 x i8] c"\16\16", [2 x i8] c"\16\16", [2 x i8] c"\16\17", [2 x i8] c"\17\16", [2 x i8] c"\17\17", [2 x i8] c"\17\17", [2 x i8] c"\17\18", [2 x i8] c"\18\17", [2 x i8] c"\18\18", [2 x i8] c"\18\18", [2 x i8] c"\18\19", [2 x i8] c"\19\18", [2 x i8] c"\19\19", [2 x i8] c"\19\19", [2 x i8] c"\19\1A", [2 x i8] c"\1A\19", [2 x i8] c"\1A\1A", [2 x i8] c"\1A\1A", [2 x i8] c"\1A\1B", [2 x i8] c"\1B\1A", [2 x i8] c"\18 ", [2 x i8] c"\1B\1B", [2 x i8] c"\1B\1C", [2 x i8] c"\1C\1B", [2 x i8] c"\19!", [2 x i8] c"\1C\1C", [2 x i8] c"\1C\1D", [2 x i8] c"\1D\1C", [2 x i8] c"\1B ", [2 x i8] c"\1D\1D", [2 x i8] c"\1D\1E", [2 x i8] c"\1E\1D", [2 x i8] c"\1C!", [2 x i8] c"\1E\1E", [2 x i8] c"\1E\1F", [2 x i8] c"\1F\1E", [2 x i8] c"\1E ", [2 x i8] c"\1F\1F", [2 x i8] c"\1F ", [2 x i8] c" \1E", [2 x i8] c" \1F", [2 x i8] c"!\1E", [2 x i8] c"  ", [2 x i8] c" !", [2 x i8] c"! ", [2 x i8] c"\22\1F", [2 x i8] c"!!", [2 x i8] c"!\22", [2 x i8] c"\22!", [2 x i8] c"$\1E", [2 x i8] c"\22\22", [2 x i8] c"\22#", [2 x i8] c"#\22", [2 x i8] c"%\1F", [2 x i8] c"##", [2 x i8] c"#$", [2 x i8] c"$#", [2 x i8] c"$$", [2 x i8] c"$$", [2 x i8] c"$%", [2 x i8] c"%$", [2 x i8] c"%%", [2 x i8] c"%%", [2 x i8] c"%&", [2 x i8] c"&%", [2 x i8] c"&&", [2 x i8] c"&&", [2 x i8] c"&'", [2 x i8] c"'&", [2 x i8] c"''", [2 x i8] c"''", [2 x i8] c"'(", [2 x i8] c"('", [2 x i8] c"((", [2 x i8] c"((", [2 x i8] c"()", [2 x i8] c")(", [2 x i8] c"))", [2 x i8] c"))", [2 x i8] c")*", [2 x i8] c"*)", [2 x i8] c"**", [2 x i8] c"**", [2 x i8] c"*+", [2 x i8] c"+*", [2 x i8] c"(0", [2 x i8] c"++", [2 x i8] c"+,", [2 x i8] c",+", [2 x i8] c")1", [2 x i8] c",,", [2 x i8] c",-", [2 x i8] c"-,", [2 x i8] c"+0", [2 x i8] c"--", [2 x i8] c"-.", [2 x i8] c".-", [2 x i8] c",1", [2 x i8] c"..", [2 x i8] c"./", [2 x i8] c"/.", [2 x i8] c".0", [2 x i8] c"//", [2 x i8] c"/0", [2 x i8] c"0.", [2 x i8] c"0/", [2 x i8] c"1.", [2 x i8] c"00", [2 x i8] c"01", [2 x i8] c"10", [2 x i8] c"2/", [2 x i8] c"11", [2 x i8] c"12", [2 x i8] c"21", [2 x i8] c"4.", [2 x i8] c"22", [2 x i8] c"23", [2 x i8] c"32", [2 x i8] c"5/", [2 x i8] c"33", [2 x i8] c"34", [2 x i8] c"43", [2 x i8] c"44", [2 x i8] c"44", [2 x i8] c"45", [2 x i8] c"54", [2 x i8] c"55", [2 x i8] c"55", [2 x i8] c"56", [2 x i8] c"65", [2 x i8] c"66", [2 x i8] c"66", [2 x i8] c"67", [2 x i8] c"76", [2 x i8] c"77", [2 x i8] c"77", [2 x i8] c"78", [2 x i8] c"87", [2 x i8] c"88", [2 x i8] c"88", [2 x i8] c"89", [2 x i8] c"98", [2 x i8] c"99", [2 x i8] c"99", [2 x i8] c"9:", [2 x i8] c":9", [2 x i8] c"::", [2 x i8] c"::", [2 x i8] c":;", [2 x i8] c";:", [2 x i8] c";;", [2 x i8] c";;", [2 x i8] c";<", [2 x i8] c"<;", [2 x i8] c"<<", [2 x i8] c"<<", [2 x i8] c"<=", [2 x i8] c"=<", [2 x i8] c"==", [2 x i8] c"==", [2 x i8] c"=>", [2 x i8] c">=", [2 x i8] c">>", [2 x i8] c">>", [2 x i8] c">?", [2 x i8] c"?>", [2 x i8] c"??", [2 x i8] c"??"], align 16
@stb__midpoints5 = local_unnamed_addr constant [32 x float] [float 1.568600e-02, float 4.705900e-02, float 7.843100e-02, float 1.117650e-01, float 1.450980e-01, float 1.764710e-01, float 2.078430e-01, float 2.411760e-01, float 2.745100e-01, float 3.058820e-01, float 3.372550e-01, float 3.705880e-01, float 4.039220e-01, float 4.352940e-01, float 4.666670e-01, float 5.000000e-01, float 5.333330e-01, float 5.647060e-01, float 5.960780e-01, float f0x3F212125, float f0x3F29A9A8, float 6.941180e-01, float 7.254900e-01, float f0x3F42424A, float f0x3F4ACACD, float 8.235290e-01, float 8.549020e-01, float f0x3F63635E, float f0x3F6BEBF2, float 9.529410e-01, float 9.843140e-01, float 1.000000e+00], align 16
@stb__midpoints6 = local_unnamed_addr constant [64 x float] [float 7.843000e-03, float 2.352900e-02, float 3.921600e-02, float 5.490200e-02, float 7.058800e-02, float 8.627500e-02, float 1.019610e-01, float 1.176470e-01, float 1.333330e-01, float 1.490200e-01, float 1.647060e-01, float 1.803920e-01, float 1.960780e-01, float 2.117650e-01, float 2.274510e-01, float 2.450980e-01, float 2.627450e-01, float 2.784310e-01, float 2.941180e-01, float 3.098040e-01, float 3.254900e-01, float 3.411760e-01, float 3.568630e-01, float 3.725490e-01, float 3.882350e-01, float 4.039220e-01, float 4.196080e-01, float 4.352940e-01, float 4.509800e-01, float 4.666670e-01, float 4.823530e-01, float 5.000000e-01, float 5.176470e-01, float 5.333330e-01, float 5.490200e-01, float 5.647060e-01, float 5.803920e-01, float 5.960780e-01, float 6.117650e-01, float 6.274510e-01, float 6.431370e-01, float 6.588240e-01, float 6.745100e-01, float f0x3F30B0AF, float 7.058820e-01, float 7.215690e-01, float 7.372550e-01, float 7.549020e-01, float f0x3F45C5C5, float 7.882350e-01, float f0x3F4DCDD5, float 8.196080e-01, float 8.352940e-01, float f0x3F59D9D3, float f0x3F5DDDE3, float 8.823530e-01, float f0x3F65E5E2, float 9.137250e-01, float 9.294120e-01, float f0x3F71F1F1, float 9.607840e-01, float 9.764710e-01, float f0x3F7DFE00, float 1.000000e+00], align 16
@__const.stb__RefineBlock.w1Tab = private unnamed_addr constant [4 x i32] [i32 3, i32 0, i32 2, i32 1], align 16
@__const.stb__RefineBlock.prods = private unnamed_addr constant [4 x i32] [i32 589824, i32 2304, i32 262402, i32 66562], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -8388608, 8388608) i32 @stb__Mul8Bit(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %1, %0
  %i.b = add nsw i32 %i.a, 128                    ; 2 uses
  %i.c = ashr i32 %i.b, 8
  %i.d = add nsw i32 %i.c, %i.b
  %i.e = ashr i32 %i.d, 8
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stb__From16Bit(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i16 %1, 11
  %i.b = lshr i16 %1, 5
  %i.c = and i16 %i.b, 63
  %i.d = and i16 %1, 31
  %i.e = mul nuw nsw i16 %i.a, 33
  %i.f = lshr i16 %i.e, 2
  %i.g = trunc nuw i16 %i.f to i8
  store i8 %i.g, ptr %0, align 1, !tbaa !8
  %i.h = mul nuw nsw i16 %i.c, 65
  %i.i = lshr i16 %i.h, 4
  %i.j = trunc nuw i16 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !8
  %narrow = mul nuw nsw i16 %i.d, 33
  %i.l = lshr i16 %narrow, 2
  %i.m = trunc nuw i16 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.o, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i16 @stb__As16Bit(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %0, 31
  %i.b = add nsw i32 %i.a, 128                    ; 2 uses
  %i.c = lshr i32 %i.b, 8
  %i.d = add i32 %i.c, %i.b
  %i.e = shl i32 %i.d, 3
  %i.f = and i32 %i.e, 63488
  %i.g = mul nsw i32 %1, 63
  %i.h = add nsw i32 %i.g, 128                    ; 2 uses
  %i.i = lshr i32 %i.h, 8
  %i.j = add i32 %i.i, %i.h
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 65504
  %i.m = add nuw nsw i32 %i.l, %i.f
  %i.n = mul nsw i32 %2, 31
  %i.o = add nsw i32 %i.n, 128                    ; 2 uses
  %i.p = lshr i32 %i.o, 8
  %i.q = add i32 %i.p, %i.o
  %i.r = lshr i32 %i.q, 8
  %i.s = add nuw nsw i32 %i.m, %i.r
  %i.t = trunc i32 %i.s to i16
  ret i16 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -715827882, 715827883) i32 @stb__Lerp13(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %0, 1
  %i.b = add nsw i32 %i.a, %1
  %i.c = sdiv i32 %i.b, 3
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stb__Lerp13RGB(ptr nofree noundef writeonly captures(none) initializes((0, 3)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !8
  %i.b = zext i8 %i.a to i16
  %i.c = load i8, ptr %2, align 1, !tbaa !8
  %i.d = zext i8 %i.c to i16
  %i.e = shl nuw nsw i16 %i.b, 1
  %.lhs.trunc = add nuw nsw i16 %i.e, %i.d
  %i.f = udiv i16 %.lhs.trunc, 3
  %i.g = trunc nuw i16 %i.f to i8
  store i8 %i.g, ptr %0, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = zext i8 %i.i to i16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i16
  %i.n = shl nuw nsw i16 %i.j, 1
  %.lhs.trunc9 = add nuw nsw i16 %i.n, %i.m
  %i.o = udiv i16 %.lhs.trunc9, 3
  %i.p = trunc nuw i16 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = zext i8 %i.s to i16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = zext i8 %i.v to i16
  %i.x = shl nuw nsw i16 %i.t, 1
  %.lhs.trunc11 = add nuw nsw i16 %i.x, %i.w
  %i.y = udiv i16 %.lhs.trunc11, 3
  %i.z = trunc nuw i16 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stb__EvalColors(ptr nofree noundef writeonly captures(none) initializes((0, 11), (12, 15)) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.c, align 1, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %i.g, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.m = lshr i16 %1, 5
  %i.n = lshr i16 %1, 11
  %i.o = and i16 %i.m, 63
  %3 = mul nuw nsw i16 %i.o, 65
  %4 = mul nuw nsw i16 %i.n, 33
  %i.p = lshr i16 %2, 5
  %i.q = lshr i16 %2, 11
  %i.r = insertelement <4 x i16> poison, i16 %1, i64 0
  %i.s = insertelement <4 x i16> %i.r, i16 %i.q, i64 1
  %i.t = insertelement <4 x i16> %i.s, i16 %i.p, i64 2
  %i.u = insertelement <4 x i16> %i.t, i16 %2, i64 3
  %i.v = and <4 x i16> %i.u, <i16 31, i16 -1, i16 63, i16 31>
  %i.w = mul nuw nsw <4 x i16> %i.v, <i16 33, i16 33, i16 65, i16 33> ; 4 uses
  %i.x = extractelement <4 x i16> %i.w, i64 3
  %i.y = extractelement <4 x i16> %i.w, i64 2
  %i.z = extractelement <4 x i16> %i.w, i64 1
  %i.aa = extractelement <4 x i16> %i.w, i64 0
  %i.ab = lshr i16 %3, 4                          ; 3 uses
  %i.ac = lshr i16 %4, 2                          ; 3 uses
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %0, align 1, !tbaa !8
  %i.ae = trunc nuw i16 %i.ab to i8
  store i8 %i.ae, ptr %i.a, align 1, !tbaa !8
  %i.af = lshr i16 %i.x, 2                        ; 3 uses
  %i.ag = lshr i16 %i.y, 4                        ; 3 uses
  %i.ah = lshr i16 %i.z, 2                        ; 3 uses
  %i.ai = lshr i16 %i.aa, 2                       ; 3 uses
  %i.aj = trunc nuw i16 %i.ai to i8
  store i8 %i.aj, ptr %i.b, align 1, !tbaa !8
  %i.ak = trunc nuw i16 %i.ah to i8
  store i8 %i.ak, ptr %i.d, align 1, !tbaa !8
  %i.al = trunc nuw i16 %i.ag to i8
  store i8 %i.al, ptr %i.e, align 1, !tbaa !8
  %i.am = trunc nuw i16 %i.af to i8
  store i8 %i.am, ptr %i.f, align 1, !tbaa !8
  %i.an = shl nuw nsw i16 %i.ac, 1
  %.lhs.trunc.i = add nuw nsw i16 %i.an, %i.ah
  %i.ao = udiv i16 %.lhs.trunc.i, 3
  %i.ap = trunc nuw i16 %i.ao to i8
  store i8 %i.ap, ptr %i.h, align 1, !tbaa !8
  %i.aq = shl nuw nsw i16 %i.ab, 1
  %.lhs.trunc9.i = add nuw nsw i16 %i.aq, %i.ag
  %i.ar = udiv i16 %.lhs.trunc9.i, 3
  %i.as = trunc nuw i16 %i.ar to i8
  store i8 %i.as, ptr %i.i, align 1, !tbaa !8
  %i.at = insertelement <4 x i16> poison, i16 %i.ai, i64 0
  %i.au = insertelement <4 x i16> %i.at, i16 %i.ah, i64 1
  %i.av = insertelement <4 x i16> %i.au, i16 %i.ag, i64 2
  %i.aw = insertelement <4 x i16> %i.av, i16 %i.af, i64 3
  %i.ax = shl nuw nsw <4 x i16> %i.aw, splat (i16 1)
  %i.ay = insertelement <4 x i16> poison, i16 %i.af, i64 0
  %i.az = insertelement <4 x i16> %i.ay, i16 %i.ac, i64 1
  %i.ba = insertelement <4 x i16> %i.az, i16 %i.ab, i64 2
  %i.bb = insertelement <4 x i16> %i.ba, i16 %i.ai, i64 3
  %i.bc = add nuw nsw <4 x i16> %i.ax, %i.bb
  %i.bd = udiv <4 x i16> %i.bc, splat (i16 3)
  %i.be = shufflevector <4 x i16> %i.bd, <4 x i16> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bf = trunc <4 x i16> %i.be to <4 x i8>       ; 4 uses
  %i.bg = extractelement <4 x i8> %i.bf, i64 1
  store i8 %i.bg, ptr %i.j, align 1, !tbaa !8
  %i.bh = extractelement <4 x i8> %i.bf, i64 0
  store i8 %i.bh, ptr %i.k, align 1, !tbaa !8
  %i.bi = extractelement <4 x i8> %i.bf, i64 3
  store i8 %i.bi, ptr %i.l, align 1, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bk = extractelement <4 x i8> %i.bf, i64 2
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stb__MatchColorsBlock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = zext i8 %i.h to i32
  %i.j = sub nsw i32 %i.f, %i.i                   ; 20 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !8
  %i.bv = load i8, ptr %1, align 1, !tbaa !8
  %i.bw = zext i8 %i.bv to i32
  %i.bx = load i8, ptr %i.b, align 1, !tbaa !8
  %i.by = zext i8 %i.bx to i32
  %i.bz = load i8, ptr %i.d, align 1, !tbaa !8
  %i.ca = zext i8 %i.bz to i32
  %i.cb = mul nsw i32 %i.j, %i.ca
  %i.cc = load i8, ptr %i.a, align 1, !tbaa !8
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !8
  %i.cg = zext i8 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !8
  %i.cj = zext i8 %i.ci to i32
  %i.ck = mul nsw i32 %i.j, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !8
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !8
  %i.cq = zext i8 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !8
  %i.ct = zext i8 %i.cs to i32
  %i.cu = mul nsw i32 %i.j, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !8
  %i.cx = zext i8 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !8
  %i.da = zext i8 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !8
  %i.dd = zext i8 %i.dc to i32
  %i.de = mul nsw i32 %i.j, %i.dd
  %i.df = load i8, ptr %i.b, align 1, !tbaa !8
  %i.dg = load i8, ptr %1, align 1, !tbaa !8
  %i.dh = zext i8 %i.df to i32
  %i.di = zext i8 %i.dg to i32
  %i.dj = load i8, ptr %i.c, align 1, !tbaa !8
  %i.dk = load i8, ptr %i.a, align 1, !tbaa !8
  %i.dl = zext i8 %i.dj to i32
  %i.dm = zext i8 %i.dk to i32
  %i.dn = sub nsw i32 %i.dh, %i.dl                ; 20 uses
  %i.do = sub nsw i32 %i.di, %i.dm                ; 20 uses
  %i.dp = load i8, ptr %i.k, align 1, !tbaa !8
  %i.dq = load i8, ptr %0, align 1, !tbaa !8
  %i.dr = load i8, ptr %i.o, align 1, !tbaa !8
  %i.ds = load i8, ptr %i.n, align 1, !tbaa !8
  %i.dt = load i8, ptr %i.s, align 1, !tbaa !8
  %i.du = load i8, ptr %i.r, align 1, !tbaa !8
  %i.dv = load i8, ptr %i.w, align 1, !tbaa !8
  %i.dw = load i8, ptr %i.v, align 1, !tbaa !8
  %i.dx = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.dy = load i8, ptr %i.z, align 1, !tbaa !8
  %i.dz = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ea = load i8, ptr %i.ad, align 1, !tbaa !8
  %i.eb = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ec = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.ed = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ee = load i8, ptr %i.al, align 1, !tbaa !8
  %i.ef = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.eg = load i8, ptr %i.ap, align 1, !tbaa !8
  %i.eh = load i8, ptr %i.au, align 1, !tbaa !8
  %i.ei = load i8, ptr %i.at, align 1, !tbaa !8
  %i.ej = load i8, ptr %i.ay, align 1, !tbaa !8
  %i.ek = load i8, ptr %i.ax, align 1, !tbaa !8
  %i.el = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.em = load i8, ptr %i.bb, align 1, !tbaa !8
  %i.en = load i8, ptr %i.bg, align 1, !tbaa !8
  %i.eo = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.ep = load i8, ptr %i.bk, align 1, !tbaa !8
  %i.eq = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.er = load i8, ptr %i.bo, align 1, !tbaa !8
  %i.es = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.et = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.eu = load i8, ptr %i.br, align 1, !tbaa !8
  %i.ev = zext i8 %i.dq to i32
  %i.ew = zext i8 %i.dr to i32
end_hunk_0
begin_hunk_1_@stb__RefineBlock:bb.a
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr @stb__midpoints6, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !15
  %i.ls = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.lt = insertelement <2 x float> %i.ls, float %i.lr, i64 1
  %i.lu = fcmp ogt <2 x float> %i.kd, %i.lt
  %i.lv = zext <2 x i1> %i.lu to <2 x i16>
  %i.lw = add <2 x i16> %i.lv, %i.kf
  %i.lx = shl <2 x i16> %i.lw, splat (i16 5)
  %i.ly = or <2 x i16> %i.lx, %i.ln
  %i.lz = extractelement <2 x i16> %i.kz, i64 1
  %i.ma = zext i16 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr @stb__midpoints5, i64 %i.ma
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !15
  %i.md = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.me = insertelement <2 x float> %i.md, float %i.mc, i64 1
  %i.mf = fcmp ogt <2 x float> %i.kx, %i.me
  %i.mg = zext <2 x i1> %i.mf to <2 x i16>
  %i.mh = add <2 x i16> %i.mg, %i.kz
  %i.mi = or <2 x i16> %i.ly, %i.mh
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.preheader
  %i.mj = phi <2 x i16> [ %i.hd, %.preheader.preheader ], [ %i.mi, %bb.b ] ; 2 uses
  %i.mk = extractelement <2 x i16> %i.mj, i64 1   ; 2 uses
  store i16 %i.mk, ptr %2, align 2, !tbaa !13
  %i.ml = extractelement <2 x i16> %i.mj, i64 0   ; 2 uses
  store i16 %i.ml, ptr %1, align 2, !tbaa !13
  %i.mm = icmp ne i16 %i.a, %i.mk
  %i.mn = icmp ne i16 %i.b, %i.ml
  %i.mo = select i1 %i.mm, i1 true, i1 %i.mn
  %i.mp = zext i1 %i.mo to i32
  ret i32 %i.mp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stb__CompressColorBlock(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i16, align 2                      ; 8 uses
  %i.b = alloca i16, align 2                      ; 8 uses
  %i.c = alloca [16 x i8], align 16               ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = and i32 %2, 2
  %.not = icmp eq i32 %i.d, 0
  %i.e = load i32, ptr %1, align 4                ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %.not44 = icmp eq i32 %i.g, %i.e
  %i.h = lshr i32 %i.e, 8
  %i.i = lshr i32 %i.e, 16
  br i1 %.not44, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %.not44.1 = icmp eq i32 %i.k, %i.e
  br i1 %.not44.1, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %.not44.2 = icmp eq i32 %i.m, %i.e
  br i1 %.not44.2, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9
  %.not44.3 = icmp eq i32 %i.o, %i.e
  br i1 %.not44.3, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9
  %.not44.4 = icmp eq i32 %i.q, %i.e
  br i1 %.not44.4, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9
  %.not44.5 = icmp eq i32 %i.s, %i.e
  br i1 %.not44.5, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9
  %.not44.6 = icmp eq i32 %i.u, %i.e
  br i1 %.not44.6, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %.not44.7 = icmp eq i32 %i.w, %i.e
  br i1 %.not44.7, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !9
  %.not44.8 = icmp eq i32 %i.y, %i.e
  br i1 %.not44.8, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !9
  %.not44.9 = icmp eq i32 %i.aa, %i.e
  br i1 %.not44.9, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !9
  %.not44.10 = icmp eq i32 %i.ac, %i.e
  br i1 %.not44.10, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9
  %.not44.11 = icmp eq i32 %i.ae, %i.e
  br i1 %.not44.11, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9
  %.not44.12 = icmp eq i32 %i.ag, %i.e
  br i1 %.not44.12, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !9
  %.not44.13 = icmp eq i32 %i.ai, %i.e
  br i1 %.not44.13, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9
  %.not44.14 = icmp eq i32 %i.ak, %i.e
  br i1 %.not44.14, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.al = and i32 %i.e, 255
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @stb__OMatch5, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !8
  %i.ap = zext i8 %i.ao to i16
  %i.aq = shl i16 %i.ap, 11
  %i.ar = and i32 %i.h, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @stb__OMatch6, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 2, !tbaa !8
  %i.av = zext i8 %i.au to i16
  %i.aw = shl nuw nsw i16 %i.av, 5
  %i.ax = or i16 %i.aw, %i.aq
  %i.ay = and i32 %i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @stb__OMatch5, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !8
  %i.bc = zext i8 %i.bb to i16
  %i.bd = or i16 %i.ax, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = zext i8 %i.bf to i16
  %i.bh = shl i16 %i.bg, 11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = zext i8 %i.bj to i16
  %i.bl = shl nuw nsw i16 %i.bk, 5
  %i.bm = or i16 %i.bl, %i.bh
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = zext i8 %i.bo to i16
  %i.bq = or i16 %i.bm, %i.bp
  br label %.thread56

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  call void @stb__OptimizeColorsBlock(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.br = load i16, ptr %i.a, align 2, !tbaa !13  ; 4 uses
  %i.bs = load i16, ptr %i.b, align 2, !tbaa !13  ; 4 uses
  %.not45 = icmp eq i16 %i.br, %i.bs
  br i1 %.not45, label %.peel.begin, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 0, ptr %i.bv, align 1, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 0, ptr %i.bz, align 1, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.cf = lshr i16 %i.br, 5
  %i.cg = lshr i16 %i.br, 11
  %i.ch = and i16 %i.cf, 63
  %3 = mul nuw nsw i16 %i.ch, 65
  %4 = mul nuw nsw i16 %i.cg, 33
  %i.ci = lshr i16 %i.bs, 5
  %i.cj = lshr i16 %i.bs, 11
  %i.ck = insertelement <4 x i16> poison, i16 %i.br, i64 0
  %i.cl = insertelement <4 x i16> %i.ck, i16 %i.cj, i64 1
  %i.cm = insertelement <4 x i16> %i.cl, i16 %i.ci, i64 2
  %i.cn = insertelement <4 x i16> %i.cm, i16 %i.bs, i64 3
  %i.co = and <4 x i16> %i.cn, <i16 31, i16 -1, i16 63, i16 31>
  %i.cp = mul nuw nsw <4 x i16> %i.co, <i16 33, i16 33, i16 65, i16 33> ; 4 uses
  %i.cq = extractelement <4 x i16> %i.cp, i64 3
  %i.cr = extractelement <4 x i16> %i.cp, i64 2
  %i.cs = extractelement <4 x i16> %i.cp, i64 1
  %i.ct = extractelement <4 x i16> %i.cp, i64 0
  %i.cu = lshr i16 %3, 4                          ; 3 uses
  %i.cv = lshr i16 %4, 2                          ; 3 uses
  %i.cw = trunc nuw i16 %i.cv to i8
  store i8 %i.cw, ptr %i.c, align 16, !tbaa !8
  %i.cx = trunc nuw i16 %i.cu to i8
  store i8 %i.cx, ptr %i.bt, align 1, !tbaa !8
  %i.cy = lshr i16 %i.cq, 2                       ; 3 uses
  %i.cz = lshr i16 %i.cr, 4                       ; 3 uses
  %i.da = lshr i16 %i.cs, 2                       ; 3 uses
  %i.db = lshr i16 %i.ct, 2                       ; 3 uses
  %i.dc = trunc nuw i16 %i.db to i8
  store i8 %i.dc, ptr %i.bu, align 2, !tbaa !8
  %i.dd = trunc nuw i16 %i.da to i8
  store i8 %i.dd, ptr %i.bw, align 4, !tbaa !8
  %i.de = trunc nuw i16 %i.cz to i8
  store i8 %i.de, ptr %i.bx, align 1, !tbaa !8
  %i.df = trunc nuw i16 %i.cy to i8
  store i8 %i.df, ptr %i.by, align 2, !tbaa !8
  %i.dg = shl nuw nsw i16 %i.cv, 1
  %.lhs.trunc.i.i = add nuw nsw i16 %i.dg, %i.da
  %i.dh = udiv i16 %.lhs.trunc.i.i, 3
  %i.di = trunc nuw i16 %i.dh to i8
  store i8 %i.di, ptr %i.ca, align 8, !tbaa !8
  %i.dj = shl nuw nsw i16 %i.cu, 1
  %.lhs.trunc9.i.i = add nuw nsw i16 %i.dj, %i.cz
  %i.dk = udiv i16 %.lhs.trunc9.i.i, 3
  %i.dl = trunc nuw i16 %i.dk to i8
  store i8 %i.dl, ptr %i.cb, align 1, !tbaa !8
  %i.dm = insertelement <4 x i16> poison, i16 %i.db, i64 0
  %i.dn = insertelement <4 x i16> %i.dm, i16 %i.da, i64 1
  %i.do = insertelement <4 x i16> %i.dn, i16 %i.cz, i64 2
  %i.dp = insertelement <4 x i16> %i.do, i16 %i.cy, i64 3
  %i.dq = shl nuw nsw <4 x i16> %i.dp, splat (i16 1)
  %i.dr = insertelement <4 x i16> poison, i16 %i.cy, i64 0
  %i.ds = insertelement <4 x i16> %i.dr, i16 %i.cv, i64 1
  %i.dt = insertelement <4 x i16> %i.ds, i16 %i.cu, i64 2
  %i.du = insertelement <4 x i16> %i.dt, i16 %i.db, i64 3
  %i.dv = add nuw nsw <4 x i16> %i.dq, %i.du
  %i.dw = udiv <4 x i16> %i.dv, splat (i16 3)
  %i.dx = shufflevector <4 x i16> %i.dw, <4 x i16> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.dy = trunc <4 x i16> %i.dx to <4 x i8>       ; 4 uses
  %i.dz = extractelement <4 x i8> %i.dy, i64 1
  store i8 %i.dz, ptr %i.cc, align 2, !tbaa !8
  %i.ea = extractelement <4 x i8> %i.dy, i64 0
  store i8 %i.ea, ptr %i.cd, align 4, !tbaa !8
  %i.eb = extractelement <4 x i8> %i.dy, i64 3
  store i8 %i.eb, ptr %i.ce, align 1, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.ed = extractelement <4 x i8> %i.dy, i64 2
  store i8 %i.ed, ptr %i.ec, align 2, !tbaa !8
  %i.ee = call i32 @stb__MatchColorsBlock(ptr noundef nonnull %1, ptr noundef nonnull %i.c)
  br label %.peel.begin

.peel.begin:                                      ; preds = %.thread, %bb.q
  %.0 = phi i32 [ %i.ee, %bb.q ], [ 0, %.thread ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 10 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 13 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 14 ; 2 uses
  %i.es = call i32 @stb__RefineBlock(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.0)
  %.not46.peel = icmp eq i32 %i.es, 0
  %.pre.pre.peel = load i16, ptr %i.a, align 2, !tbaa !13 ; 7 uses
  %.pre67.pre.peel = load i16, ptr %i.b, align 2, !tbaa !13 ; 7 uses
  br i1 %.not46.peel, label %.thread56, label %bb.r

bb.r:                                             ; preds = %.peel.begin
  %.not47.peel = icmp eq i16 %.pre.pre.peel, %.pre67.pre.peel
  br i1 %.not47.peel, label %.thread56, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.et = lshr i16 %.pre.pre.peel, 11
  %i.eu = lshr i16 %.pre.pre.peel, 5
  %i.ev = and i16 %i.eu, 63
  %i.ew = and i16 %.pre.pre.peel, 31
  %i.ex = mul nuw nsw i16 %i.et, 33
  %i.ey = lshr i16 %i.ex, 2                       ; 3 uses
  %i.ez = trunc nuw i16 %i.ey to i8
  store i8 %i.ez, ptr %i.c, align 16, !tbaa !8
  %i.fa = mul nuw nsw i16 %i.ev, 65
  %i.fb = lshr i16 %i.fa, 4                       ; 3 uses
  %i.fc = trunc nuw i16 %i.fb to i8
  store i8 %i.fc, ptr %i.ef, align 1, !tbaa !8
  %narrow.i.i48.peel = mul nuw nsw i16 %i.ew, 33
  %i.fd = lshr i16 %narrow.i.i48.peel, 2          ; 3 uses
  %i.fe = trunc nuw i16 %i.fd to i8
  store i8 %i.fe, ptr %i.eg, align 2, !tbaa !8
  store i8 0, ptr %i.eh, align 1, !tbaa !8
  %i.ff = lshr i16 %.pre67.pre.peel, 11
  %i.fg = lshr i16 %.pre67.pre.peel, 5
  %i.fh = and i16 %i.fg, 63
  %i.fi = and i16 %.pre67.pre.peel, 31
  %i.fj = mul nuw nsw i16 %i.ff, 33
  %i.fk = lshr i16 %i.fj, 2                       ; 3 uses
  %i.fl = trunc nuw i16 %i.fk to i8
  store i8 %i.fl, ptr %i.ei, align 4, !tbaa !8
  %i.fm = mul nuw nsw i16 %i.fh, 65
  %i.fn = lshr i16 %i.fm, 4                       ; 3 uses
  %i.fo = trunc nuw i16 %i.fn to i8
  store i8 %i.fo, ptr %i.ej, align 1, !tbaa !8
  %narrow.i9.i49.peel = mul nuw nsw i16 %i.fi, 33
  %i.fp = lshr i16 %narrow.i9.i49.peel, 2         ; 3 uses
  %i.fq = trunc nuw i16 %i.fp to i8
  store i8 %i.fq, ptr %i.ek, align 2, !tbaa !8
  store i8 0, ptr %i.el, align 1, !tbaa !8
  %i.fr = shl nuw nsw i16 %i.ey, 1
  %.lhs.trunc.i.i50.peel = add nuw nsw i16 %i.fr, %i.fk
  %i.fs = udiv i16 %.lhs.trunc.i.i50.peel, 3
  %i.ft = trunc nuw i16 %i.fs to i8
  store i8 %i.ft, ptr %i.em, align 8, !tbaa !8
  %i.fu = shl nuw nsw i16 %i.fb, 1
  %.lhs.trunc9.i.i51.peel = add nuw nsw i16 %i.fu, %i.fn
  %i.fv = udiv i16 %.lhs.trunc9.i.i51.peel, 3
  %i.fw = trunc nuw i16 %i.fv to i8
  store i8 %i.fw, ptr %i.en, align 1, !tbaa !8
  %i.fx = shl nuw nsw i16 %i.fd, 1
  %.lhs.trunc11.i.i52.peel = add nuw nsw i16 %i.fx, %i.fp
  %i.fy = udiv i16 %.lhs.trunc11.i.i52.peel, 3
  %i.fz = trunc nuw i16 %i.fy to i8
  store i8 %i.fz, ptr %i.eo, align 2, !tbaa !8
  %i.ga = shl nuw nsw i16 %i.fk, 1
  %.lhs.trunc.i10.i53.peel = add nuw nsw i16 %i.ga, %i.ey
  %i.gb = udiv i16 %.lhs.trunc.i10.i53.peel, 3
  %i.gc = trunc nuw i16 %i.gb to i8
  store i8 %i.gc, ptr %i.ep, align 4, !tbaa !8
  %i.gd = shl nuw nsw i16 %i.fn, 1
  %.lhs.trunc9.i11.i54.peel = add nuw nsw i16 %i.gd, %i.fb
  %i.ge = udiv i16 %.lhs.trunc9.i11.i54.peel, 3
  %i.gf = trunc nuw i16 %i.ge to i8
  store i8 %i.gf, ptr %i.eq, align 1, !tbaa !8
  %i.gg = shl nuw nsw i16 %i.fp, 1
  %.lhs.trunc11.i12.i55.peel = add nuw nsw i16 %i.gg, %i.fd
  %i.gh = udiv i16 %.lhs.trunc11.i12.i55.peel, 3
  %i.gi = trunc nuw i16 %i.gh to i8
  store i8 %i.gi, ptr %i.er, align 2, !tbaa !8
  %i.gj = call i32 @stb__MatchColorsBlock(ptr noundef nonnull %1, ptr noundef nonnull %i.c) ; 4 uses
  %i.gk = icmp eq i32 %i.gj, %.0
  %brmerge.peel = or i1 %i.gk, %.not
  br i1 %brmerge.peel, label %.thread56, label %.peel.newph

.peel.newph:                                      ; preds = %bb.s
  %i.gl = call i32 @stb__RefineBlock(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.gj)
  %.not46 = icmp eq i32 %i.gl, 0
  %.pre.pre = load i16, ptr %i.a, align 2, !tbaa !13 ; 7 uses
  %.pre67.pre = load i16, ptr %i.b, align 2, !tbaa !13 ; 7 uses
  br i1 %.not46, label %.thread56, label %bb.t

bb.t:                                             ; preds = %.peel.newph
  %.not47 = icmp eq i16 %.pre.pre, %.pre67.pre
  br i1 %.not47, label %.thread56, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gm = lshr i16 %.pre.pre, 11
  %i.gn = lshr i16 %.pre.pre, 5
  %i.go = and i16 %i.gn, 63
  %i.gp = and i16 %.pre.pre, 31
  %i.gq = mul nuw nsw i16 %i.gm, 33
  %i.gr = lshr i16 %i.gq, 2                       ; 3 uses
  %i.gs = trunc nuw i16 %i.gr to i8
  store i8 %i.gs, ptr %i.c, align 16, !tbaa !8
  %i.gt = mul nuw nsw i16 %i.go, 65
  %i.gu = lshr i16 %i.gt, 4                       ; 3 uses
  %i.gv = trunc nuw i16 %i.gu to i8
  store i8 %i.gv, ptr %i.ef, align 1, !tbaa !8
  %narrow.i.i48 = mul nuw nsw i16 %i.gp, 33
  %i.gw = lshr i16 %narrow.i.i48, 2               ; 3 uses
  %i.gx = trunc nuw i16 %i.gw to i8
  store i8 %i.gx, ptr %i.eg, align 2, !tbaa !8
  store i8 0, ptr %i.eh, align 1, !tbaa !8
  %i.gy = lshr i16 %.pre67.pre, 11
  %i.gz = lshr i16 %.pre67.pre, 5
  %i.ha = and i16 %i.gz, 63
  %i.hb = and i16 %.pre67.pre, 31
  %i.hc = mul nuw nsw i16 %i.gy, 33
  %i.hd = lshr i16 %i.hc, 2                       ; 3 uses
  %i.he = trunc nuw i16 %i.hd to i8
  store i8 %i.he, ptr %i.ei, align 4, !tbaa !8
  %i.hf = mul nuw nsw i16 %i.ha, 65
  %i.hg = lshr i16 %i.hf, 4                       ; 3 uses
  %i.hh = trunc nuw i16 %i.hg to i8
  store i8 %i.hh, ptr %i.ej, align 1, !tbaa !8
  %narrow.i9.i49 = mul nuw nsw i16 %i.hb, 33
  %i.hi = lshr i16 %narrow.i9.i49, 2              ; 3 uses
  %i.hj = trunc nuw i16 %i.hi to i8
  store i8 %i.hj, ptr %i.ek, align 2, !tbaa !8
  store i8 0, ptr %i.el, align 1, !tbaa !8
  %i.hk = shl nuw nsw i16 %i.gr, 1
  %.lhs.trunc.i.i50 = add nuw nsw i16 %i.hk, %i.hd
  %i.hl = udiv i16 %.lhs.trunc.i.i50, 3
  %i.hm = trunc nuw i16 %i.hl to i8
  store i8 %i.hm, ptr %i.em, align 8, !tbaa !8
  %i.hn = shl nuw nsw i16 %i.gu, 1
  %.lhs.trunc9.i.i51 = add nuw nsw i16 %i.hn, %i.hg
  %i.ho = udiv i16 %.lhs.trunc9.i.i51, 3
  %i.hp = trunc nuw i16 %i.ho to i8
  store i8 %i.hp, ptr %i.en, align 1, !tbaa !8
  %i.hq = shl nuw nsw i16 %i.gw, 1
  %.lhs.trunc11.i.i52 = add nuw nsw i16 %i.hq, %i.hi
  %i.hr = udiv i16 %.lhs.trunc11.i.i52, 3
  %i.hs = trunc nuw i16 %i.hr to i8
  store i8 %i.hs, ptr %i.eo, align 2, !tbaa !8
end_hunk_1
