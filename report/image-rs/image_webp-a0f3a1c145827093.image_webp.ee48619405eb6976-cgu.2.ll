Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.2?download=true
inline.NumInlined: 108
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0
@76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\A6\09\00\00\1A\00\00\00" }>, align 8
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00i\09\00\00\0A\00\00\00" }>, align 8
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00i\09\00\00\1A\00\00\00" }>, align 8
@79 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\C3\09\00\00\05\00\00\00" }>, align 8
@80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\C4\09\00\00\05\00\00\00" }>, align 8
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\C5\09\00\00\05\00\00\00" }>, align 8
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\C6\09\00\00\05\00\00\00" }>, align 8
@83 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\C7\09\00\00\05\00\00\00" }>, align 8
@84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\C8\09\00\00\05\00\00\00" }>, align 8
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\C9\09\00\00\05\00\00\00" }>, align 8
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\CA\09\00\00\05\00\00\00" }>, align 8
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\CB\09\00\00\05\00\00\00" }>, align 8
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\CC\09\00\00\05\00\00\00" }>, align 8
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\CD\09\00\00\05\00\00\00" }>, align 8
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\CE\09\00\00\05\00\00\00" }>, align 8
@91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\CF\09\00\00\05\00\00\00" }>, align 8
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\D0\09\00\00\05\00\00\00" }>, align 8
@93 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\D1\09\00\00\05\00\00\00" }>, align 8
@94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\D2\09\00\00\05\00\00\00" }>, align 8
@95 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\AE\09\00\00\05\00\00\00" }>, align 8
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\AF\09\00\00\05\00\00\00" }>, align 8
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\B0\09\00\00\05\00\00\00" }>, align 8
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\B1\09\00\00\05\00\00\00" }>, align 8
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\B2\09\00\00\05\00\00\00" }>, align 8
@100 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\B3\09\00\00\05\00\00\00" }>, align 8
@101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\B4\09\00\00\05\00\00\00" }>, align 8
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\B5\09\00\00\05\00\00\00" }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\B6\09\00\00\05\00\00\00" }>, align 8
@104 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\B7\09\00\00\05\00\00\00" }>, align 8
@105 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\B8\09\00\00\05\00\00\00" }>, align 8
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\B9\09\00\00\05\00\00\00" }>, align 8
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\BA\09\00\00\05\00\00\00" }>, align 8
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\BB\09\00\00\05\00\00\00" }>, align 8
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\BC\09\00\00\05\00\00\00" }>, align 8
@110 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\BD\09\00\00\05\00\00\00" }>, align 8
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\81\08\00\00\16\00\00\00" }>, align 8
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\81\08\00\00\05\00\00\00" }>, align 8
@113 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\84\08\00\00&\00\00\00" }>, align 8
@114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\88\08\00\00+\00\00\00" }>, align 8
@115 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\88\08\00\00 \00\00\00" }>, align 8
@116 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\85\08\00\00\11\00\00\00" }>, align 8
@117 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00%\08\00\00E\00\00\00" }>, align 8
@118 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\22\08\00\00\1E\00\00\00" }>, align 8
@119 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\009\08\00\00\0D\00\00\00" }>, align 8
@120 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\008\08\00\001\00\00\00" }>, align 8
@121 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\1C\08\00\00A\00\00\00" }>, align 8
@122 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00i\08\00\00\0D\00\00\00" }>, align 8
@123 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00h\08\00\000\00\00\00" }>, align 8
@124 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"`\00\00\00\00\00\00\00\\\08\00\00;\00\00\00" }>, align 8
@125 = private unnamed_addr constant [256 x i8] c"\04\00\05\00\06\00\07\00\08\00\09\00\0A\00\0B\00\0C\00\0D\00\0E\00\0F\00\10\00\11\00\12\00\13\00\14\00\15\00\16\00\17\00\18\00\19\00\1A\00\1B\00\1C\00\1D\00\1E\00\1F\00 \00!\00\22\00#\00$\00%\00&\00'\00(\00)\00*\00+\00,\00-\00.\00/\000\001\002\003\004\005\006\007\008\009\00:\00<\00>\00@\00B\00D\00F\00H\00J\00L\00N\00P\00R\00T\00V\00X\00Z\00\\\00^\00`\00b\00d\00f\00h\00j\00l\00n\00p\00r\00t\00w\00z\00}\00\80\00\83\00\86\00\89\00\8C\00\8F\00\92\00\95\00\98\00\9B\00\9E\00\A1\00\A4\00\A7\00\AA\00\AD\00\B1\00\B5\00\B9\00\BD\00\C1\00\C5\00\C9\00\CD\00\D1\00\D5\00\D9\00\DD\00\E1\00\E5\00\EA\00\EF\00\F5\00\F9\00\FE\00\03\01\08\01\0D\01\12\01\17\01\1C\01", align 2
@126 = private unnamed_addr constant [256 x i8] c"\04\00\05\00\06\00\07\00\08\00\09\00\0A\00\0A\00\0B\00\0C\00\0D\00\0E\00\0F\00\10\00\11\00\11\00\12\00\13\00\14\00\14\00\15\00\15\00\16\00\16\00\17\00\17\00\18\00\19\00\19\00\1A\00\1B\00\1C\00\1D\00\1E\00\1F\00 \00!\00\22\00#\00$\00%\00%\00&\00'\00(\00)\00*\00+\00,\00-\00.\00.\00/\000\001\002\003\004\005\006\007\008\009\00:\00;\00<\00=\00>\00?\00@\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00[\00]\00_\00`\00b\00d\00e\00f\00h\00j\00l\00n\00p\00r\00t\00v\00z\00|\00~\00\80\00\82\00\84\00\86\00\88\00\8A\00\8C\00\8F\00\91\00\94\00\97\00\9A\00\9D\00", align 2

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsksn9slvsHfS_10image_webp3vp8NtB4_5Frame8fill_rgb(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i16, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %.biased7 = add i16 %i.n, 15
  %.sroa.02.0 = and i16 %.biased7, -16
  %i.p = zext i16 %.sroa.02.0 to i64              ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = lshr i16 %i.n, 1
  %.sroa.01.0 = sub nuw i16 %i.n, %i.q
  %i.r = zext i16 %.sroa.01.0 to i64
  tail call void @_RINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj3_EB4_(ptr noalias nofree noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.r, i64 noundef %i.p)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.t = load i16, ptr %i.s, align 2, !noundef !4
  %i.u = zext i16 %i.t to i64
  tail call void @_RINvNtCsksn9slvsHfS_10image_webp3yuv21fill_rgb_buffer_fancyKj3_EB4_(ptr noalias nofree noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.u, i64 noundef %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsksn9slvsHfS_10image_webp3vp8NtB4_5Frame9fill_rgba(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i16, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %.biased7 = add i16 %i.n, 15
  %.sroa.02.0 = and i16 %.biased7, -16
  %i.p = zext i16 %.sroa.02.0 to i64              ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = lshr i16 %i.n, 1
  %.sroa.01.0 = sub nuw i16 %i.n, %i.q
  %i.r = zext i16 %.sroa.01.0 to i64
  tail call void @_RINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj4_EB4_(ptr noalias nofree noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.r, i64 noundef %i.p)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.t = load i16, ptr %i.s, align 2, !noundef !4
  %i.u = zext i16 %i.t to i64
  tail call void @_RINvNtCsksn9slvsHfS_10image_webp3yuv21fill_rgb_buffer_fancyKj4_EB4_(ptr noalias nofree noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.u, i64 noundef %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  %i.b = mul i64 %5, %3
  %i.c = add i64 %i.b, %4                         ; 5 uses
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp ugt i64 %i.c, %1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw nsw i64 %1, %i.c                 ; 2 uses
  %i.g = icmp samesign ugt i64 %i.f, 3
  br i1 %i.g, label %bb.e, label %bb.d, !prof !6

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, %bb.a
  %.sroa.0.034.lcssa = phi i64 [ %i.c, %bb.a ], [ %i.bh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread ], [ %i.dm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1 ], [ %i.fr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2 ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.034.lcssa, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #13
  unreachable

bb.d:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.b
  %.lcssa = phi i64 [ %i.f, %bb.b ], [ %i.bk, %bb.f ], [ %i.dp, %bb.h ], [ %i.ft, %bb.j ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %2, ptr noundef nonnull %i.d)
  %.sroa.015.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.416.0.copyload = load ptr, ptr %.sroa.416.0..sroa_idx, align 8 ; 7 uses
  %.sroa.518.0.copyload = load i64, ptr %.sroa.518.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.j = icmp ult i64 %.sroa.518.0.copyload, %.sroa.7.0.copyload
  br i1 %i.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.copyload), "nonnull"(ptr %.sroa.416.0.copyload) ]
  %i.k = sub nuw i64 %.sroa.7.0.copyload, %.sroa.518.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.k, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph
  %scevgep = getelementptr i8, ptr %.sroa.015.0.copyload, i64 %.sroa.518.0.copyload
  %scevgep49 = getelementptr i8, ptr %.sroa.015.0.copyload, i64 %.sroa.7.0.copyload
  %i.l = shl i64 %.sroa.518.0.copyload, 2
  %scevgep50 = getelementptr i8, ptr %.sroa.416.0.copyload, i64 %i.l
  %i.m = shl i64 %.sroa.7.0.copyload, 2
  %scevgep51 = getelementptr i8, ptr %.sroa.416.0.copyload, i64 %i.m
  %bound0 = icmp ult ptr %scevgep, %scevgep51
  %bound1 = icmp ult ptr %scevgep50, %scevgep49
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, -8                       ; 3 uses
  %i.n = add i64 %.sroa.518.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = add nuw i64 %.sroa.518.0.copyload, %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !alias.scope !34
  %wide.load52 = load <4 x i32>, ptr %i.r, align 4, !alias.scope !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %wide.load53 = load <4 x i8>, ptr %i.p, align 1, !alias.scope !35, !noalias !34
  %wide.load54 = load <4 x i8>, ptr %i.s, align 1, !alias.scope !35, !noalias !34
  %i.t = zext <4 x i8> %wide.load53 to <4 x i32>
  %i.u = zext <4 x i8> %wide.load54 to <4 x i32>
  %i.v = add <4 x i32> %wide.load, %i.t
  %i.w = add <4 x i32> %wide.load52, %i.u
  %i.x = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.v, <4 x i32> zeroinitializer)
  %i.y = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.w, <4 x i32> zeroinitializer)
  %i.z = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.x, <4 x i32> splat (i32 255))
  %i.aa = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.y, <4 x i32> splat (i32 255))
  %i.ab = trunc nuw <4 x i32> %i.z to <4 x i8>
  %i.ac = trunc nuw <4 x i32> %i.aa to <4 x i8>
  store <4 x i8> %i.ab, ptr %i.p, align 1, !alias.scope !35, !noalias !34
  store <4 x i8> %i.ac, ptr %i.s, align 1, !alias.scope !35, !noalias !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph, %middle.block
  %.sroa.518.031.ph = phi i64 [ %.sroa.518.0.copyload, %vector.memcheck ], [ %.sroa.518.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph ], [ %i.n, %middle.block ] ; 6 uses
  %i.ae = sub i64 %.sroa.7.0.copyload, %.sroa.518.031.ph
  %.neg = add i64 %.sroa.518.031.ph, 1
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %.sroa.518.031.ph ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload, i64 %.sroa.518.031.ph
  %i.ah = add nuw i64 %.sroa.518.031.ph, 1
  %i.ai = load i32, ptr %i.ag, align 4, !noundef !4
  %i.aj = load i8, ptr %i.af, align 1, !noundef !4
  %i.ak = zext i8 %i.aj to i32
  %i.al = add i32 %i.ai, %i.ak
  %..i.prol = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %i.am = tail call i32 @llvm.umin.i32(i32 %..i.prol, i32 255)
  %i.an = trunc nuw i32 %i.am to i8
  store i8 %i.an, ptr %i.af, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader
  %.sroa.518.031.unr = phi i64 [ %.sroa.518.031.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ], [ %i.ah, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ]
  %i.ao = icmp eq i64 %.sroa.7.0.copyload, %.neg
  br i1 %i.ao, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit
  %.sroa.518.031 = phi i64 [ %i.ba, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit ], [ %.sroa.518.031.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %.sroa.518.031 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload, i64 %.sroa.518.031
  %i.ar = add nuw i64 %.sroa.518.031, 1           ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !noundef !4
  %i.at = load i8, ptr %i.ap, align 1, !noundef !4
  %i.au = zext i8 %i.at to i32
  %i.av = add i32 %i.as, %i.au
  %..i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.av, i32 0)
  %i.aw = tail call i32 @llvm.umin.i32(i32 %..i, i32 255)
  %i.ax = trunc nuw i32 %i.aw to i8
  store i8 %i.ax, ptr %i.ap, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %i.ar ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload, i64 %i.ar
  %i.ba = add nuw i64 %.sroa.518.031, 2           ; 2 uses
  %i.bb = load i32, ptr %i.az, align 4, !noundef !4
  %i.bc = load i8, ptr %i.ay, align 1, !noundef !4
  %i.bd = zext i8 %i.bc to i32
  %i.be = add i32 %i.bb, %i.bd
  %..i.1122 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %..i.1122, i32 255)
  %i.bg = trunc nuw i32 %i.bf to i8
  store i8 %i.bg, ptr %i.ay, align 1
  %exitcond.not.1 = icmp eq i64 %i.ba, %.sroa.7.0.copyload
  br i1 %exitcond.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit, !llvm.loop !18

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit, %middle.block, %bb.e
  %i.bh = add i64 %i.c, %5                        ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bj = icmp ugt i64 %i.bh, %1
  br i1 %i.bj, label %bb.c, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread
  %i.bk = sub nuw nsw i64 %1, %i.bh               ; 2 uses
  %i.bl = icmp samesign ugt i64 %i.bk, 3
  br i1 %i.bl, label %bb.g, label %bb.d, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.d, ptr noundef nonnull %i.bi)
  %.sroa.015.0.copyload.1 = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.416.0.copyload.1 = load ptr, ptr %.sroa.416.0..sroa_idx, align 8 ; 7 uses
  %.sroa.518.0.copyload.1 = load i64, ptr %.sroa.518.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0.copyload.1 = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.bo = icmp ult i64 %.sroa.518.0.copyload.1, %.sroa.7.0.copyload.1
  br i1 %i.bo, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.1: ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.copyload.1), "nonnull"(ptr %.sroa.416.0.copyload.1) ]
  %i.bp = sub nuw i64 %.sroa.7.0.copyload.1, %.sroa.518.0.copyload.1 ; 3 uses
  %min.iters.check64 = icmp ult i64 %i.bp, 8
  br i1 %min.iters.check64, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader, label %vector.memcheck55

