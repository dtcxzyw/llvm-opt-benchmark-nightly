Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegaudiodec_common?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VLC = type { i32, ptr, i32, i32 }
%struct.VLCElem = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16 }
%struct.VLCInitState = type { ptr, i32 }

@division_tab3 = internal global [64 x i16] zeroinitializer, align 16
@division_tab5 = internal global [256 x i16] zeroinitializer, align 16
@division_tab9 = internal global [2048 x i16] zeroinitializer, align 16
@ff_division_tabs = hidden local_unnamed_addr constant [4 x ptr] [ptr @division_tab3, ptr @division_tab5, ptr null, ptr @division_tab9], align 16
@ff_slen_table = hidden local_unnamed_addr constant [2 x [16 x i8]] [[16 x i8] c"\00\00\00\00\03\01\01\01\02\02\02\03\03\03\04\04", [16 x i8] c"\00\01\02\03\00\01\02\03\01\02\03\01\02\03\02\03"], align 16
@ff_lsf_nsf_table = hidden local_unnamed_addr constant [6 x [3 x [4 x i8]]] [[3 x [4 x i8]] [[4 x i8] c"\06\05\05\05", [4 x i8] c"\09\09\09\09", [4 x i8] c"\06\09\09\09"], [3 x [4 x i8]] [[4 x i8] c"\06\05\07\03", [4 x i8] c"\09\09\0C\06", [4 x i8] c"\06\09\0C\06"], [3 x [4 x i8]] [[4 x i8] c"\0B\0A\00\00", [4 x i8] c"\12\12\00\00", [4 x i8] c"\0F\12\00\00"], [3 x [4 x i8]] [[4 x i8] c"\07\07\07\00", [4 x i8] c"\0C\0C\0C\00", [4 x i8] c"\06\0F\0C\00"], [3 x [4 x i8]] [[4 x i8] c"\06\06\06\03", [4 x i8] c"\0C\09\09\06", [4 x i8] c"\06\0C\09\06"], [3 x [4 x i8]] [[4 x i8] c"\08\08\05\00", [4 x i8] c"\0F\0C\09\00", [4 x i8] c"\06\12\09\00"]], align 16
@ff_mpa_huff_data = hidden local_unnamed_addr constant [32 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] zeroinitializer, [2 x i8] c"\04\00", [2 x i8] c"\05\00", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\08\00", [2 x i8] c"\09\00", [2 x i8] c"\0A\00", [2 x i8] c"\0B\00", [2 x i8] c"\0C\00", [2 x i8] zeroinitializer, [2 x i8] c"\0D\00", [2 x i8] c"\0E\01", [2 x i8] c"\0E\02", [2 x i8] c"\0E\03", [2 x i8] c"\0E\04", [2 x i8] c"\0E\06", [2 x i8] c"\0E\08", [2 x i8] c"\0E\0A", [2 x i8] c"\0E\0D", [2 x i8] c"\0F\04", [2 x i8] c"\0F\05", [2 x i8] c"\0F\06", [2 x i8] c"\0F\07", [2 x i8] c"\0F\08", [2 x i8] c"\0F\09", [2 x i8] c"\0F\0B", [2 x i8] c"\0F\0D"], align 16
@ff_band_size_long = hidden local_unnamed_addr constant [9 x [22 x i8]] [[22 x i8] c"\04\04\04\04\04\04\06\06\08\08\0A\0C\10\14\18\1C\22*26L\9E", [22 x i8] c"\04\04\04\04\04\04\06\06\06\08\0A\0C\10\12\16\1C\22(.66\C0", [22 x i8] c"\04\04\04\04\04\04\06\06\08\0A\0C\10\14\18\1E&.8DTf\1A", [22 x i8] c"\06\06\06\06\06\06\08\0A\0C\0E\10\14\18\1C &.4<D:6", [22 x i8] c"\06\06\06\06\06\06\08\0A\0C\0E\10\12\16\1A &.6>FL$", [22 x i8] c"\06\06\06\06\06\06\08\0A\0C\0E\10\14\18\1C &.4<D:6", [22 x i8] c"\06\06\06\06\06\06\08\0A\0C\0E\10\14\18\1C &.4<D:6", [22 x i8] c"\06\06\06\06\06\06\08\0A\0C\0E\10\14\18\1C &.4<D:6", [22 x i8] c"\0C\0C\0C\0C\0C\0C\10\14\18\1C (08@LZ\02\02\02\02\02"], align 16
@ff_band_size_short = hidden local_unnamed_addr constant [9 x [13 x i8]] [[13 x i8] c"\04\04\04\04\06\08\0A\0C\0E\12\16\1E8", [13 x i8] c"\04\04\04\04\06\06\0A\0C\0E\10\14\1AB", [13 x i8] c"\04\04\04\04\06\08\0C\10\14\1A\22*\0C", [13 x i8] c"\04\04\04\06\06\08\0A\0E\12\1A *\12", [13 x i8] c"\04\04\04\06\08\0A\0C\0E\12\18 ,\0C", [13 x i8] c"\04\04\04\06\08\0A\0C\0E\12\18\1E(\12", [13 x i8] c"\04\04\04\06\08\0A\0C\0E\12\18\1E(\12", [13 x i8] c"\04\04\04\06\08\0A\0C\0E\12\18\1E(\12", [13 x i8] c"\08\08\08\0C\10\14\18\1C$\02\02\02\1A"], align 16
@ff_mpa_pretab = hidden local_unnamed_addr constant [2 x [22 x i8]] [[22 x i8] zeroinitializer, [22 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\03\02\00"], align 16
@ff_mpegaudiodec_common_init_static.init_static_once = internal global i32 0, align 4
@ff_table_4_3_exp = hidden local_unnamed_addr global [32828 x i8] zeroinitializer, align 16
@ff_table_4_3_value = hidden local_unnamed_addr global [32828 x i32] zeroinitializer, align 16
@ff_scale_factor_modshift = hidden local_unnamed_addr global [64 x i16] zeroinitializer, align 16
@ff_huff_vlc = hidden local_unnamed_addr global [16 x ptr] zeroinitializer, align 16
@ff_huff_quad_vlc = hidden global [2 x %struct.VLC] zeroinitializer, align 16
@ff_band_index_long = hidden local_unnamed_addr global [9 x [23 x i16]] zeroinitializer, align 16
@huff_vlc_tables = internal global [3746 x %struct.VLCElem] zeroinitializer, align 16
@__const.mpegaudiodec_common_init_static.state = private unnamed_addr constant { ptr, i32, [4 x i8] } { ptr @huff_vlc_tables, i32 3746, [4 x i8] zeroinitializer }, align 8
@mpa_huffsymbols = internal unnamed_addr constant [1378 x i8] c"\11\01\10\00\22\02\12! \11\01\10\00\22\02\12! \10\11\01\003#21\13\030\22\12!\02 \11\01\10\003\03#20\131\22\02\12! \01\11\10\00UETS5D%R\15Q\054PC3$B\14A@\04#2\03\1310\22\12!\02 \11\01\10\00UTES5D%R\05\15Q4CP3$B\14A\04@#2\131\030\22\02 \12!\11\01\10\00UE5ST\05D%R\15Q4CP\04$B3@\14A#2\131\030\22\02\12! \11\01\10\00wgvWufGtVe7sFUTc'rd\07pbE5\06SD\17q6&%R\15Q4C\16a`\05P$B3\04\14A@#2\03\1310\22\12!\02 \11\01\10\00wgvufGtWUVe7sFET5S'rd\07q\17p6c`D%R\05\15b&\06\16aQ4PC3$B\14A\04@#2\131\030\22!\12\02 \11\01\10\00wgvWufGteV7sU'rFd\17q\07p6cETD\06\05&ba\16`5S%R\15Q4CP\04$B\143A#2@\030\131\22\12!\02 \00\11\01\10\FE\FC\FD\ED\FF\EF\DF\EE\CF\DE\BF\FB\CE\DC\AF\E9\EC\DD\FA\CD\BE\EB\9F\F9\EA\BD\DB\8F\F8\CC\AE\9E\8E\7F~\F7\DA\AD\BC\CB\F6o\E8_\9D\D9\F5\E7\AC\BBO\F4\CA\E6\F3?\8D\D8/\F2n\9C\0F\C9^\AB}\D7N\C8\D6>\B9\9B\AA\1F\F1\F0\BA\E5\E4\8Cm\E3\E2.\0E\1E\E1\E0]\D5|\C7M\8B\B8\D4\9A\A9l\C6=\D3{-\D2\1D\B7\\\C5\99z\C3\A7\97K\D1\0D\D0\8A\A8L\C4k\B6<,\C2[\B5\89\1C\C1\98\0C\C0\B4j\A6y;\B3\88Z+\A5i\A4x\87\94wv\B2\1B\B1\0B\B0\96J:\A3Y\95*\A2\1A\A1\0Ah\A0\86I\939X\85g)\92Wu8\83fGtVes\19\91\09\90H\84rFd(\82\187'\17qU\07p6cET&b5\81\08\80\16a\06`SD%R\05\15Q4CP$B3\14A\04@#2\131\030\22\12!\02 \11\01\10\00\FF\EF\FE\DF\EE\FD\CF\FC\DE\ED\BF\FB\CE\EC\DD\AF\FA\BE\EB\CD\DC\9F\F9\EA\BD\DB\8F\F8\CC\9E\E9\7F\F7\AD\DA\BCo\AE\0F\CB\F6\8E\E8_\9D\F5~\E7\AC\CA\BB\D9\8DO\F4?\F3\D8\E6/\F2n\F0\1F\F1\9C\C9^\AB\BA\E5}\D7N\E4\8C\C8>m\D6\E3\9B\B9.\AA\E2\1E\E1\0E\E0]\D5|\C7M\8B\D4\B8\9A\A9l\C6=\D3\D2-\0D\1D{\B7\D1\\\D0\C5\8A\A8L\C4k\B6\99\0C<\C3z\A7\A6\C0\0B\C2,[\B5\1C\89\98\C1K\B4j;y\B3\97\88+Z\B2\A5\1B\B1\B0i\96J\A4x\87:\A3Y\95*\A2\1A\A1\0A\A0h\86I\949\93w\09X\85)gv\92\91\19\90H\84Wu8\83fG(\82\18\81t\08\80Ve7sF'rd\17Uq\07p6cET&b\16\06`5aSD%R\15Q\05P4C$B3A\14\04#2@\03\1310\22\12!\02 \11\01\10\00\EF\FE\DF\FD\CF\FC\BF\FB\AF\FA\9F\F9\F8\8F\7F\F7o\F6\FF_\F5O\F4\F3\F0?\CE\EC\DD\DE\E9\EA\D9\EE\ED\EB\BE\CD\DC\DB\AE\CC\AD\DA~\AC\CA\C9}^\BD\F2/\0F\1F\F1\9E\BC\CB\8E\E8\9D\E7\BB\8D\D8n\E6\9C\AB\BA\E5\D7N\E4\8C\C8>m\D6\9B\B9\AA\E1\D4\B8\A9{\B7\D0\E3\0E\E0]\D5|\C7M\8B\9Al\C6=\\\C5\0D\8A\A8\99L\B6z<[\89\1C\C0\98y\E2.\1E\D3-\D2\D1;\97\88\1D\C4k\C3\A7,\C2\B5\C1\0CK\B4j\A6\B3Z\A5+\B2\1B\B1\0B\B0i\96J\A4x\87\A3:Y*\95h\A1\86w\94IWg\A2\1A\0A\A09\93X\85)\92v\09\19\91\90H\84u8\83f(\82Gt\18\81\80\08V7seF'rdU\07\17qp6cET&b\16a\06`S5D%RQ\15\054CP$B3\14A\04@#2\131\030\22\12!\02 \11\01\10\00\EF\FE\DF\FD\CF\FC\BF\FB\FA\AF\9F\F9\F8\8F\7F\F7o\F6_\F5O\F4?\F3/\F2\F1\1F\F0\0F\EE\DE\ED\CE\EC\DD\BE\EB\CD\DC\AE\EA\BD\DB\CC\9E\E9\AD\DA\BC\CB\8E\E8\9D\D9~\E7\AC\FF\CA\BB\8D\D8\0E\E0\0D\E6n\9C\C9^\BA\E5\AB}\D7\E4\8C\C8N.>m\D6\E3\9B\B9\AA\E2\1E\E1]\D5|\C7M\8B\B8\D4\9A\A9l\C6=\D3-\D2\1D{\B7\D1\\\C5\8A\A8\99L\C4k\B6\D0\0C<\C3z\A7,\C2[\B5\1C\89\98\C1K\C0\0B;\B0\0A\1A\B4j\A6y\97\A0\09\90\B3\88+Z\B2\A5\1B\B1i\96\A4Jx\87:\A3Y\95*\A2\A1h\86wI\949\93X\85)gv\92\19\91H\84Wu8\83f(\82\18Gt\81\08\80Ve\17\07ps7'rFdUq6cET&b\16a\06`5SD%R\15\05PQ4C$B3\14A\04@#2\131\030\22\12!\02 \11\01\10\00", align 16
@mpa_hufflens = internal constant [1378 x i8] c"\03\03\02\01\06\06\05\05\05\03\03\03\01\06\06\05\05\05\03\02\02\02\08\08\07\06\07\07\07\07\06\06\06\06\03\03\03\01\07\07\06\06\06\05\05\05\05\04\04\04\03\02\03\03\0A\0A\0A\0A\09\09\09\09\08\08\09\09\08\09\09\08\08\07\07\07\08\08\08\08\07\07\07\07\06\05\06\06\04\03\03\01\0B\0B\0A\09\0A\0A\09\09\09\08\08\09\09\09\09\08\08\08\07\08\08\08\08\08\08\08\08\06\06\06\04\04\02\03\03\02\09\09\08\08\09\09\08\08\08\08\07\07\07\08\08\07\07\07\07\06\06\06\06\05\05\06\06\05\05\04\04\04\03\03\03\03\0B\0B\0B\0B\0B\0B\0A\0A\0A\0A\0A\0A\0A\0B\0B\0A\09\09\0A\0A\09\09\0A\0A\09\0A\0A\08\08\09\09\0A\0A\09\09\0A\0A\08\08\08\09\09\09\09\09\09\08\08\08\08\08\08\07\07\07\07\06\06\06\06\04\03\03\01\0A\0A\0A\0A\0A\0A\0A\0B\0B\0A\0A\09\09\09\0A\0A\0A\0A\08\08\09\09\07\08\08\08\08\08\09\09\09\09\08\07\08\08\07\07\08\08\08\09\09\08\08\08\08\08\08\07\07\06\06\07\07\06\05\04\05\05\03\03\03\02\0A\0A\09\09\09\09\09\09\09\08\08\09\09\08\08\08\08\08\08\09\09\08\08\08\08\08\09\09\07\07\07\08\08\08\08\08\08\07\07\07\07\08\08\07\07\07\06\06\06\06\07\07\06\05\05\05\04\04\05\05\04\03\03\03\13\13\12\11\10\10\10\10\10\10\10\10\10\10\11\11\0F\0F\10\10\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\10\0F\10\10\0E\0E\0F\0F\0F\0F\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0E\0D\0E\0E\0D\0D\0E\0E\0D\0E\0E\0D\0E\0E\0D\0E\0E\0D\0D\0E\0E\0C\0C\0C\0D\0D\0D\0D\0D\0D\0C\0D\0D\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0C\0C\0D\0D\0C\0C\0C\0C\0D\0D\0D\0D\0C\0D\0D\0C\0B\0C\0C\0C\0C\0C\0C\0C\0C\0B\0B\0B\0B\0C\0C\0B\0B\0C\0C\0B\0C\0C\0C\0C\0B\0B\0C\0C\0B\0C\0C\0B\0C\0C\0B\0C\0C\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0A\0A\0A\0A\0B\0B\0A\0B\0B\0A\0B\0B\0B\0B\0A\0A\0B\0B\0A\0A\0B\0B\0B\0B\0B\0B\09\09\0A\0A\0A\0A\0A\0B\0B\09\09\09\0A\0A\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\08\09\09\09\09\09\09\0A\0A\09\09\09\08\08\09\09\09\09\09\09\08\07\08\08\08\08\07\07\07\07\07\06\06\06\06\04\04\03\01\0D\0D\0D\0D\0C\0D\0D\0D\0D\0D\0D\0C\0D\0D\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0B\0B\0C\0C\0C\0C\0B\0B\0B\0B\0B\0B\0C\0C\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0B\0B\0B\0B\0B\0B\0A\0B\0B\0B\0B\0B\0B\0A\0A\0B\0B\0A\0A\0A\0A\0B\0B\0A\0A\0A\0A\0A\0A\0A\0B\0B\0A\0A\0A\0A\0A\0B\0B\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\09\0A\0A\0A\0A\09\0A\0A\09\0A\0A\0A\0A\0A\0A\0A\0A\09\09\09\09\09\09\09\0A\0A\09\09\09\09\09\09\0A\0A\09\09\09\09\09\09\08\09\09\09\09\09\09\09\09\09\09\08\08\08\08\09\09\09\09\09\09\09\09\08\08\08\08\08\08\09\09\08\08\08\08\08\08\08\09\09\08\07\08\08\07\07\07\07\08\08\07\07\07\07\07\06\07\07\06\06\07\07\06\06\06\05\05\05\05\05\03\04\04\03\0B\0B\0B\0B\0B\0B\0B\0B\0A\0B\0B\0B\0B\0A\0A\0A\0A\0A\08\0A\0A\09\09\09\09\0A\10\11\11\0F\0F\10\10\0E\0F\0F\0E\0E\0F\0F\0E\0E\0F\0F\0F\0F\0E\0F\0F\0E\0D\08\09\09\08\08\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0D\0D\0E\0E\0E\0E\0D\0E\0E\0D\0D\0D\0E\0E\0E\0E\0D\0D\0E\0E\0D\0E\0E\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0C\0D\0D\0D\0D\0D\0D\0C\0D\0D\0C\0C\0D\0D\0B\0C\0C\0C\0C\0C\0C\0C\0D\0D\0B\0C\0C\0C\0C\0B\0C\0C\0C\0C\0C\0C\0C\0C\0B\0C\0C\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0B\0C\0C\0B\0C\0C\0B\0C\0C\0B\0C\0C\0B\0A\0A\0B\0B\0B\0B\0B\0B\0A\0A\0B\0B\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0A\0B\0B\0A\0A\0A\0B\0B\0A\0A\0B\0B\0A\0A\0B\0B\0A\09\09\0A\0A\0A\0A\0A\0A\09\09\09\0A\0A\09\0A\0A\09\09\08\09\09\09\09\09\09\09\09\08\08\09\09\08\08\07\07\08\08\07\06\06\06\06\04\04\03\01\08\08\08\08\08\08\08\08\07\08\08\07\07\08\08\07\07\07\07\07\07\07\07\07\07\07\07\08\08\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\04\0B\0B\0B\0B\0C\0C\0B\0A\0B\0B\0A\0A\0A\0A\0B\0B\0A\0A\0A\0A\0B\0B\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0A\0B\0B\0A\09\0A\0A\0A\0A\0B\0B\0A\09\09\0A\0A\09\0A\0A\0A\0A\09\09\0A\0A\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\0A\09\09\09\0A\0A\08\09\09\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\08\08\08\08\08\08\09\09\07\08\08\07\07\07\07\07\08\08\07\07\06\06\07\07\06\05\05\06\06\04\04\04\04", align 16
@mpa_huff_sizes_minus_one = internal unnamed_addr constant [15 x i8] c"\03\08\08\0F\0F###???\FF\FF\FF\FF", align 1
@huff_quad_vlc_tables = internal global [80 x %struct.VLCElem] zeroinitializer, align 16
@mpa_quad_bits = internal constant [2 x [16 x i8]] [[16 x i8] c"\01\04\04\05\04\06\05\06\04\05\05\06\05\06\06\06", [16 x i8] c"\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04"], align 16
@mpa_quad_codes = internal constant [2 x [16 x i8]] [[16 x i8] c"\01\05\04\05\06\05\04\04\07\03\06\00\07\02\03\01", [16 x i8] c"\0F\0E\0D\0C\0B\0A\09\08\07\06\05\04\03\02\01\00"], align 16
@ff_mpa_quant_bits = external hidden local_unnamed_addr constant [17 x i32], align 16
@ff_mpa_quant_steps = external hidden local_unnamed_addr constant [17 x i32], align 16
@mpegaudiodec_common_tableinit.exp2_lut = internal unnamed_addr constant [4 x double] [double 1.000000e+00, double f0x3FF306FE0A31B715, double f0x3FF6A09E667F3BCD, double f0x3FFAE89F995AD3AD], align 16

; Function Attrs: cold nounwind optsize uwtable
define hidden void @ff_mpegaudiodec_common_init_static() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_once(ptr noundef nonnull @ff_mpegaudiodec_common_init_static.init_static_once, ptr noundef nonnull @mpegaudiodec_common_init_static) #7 ; 0 uses
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind optsize uwtable
define internal void @mpegaudiodec_common_init_static() #0 {
vector.ph.a:
  %0 = alloca %struct.VLCInitState, align 8       ; 4 uses
  %1 = alloca [256 x i16], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @__const.mpegaudiodec_common_init_static.state, i64 16, i1 false)
  store <8 x i16> <i16 0, i16 1, i16 2, i16 4, i16 5, i16 6, i16 8, i16 9>, ptr @ff_scale_factor_modshift, align 16, !tbaa !20
  store <8 x i16> <i16 10, i16 12, i16 13, i16 14, i16 16, i16 17, i16 18, i16 20>, ptr getelementptr inbounds nuw (i8, ptr @ff_scale_factor_modshift, i64 16), align 16, !tbaa !20
  store <8 x i16> <i16 21, i16 22, i16 24, i16 25, i16 26, i16 28, i16 29, i16 30>, ptr getelementptr inbounds nuw (i8, ptr @ff_scale_factor_modshift, i64 32), align 16, !tbaa !20
  store <8 x i16> <i16 32, i16 33, i16 34, i16 36, i16 37, i16 38, i16 40, i16 41>, ptr getelementptr inbounds nuw (i8, ptr @ff_scale_factor_modshift, i64 48), align 16, !tbaa !20
  store <8 x i16> <i16 42, i16 44, i16 45, i16 46, i16 48, i16 49, i16 50, i16 52>, ptr getelementptr inbounds nuw (i8, ptr @ff_scale_factor_modshift, i64 64), align 16, !tbaa !20
  store <8 x i16> <i16 53, i16 54, i16 56, i16 57, i16 58, i16 60, i16 61, i16 62>, ptr getelementptr inbounds nuw (i8, ptr @ff_scale_factor_modshift, i64 80), align 16, !tbaa !20
  store <8 x i16> <i16 64, i16 65, i16 66, i16 68, i16 69, i16 70, i16 72, i16 73>, ptr getelementptr inbounds nuw (i8, ptr @ff_scale_factor_modshift, i64 96), align 16, !tbaa !20
  store <8 x i16> <i16 74, i16 76, i16 77, i16 78, i16 80, i16 81, i16 82, i16 84>, ptr getelementptr inbounds nuw (i8, ptr @ff_scale_factor_modshift, i64 112), align 16, !tbaa !20
  br label %.preheader91

.preheader91:                                     ; preds = %vector.ph.a, %bb.b
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %bb.b ], [ 0, %vector.ph.a ] ; 2 uses
  %.096 = phi ptr [ %i.v, %bb.b ], [ @mpa_huffsymbols, %vector.ph.a ] ; 2 uses
  %.07495 = phi ptr [ %i.u, %bb.b ], [ @mpa_hufflens, %vector.ph.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.a = getelementptr inbounds nuw i8, ptr @mpa_huff_sizes_minus_one, i64 %indvars.iv111
  %i.b = load i8, ptr %i.a, align 1, !tbaa !9
  %i.c = zext i8 %i.b to i32
  %i.d = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %.preheader91, %bb.a
  %indvars.iv107 = phi i64 [ 0, %.preheader91 ], [ %indvars.iv.next108, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.096, i64 %indvars.iv107
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9     ; 2 uses
  %i.g = and i8 %i.f, -16                         ; 2 uses
  %i.h = and i8 %i.f, 15                          ; 2 uses
  %i.i = zext i8 %i.g to i16
  %i.j = shl nuw nsw i16 %i.i, 1
  %i.k = icmp ne i8 %i.g, 0
  %i.l = zext nneg i8 %i.h to i16
  %i.m = icmp ne i8 %i.h, 0
  %i.n = and i1 %i.k, %i.m
  %i.o = select i1 %i.n, i16 16, i16 0
  %i.p = or disjoint i16 %i.o, %i.j
  %i.q = or disjoint i16 %i.p, %i.l
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv107
  store i16 %i.q, ptr %i.r, align 2, !tbaa !20
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count
  br i1 %exitcond110.not, label %bb.b, label %bb.a, !llvm.loop !12

bb.b:                                             ; preds = %bb.a
  %i.s = call ptr @ff_vlc_init_tables_from_lengths(ptr noundef nonnull %0, i32 noundef 7, i32 noundef %i.d, ptr noundef %.07495, i32 noundef 1, ptr noundef nonnull %1, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0) #7
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @ff_huff_vlc, i64 %indvars.iv.next112
  store ptr %i.s, ptr %i.t, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %.07495, i64 %wide.trip.count
  %i.v = getelementptr inbounds nuw i8, ptr %.096, i64 %wide.trip.count
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %exitcond114.not = icmp eq i64 %indvars.iv.next112, 15
  br i1 %exitcond114.not, label %.preheader90, label %.preheader91, !llvm.loop !13

.preheader90:                                     ; preds = %bb.b, %.preheader90
  %i.w = phi i1 [ false, %.preheader90 ], [ true, %bb.b ] ; 2 uses
  %indvars.iv115 = phi i64 [ 1, %.preheader90 ], [ 0, %bb.b ] ; 3 uses
  %.07598 = phi i32 [ %i.ae, %.preheader90 ], [ 0, %bb.b ] ; 2 uses
  %i.x = select i1 %i.w, i32 6, i32 4             ; 2 uses
  %i.y = zext nneg i32 %.07598 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @huff_quad_vlc_tables, i64 %i.y
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr @ff_huff_quad_vlc, i64 %indvars.iv115 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !25
  %i.ac = shl nuw nsw i32 1, %i.x                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !26
  %i.ae = add nuw nsw i32 %i.ac, %.07598
  %i.af = getelementptr inbounds nuw [16 x i8], ptr @mpa_quad_bits, i64 %indvars.iv115
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr @mpa_quad_codes, i64 %indvars.iv115
  %i.ah = call i32 @ff_vlc_init_sparse(ptr noundef nonnull %i.aa, i32 noundef %i.x, i32 noundef 16, ptr noundef nonnull %i.af, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.ag, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 1) #7 ; 0 uses
  br i1 %i.w, label %.preheader90, label %.preheader88, !llvm.loop !14

.preheader88:                                     ; preds = %.preheader90, %bb.c
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %bb.c ], [ 0, %.preheader90 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [46 x i8], ptr @ff_band_index_long, i64 %indvars.iv122 ; 2 uses
  %i.aj = getelementptr inbounds nuw [22 x i8], ptr @ff_band_size_long, i64 %indvars.iv122
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ak = trunc i32 %i.as to i16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !20
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next123, 9
  br i1 %exitcond125.not, label %.preheader87, label %.preheader88, !llvm.loop !15

bb.d:                                             ; preds = %.preheader88, %bb.d
  %indvars.iv118 = phi i64 [ 0, %.preheader88 ], [ %indvars.iv.next119, %bb.d ] ; 3 uses
  %.08199 = phi i32 [ 0, %.preheader88 ], [ %i.as, %bb.d ] ; 2 uses
  %i.am = trunc i32 %.08199 to i16
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv118
  store i16 %i.am, ptr %i.an, align 2, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv118
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = lshr i8 %i.ap, 1
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = add nuw nsw i32 %.08199, %i.ar          ; 2 uses
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next119, 22
  br i1 %exitcond121.not, label %bb.c, label %bb.d, !llvm.loop !16

bb.e:                                             ; preds = %.loopexit
  call fastcc void @mpegaudiodec_common_tableinit() #8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #7
  ret void

.preheader87:                                     ; preds = %bb.c, %.loopexit
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %.loopexit ], [ 0, %bb.c ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @ff_mpa_quant_bits, i64 %indvars.iv131
  %i.au = load i32, ptr %i.at, align 4, !tbaa !11 ; 3 uses
  %i.av = icmp sgt i32 %i.au, -1
  %.not = icmp eq i32 %i.au, -30
  %or.cond = or i1 %i.av, %.not
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader87
  %i.aw = sub i32 1, %i.au
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @ff_mpa_quant_steps, i64 %indvars.iv131
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !11 ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @ff_division_tabs, i64 %indvars.iv131
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !28
  %smax = call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  %wide.trip.count129 = zext nneg i32 %smax to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv126 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next127, %bb.f ] ; 3 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv126 to i32 ; 2 uses
  %i.bd = srem i32 %i.bc, %i.az
  %i.be = sdiv i32 %i.bc, %i.az                   ; 2 uses
  %i.bf = srem i32 %i.be, %i.az
  %i.bg = sdiv i32 %i.be, %i.az
  %i.bh = shl i32 %i.bf, 4
  %i.bi = add nsw i32 %i.bh, %i.bd
  %i.bj = shl i32 %i.bg, 8
  %i.bk = add nsw i32 %i.bi, %i.bj
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv126
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !20
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %.loopexit, label %bb.f, !llvm.loop !17

.loopexit:                                        ; preds = %bb.f, %.preheader87
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next132, 4
  br i1 %exitcond134.not, label %bb.e, label %.preheader87, !llvm.loop !18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @ff_vlc_init_tables_from_lengths(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_vlc_init_sparse(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mpegaudiodec_common_tableinit() unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  ret void

bb.c:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %.01213 = phi double [ 0.000000e+00, %bb.a ], [ %.1, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.c = and i32 %i.b, 3
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = lshr exact i32 %i.b, 2
  %i.f = uitofp nsz nneg i32 %i.e to double       ; 2 uses
  %i.g = fdiv nnan nsz double %i.f, 1.759000e+00
  %i.h = tail call nsz double @cbrt(double noundef %i.f) #9
  %i.i = fmul nsz double %i.g, %i.h
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi nsz double [ %i.i, %bb.d ], [ %.01213, %bb.c ] ; 2 uses
  %i.j = and i64 %indvars.iv, 3
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @mpegaudiodec_common_tableinit.exp2_lut, i64 %i.j
  %i.l = load double, ptr %i.k, align 8, !tbaa !31
  %i.m = fmul nsz double %.1, %i.l
  %i.n = call nsz double @frexp(double noundef %i.m, ptr noundef nonnull %i.a) #7
  %i.o = fmul nsz double %i.n, f0x41E0000000000000
  %i.p = tail call i64 @llvm.llrint.i64.f64(double %i.o)
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr %i.a, align 4, !tbaa !11
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @ff_table_4_3_value, i64 %indvars.iv
  store i32 %i.q, ptr %i.s, align 4, !tbaa !11
  %i.t = trunc i32 %i.r to i8
  %i.u = sub i8 103, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr @ff_table_4_3_exp, i64 %indvars.iv
  store i8 %i.u, ptr %i.v, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32828
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @cbrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.llrint.i64.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = !{!"short", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"any pointer", !5, i64 0}
!22 = !{!"p1 _ZTS7VLCElem", !21, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"VLC", !6, i64 0, !22, i64 8, !6, i64 16, !6, i64 20}
!25 = !{!24, !22, i64 8}
!26 = !{!24, !6, i64 20}
!27 = !{!"p1 short", !21, i64 0}
!28 = !{!27, !27, i64 0}
!29 = distinct !{!29, !10}
!30 = !{!"double", !5, i64 0}
!31 = !{!30, !30, i64 0}
end_hunk_0
