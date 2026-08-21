Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.1?download=true
inline.NumInlined: 150
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [21 x i8] c"dest is out of bounds", align 1
@1 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/miniz_oxide-0.8.9/src/inflate/core.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\86\02\00\00\1D\00\00\00" }>, align 8
@3 = private unnamed_addr constant [6 x i8] c"\01\01\01\00\04\00", align 2
@4 = private unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00<\06\00\00-\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\84\06\00\00 \00\00\00" }>, align 8
@7 = private unnamed_addr constant [60 x i8] c"\01\00\02\00\03\00\04\00\05\00\07\00\09\00\0D\00\11\00\19\00!\001\00A\00a\00\81\00\C1\00\01\01\81\01\01\02\01\03\01\04\01\06\01\08\01\0C\01\10\01\18\01 \010\01@\01`", align 2
@8 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@9 = private unnamed_addr constant [116 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/miniz_oxide-0.8.9/src/inflate/output_buffer.rs\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"s\00\00\00\00\00\00\00 \00\00\00\09\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"s\00\00\00\00\00\00\00*\00\00\008\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"s\00\00\00\00\00\00\00*\00\00\00\13\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00_\06\00\00\1A\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00k\06\00\00\1A\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00k\06\00\006\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00^\06\00\00(\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00s\07\00\00>\00\00\00" }>, align 8
@18 = private unnamed_addr constant [32 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\02\02\02\02\03\03\03\03\04\04\04\04\05\05\05\05\00\00\00\00", align 1
@19 = private unnamed_addr constant [64 x i8] c"\03\00\04\00\05\00\06\00\07\00\08\00\09\00\0A\00\0B\00\0D\00\0F\00\11\00\13\00\17\00\1B\00\1F\00#\00+\003\00;\00C\00S\00c\00s\00\83\00\A3\00\C3\00\E3\00\02\01\00\02\00\02\00\02", align 2
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\D9\07\00\00M\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\8A\04\00\004\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\8B\04\00\004\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\8B\04\00\00O\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\8B\04\00\00\15\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\87\04\00\004\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\88\04\00\00#\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\88\04\00\00>\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\88\04\00\00\15\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\22\04\00\00\14\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00#\04\00\00\12\00\00\00" }>, align 8
@31 = private unnamed_addr constant [47 x i8] c"assertion failed: out_pos + 3 < out_slice.len()", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\006\04\00\00\0D\00\00\00" }>, align 8
@33 = private unnamed_addr constant [72 x i8] c"assertion failed: (source_pos + 3) & out_buf_size_mask < out_slice.len()", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\007\04\00\00\0D\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\009\04\00\00\22\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00:\04\00\00&\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00:\04\00\00\0D\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00;\04\00\00&\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00;\04\00\00\0D\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00D\04\00\00#\00\00\00" }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00D\04\00\00\0E\00\00\00" }>, align 8
@42 = private unnamed_addr constant [47 x i8] c"assertion failed: out_pos + 1 < out_slice.len()", align 1
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00F\04\00\00\0D\00\00\00" }>, align 8
@44 = private unnamed_addr constant [72 x i8] c"assertion failed: (source_pos + 1) & out_buf_size_mask < out_slice.len()", align 1
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00G\04\00\00\0D\00\00\00" }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00H\04\00\00\22\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00H\04\00\00\0D\00\00\00" }>, align 8
@48 = private unnamed_addr constant [47 x i8] c"assertion failed: out_pos + 2 < out_slice.len()", align 1
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00L\04\00\00\0D\00\00\00" }>, align 8
@50 = private unnamed_addr constant [72 x i8] c"assertion failed: (source_pos + 2) & out_buf_size_mask < out_slice.len()", align 1
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00M\04\00\00\0D\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00N\04\00\00\22\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00N\04\00\00\0D\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00O\04\00\00&\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00O\04\00\00\0D\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00,\04\00\00\17\00\00\00" }>, align 8
@_RNvNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core12reverse_bits20REVERSED_BITS_LOOKUP = internal unnamed_addr constant [1024 x i8] c"\00\00\00\80\00@\00\C0\00 \00\A0\00`\00\E0\00\10\00\90\00P\00\D0\000\00\B0\00p\00\F0\00\08\00\88\00H\00\C8\00(\00\A8\00h\00\E8\00\18\00\98\00X\00\D8\008\00\B8\00x\00\F8\00\04\00\84\00D\00\C4\00$\00\A4\00d\00\E4\00\14\00\94\00T\00\D4\004\00\B4\00t\00\F4\00\0C\00\8C\00L\00\CC\00,\00\AC\00l\00\EC\00\1C\00\9C\00\\\00\DC\00<\00\BC\00|\00\FC\00\02\00\82\00B\00\C2\00\22\00\A2\00b\00\E2\00\12\00\92\00R\00\D2\002\00\B2\00r\00\F2\00\0A\00\8A\00J\00\CA\00*\00\AA\00j\00\EA\00\1A\00\9A\00Z\00\DA\00:\00\BA\00z\00\FA\00\06\00\86\00F\00\C6\00&\00\A6\00f\00\E6\00\16\00\96\00V\00\D6\006\00\B6\00v\00\F6\00\0E\00\8E\00N\00\CE\00.\00\AE\00n\00\EE\00\1E\00\9E\00^\00\DE\00>\00\BE\00~\00\FE\00\01\00\81\00A\00\C1\00!\00\A1\00a\00\E1\00\11\00\91\00Q\00\D1\001\00\B1\00q\00\F1\00\09\00\89\00I\00\C9\00)\00\A9\00i\00\E9\00\19\00\99\00Y\00\D9\009\00\B9\00y\00\F9\00\05\00\85\00E\00\C5\00%\00\A5\00e\00\E5\00\15\00\95\00U\00\D5\005\00\B5\00u\00\F5\00\0D\00\8D\00M\00\CD\00-\00\AD\00m\00\ED\00\1D\00\9D\00]\00\DD\00=\00\BD\00}\00\FD\00\03\00\83\00C\00\C3\00#\00\A3\00c\00\E3\00\13\00\93\00S\00\D3\003\00\B3\00s\00\F3\00\0B\00\8B\00K\00\CB\00+\00\AB\00k\00\EB\00\1B\00\9B\00[\00\DB\00;\00\BB\00{\00\FB\00\07\00\87\00G\00\C7\00'\00\A7\00g\00\E7\00\17\00\97\00W\00\D7\007\00\B7\00w\00\F7\00\0F\00\8F\00O\00\CF\00/\00\AF\00o\00\EF\00\1F\00\9F\00_\00\DF\00?\00\BF\00\7F\00\FF\80\00\80\80\80@\80\C0\80 \80\A0\80`\80\E0\80\10\80\90\80P\80\D0\800\80\B0\80p\80\F0\80\08\80\88\80H\80\C8\80(\80\A8\80h\80\E8\80\18\80\98\80X\80\D8\808\80\B8\80x\80\F8\80\04\80\84\80D\80\C4\80$\80\A4\80d\80\E4\80\14\80\94\80T\80\D4\804\80\B4\80t\80\F4\80\0C\80\8C\80L\80\CC\80,\80\AC\80l\80\EC\80\1C\80\9C\80\\\80\DC\80<\80\BC\80|\80\FC\80\02\80\82\80B\80\C2\80\22\80\A2\80b\80\E2\80\12\80\92\80R\80\D2\802\80\B2\80r\80\F2\80\0A\80\8A\80J\80\CA\80*\80\AA\80j\80\EA\80\1A\80\9A\80Z\80\DA\80:\80\BA\80z\80\FA\80\06\80\86\80F\80\C6\80&\80\A6\80f\80\E6\80\16\80\96\80V\80\D6\806\80\B6\80v\80\F6\80\0E\80\8E\80N\80\CE\80.\80\AE\80n\80\EE\80\1E\80\9E\80^\80\DE\80>\80\BE\80~\80\FE\80\01\80\81\80A\80\C1\80!\80\A1\80a\80\E1\80\11\80\91\80Q\80\D1\801\80\B1\80q\80\F1\80\09\80\89\80I\80\C9\80)\80\A9\80i\80\E9\80\19\80\99\80Y\80\D9\809\80\B9\80y\80\F9\80\05\80\85\80E\80\C5\80%\80\A5\80e\80\E5\80\15\80\95\80U\80\D5\805\80\B5\80u\80\F5\80\0D\80\8D\80M\80\CD\80-\80\AD\80m\80\ED\80\1D\80\9D\80]\80\DD\80=\80\BD\80}\80\FD\80\03\80\83\80C\80\C3\80#\80\A3\80c\80\E3\80\13\80\93\80S\80\D3\803\80\B3\80s\80\F3\80\0B\80\8B\80K\80\CB\80+\80\AB\80k\80\EB\80\1B\80\9B\80[\80\DB\80;\80\BB\80{\80\FB\80\07\80\87\80G\80\C7\80'\80\A7\80g\80\E7\80\17\80\97\80W\80\D7\807\80\B7\80w\80\F7\80\0F\80\8F\80O\80\CF\80/\80\AF\80o\80\EF\80\1F\80\9F\80_\80\DF\80?\80\BF\80\7F\80\FF", align 2

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(10504) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i32 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %8 = alloca [4 x i8], align 4                   ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [12 x i8], align 4                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 71 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [16 x i8], align 8                ; 63 uses
  %i.f = and i32 %7, 4
  %.not120 = icmp eq i32 %i.f, 0                  ; 3 uses
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 1)
  %storemerge = select i1 %.not120, i64 %i.g, i64 -1 ; 7 uses
  %i.h = add nsw i64 %storemerge, 1               ; 2 uses
  %i.i = and i64 %i.h, %storemerge
  %i.j = icmp ne i64 %i.i, 0
  %i.k = icmp ugt i64 %6, %5
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %bb.fb, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %2, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 62 uses
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10500 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !range !4, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %4, ptr %i.d, align 8, !alias.scope !6, !noalias !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 10 uses
  store i64 %5, ptr %i.o, align 8, !alias.scope !6, !noalias !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 21 uses
  store i64 %6, ptr %i.p, align 8, !alias.scope !6, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 10432 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10440 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 10460 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 10480 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !noundef !5
  store i64 %i.r, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 56 uses
  store i32 %i.t, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 42 uses
  %i.aa = load <2 x i32>, ptr %i.u, align 4
  store <2 x i32> %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 8 uses
  store i8 %i.w, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 10452 ; 6 uses
  %i.ad = and i32 %7, 2
  %i.ae = icmp eq i32 %i.ad, 0
  %..i.i363 = select i1 %i.ae, i8 -4, i8 1        ; 33 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 10478 ; 2 uses
  %i.ag = and i32 %7, 1
  %i.ah = icmp eq i32 %i.ag, 0                    ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 3712 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 5760 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2560 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 10472 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 10474 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 10112 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 10400 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 10479 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 6912 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8960 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 10476 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 10481 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 10468 ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 10470
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 10256
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 10368
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 10392
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10448
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 10444 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 10456 ; 2 uses
  %. = select i1 %i.ah, i8 3, i8 1
  br label %.backedge

.loopexit479:                                     ; preds = %bb.bn
  %.sroa.851.1.le695 = extractvalue { i8, i8 } %.pn128, 1
  br label %.backedge.backedge

.loopexit497:                                     ; preds = %bb.dt
  store i64 %i.akr, ptr %i.p, align 8
  br label %.backedge.backedge

.loopexit499:                                     ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.1, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.2, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.3, %.preheader498
  %.promoted12.i361648.lcssa = phi i64 [ %.promoted645, %.preheader498 ], [ %.promoted12.i361646, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit ], [ %.promoted12.i361646.1, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.1 ], [ %.promoted12.i361646.2, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.2 ], [ %.promoted12.i361646.3, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.3 ]
  %.lcssa = phi ptr [ %.promoted642.a, %.preheader498 ], [ %i.anh, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit ], [ %i.aoi, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.1 ], [ %i.apk, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.2 ], [ %i.aqm, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.3 ]
  store ptr %.lcssa, ptr %i.e, align 8
  store i64 %.promoted12.i361648.lcssa, ptr %i.l, align 8
  br label %.backedge.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.sroa.0.0 = phi i8 [ %i.n, %bb.b ], [ %.sroa.0.0.be, %.backedge.backedge ] ; 6 uses
  switch i8 %.sroa.0.0, label %.thread442.loopexit1387 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %.preheader
    i8 4, label %bb.at
    i8 5, label %.preheader475
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %thread-pre-split
    i8 9, label %.preheader477
    i8 10, label %.preheader481
    i8 11, label %bb.m
    i8 12, label %.preheader488
    i8 13, label %bb.q
    i8 14, label %bb.r
    i8 15, label %bb.t
    i8 16, label %bb.aj
    i8 17, label %bb.al
    i8 18, label %bb.am
    i8 19, label %.preheader495
    i8 20, label %bb.ao
    i8 21, label %bb.ap
    i8 22, label %bb.aq
    i8 23, label %.preheader498
    i8 24, label %.thread442
  ]

.preheader498:                                    ; preds = %.backedge
  %.promoted = load i32, ptr %i.z, align 8        ; 7 uses
  %.promoted642.a = load ptr, ptr %i.e, align 8   ; 6 uses
  %.promoted645 = load i64, ptr %i.l, align 8     ; 6 uses
  %i.bg = icmp ult i32 %.promoted, 4
  br i1 %i.bg, label %.lr.ph1353, label %.loopexit499

.lr.ph1353:                                       ; preds = %.preheader498
  %.promoted649 = load i32, ptr %i.ac, align 4    ; 2 uses
  %.promoted639 = load i64, ptr %i.c, align 8     ; 3 uses
  %.promoted638 = load i32, ptr %i.x, align 8     ; 5 uses
  %i.bh = icmp eq i32 %.promoted638, 0
  br i1 %i.bh, label %bb.ef, label %bb.eh

.preheader495:                                    ; preds = %.backedge
  %.val156.a = load i64, ptr %i.o, align 8, !noundef !5 ; 4 uses
  %.promoted650 = load i64, ptr %i.p, align 8
  %.promoted653 = load i32, ptr %i.z, align 8
  %i.bi = load i32, ptr %i.y, align 4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = load ptr, ptr %i.d, align 8, !nonnull !5
  br label %bb.an

.preheader488:                                    ; preds = %.backedge
  %.promoted678 = load i64, ptr %i.p, align 8     ; 4 uses
  %i.bl = load i64, ptr %i.l, align 8, !alias.scope !11, !noundef !5 ; 4 uses
  %i.bm = icmp ult i64 %i.bl, 4
  br i1 %i.bm, label %._crit_edge685, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader488
  %.val150.a = load i64, ptr %i.o, align 8, !noundef !5 ; 6 uses
  %i.bn = load ptr, ptr %i.d, align 8, !nonnull !5 ; 2 uses
  %.promoted1138 = load ptr, ptr %i.e, align 8    ; 2 uses
  %.promoted1144 = load i64, ptr %i.l, align 8    ; 2 uses
  %i.bo = sub i64 %.val150.a, %.promoted678       ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 2
  br i1 %i.bp, label %._crit_edge685.loopexit, label %.lr.ph1355

.preheader475:                                    ; preds = %.backedge
  %.promoted710 = load i32, ptr %i.z, align 8     ; 9 uses
  %.promoted711 = load i32, ptr %i.x, align 8     ; 6 uses
  %i.bq = icmp ult i32 %.promoted710, 4
  br i1 %i.bq, label %.lr.ph1368, label %._crit_edge1369

.lr.ph1368:                                       ; preds = %.preheader475
  %.promoted716.a = load i64, ptr %i.l, align 8   ; 5 uses
  %.promoted715 = load ptr, ptr %i.e, align 8     ; 5 uses
  %.promoted712 = load i64, ptr %i.c, align 8     ; 3 uses
  %i.br = icmp eq i32 %.promoted711, 0
  br i1 %i.br, label %bb.aw, label %bb.ax

.preheader:                                       ; preds = %.backedge
  %.promoted727 = load ptr, ptr %i.e, align 8
  %.promoted728 = load i64, ptr %i.l, align 8
  br label %bb.h

bb.c:                                             ; preds = %.backedge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.c, i8 0, i64 21, i1 false)
  store <4 x i32> <i32 0, i32 0, i32 1, i32 1>, ptr %i.be, align 4
  br label %.backedge.backedge

bb.d:                                             ; preds = %.backedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.bs = load i64, ptr %i.l, align 8, !alias.scope !22, !noalias !17, !noundef !5 ; 2 uses
  %.not.i.not.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.not.i, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412, label %bb.ar

bb.e:                                             ; preds = %.backedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.bt = load i64, ptr %i.l, align 8, !alias.scope !29, !noalias !30, !noundef !5 ; 2 uses
  %.not.i.not.i171 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.not.i171, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = load ptr, ptr %i.e, align 8, !alias.scope !29, !noalias !30, !nonnull !5, !noundef !5 ; 2 uses
  %i.bv = add i64 %i.bt, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bw, ptr %i.e, align 8, !alias.scope !29, !noalias !30, !captures !32
  store i64 %i.bv, ptr %i.l, align 8, !alias.scope !29, !noalias !30
  %i.bx = load i8, ptr %i.bu, align 1, !noalias !33, !noundef !5
  %i.by = zext i8 %i.bx to i32                    ; 3 uses
  store i32 %i.by, ptr %i.bd, align 8, !noalias !34
  %i.bz = load i32, ptr %i.be, align 4, !noalias !34, !noundef !5 ; 3 uses
  %i.ca = shl i32 %i.bz, 8
  %i.cb = or disjoint i32 %i.ca, %i.by
  %i.cc = urem i32 %i.cb, 31
  %i.cd = and i32 %i.by, 32
  %i.ce = or disjoint i32 %i.cc, %i.cd
  %or.cond.i.i.i = icmp ne i32 %i.ce, 0
  %i.cf = and i32 %i.bz, 15
  %i.cg = icmp ne i32 %i.cf, 8
  %.sroa.02.0.i.i.i = or i1 %i.cg, %or.cond.i.i.i ; 2 uses
  %i.ch = lshr i32 %i.bz, 4
  %i.ci = add nuw nsw i32 %i.ch, 8
  %i.cj = and i32 %i.ci, 63                       ; 2 uses
  br i1 %.not120, label %bb.g, label %bb.as