vector.memcheck55:                                ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.1
  %scevgep56 = getelementptr i8, ptr %.sroa.015.0.copyload.1, i64 %.sroa.518.0.copyload.1
  %scevgep57 = getelementptr i8, ptr %.sroa.015.0.copyload.1, i64 %.sroa.7.0.copyload.1
  %i.bq = shl i64 %.sroa.518.0.copyload.1, 2
  %scevgep58 = getelementptr i8, ptr %.sroa.416.0.copyload.1, i64 %i.bq
  %i.br = shl i64 %.sroa.7.0.copyload.1, 2
  %scevgep59 = getelementptr i8, ptr %.sroa.416.0.copyload.1, i64 %i.br
  %bound060 = icmp ult ptr %scevgep56, %scevgep59
  %bound161 = icmp ult ptr %scevgep58, %scevgep57
  %found.conflict62 = and i1 %bound060, %bound161
  br i1 %found.conflict62, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck55
  %n.vec66 = and i64 %i.bp, -8                    ; 3 uses
  %i.bs = add i64 %.sroa.518.0.copyload.1, %n.vec66
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 2 uses
  %i.bt = add nuw i64 %.sroa.518.0.copyload.1, %index68 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.1, i64 %i.bt ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.1, i64 %i.bt ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load69 = load <4 x i32>, ptr %i.bv, align 4, !alias.scope !36
  %wide.load70 = load <4 x i32>, ptr %i.bw, align 4, !alias.scope !36
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %wide.load71 = load <4 x i8>, ptr %i.bu, align 1, !alias.scope !37, !noalias !36
  %wide.load72 = load <4 x i8>, ptr %i.bx, align 1, !alias.scope !37, !noalias !36
  %i.by = zext <4 x i8> %wide.load71 to <4 x i32>
  %i.bz = zext <4 x i8> %wide.load72 to <4 x i32>
  %i.ca = add <4 x i32> %wide.load69, %i.by
  %i.cb = add <4 x i32> %wide.load70, %i.bz
  %i.cc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ca, <4 x i32> zeroinitializer)
  %i.cd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cb, <4 x i32> zeroinitializer)
  %i.ce = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cc, <4 x i32> splat (i32 255))
  %i.cf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cd, <4 x i32> splat (i32 255))
  %i.cg = trunc nuw <4 x i32> %i.ce to <4 x i8>
  %i.ch = trunc nuw <4 x i32> %i.cf to <4 x i8>
  store <4 x i8> %i.cg, ptr %i.bu, align 1, !alias.scope !37, !noalias !36
  store <4 x i8> %i.ch, ptr %i.bx, align 1, !alias.scope !37, !noalias !36
  %index.next73 = add nuw i64 %index68, 8         ; 2 uses
  %i.ci = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.ci, label %middle.block74, label %vector.body67, !llvm.loop !22

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %i.bp, %n.vec66
  br i1 %cmp.n75, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader: ; preds = %vector.memcheck55, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.1, %middle.block74
  %.sroa.518.031.1.ph = phi i64 [ %.sroa.518.0.copyload.1, %vector.memcheck55 ], [ %.sroa.518.0.copyload.1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.1 ], [ %i.bs, %middle.block74 ] ; 6 uses
  %i.cj = sub i64 %.sroa.7.0.copyload.1, %.sroa.518.031.1.ph
  %.neg130 = add i64 %.sroa.518.031.1.ph, 1
  %xtraiter124 = and i64 %i.cj, 1
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.1, i64 %.sroa.518.031.1.ph ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.1, i64 %.sroa.518.031.1.ph
  %i.cm = add nuw i64 %.sroa.518.031.1.ph, 1
  %i.cn = load i32, ptr %i.cl, align 4, !noundef !4
  %i.co = load i8, ptr %i.ck, align 1, !noundef !4
  %i.cp = zext i8 %i.co to i32
  %i.cq = add i32 %i.cn, %i.cp
  %..i.1.prol = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.cq, i32 0)
  %i.cr = tail call i32 @llvm.umin.i32(i32 %..i.1.prol, i32 255)
  %i.cs = trunc nuw i32 %i.cr to i8
  store i8 %i.cs, ptr %i.ck, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader
  %.sroa.518.031.1.unr = phi i64 [ %.sroa.518.031.1.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader ], [ %i.cm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol ]
  %i.ct = icmp eq i64 %.sroa.7.0.copyload.1, %.neg130
  br i1 %i.ct, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1
  %.sroa.518.031.1 = phi i64 [ %i.df, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1 ], [ %.sroa.518.031.1.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol.loopexit ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.1, i64 %.sroa.518.031.1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.1, i64 %.sroa.518.031.1
  %i.cw = add nuw i64 %.sroa.518.031.1, 1         ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !noundef !4
  %i.cy = load i8, ptr %i.cu, align 1, !noundef !4
  %i.cz = zext i8 %i.cy to i32
  %i.da = add i32 %i.cx, %i.cz
  %..i.1 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.da, i32 0)
  %i.db = tail call i32 @llvm.umin.i32(i32 %..i.1, i32 255)
  %i.dc = trunc nuw i32 %i.db to i8
  store i8 %i.dc, ptr %i.cu, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.1, i64 %i.cw ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.1, i64 %i.cw
  %i.df = add nuw i64 %.sroa.518.031.1, 2         ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !noundef !4
  %i.dh = load i8, ptr %i.dd, align 1, !noundef !4
  %i.di = zext i8 %i.dh to i32
  %i.dj = add i32 %i.dg, %i.di
  %..i.1.1 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.dj, i32 0)
  %i.dk = tail call i32 @llvm.umin.i32(i32 %..i.1.1, i32 255)
  %i.dl = trunc nuw i32 %i.dk to i8
  store i8 %i.dl, ptr %i.dd, align 1
  %exitcond.1.not.1 = icmp eq i64 %i.df, %.sroa.7.0.copyload.1
  br i1 %exitcond.1.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1, !llvm.loop !23

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1, %middle.block74, %bb.g
  %i.dm = add i64 %i.bh, %5                       ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.do = icmp ugt i64 %i.dm, %1
  br i1 %i.do, label %bb.c, label %bb.h, !prof !5

bb.h:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1
  %i.dp = sub nuw nsw i64 %1, %i.dm               ; 2 uses
  %i.dq = icmp samesign ugt i64 %i.dp, 3
  br i1 %i.dq, label %bb.i, label %bb.d, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ds, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.dn)
  %.sroa.015.0.copyload.2 = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.416.0.copyload.2 = load ptr, ptr %.sroa.416.0..sroa_idx, align 8 ; 7 uses
  %.sroa.518.0.copyload.2 = load i64, ptr %.sroa.518.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0.copyload.2 = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.dt = icmp ult i64 %.sroa.518.0.copyload.2, %.sroa.7.0.copyload.2
  br i1 %i.dt, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.2, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.2: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.copyload.2), "nonnull"(ptr %.sroa.416.0.copyload.2) ]
  %i.du = sub nuw i64 %.sroa.7.0.copyload.2, %.sroa.518.0.copyload.2 ; 3 uses
  %min.iters.check86 = icmp ult i64 %i.du, 8
  br i1 %min.iters.check86, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader, label %vector.memcheck77

