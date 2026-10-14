Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/chacha20?download=true
inline.NumInlined: 14
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_chacha20_context = type { [16 x i32], [64 x i8], i64 }

@.str = private unnamed_addr constant [20 x i8] c"  ChaCha20 test %u \00", align 1
@test_input = internal constant [2 x [375 x i8]] [[375 x i8] zeroinitializer, [375 x i8] c"Any submission to the IETF intended by the Contributor for publication as all or part of an IETF Internet-Draft or RFC and any statement made within the context of an IETF activity is considered an \22IETF Contribution\22. Such statements include oral statements in IETF sessions, as well as written and electronic communications made at any time or place, which are addressed to"], align 16
@test_output = internal constant <{ <{ [64 x i8], [311 x i8] }>, [375 x i8] }> <{ <{ [64 x i8], [311 x i8] }> <{ [64 x i8] c"v\B8\E0\AD\A0\F1=\90@]j\E5S\86\BD(\BD\D2\19\B8\A0\8D\ED\1A\A86\EF\CC\8Bw\0D\C7\DAAY|QWH\8Dw$\E0?\B8\D8J7jC\B8\F4\15\18\A1\1C\C3\87\B6i\B2\EEe\86", [311 x i8] zeroinitializer }>, [375 x i8] c"\A3\FB\F0}\F3\FA/\DEO7l\A2>\82spA`]\9FOOW\BD\8C\FF,\1DKyU\EC*\97\94\8B\D3r)\15\C8\F3\D37\F7\D3p\05\0E\9E\96\D6G\B7\C3\9FV\E01\CA^\B6%\0D@B\E0'\85\EC\EC\FAKK\B5\E8\EA\D0D\0E \B6\E8\DB\09\D8\81\A7\C6\13/B\0ERyPB\BD\FAws\D8\A9\05\14G\B3)\1C\E1A\1Ch\04eU*\A6\C4\05\B7vM^\87\BE\A8Z\D0\0F\84I\ED\8Fr\D0\D6b\AB\05&\91\CAfBK\C8m-\F8\0E\A4\1FC\AB\F97\D3%\9D\C4\B2\D0\DF\B4\8Al\919\DD\D7\F7if\E9(\E65U;\A7l\\\87\9D{5\D4\9E\B2\E6+\08q\CD\ACc\899\E2^\8A\1E\0E\F9\D5(\0F\A8\CA2\8B5\1C<vY\89\CB\CF=\AA\8Bl\CC:\AF\9F9y\C9+7 \FC\88\DC\95\ED\84\A1\BE\05\9Cd\99\B9\FD\A26\E7\E8\18\B0K\0B\C3\9C\1E\87k\19;\FEUiu?\88\12\8C\C0\8A\AA\9Bc\D1\A1o\80\EF%T\D7\18\9CA\1FXi\CAR\C5\B8?\A3o\F2\16\B9\C1\D3\00b\BE\BC\FD-\C5\BC\E0\91\194\FD\A7\9A\86\F6\E6\98\CE\D7Y\C3\FF\9Bdw3\8F=\A4\F9\CD\85\14\EA\99\82\CC\AF\B3A\B28M\D9\02\F3\D1\ABz\C6\1D\D2\9Co!\BA[\86/70\E3|\FD\C4\FD\80l\22\F2!" }>, align 16
@str = private unnamed_addr constant [16 x i8] c"failed (output)\00", align 1
@str.1 = private unnamed_addr constant [7 x i8] c"passed\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_chacha20_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @mbedtls_platform_zeroize(ptr noundef %0, i64 noundef 64) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 64) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 64, ptr %i.b, align 8, !tbaa !10
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_chacha20_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 136) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @mbedtls_chacha20_setkey(ptr nofree noundef writeonly captures(none) initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %0, align 8, !tbaa !11
  %.0.copyload.i26 = load i32, ptr %1, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.0.copyload.i26, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload.i25 = load i32, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.0.copyload.i25, ptr %i.c, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i24 = load i32, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.copyload.i24, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.0.copyload.i23 = load i32, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.0.copyload.i23, ptr %i.g, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i22 = load i32, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.copyload.i22, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.0.copyload.i21 = load i32, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.0.copyload.i21, ptr %i.k, align 4, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i20 = load i32, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0.copyload.i20, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.0.copyload.i = load i32, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.0.copyload.i, ptr %i.o, align 4, !tbaa !11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @mbedtls_chacha20_starts(ptr noundef initializes((48, 64)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.a, align 8, !tbaa !11
  %.0.copyload.i10 = load i32, ptr %1, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.0.copyload.i10, ptr %i.b, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload.i9 = load i32, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.0.copyload.i9, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i = load i32, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.0.copyload.i, ptr %i.f, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.g, i64 noundef 64) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 64, ptr %i.h, align 8, !tbaa !10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @mbedtls_chacha20_update(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %5 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %6 = ptrtoaddr ptr %3 to i64                    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %.not45 = icmp eq i64 %1, 0
  br i1 %.not45, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i64, ptr %i.a, align 8, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.c = phi i64 [ %.pre, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %.047 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.c ] ; 5 uses
  %.03346 = phi i64 [ %1, %.lr.ph ], [ %i.n, %bb.c ] ; 4 uses
  %i.d = icmp ult i64 %i.c, 64
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.047
  %i.f = load i8, ptr %i.e, align 1, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.h = load i8, ptr %i.g, align 1, !tbaa !21
  %i.i = xor i8 %i.h, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %.047
  store i8 %i.i, ptr %i.j, align 1, !tbaa !21
  %i.k = load i64, ptr %i.a, align 8, !tbaa !10
  %i.l = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !10
  %i.m = add nuw i64 %.047, 1
  %i.n = add i64 %.03346, -1                      ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !13

.critedge:                                        ; preds = %bb.b
  %i.o = icmp ugt i64 %.03346, 63
  br i1 %i.o, label %.lr.ph57, label %._crit_edge.thread77

.lr.ph57:                                         ; preds = %.critedge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %.preheader44

.preheader44:                                     ; preds = %.lr.ph57, %.preheader44
  %.156 = phi i64 [ %.047, %.lr.ph57 ], [ %i.ay, %.preheader44 ] ; 3 uses
  %.13455 = phi i64 [ %.03346, %.lr.ph57 ], [ %i.az, %.preheader44 ]
  tail call fastcc void @chacha20_block(ptr noundef nonnull %0, ptr noundef nonnull %i.p)
  %i.y = load i32, ptr %i.q, align 8, !tbaa !11
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.q, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %.156 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.156 ; 8 uses
  %.0.copyload.i41 = load i64, ptr %i.ab, align 1
  %.0.copyload.i = load i64, ptr %i.p, align 8
  %i.ac = xor i64 %.0.copyload.i, %.0.copyload.i41
  store i64 %i.ac, ptr %i.aa, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.0.copyload.i41.1 = load i64, ptr %i.ad, align 1
  %.0.copyload.i.1 = load i64, ptr %i.r, align 8
  %i.ae = xor i64 %.0.copyload.i.1, %.0.copyload.i41.1
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.ae, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.0.copyload.i41.2 = load i64, ptr %i.ag, align 1
  %.0.copyload.i.2 = load i64, ptr %i.s, align 8
  %i.ah = xor i64 %.0.copyload.i.2, %.0.copyload.i41.2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.ah, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.0.copyload.i41.3 = load i64, ptr %i.aj, align 1
  %.0.copyload.i.3 = load i64, ptr %i.t, align 8
  %i.ak = xor i64 %.0.copyload.i.3, %.0.copyload.i41.3
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.0.copyload.i41.4 = load i64, ptr %i.am, align 1
  %.0.copyload.i.4 = load i64, ptr %i.u, align 8
  %i.an = xor i64 %.0.copyload.i.4, %.0.copyload.i41.4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %i.an, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.0.copyload.i41.5 = load i64, ptr %i.ap, align 1
  %.0.copyload.i.5 = load i64, ptr %i.v, align 8
  %i.aq = xor i64 %.0.copyload.i.5, %.0.copyload.i41.5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i64 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.0.copyload.i41.6 = load i64, ptr %i.as, align 1
  %.0.copyload.i.6 = load i64, ptr %i.w, align 8
  %i.at = xor i64 %.0.copyload.i.6, %.0.copyload.i41.6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 %i.at, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %.0.copyload.i41.7 = load i64, ptr %i.av, align 1
  %.0.copyload.i.7 = load i64, ptr %i.x, align 8
  %i.aw = xor i64 %.0.copyload.i.7, %.0.copyload.i41.7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i64 %i.aw, ptr %i.ax, align 1
  %i.ay = add i64 %.156, 64                       ; 2 uses
  %i.az = add i64 %.13455, -64                    ; 4 uses
  %i.ba = icmp ugt i64 %i.az, 63
  br i1 %i.ba, label %.preheader44, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %.preheader44
  %.not36 = icmp eq i64 %i.az, 0
  br i1 %.not36, label %._crit_edge.thread, label %._crit_edge.thread77

._crit_edge.thread77:                             ; preds = %.critedge, %._crit_edge
  %.1.lcssa82 = phi i64 [ %i.ay, %._crit_edge ], [ %.047, %.critedge ] ; 4 uses
  %.134.lcssa81 = phi i64 [ %i.az, %._crit_edge ], [ %.03346, %.critedge ] ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  tail call fastcc void @chacha20_block(ptr noundef nonnull %0, ptr noundef nonnull %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !11
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %.1.lcssa82 ; 9 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %.1.lcssa82 ; 9 uses
  %.not.i60 = icmp samesign ult i64 %.134.lcssa81, 8
  br i1 %.not.i60, label %.preheader, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %._crit_edge.thread77
  %i.bh = add nsw i64 %.134.lcssa81, -8           ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 120
  br i1 %min.iters.check, label %.lr.ph63.preheader122, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph63.preheader
  %i.bk = sub i64 %5, %6
  %diff.check = icmp ugt i64 %i.bk, -32
  %i.bl = add i64 %.1.lcssa82, %6
  %i.bm = sub i64 %i.bl, %4
  %i.bn = add i64 %i.bm, -65
  %diff.check91 = icmp ult i64 %i.bn, 31
  %conflict.rdx = or i1 %diff.check, %diff.check91
  br i1 %conflict.rdx, label %.lr.ph63.preheader122, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 3 uses
  %i.bp = or disjoint i64 %i.bo, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 3                       ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <2 x i64>, ptr %i.br, align 1
  %wide.load92 = load <2 x i64>, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bq ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load93 = load <2 x i64>, ptr %i.bt, align 1
  %wide.load94 = load <2 x i64>, ptr %i.bu, align 1
  %i.bv = xor <2 x i64> %wide.load93, %wide.load
  %i.bw = xor <2 x i64> %wide.load94, %wide.load92
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bq ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <2 x i64> %i.bv, ptr %i.bx, align 1
  store <2 x i64> %i.bw, ptr %i.by, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph63.preheader122

.lr.ph63.preheader122:                            ; preds = %vector.memcheck, %.lr.ph63.preheader, %middle.block
  %.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %.lr.ph63.preheader ], [ %i.bp, %middle.block ]
  %.0.i61.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph63.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph63

.preheader:                                       ; preds = %.lr.ph63, %middle.block, %._crit_edge.thread77
  %.0.i.lcssa = phi i64 [ 0, %._crit_edge.thread77 ], [ %i.bo, %middle.block ], [ %i.dj, %.lr.ph63 ] ; 8 uses
  %i.ca = icmp samesign ult i64 %.0.i.lcssa, %.134.lcssa81
  br i1 %i.ca, label %iter.check, label %mbedtls_xor.exit

iter.check:                                       ; preds = %.preheader
  %i.cb = sub nuw i64 %.134.lcssa81, %.0.i.lcssa  ; 7 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 8
  br i1 %min.iters.check101, label %.lr.ph66.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %iter.check
  %i.cc = sub i64 %5, %6
  %diff.check97 = icmp ugt i64 %i.cc, -32
  %i.cd = add i64 %.1.lcssa82, %6
  %i.ce = sub i64 %i.cd, %4
  %i.cf = add i64 %i.ce, -65
  %diff.check98 = icmp ult i64 %i.cf, 31
  %conflict.rdx99 = or i1 %diff.check97, %diff.check98
  br i1 %conflict.rdx99, label %.lr.ph66.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck96
  %min.iters.check102 = icmp ult i64 %i.cb, 32
  br i1 %min.iters.check102, label %vec.epilog.ph, label %vector.ph103

vector.ph103:                                     ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %i.cb, 24
  %n.vec104 = and i64 %i.cb, 32                   ; 4 uses
  %i.ch = add i64 %.0.i.lcssa, %n.vec104
  br label %vector.body105

vector.body105:                                   ; preds = %vector.ph103, %vector.body105
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = add nuw i64 %.0.i.lcssa, %index106      ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load107 = load <16 x i8>, ptr %i.cj, align 1, !tbaa !21
  %wide.load108 = load <16 x i8>, ptr %i.ck, align 1, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ci ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load109 = load <16 x i8>, ptr %i.cl, align 1, !tbaa !21
  %wide.load110 = load <16 x i8>, ptr %i.cm, align 1, !tbaa !21
  %i.cn = xor <16 x i8> %wide.load109, %wide.load107
  %i.co = xor <16 x i8> %wide.load110, %wide.load108
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ci ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <16 x i8> %i.cn, ptr %i.cp, align 1, !tbaa !21
  store <16 x i8> %i.co, ptr %i.cq, align 1, !tbaa !21
  %index.next111 = add nuw i64 %index106, 32      ; 2 uses
  %i.cr = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cr, label %middle.block112, label %vector.body105, !llvm.loop !16

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cb, %n.vec104
  br i1 %cmp.n113, label %mbedtls_xor.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block112
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph66.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec104, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %i.cb, 56                   ; 3 uses
  %i.cs = add i64 %.0.i.lcssa, %n.vec115
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next119, %vec.epilog.vector.body ] ; 2 uses
  %i.ct = add nuw i64 %.0.i.lcssa, %index116      ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ct
  %wide.load117 = load <8 x i8>, ptr %i.cu, align 1, !tbaa !21
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ct
  %wide.load118 = load <8 x i8>, ptr %i.cv, align 1, !tbaa !21
  %i.cw = xor <8 x i8> %wide.load118, %wide.load117
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ct
  store <8 x i8> %i.cw, ptr %i.cx, align 1, !tbaa !21
  %index.next119 = add nuw i64 %index116, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next119, %n.vec115
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n120 = icmp eq i64 %i.cb, %n.vec115
  br i1 %cmp.n120, label %mbedtls_xor.exit, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %iter.check, %vector.memcheck96, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.i65.ph = phi i64 [ %.0.i.lcssa, %iter.check ], [ %.0.i.lcssa, %vector.memcheck96 ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ] ; 4 uses
  %i.cz = sub i64 %.134.lcssa81, %.1.i65.ph
  %xtraiter = and i64 %i.cz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader, %.lr.ph66.prol
  %.1.i65.prol = phi i64 [ %i.dg, %.lr.ph66.prol ], [ %.1.i65.ph, %.lr.ph66.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph66.prol ], [ 0, %.lr.ph66.preheader ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.1.i65.prol
  %i.db = load i8, ptr %i.da, align 1, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.1.i65.prol
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !21
  %i.de = xor i8 %i.dd, %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.1.i65.prol
  store i8 %i.de, ptr %i.df, align 1, !tbaa !21
  %i.dg = add nuw nsw i64 %.1.i65.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !18

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader
  %.1.i65.unr = phi i64 [ %.1.i65.ph, %.lr.ph66.preheader ], [ %i.dg, %.lr.ph66.prol ]
  %i.dh = sub i64 %.1.i65.ph, %.134.lcssa81
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %mbedtls_xor.exit, label %.lr.ph66

.lr.ph63:                                         ; preds = %.lr.ph63.preheader122, %.lr.ph63
  %i.dj = phi i64 [ %i.do, %.lr.ph63 ], [ %.ph, %.lr.ph63.preheader122 ] ; 3 uses
  %.0.i61 = phi i64 [ %i.dj, %.lr.ph63 ], [ %.0.i61.ph, %.lr.ph63.preheader122 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.0.i61
  %.0.copyload.i43 = load i64, ptr %i.dk, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.0.i61
  %.0.copyload.i42 = load i64, ptr %i.dl, align 1
  %i.dm = xor i64 %.0.copyload.i42, %.0.copyload.i43
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.0.i61
  store i64 %i.dm, ptr %i.dn, align 1
  %i.do = add nuw nsw i64 %i.dj, 8                ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.do, %.134.lcssa81
  br i1 %.not.i, label %.preheader, label %.lr.ph63, !llvm.loop !19

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.1.i65 = phi i64 [ %i.eq, %.lr.ph66 ], [ %.1.i65.unr, %.lr.ph66.prol.loopexit ] ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.1.i65
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.1.i65
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !21
  %i.dt = xor i8 %i.ds, %i.dq
  %i.du = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.1.i65
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !21
  %i.dv = add nuw nsw i64 %.1.i65, 1              ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !21
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.dv
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !21
  %i.ea = xor i8 %i.dz, %i.dx
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.dv
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !21
  %i.ec = add nuw nsw i64 %.1.i65, 2              ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !21
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ec
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !21
  %i.eh = xor i8 %i.eg, %i.ee
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ec
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !21
  %i.ej = add nuw nsw i64 %.1.i65, 3              ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ej
  %i.en = load i8, ptr %i.em, align 1, !tbaa !21
  %i.eo = xor i8 %i.en, %i.el
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ej
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !21
  %i.eq = add nuw nsw i64 %.1.i65, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eq, %.134.lcssa81
  br i1 %exitcond.not.3, label %mbedtls_xor.exit, label %.lr.ph66, !llvm.loop !20

mbedtls_xor.exit:                                 ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %middle.block112, %vec.epilog.middle.block, %.preheader
  store i64 %.134.lcssa81, ptr %i.a, align 8, !tbaa !10
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %bb.a, %mbedtls_xor.exit, %._crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @chacha20_block(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %.promoted = load i32, ptr %i.b, align 16, !tbaa !11
  %.promoted24 = load i32, ptr %i.a, align 16, !tbaa !11
  %.promoted26 = load i32, ptr %i.c, align 16, !tbaa !11
  %.promoted28 = load i32, ptr %i.d, align 16, !tbaa !11
  %.promoted30 = load i32, ptr %i.e, align 4, !tbaa !11
  %.promoted32 = load i32, ptr %i.f, align 4, !tbaa !11
  %.promoted34 = load i32, ptr %i.g, align 4, !tbaa !11
  %.promoted36 = load i32, ptr %i.h, align 4, !tbaa !11
  %.promoted38 = load i32, ptr %i.i, align 8, !tbaa !11
  %.promoted40 = load i32, ptr %i.j, align 8, !tbaa !11
  %.promoted42 = load i32, ptr %i.k, align 8, !tbaa !11
  %.promoted44 = load i32, ptr %i.l, align 8, !tbaa !11
  %.promoted46 = load i32, ptr %i.m, align 4, !tbaa !11
  %.promoted48 = load i32, ptr %i.n, align 4, !tbaa !11
  %.promoted50 = load i32, ptr %i.o, align 4, !tbaa !11
  %.promoted52 = load i32, ptr %i.p, align 4, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.054 = phi i64 [ 0, %bb.a ], [ %i.dy, %bb.b ]
  %i.q = phi i32 [ %.promoted, %bb.a ], [ %i.dx, %bb.b ] ; 2 uses
end_hunk_0