bb.g:                                             ; preds = %bb.f
  %i.ck = zext nneg i32 %i.cj to i64
  %.highbits.i.i.i = lshr i64 %i.h, %i.ck
  %i.cl = icmp eq i64 %.highbits.i.i.i, 0
  %i.cm = or i1 %.sroa.02.0.i.i.i, %i.cl
  br label %bb.as

bb.h:                                             ; preds = %bb.i, %.preheader
  %.promoted14.i730 = phi i64 [ %.promoted728, %.preheader ], [ %.promoted14.i729, %bb.i ] ; 3 uses
  %i.cn = phi ptr [ %.promoted727, %.preheader ], [ %i.cp, %bb.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %.promoted.i = load i32, ptr %i.x, align 8, !alias.scope !37, !noalias !44 ; 4 uses
  %i.co = icmp ult i32 %.promoted.i, 3
  %.promoted12.i = load i64, ptr %i.c, align 8, !alias.scope !37, !noalias !44 ; 2 uses
  br i1 %i.co, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %.not.i.not.i.i = icmp eq i64 %.promoted14.i730, 0
  br i1 %.not.i.not.i.i, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i

._crit_edge.i:                                    ; preds = %bb.h, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i
  %.promoted14.i729 = phi i64 [ %i.cz, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i ], [ %.promoted14.i730, %bb.h ]
  %i.cp = phi ptr [ %i.da, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i ], [ %i.cn, %bb.h ]
  %i.cq = phi i64 [ %i.df, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i ], [ %.promoted12.i, %bb.h ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.dg, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i ], [ %.promoted.i, %bb.h ]
  %i.cr = lshr i64 %i.cq, 3
  store i64 %i.cr, ptr %i.c, align 8, !alias.scope !37, !noalias !44
  %i.cs = add i32 %.lcssa.i, -3
  store i32 %i.cs, ptr %i.x, align 8, !alias.scope !37, !noalias !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.ct = trunc i64 %i.cq to i8                   ; 2 uses
  %i.cu = and i8 %i.ct, 1
  store i8 %i.cu, ptr %i.af, align 2, !alias.scope !56, !noalias !57
  %i.cv = lshr i8 %i.ct, 1
  %i.cw = and i8 %i.cv, 3                         ; 2 uses
  store i8 %i.cw, ptr %i.ar, align 1, !alias.scope !56, !noalias !57
  switch i8 %i.cw, label %default.unreachable [
    i8 0, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %.backedge.backedge
  ], !prof !58

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

bb.i:                                             ; preds = %._crit_edge.i
  store i16 288, ptr %i.an, align 8, !alias.scope !59, !noalias !57
  store i16 32, ptr %i.ao, align 2, !alias.scope !59, !noalias !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ap, i8 8, i64 144, i1 false), !alias.scope !59, !noalias !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, i8 9, i64 112, i1 false), !alias.scope !59, !noalias !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 7, i64 24, i1 false), !alias.scope !59, !noalias !57
  store i64 578721382704613384, ptr %i.bc, align 8, !alias.scope !59, !noalias !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 5, i64 32, i1 false), !alias.scope !59, !noalias !57
  %i.cx = call fastcc { i8, i8 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9init_tree(ptr noalias nofree noundef nonnull align 8 dereferenceable(10504) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !40 ; 3 uses
  %i.cy = extractvalue { i8, i8 } %i.cx, 0        ; 2 uses
  switch i8 %i.cy, label %.loopexit [
    i8 -1, label %.thread442
    i8 0, label %bb.h
    i8 1, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit.split.loop.exit
    i8 2, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.split.loop.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i
  store i32 0, ptr %i.z, align 8, !alias.scope !62, !noalias !63
  br label %.backedge.backedge

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i: ; preds = %.lr.ph.i
  %i.cz = add i64 %.promoted14.i730, -1           ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 2 uses
  store ptr %i.da, ptr %i.e, align 8, !alias.scope !64, !noalias !65, !captures !32
  store i64 %i.cz, ptr %i.l, align 8, !alias.scope !64, !noalias !65
  %i.db = load i8, ptr %i.cn, align 1, !noalias !68, !noundef !5
  %i.dc = zext i8 %i.db to i64
  %i.dd = zext nneg i32 %.promoted.i to i64
  %i.de = shl nuw nsw i64 %i.dc, %i.dd
  %i.df = or i64 %i.de, %.promoted12.i
  %i.dg = or disjoint i32 %.promoted.i, 8
  br label %._crit_edge.i

bb.k:                                             ; preds = %.backedge
  %i.dh = load i32, ptr %i.z, align 8, !noundef !5
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %.backedge.backedge, label %bb.bh

bb.l:                                             ; preds = %.backedge
  %i.dj = load i64, ptr %i.l, align 8, !alias.scope !69, !noundef !5 ; 3 uses
  %.not129.a = icmp eq i64 %i.dj, 0
  br i1 %.not129.a, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412, label %bb.bi

thread-pre-split:                                 ; preds = %.backedge
  %.pr = load i32, ptr %i.z, align 8              ; 3 uses
  %i.dk = icmp ult i32 %.pr, 3
  br i1 %i.dk, label %.lr.ph708.preheader, label %._crit_edge709

.lr.ph708.preheader:                              ; preds = %thread-pre-split
  %.promoted701.a = load i64, ptr %i.l, align 8   ; 3 uses
  %.promoted700 = load ptr, ptr %i.e, align 8     ; 2 uses
  %.promoted699 = load i64, ptr %i.c, align 8     ; 2 uses
  %.promoted697 = load i32, ptr %i.x, align 8     ; 3 uses
  %i.dl = zext nneg i32 %.pr to i64               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 5, ptr %i.b, align 4
  store i32 5, ptr %i.aw, align 4
  store i32 4, ptr %i.ax, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.do = icmp ult i32 %.promoted697, %i.dn
  br i1 %i.do, label %.lr.ph.i262.preheader, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit

.preheader477:                                    ; preds = %.backedge, %bb.bn
  %i.dp = load i32, ptr %i.z, align 8, !noundef !5 ; 4 uses
  %i.dq = load i16, ptr %i.au, align 4, !noundef !5
  %i.dr = zext i16 %i.dq to i32
  %i.ds = icmp ult i32 %i.dp, %i.dr
  br i1 %i.ds, label %bb.bl, label %bb.bk

.preheader481:                                    ; preds = %.backedge, %bb.cm
  %i.dt = load i32, ptr %i.z, align 8, !noundef !5 ; 5 uses
  %i.du = load i16, ptr %i.an, align 8, !noundef !5 ; 3 uses
  %i.dv = zext i16 %i.du to i32
  %i.dw = load i16, ptr %i.ao, align 2, !noundef !5
  %i.dx = zext i16 %i.dw to i32
  %i.dy = add nuw nsw i32 %i.dx, %i.dv            ; 2 uses
  %i.dz = icmp ult i32 %i.dt, %i.dy
  br i1 %i.dz, label %bb.bp, label %bb.bo

bb.m:                                             ; preds = %.backedge
  %i.ea = load i8, ptr %i.ab, align 4, !noundef !5
  %i.eb = zext i8 %i.ea to i32                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %.promoted.i176 = load i32, ptr %i.x, align 8, !alias.scope !79, !noalias !86 ; 3 uses
  %i.ec = icmp ult i32 %.promoted.i176, %i.eb
  %.promoted10.i = load i64, ptr %i.c, align 8, !alias.scope !79, !noalias !86 ; 2 uses
  br i1 %i.ec, label %.lr.ph.i182, label %._crit_edge.i179

.lr.ph.i182:                                      ; preds = %bb.m
  %.promoted9.i = load ptr, ptr %i.e, align 8, !alias.scope !82, !noalias !87
  %.promoted12.i183 = load i64, ptr %i.l, align 8, !alias.scope !88, !noalias !93
  br label %bb.p

._crit_edge.i179:                                 ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i, %bb.m
  %i.ed = phi i64 [ %.promoted10.i, %bb.m ], [ %i.fm, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i ] ; 2 uses
  %.lcssa.i180 = phi i32 [ %.promoted.i176, %bb.m ], [ %i.fn, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i ]
  %i.ee = and i32 %i.eb, 63
  %i.ef = zext nneg i32 %i.ee to i64              ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.ef
  %i.eg = xor i64 %notmask.i, -1
  %i.eh = and i64 %i.ed, %i.eg
  %i.ei = lshr i64 %i.ed, %i.ef
  store i64 %i.ei, ptr %i.c, align 8, !alias.scope !79, !noalias !86
  %i.ej = sub nuw i32 %.lcssa.i180, %i.eb
  store i32 %i.ej, ptr %i.x, align 8, !alias.scope !79, !noalias !86
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  store i64 3, ptr %i.a, align 8, !noalias !101
  store i64 11, ptr %i.am, align 8, !noalias !101
  %i.ek = load i32, ptr %i.y, align 4, !alias.scope !102, !noalias !103, !noundef !5 ; 2 uses
  %i.el = and i32 %i.ek, 2
  %i.em = zext nneg i32 %i.el to i64
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.em
  %i.en = load i64, ptr %9, align 8, !noalias !101, !noundef !5
  %i.eo = add i64 %i.en, %i.eh                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101
  %i.ep = icmp eq i32 %i.ek, 16
  %i.eq = load i32, ptr %i.z, align 8, !alias.scope !102, !noalias !103 ; 3 uses
  br i1 %i.ep, label %bb.n, label %._crit_edge.i.i

bb.n:                                             ; preds = %._crit_edge.i179
  %i.er = add i32 %i.eq, 511
  %i.es = and i32 %i.er, 511
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !104, !noalias !105, !noundef !5
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.n, %._crit_edge.i179
  %.sroa.03.0.i.i = phi i8 [ %i.ev, %bb.n ], [ 0, %._crit_edge.i179 ]
  %i.ew = zext i32 %i.eq to i64                   ; 2 uses
  %i.ex = add i64 %i.eo, %i.ew
  %i.ey = and i64 %i.ew, 511                      ; 4 uses
  %i.ez = and i64 %i.ex, 511                      ; 3 uses
  %i.fa = icmp samesign ult i64 %i.ez, %i.ey
  br i1 %i.fa, label %bb.o, label %bb.cn, !prof !106

bb.o:                                             ; preds = %._crit_edge.i.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ey, i64 noundef %i.ez, i64 noundef 512, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #10, !noalias !101
  unreachable

bb.p:                                             ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i, %.lr.ph.i182
  %i.fb = phi i64 [ %.promoted12.i183, %.lr.ph.i182 ], [ %i.ff, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i ] ; 2 uses
  %i.fc = phi i32 [ %.promoted.i176, %.lr.ph.i182 ], [ %i.fn, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i ] ; 2 uses
  %i.fd = phi ptr [ %.promoted9.i, %.lr.ph.i182 ], [ %i.fg, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i ] ; 2 uses
  %i.fe = phi i64 [ %.promoted10.i, %.lr.ph.i182 ], [ %i.fm, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %.not.i.not.i.i184 = icmp eq i64 %i.fb, 0
  br i1 %.not.i.not.i.i184, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i: ; preds = %bb.p
  %i.ff = add i64 %i.fb, -1                       ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 1 ; 2 uses
  store ptr %i.fg, ptr %i.e, align 8, !alias.scope !88, !noalias !93, !captures !32
  store i64 %i.ff, ptr %i.l, align 8, !alias.scope !88, !noalias !93
  %i.fh = load i8, ptr %i.fd, align 1, !noalias !111, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.fi = zext i8 %i.fh to i64
  %i.fj = and i32 %i.fc, 63
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = shl i64 %i.fi, %i.fk
  %i.fm = or i64 %i.fl, %i.fe                     ; 3 uses
  store i64 %i.fm, ptr %i.c, align 8, !alias.scope !117, !noalias !118
  %i.fn = add nuw nsw i32 %i.fc, 8                ; 4 uses
  store i32 %i.fn, ptr %i.x, align 8, !alias.scope !119, !noalias !120
  %i.fo = icmp ult i32 %i.fn, %i.eb
  br i1 %i.fo, label %bb.p, label %._crit_edge.i179

bb.q:                                             ; preds = %.backedge
  %i.fp = load i32, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %i.fq = icmp ugt i32 %i.fp, 255
  br i1 %i.fq, label %.backedge.backedge, label %bb.dn

bb.r:                                             ; preds = %.backedge
  %i.fr = load i8, ptr %i.ab, align 4, !noundef !5
  %i.fs = zext i8 %i.fr to i32                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %.promoted.i186 = load i32, ptr %i.x, align 8, !alias.scope !121, !noalias !124 ; 3 uses
  %i.ft = icmp ult i32 %.promoted.i186, %i.fs
  %.promoted10.i195 = load i64, ptr %i.c, align 8, !alias.scope !121, !noalias !124 ; 2 uses
  br i1 %i.ft, label %.lr.ph.i194, label %.loopexit490

.lr.ph.i194:                                      ; preds = %bb.r
  %.promoted9.i196 = load ptr, ptr %i.e, align 8, !alias.scope !124, !noalias !121
  %.promoted12.i197 = load i64, ptr %i.l, align 8, !alias.scope !126, !noalias !131
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i, %.lr.ph.i194
  %i.fu = phi i64 [ %.promoted12.i197, %.lr.ph.i194 ], [ %i.fy, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i ] ; 3 uses
  %i.fv = phi i32 [ %.promoted.i186, %.lr.ph.i194 ], [ %i.gg, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i ] ; 2 uses
  %i.fw = phi ptr [ %.promoted9.i196, %.lr.ph.i194 ], [ %i.fz, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i ] ; 3 uses
  %i.fx = phi i64 [ %.promoted10.i195, %.lr.ph.i194 ], [ %i.gf, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %.not.i.not.i.i198 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.not.i.i198, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit1016, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i: ; preds = %bb.s
  %i.fy = add i64 %i.fu, -1                       ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 1 ; 2 uses
  %i.ga = load i8, ptr %i.fw, align 1, !noalias !138, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.gb = zext i8 %i.ga to i64
  %i.gc = and i32 %i.fv, 63
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = shl i64 %i.gb, %i.gd
  %i.gf = or i64 %i.ge, %i.fx                     ; 3 uses
  store i64 %i.gf, ptr %i.c, align 8, !alias.scope !144, !noalias !145
  %i.gg = add nuw nsw i32 %i.fv, 8                ; 4 uses
  store i32 %i.gg, ptr %i.x, align 8, !alias.scope !146, !noalias !147
  %i.gh = icmp ult i32 %i.gg, %i.fs
  br i1 %i.gh, label %bb.s, label %.loopexit490.loopexit

bb.t:                                             ; preds = %.backedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.gi = load i32, ptr %i.x, align 8, !alias.scope !151, !noalias !155, !noundef !5 ; 12 uses
  %i.gj = icmp ult i32 %i.gi, 15
  br i1 %i.gj, label %bb.u, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.t
  %.pre.i200 = load i64, ptr %i.c, align 8, !alias.scope !151, !noalias !155
  br label %.critedge.i

bb.u:                                             ; preds = %bb.t
  %i.gk = load i64, ptr %i.l, align 8, !alias.scope !153, !noalias !156, !noundef !5 ; 6 uses
  %i.gl = icmp ult i64 %i.gk, 2
  br i1 %i.gl, label %.preheader38.i, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i

.preheader38.i:                                   ; preds = %bb.u
  %.promoted.i203 = load i64, ptr %i.c, align 8, !alias.scope !151, !noalias !155 ; 5 uses
  %.promoted47.i = load ptr, ptr %i.e, align 8, !alias.scope !153, !noalias !156 ; 4 uses
  %i.gm = icmp eq i64 %i.gk, 0
  %i.gn = zext nneg i32 %i.gi to i64              ; 3 uses
  %i.go = and i64 %.promoted.i203, 1023
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !alias.scope !148, !noalias !157, !noundef !5 ; 2 uses
  %i.gr = sext i16 %i.gq to i32                   ; 2 uses
  %i.gs = icmp sgt i16 %i.gq, -1
  br i1 %i.gs, label %bb.w, label %bb.v

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i: ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.gt = load ptr, ptr %i.e, align 8, !alias.scope !161, !noalias !156, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.02.0.copyload.i.i = load i16, ptr %i.gt, align 1, !noalias !162
  %i.gu = add i64 %i.gk, -2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  store ptr %i.gv, ptr %i.e, align 8, !alias.scope !161, !noalias !156, !captures !32
  store i64 %i.gu, ptr %i.l, align 8, !alias.scope !161, !noalias !156
  %i.gw = zext i16 %.sroa.02.0.copyload.i.i to i64
  %i.gx = zext nneg i32 %i.gi to i64
  %i.gy = shl nuw nsw i64 %i.gw, %i.gx
  %i.gz = load i64, ptr %i.c, align 8, !alias.scope !151, !noalias !155, !noundef !5
  %i.ha = or i64 %i.gz, %i.gy
  %i.hb = or disjoint i32 %i.gi, 16
  br label %.critedge.i

bb.v:                                             ; preds = %.preheader38.i
  %i.hc = icmp ugt i32 %i.gi, 10
  br i1 %i.hc, label %.preheader.i, label %.loopexit.i

bb.w:                                             ; preds = %.preheader38.i
  %i.hd = lshr i32 %i.gr, 9
  %i.he = add nsw i32 %i.hd, -1
  %or.cond.i = icmp ugt i32 %i.gi, %i.he
  br i1 %or.cond.i, label %.critedge.i.loopexit491.split.loop.exit, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.v, %bb.y
  %.sroa.08.0.i = phi i32 [ %i.hr, %bb.y ], [ %i.gr, %bb.v ]
  %.sroa.05.0.i = phi i32 [ %i.hs, %bb.y ], [ 10, %bb.v ] ; 3 uses
  %i.hf = xor i32 %.sroa.08.0.i, -1
  %i.hg = and i32 %.sroa.05.0.i, 63
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = lshr i64 %.promoted.i203, %i.hh
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = and i32 %i.hj, 1
  %i.hl = add nuw nsw i32 %i.hk, %i.hf            ; 2 uses
  %i.hm = zext nneg i32 %i.hl to i64              ; 2 uses
  %i.hn = icmp samesign ult i32 %i.hl, 576
  br i1 %i.hn, label %bb.x, label %.loopexit1588

bb.x:                                             ; preds = %.preheader.i
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.hm
  %i.hp = load i16, ptr %i.ho, align 2, !alias.scope !148, !noalias !157, !noundef !5 ; 2 uses
  %i.hq = icmp sgt i16 %i.hp, -1
  br i1 %i.hq, label %.critedge.i.loopexit, label %bb.y

.loopexit1588:                                    ; preds = %.preheader.i.1, %.preheader.i
  %.lcssa1399 = phi i64 [ %i.hm, %.preheader.i ], [ %i.iq, %.preheader.i.1 ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa1399, i64 noundef 576, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #10, !noalias !163
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.hr = sext i16 %i.hp to i32
  %i.hs = add i32 %.sroa.05.0.i, 1
  %i.ht = add i32 %.sroa.05.0.i, 2
  %i.hu = icmp ult i32 %i.gi, %i.ht
  br i1 %i.hu, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %bb.y, %bb.w, %bb.v
  br i1 %i.gm, label %.loopexit.i.1, label %bb.z

bb.z:                                             ; preds = %.loopexit.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.promoted47.i, i64 1 ; 3 uses
  %i.hw = load i8, ptr %.promoted47.i, align 1, !noalias !164, !noundef !5
end_hunk_0
begin_hunk_1_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress:bb.a
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %bb.x, %.critedge.i.loopexit.loopexit1591
  %indvars.iv.lcssa1417 = phi i32 [ %i.jd, %.critedge.i.loopexit.loopexit1591 ], [ %i.gi, %bb.x ]
  %.lcssa1413.a = phi i64 [ 0, %.critedge.i.loopexit.loopexit1591 ], [ %i.gk, %bb.x ]
  %.lcssa1408.a = phi ptr [ %i.hv, %.critedge.i.loopexit.loopexit1591 ], [ %.promoted47.i, %bb.x ]
  %.lcssa1403 = phi i64 [ %i.hz, %.critedge.i.loopexit.loopexit1591 ], [ %.promoted.i203, %bb.x ]
  store ptr %.lcssa1408.a, ptr %i.e, align 8
  store i64 %.lcssa1413.a, ptr %i.l, align 8
  br label %.critedge.i

.critedge.i.loopexit491.split.loop.exit:          ; preds = %bb.ae, %bb.w
  %indvars.iv.lcssa1418 = phi i64 [ %i.gn, %bb.w ], [ %indvars.iv.next, %bb.ae ]
  %.lcssa1414 = phi i64 [ %i.gk, %bb.w ], [ 0, %bb.ae ]
  %.lcssa1409 = phi ptr [ %.promoted47.i, %bb.w ], [ %i.hv, %bb.ae ]
  %.lcssa1404 = phi i64 [ %.promoted.i203, %bb.w ], [ %i.hz, %bb.ae ]
  %i.je = trunc nuw nsw i64 %indvars.iv.lcssa1418 to i32
  br label %.critedge.i.loopexit491

.critedge.i.loopexit491:                          ; preds = %bb.z, %.critedge.i.loopexit491.split.loop.exit
  %i.jf = phi i64 [ %.lcssa1414, %.critedge.i.loopexit491.split.loop.exit ], [ 0, %bb.z ]
  %i.jg = phi ptr [ %.lcssa1409, %.critedge.i.loopexit491.split.loop.exit ], [ %i.hv, %bb.z ]
  %.ph492 = phi i32 [ %i.je, %.critedge.i.loopexit491.split.loop.exit ], [ %i.ia, %bb.z ]
  %.ph493 = phi i64 [ %.lcssa1404, %.critedge.i.loopexit491.split.loop.exit ], [ %i.hz, %bb.z ]
  store ptr %i.jg, ptr %i.e, align 8
  store i64 %i.jf, ptr %i.l, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit491, %.critedge.i.loopexit, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i, %..critedge_crit_edge.i
  %i.jh = phi i32 [ %i.gi, %..critedge_crit_edge.i ], [ %indvars.iv.lcssa1417, %.critedge.i.loopexit ], [ %i.hb, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i ], [ %.ph492, %.critedge.i.loopexit491 ]
  %i.ji = phi i64 [ %.pre.i200, %..critedge_crit_edge.i ], [ %.lcssa1403, %.critedge.i.loopexit ], [ %i.ha, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i ], [ %.ph493, %.critedge.i.loopexit491 ] ; 3 uses
  %i.jj = and i64 %i.ji, 1023
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2, !alias.scope !148, !noalias !157, !noundef !5 ; 2 uses
  %i.jm = sext i16 %i.jl to i32                   ; 3 uses
  %i.jn = icmp sgt i16 %i.jl, -1
  br i1 %i.jn, label %bb.af, label %.preheader745.a

bb.af:                                            ; preds = %.critedge.i
  %i.jo = lshr i32 %i.jm, 9
  %i.jp = and i32 %i.jm, 511
  br label %bb.ah

.preheader745.a:                                  ; preds = %.critedge.i, %bb.ag
  %.sroa.03.0.i.i201 = phi i8 [ %i.kd, %bb.ag ], [ 10, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i30.i = phi i32 [ %i.kc, %bb.ag ], [ %i.jm, %.critedge.i ]
  %i.jq = xor i32 %.sroa.0.0.i30.i, -1
  %i.jr = and i8 %.sroa.03.0.i.i201, 63
  %i.js = zext nneg i8 %i.jr to i64
  %i.jt = lshr i64 %i.ji, %i.js
  %i.ju = trunc i64 %i.jt to i32
  %i.jv = and i32 %i.ju, 1
  %i.jw = add nuw nsw i32 %i.jv, %i.jq            ; 2 uses
  %i.jx = icmp samesign ult i32 %i.jw, 576
  br i1 %i.jx, label %bb.ag, label %.thread.i.i

.thread.i.i:                                      ; preds = %.preheader745.a
  %i.jy = add i8 %.sroa.03.0.i.i201, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i

bb.ag:                                            ; preds = %.preheader745.a
  %i.jz = zext nneg i32 %i.jw to i64
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.jz
  %i.kb = load i16, ptr %i.ka, align 2, !alias.scope !170, !noalias !157, !noundef !5 ; 2 uses
  %i.kc = sext i16 %i.kb to i32                   ; 2 uses
  %i.kd = add i8 %.sroa.03.0.i.i201, 1            ; 2 uses
  %i.ke = icmp sgt i16 %i.kb, -1
  br i1 %i.ke, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i, label %.preheader745.a

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i: ; preds = %bb.ag, %.thread.i.i
  %i.kf = phi i8 [ %i.jy, %.thread.i.i ], [ %i.kd, %bb.ag ]
  %.sroa.06.011.i.i = phi i32 [ 32767, %.thread.i.i ], [ %i.kc, %bb.ag ]
  %i.kg = zext i8 %i.kf to i32
  br label %bb.ah

bb.ah:                                            ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i, %bb.af
  %.sroa.018.0.i = phi i32 [ %i.jo, %bb.af ], [ %i.kg, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i ] ; 2 uses
  %.sroa.013.0.i = phi i32 [ %i.jp, %bb.af ], [ %.sroa.06.011.i.i, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i ] ; 4 uses
  %i.kh = and i32 %.sroa.018.0.i, 63
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = lshr i64 %i.ji, %i.ki
  store i64 %i.kj, ptr %i.c, align 8, !alias.scope !151, !noalias !155
  %i.kk = sub i32 %i.jh, %.sroa.018.0.i
  store i32 %i.kk, ptr %i.x, align 8, !alias.scope !151, !noalias !155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.kl = icmp samesign ugt i32 %.sroa.013.0.i, 29
  br i1 %i.kl, label %.backedge.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.km = zext nneg i32 %.sroa.013.0.i to i64
  %i.kn = trunc nuw nsw i32 %.sroa.013.0.i to i8
  %i.ko = lshr i8 %i.kn, 1
  %i.kp = tail call i8 @llvm.usub.sat.i8(i8 %i.ko, i8 1)
  store i8 %i.kp, ptr %i.ab, align 4, !alias.scope !176, !noalias !155
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr @7, i64 %i.km
  %i.kr = load i16, ptr %i.kq, align 2, !noalias !177, !noundef !5
  %i.ks = zext i16 %i.kr to i32
  store i32 %i.ks, ptr %i.y, align 4, !alias.scope !176, !noalias !155
  %i.kt = icmp samesign ult i32 %.sroa.013.0.i, 4
  %..i31.i = select i1 %i.kt, i8 22, i8 16
  br label %.backedge.backedge

bb.aj:                                            ; preds = %.backedge
  %i.ku = load i8, ptr %i.ab, align 4, !noundef !5
  %i.kv = zext i8 %i.ku to i32                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %.promoted.i206 = load i32, ptr %i.x, align 8, !alias.scope !178, !noalias !181 ; 3 uses
  %i.kw = icmp ult i32 %.promoted.i206, %i.kv
  br i1 %i.kw, label %.lr.ph.i214, label %.._crit_edge_crit_edge.i207

.._crit_edge_crit_edge.i207:                      ; preds = %bb.aj
  %.pre.i208 = load i64, ptr %i.c, align 8, !alias.scope !178, !noalias !181
  br label %bb.dq

.lr.ph.i214:                                      ; preds = %bb.aj
  %.promoted12.i217 = load i64, ptr %i.l, align 8, !alias.scope !183, !noalias !188 ; 2 uses
  %.not.i.not.i.i218660 = icmp eq i64 %.promoted12.i217, 0
  br i1 %.not.i.not.i.i218660, label %.lr.ph.i214._crit_edge, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i.preheader

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i.preheader: ; preds = %.lr.ph.i214
  %.promoted9.i216 = load ptr, ptr %i.e, align 8, !alias.scope !181, !noalias !178
  %.promoted10.i215 = load i64, ptr %i.c, align 8, !alias.scope !178, !noalias !181
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i

bb.ak:                                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i
  %.not.i.not.i.i218 = icmp eq i64 %i.lb, 0
  br i1 %.not.i.not.i.i218, label %._crit_edge, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i: ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i.preheader, %bb.ak
  %i.kx = phi i64 [ %i.li, %bb.ak ], [ %.promoted10.i215, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i.preheader ]
  %i.ky = phi ptr [ %i.lc, %bb.ak ], [ %.promoted9.i216, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i.preheader ] ; 2 uses
  %i.kz = phi i32 [ %i.lj, %bb.ak ], [ %.promoted.i206, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i.preheader ] ; 2 uses
  %i.la = phi i64 [ %i.lb, %bb.ak ], [ %.promoted12.i217, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.lb = add i64 %i.la, -1                       ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 1 ; 2 uses
  %i.ld = load i8, ptr %i.ky, align 1, !noalias !195, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.le = zext i8 %i.ld to i64
  %i.lf = and i32 %i.kz, 63
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = shl i64 %i.le, %i.lg
  %i.li = or i64 %i.lh, %i.kx                     ; 3 uses
  %i.lj = add nuw nsw i32 %i.kz, 8                ; 4 uses
  %i.lk = icmp ult i32 %i.lj, %i.kv
  br i1 %i.lk, label %bb.ak, label %.loopexit494

bb.al:                                            ; preds = %.backedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %.promoted.i220 = load i32, ptr %i.x, align 8, !alias.scope !201, !noalias !204 ; 4 uses
  %i.ll = icmp ult i32 %.promoted.i220, 8
  %.promoted10.i228 = load i64, ptr %i.c, align 8, !alias.scope !201, !noalias !204 ; 2 uses
  br i1 %i.ll, label %.lr.ph.i227, label %.._crit_edge_crit_edge.i221

.lr.ph.i227:                                      ; preds = %bb.al
  %.promoted9.i229 = load ptr, ptr %i.e, align 8, !alias.scope !204, !noalias !201 ; 2 uses
  %.promoted12.i230 = load i64, ptr %i.l, align 8, !alias.scope !206, !noalias !211 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %.not.i.not.i.i231 = icmp eq i64 %.promoted12.i230, 0
  br i1 %.not.i.not.i.i231, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss4_0E0EB6_.exit.i

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss4_0E0EB6_.exit.i: ; preds = %.lr.ph.i227
  %i.lm = add i64 %.promoted12.i230, -1
  %i.ln = getelementptr inbounds nuw i8, ptr %.promoted9.i229, i64 1
  store ptr %i.ln, ptr %i.e, align 8, !alias.scope !206, !noalias !211, !captures !32
  store i64 %i.lm, ptr %i.l, align 8, !alias.scope !206, !noalias !211
  %i.lo = load i8, ptr %.promoted9.i229, align 1, !noalias !216, !noundef !5
  %i.lp = zext i8 %i.lo to i64
  %i.lq = zext nneg i32 %.promoted.i220 to i64
  %i.lr = shl nuw nsw i64 %i.lp, %i.lq
  %i.ls = or i64 %i.lr, %.promoted10.i228
  %i.lt = or disjoint i32 %.promoted.i220, 8
  br label %.._crit_edge_crit_edge.i221

bb.am:                                            ; preds = %.backedge
  %.val158.a = load i64, ptr %i.o, align 8, !noundef !5 ; 3 uses
  %.val159.a = load i64, ptr %i.p, align 8, !noundef !5 ; 5 uses
  %i.lu = icmp eq i64 %.val158.a, %.val159.a
  br i1 %i.lu, label %.thread442, label %bb.dr

bb.an:                                            ; preds = %.preheader495, %bb.dt
  %i.lv = phi i32 [ %.promoted653, %.preheader495 ], [ %i.akt, %bb.dt ] ; 3 uses
  %i.lw = phi i64 [ %.promoted650, %.preheader495 ], [ %i.akr, %bb.dt ] ; 5 uses
  %.not122 = icmp eq i64 %.val156.a, %i.lw
  br i1 %.not122, label %.thread442.loopexit496, label %bb.dt

bb.ao:                                            ; preds = %.backedge
  %i.lx = load i8, ptr %i.af, align 2, !noundef !5
  %i.ly = icmp eq i8 %i.lx, 0
  br i1 %i.ly, label %.backedge.backedge, label %bb.du

bb.ap:                                            ; preds = %.backedge
  %i.lz = load i32, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %i.ma = and i32 %i.lz, 511                      ; 3 uses
  store i32 %i.ma, ptr %i.z, align 8
  %i.mb = icmp eq i32 %i.ma, 256
  br i1 %i.mb, label %.backedge.backedge, label %bb.dy

bb.aq:                                            ; preds = %.backedge
  %i.mc = load i32, ptr %i.y, align 4, !noundef !5
  %i.md = zext i32 %i.mc to i64                   ; 4 uses
  %i.me = load i64, ptr %i.p, align 8, !alias.scope !217, !noundef !5 ; 6 uses
  %i.mf = icmp uge i64 %i.me, %i.md
  %brmerge = or i1 %.not120, %i.mf
  br i1 %brmerge, label %bb.ea, label %.backedge.backedge

.loopexit:                                        ; preds = %bb.cm, %bb.bn, %bb.i
  unreachable

bb.ar:                                            ; preds = %bb.d
  %i.mg = load ptr, ptr %i.e, align 8, !alias.scope !22, !noalias !17, !nonnull !5, !noundef !5 ; 2 uses
  %i.mh = add i64 %i.bs, -1
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 1
  store ptr %i.mi, ptr %i.e, align 8, !alias.scope !22, !noalias !17, !captures !32
  store i64 %i.mh, ptr %i.l, align 8, !alias.scope !22, !noalias !17
  %i.mj = load i8, ptr %i.mg, align 1, !noalias !220, !noundef !5
  %i.mk = zext i8 %i.mj to i32
  store i32 %i.mk, ptr %i.be, align 4, !alias.scope !221, !noalias !14
  br label %.backedge.backedge

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.split.loop.exit: ; preds = %bb.i
  %i.ml = extractvalue { i8, i8 } %i.cx, 1
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit480: ; preds = %bb.bn
  %.sroa.851.1.le = extractvalue { i8, i8 } %.pn128, 1
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit484: ; preds = %bb.cm
  %.sroa.9.1.le693 = extractvalue { i8, i8 } %.pn126, 1
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500: ; preds = %bb.es, %.lr.ph.i358.3, %bb.eo, %.lr.ph.i358.2, %bb.ek, %.lr.ph.i358.1, %bb.ef, %.lr.ph.i358
  store i64 0, ptr %i.l, align 8
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit1016: ; preds = %bb.s
  store ptr %i.fw, ptr %i.e, align 8
  store i64 %i.fu, ptr %i.l, align 8
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.loopexit: ; preds = %.lr.ph.i262
  store ptr %i.rr, ptr %i.e, align 8, !alias.scope !224, !noalias !229
  store i64 %i.rq, ptr %i.l, align 8, !alias.scope !224, !noalias !229
  store i64 %i.rx, ptr %i.c, align 8, !alias.scope !232, !noalias !235
  store i32 %i.ry, ptr %i.x, align 8, !alias.scope !237, !noalias !238
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.loopexit1608: ; preds = %.lr.ph.i262.1
  store ptr %i.sw, ptr %i.e, align 8, !alias.scope !239, !noalias !243
  store i64 %i.sv, ptr %i.l, align 8, !alias.scope !239, !noalias !243
  store i64 %i.tc, ptr %i.c, align 8, !alias.scope !248, !noalias !250
  store i32 %i.td, ptr %i.x, align 8, !alias.scope !252, !noalias !253
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.loopexit1609: ; preds = %.lr.ph.i262.2
  store ptr %i.ub, ptr %i.e, align 8, !alias.scope !254, !noalias !258
  store i64 %i.ua, ptr %i.l, align 8, !alias.scope !254, !noalias !258
  store i64 %i.uh, ptr %i.c, align 8, !alias.scope !263, !noalias !265
  store i32 %i.ui, ptr %i.x, align 8, !alias.scope !267, !noalias !268
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412: ; preds = %bb.dh, %bb.dk, %bb.dj, %.lr.ph.i227, %bb.l, %bb.e, %bb.cr, %bb.d, %.loopexit.i336, %bb.p, %.lr.ph.i262.preheader, %.lr.ph.i262.preheader.1, %.lr.ph.i262.preheader.2, %.lr.ph.i244, %bb.aw, %.lr.ph.i244.1, %bb.ba, %.lr.ph.i244.2, %bb.bd, %.lr.ph.i244.3, %bb.bg, %.lr.ph.i, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.loopexit, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.loopexit1608, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.loopexit1609, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit1016, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.split.loop.exit, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit484, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit480, %.lr.ph.i214._crit_edge, %.loopexit.i.1
  %.sroa.0365.0 = phi i8 [ %..i.i363, %.loopexit.i.1 ], [ %..i.i363, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.loopexit ], [ %i.ml, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.split.loop.exit ], [ %..i.i363, %.lr.ph.i ], [ %..i.i363, %.lr.ph.i214._crit_edge ], [ %.sroa.851.1.le, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit480 ], [ %..i.i363, %.loopexit.i336 ], [ %..i.i363, %.lr.ph.i262.preheader ], [ %..i.i363, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500 ], [ %.sroa.9.1.le693, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit484 ], [ %..i.i363, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit1016 ], [ %..i.i363, %.lr.ph.i244 ], [ %..i.i363, %bb.p ], [ %..i.i363, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.loopexit1609 ], [ %..i.i363, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.loopexit1608 ], [ %..i.i363, %bb.bg ], [ %..i.i363, %.lr.ph.i244.3 ], [ %..i.i363, %bb.bd ], [ %..i.i363, %.lr.ph.i244.2 ], [ %..i.i363, %bb.ba ], [ %..i.i363, %.lr.ph.i244.1 ], [ %..i.i363, %bb.aw ], [ %..i.i363, %.lr.ph.i262.preheader.2 ], [ %..i.i363, %.lr.ph.i262.preheader.1 ], [ %..i.i363, %bb.e ], [ %i.adf, %bb.cr ], [ %..i.i363, %.lr.ph.i227 ], [ %..i.i363, %bb.d ], [ %..i.i363, %bb.l ], [ %..i.i363, %bb.dj ], [ %..i.i363, %bb.dk ], [ %..i.i363, %bb.dh ] ; 3 uses
  %.sroa.0.1 = phi i8 [ 15, %.loopexit.i.1 ], [ 8, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.loopexit ], [ 3, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.split.loop.exit ], [ 3, %.lr.ph.i ], [ 16, %.lr.ph.i214._crit_edge ], [ 9, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit480 ], [ 12, %.loopexit.i336 ], [ 8, %.lr.ph.i262.preheader ], [ 23, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500 ], [ 10, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit484 ], [ 14, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit1016 ], [ 5, %.lr.ph.i244 ], [ 11, %bb.p ], [ 8, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.loopexit1609 ], [ 8, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.loopexit1608 ], [ 5, %bb.bg ], [ 5, %.lr.ph.i244.3 ], [ 5, %bb.bd ], [ 5, %.lr.ph.i244.2 ], [ 5, %bb.ba ], [ 5, %.lr.ph.i244.1 ], [ 5, %bb.aw ], [ 8, %.lr.ph.i262.preheader.2 ], [ 8, %.lr.ph.i262.preheader.1 ], [ 2, %bb.e ], [ %i.adg, %bb.cr ], [ 17, %.lr.ph.i227 ], [ 1, %bb.d ], [ 7, %bb.l ], [ 12, %bb.dj ], [ 12, %bb.dk ], [ 12, %bb.dh ] ; 4 uses
  switch i8 %.sroa.0365.0, label %.thread442 [
    i8 1, label %bb.eu
    i8 -4, label %.thread451
  ]

bb.as:                                            ; preds = %bb.g, %bb.f
  %.sroa.02.1.i.i.i = phi i1 [ %i.cm, %bb.g ], [ %.sroa.02.0.i.i.i, %bb.f ]
  %i.mm = icmp samesign ugt i32 %i.cj, 15
  %i.mn = or i1 %i.mm, %.sroa.02.1.i.i.i
  %..i.i.i = select i1 %i.mn, i8 29, i8 3
  br label %.backedge.backedge

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit.split.loop.exit: ; preds = %bb.i
  %i.mo = extractvalue { i8, i8 } %i.cx, 1
  br label %.backedge.backedge

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit: ; preds = %._crit_edge.i
  br label %.backedge.backedge

bb.at:                                            ; preds = %.backedge
  %i.mp = load i32, ptr %i.x, align 8, !alias.scope !269, !noundef !5 ; 2 uses
  %i.mq = and i32 %i.mp, 7
  %.pre.i.i = load i64, ptr %i.c, align 8, !alias.scope !272, !noalias !275
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = lshr i64 %.pre.i.i, %i.mr
  store i64 %i.ms, ptr %i.c, align 8, !alias.scope !272, !noalias !275
  %i.mt = and i32 %i.mp, -8
  store i32 %i.mt, ptr %i.x, align 8, !alias.scope !272, !noalias !275
  store i32 0, ptr %i.z, align 8, !alias.scope !277, !noalias !275
  br label %.backedge.backedge

._crit_edge1369:                                  ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.1, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.2, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.3, %.preheader475
  %.lcssa1304 = phi i32 [ %.promoted711, %.preheader475 ], [ %i.nx, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit ], [ %i.ow, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.1 ], [ %i.pw, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.2 ], [ %i.qu, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.3 ]
  %i.mu = load i16, ptr %i.ay, align 4            ; 3 uses
  %i.mv = load i16, ptr %i.az, align 2
  %i.mw = xor i16 %i.mv, %i.mu
  %i.mx = icmp eq i16 %i.mw, -1
  %i.my = zext i16 %i.mu to i32
  store i32 %i.my, ptr %i.z, align 8
  br i1 %i.mx, label %bb.au, label %.backedge.backedge

bb.au:                                            ; preds = %._crit_edge1369
  %i.mz = icmp eq i16 %i.mu, 0
  br i1 %i.mz, label %.backedge.backedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.na = icmp eq i32 %.lcssa1304, 0
  %.136 = select i1 %i.na, i8 6, i8 17
  br label %.backedge.backedge

bb.aw:                                            ; preds = %.lr.ph1368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %.not.i.not.i233 = icmp eq i64 %.promoted716.a, 0
  br i1 %.not.i.not.i233, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i

_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i: ; preds = %bb.aw
  %i.nb = add i64 %.promoted716.a, -1             ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.promoted715, i64 1 ; 2 uses
  store ptr %i.nc, ptr %i.e, align 8, !alias.scope !290, !noalias !291, !captures !32
  store i64 %i.nb, ptr %i.l, align 8, !alias.scope !290, !noalias !291
  %i.nd = load i8, ptr %.promoted715, align 1, !noalias !293, !noundef !5
  %i.ne = zext nneg i32 %.promoted710 to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ne
  store i8 %i.nd, ptr %i.nf, align 1, !alias.scope !294, !noalias !297
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit

bb.ax:                                            ; preds = %.lr.ph1368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.ng = icmp ult i32 %.promoted711, 8
  br i1 %i.ng, label %.lr.ph.i244, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i

.lr.ph.i244:                                      ; preds = %bb.ax
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %.not.i.not.i.i248 = icmp eq i64 %.promoted716.a, 0
  br i1 %.not.i.not.i.i248, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i

_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i: ; preds = %bb.ax, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i
  %.promoted12.i247718 = phi i64 [ %i.no, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i ], [ %.promoted716.a, %bb.ax ]
  %i.nh = phi ptr [ %i.np, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i ], [ %.promoted715, %bb.ax ]
  %i.ni = phi i64 [ %i.nu, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i ], [ %.promoted712, %bb.ax ] ; 2 uses
  %.lcssa.i241 = phi i32 [ %i.nv, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i ], [ %.promoted711, %bb.ax ]
  %i.nj = lshr i64 %i.ni, 8                       ; 2 uses
  store i64 %i.nj, ptr %i.c, align 8, !alias.scope !299, !noalias !312
  %i.nk = add i32 %.lcssa.i241, -8                ; 2 uses
  store i32 %i.nk, ptr %i.x, align 8, !alias.scope !299, !noalias !312
  %i.nl = zext nneg i32 %.promoted710 to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.nl
  %i.nn = trunc i64 %i.ni to i8
  store i8 %i.nn, ptr %i.nm, align 1, !alias.scope !313, !noalias !316
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i: ; preds = %.lr.ph.i244
  %i.no = add i64 %.promoted716.a, -1             ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.promoted715, i64 1 ; 2 uses
  store ptr %i.np, ptr %i.e, align 8, !alias.scope !318, !noalias !319, !captures !32
  store i64 %i.no, ptr %i.l, align 8, !alias.scope !318, !noalias !319
  %i.nq = load i8, ptr %.promoted715, align 1, !noalias !322, !noundef !5
  %i.nr = zext i8 %i.nq to i64
  %i.ns = zext nneg i32 %.promoted711 to i64
  %i.nt = shl nuw nsw i64 %i.nr, %i.ns
  %i.nu = or i64 %i.nt, %.promoted712
  %i.nv = or disjoint i32 %.promoted711, 8
  br label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit: ; preds = %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i
  %.promoted12.i247717 = phi i64 [ %.promoted12.i247718, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i ], [ %i.nb, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i ] ; 5 uses
  %i.nw = phi ptr [ %i.nh, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i ], [ %i.nc, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i ] ; 5 uses
  %.promoted10.i245713 = phi i64 [ %i.nj, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i ], [ %.promoted712, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i ] ; 3 uses
  %i.nx = phi i32 [ %i.nk, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i ], [ 0, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i ] ; 6 uses
  %i.ny = add nuw nsw i32 %.promoted710, 1        ; 3 uses
  store i32 %i.ny, ptr %i.z, align 8, !noalias !5
  %.not1611 = icmp eq i32 %.promoted710, 3
  br i1 %.not1611, label %._crit_edge1369, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit
  %i.nz = icmp eq i32 %i.nx, 0
  br i1 %i.nz, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.oa = icmp ult i32 %i.nx, 8
  br i1 %i.oa, label %.lr.ph.i244.1, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.1
end_hunk_1
begin_hunk_2_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress:bb.a
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 2
  store ptr %i.wi, ptr %i.e, align 8, !alias.scope !518, !noalias !513, !captures !32
  store i64 %i.wh, ptr %i.l, align 8, !alias.scope !518, !noalias !513
  %i.wj = zext i16 %.sroa.02.0.copyload.i.i294 to i64
  %i.wk = zext nneg i32 %i.vv to i64
  %i.wl = shl nuw nsw i64 %i.wj, %i.wk
  %i.wm = load i64, ptr %i.c, align 8, !alias.scope !508, !noalias !512, !noundef !5
  %i.wn = or i64 %i.wm, %i.wl
  %i.wo = or disjoint i32 %i.vv, 16
  br label %.critedge.i283

bb.br:                                            ; preds = %.preheader38.i295
  %i.wp = icmp ugt i32 %i.vv, 10
  br i1 %i.wp, label %.preheader.i301, label %.loopexit.i299

bb.bs:                                            ; preds = %.preheader38.i295
  %i.wq = lshr i32 %i.we, 9
  %i.wr = add nsw i32 %i.wq, -1
  %or.cond.i304 = icmp ugt i32 %i.vv, %i.wr
  br i1 %or.cond.i304, label %.critedge.i283.loopexit1002.split.loop.exit, label %.loopexit.i299

.preheader.i301:                                  ; preds = %bb.br, %bb.bu
  %.sroa.08.0.i302 = phi i32 [ %i.xe, %bb.bu ], [ %i.we, %bb.br ]
  %.sroa.05.0.i303 = phi i32 [ %i.xf, %bb.bu ], [ 10, %bb.br ] ; 3 uses
  %i.ws = xor i32 %.sroa.08.0.i302, -1
  %i.wt = and i32 %.sroa.05.0.i303, 63
  %i.wu = zext nneg i32 %i.wt to i64
  %i.wv = lshr i64 %.promoted.i296, %i.wu
  %i.ww = trunc i64 %i.wv to i32
  %i.wx = and i32 %i.ww, 1
  %i.wy = add nuw nsw i32 %i.wx, %i.ws            ; 2 uses
  %i.wz = zext nneg i32 %i.wy to i64              ; 2 uses
  %i.xa = icmp samesign ult i32 %i.wy, 576
  br i1 %i.xa, label %bb.bt, label %.loopexit1602

bb.bt:                                            ; preds = %.preheader.i301
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.wz
  %i.xc = load i16, ptr %i.xb, align 2, !alias.scope !505, !noalias !514, !noundef !5 ; 2 uses
  %i.xd = icmp sgt i16 %i.xc, -1
  br i1 %i.xd, label %.critedge.i283, label %bb.bu

.loopexit1602:                                    ; preds = %.preheader.i301.1, %.preheader.i301
  %.lcssa1500 = phi i64 [ %i.wz, %.preheader.i301 ], [ %i.yd, %.preheader.i301.1 ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa1500, i64 noundef 576, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #10, !noalias !520
  unreachable

bb.bu:                                            ; preds = %bb.bt
  %i.xe = sext i16 %i.xc to i32
  %i.xf = add i32 %.sroa.05.0.i303, 1
  %i.xg = add i32 %.sroa.05.0.i303, 2
  %i.xh = icmp ult i32 %i.vv, %i.xg
  br i1 %i.xh, label %.loopexit.i299, label %.preheader.i301

.loopexit.i299:                                   ; preds = %bb.bu, %bb.bs, %bb.br
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  br i1 %i.vz, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit, label %bb.bv

bb.bv:                                            ; preds = %.loopexit.i299
  %i.xi = getelementptr inbounds nuw i8, ptr %.promoted47.i297, i64 1
  store ptr %i.xi, ptr %i.e, align 8, !alias.scope !527, !noalias !528, !captures !32
  store i64 0, ptr %i.l, align 8, !alias.scope !527, !noalias !528
  %i.xj = load i8, ptr %.promoted47.i297, align 1, !noalias !530, !noundef !5
  %i.xk = zext i8 %i.xj to i64
  %i.xl = shl nuw nsw i64 %i.xk, %i.wa
  %i.xm = or i64 %i.xl, %.promoted.i296           ; 6 uses
  store i64 %i.xm, ptr %i.c, align 8, !alias.scope !508, !noalias !512
  %indvars.iv.next913 = add nuw nsw i64 %i.wa, 8  ; 5 uses
  %i.xn = add nuw nsw i32 %i.vv, 8
  %i.xo = trunc nuw nsw i64 %indvars.iv.next913 to i32
  store i32 %i.xo, ptr %i.x, align 8, !alias.scope !508, !noalias !512
  %i.xp = icmp ugt i32 %i.vv, 6
  br i1 %i.xp, label %.critedge.i283, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.xq = and i64 %i.xm, 1023
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.xq
  %i.xs = load i16, ptr %i.xr, align 2, !alias.scope !505, !noalias !514, !noundef !5 ; 2 uses
  %i.xt = sext i16 %i.xs to i32                   ; 2 uses
  %i.xu = icmp sgt i16 %i.xs, -1
  br i1 %i.xu, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.xv = icmp ugt i32 %i.vv, 2
  br i1 %i.xv, label %.preheader.i301.1, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit

.preheader.i301.1:                                ; preds = %bb.bx, %bb.bz
  %.sroa.08.0.i302.1 = phi i32 [ %i.yi, %bb.bz ], [ %i.xt, %bb.bx ]
  %.sroa.05.0.i303.1 = phi i32 [ %i.yj, %bb.bz ], [ 10, %bb.bx ] ; 3 uses
  %i.xw = xor i32 %.sroa.08.0.i302.1, -1
  %i.xx = and i32 %.sroa.05.0.i303.1, 63
  %i.xy = zext nneg i32 %i.xx to i64
  %i.xz = lshr i64 %i.xm, %i.xy
  %i.ya = trunc i64 %i.xz to i32
  %i.yb = and i32 %i.ya, 1
  %i.yc = add nuw nsw i32 %i.yb, %i.xw            ; 2 uses
  %i.yd = zext nneg i32 %i.yc to i64              ; 2 uses
  %i.ye = icmp samesign ult i32 %i.yc, 576
  br i1 %i.ye, label %bb.by, label %.loopexit1602

bb.by:                                            ; preds = %.preheader.i301.1
  %i.yf = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.yd
  %i.yg = load i16, ptr %i.yf, align 2, !alias.scope !505, !noalias !514, !noundef !5 ; 2 uses
  %i.yh = icmp sgt i16 %i.yg, -1
  br i1 %i.yh, label %.critedge.i283.loopexit.loopexit1605, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.yi = sext i16 %i.yg to i32
  %i.yj = add i32 %.sroa.05.0.i303.1, 1
  %i.yk = add i32 %.sroa.05.0.i303.1, 2
  %i.yl = zext i32 %i.yk to i64
  %i.ym = icmp samesign ult i64 %indvars.iv.next913, %i.yl
  br i1 %i.ym, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit, label %.preheader.i301.1

bb.ca:                                            ; preds = %bb.bw
  %i.yn = lshr i32 %i.xt, 9
  %i.yo = add nsw i32 %i.yn, -1
  %i.yp = zext i32 %i.yo to i64
  %or.cond.i304.1 = icmp samesign ugt i64 %indvars.iv.next913, %i.yp
  br i1 %or.cond.i304.1, label %.critedge.i283.loopexit1002.split.loop.exit, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit

.critedge.i283.loopexit.loopexit1605:             ; preds = %bb.by
  %i.yq = trunc nuw nsw i64 %indvars.iv.next913 to i32
  br label %.critedge.i283

.critedge.i283.loopexit1002.split.loop.exit:      ; preds = %bb.ca, %bb.bs
  %indvars.iv912.lcssa1509 = phi i64 [ %i.wa, %bb.bs ], [ %indvars.iv.next913, %bb.ca ]
  %.lcssa1505 = phi i64 [ %.promoted.i296, %bb.bs ], [ %i.xm, %bb.ca ]
  %i.yr = trunc nuw nsw i64 %indvars.iv912.lcssa1509 to i32
  br label %.critedge.i283

.critedge.i283:                                   ; preds = %bb.bv, %.critedge.i283.loopexit.loopexit1605, %bb.bt, %.critedge.i283.loopexit1002.split.loop.exit, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i293, %..critedge_crit_edge.i281
  %i.ys = phi i32 [ %i.vv, %..critedge_crit_edge.i281 ], [ %i.vv, %bb.bt ], [ %i.wo, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i293 ], [ %i.yr, %.critedge.i283.loopexit1002.split.loop.exit ], [ %i.yq, %.critedge.i283.loopexit.loopexit1605 ], [ %i.xn, %bb.bv ]
  %i.yt = phi i64 [ %.pre.i282, %..critedge_crit_edge.i281 ], [ %.promoted.i296, %bb.bt ], [ %i.wn, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i293 ], [ %.lcssa1505, %.critedge.i283.loopexit1002.split.loop.exit ], [ %i.xm, %.critedge.i283.loopexit.loopexit1605 ], [ %i.xm, %bb.bv ] ; 3 uses
  %i.yu = and i64 %i.yt, 1023
  %i.yv = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.yu
  %i.yw = load i16, ptr %i.yv, align 2, !alias.scope !505, !noalias !514, !noundef !5 ; 2 uses
  %i.yx = sext i16 %i.yw to i32                   ; 3 uses
  %i.yy = icmp sgt i16 %i.yw, -1
  br i1 %i.yy, label %bb.cb, label %.preheader731

bb.cb:                                            ; preds = %.critedge.i283
  %i.yz = lshr i32 %i.yx, 9
  %i.za = and i32 %i.yx, 511
  br label %bb.cd

.preheader731:                                    ; preds = %.critedge.i283, %bb.cc
  %.sroa.03.0.i.i284 = phi i8 [ %i.zo, %bb.cc ], [ 10, %.critedge.i283 ] ; 3 uses
  %.sroa.0.0.i30.i285 = phi i32 [ %i.zn, %bb.cc ], [ %i.yx, %.critedge.i283 ]
  %i.zb = xor i32 %.sroa.0.0.i30.i285, -1
  %i.zc = and i8 %.sroa.03.0.i.i284, 63
  %i.zd = zext nneg i8 %i.zc to i64
  %i.ze = lshr i64 %i.yt, %i.zd
  %i.zf = trunc i64 %i.ze to i32
  %i.zg = and i32 %i.zf, 1
  %i.zh = add nuw nsw i32 %i.zg, %i.zb            ; 2 uses
  %i.zi = icmp samesign ult i32 %i.zh, 576
  br i1 %i.zi, label %bb.cc, label %.thread.i.i286

.thread.i.i286:                                   ; preds = %.preheader731
  %i.zj = add i8 %.sroa.03.0.i.i284, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i287

bb.cc:                                            ; preds = %.preheader731
  %i.zk = zext nneg i32 %i.zh to i64
  %i.zl = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.zk
  %i.zm = load i16, ptr %i.zl, align 2, !alias.scope !531, !noalias !514, !noundef !5 ; 2 uses
  %i.zn = sext i16 %i.zm to i32                   ; 2 uses
  %i.zo = add i8 %.sroa.03.0.i.i284, 1            ; 2 uses
  %i.zp = icmp sgt i16 %i.zm, -1
  br i1 %i.zp, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i287, label %.preheader731

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i287: ; preds = %bb.cc, %.thread.i.i286
  %i.zq = phi i8 [ %i.zj, %.thread.i.i286 ], [ %i.zo, %bb.cc ]
  %.sroa.06.011.i.i288 = phi i32 [ 32767, %.thread.i.i286 ], [ %i.zn, %bb.cc ]
  %i.zr = zext i8 %i.zq to i32
  br label %bb.cd

bb.cd:                                            ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i287, %bb.cb
  %.sroa.018.0.i289 = phi i32 [ %i.yz, %bb.cb ], [ %i.zr, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i287 ] ; 2 uses
  %.sroa.013.0.i290 = phi i32 [ %i.za, %bb.cb ], [ %.sroa.06.011.i.i288, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i287 ] ; 5 uses
  %i.zs = and i32 %.sroa.018.0.i289, 63
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = lshr i64 %i.yt, %i.zt
  store i64 %i.zu, ptr %i.c, align 8, !alias.scope !508, !noalias !512
  %i.zv = sub i32 %i.ys, %.sroa.018.0.i289
  store i32 %i.zv, ptr %i.x, align 8, !alias.scope !508, !noalias !512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  store i32 %.sroa.013.0.i290, ptr %i.y, align 4, !alias.scope !539, !noalias !540
  %i.zw = icmp samesign ult i32 %.sroa.013.0.i290, 16
  br i1 %i.zw, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.zx = icmp eq i32 %.sroa.013.0.i290, 16
  %i.zy = icmp eq i32 %i.dt, 0
  %or.cond.i.i = and i1 %i.zy, %i.zx
  br i1 %or.cond.i.i, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !541
  store <4 x i8> <i8 2, i8 3, i8 7, i8 0>, ptr %8, align 4, !noalias !541
  %i.zz = and i32 %.sroa.013.0.i290, 3
  %i.aaa = zext nneg i32 %i.zz to i64
  %i.aab = getelementptr inbounds nuw i8, ptr %8, i64 %i.aaa
  %i.aac = load i8, ptr %i.aab, align 1, !noalias !541, !noundef !5
  store i8 %i.aac, ptr %i.ab, align 4, !alias.scope !539, !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !541
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit

bb.cg:                                            ; preds = %bb.cd
  %i.aad = and i32 %i.dt, 511
  %i.aae = zext nneg i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 %i.aae
  %i.aag = trunc nuw nsw i32 %.sroa.013.0.i290 to i8
  store i8 %i.aag, ptr %i.aaf, align 1, !alias.scope !542, !noalias !543
  %i.aah = add nuw nsw i32 %i.dt, 1
  store i32 %i.aah, ptr %i.z, align 8, !alias.scope !539, !noalias !540
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit: ; preds = %.loopexit.i299, %bb.bz, %bb.ca, %bb.bx, %bb.ce, %bb.cf, %bb.cg
  %.sroa.4.0.i.pn.i291 = phi i8 [ 32, %bb.ce ], [ undef, %bb.cg ], [ 11, %bb.cf ], [ %..i.i363, %bb.bx ], [ %..i.i363, %bb.ca ], [ %..i.i363, %bb.bz ], [ %..i.i363, %.loopexit.i299 ]
  %.sroa.0.0.i292 = phi i8 [ 1, %bb.ce ], [ 0, %bb.cg ], [ 1, %bb.cf ], [ 2, %bb.bx ], [ 2, %bb.ca ], [ 2, %bb.bz ], [ 2, %.loopexit.i299 ] ; 2 uses
  %i.aai = insertvalue { i8, i8 } poison, i8 %.sroa.0.0.i292, 0
  %i.aaj = insertvalue { i8, i8 } %i.aai, i8 %.sroa.4.0.i.pn.i291, 1
  br label %bb.cm

bb.ch:                                            ; preds = %bb.bo
  %i.aak = zext i16 %i.du to i64                  ; 3 uses
  %i.aal = icmp ult i16 %i.du, 289
  br i1 %i.aal, label %bb.cj, label %bb.ci, !prof !544

bb.ci:                                            ; preds = %bb.ch
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aak, i64 noundef 288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #10
  unreachable

bb.cj:                                            ; preds = %bb.ch
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.ap, i64 noundef %i.aak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.aak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13)
  %i.aam = load i16, ptr %i.an, align 8, !noundef !5 ; 2 uses
  %i.aan = load i16, ptr %i.ao, align 2, !noundef !5 ; 2 uses
  %i.aao = add i16 %i.aan, %i.aam
  %i.aap = and i16 %i.aam, 511                    ; 2 uses
  %i.aaq = zext nneg i16 %i.aap to i64            ; 3 uses
  %i.aar = and i16 %i.aao, 511                    ; 2 uses
  %i.aas = zext nneg i16 %i.aar to i64            ; 2 uses
  %i.aat = icmp samesign ult i16 %i.aar, %i.aap
  br i1 %i.aat, label %bb.ck, label %bb.cl, !prof !106

bb.ck:                                            ; preds = %bb.cj
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.aaq, i64 noundef %i.aas, i64 noundef 512, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #10
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.aau = and i16 %i.aan, 31
  %i.aav = zext nneg i16 %i.aau to i64
  %i.aaw = sub nuw nsw i64 %i.aas, %i.aaq
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aaq
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.aq, i64 noundef %i.aav, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aax, i64 noundef %i.aaw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.aay = load i8, ptr %i.ar, align 1, !noundef !5
  %i.aaz = add i8 %i.aay, -1
  store i8 %i.aaz, ptr %i.ar, align 1
  %i.aba = call fastcc { i8, i8 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9init_tree(ptr noalias nofree noundef align 8 dereferenceable(10504) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) ; 2 uses
  %i.abb = extractvalue { i8, i8 } %i.aba, 0      ; 2 uses
  %.not125 = icmp eq i8 %i.abb, -1
  br i1 %.not125, label %.thread442, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit
  %.pn126 = phi { i8, i8 } [ %i.aaj, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit ], [ %i.aba, %bb.cl ] ; 2 uses
  %.sroa.058.0 = phi i8 [ %.sroa.0.0.i292, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit ], [ %i.abb, %bb.cl ]
  switch i8 %.sroa.058.0, label %.loopexit [
    i8 0, label %.preheader481
    i8 1, label %.split.loop.exit691
    i8 2, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit484
  ]

.split.loop.exit691:                              ; preds = %bb.cm
  %.sroa.9.1.le = extractvalue { i8, i8 } %.pn126, 1
  br label %.backedge.backedge

bb.cn:                                            ; preds = %._crit_edge.i.i
  %i.abc = sub nuw nsw i64 %i.ez, %i.ey
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ey
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.abd, i8 %.sroa.03.0.i.i, i64 %i.abc, i1 false), !alias.scope !104, !noalias !105
  %i.abe = trunc i64 %i.eo to i32
  %i.abf = add i32 %i.eq, %i.abe
  store i32 %i.abf, ptr %i.z, align 8, !alias.scope !102, !noalias !103
  br label %.backedge.backedge

.lr.ph1355:                                       ; preds = %.lr.ph, %bb.cz
  %i.abg = phi i64 [ %i.aeu, %bb.cz ], [ %i.bo, %.lr.ph ]
  %i.abh = phi i64 [ %i.aes, %bb.cz ], [ %.promoted678, %.lr.ph ] ; 7 uses
  %i.abi = phi i64 [ %i.aby, %bb.cz ], [ %i.bl, %.lr.ph ] ; 3 uses
  %i.abj = phi ptr [ %i.abx, %bb.cz ], [ %.promoted1138, %.lr.ph ] ; 4 uses
  %i.abk = phi i64 [ %i.abw, %bb.cz ], [ %.promoted1144, %.lr.ph ] ; 2 uses
  %i.abl = icmp ugt i64 %i.abg, 258
  %i.abm = icmp ugt i64 %i.abi, 13
  %or.cond471 = and i1 %i.abm, %i.abl
  br i1 %or.cond471, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %.lr.ph1355
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.abn = load i32, ptr %i.x, align 8, !alias.scope !545, !noalias !548, !noundef !5 ; 4 uses
  %i.abo = icmp ult i32 %i.abn, 30
  %.pre = load i64, ptr %i.c, align 8             ; 2 uses
  br i1 %i.abo, label %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit

_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit: ; preds = %bb.co
  %.sroa.02.0.copyload.i = load i32, ptr %i.abj, align 1, !noalias !550
  %i.abp = add i64 %i.abi, -4                     ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abj, i64 4
  %i.abr = zext i32 %.sroa.02.0.copyload.i to i64
  %i.abs = zext nneg i32 %i.abn to i64
  %i.abt = shl nuw nsw i64 %i.abr, %i.abs
  %i.abu = or i64 %.pre, %i.abt
  %i.abv = or disjoint i32 %i.abn, 32
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit: ; preds = %bb.co, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit
  %i.abw = phi i64 [ %i.abk, %bb.co ], [ %i.abp, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ] ; 6 uses
  %i.abx = phi ptr [ %i.abj, %bb.co ], [ %i.abq, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ] ; 6 uses
  %i.aby = phi i64 [ %i.abi, %bb.co ], [ %i.abp, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ] ; 3 uses
  %i.abz = phi i32 [ %i.abn, %bb.co ], [ %i.abv, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ]
  %i.aca = phi i64 [ %.pre, %bb.co ], [ %i.abu, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ] ; 3 uses
  %i.acb = and i64 %i.aca, 1023
  %i.acc = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.acb
  %i.acd = load i16, ptr %i.acc, align 2, !alias.scope !553, !noundef !5 ; 2 uses
  %i.ace = sext i16 %i.acd to i32                 ; 3 uses
  %i.acf = icmp sgt i16 %i.acd, -1
  br i1 %i.acf, label %bb.cq, label %.preheader735

.preheader735:                                    ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit, %bb.cp
  %.sroa.03.0.i.i305 = phi i8 [ %i.act, %bb.cp ], [ 10, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit ] ; 3 uses
  %.sroa.0.0.i.i = phi i32 [ %i.acs, %bb.cp ], [ %i.ace, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit ]
  %i.acg = xor i32 %.sroa.0.0.i.i, -1
  %i.ach = and i8 %.sroa.03.0.i.i305, 63
  %i.aci = zext nneg i8 %i.ach to i64
  %i.acj = lshr i64 %i.aca, %i.aci
  %i.ack = trunc i64 %i.acj to i32
  %i.acl = and i32 %i.ack, 1
  %i.acm = add nuw nsw i32 %i.acl, %i.acg         ; 2 uses
  %i.acn = icmp samesign ult i32 %i.acm, 576
  br i1 %i.acn, label %bb.cp, label %.thread.i.i306

.thread.i.i306:                                   ; preds = %.preheader735
  %i.aco = add i8 %.sroa.03.0.i.i305, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i307

bb.cp:                                            ; preds = %.preheader735
  %i.acp = zext nneg i32 %i.acm to i64
  %i.acq = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.acp
  %i.acr = load i16, ptr %i.acq, align 2, !alias.scope !556, !noundef !5 ; 2 uses
  %i.acs = sext i16 %i.acr to i32                 ; 2 uses
  %i.act = add i8 %.sroa.03.0.i.i305, 1           ; 2 uses
  %i.acu = icmp sgt i16 %i.acr, -1
  br i1 %i.acu, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i307, label %.preheader735

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i307: ; preds = %bb.cp, %.thread.i.i306
  %i.acv = phi i8 [ %i.aco, %.thread.i.i306 ], [ %i.act, %bb.cp ]
  %.sroa.06.011.i.i308 = phi i32 [ 32767, %.thread.i.i306 ], [ %i.acs, %bb.cp ]
  %i.acw = zext i8 %i.acv to i32
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit

bb.cq:                                            ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit
  %i.acx = lshr i32 %i.ace, 9
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit: ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i307, %bb.cq
  %.pn3.i = phi i32 [ %i.ace, %bb.cq ], [ %.sroa.06.011.i.i308, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i307 ] ; 3 uses
  %.pn1.i = phi i32 [ %i.acx, %bb.cq ], [ %i.acw, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i307 ] ; 2 uses
  store i32 %.pn3.i, ptr %i.z, align 8
  %i.acy = and i32 %.pn1.i, 63
  %i.acz = zext nneg i32 %i.acy to i64
  %i.ada = lshr i64 %i.aca, %i.acz                ; 4 uses
  store i64 %i.ada, ptr %i.c, align 8
  %i.adb = sub i32 %i.abz, %.pn1.i                ; 2 uses
  store i32 %i.adb, ptr %i.x, align 8
  %i.adc = and i32 %.pn3.i, 256
  %i.add = icmp eq i32 %i.adc, 0
  br i1 %i.add, label %bb.cs, label %.loopexit489

bb.cr:                                            ; preds = %.lr.ph1355
  store ptr %i.abj, ptr %i.e, align 8
  store i64 %i.abk, ptr %i.l, align 8
  store i64 %i.abh, ptr %i.p, align 8
  %i.ade = call fastcc { i8, i8 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15decompress_fast(ptr noalias nofree noundef align 8 dereferenceable(10504) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, i32 noundef %7, ptr noalias nofree noundef align 8 dereferenceable(24) %i.c, i64 noundef %storemerge) ; 2 uses
  %i.adf = extractvalue { i8, i8 } %i.ade, 0      ; 2 uses
  %i.adg = extractvalue { i8, i8 } %i.ade, 1      ; 2 uses
  %i.adh = icmp eq i8 %i.adf, 0
  br i1 %i.adh, label %.backedge.backedge, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

bb.cs:                                            ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit
  %i.adi = and i64 %i.ada, 1023
  %i.adj = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.adi
  %i.adk = load i16, ptr %i.adj, align 2, !alias.scope !559, !noundef !5 ; 2 uses
  %i.adl = sext i16 %i.adk to i32                 ; 3 uses
  %i.adm = icmp sgt i16 %i.adk, -1
  br i1 %i.adm, label %bb.cu, label %.preheader734

.preheader734:                                    ; preds = %bb.cs, %bb.ct
  %.sroa.03.0.i.i309 = phi i8 [ %i.aea, %bb.ct ], [ 10, %bb.cs ] ; 3 uses
  %.sroa.0.0.i.i310 = phi i32 [ %i.adz, %bb.ct ], [ %i.adl, %bb.cs ]
  %i.adn = xor i32 %.sroa.0.0.i.i310, -1
  %i.ado = and i8 %.sroa.03.0.i.i309, 63
  %i.adp = zext nneg i8 %i.ado to i64
  %i.adq = lshr i64 %i.ada, %i.adp
  %i.adr = trunc i64 %i.adq to i32
  %i.ads = and i32 %i.adr, 1
  %i.adt = add nuw nsw i32 %i.ads, %i.adn         ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress:bb.a
  %i.ait = zext i8 %i.ais to i32
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit.thread

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit.thread: ; preds = %bb.dl, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i326
  %.sroa.018.0.i328 = phi i32 [ %i.aib, %bb.dl ], [ %i.ait, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i326 ] ; 2 uses
  %.sroa.013.0.i329 = phi i32 [ %i.aic, %bb.dl ], [ %.sroa.06.011.i.i327, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i326 ]
  %i.aiu = and i32 %.sroa.018.0.i328, 63
  %i.aiv = zext nneg i32 %i.aiu to i64
  %i.aiw = lshr i64 %i.ahv, %i.aiv
  store i64 %i.aiw, ptr %i.c, align 8, !alias.scope !574, !noalias !578
  %i.aix = sub i32 %i.ahu, %.sroa.018.0.i328
  store i32 %i.aix, ptr %i.x, align 8, !alias.scope !574, !noalias !578
  store i32 %.sroa.013.0.i329, ptr %i.z, align 8, !alias.scope !600, !noalias !578
  br label %.backedge.backedge

bb.dn:                                            ; preds = %bb.q
  %.val146 = load i64, ptr %i.o, align 8, !noundef !5 ; 3 uses
  %.val147.a = load i64, ptr %i.p, align 8, !noundef !5 ; 5 uses
  %.not123 = icmp eq i64 %.val146, %.val147.a
  br i1 %.not123, label %.thread442, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.aiy = icmp ult i64 %.val147.a, %.val146
  br i1 %i.aiy, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit342, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.val147.a, i64 noundef %.val146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #10, !noalias !603
  unreachable

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit342: ; preds = %bb.do
  %i.aiz = trunc nuw i32 %i.fp to i8
  %i.aja = load ptr, ptr %i.d, align 8, !alias.scope !603, !nonnull !5, !noundef !5
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 %.val147.a
  store i8 %i.aiz, ptr %i.ajb, align 1, !noalias !603
  %i.ajc = add nuw i64 %.val147.a, 1
  store i64 %i.ajc, ptr %i.p, align 8, !alias.scope !603
  br label %.backedge.backedge

.loopexit490.loopexit:                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i
  store ptr %i.fz, ptr %i.e, align 8
  store i64 %i.fy, ptr %i.l, align 8
  br label %.loopexit490

.loopexit490:                                     ; preds = %bb.r, %.loopexit490.loopexit
  %i.ajd = phi i64 [ %i.gf, %.loopexit490.loopexit ], [ %.promoted10.i195, %bb.r ] ; 2 uses
  %.lcssa.i190 = phi i32 [ %i.gg, %.loopexit490.loopexit ], [ %.promoted.i186, %bb.r ]
  %i.aje = and i32 %i.fs, 63
  %i.ajf = zext nneg i32 %i.aje to i64            ; 2 uses
  %notmask.i191 = shl nsw i64 -1, %i.ajf
  %i.ajg = xor i64 %notmask.i191, -1
  %i.ajh = and i64 %i.ajd, %i.ajg
  %i.aji = lshr i64 %i.ajd, %i.ajf
  store i64 %i.aji, ptr %i.c, align 8, !alias.scope !121, !noalias !124
  %i.ajj = sub nuw i32 %.lcssa.i190, %i.fs
  store i32 %i.ajj, ptr %i.x, align 8, !alias.scope !121, !noalias !124
  %i.ajk = trunc i64 %i.ajh to i32
  %i.ajl = load i32, ptr %i.z, align 8, !alias.scope !606, !noalias !124, !noundef !5
  %i.ajm = add i32 %i.ajl, %i.ajk
  store i32 %i.ajm, ptr %i.z, align 8, !alias.scope !606, !noalias !124
  br label %.backedge.backedge

.loopexit.i.1:                                    ; preds = %bb.ab, %bb.ae, %bb.ad, %.loopexit.i
  %.lcssa1415 = phi i64 [ %i.gk, %.loopexit.i ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.ab ]
  store i64 %.lcssa1415, ptr %i.l, align 8
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

.loopexit494:                                     ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i
  store ptr %i.lc, ptr %i.e, align 8
  store i64 %i.lb, ptr %i.l, align 8
  br label %bb.dq

bb.dq:                                            ; preds = %.loopexit494, %.._crit_edge_crit_edge.i207
  %i.ajn = phi i64 [ %.pre.i208, %.._crit_edge_crit_edge.i207 ], [ %i.li, %.loopexit494 ] ; 2 uses
  %.lcssa.i210 = phi i32 [ %.promoted.i206, %.._crit_edge_crit_edge.i207 ], [ %i.lj, %.loopexit494 ]
  %i.ajo = and i32 %i.kv, 63
  %i.ajp = zext nneg i32 %i.ajo to i64            ; 2 uses
  %notmask.i211 = shl nsw i64 -1, %i.ajp
  %i.ajq = xor i64 %notmask.i211, -1
  %i.ajr = and i64 %i.ajn, %i.ajq
  %i.ajs = lshr i64 %i.ajn, %i.ajp
  store i64 %i.ajs, ptr %i.c, align 8, !alias.scope !178, !noalias !181
  %i.ajt = sub nuw i32 %.lcssa.i210, %i.kv
  store i32 %i.ajt, ptr %i.x, align 8, !alias.scope !178, !noalias !181
  %i.aju = trunc i64 %i.ajr to i32
  %i.ajv = load i32, ptr %i.y, align 4, !alias.scope !609, !noalias !181, !noundef !5
  %i.ajw = add i32 %i.ajv, %i.aju
  store i32 %i.ajw, ptr %i.y, align 4, !alias.scope !609, !noalias !181
  br label %.backedge.backedge

._crit_edge:                                      ; preds = %bb.ak
  store i64 %i.li, ptr %i.c, align 8, !alias.scope !612, !noalias !613
  store i32 %i.lj, ptr %i.x, align 8, !alias.scope !614, !noalias !615
  br label %.lr.ph.i214._crit_edge

.lr.ph.i214._crit_edge:                           ; preds = %.lr.ph.i214, %._crit_edge
  store i64 0, ptr %i.l, align 8
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

.._crit_edge_crit_edge.i221:                      ; preds = %bb.al, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss4_0E0EB6_.exit.i
  %i.ajx = phi i64 [ %i.ls, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss4_0E0EB6_.exit.i ], [ %.promoted10.i228, %bb.al ] ; 2 uses
  %.lcssa.i224 = phi i32 [ %i.lt, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss4_0E0EB6_.exit.i ], [ %.promoted.i220, %bb.al ]
  %i.ajy = lshr i64 %i.ajx, 8
  store i64 %i.ajy, ptr %i.c, align 8, !alias.scope !201, !noalias !204
  %i.ajz = add i32 %.lcssa.i224, -8
  store i32 %i.ajz, ptr %i.x, align 8, !alias.scope !201, !noalias !204
  %i.aka = trunc i64 %i.ajx to i32
  %i.akb = and i32 %i.aka, 255
  store i32 %i.akb, ptr %i.y, align 4, !alias.scope !616, !noalias !204
  br label %.backedge.backedge

bb.dr:                                            ; preds = %bb.am
  %i.akc = load i32, ptr %i.y, align 4, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.akd = icmp ult i64 %.val159.a, %.val158.a
  br i1 %i.akd, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit343, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.val159.a, i64 noundef %.val158.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #10, !noalias !619
  unreachable

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit343: ; preds = %bb.dr
  %i.ake = trunc i32 %i.akc to i8
  %i.akf = load ptr, ptr %i.d, align 8, !alias.scope !619, !nonnull !5, !noundef !5
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 %.val159.a
  store i8 %i.ake, ptr %i.akg, align 1, !noalias !619
  %i.akh = add nuw i64 %.val159.a, 1
  store i64 %i.akh, ptr %i.p, align 8, !alias.scope !619
  %i.aki = load i32, ptr %i.z, align 8, !noundef !5
  %i.akj = add i32 %i.aki, -1                     ; 2 uses
  store i32 %i.akj, ptr %i.z, align 8
  %i.akk = icmp eq i32 %i.akj, 0
  %i.akl = load i32, ptr %i.x, align 8
  %i.akm = icmp eq i32 %i.akl, 0
  %or.cond12 = select i1 %i.akk, i1 true, i1 %i.akm
  %.138 = select i1 %or.cond12, i8 6, i8 17
  br label %.backedge.backedge

bb.dt:                                            ; preds = %bb.an
  %i.akn = sub i64 %.val156.a, %i.lw
  %i.ako = sub i64 %i.lw, %i.bj
  %i.akp = and i64 %i.ako, %storemerge
  %i.akq = zext i32 %i.lv to i64
  %..i344 = tail call noundef i64 @llvm.umin.i64(i64 %i.akq, i64 %i.akn) ; 3 uses
  tail call fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core8transfer(ptr noalias nofree noundef nonnull %i.bk, i64 noundef %.val156.a, i64 noundef %i.akp, i64 noundef %i.lw, i64 noundef %..i344, i64 noundef %storemerge) #11
  %i.akr = add i64 %..i344, %i.lw                 ; 2 uses
  %i.aks = trunc nuw i64 %..i344 to i32           ; 2 uses
  %i.akt = sub i32 %i.lv, %i.aks                  ; 2 uses
  store i32 %i.akt, ptr %i.z, align 8
  %i.aku = icmp eq i32 %i.lv, %i.aks
  br i1 %i.aku, label %.loopexit497, label %bb.an

bb.du:                                            ; preds = %bb.ao
  %i.akv = load i32, ptr %i.x, align 8, !alias.scope !622, !noundef !5 ; 3 uses
  %.pre.i.i345 = load i64, ptr %i.c, align 8, !alias.scope !625, !noalias !628
  %i.akw = and i32 %i.akv, -8
  %i.akx = load i64, ptr %i.l, align 8, !alias.scope !630, !noundef !5
  %i.aky = sub i64 %3, %i.akx                     ; 2 uses
  %i.akz = trunc i64 %i.aky to i32
  %i.ala = lshr i32 %i.akv, 3
  %..i.i346 = tail call noundef range(i32 0, 536870912) i32 @llvm.umin.i32(i32 %i.akz, i32 range(i32 0, 536870912) %i.ala) ; 2 uses
  %i.alb = shl nuw i32 %..i.i346, 3
  %i.alc = sub i32 %i.akw, %i.alb                 ; 2 uses
  store i32 %i.alc, ptr %i.x, align 8, !alias.scope !633
  %i.ald = zext nneg i32 %..i.i346 to i64
  %i.ale = sub i64 %i.aky, %i.ald                 ; 4 uses
  %i.alf = icmp ugt i64 %i.ale, %3
  br i1 %i.alf, label %bb.dw, label %bb.dv, !prof !106

bb.dv:                                            ; preds = %bb.du
  %i.alg = and i32 %i.akv, 7
  %i.alh = zext nneg i32 %i.alg to i64
  %i.ali = lshr i64 %.pre.i.i345, %i.alh
  %i.alj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ale
  %gepdiff = sub nuw nsw i64 %3, %i.ale
  store ptr %i.alj, ptr %i.e, align 8
  store i64 %gepdiff, ptr %i.l, align 8
  %i.alk = and i32 %i.alc, 56
  %i.all = zext nneg i32 %i.alk to i64
  %notmask = shl nsw i64 -1, %i.all
  %i.alm = xor i64 %notmask, -1
  %i.aln = and i64 %i.ali, %i.alm
  store i64 %i.aln, ptr %i.c, align 8
  br i1 %i.ah, label %.backedge.backedge, label %bb.dx

bb.dw:                                            ; preds = %bb.du
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ale, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #10
  unreachable

bb.dx:                                            ; preds = %bb.dv
  store i32 0, ptr %i.z, align 8
  br label %.backedge.backedge

bb.dy:                                            ; preds = %bb.ap
  %i.alo = icmp samesign ugt i32 %i.ma, 285
  br i1 %i.alo, label %.backedge.backedge, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.alp = add i32 %i.lz, 31
  %i.alq = and i32 %i.alp, 31                     ; 2 uses
  %i.alr = zext nneg i32 %i.alq to i64            ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr @18, i64 %i.alr
  %i.alt = load i8, ptr %i.als, align 1, !noundef !5
  store i8 %i.alt, ptr %i.ab, align 4
  %10 = getelementptr inbounds nuw [2 x i8], ptr @19, i64 %i.alr
  %i.alu = load i16, ptr %10, align 2, !noundef !5
  %i.alv = zext i16 %i.alu to i32
  store i32 %i.alv, ptr %i.z, align 8
  %i.alw = add nsw i32 %i.alq, -28
  %i.alx = icmp ult i32 %i.alw, -20
  %spec.select = select i1 %i.alx, i8 15, i8 14
  br label %.backedge.backedge

bb.ea:                                            ; preds = %bb.aq
  %i.aly = load ptr, ptr %i.d, align 8, !alias.scope !636, !nonnull !5, !noundef !5
  %i.alz = load i64, ptr %i.o, align 8, !alias.scope !636, !noundef !5 ; 3 uses
  %i.ama = icmp ult i64 %i.alz, %i.md
  br i1 %i.ama, label %.backedge.backedge, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.amb = load i32, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %i.amc = zext i32 %i.amb to i64                 ; 3 uses
  %i.amd = add i64 %i.me, %i.amc                  ; 2 uses
  %i.ame = icmp ugt i64 %i.amd, %i.alz
  br i1 %i.ame, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.amf = sub i64 %i.me, %i.md
  %i.amg = and i64 %i.amf, %storemerge            ; 2 uses
  %.not = icmp uge i64 %i.amg, %i.me
  %i.amh = sub nuw i64 %i.amg, %i.me
  %i.ami = icmp ult i64 %i.amh, %i.amc
  %or.cond141 = select i1 %.not, i1 %i.ami, i1 false
  br i1 %or.cond141, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.amj = icmp eq i32 %i.amb, 0
  %.139 = select i1 %i.amj, i8 12, i8 19
  br label %.backedge.backedge

bb.ee:                                            ; preds = %bb.ec
  tail call fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11apply_match(ptr noalias nofree noundef nonnull %i.aly, i64 noundef %i.alz, i64 noundef %i.me, i64 noundef %i.md, i64 noundef %i.amc, i64 noundef %storemerge) #11
  store i64 %i.amd, ptr %i.p, align 8, !alias.scope !639
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.bo, %._crit_edge.i, %bb.ee, %bb.ea, %bb.aq, %bb.ed, %bb.ap, %bb.dy, %bb.dz, %bb.dx, %bb.ao, %bb.dv, %bb.ah, %bb.ai, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit342, %bb.q, %bb.cy, %bb.cr, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit.thread, %.loopexit489, %.split.loop.exit691, %bb.k, %bb.bh, %._crit_edge1369, %bb.au, %bb.av, %bb.j, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit.split.loop.exit, %bb.c, %bb.ar, %bb.as, %bb.at, %_RNvXs5_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsjkkKzr5dxZe_11miniz_oxide.exit, %._crit_edge709, %bb.cn, %.loopexit490, %bb.dq, %.._crit_edge_crit_edge.i221, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit343, %.loopexit479, %.loopexit497, %.loopexit499
  %.sroa.0.0.be = phi i8 [ %., %bb.c ], [ 2, %bb.ar ], [ %..i.i.i, %bb.as ], [ 24, %.loopexit499 ], [ 5, %bb.at ], [ 4, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit ], [ %.136, %bb.av ], [ 6, %_RNvXs5_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsjkkKzr5dxZe_11miniz_oxide.exit ], [ %.137, %._crit_edge709 ], [ %.sroa.851.1.le695, %.loopexit479 ], [ 7, %bb.bh ], [ 10, %bb.cn ], [ 25, %._crit_edge.i ], [ 21, %.loopexit489 ], [ 15, %.loopexit490 ], [ 21, %bb.q ], [ 22, %bb.dq ], [ 18, %.._crit_edge_crit_edge.i221 ], [ %.138, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit343 ], [ 12, %.loopexit497 ], [ %..i31.i, %bb.ai ], [ 24, %bb.dv ], [ 33, %bb.dy ], [ 8, %bb.j ], [ 30, %bb.ea ], [ %i.mo, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit.split.loop.exit ], [ 20, %bb.au ], [ 31, %._crit_edge1369 ], [ 20, %bb.k ], [ %.sroa.9.1.le, %.split.loop.exit691 ], [ 13, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit.thread ], [ %i.adg, %bb.cr ], [ 21, %bb.cy ], [ 12, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit342 ], [ 34, %bb.ah ], [ 23, %bb.dx ], [ 3, %bb.ao ], [ %spec.select, %bb.dz ], [ 20, %bb.ap ], [ 12, %bb.ee ], [ %.139, %bb.ed ], [ 30, %bb.aq ], [ 26, %bb.bo ]
  br label %.backedge

bb.ef:                                            ; preds = %.lr.ph1353
  %.not.i.not.i347 = icmp eq i64 %.promoted645, 0
  br i1 %.not.i.not.i347, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.amk = add i64 %.promoted645, -1
  %i.aml = getelementptr inbounds nuw i8, ptr %.promoted642.a, i64 1
  %i.amm = load i8, ptr %.promoted642.a, align 1, !noalias !642, !noundef !5
  %i.amn = shl i32 %.promoted649, 8
  %i.amo = zext i8 %i.amm to i32
  %i.amp = or disjoint i32 %i.amn, %i.amo
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit

bb.eh:                                            ; preds = %.lr.ph1353
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.amq = icmp ult i32 %.promoted638, 8
  br i1 %i.amq, label %.lr.ph.i358, label %._crit_edge.i354

.lr.ph.i358:                                      ; preds = %bb.eh
  %.not.i.not.i.i362 = icmp eq i64 %.promoted645, 0
  br i1 %.not.i.not.i.i362, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i

._crit_edge.i354:                                 ; preds = %bb.eh, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i
  %.promoted12.i361647 = phi i64 [ %i.amz, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i ], [ %.promoted645, %bb.eh ]
  %i.amr = phi ptr [ %i.ana, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i ], [ %.promoted642.a, %bb.eh ]
  %i.ams = phi i64 [ %i.anf, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i ], [ %.promoted639, %bb.eh ] ; 2 uses
  %.lcssa.i355 = phi i32 [ %i.ang, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i ], [ %.promoted638, %bb.eh ]
  %i.amt = lshr i64 %i.ams, 8                     ; 2 uses
  store i64 %i.amt, ptr %i.c, align 8, !alias.scope !649, !noalias !652
  %i.amu = add i32 %.lcssa.i355, -8               ; 2 uses
  store i32 %i.amu, ptr %i.x, align 8, !alias.scope !649, !noalias !652
  %i.amv = shl i32 %.promoted649, 8
  %i.amw = trunc i64 %i.ams to i32
  %i.amx = and i32 %i.amw, 255
  %i.amy = or disjoint i32 %i.amv, %i.amx
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i: ; preds = %.lr.ph.i358
  %i.amz = add i64 %.promoted645, -1
  %i.ana = getelementptr inbounds nuw i8, ptr %.promoted642.a, i64 1
  %i.anb = load i8, ptr %.promoted642.a, align 1, !noalias !655, !noundef !5
  %i.anc = zext i8 %i.anb to i64
  %i.and = zext nneg i32 %.promoted638 to i64
  %i.ane = shl nuw nsw i64 %i.anc, %i.and
  %i.anf = or i64 %i.ane, %.promoted639
  %i.ang = or disjoint i32 %.promoted638, 8
  br label %._crit_edge.i354

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit: ; preds = %._crit_edge.i354, %bb.eg
  %.sink = phi i32 [ %i.amy, %._crit_edge.i354 ], [ %i.amp, %bb.eg ] ; 3 uses
  %.promoted12.i361646 = phi i64 [ %.promoted12.i361647, %._crit_edge.i354 ], [ %i.amk, %bb.eg ] ; 6 uses
  %i.anh = phi ptr [ %i.amr, %._crit_edge.i354 ], [ %i.aml, %bb.eg ] ; 6 uses
  %.promoted10.i359640 = phi i64 [ %i.amt, %._crit_edge.i354 ], [ %.promoted639, %bb.eg ] ; 3 uses
  %i.ani = phi i32 [ %i.amu, %._crit_edge.i354 ], [ 0, %bb.eg ] ; 5 uses
  store i32 %.sink, ptr %i.ac, align 4, !noalias !5
  %i.anj = add nuw nsw i32 %.promoted, 1
  store i32 %i.anj, ptr %i.z, align 8, !noalias !5
  %.not1610 = icmp eq i32 %.promoted, 3
  br i1 %.not1610, label %.loopexit499, label %bb.ei

bb.ei:                                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit
  %i.ank = icmp eq i32 %i.ani, 0
  br i1 %i.ank, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.anl = icmp ult i32 %i.ani, 8
  br i1 %i.anl, label %.lr.ph.i358.1, label %._crit_edge.i354.1

.lr.ph.i358.1:                                    ; preds = %bb.ej
  %.not.i.not.i.i362.1 = icmp eq i64 %.promoted12.i361646, 0
  br i1 %.not.i.not.i.i362.1, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1: ; preds = %.lr.ph.i358.1
  %i.anm = add i64 %.promoted12.i361646, -1
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anh, i64 1
  %i.ano = load i8, ptr %i.anh, align 1, !noalias !664, !noundef !5
  %i.anp = zext i8 %i.ano to i64
  %i.anq = zext nneg i32 %i.ani to i64
  %i.anr = shl nuw nsw i64 %i.anp, %i.anq
  %i.ans = or i64 %i.anr, %.promoted10.i359640
  %i.ant = or disjoint i32 %i.ani, 8
  br label %._crit_edge.i354.1

._crit_edge.i354.1:                               ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1, %bb.ej
  %.promoted12.i361647.1 = phi i64 [ %i.anm, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1 ], [ %.promoted12.i361646, %bb.ej ]
  %i.anu = phi ptr [ %i.ann, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1 ], [ %i.anh, %bb.ej ]
  %i.anv = phi i64 [ %i.ans, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1 ], [ %.promoted10.i359640, %bb.ej ] ; 2 uses
  %.lcssa.i355.1 = phi i32 [ %i.ant, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1 ], [ %i.ani, %bb.ej ]
  %i.anw = lshr i64 %i.anv, 8                     ; 2 uses
  store i64 %i.anw, ptr %i.c, align 8, !alias.scope !662, !noalias !652
  %i.anx = add i32 %.lcssa.i355.1, -8             ; 2 uses
  store i32 %i.anx, ptr %i.x, align 8, !alias.scope !662, !noalias !652
  %i.any = shl i32 %.sink, 8
  %i.anz = trunc i64 %i.anv to i32
  %i.aoa = and i32 %i.anz, 255
  %i.aob = or disjoint i32 %i.any, %i.aoa
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.1

bb.ek:                                            ; preds = %bb.ei
  %.not.i.not.i347.1 = icmp eq i64 %.promoted12.i361646, 0
  br i1 %.not.i.not.i347.1, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aoc = add i64 %.promoted12.i361646, -1
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anh, i64 1
  %i.aoe = load i8, ptr %i.anh, align 1, !noalias !642, !noundef !5
  %i.aof = shl i32 %.sink, 8
  %i.aog = zext i8 %i.aoe to i32
  %i.aoh = or disjoint i32 %i.aof, %i.aog
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.1

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.1: ; preds = %bb.el, %._crit_edge.i354.1
  %.sink.1 = phi i32 [ %i.aob, %._crit_edge.i354.1 ], [ %i.aoh, %bb.el ] ; 3 uses
  %.promoted12.i361646.1 = phi i64 [ %.promoted12.i361647.1, %._crit_edge.i354.1 ], [ %i.aoc, %bb.el ] ; 6 uses
  %i.aoi = phi ptr [ %i.anu, %._crit_edge.i354.1 ], [ %i.aod, %bb.el ] ; 6 uses
  %.promoted10.i359640.1 = phi i64 [ %i.anw, %._crit_edge.i354.1 ], [ %.promoted10.i359640, %bb.el ] ; 3 uses
  %i.aoj = phi i32 [ %i.anx, %._crit_edge.i354.1 ], [ 0, %bb.el ] ; 5 uses
  store i32 %.sink.1, ptr %i.ac, align 4, !noalias !5
  %i.aok = add nuw nsw i32 %.promoted, 2
  store i32 %i.aok, ptr %i.z, align 8, !noalias !5
  %i.aol = icmp ult i32 %.promoted, 2
  br i1 %i.aol, label %bb.em, label %.loopexit499

bb.em:                                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.1
  %i.aom = icmp eq i32 %i.aoj, 0
  br i1 %i.aom, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.aon = icmp ult i32 %i.aoj, 8
  br i1 %i.aon, label %.lr.ph.i358.2, label %._crit_edge.i354.2

.lr.ph.i358.2:                                    ; preds = %bb.en
  %.not.i.not.i.i362.2 = icmp eq i64 %.promoted12.i361646.1, 0
  br i1 %.not.i.not.i.i362.2, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2: ; preds = %.lr.ph.i358.2
  %i.aoo = add i64 %.promoted12.i361646.1, -1
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoi, i64 1
  %i.aoq = load i8, ptr %i.aoi, align 1, !noalias !667, !noundef !5
  %i.aor = zext i8 %i.aoq to i64
  %i.aos = zext nneg i32 %i.aoj to i64
  %i.aot = shl nuw nsw i64 %i.aor, %i.aos
  %i.aou = or i64 %i.aot, %.promoted10.i359640.1
  %i.aov = or disjoint i32 %i.aoj, 8
  br label %._crit_edge.i354.2

._crit_edge.i354.2:                               ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2, %bb.en
  %.promoted12.i361647.2 = phi i64 [ %i.aoo, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2 ], [ %.promoted12.i361646.1, %bb.en ]
  %i.aow = phi ptr [ %i.aop, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2 ], [ %i.aoi, %bb.en ]
  %i.aox = phi i64 [ %i.aou, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2 ], [ %.promoted10.i359640.1, %bb.en ] ; 2 uses
  %.lcssa.i355.2 = phi i32 [ %i.aov, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2 ], [ %i.aoj, %bb.en ]
  %i.aoy = lshr i64 %i.aox, 8                     ; 2 uses
  store i64 %i.aoy, ptr %i.c, align 8, !alias.scope !665, !noalias !652
  %i.aoz = add i32 %.lcssa.i355.2, -8             ; 2 uses
  store i32 %i.aoz, ptr %i.x, align 8, !alias.scope !665, !noalias !652
end_hunk_3
begin_hunk_4_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15decompress_fast:bb.a
  %.sroa.23.0190 = phi i32 [ %.sroa.23.0.copyload, %.lr.ph.lr.ph ], [ %.sroa.23.6, %bb.ac ]
  %.sroa.45.0189 = phi i32 [ %.sroa.45.0.copyload, %.lr.ph.lr.ph ], [ %.sroa.45.1, %bb.ac ] ; 4 uses
  %.sroa.66.0188 = phi i8 [ %.sroa.66.0.copyload, %.lr.ph.lr.ph ], [ %i.fg, %bb.ac ] ; 3 uses
  %i.o = phi i64 [ %.promoted171, %.lr.ph.lr.ph ], [ %i.gi, %bb.ac ]
  %i.p = phi i64 [ %.promoted, %.lr.ph.lr.ph ], [ %i.fn, %bb.ac ] ; 2 uses
  %.promoted157178187 = phi ptr [ %.promoted172, %.lr.ph.lr.ph ], [ %.promoted157174, %bb.ac ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.promoted157177 = phi ptr [ %.promoted157178187, %.lr.ph ], [ %.promoted157176, %bb.n ]
  %i.q = phi i64 [ %i.p, %.lr.ph ], [ %i.ac, %bb.n ]
  %i.r = phi i64 [ %i.o, %.lr.ph ], [ %i.cs, %bb.n ] ; 6 uses
  %.sroa.0.1160 = phi i64 [ %.sroa.0.0191, %.lr.ph ], [ %i.ch, %bb.n ] ; 2 uses
  %.sroa.23.1159 = phi i32 [ %.sroa.23.0190, %.lr.ph ], [ %i.ci, %bb.n ] ; 4 uses
  %i.s = phi i64 [ %i.p, %.lr.ph ], [ %i.ae, %bb.n ] ; 2 uses
  %i.t = phi ptr [ %.promoted157178187, %.lr.ph ], [ %i.ad, %bb.n ] ; 3 uses
  %i.u = icmp ult i32 %.sroa.23.1159, 30
  br i1 %i.u, label %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit, label %bb.c

_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  %.sroa.02.0.copyload.i = load i32, ptr %i.t, align 1, !noalias !694
  %i.v = add i64 %i.s, -4                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 3 uses
  store ptr %i.w, ptr %1, align 8, !alias.scope !694, !captures !32
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !694
  %i.x = zext i32 %.sroa.02.0.copyload.i to i64
  %i.y = zext nneg i32 %.sroa.23.1159 to i64
  %i.z = shl nuw nsw i64 %i.x, %i.y
  %i.aa = or i64 %i.z, %.sroa.0.1160
  %i.ab = or disjoint i32 %.sroa.23.1159, 32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit
  %.promoted157176 = phi ptr [ %i.w, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ], [ %.promoted157177, %bb.b ] ; 4 uses
  %i.ac = phi i64 [ %i.v, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ], [ %i.q, %bb.b ] ; 3 uses
  %i.ad = phi ptr [ %i.w, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ], [ %i.t, %bb.b ]
  %i.ae = phi i64 [ %i.v, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ], [ %i.s, %bb.b ] ; 2 uses
  %.sroa.23.2 = phi i32 [ %i.ab, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ], [ %.sroa.23.1159, %bb.b ]
  %.sroa.0.2 = phi i64 [ %i.aa, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ], [ %.sroa.0.1160, %bb.b ] ; 3 uses
  %i.af = and i64 %.sroa.0.2, 1023
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !noundef !5 ; 2 uses
  %i.ai = sext i16 %i.ah to i32                   ; 3 uses
  %i.aj = icmp sgt i16 %i.ah, -1
  br i1 %i.aj, label %bb.e, label %.preheader197

.preheader197:                                    ; preds = %bb.c, %bb.d
  %.sroa.03.0.i = phi i8 [ %i.ax, %bb.d ], [ 10, %bb.c ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %i.aw, %bb.d ], [ %i.ai, %bb.c ]
  %i.ak = xor i32 %.sroa.0.0.i, -1
  %i.al = and i8 %.sroa.03.0.i, 63
  %i.am = zext nneg i8 %i.al to i64
  %i.an = lshr i64 %.sroa.0.2, %i.am
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 1
  %i.aq = add nuw nsw i32 %i.ap, %i.ak            ; 2 uses
  %i.ar = icmp samesign ult i32 %i.aq, 576
  br i1 %i.ar, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %.preheader197
  %i.as = add i8 %.sroa.03.0.i, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit

bb.d:                                             ; preds = %.preheader197
  %i.at = zext nneg i32 %i.aq to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !alias.scope !697, !noundef !5 ; 2 uses
  %i.aw = sext i16 %i.av to i32                   ; 2 uses
  %i.ax = add i8 %.sroa.03.0.i, 1                 ; 2 uses
  %i.ay = icmp sgt i16 %i.av, -1
  br i1 %i.ay, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit, label %.preheader197

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit: ; preds = %bb.d, %.thread.i
  %i.az = phi i8 [ %i.as, %.thread.i ], [ %i.ax, %bb.d ]
  %.sroa.06.011.i = phi i32 [ 32767, %.thread.i ], [ %i.aw, %bb.d ]
  %i.ba = zext i8 %i.az to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bb = lshr i32 %i.ai, 9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit
  %.sroa.5.0 = phi i32 [ %i.bb, %bb.e ], [ %i.ba, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit ] ; 2 uses
  %.sroa.058.0 = phi i32 [ %i.ai, %bb.e ], [ %.sroa.06.011.i, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit ] ; 4 uses
  %i.bc = and i32 %.sroa.5.0, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = lshr i64 %.sroa.0.2, %i.bd              ; 4 uses
  %i.bf = sub i32 %.sroa.23.2, %.sroa.5.0         ; 2 uses
  %i.bg = and i32 %.sroa.058.0, 256
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bi = and i64 %i.be, 1023
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !noundef !5 ; 2 uses
  %i.bl = sext i16 %i.bk to i32                   ; 3 uses
  %i.bm = icmp sgt i16 %i.bk, -1
  br i1 %i.bm, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.g, %bb.h
  %.sroa.03.0.i92 = phi i8 [ %i.ca, %bb.h ], [ 10, %bb.g ] ; 3 uses
  %.sroa.0.0.i93 = phi i32 [ %i.bz, %bb.h ], [ %i.bl, %bb.g ]
  %i.bn = xor i32 %.sroa.0.0.i93, -1
  %i.bo = and i8 %.sroa.03.0.i92, 63
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = lshr i64 %i.be, %i.bp
  %i.br = trunc i64 %i.bq to i32
  %i.bs = and i32 %i.br, 1
  %i.bt = add nuw nsw i32 %i.bs, %i.bn            ; 2 uses
  %i.bu = icmp samesign ult i32 %i.bt, 576
  br i1 %i.bu, label %bb.h, label %.thread.i94

.thread.i94:                                      ; preds = %.preheader
  %i.bv = add i8 %.sroa.03.0.i92, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit96

bb.h:                                             ; preds = %.preheader
  %i.bw = zext nneg i32 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !alias.scope !700, !noundef !5 ; 2 uses
  %i.bz = sext i16 %i.by to i32                   ; 2 uses
  %i.ca = add i8 %.sroa.03.0.i92, 1               ; 2 uses
  %i.cb = icmp sgt i16 %i.by, -1
  br i1 %i.cb, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit96, label %.preheader

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit96: ; preds = %bb.h, %.thread.i94
  %i.cc = phi i8 [ %i.bv, %.thread.i94 ], [ %i.ca, %bb.h ]
  %.sroa.06.011.i95 = phi i32 [ 32767, %.thread.i94 ], [ %i.bz, %bb.h ]
  %i.cd = zext i8 %i.cc to i32
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ce = lshr i32 %i.bl, 9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit96
  %.sroa.560.0 = phi i32 [ %i.ce, %bb.i ], [ %i.cd, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit96 ] ; 2 uses
  %.sroa.059.0 = phi i32 [ %i.bl, %bb.i ], [ %.sroa.06.011.i95, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit96 ] ; 3 uses
  %i.cf = and i32 %.sroa.560.0, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = lshr i64 %i.be, %i.cg                   ; 3 uses
  %i.ci = sub i32 %i.bf, %.sroa.560.0             ; 3 uses
  %i.cj = icmp ult i64 %i.r, %i.b
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ck = trunc i32 %.sroa.058.0 to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r
  store i8 %i.ck, ptr %i.cl, align 1
  %i.cm = add nuw i64 %i.r, 1                     ; 5 uses
  store i64 %i.cm, ptr %i.c, align 8
  %i.cn = and i32 %.sroa.059.0, 256
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.m, label %bb.p

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #10
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cp = icmp ult i64 %i.cm, %i.b
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = trunc i32 %.sroa.059.0 to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cm
  store i8 %i.cq, ptr %i.cr, align 1
  %i.cs = add nuw i64 %i.r, 2                     ; 3 uses
  store i64 %i.cs, ptr %i.c, align 8
  %i.ct = sub i64 %i.b, %i.cs
  %i.cu = icmp ult i64 %i.ct, 259
  %i.cv = icmp ult i64 %i.ae, 14
  %or.cond91 = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond91, label %.loopexit, label %bb.b

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.cm, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #10
  unreachable

bb.p:                                             ; preds = %bb.k, %bb.f
  %i.cw = phi i64 [ %i.r, %bb.f ], [ %i.cm, %bb.k ] ; 3 uses
  %.sroa.51.2 = phi i32 [ %.sroa.058.0, %bb.f ], [ %.sroa.059.0, %bb.k ] ; 2 uses
  %.sroa.23.3 = phi i32 [ %i.bf, %bb.f ], [ %i.ci, %bb.k ] ; 6 uses
  %.sroa.0.3 = phi i64 [ %i.be, %bb.f ], [ %i.ch, %bb.k ] ; 4 uses
  %i.cx = and i32 %.sroa.51.2, 511                ; 3 uses
  %i.cy = icmp eq i32 %i.cx, 256
  br i1 %i.cy, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = icmp samesign ugt i32 %i.cx, 285
  br i1 %i.cz, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = add nuw nsw i32 %.sroa.51.2, 31
  %i.db = and i32 %i.da, 31                       ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr @18, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noundef !5 ; 3 uses
  %6 = getelementptr inbounds nuw [2 x i8], ptr @19, i64 %i.dc
  %i.df = load i16, ptr %6, align 2, !noundef !5
  %i.dg = zext i16 %i.df to i32                   ; 2 uses
  %i.dh = icmp ult i32 %.sroa.23.3, 30
  br i1 %i.dh, label %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98, label %bb.s

_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98: ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %.sroa.02.0.copyload.i97 = load i32, ptr %.promoted157176, align 1, !noalias !703
  %i.di = add i64 %i.ac, -4                       ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.promoted157176, i64 4 ; 2 uses
  store ptr %i.dj, ptr %1, align 8, !alias.scope !703, !captures !32
  store i64 %i.di, ptr %i.d, align 8, !alias.scope !703
  %i.dk = zext i32 %.sroa.02.0.copyload.i97 to i64
  %i.dl = zext nneg i32 %.sroa.23.3 to i64
  %i.dm = shl nuw nsw i64 %i.dk, %i.dl
  %i.dn = or i64 %i.dm, %.sroa.0.3
  %i.do = or disjoint i32 %.sroa.23.3, 32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98
  %.promoted157175 = phi ptr [ %i.dj, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98 ], [ %.promoted157176, %bb.r ] ; 4 uses
  %i.dp = phi i64 [ %i.di, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98 ], [ %i.ac, %bb.r ] ; 3 uses
  %.sroa.23.4 = phi i32 [ %i.do, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98 ], [ %.sroa.23.3, %bb.r ] ; 2 uses
  %.sroa.0.4 = phi i64 [ %i.dn, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98 ], [ %.sroa.0.3, %bb.r ] ; 3 uses
  %i.dq = add nsw i32 %i.db, -28
  %i.dr = icmp ult i32 %i.dq, -20
  br i1 %i.dr, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = and i8 %i.de, 63
  %i.dt = zext nneg i8 %i.ds to i64               ; 2 uses
  %notmask = shl nsw i64 -1, %i.dt
  %i.du = xor i64 %notmask, -1
  %i.dv = and i64 %.sroa.0.4, %i.du
  %i.dw = lshr i64 %.sroa.0.4, %i.dt
  %i.dx = zext i8 %i.de to i32
  %i.dy = sub i32 %.sroa.23.4, %i.dx
  %i.dz = trunc i64 %i.dv to i32
  %i.ea = add i32 %i.dz, %i.dg
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sroa.51.3 = phi i32 [ %i.dg, %bb.s ], [ %i.ea, %bb.t ] ; 4 uses
  %.sroa.23.5 = phi i32 [ %.sroa.23.4, %bb.s ], [ %i.dy, %bb.t ]
  %.sroa.0.5 = phi i64 [ %.sroa.0.4, %bb.s ], [ %i.dw, %bb.t ] ; 3 uses
  %i.eb = and i64 %.sroa.0.5, 1023
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2, !noundef !5 ; 2 uses
  %i.ee = sext i16 %i.ed to i32                   ; 3 uses
  %i.ef = icmp sgt i16 %i.ed, -1
  br i1 %i.ef, label %bb.w, label %.preheader198

.preheader198:                                    ; preds = %bb.u, %bb.v
  %.sroa.03.0.i99 = phi i8 [ %i.et, %bb.v ], [ 10, %bb.u ] ; 3 uses
  %.sroa.0.0.i100 = phi i32 [ %i.es, %bb.v ], [ %i.ee, %bb.u ]
  %i.eg = xor i32 %.sroa.0.0.i100, -1
  %i.eh = and i8 %.sroa.03.0.i99, 63
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = lshr i64 %.sroa.0.5, %i.ei
  %i.ek = trunc i64 %i.ej to i32
  %i.el = and i32 %i.ek, 1
  %i.em = add nuw nsw i32 %i.el, %i.eg            ; 2 uses
  %i.en = icmp samesign ult i32 %i.em, 576
  br i1 %i.en, label %bb.v, label %.thread.i101

.thread.i101:                                     ; preds = %.preheader198
  %i.eo = add i8 %.sroa.03.0.i99, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit103

bb.v:                                             ; preds = %.preheader198
  %i.ep = zext nneg i32 %i.em to i64
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !alias.scope !706, !noundef !5 ; 2 uses
  %i.es = sext i16 %i.er to i32                   ; 2 uses
  %i.et = add i8 %.sroa.03.0.i99, 1               ; 2 uses
  %i.eu = icmp sgt i16 %i.er, -1
  br i1 %i.eu, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit103, label %.preheader198

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit103: ; preds = %bb.v, %.thread.i101
  %i.ev = phi i8 [ %i.eo, %.thread.i101 ], [ %i.et, %bb.v ]
  %.sroa.06.011.i102 = phi i32 [ 32767, %.thread.i101 ], [ %i.es, %bb.v ]
  %i.ew = zext i8 %i.ev to i32
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ex = lshr i32 %i.ee, 9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit103
  %.sroa.566.0 = phi i32 [ %i.ex, %bb.w ], [ %i.ew, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit103 ] ; 2 uses
  %.sroa.065.0 = phi i32 [ %i.ee, %bb.w ], [ %.sroa.06.011.i102, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit103 ] ; 2 uses
  %i.ey = and i32 %.sroa.065.0, 511               ; 2 uses
  %i.ez = and i32 %.sroa.566.0, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = lshr i64 %.sroa.0.5, %i.fa              ; 4 uses
  %i.fc = sub i32 %.sroa.23.5, %.sroa.566.0       ; 6 uses
  %i.fd = icmp samesign ugt i32 %i.ey, 29
  br i1 %i.fd, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fe = trunc i32 %.sroa.065.0 to i8            ; 2 uses
  %i.ff = lshr i8 %i.fe, 1
  %i.fg = tail call i8 @llvm.usub.sat.i8(i8 %i.ff, i8 1) ; 5 uses
  %i.fh = zext nneg i32 %i.ey to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr @7, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2, !noundef !5
  %i.fk = zext i16 %i.fj to i32                   ; 2 uses
  %i.fl = icmp ult i8 %i.fe, 4
  br i1 %i.fl, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fm = icmp ult i32 %i.fc, 30
  br i1 %i.fm, label %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105, label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.ab
  %.promoted157174 = phi ptr [ %.promoted157175, %bb.y ], [ %.promoted157173, %bb.ab ]
  %i.fn = phi i64 [ %i.dp, %bb.y ], [ %i.fy, %bb.ab ] ; 2 uses
  %.sroa.45.1 = phi i32 [ %i.fk, %bb.y ], [ %i.gg, %bb.ab ] ; 4 uses
  %.sroa.23.6 = phi i32 [ %i.fc, %bb.y ], [ %i.ge, %bb.ab ] ; 3 uses
  %.sroa.0.6 = phi i64 [ %i.fb, %bb.y ], [ %i.gc, %bb.ab ] ; 3 uses
  %i.fo = zext nneg i32 %.sroa.45.1 to i64        ; 3 uses
  %i.fp = icmp ult i64 %i.cw, %i.fo
  %or.cond.not108 = and i1 %i.n, %i.fp
  %i.fq = icmp ult i64 %i.b, %i.fo
  %or.cond106 = or i1 %i.fq, %or.cond.not108
  br i1 %or.cond106, label %.loopexit, label %bb.ac

_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105: ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %.sroa.02.0.copyload.i104 = load i32, ptr %.promoted157175, align 1, !noalias !709
  %i.fr = add i64 %i.dp, -4                       ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.promoted157175, i64 4 ; 2 uses
  store ptr %i.fs, ptr %1, align 8, !alias.scope !709, !captures !32
  store i64 %i.fr, ptr %i.d, align 8, !alias.scope !709
  %i.ft = zext i32 %.sroa.02.0.copyload.i104 to i64
  %i.fu = zext nneg i32 %i.fc to i64
  %i.fv = shl nuw nsw i64 %i.ft, %i.fu
  %i.fw = or i64 %i.fv, %i.fb
  %i.fx = or disjoint i32 %i.fc, 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105
  %.promoted157173 = phi ptr [ %i.fs, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105 ], [ %.promoted157175, %bb.z ]
  %i.fy = phi i64 [ %i.fr, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105 ], [ %i.dp, %bb.z ]
  %.sroa.23.7 = phi i32 [ %i.fx, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105 ], [ %i.fc, %bb.z ]
  %.sroa.0.7 = phi i64 [ %i.fw, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105 ], [ %i.fb, %bb.z ] ; 2 uses
  %i.fz = zext nneg i8 %i.fg to i64               ; 2 uses
  %notmask88 = shl nsw i64 -1, %i.fz
  %i.ga = xor i64 %notmask88, -1
  %i.gb = and i64 %.sroa.0.7, %i.ga
  %i.gc = lshr i64 %.sroa.0.7, %i.fz
  %i.gd = zext nneg i8 %i.fg to i32
  %i.ge = sub nuw i32 %.sroa.23.7, %i.gd
  %i.gf = trunc nuw nsw i64 %i.gb to i32
  %i.gg = add nuw nsw i32 %i.gf, %i.fk
  br label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  %i.gh = zext i32 %.sroa.51.3 to i64             ; 2 uses
  tail call fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11apply_match(ptr noalias nofree noundef nonnull %i.j, i64 noundef %i.b, i64 noundef %i.cw, i64 noundef %i.fo, i64 noundef %i.gh, i64 noundef %5) #11
  %i.gi = add i64 %i.cw, %i.gh                    ; 3 uses
  store i64 %i.gi, ptr %i.c, align 8
  %i.gj = sub i64 %i.b, %i.gi
  %i.gk = icmp ult i64 %i.gj, 259
  %i.gl = icmp ult i64 %i.fn, 14
  %or.cond91158 = select i1 %i.gk, i1 true, i1 %i.gl
  br i1 %or.cond91158, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.aa, %bb.x, %bb.q, %bb.p, %bb.ac, %bb.n, %bb.a
  %.sroa.057.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.n ], [ -1, %bb.aa ], [ -1, %bb.q ], [ 0, %bb.p ], [ -1, %bb.x ], [ 0, %bb.ac ]
  %.sroa.056.0 = phi i8 [ 12, %bb.a ], [ 12, %bb.n ], [ 30, %bb.aa ], [ 33, %bb.q ], [ 20, %bb.p ], [ 34, %bb.x ], [ 12, %bb.ac ]
  %.sroa.66.1 = phi i8 [ %.sroa.66.0.copyload, %bb.a ], [ %.sroa.66.0188, %bb.n ], [ %i.fg, %bb.aa ], [ %.sroa.66.0188, %bb.q ], [ %.sroa.66.0188, %bb.p ], [ %i.de, %bb.x ], [ %i.fg, %bb.ac ]
  %.sroa.51.4 = phi i32 [ %.sroa.51.0.copyload, %bb.a ], [ %.sroa.058.0, %bb.n ], [ %.sroa.51.3, %bb.aa ], [ %i.cx, %bb.q ], [ 256, %bb.p ], [ %.sroa.51.3, %bb.x ], [ %.sroa.51.3, %bb.ac ]
  %.sroa.45.2 = phi i32 [ %.sroa.45.0.copyload, %bb.a ], [ %.sroa.45.0189, %bb.n ], [ %.sroa.45.1, %bb.aa ], [ %.sroa.45.0189, %bb.q ], [ %.sroa.45.0189, %bb.p ], [ %.sroa.45.0189, %bb.x ], [ %.sroa.45.1, %bb.ac ]
  %.sroa.23.8 = phi i32 [ %.sroa.23.0.copyload, %bb.a ], [ %i.ci, %bb.n ], [ %.sroa.23.6, %bb.aa ], [ %.sroa.23.3, %bb.q ], [ %.sroa.23.3, %bb.p ], [ %i.fc, %bb.x ], [ %.sroa.23.6, %bb.ac ]
  %.sroa.0.8 = phi i64 [ %.sroa.0.0.copyload, %bb.a ], [ %i.ch, %bb.n ], [ %.sroa.0.6, %bb.aa ], [ %.sroa.0.3, %bb.q ], [ %.sroa.0.3, %bb.p ], [ %i.fb, %bb.x ], [ %.sroa.0.6, %bb.ac ]
  store i64 %.sroa.0.8, ptr %4, align 8
  store i32 %.sroa.23.8, ptr %.sroa.23.0..sroa_idx, align 8
  store i32 %.sroa.45.2, ptr %.sroa.45.0..sroa_idx, align 4
  store i32 %.sroa.51.4, ptr %.sroa.51.0..sroa_idx, align 8
  store i8 %.sroa.66.1, ptr %.sroa.66.0..sroa_idx, align 4
  %i.gm = insertvalue { i8, i8 } poison, i8 %.sroa.057.0, 0
  %i.gn = insertvalue { i8, i8 } %i.gm, i8 %.sroa.056.0, 1
  ret { i8, i8 } %i.gn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core8transfer(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp ugt i64 %2, %3
  %i.c = sub nuw i64 %2, %3
  %i.d = sub nuw i64 %3, %2                       ; 2 uses
  %.sroa.058.0 = select i1 %i.b, i64 %i.c, i64 %i.d
  %i.e = icmp eq i64 %5, -1
  %i.f = add i64 %2, -3
  %i.g = add i64 %i.f, %4
  %i.h = icmp ult i64 %i.g, %1
  %.sroa.059.0 = or i1 %i.e, %i.h                 ; 2 uses
  %i.i = and i64 %4, -4                           ; 2 uses
  %i.j = add i64 %i.i, %3                         ; 6 uses
end_hunk_4