vector.memcheck77:                                ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.2
  %scevgep78 = getelementptr i8, ptr %.sroa.015.0.copyload.2, i64 %.sroa.518.0.copyload.2
  %scevgep79 = getelementptr i8, ptr %.sroa.015.0.copyload.2, i64 %.sroa.7.0.copyload.2
  %i.dv = shl i64 %.sroa.518.0.copyload.2, 2
  %scevgep80 = getelementptr i8, ptr %.sroa.416.0.copyload.2, i64 %i.dv
  %i.dw = shl i64 %.sroa.7.0.copyload.2, 2
  %scevgep81 = getelementptr i8, ptr %.sroa.416.0.copyload.2, i64 %i.dw
  %bound082 = icmp ult ptr %scevgep78, %scevgep81
  %bound183 = icmp ult ptr %scevgep80, %scevgep79
  %found.conflict84 = and i1 %bound082, %bound183
  br i1 %found.conflict84, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck77
  %n.vec88 = and i64 %i.du, -8                    ; 3 uses
  %i.dx = add i64 %.sroa.518.0.copyload.2, %n.vec88
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %i.dy = add nuw i64 %.sroa.518.0.copyload.2, %index90 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.2, i64 %i.dy ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.2, i64 %i.dy ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load91 = load <4 x i32>, ptr %i.ea, align 4, !alias.scope !38
  %wide.load92 = load <4 x i32>, ptr %i.eb, align 4, !alias.scope !38
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  %wide.load93 = load <4 x i8>, ptr %i.dz, align 1, !alias.scope !39, !noalias !38
  %wide.load94 = load <4 x i8>, ptr %i.ec, align 1, !alias.scope !39, !noalias !38
  %i.ed = zext <4 x i8> %wide.load93 to <4 x i32>
  %i.ee = zext <4 x i8> %wide.load94 to <4 x i32>
  %i.ef = add <4 x i32> %wide.load91, %i.ed
  %i.eg = add <4 x i32> %wide.load92, %i.ee
  %i.eh = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ef, <4 x i32> zeroinitializer)
  %i.ei = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eg, <4 x i32> zeroinitializer)
  %i.ej = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.eh, <4 x i32> splat (i32 255))
  %i.ek = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ei, <4 x i32> splat (i32 255))
  %i.el = trunc nuw <4 x i32> %i.ej to <4 x i8>
  %i.em = trunc nuw <4 x i32> %i.ek to <4 x i8>
  store <4 x i8> %i.el, ptr %i.dz, align 1, !alias.scope !39, !noalias !38
  store <4 x i8> %i.em, ptr %i.ec, align 1, !alias.scope !39, !noalias !38
  %index.next95 = add nuw i64 %index90, 8         ; 2 uses
  %i.en = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.en, label %middle.block96, label %vector.body89, !llvm.loop !27

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %i.du, %n.vec88
  br i1 %cmp.n97, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader: ; preds = %vector.memcheck77, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.2, %middle.block96
  %.sroa.518.031.2.ph = phi i64 [ %.sroa.518.0.copyload.2, %vector.memcheck77 ], [ %.sroa.518.0.copyload.2, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.2 ], [ %i.dx, %middle.block96 ] ; 6 uses
  %i.eo = sub i64 %.sroa.7.0.copyload.2, %.sroa.518.031.2.ph
  %.neg131 = add i64 %.sroa.518.031.2.ph, 1
  %xtraiter126 = and i64 %i.eo, 1
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.2, i64 %.sroa.518.031.2.ph ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.2, i64 %.sroa.518.031.2.ph
  %i.er = add nuw i64 %.sroa.518.031.2.ph, 1
  %i.es = load i32, ptr %i.eq, align 4, !noundef !4
  %i.et = load i8, ptr %i.ep, align 1, !noundef !4
  %i.eu = zext i8 %i.et to i32
  %i.ev = add i32 %i.es, %i.eu
  %..i.2.prol = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ev, i32 0)
  %i.ew = tail call i32 @llvm.umin.i32(i32 %..i.2.prol, i32 255)
  %i.ex = trunc nuw i32 %i.ew to i8
  store i8 %i.ex, ptr %i.ep, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader
  %.sroa.518.031.2.unr = phi i64 [ %.sroa.518.031.2.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader ], [ %i.er, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol ]
  %i.ey = icmp eq i64 %.sroa.7.0.copyload.2, %.neg131
  br i1 %i.ey, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2
  %.sroa.518.031.2 = phi i64 [ %i.fk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2 ], [ %.sroa.518.031.2.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol.loopexit ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.2, i64 %.sroa.518.031.2 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.2, i64 %.sroa.518.031.2
  %i.fb = add nuw i64 %.sroa.518.031.2, 1         ; 2 uses
  %i.fc = load i32, ptr %i.fa, align 4, !noundef !4
  %i.fd = load i8, ptr %i.ez, align 1, !noundef !4
  %i.fe = zext i8 %i.fd to i32
  %i.ff = add i32 %i.fc, %i.fe
  %..i.2 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ff, i32 0)
  %i.fg = tail call i32 @llvm.umin.i32(i32 %..i.2, i32 255)
  %i.fh = trunc nuw i32 %i.fg to i8
  store i8 %i.fh, ptr %i.ez, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.2, i64 %i.fb ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.2, i64 %i.fb
  %i.fk = add nuw i64 %.sroa.518.031.2, 2         ; 2 uses
  %i.fl = load i32, ptr %i.fj, align 4, !noundef !4
  %i.fm = load i8, ptr %i.fi, align 1, !noundef !4
  %i.fn = zext i8 %i.fm to i32
  %i.fo = add i32 %i.fl, %i.fn
  %..i.2.1 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.fo, i32 0)
  %i.fp = tail call i32 @llvm.umin.i32(i32 %..i.2.1, i32 255)
  %i.fq = trunc nuw i32 %i.fp to i8
  store i8 %i.fq, ptr %i.fi, align 1
  %exitcond.2.not.1 = icmp eq i64 %i.fk, %.sroa.7.0.copyload.2
  br i1 %exitcond.2.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2, !llvm.loop !28

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2, %middle.block96, %bb.i
  %i.fr = add i64 %i.dm, %5                       ; 4 uses
  %i.fs = icmp ugt i64 %i.fr, %1
  br i1 %i.fs, label %bb.c, label %bb.j, !prof !5

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2
  %i.ft = sub nuw nsw i64 %1, %i.fr               ; 2 uses
  %i.fu = icmp samesign ugt i64 %i.ft, 3
  br i1 %i.fu, label %bb.k, label %bb.d, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 %i.fr ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.fx)
  %.sroa.015.0.copyload.3 = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.416.0.copyload.3 = load ptr, ptr %.sroa.416.0..sroa_idx, align 8 ; 7 uses
  %.sroa.518.0.copyload.3 = load i64, ptr %.sroa.518.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0.copyload.3 = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.fy = icmp ult i64 %.sroa.518.0.copyload.3, %.sroa.7.0.copyload.3
  br i1 %i.fy, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.3

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.3: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.copyload.3), "nonnull"(ptr %.sroa.416.0.copyload.3) ]
  %i.fz = sub nuw i64 %.sroa.7.0.copyload.3, %.sroa.518.0.copyload.3 ; 3 uses
  %min.iters.check108 = icmp ult i64 %i.fz, 8
  br i1 %min.iters.check108, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader, label %vector.memcheck99

vector.memcheck99:                                ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.3
  %scevgep100 = getelementptr i8, ptr %.sroa.015.0.copyload.3, i64 %.sroa.518.0.copyload.3
  %scevgep101 = getelementptr i8, ptr %.sroa.015.0.copyload.3, i64 %.sroa.7.0.copyload.3
  %i.ga = shl i64 %.sroa.518.0.copyload.3, 2
  %scevgep102 = getelementptr i8, ptr %.sroa.416.0.copyload.3, i64 %i.ga
  %i.gb = shl i64 %.sroa.7.0.copyload.3, 2
  %scevgep103 = getelementptr i8, ptr %.sroa.416.0.copyload.3, i64 %i.gb
  %bound0104 = icmp ult ptr %scevgep100, %scevgep103
  %bound1105 = icmp ult ptr %scevgep102, %scevgep101
  %found.conflict106 = and i1 %bound0104, %bound1105
  br i1 %found.conflict106, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck99
  %n.vec110 = and i64 %i.fz, -8                   ; 3 uses
  %i.gc = add i64 %.sroa.518.0.copyload.3, %n.vec110
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next117, %vector.body111 ] ; 2 uses
  %i.gd = add nuw i64 %.sroa.518.0.copyload.3, %index112 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.3, i64 %i.gd ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.3, i64 %i.gd ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load113 = load <4 x i32>, ptr %i.gf, align 4, !alias.scope !40
  %wide.load114 = load <4 x i32>, ptr %i.gg, align 4, !alias.scope !40
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  %wide.load115 = load <4 x i8>, ptr %i.ge, align 1, !alias.scope !41, !noalias !40
  %wide.load116 = load <4 x i8>, ptr %i.gh, align 1, !alias.scope !41, !noalias !40
  %i.gi = zext <4 x i8> %wide.load115 to <4 x i32>
  %i.gj = zext <4 x i8> %wide.load116 to <4 x i32>
  %i.gk = add <4 x i32> %wide.load113, %i.gi
  %i.gl = add <4 x i32> %wide.load114, %i.gj
  %i.gm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gk, <4 x i32> zeroinitializer)
  %i.gn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gl, <4 x i32> zeroinitializer)
  %i.go = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gm, <4 x i32> splat (i32 255))
  %i.gp = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gn, <4 x i32> splat (i32 255))
  %i.gq = trunc nuw <4 x i32> %i.go to <4 x i8>
  %i.gr = trunc nuw <4 x i32> %i.gp to <4 x i8>
  store <4 x i8> %i.gq, ptr %i.ge, align 1, !alias.scope !41, !noalias !40
  store <4 x i8> %i.gr, ptr %i.gh, align 1, !alias.scope !41, !noalias !40
  %index.next117 = add nuw i64 %index112, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.gs, label %middle.block118, label %vector.body111, !llvm.loop !32

middle.block118:                                  ; preds = %vector.body111
  %cmp.n119 = icmp eq i64 %i.fz, %n.vec110
  br i1 %cmp.n119, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader: ; preds = %vector.memcheck99, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.3, %middle.block118
  %.sroa.518.031.3.ph = phi i64 [ %.sroa.518.0.copyload.3, %vector.memcheck99 ], [ %.sroa.518.0.copyload.3, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.3 ], [ %i.gc, %middle.block118 ] ; 6 uses
  %i.gt = sub i64 %.sroa.7.0.copyload.3, %.sroa.518.031.3.ph
  %.neg132 = add i64 %.sroa.518.031.3.ph, 1
  %xtraiter128 = and i64 %i.gt, 1
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.3, i64 %.sroa.518.031.3.ph ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.3, i64 %.sroa.518.031.3.ph
  %i.gw = add nuw i64 %.sroa.518.031.3.ph, 1
  %i.gx = load i32, ptr %i.gv, align 4, !noundef !4
  %i.gy = load i8, ptr %i.gu, align 1, !noundef !4
  %i.gz = zext i8 %i.gy to i32
  %i.ha = add i32 %i.gx, %i.gz
  %..i.3.prol = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ha, i32 0)
  %i.hb = tail call i32 @llvm.umin.i32(i32 %..i.3.prol, i32 255)
  %i.hc = trunc nuw i32 %i.hb to i8
  store i8 %i.hc, ptr %i.gu, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader
  %.sroa.518.031.3.unr = phi i64 [ %.sroa.518.031.3.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader ], [ %i.gw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol ]
  %i.hd = icmp eq i64 %.sroa.7.0.copyload.3, %.neg132
  br i1 %i.hd, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3
  %.sroa.518.031.3 = phi i64 [ %i.hp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3 ], [ %.sroa.518.031.3.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol.loopexit ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.3, i64 %.sroa.518.031.3 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.3, i64 %.sroa.518.031.3
  %i.hg = add nuw i64 %.sroa.518.031.3, 1         ; 2 uses
  %i.hh = load i32, ptr %i.hf, align 4, !noundef !4
  %i.hi = load i8, ptr %i.he, align 1, !noundef !4
  %i.hj = zext i8 %i.hi to i32
  %i.hk = add i32 %i.hh, %i.hj
  %..i.3 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.hk, i32 0)
  %i.hl = tail call i32 @llvm.umin.i32(i32 %..i.3, i32 255)
  %i.hm = trunc nuw i32 %i.hl to i8
  store i8 %i.hm, ptr %i.he, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.3, i64 %i.hg ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.3, i64 %i.hg
  %i.hp = add nuw i64 %.sroa.518.031.3, 2         ; 2 uses
  %i.hq = load i32, ptr %i.ho, align 4, !noundef !4
  %i.hr = load i8, ptr %i.hn, align 1, !noundef !4
  %i.hs = zext i8 %i.hr to i32
  %i.ht = add i32 %i.hq, %i.hs
  %..i.3.1 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  %i.hu = tail call i32 @llvm.umin.i32(i32 %..i.3.1, i32 255)
  %i.hv = trunc nuw i32 %i.hu to i8
  store i8 %i.hv, ptr %i.hn, align 1
  %exitcond.3.not.1 = icmp eq i64 %i.hp, %.sroa.7.0.copyload.3
  br i1 %exitcond.3.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3, !llvm.loop !33

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.3: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3, %middle.block118, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsksn9slvsHfS_10image_webp3vp811edge_pixels(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(9) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 14) %3, i64 noundef range(i64 1, 14) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i64 %4, -1
  %i.b = mul i64 %i.a, %5
  %i.c = add i64 %i.b, %3                         ; 3 uses
  %i.d = add i64 %i.c, -1                         ; 7 uses
  %i.e = add i64 %i.c, 3                          ; 2 uses
  %i.f = icmp ult i64 %i.e, %2
  br i1 %i.f, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.c, 4                      ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %bb.c, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit, !prof !5

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.03.0.i = phi i64 [ %i.e, %bb.a ], [ %i.g, %bb.b ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %.sroa.03.0.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13, !noalias !45
  unreachable

_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.b
  %i.i = shl i64 %5, 2
  %i.j = add i64 %i.d, %i.i                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !noundef !4
  %i.n = mul i64 %5, 3
  %i.o = add i64 %i.d, %i.n                       ; 3 uses
  %i.p = icmp ult i64 %i.o, %2
  br i1 %i.p, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.r = load i8, ptr %i.q, align 1, !noundef !4
  %i.s = shl i64 %5, 1
  %i.t = add i64 %i.d, %i.s                       ; 3 uses
  %i.u = icmp ult i64 %i.t, %2
  br i1 %i.u, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = add i64 %i.d, %5                         ; 3 uses
  %i.w = icmp ult i64 %i.v, %2
  br i1 %i.w, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #13
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.y = load i8, ptr %i.x, align 1, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4
  store i8 %i.m, ptr %0, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.r, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.y, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ab, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = load <4 x i8>, ptr %i.z, align 1
  store <4 x i8> %i.ai, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ad, ptr %i.aj, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvNtCsksn9slvsHfS_10image_webp3vp811left_pixels(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 1, 14) %2, i64 noundef range(i64 1, 14) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
end_hunk_0
begin_hunk_1_@_RNvNtCsksn9slvsHfS_10image_webp3vp811predict_4x4:bb.a
  call void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.adi, i64 noundef %i.at, i64 noundef %i.bi, i64 noundef %2)
  %exitcond.not = icmp eq i64 %i.bf, 4
  br i1 %exitcond.not, label %.loopexit, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_hpred(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %5, 0
  br i1 %i.a, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #13, !noalias !113
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a
  %i.b = urem i64 %1, %5
  %i.c = sub nuw nsw i64 %1, %i.b                 ; 10 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit
  %i.e = add i64 %3, -1                           ; 4 uses
  %i.f = icmp ult i64 %i.e, %5
  %i.g = icmp eq i64 %3, %5
  %gepdiff = sub nuw nsw i64 %5, %3               ; 2 uses
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.h = icmp ugt i64 %3, %5
  br i1 %i.h, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split, !prof !5

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %.not.us.us = icmp eq i64 %4, 0
  br i1 %.not.us.us, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %.lr.ph.split.us.split.us
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 1, 0) %4, i64 %5) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.i, 1
  %i.l = icmp uge i64 %i.j, %i.c
  %or.cond.not.us.us = select i1 %i.k, i1 true, i1 %i.l
  %i.m = sub nuw nsw i64 %i.c, %i.j
  %.not.i.us.us = icmp ugt i64 %5, %i.m
  %or.cond = select i1 %or.cond.not.us.us, i1 true, i1 %.not.i.us.us, !prof !9
  br i1 %or.cond, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.thread, label %.split.us.split.us, !prof !9

bb.d:                                             ; preds = %.lr.ph.split.us.split.us
  %.not10.us.us = icmp ugt i64 %5, %i.c
  br i1 %.not10.us.us, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.thread, label %.split.us.split.us

.split.us.split.us:                               ; preds = %bb.c, %bb.d
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %5, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #13
  unreachable

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %i.g, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.thread, label %.lr.ph.split.us.split.split.preheader

.lr.ph.split.us.split.split.preheader:            ; preds = %.lr.ph.split.us.split
  %i.n = add i64 %2, -1                           ; 2 uses
  %.not.us.peel = icmp eq i64 %4, 0
  br i1 %.not.us.peel, label %bb.g, label %bb.e, !prof !6

bb.e:                                             ; preds = %.lr.ph.split.us.split.split.preheader
  %i.o = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 1, 0) %4, i64 %5) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 0         ; 3 uses
  %i.q = extractvalue { i64, i1 } %i.o, 1
  %i.r = icmp uge i64 %i.p, %i.c
  %or.cond.not.us.peel = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.not.us.peel, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.thread, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.s = sub nuw nsw i64 %i.c, %i.p               ; 2 uses
  %.not.i.us.peel = icmp ugt i64 %5, %i.s
  br i1 %.not.i.us.peel, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.us.peel

_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.us.peel: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  br label %.lr.ph.i.us.peel

bb.g:                                             ; preds = %.lr.ph.split.us.split.split.preheader
  %.not10.us.peel = icmp ugt i64 %5, %i.c
  br i1 %.not10.us.peel, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.thread, label %.lr.ph.i.us.peel

.lr.ph.i.us.peel:                                 ; preds = %bb.g, %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.us.peel
  %.sroa.413.0.pn.us.peel = phi ptr [ %i.t, %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.us.peel ], [ %0, %bb.g ] ; 4 uses
  %.sroa.11.0.pn.us.peel = phi i64 [ %i.s, %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.us.peel ], [ %i.c, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.413.0.pn.us.peel) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.413.0.pn.us.peel, i64 %i.e
  %i.v = load i8, ptr %i.u, align 1, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.413.0.pn.us.peel, i64 %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 %i.v, i64 %gepdiff, i1 false), !alias.scope !114, !noalias !115
  %i.x = icmp eq i64 %i.n, 0
  br i1 %i.x, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.thread, label %.lr.ph.split.us.split.split.peel.next

.lr.ph.split.us.split.split.peel.next:            ; preds = %.lr.ph.i.us.peel, %.lr.ph.i.us
  %.sroa.24.028.us = phi i64 [ %i.y, %.lr.ph.i.us ], [ %i.n, %.lr.ph.i.us.peel ]
  %.sroa.11.026.us.pn = phi i64 [ %.sroa.11.026.us, %.lr.ph.i.us ], [ %.sroa.11.0.pn.us.peel, %.lr.ph.i.us.peel ]
  %.sroa.413.025.us.pn = phi ptr [ %.sroa.413.025.us, %.lr.ph.i.us ], [ %.sroa.413.0.pn.us.peel, %.lr.ph.i.us.peel ]
  %.sroa.11.026.us = sub i64 %.sroa.11.026.us.pn, %5 ; 2 uses
  %.not10.us = icmp ugt i64 %5, %.sroa.11.026.us
  br i1 %.not10.us, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.thread, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us.split.split.peel.next
  %i.y = add i64 %.sroa.24.028.us, -1             ; 2 uses
  %.sroa.413.025.us = getelementptr i8, ptr %.sroa.413.025.us.pn, i64 %5 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.413.025.us) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.413.025.us, i64 %i.e
  %i.aa = load i8, ptr %i.z, align 1, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.413.025.us, i64 %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 %i.aa, i64 %gepdiff, i1 false), !alias.scope !114, !noalias !115
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.thread, label %.lr.ph.split.us.split.split.peel.next, !llvm.loop !112

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %.lr.ph.split
  %.not10 = icmp ugt i64 %5, %i.c
  br i1 %.not10, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit

bb.i:                                             ; preds = %.lr.ph.split
  %i.ad = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 1, 0) %4, i64 %5) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 0       ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ad, 1
  %i.ag = icmp uge i64 %i.ae, %i.c
  %or.cond.not = select i1 %i.af, i1 true, i1 %i.ag
  %i.ah = sub nuw nsw i64 %i.c, %i.ae
  %.not.i = icmp ugt i64 %5, %i.ah
  %or.cond62 = select i1 %or.cond.not, i1 true, i1 %.not.i, !prof !9
  br i1 %or.cond62, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit, !prof !9

_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit.thread: ; preds = %.lr.ph.i.us, %.lr.ph.split.us.split.split.peel.next, %bb.e, %bb.f, %bb.g, %.lr.ph.i.us.peel, %.lr.ph.split.us.split, %bb.d, %bb.h, %bb.c, %bb.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit
  ret void

_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_vpred(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = mul i64 %5, %4                           ; 6 uses
  %.not.i = icmp ugt i64 %i.b, %1
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13, !noalias !127
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 2 uses
  %i.d = sub nuw nsw i64 %1, %i.b                 ; 2 uses
  %i.e = icmp ugt i64 %3, %i.b
  br i1 %i.e, label %bb.e, label %bb.c, !prof !5

bb.c:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.g = icmp eq i64 %5, 0
  br i1 %i.g, label %bb.d, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13, !noalias !128
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.c
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit
  %i.i = urem i64 %i.d, %5
  %i.j = sub nuw nsw i64 %i.d, %i.i
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.f

bb.e:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %i.b, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.k = icmp eq i64 %i.l, 0
  br i1 %i.k, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.loopexit
  %.sroa.3.025 = phi ptr [ %i.c, %.lr.ph ], [ %i.m, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.loopexit ] ; 3 uses
  %.sroa.5.024 = phi i64 [ %i.j, %.lr.ph ], [ %i.n, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.loopexit ] ; 2 uses
  %.sroa.8.023 = phi i64 [ %2, %.lr.ph ], [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.loopexit ]
  %i.l = add i64 %.sroa.8.023, -1                 ; 2 uses
  %.not = icmp ugt i64 %5, %.sroa.5.024
  br i1 %.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.loopexit, %bb.f, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit
  ret void

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.025) ]
  %i.m = getelementptr i8, ptr %.sroa.3.025, i64 %5 ; 2 uses
  %i.n = sub nuw nsw i64 %.sroa.5.024, %5
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.3.025, i64 1
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.o, ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.f, ptr noundef nonnull readonly %i.c)
  %.sroa.014.0.copyload = load ptr, ptr %i.a, align 8 ; 9 uses
  %.sroa.416.0.copyload = load ptr, ptr %.sroa.416.0..sroa_idx, align 8 ; 9 uses
  %.sroa.517.0.copyload = load i64, ptr %.sroa.517.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %i.p = icmp ult i64 %.sroa.517.0.copyload, %.sroa.7.0.copyload
  br i1 %i.p, label %iter.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.loopexit

iter.check:                                       ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.014.0.copyload), "nonnull"(ptr %.sroa.416.0.copyload) ]
  %.sroa.416.0.copyload33 = ptrtoaddr ptr %.sroa.416.0.copyload to i64
  %.sroa.014.0.copyload32 = ptrtoaddr ptr %.sroa.014.0.copyload to i64
  %i.q = sub nuw i64 %.sroa.7.0.copyload, %.sroa.517.0.copyload ; 7 uses
  %min.iters.check = icmp ult i64 %i.q, 8
  %i.r = sub i64 %.sroa.416.0.copyload33, %.sroa.014.0.copyload32
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check34 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.q, 24
  %n.vec = and i64 %i.q, -32                      ; 4 uses
  %i.t = add i64 %.sroa.517.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = add nuw i64 %.sroa.517.0.copyload, %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.416.0.copyload, i64 %i.u ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <16 x i8>, ptr %i.w, align 1
  %wide.load35 = load <16 x i8>, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <16 x i8> %wide.load, ptr %i.v, align 1
  store <16 x i8> %wide.load35, ptr %i.y, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.q, -8                     ; 3 uses
  %i.aa = add i64 %.sroa.517.0.copyload, %n.vec36
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = add nuw i64 %.sroa.517.0.copyload, %index37 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.416.0.copyload, i64 %i.ab
  %wide.load38 = load <8 x i8>, ptr %i.ad, align 1
  store <8 x i8> %wide.load38, ptr %i.ac, align 1
  %index.next39 = add nuw i64 %index37, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next39, %n.vec36
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %i.q, %n.vec36
  br i1 %cmp.n40, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.517.022.ph = phi i64 [ %.sroa.517.0.copyload, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 4 uses
  %i.af = sub i64 %.sroa.7.0.copyload, %.sroa.517.022.ph
  %xtraiter = and i64 %i.af, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol
  %.sroa.517.022.prol = phi i64 [ %i.ai, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ], [ %.sroa.517.022.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 %.sroa.517.022.prol
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.416.0.copyload, i64 %.sroa.517.022.prol
  %i.ai = add nuw i64 %.sroa.517.022.prol, 1      ; 2 uses
  %i.aj = load i8, ptr %i.ah, align 1, !noundef !4
  store i8 %i.aj, ptr %i.ag, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol, !llvm.loop !125

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader
  %.sroa.517.022.unr = phi i64 [ %.sroa.517.022.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ], [ %i.ai, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ]
  %i.ak = sub i64 %.sroa.517.022.ph, %.sroa.7.0.copyload
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit
  %.sroa.517.022 = phi i64 [ %i.ba, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit ], [ %.sroa.517.022.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 %.sroa.517.022
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.416.0.copyload, i64 %.sroa.517.022
  %i.ao = add nuw i64 %.sroa.517.022, 1           ; 2 uses
  %i.ap = load i8, ptr %i.an, align 1, !noundef !4
  store i8 %i.ap, ptr %i.am, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.416.0.copyload, i64 %i.ao
  %i.as = add nuw i64 %.sroa.517.022, 2           ; 2 uses
  %i.at = load i8, ptr %i.ar, align 1, !noundef !4
  store i8 %i.at, ptr %i.aq, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.416.0.copyload, i64 %i.as
  %i.aw = add nuw i64 %.sroa.517.022, 3           ; 2 uses
  %i.ax = load i8, ptr %i.av, align 1, !noundef !4
  store i8 %i.ax, ptr %i.au, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.416.0.copyload, i64 %i.aw
  %i.ba = add nuw i64 %.sroa.517.022, 4           ; 2 uses
  %i.bb = load i8, ptr %i.az, align 1, !noundef !4
  store i8 %i.bb, ptr %i.ay, align 1
  %exitcond.not.3 = icmp eq i64 %i.ba, %.sroa.7.0.copyload
  br i1 %exitcond.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit, !llvm.loop !126
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 8
  %. = select i1 %i.a, i32 2, i32 3               ; 2 uses
  br i1 %5, label %.preheader31, label %.thread

.preheader31:                                     ; preds = %bb.a
  %.not42 = icmp eq i64 %2, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %.preheader31
  %.sroa.0.1.lcssa = phi i32 [ 0, %.preheader31 ], [ %i.al, %bb.h ] ; 2 uses
  %i.b = add nuw nsw i32 %., 1                    ; 2 uses
  br i1 %4, label %bb.b, label %bb.d

.thread:                                          ; preds = %bb.a
  br i1 %4, label %bb.b, label %.thread28

.lr.ph:                                           ; preds = %.preheader31, %bb.h
  %.sroa.0.138 = phi i32 [ %i.al, %bb.h ], [ 0, %.preheader31 ]
  %.sroa.010.037 = phi i64 [ %i.c, %bb.h ], [ 0, %.preheader31 ]
  %i.c = add nuw i64 %.sroa.010.037, 1            ; 3 uses
  %i.d = mul i64 %i.c, %3                         ; 3 uses
  %i.e = icmp ult i64 %i.d, %1
  br i1 %i.e, label %bb.h, label %bb.i

bb.b:                                             ; preds = %.thread, %._crit_edge
  %.sroa.0.026 = phi i32 [ 0, %.thread ], [ %.sroa.0.1.lcssa, %._crit_edge ]
  %.sroa.03.124 = phi i32 [ %., %.thread ], [ %i.b, %._crit_edge ]
  %i.f = icmp ult i64 %2, %1
  br i1 %i.f, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13, !noalias !138
  unreachable

_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = icmp samesign eq i64 %2, 0
  br i1 %i.h, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred0EB1J_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.preheader.preheader85, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %wide.load = load <4 x i8>, ptr %i.i, align 1
  %wide.load80 = load <4 x i8>, ptr %i.j, align 1
  %i.k = zext <4 x i8> %wide.load to <4 x i32>
  %i.l = zext <4 x i8> %wide.load80 to <4 x i32>
  %i.m = add <4 x i32> %vec.phi, %i.k             ; 2 uses
  %i.n = add <4 x i32> %vec.phi79, %i.l           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred0EB1J_.exit, label %.preheader.preheader85

.preheader.preheader85:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i32 [ 0, %.preheader.preheader ], [ %i.p, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader85, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.t, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader85 ] ; 2 uses
  %.sroa.02.0.i = phi i32 [ %i.s, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader85 ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.0.i
  %.val.i = load i8, ptr %i.q, align 1, !noundef !4
  %i.r = zext i8 %.val.i to i32
  %i.s = add i32 %.sroa.02.0.i, %i.r              ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.u = icmp eq i64 %i.t, %2
  br i1 %i.u, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred0EB1J_.exit, label %.preheader, !llvm.loop !133

end_hunk_1
begin_hunk_2_@_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred:bb.a
  %.val1.i.i = load ptr, ptr %i.s, align 8, !alias.scope !159, !noalias !158, !nonnull !4, !noundef !4 ; 6 uses
  %min.iters.check = icmp ult i64 %i.ae, 4
  %.val1.i.i44 = ptrtoaddr ptr %.val1.i.i to i64
  %.val.i.i43 = ptrtoaddr ptr %.val.i.i to i64
  %i.af = sub i64 %.val1.i.i44, %.val.i.i43
  %diff.check = icmp ugt i64 %i.af, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp ult i64 %i.ae, 16
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add i64 %index, %.val.i                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.ah
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !noalias !160
  %i.ak = zext <16 x i8> %wide.load to <16 x i32>
  %i.al = add nsw <16 x i32> %broadcast.splat, %i.ak
  %i.am = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.al, <16 x i32> zeroinitializer)
  %i.an = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.am, <16 x i32> splat (i32 255))
  %i.ao = trunc nuw <16 x i32> %i.an to <16 x i8>
  store <16 x i8> %i.ao, ptr %i.ai, align 1, !alias.scope !161, !noalias !160
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !162

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.ae, -4                    ; 3 uses
  %broadcast.splatinsert47 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat48 = shufflevector <4 x i32> %broadcast.splatinsert47, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = add i64 %index49, %.val.i               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.aq
  %wide.load50 = load <4 x i8>, ptr %i.as, align 1, !noalias !160
  %i.at = zext <4 x i8> %wide.load50 to <4 x i32>
  %i.au = add nsw <4 x i32> %broadcast.splat48, %i.at
  %i.av = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.au, <4 x i32> zeroinitializer)
  %i.aw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.av, <4 x i32> splat (i32 255))
  %i.ax = trunc nuw <4 x i32> %i.aw to <4 x i8>
  store <4 x i8> %i.ax, ptr %i.ar, align 1, !alias.scope !161, !noalias !160
  %index.next51 = add nuw i64 %index49, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !154

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %i.ae, %n.vec46
  br i1 %cmp.n52, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ] ; 4 uses
  %i.az = sub i64 %.val6.i, %.val.i
  %i.ba = xor i64 %.sroa.0.010.i.ph, -1
  %i.bb = add i64 %.val6.i, %i.ba
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bc = or disjoint i64 %.sroa.0.010.i.ph, 1
  %i.bd = add i64 %.sroa.0.010.i.ph, %.val.i      ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.bd
  %.val8.i.prol = load i8, ptr %i.bf, align 1, !noalias !160, !noundef !4
  %i.bg = zext i8 %.val8.i.prol to i32
  %i.bh = add nsw i32 %i.z, %i.bg
  %..i.i.i.i.prol = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.bh, i32 0)
  %i.bi = tail call i32 @llvm.umin.i32(i32 %..i.i.i.i.prol, i32 255)
  %i.bj = trunc nuw i32 %i.bi to i8
  store i8 %i.bj, ptr %i.be, align 1, !alias.scope !161, !noalias !160
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.010.i.unr = phi i64 [ %.sroa.0.010.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bc, %vec.epilog.scalar.ph.prol ]
  %i.bk = icmp eq i64 %i.bb, %.val.i
  br i1 %i.bk, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.010.i = phi i64 [ %.sroa.0.010.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.bs, %vec.epilog.scalar.ph ] ; 3 uses
  %i.bl = add i64 %.sroa.0.010.i, %.val.i         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.bl
  %.val8.i = load i8, ptr %i.bn, align 1, !noalias !160, !noundef !4
  %i.bo = zext i8 %.val8.i to i32
  %i.bp = add nsw i32 %i.z, %i.bo
  %..i.i.i.i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.bp, i32 0)
  %i.bq = tail call i32 @llvm.umin.i32(i32 %..i.i.i.i, i32 255)
  %i.br = trunc nuw i32 %i.bq to i8
  store i8 %i.br, ptr %i.bm, align 1, !alias.scope !161, !noalias !160
  %i.bs = add nuw i64 %.sroa.0.010.i, 2           ; 2 uses
  %.reass = add i64 %.sroa.0.010.i, %invariant.op ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.reass
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %.reass
  %.val8.i.1 = load i8, ptr %i.bu, align 1, !noalias !160, !noundef !4
  %i.bv = zext i8 %.val8.i.1 to i32
  %i.bw = add nsw i32 %i.z, %i.bv
  %..i.i.i.i.1 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.bw, i32 0)
  %i.bx = tail call i32 @llvm.umin.i32(i32 %..i.i.i.i.1, i32 255)
  %i.by = trunc nuw i32 %i.bx to i8
  store i8 %i.by, ptr %i.bt, align 1, !alias.scope !161, !noalias !160
  %exitcond.not.i.1 = icmp eq i64 %i.bs, %i.ae
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %vec.epilog.scalar.ph, !llvm.loop !155

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %exitcond.not = icmp eq i64 %i.t, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp3vp817set_chroma_border(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = icmp samesign ugt i64 %5, 8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 8, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  store i8 %i.d, ptr %0, align 1
  %i.e = icmp samesign ugt i64 %1, 8
  br i1 %i.e, label %.preheader, label %bb.f, !prof !6

.preheader:                                       ; preds = %bb.d
  %i.f = icmp samesign ugt i64 %5, 17
  br i1 %i.f, label %bb.k, label %bb.s

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = add nsw i64 %1, -1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 8, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #13
  unreachable

bb.g:                                             ; preds = %bb.r
  %i.h = sub nuw nsw i64 %3, %i.bx                ; 2 uses
  %i.i = icmp samesign ugt i64 %i.h, 7
  br i1 %i.i, label %bb.j, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bx, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #13
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 8, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #13
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 81
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, ptr noundef nonnull readonly %i.m)
  %.sroa.021.0.copyload = load ptr, ptr %i.a, align 8 ; 9 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.422.0.copyload = load ptr, ptr %.sroa.422.0..sroa_idx, align 8 ; 9 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.524.0.copyload = load i64, ptr %.sroa.524.0..sroa_idx, align 8 ; 7 uses
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.725.0.copyload = load i64, ptr %.sroa.725.0..sroa_idx, align 8 ; 5 uses
  %i.n = icmp ult i64 %.sroa.524.0.copyload, %.sroa.725.0.copyload
  br i1 %i.n, label %iter.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread

iter.check:                                       ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.0.copyload), "nonnull"(ptr %.sroa.422.0.copyload) ]
  %.sroa.422.0.copyload49 = ptrtoaddr ptr %.sroa.422.0.copyload to i64
  %.sroa.021.0.copyload48 = ptrtoaddr ptr %.sroa.021.0.copyload to i64
  %i.o = sub nuw i64 %.sroa.725.0.copyload, %.sroa.524.0.copyload ; 7 uses
  %min.iters.check = icmp ult i64 %i.o, 8
  %i.p = sub i64 %.sroa.422.0.copyload49, %.sroa.021.0.copyload48
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check50 = icmp ult i64 %i.o, 32
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.o, 24
  %n.vec = and i64 %i.o, -32                      ; 4 uses
  %i.r = add i64 %.sroa.524.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = add nuw i64 %.sroa.524.0.copyload, %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <16 x i8>, ptr %i.u, align 1
  %wide.load51 = load <16 x i8>, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %wide.load, ptr %i.t, align 1
  store <16 x i8> %wide.load51, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.o, -8                     ; 3 uses
  %i.y = add i64 %.sroa.524.0.copyload, %n.vec52
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %i.z = add nuw i64 %.sroa.524.0.copyload, %index53 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %i.z
  %wide.load54 = load <8 x i8>, ptr %i.ab, align 1
  store <8 x i8> %wide.load54, ptr %i.aa, align 1
  %index.next55 = add nuw i64 %index53, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next55, %n.vec52
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !164

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.o, %n.vec52
  br i1 %cmp.n56, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.524.039.ph = phi i64 [ %.sroa.524.0.copyload, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 4 uses
  %i.ad = sub i64 %.sroa.725.0.copyload, %.sroa.524.039.ph
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol
  %.sroa.524.039.prol = phi i64 [ %i.ag, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ], [ %.sroa.524.039.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %.sroa.524.039.prol
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.sroa.524.039.prol
  %i.ag = add nuw i64 %.sroa.524.039.prol, 1      ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1, !noundef !4
  store i8 %i.ah, ptr %i.ae, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol, !llvm.loop !165

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader
  %.sroa.524.039.unr = phi i64 [ %.sroa.524.039.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ], [ %i.ag, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ]
  %i.ai = sub i64 %.sroa.524.039.ph, %.sroa.725.0.copyload
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit
  %.sroa.524.039 = phi i64 [ %i.ay, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit ], [ %.sroa.524.039.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %.sroa.524.039
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.sroa.524.039
  %i.am = add nuw i64 %.sroa.524.039, 1           ; 2 uses
  %i.an = load i8, ptr %i.al, align 1, !noundef !4
  store i8 %i.an, ptr %i.ak, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %i.am
  %i.aq = add nuw i64 %.sroa.524.039, 2           ; 2 uses
  %i.ar = load i8, ptr %i.ap, align 1, !noundef !4
  store i8 %i.ar, ptr %i.ao, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %i.aq
  %i.au = add nuw i64 %.sroa.524.039, 3           ; 2 uses
  %i.av = load i8, ptr %i.at, align 1, !noundef !4
  store i8 %i.av, ptr %i.as, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %i.au
  %i.ay = add nuw i64 %.sroa.524.039, 4           ; 2 uses
  %i.az = load i8, ptr %i.ax, align 1, !noundef !4
  store i8 %i.az, ptr %i.aw, align 1
  %exitcond.not.3 = icmp eq i64 %i.ay, %.sroa.725.0.copyload
  br i1 %exitcond.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit, !llvm.loop !166

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit, %middle.block, %vec.epilog.middle.block, %bb.j
  ret void

bb.k:                                             ; preds = %.preheader
  %.sroa.0.0.ptr35 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !4
  store i8 %i.bb, ptr %.sroa.0.0.ptr35, align 1
  %i.bc = icmp samesign ugt i64 %5, 26
  br i1 %i.bc, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.be = load i8, ptr %i.bd, align 1, !noundef !4
  store i8 %i.be, ptr %.sroa.0.0.ptr, align 1
  %i.bf = icmp samesign ugt i64 %5, 35
  br i1 %i.bf, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 35
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !4
  store i8 %i.bh, ptr %.sroa.0.0.ptr.1, align 1
  %i.bi = icmp samesign ugt i64 %5, 44
  br i1 %i.bi, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !4
  store i8 %i.bk, ptr %.sroa.0.0.ptr.2, align 1
  %i.bl = icmp samesign ugt i64 %5, 53
  br i1 %i.bl, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 53
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !4
  store i8 %i.bn, ptr %.sroa.0.0.ptr.3, align 1
  %i.bo = icmp samesign ugt i64 %5, 62
  br i1 %i.bo, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 62
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !4
  store i8 %i.bq, ptr %.sroa.0.0.ptr.4, align 1
  %i.br = icmp samesign ugt i64 %5, 71
  br i1 %i.br, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 71
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !4
  store i8 %i.bt, ptr %.sroa.0.0.ptr.5, align 1
  %i.bu = icmp samesign ugt i64 %5, 80
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !4
  store i8 %i.bw, ptr %.sroa.0.0.ptr.6, align 1
  %i.bx = shl i64 %6, 3                           ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %3
  br i1 %i.by, label %bb.h, label %bb.g, !prof !5

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.preheader
  %.lcssa = phi i64 [ 17, %.preheader ], [ 26, %bb.k ], [ 35, %bb.l ], [ 44, %bb.m ], [ 53, %bb.n ], [ 62, %bb.o ], [ 71, %bb.p ], [ 80, %bb.q ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp3vp818create_border_luma(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([357 x i8]) align 1 captures(none) dereferenceable(357) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef range(i64 0, -9223372036854775808) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [357 x i8], align 1               ; 41 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(357) %i.d, i8 0, i64 357, i1 false)
  %.ptr44 = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.e = icmp eq i64 %2, 0                        ; 4 uses
  br i1 %i.e, label %.preheader82.preheader, label %bb.b

.preheader82.preheader:                           ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.ptr44, i8 127, i64 20, i1 false)
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.thread

bb.b:                                             ; preds = %bb.a
  %.ptr43 = getelementptr inbounds nuw i8, ptr %i.d, i64 17 ; 3 uses
  %i.f = shl i64 %1, 4                            ; 5 uses
  %i.g = icmp ugt i64 %i.f, %5
  br i1 %i.g, label %bb.d, label %bb.c, !prof !5

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51, %middle.block147, %vec.epilog.middle.block160, %.preheader83.split, %.preheader82.preheader, %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.i = load i8, ptr %i.h, align 1, !noundef !4  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 101
  store i8 %i.i, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 185
  store i8 %i.i, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 269
  store i8 %i.i, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.n = load i8, ptr %i.m, align 1, !noundef !4  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 102
  store i8 %i.n, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 186
  store i8 %i.n, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 270
  store i8 %i.n, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  %i.s = load i8, ptr %i.r, align 1, !noundef !4  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 103
  store i8 %i.s, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 187
  store i8 %i.s, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 271
  store i8 %i.s, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.x = load i8, ptr %i.w, align 1, !noundef !4  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i8 %i.x, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 188
  store i8 %i.x, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store i8 %i.x, ptr %i.aa, align 1
  %i.ab = icmp eq i64 %1, 0
  br i1 %i.ab, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread.thread, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %i.f
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 2 uses
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %.ptr44, ptr noundef nonnull %.ptr43, ptr noundef nonnull readonly %i.ac, ptr noundef nonnull readonly %i.ad)
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8 ; 9 uses
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.455.0.copyload = load ptr, ptr %.sroa.455.0..sroa_idx, align 8 ; 9 uses
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.556.0.copyload = load i64, ptr %.sroa.556.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %i.ae = icmp ult i64 %.sroa.556.0.copyload, %.sroa.7.0.copyload
  br i1 %i.ae, label %iter.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread

iter.check:                                       ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.455.0.copyload) ]
  %.sroa.455.0.copyload124 = ptrtoaddr ptr %.sroa.455.0.copyload to i64
  %.sroa.0.0.copyload123 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %i.af = sub nuw i64 %.sroa.7.0.copyload, %.sroa.556.0.copyload ; 7 uses
  %min.iters.check = icmp ult i64 %i.af, 8
  %i.ag = sub i64 %.sroa.455.0.copyload124, %.sroa.0.0.copyload123
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check125 = icmp ult i64 %i.af, 32
  br i1 %min.iters.check125, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.af, 24
  %n.vec = and i64 %i.af, -32                     ; 4 uses
  %i.ai = add i64 %.sroa.556.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add nuw i64 %.sroa.556.0.copyload, %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <16 x i8>, ptr %i.al, align 1
  %wide.load126 = load <16 x i8>, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <16 x i8> %wide.load, ptr %i.ak, align 1
  store <16 x i8> %wide.load126, ptr %i.an, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec127 = and i64 %i.af, -8                   ; 3 uses
  %i.ap = add i64 %.sroa.556.0.copyload, %n.vec127
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index128 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next130, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = add nuw i64 %.sroa.556.0.copyload, %index128 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload, i64 %i.aq
  %wide.load129 = load <8 x i8>, ptr %i.as, align 1
  store <8 x i8> %wide.load129, ptr %i.ar, align 1
  %index.next130 = add nuw i64 %index128, 8       ; 2 uses
  %i.at = icmp eq i64 %index.next130, %n.vec127
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !168

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n131 = icmp eq i64 %i.af, %n.vec127
  br i1 %cmp.n131, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.556.087.ph = phi i64 [ %.sroa.556.0.copyload, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ] ; 4 uses
  %i.au = sub i64 %.sroa.7.0.copyload, %.sroa.556.087.ph
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol
  %.sroa.556.087.prol = phi i64 [ %i.ax, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ], [ %.sroa.556.087.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.556.087.prol
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload, i64 %.sroa.556.087.prol
  %i.ax = add nuw i64 %.sroa.556.087.prol, 1      ; 2 uses
  %i.ay = load i8, ptr %i.aw, align 1, !noundef !4
  store i8 %i.ay, ptr %i.av, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol, !llvm.loop !169

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader
  %.sroa.556.087.unr = phi i64 [ %.sroa.556.087.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ], [ %i.ax, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ]
  %i.az = sub i64 %.sroa.556.087.ph, %.sroa.7.0.copyload
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %5, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #13
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit
  %.sroa.556.087 = phi i64 [ %i.bp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit ], [ %.sroa.556.087.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit ] ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.556.087
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload, i64 %.sroa.556.087
  %i.bd = add nuw i64 %.sroa.556.087, 1           ; 2 uses
  %i.be = load i8, ptr %i.bc, align 1, !noundef !4
  store i8 %i.be, ptr %i.bb, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload, i64 %i.bd
  %i.bh = add nuw i64 %.sroa.556.087, 2           ; 2 uses
  %i.bi = load i8, ptr %i.bg, align 1, !noundef !4
  store i8 %i.bi, ptr %i.bf, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload, i64 %i.bh
  %i.bl = add nuw i64 %.sroa.556.087, 3           ; 2 uses
  %i.bm = load i8, ptr %i.bk, align 1, !noundef !4
  store i8 %i.bm, ptr %i.bj, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload, i64 %i.bl
  %i.bp = add nuw i64 %.sroa.556.087, 4           ; 2 uses
  %i.bq = load i8, ptr %i.bo, align 1, !noundef !4
  store i8 %i.bq, ptr %i.bn, align 1
  %exitcond.not.3 = icmp eq i64 %i.bp, %.sroa.7.0.copyload
  br i1 %exitcond.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit, !llvm.loop !170

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.br = add i64 %3, -1
  %i.bs = icmp eq i64 %1, %i.br
  br i1 %i.bs, label %.preheader83, label %bb.e

.preheader83:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread
  %i.bt = or disjoint i64 %i.f, 15                ; 3 uses
  %i.bu = icmp samesign ult i64 %i.bt, %5
  br i1 %i.bu, label %.preheader83.split, label %bb.h

.preheader83.split:                               ; preds = %.preheader83
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %.ptr43, i8 %i.bw, i64 4, i1 false)
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.thread

bb.e:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread
  %i.bx = add nuw i64 %i.f, 16                    ; 3 uses
  %i.by = icmp ugt i64 %i.bx, %5
  br i1 %i.by, label %bb.g, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %i.bx
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.ptr43, ptr noundef nonnull %i.bz, ptr noundef nonnull readonly %i.ca, ptr noundef nonnull readonly %i.ad)
  %.sroa.057.0.copyload = load ptr, ptr %i.b, align 8 ; 9 uses
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.459.0.copyload = load ptr, ptr %.sroa.459.0..sroa_idx, align 8 ; 9 uses
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.561.0.copyload = load i64, ptr %.sroa.561.0..sroa_idx, align 8 ; 7 uses
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.762.0.copyload = load i64, ptr %.sroa.762.0..sroa_idx, align 8 ; 5 uses
  %i.cb = icmp ult i64 %.sroa.561.0.copyload, %.sroa.762.0.copyload
  br i1 %i.cb, label %iter.check150, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.thread

iter.check150:                                    ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.057.0.copyload), "nonnull"(ptr %.sroa.459.0.copyload) ]
  %.sroa.459.0.copyload135 = ptrtoaddr ptr %.sroa.459.0.copyload to i64
  %.sroa.057.0.copyload134 = ptrtoaddr ptr %.sroa.057.0.copyload to i64
  %i.cc = sub nuw i64 %.sroa.762.0.copyload, %.sroa.561.0.copyload ; 7 uses
  %min.iters.check137 = icmp ult i64 %i.cc, 8
  %i.cd = sub i64 %.sroa.459.0.copyload135, %.sroa.057.0.copyload134
  %diff.check136 = icmp ugt i64 %i.cd, -32
  %or.cond163 = select i1 %min.iters.check137, i1 true, i1 %diff.check136
  br i1 %or.cond163, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.preheader, label %vector.main.loop.iter.check138

vector.main.loop.iter.check138:                   ; preds = %iter.check150
  %min.iters.check139 = icmp ult i64 %i.cc, 32
  br i1 %min.iters.check139, label %vec.epilog.ph154, label %vector.ph140

vector.ph140:                                     ; preds = %vector.main.loop.iter.check138
  %i.ce = and i64 %i.cc, 24
  %n.vec141 = and i64 %i.cc, -32                  ; 4 uses
  %i.cf = add i64 %.sroa.561.0.copyload, %n.vec141
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next146, %vector.body142 ] ; 2 uses
  %i.cg = add nuw i64 %.sroa.561.0.copyload, %index143 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.057.0.copyload, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.459.0.copyload, i64 %i.cg ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load144 = load <16 x i8>, ptr %i.ci, align 1
  %wide.load145 = load <16 x i8>, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <16 x i8> %wide.load144, ptr %i.ch, align 1
  store <16 x i8> %wide.load145, ptr %i.ck, align 1
  %index.next146 = add nuw i64 %index143, 32      ; 2 uses
  %i.cl = icmp eq i64 %index.next146, %n.vec141
  br i1 %i.cl, label %middle.block147, label %vector.body142, !llvm.loop !171

middle.block147:                                  ; preds = %vector.body142
  %cmp.n148 = icmp eq i64 %i.cc, %n.vec141
  br i1 %cmp.n148, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.thread, label %vec.epilog.iter.check152

vec.epilog.iter.check152:                         ; preds = %middle.block147
  %min.epilog.iters.check153 = icmp eq i64 %i.ce, 0
  br i1 %min.epilog.iters.check153, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.preheader, label %vec.epilog.ph154, !prof !12

vec.epilog.ph154:                                 ; preds = %vector.main.loop.iter.check138, %vec.epilog.iter.check152
  %vec.epilog.resume.val149 = phi i64 [ %n.vec141, %vec.epilog.iter.check152 ], [ 0, %vector.main.loop.iter.check138 ]
  %n.vec155 = and i64 %i.cc, -8                   ; 3 uses
  %i.cm = add i64 %.sroa.561.0.copyload, %n.vec155
  br label %vec.epilog.vector.body156

vec.epilog.vector.body156:                        ; preds = %vec.epilog.vector.body156, %vec.epilog.ph154
  %index157 = phi i64 [ %vec.epilog.resume.val149, %vec.epilog.ph154 ], [ %index.next159, %vec.epilog.vector.body156 ] ; 2 uses
  %i.cn = add nuw i64 %.sroa.561.0.copyload, %index157 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.057.0.copyload, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.459.0.copyload, i64 %i.cn
  %wide.load158 = load <8 x i8>, ptr %i.cp, align 1
  store <8 x i8> %wide.load158, ptr %i.co, align 1
  %index.next159 = add nuw i64 %index157, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next159, %n.vec155
  br i1 %i.cq, label %vec.epilog.middle.block160, label %vec.epilog.vector.body156, !llvm.loop !172

vec.epilog.middle.block160:                       ; preds = %vec.epilog.vector.body156
  %cmp.n161 = icmp eq i64 %i.cc, %n.vec155
  br i1 %cmp.n161, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.preheader: ; preds = %iter.check150, %vec.epilog.iter.check152, %vec.epilog.middle.block160
  %.sroa.561.088.ph = phi i64 [ %.sroa.561.0.copyload, %iter.check150 ], [ %i.cf, %vec.epilog.iter.check152 ], [ %i.cm, %vec.epilog.middle.block160 ] ; 4 uses
  %i.cr = sub i64 %.sroa.762.0.copyload, %.sroa.561.088.ph
  %xtraiter165 = and i64 %i.cr, 3                 ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol
  %.sroa.561.088.prol = phi i64 [ %i.cu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol ], [ %.sroa.561.088.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.preheader ] ; 3 uses
  %prol.iter167 = phi i64 [ %prol.iter167.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.preheader ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.057.0.copyload, i64 %.sroa.561.088.prol
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.459.0.copyload, i64 %.sroa.561.088.prol
  %i.cu = add nuw i64 %.sroa.561.088.prol, 1      ; 2 uses
  %i.cv = load i8, ptr %i.ct, align 1, !noundef !4
  store i8 %i.cv, ptr %i.cs, align 1
  %prol.iter167.next = add i64 %prol.iter167, 1   ; 2 uses
  %prol.iter167.cmp.not = icmp eq i64 %prol.iter167.next, %xtraiter165
  br i1 %prol.iter167.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol, !llvm.loop !173

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.preheader
  %.sroa.561.088.unr = phi i64 [ %.sroa.561.088.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.preheader ], [ %i.cu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol ]
  %i.cw = sub i64 %.sroa.561.088.ph, %.sroa.762.0.copyload
  %i.cx = icmp ugt i64 %i.cw, -4
  br i1 %i.cx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bx, i64 noundef %5, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #13
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51
  %.sroa.561.088 = phi i64 [ %i.dm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51 ], [ %.sroa.561.088.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.prol.loopexit ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.057.0.copyload, i64 %.sroa.561.088
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.459.0.copyload, i64 %.sroa.561.088
  %i.da = add nuw i64 %.sroa.561.088, 1           ; 2 uses
  %i.db = load i8, ptr %i.cz, align 1, !noundef !4
  store i8 %i.db, ptr %i.cy, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.057.0.copyload, i64 %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.459.0.copyload, i64 %i.da
  %i.de = add nuw i64 %.sroa.561.088, 2           ; 2 uses
  %i.df = load i8, ptr %i.dd, align 1, !noundef !4
  store i8 %i.df, ptr %i.dc, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.057.0.copyload, i64 %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.459.0.copyload, i64 %i.de
  %i.di = add nuw i64 %.sroa.561.088, 3           ; 2 uses
  %i.dj = load i8, ptr %i.dh, align 1, !noundef !4
  store i8 %i.dj, ptr %i.dg, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.057.0.copyload, i64 %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.459.0.copyload, i64 %i.di
  %i.dm = add nuw i64 %.sroa.561.088, 4           ; 2 uses
  %i.dn = load i8, ptr %i.dl, align 1, !noundef !4
  store i8 %i.dn, ptr %i.dk, align 1
  %exitcond102.not.3 = icmp eq i64 %i.dm, %.sroa.762.0.copyload
  br i1 %exitcond102.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51, !llvm.loop !174

bb.h:                                             ; preds = %.preheader83
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bt, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #13
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.thread
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  store i8 -127, ptr %i.do, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 42
  store i8 -127, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 63
  store i8 -127, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  store i8 -127, ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 105
  store i8 -127, ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 126
  store i8 -127, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 147
  store i8 -127, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i8 -127, ptr %i.dv, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 189
  store i8 -127, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 210
  store i8 -127, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 231
  store i8 -127, ptr %i.dy, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 252
  store i8 -127, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 273
  store i8 -127, ptr %i.ea, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 294
  store i8 -127, ptr %i.eb, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 315
  store i8 -127, ptr %i.ec, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  store i8 -127, ptr %i.ed, align 1
  %.mux120 = select i1 %i.e, i8 127, i8 -127
  br label %bb.m

bb.i:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit51.thread
  %i.ee = icmp eq i64 %7, 0
  br i1 %i.ee, label %bb.k, label %bb.j, !prof !5

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread: ; preds = %bb.n, %bb.j
  %.mux = select i1 %i.e, i8 127, i8 -127
  br i1 %i.e, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.eg = getelementptr i8, ptr %6, i64 %7
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, i64 noundef 0, i64 noundef 16, ptr noundef nonnull readonly %i.ef, ptr noundef nonnull readonly %i.eg)
  %.sroa.063.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.465.0.copyload = load i64, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.567.0.copyload = load i64, ptr %.sroa.567.0..sroa_idx, align 8 ; 2 uses
  %.sroa.768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.768.0.copyload = load i64, ptr %.sroa.768.0..sroa_idx, align 8 ; 2 uses
  %i.eh = icmp ult i64 %.sroa.567.0.copyload, %.sroa.768.0.copyload
  br i1 %i.eh, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph: ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.063.0.copyload) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #13
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph, %bb.n
  %.sroa.567.094 = phi i64 [ %.sroa.567.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph ], [ %i.eo, %bb.n ] ; 3 uses
  %i.ei = add nuw i64 %.sroa.567.094, %.sroa.465.0.copyload
  %i.ej = mul i64 %i.ei, 21
  %i.ek = add i64 %i.ej, 21                       ; 3 uses
  %i.el = icmp ult i64 %i.ek, 357
  br i1 %i.el, label %bb.n, label %bb.o

bb.l:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread
  %i.em = load i8, ptr %6, align 1, !noundef !4
  br label %bb.m

bb.m:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread.thread, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread, %bb.l
  %.sroa.019.0 = phi i8 [ %i.em, %bb.l ], [ %.mux, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread ], [ %.mux120, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread.thread ]
  store i8 %.sroa.019.0, ptr %i.d, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(357) %0, ptr noundef nonnull align 1 dereferenceable(357) %i.d, i64 357, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.063.0.copyload, i64 %.sroa.567.094
  %i.eo = add i64 %.sroa.567.094, 1               ; 2 uses
  %i.ep = load i8, ptr %i.en, align 1, !noundef !4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ek
  store i8 %i.ep, ptr %i.eq, align 1
  %exitcond107.not = icmp eq i64 %i.eo, %.sroa.768.0.copyload
  br i1 %exitcond107.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit

bb.o:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ek, i64 noundef 357, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp3vp820create_border_chroma(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([81 x i8]) align 1 captures(none) dereferenceable(81) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [81 x i8], align 1                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(81) %i.c, i8 0, i64 81, i1 false)
  %.ptr21 = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.d = icmp eq i64 %2, 0                        ; 4 uses
  br i1 %i.d, label %.preheader44.preheader, label %bb.b

.preheader44.preheader:                           ; preds = %bb.a
  store i64 9187201950435737471, ptr %.ptr21, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = shl i64 %1, 3                            ; 3 uses
  %i.f = icmp ugt i64 %i.e, %4
  br i1 %i.f, label %bb.d, label %bb.c, !prof !5

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit, %middle.block, %vec.epilog.middle.block, %.preheader44.preheader, %bb.c
  %i.g = icmp eq i64 %1, 0
  br i1 %i.g, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread.thread, label %bb.e

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 -127, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  store i8 -127, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 27
  store i8 -127, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i8 -127, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 45
  store i8 -127, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 54
  store i8 -127, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 63
  store i8 -127, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i8 -127, ptr %i.o, align 1
  %.mux63 = select i1 %i.d, i8 127, i8 -127
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %i.e
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %4
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.ptr21, ptr noundef nonnull %i.p, ptr noundef nonnull readonly %i.q, ptr noundef nonnull readonly %i.r)
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 9 uses
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.427.0.copyload = load ptr, ptr %.sroa.427.0..sroa_idx, align 8 ; 9 uses
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.528.0.copyload = load i64, ptr %.sroa.528.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %i.s = icmp ult i64 %.sroa.528.0.copyload, %.sroa.7.0.copyload
  br i1 %i.s, label %iter.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread

iter.check:                                       ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.427.0.copyload) ]
  %.sroa.427.0.copyload67 = ptrtoaddr ptr %.sroa.427.0.copyload to i64
  %.sroa.0.0.copyload66 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %i.t = sub nuw i64 %.sroa.7.0.copyload, %.sroa.528.0.copyload ; 7 uses
  %min.iters.check = icmp ult i64 %i.t, 8
  %i.u = sub i64 %.sroa.427.0.copyload67, %.sroa.0.0.copyload66
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.t, 32
  br i1 %min.iters.check68, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.t, 24
  %n.vec = and i64 %i.t, -32                      ; 4 uses
  %i.w = add i64 %.sroa.528.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = add nuw i64 %.sroa.528.0.copyload, %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.427.0.copyload, i64 %i.x ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <16 x i8>, ptr %i.z, align 1
  %wide.load69 = load <16 x i8>, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <16 x i8> %wide.load, ptr %i.y, align 1
  store <16 x i8> %wide.load69, ptr %i.ab, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.t, -8                     ; 3 uses
  %i.ad = add i64 %.sroa.528.0.copyload, %n.vec70
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 2 uses
  %i.ae = add nuw i64 %.sroa.528.0.copyload, %index71 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.427.0.copyload, i64 %i.ae
  %wide.load72 = load <8 x i8>, ptr %i.ag, align 1
  store <8 x i8> %wide.load72, ptr %i.af, align 1
  %index.next73 = add nuw i64 %index71, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next73, %n.vec70
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !176

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n74 = icmp eq i64 %i.t, %n.vec70
  br i1 %cmp.n74, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.528.046.ph = phi i64 [ %.sroa.528.0.copyload, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ] ; 4 uses
  %i.ai = sub i64 %.sroa.7.0.copyload, %.sroa.528.046.ph
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol
  %.sroa.528.046.prol = phi i64 [ %i.al, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ], [ %.sroa.528.046.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.528.046.prol
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.427.0.copyload, i64 %.sroa.528.046.prol
  %i.al = add nuw i64 %.sroa.528.046.prol, 1      ; 2 uses
  %i.am = load i8, ptr %i.ak, align 1, !noundef !4
  store i8 %i.am, ptr %i.aj, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol, !llvm.loop !177

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader
  %.sroa.528.046.unr = phi i64 [ %.sroa.528.046.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ], [ %i.al, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ]
  %i.an = sub i64 %.sroa.528.046.ph, %.sroa.7.0.copyload
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #13
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit
  %.sroa.528.046 = phi i64 [ %i.bd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit ], [ %.sroa.528.046.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.528.046
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.427.0.copyload, i64 %.sroa.528.046
  %i.ar = add nuw i64 %.sroa.528.046, 1           ; 2 uses
  %i.as = load i8, ptr %i.aq, align 1, !noundef !4
  store i8 %i.as, ptr %i.ap, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.427.0.copyload, i64 %i.ar
  %i.av = add nuw i64 %.sroa.528.046, 2           ; 2 uses
  %i.aw = load i8, ptr %i.au, align 1, !noundef !4
  store i8 %i.aw, ptr %i.at, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.427.0.copyload, i64 %i.av
  %i.az = add nuw i64 %.sroa.528.046, 3           ; 2 uses
  %i.ba = load i8, ptr %i.ay, align 1, !noundef !4
  store i8 %i.ba, ptr %i.ax, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.427.0.copyload, i64 %i.az
  %i.bd = add nuw i64 %.sroa.528.046, 4           ; 2 uses
  %i.be = load i8, ptr %i.bc, align 1, !noundef !4
  store i8 %i.be, ptr %i.bb, align 1
  %exitcond.not.3 = icmp eq i64 %i.bd, %.sroa.7.0.copyload
  br i1 %exitcond.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit, !llvm.loop !178

bb.e:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread
  %i.bf = icmp eq i64 %6, 0
  br i1 %i.bf, label %bb.g, label %bb.f, !prof !5

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread: ; preds = %bb.j, %bb.f
  %.mux = select i1 %i.d, i8 127, i8 -127
  br i1 %i.d, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.bh = getelementptr i8, ptr %5, i64 %6
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, i64 noundef 0, i64 noundef 8, ptr noundef nonnull readonly %i.bg, ptr noundef nonnull readonly %i.bh)
  %.sroa.029.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.431.0.copyload = load i64, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.533.0.copyload = load i64, ptr %.sroa.533.0..sroa_idx, align 8 ; 2 uses
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.734.0.copyload = load i64, ptr %.sroa.734.0..sroa_idx, align 8 ; 2 uses
  %i.bi = icmp ult i64 %.sroa.533.0.copyload, %.sroa.734.0.copyload
  br i1 %i.bi, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.029.0.copyload) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #13
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph, %bb.j
  %.sroa.533.048 = phi i64 [ %.sroa.533.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph ], [ %i.bp, %bb.j ] ; 3 uses
  %i.bj = add nuw i64 %.sroa.533.048, %.sroa.431.0.copyload
  %i.bk = mul i64 %i.bj, 9
  %i.bl = add i64 %i.bk, 9                        ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 81
  br i1 %i.bm, label %bb.j, label %bb.k

bb.h:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread
  %i.bn = load i8, ptr %5, align 1, !noundef !4
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread.thread, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread, %bb.h
  %.sroa.010.0 = phi i8 [ %i.bn, %bb.h ], [ %.mux, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread ], [ %.mux63, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread.thread ]
  store i8 %.sroa.010.0, ptr %i.c, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(81) %0, ptr noundef nonnull align 1 dereferenceable(81) %i.c, i64 81, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.029.0.copyload, i64 %.sroa.533.048
  %i.bp = add i64 %.sroa.533.048, 1               ; 2 uses
  %i.bq = load i8, ptr %i.bo, align 1, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bl
  store i8 %i.bq, ptr %i.br, align 1
  %exitcond54.not = icmp eq i64 %i.bp, %.sroa.734.0.copyload
  br i1 %exitcond54.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit

bb.k:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterhEEINtB5_7ZipImplBW_B1o_E4nextCsksn9slvsHfS_10image_webp.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef 81, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp3vp820init_top_macroblocks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [30 x i8], align 1                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.8 = alloca [9 x i8], align 1             ; 4 uses
  %i.d = lshr i64 %1, 4
  %i.e = and i64 %1, 15
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @_RNvXsW_NtCsj6eKBz9Db1c_4core5arrayAhj9_NtNtB7_7default7Default7defaultCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([9 x i8]) align 1 captures(none) dereferenceable(9) %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846977) %.sroa.0.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 30), !noalias !182
  %i.g = load i64, ptr %i.a, align 8, !range !183, !noalias !182, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !184, !noalias !182, !noundef !4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
end_hunk_2
