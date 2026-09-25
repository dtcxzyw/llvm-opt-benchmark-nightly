Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/tls_cbc?download=true
inline.NumInlined: 55
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@llvm.lifetime.start.p0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define hidden void @EVP_tls_cbc_copy_mac(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = sub i64 %3, %1
  %i.d = add i64 %1, 256
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.d) ; 2 uses
  %i.e = icmp eq i64 %1, 0                        ; 2 uses
  br i1 %i.e, label %OPENSSL_memset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %1, i1 false)
  br label %OPENSSL_memset.exit

OPENSSL_memset.exit:                              ; preds = %bb.a, %bb.b
  %i.f = icmp ult i64 %spec.select, %4
  br i1 %i.f, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %OPENSSL_memset.exit
  %.067.lcssa = phi i64 [ 0, %OPENSSL_memset.exit ], [ %i.y, %.lr.ph ]
  %i.g = icmp ugt i64 %1, 1
  br i1 %i.g, label %.lr.ph87.preheader, label %._crit_edge

.lr.ph87.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %1, 1
  %unroll_iter = and i64 %1, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod94 = trunc i64 %1 to i1
  br label %.lr.ph87

.lr.ph:                                           ; preds = %OPENSSL_memset.exit, %.lr.ph
  %.06380 = phi i64 [ %i.aa, %.lr.ph ], [ 0, %OPENSSL_memset.exit ] ; 2 uses
  %.06579 = phi i64 [ %i.z, %.lr.ph ], [ %spec.select, %OPENSSL_memset.exit ] ; 7 uses
  %.06678 = phi i8 [ %i.j, %.lr.ph ], [ 0, %OPENSSL_memset.exit ]
  %.06777 = phi i64 [ %i.y, %.lr.ph ], [ 0, %OPENSSL_memset.exit ]
  %.not74 = icmp ult i64 %.06380, %1
  %i.h = select i1 %.not74, i64 0, i64 %1
  %spec.select75 = sub nuw i64 %.06380, %i.h      ; 3 uses
  %i.i = icmp eq i64 %.06579, %i.c                ; 2 uses
  %i.j = select i1 %i.i, i8 -1, i8 %.06678        ; 2 uses
  %i.k = xor i64 %.06579, %3
  %i.l = sub i64 %.06579, %3
  %i.m = xor i64 %i.l, %.06579
  %i.n = or i64 %i.m, %i.k
  %i.o = xor i64 %i.n, %.06579
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.06579
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %.lobit = ashr i64 %i.o, 63
  %i.r = trunc nsw i64 %.lobit to i8
  %i.s = and i8 %i.q, %i.r
  %i.t = and i8 %i.s, %i.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select75 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = or i8 %i.t, %i.v
  store i8 %i.w, ptr %i.u, align 1, !tbaa !8
  %i.x = select i1 %i.i, i64 %spec.select75, i64 0
  %i.y = or i64 %i.x, %.06777                     ; 2 uses
  %i.z = add nuw i64 %.06579, 1                   ; 2 uses
  %i.aa = add nuw nsw i64 %spec.select75, 1
  %exitcond.not = icmp eq i64 %i.z, %4
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.preheader
  br i1 %i.e, label %OPENSSL_memcpy.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.0.lcssa93 = phi ptr [ %i.a, %._crit_edge ], [ %.06284, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull readonly align 16 %.0.lcssa93, i64 %1, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %bb.c
  %.086 = phi ptr [ %.06284, %bb.c ], [ %i.a, %.lr.ph87.preheader ] ; 7 uses
  %.06185 = phi i64 [ %i.at, %bb.c ], [ 1, %.lr.ph87.preheader ] ; 2 uses
  %.06284 = phi ptr [ %.086, %bb.c ], [ %i.b, %.lr.ph87.preheader ] ; 5 uses
  %.16883 = phi i64 [ %i.au, %bb.c ], [ %.067.lcssa, %.lr.ph87.preheader ] ; 2 uses
  %i.ab = and i64 %.16883, 1
  %i.ac = add nuw nsw i64 %i.ab, 255
  %i.ad = and i64 %i.ac, 255                      ; 2 uses
  %i.ae = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.ad) #9, !srcloc !12 ; 3 uses
  %i.af = xor i64 %i.ad, -1
  %i.ag = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.af) #9, !srcloc !12 ; 3 uses
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %.not.epil = icmp ult i64 %i.bx, %1
  %i.ah = select i1 %.not.epil, i64 0, i64 %1
  %spec.select76.epil = sub nuw i64 %i.bx, %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %.086, i64 %i.bw
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %.086, i64 %spec.select76.epil
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = zext i8 %i.aj to i64
  %i.an = zext i8 %i.al to i64
  %i.ao = and i64 %i.ae, %i.am
  %i.ap = and i64 %i.ag, %i.an
  %i.aq = or i64 %i.ap, %i.ao
  %i.ar = trunc nuw i64 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %.06284, i64 %i.bw
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.at = shl i64 %.06185, 1                      ; 2 uses
  %i.au = lshr i64 %.16883, 1
  %i.av = icmp ult i64 %i.at, %1
  br i1 %i.av, label %.lr.ph87, label %._crit_edge.thread, !llvm.loop !19

bb.d:                                             ; preds = %bb.d, %.lr.ph87
  %.05982 = phi i64 [ %.06185, %.lr.ph87 ], [ %i.bx, %bb.d ] ; 2 uses
  %.06081 = phi i64 [ 0, %.lr.ph87 ], [ %i.bw, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph87 ], [ %niter.next.1, %bb.d ]
  %.not = icmp ult i64 %.05982, %1
  %i.aw = select i1 %.not, i64 0, i64 %1
  %spec.select76 = sub nuw i64 %.05982, %i.aw     ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.086, i64 %.06081
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %.086, i64 %spec.select76
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bb = zext i8 %i.ay to i64
  %i.bc = zext i8 %i.ba to i64
  %i.bd = and i64 %i.ae, %i.bb
  %i.be = and i64 %i.ag, %i.bc
  %i.bf = or i64 %i.be, %i.bd
  %i.bg = trunc nuw i64 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %.06284, i64 %.06081
  store i8 %i.bg, ptr %i.bh, align 2, !tbaa !8
  %i.bi = or disjoint i64 %.06081, 1              ; 2 uses
  %i.bj = add i64 %spec.select76, 1               ; 2 uses
  %.not.1 = icmp ult i64 %i.bj, %1
  %i.bk = select i1 %.not.1, i64 0, i64 %1
  %spec.select76.1 = sub nuw i64 %i.bj, %i.bk     ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.086, i64 %i.bi
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %.086, i64 %spec.select76.1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = zext i8 %i.bm to i64
  %i.bq = zext i8 %i.bo to i64
  %i.br = and i64 %i.ae, %i.bp
  %i.bs = and i64 %i.ag, %i.bq
  %i.bt = or i64 %i.bs, %i.br
  %i.bu = trunc nuw i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.06284, i64 %i.bi
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !8
  %i.bw = add nuw i64 %.06081, 2                  ; 3 uses
  %i.bx = add i64 %spec.select76.1, 1             ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !20
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EVP_final_with_secret_suffix_sha1(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 4, !tbaa !26
  %.not = icmp eq i32 %i.c, 0
  %.not86 = icmp ult i64 %4, 2305843009213693952
  %or.cond = and i1 %.not86, %.not
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw i64 %4, 3                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = add i64 %i.d, %i.g                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.d
  %i.j = icmp ugt i64 %i.h, 4294967295
  %or.cond87 = or i1 %i.i, %i.j
  br i1 %or.cond87, label %bb.h, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = add i64 %3, 72
  %i.o = add i64 %i.n, %i.m
  %i.p = lshr i64 %i.o, 6
  %i.q = add nsw i64 %i.p, -1
  %i.r = add nuw nsw i64 %4, 72
  %i.s = add nuw nsw i64 %i.r, %i.m
  %i.t = lshr i64 %i.s, 6
  %i.u = shl i64 %3, 3
  %i.v = add i64 %i.u, %i.g                       ; 4 uses
  %5 = lshr i64 %i.v, 8
  %6 = lshr i64 %i.v, 16
  %7 = lshr i64 %i.v, 24
  %8 = trunc i64 %7 to i8
  %9 = trunc i64 %6 to i8
  %10 = insertelement <2 x i64> poison, i64 %5, i64 0
  %11 = insertelement <2 x i64> %10, i64 %i.v, i64 1
  %12 = trunc <2 x i64> %11 to <2 x i8>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = insertelement <4 x i8> poison, i8 %8, i64 0
  %14 = insertelement <4 x i8> %13, i8 %9, i64 1
  %15 = shufflevector <2 x i8> %12, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <4 x i8> %14, <4 x i8> %15, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.c

.preheader:                                       ; preds = %.split97.us
  %i.z = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.cu)
  store <4 x i32> %i.z, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = call noundef i32 @llvm.bswap.i32(i32 %.sroa.15.2)
  store i32 %i.ab, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph102, %.split97.us
  %.sroa.15.1 = phi i32 [ 0, %.lr.ph102 ], [ %.sroa.15.2, %.split97.us ] ; 2 uses
  %.080100 = phi i64 [ 0, %.lr.ph102 ], [ %i.cv, %.split97.us ] ; 3 uses
  %.08199 = phi i64 [ 0, %.lr.ph102 ], [ %i.by, %.split97.us ] ; 5 uses
  %i.ac = phi <4 x i32> [ zeroinitializer, %.lr.ph102 ], [ %i.cu, %.split97.us ] ; 2 uses
  %i.ad = icmp eq i64 %.080100, 0
  br i1 %i.ad, label %bb.d, label %OPENSSL_memcpy.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !28  ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %OPENSSL_memcpy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = zext i32 %i.ae to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 4 %i.w, i64 %i.ag, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.e, %bb.d, %bb.c
  %.079 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.ag, %bb.e ] ; 15 uses
  %i.ah = icmp ult i64 %.08199, %4
  br i1 %i.ah, label %bb.f, label %OPENSSL_memcpy.exit88

bb.f:                                             ; preds = %OPENSSL_memcpy.exit
  %i.ai = sub nsw i64 64, %.079
  %i.aj = sub nuw nsw i64 %4, %.08199
  %spec.select = call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.aj) ; 2 uses
  %i.ak = icmp eq i64 %spec.select, 0
  br i1 %i.ak, label %OPENSSL_memcpy.exit88, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.08199
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.079
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr readonly align 1 %i.al, i64 %spec.select, i1 false)
  br label %OPENSSL_memcpy.exit88

OPENSSL_memcpy.exit88:                            ; preds = %bb.g, %bb.f, %OPENSSL_memcpy.exit
  %i.an = icmp samesign ult i64 %.079, 64
  br i1 %i.an, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %OPENSSL_memcpy.exit88
  %i.ao = sub i64 %.08199, %.079                  ; 3 uses
  %i.ap = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %3) #9, !srcloc !12 ; 5 uses
  %i.aq = sub nuw nsw i64 64, %.079               ; 5 uses
  %min.iters.check = icmp samesign ugt i64 %.079, 60
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check125 = icmp samesign ugt i64 %.079, 48
  br i1 %min.iters.check125, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.aq, 12
  %n.vec = and i64 %i.aq, 112                     ; 4 uses
  %i.as = add nuw nsw i64 %.079, %n.vec           ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert126 = insertelement <16 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat127 = shufflevector <16 x i64> %broadcast.splatinsert126, <16 x i64> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert128 = insertelement <16 x i64> poison, i64 %.079, i64 0
  %broadcast.splat129 = shufflevector <16 x i64> %broadcast.splatinsert128, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i64> %broadcast.splat129, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.079
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.au = add <16 x i64> %broadcast.splat, %vec.ind ; 5 uses
  %i.av = xor <16 x i64> %broadcast.splat127, %i.au
  %i.aw = sub <16 x i64> %i.au, %broadcast.splat127
  %i.ax = xor <16 x i64> %i.aw, %i.au
  %i.ay = or <16 x i64> %i.ax, %i.av
  %i.az = xor <16 x i64> %i.ay, %i.au
  %i.ba = ashr <16 x i64> %i.az, splat (i64 63)
  %i.bb = trunc nsw <16 x i64> %i.ba to <16 x i8>
  %i.bc = icmp eq <16 x i64> %i.au, %broadcast.splat127
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bd, align 1, !tbaa !8
  %i.be = and <16 x i8> %wide.load, %i.bb
  %i.bf = select <16 x i1> %i.bc, <16 x i8> splat (i8 -128), <16 x i8> zeroinitializer
  %i.bg = or <16 x i8> %i.be, %i.bf
  store <16 x i8> %i.bg, ptr %i.bd, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.as, %vec.epilog.iter.check ], [ %.079, %vector.main.loop.iter.check ]
  %n.vec130 = and i64 %i.aq, 124                  ; 3 uses
  %i.bi = add nuw nsw i64 %.079, %n.vec130
  %broadcast.splatinsert131 = insertelement <4 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat132 = shufflevector <4 x i64> %broadcast.splatinsert131, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert133 = insertelement <4 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat134 = shufflevector <4 x i64> %broadcast.splatinsert133, <4 x i64> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert135 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat136 = shufflevector <4 x i64> %broadcast.splatinsert135, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction137 = add nuw nsw <4 x i64> %broadcast.splat136, <i64 0, i64 1, i64 2, i64 3>
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.079
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind139 = phi <4 x i64> [ %induction137, %vec.epilog.ph ], [ %vec.ind.next142, %vec.epilog.vector.body ] ; 2 uses
  %i.bk = add <4 x i64> %broadcast.splat132, %vec.ind139 ; 5 uses
  %i.bl = xor <4 x i64> %broadcast.splat134, %i.bk
  %i.bm = sub <4 x i64> %i.bk, %broadcast.splat134
  %i.bn = xor <4 x i64> %i.bm, %i.bk
  %i.bo = or <4 x i64> %i.bn, %i.bl
  %i.bp = xor <4 x i64> %i.bo, %i.bk
  %i.bq = ashr <4 x i64> %i.bp, splat (i64 63)
  %i.br = trunc nsw <4 x i64> %i.bq to <4 x i8>
  %i.bs = icmp eq <4 x i64> %i.bk, %broadcast.splat134
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index138 ; 2 uses
  %wide.load140 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !8
  %i.bu = and <4 x i8> %wide.load140, %i.br
  %i.bv = select <4 x i1> %i.bs, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.bw = or <4 x i8> %i.bu, %i.bv
  store <4 x i8> %i.bw, ptr %i.bt, align 1, !tbaa !8
  %index.next141 = add nuw i64 %index138, 4       ; 2 uses
  %vec.ind.next142 = add nuw nsw <4 x i64> %vec.ind139, splat (i64 4)
  %i.bx = icmp eq i64 %index.next141, %n.vec130
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n143 = icmp eq i64 %i.aq, %n.vec130
  br i1 %cmp.n143, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07790.ph = phi i64 [ %.079, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %OPENSSL_memcpy.exit88
  %reass.sub = add i64 %.08199, 64
  %i.by = sub i64 %reass.sub, %.079
  %i.bz = icmp eq i64 %.080100, %i.q
  %.fr = freeze i1 %i.bz
  br i1 %.fr, label %.split95.us.preheader, label %.split95.preheader

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.07790 = phi i64 [ %i.cn, %vec.epilog.scalar.ph ], [ %.07790.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ca = add i64 %i.ao, %.07790                  ; 5 uses
  %i.cb = xor i64 %i.ap, %i.ca
  %i.cc = sub i64 %i.ca, %i.ap
  %i.cd = xor i64 %i.cc, %i.ca
  %i.ce = or i64 %i.cd, %i.cb
  %i.cf = xor i64 %i.ce, %i.ca
  %.neg.i.i.i89 = ashr i64 %i.cf, 63
  %i.cg = trunc nsw i64 %.neg.i.i.i89 to i8
  %i.ch = icmp eq i64 %i.ca, %i.ap
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %.07790 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !8
  %i.ck = and i8 %i.cj, %i.cg
  %i.cl = select i1 %i.ch, i8 -128, i8 0
  %i.cm = or i8 %i.ck, %i.cl
  store i8 %i.cm, ptr %i.ci, align 1, !tbaa !8
  %i.cn = add nuw nsw i64 %.07790, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, 64
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !23

.split95.preheader:                               ; preds = %._crit_edge
  call void @SHA1_Transform(ptr noundef %0, ptr noundef nonnull %i.a) #8
  br label %.split97.us

.split95.us.preheader:                            ; preds = %._crit_edge
  %i.co = load <4 x i8>, ptr %i.x, align 4, !tbaa !8
  %i.cp = or <4 x i8> %i.co, %16
  store <4 x i8> %i.cp, ptr %i.x, align 4, !tbaa !8
  call void @SHA1_Transform(ptr noundef %0, ptr noundef nonnull %i.a) #8
  %i.cq = load <4 x i32>, ptr %0, align 4, !tbaa !16
  %i.cr = or <4 x i32> %i.cq, %i.ac
  %i.cs = load i32, ptr %i.y, align 4, !tbaa !16
  %i.ct = or i32 %i.cs, %.sroa.15.1
  br label %.split97.us

.split97.us:                                      ; preds = %.split95.preheader, %.split95.us.preheader
  %.sroa.15.2 = phi i32 [ %i.ct, %.split95.us.preheader ], [ %.sroa.15.1, %.split95.preheader ] ; 2 uses
  %i.cu = phi <4 x i32> [ %i.cr, %.split95.us.preheader ], [ %i.ac, %.split95.preheader ] ; 2 uses
  %i.cv = add nuw nsw i64 %.080100, 1             ; 2 uses
  %exitcond109.not = icmp eq i64 %i.cv, %i.t
  br i1 %exitcond109.not, label %.preheader, label %bb.c, !llvm.loop !24

bb.h:                                             ; preds = %bb.a, %bb.b, %.preheader
  %.076 = phi i32 [ 1, %.preheader ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.076
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @SHA1_Transform(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EVP_final_with_secret_suffix_sha256(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34
  %.not = icmp eq i32 %i.c, 0
  %.not86 = icmp ult i64 %4, 2305843009213693952
  %or.cond = and i1 %.not86, %.not
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw i64 %4, 3                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = add i64 %i.d, %i.g                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.d
  %i.j = icmp ugt i64 %i.h, 4294967295
  %or.cond87 = or i1 %i.i, %i.j
  br i1 %or.cond87, label %bb.h, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = add i64 %3, 72
  %i.o = add i64 %i.n, %i.m
  %i.p = lshr i64 %i.o, 6
  %i.q = add nsw i64 %i.p, -1
  %i.r = add nuw nsw i64 %4, 72
  %i.s = add nuw nsw i64 %i.r, %i.m
  %i.t = lshr i64 %i.s, 6
  %i.u = shl i64 %3, 3
  %i.v = add i64 %i.u, %i.g                       ; 4 uses
  %5 = lshr i64 %i.v, 8
  %6 = lshr i64 %i.v, 16
  %7 = lshr i64 %i.v, 24
  %8 = trunc i64 %7 to i8
  %9 = trunc i64 %6 to i8
  %10 = insertelement <2 x i64> poison, i64 %5, i64 0
  %11 = insertelement <2 x i64> %10, i64 %i.v, i64 1
  %12 = trunc <2 x i64> %11 to <2 x i8>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = insertelement <4 x i8> poison, i8 %8, i64 0
  %14 = insertelement <4 x i8> %13, i8 %9, i64 1
  %15 = shufflevector <2 x i8> %12, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <4 x i8> %14, <4 x i8> %15, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.c

.preheader:                                       ; preds = %.split97.us
  %i.z = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.cv)
  store <4 x i32> %i.z, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.cw)
  store <4 x i32> %i.ab, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph102, %.split97.us
  %.080100 = phi i64 [ 0, %.lr.ph102 ], [ %i.cx, %.split97.us ] ; 3 uses
  %.08199 = phi i64 [ 0, %.lr.ph102 ], [ %i.bz, %.split97.us ] ; 5 uses
  %i.ac = phi <4 x i32> [ zeroinitializer, %.lr.ph102 ], [ %i.cv, %.split97.us ] ; 2 uses
  %i.ad = phi <4 x i32> [ zeroinitializer, %.lr.ph102 ], [ %i.cw, %.split97.us ] ; 2 uses
  %i.ae = icmp eq i64 %.080100, 0
  br i1 %i.ae, label %bb.d, label %OPENSSL_memcpy.exit

bb.d:                                             ; preds = %bb.c
  %i.af = load i32, ptr %i.k, align 4, !tbaa !36  ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %OPENSSL_memcpy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = zext i32 %i.af to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 4 %i.w, i64 %i.ah, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.e, %bb.d, %bb.c
  %.079 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.ah, %bb.e ] ; 15 uses
  %i.ai = icmp ult i64 %.08199, %4
  br i1 %i.ai, label %bb.f, label %OPENSSL_memcpy.exit88

bb.f:                                             ; preds = %OPENSSL_memcpy.exit
  %i.aj = sub nsw i64 64, %.079
  %i.ak = sub nuw nsw i64 %4, %.08199
  %spec.select = call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ak) ; 2 uses
  %i.al = icmp eq i64 %spec.select, 0
  br i1 %i.al, label %OPENSSL_memcpy.exit88, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.08199
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.079
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr readonly align 1 %i.am, i64 %spec.select, i1 false)
  br label %OPENSSL_memcpy.exit88

OPENSSL_memcpy.exit88:                            ; preds = %bb.g, %bb.f, %OPENSSL_memcpy.exit
  %i.ao = icmp samesign ult i64 %.079, 64
  br i1 %i.ao, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %OPENSSL_memcpy.exit88
  %i.ap = sub i64 %.08199, %.079                  ; 3 uses
  %i.aq = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %3) #9, !srcloc !12 ; 5 uses
  %i.ar = sub nuw nsw i64 64, %.079               ; 5 uses
  %min.iters.check = icmp samesign ugt i64 %.079, 60
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check131 = icmp samesign ugt i64 %.079, 48
  br i1 %min.iters.check131, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ar, 12
  %n.vec = and i64 %i.ar, 112                     ; 4 uses
  %i.at = add nuw nsw i64 %.079, %n.vec           ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert132 = insertelement <16 x i64> poison, i64 %i.aq, i64 0
  %broadcast.splat133 = shufflevector <16 x i64> %broadcast.splatinsert132, <16 x i64> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert134 = insertelement <16 x i64> poison, i64 %.079, i64 0
  %broadcast.splat135 = shufflevector <16 x i64> %broadcast.splatinsert134, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i64> %broadcast.splat135, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %.079
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.av = add <16 x i64> %broadcast.splat, %vec.ind ; 5 uses
  %i.aw = xor <16 x i64> %broadcast.splat133, %i.av
  %i.ax = sub <16 x i64> %i.av, %broadcast.splat133
  %i.ay = xor <16 x i64> %i.ax, %i.av
  %i.az = or <16 x i64> %i.ay, %i.aw
  %i.ba = xor <16 x i64> %i.az, %i.av
  %i.bb = ashr <16 x i64> %i.ba, splat (i64 63)
  %i.bc = trunc nsw <16 x i64> %i.bb to <16 x i8>
  %i.bd = icmp eq <16 x i64> %i.av, %broadcast.splat133
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.be, align 1, !tbaa !8
  %i.bf = and <16 x i8> %wide.load, %i.bc
  %i.bg = select <16 x i1> %i.bd, <16 x i8> splat (i8 -128), <16 x i8> zeroinitializer
  %i.bh = or <16 x i8> %i.bf, %i.bg
  store <16 x i8> %i.bh, ptr %i.be, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.at, %vec.epilog.iter.check ], [ %.079, %vector.main.loop.iter.check ]
  %n.vec136 = and i64 %i.ar, 124                  ; 3 uses
  %i.bj = add nuw nsw i64 %.079, %n.vec136
  %broadcast.splatinsert137 = insertelement <4 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat138 = shufflevector <4 x i64> %broadcast.splatinsert137, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert139 = insertelement <4 x i64> poison, i64 %i.aq, i64 0
  %broadcast.splat140 = shufflevector <4 x i64> %broadcast.splatinsert139, <4 x i64> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert141 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat142 = shufflevector <4 x i64> %broadcast.splatinsert141, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction143 = add nuw nsw <4 x i64> %broadcast.splat142, <i64 0, i64 1, i64 2, i64 3>
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.079
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind145 = phi <4 x i64> [ %induction143, %vec.epilog.ph ], [ %vec.ind.next148, %vec.epilog.vector.body ] ; 2 uses
  %i.bl = add <4 x i64> %broadcast.splat138, %vec.ind145 ; 5 uses
  %i.bm = xor <4 x i64> %broadcast.splat140, %i.bl
  %i.bn = sub <4 x i64> %i.bl, %broadcast.splat140
  %i.bo = xor <4 x i64> %i.bn, %i.bl
  %i.bp = or <4 x i64> %i.bo, %i.bm
  %i.bq = xor <4 x i64> %i.bp, %i.bl
  %i.br = ashr <4 x i64> %i.bq, splat (i64 63)
  %i.bs = trunc nsw <4 x i64> %i.br to <4 x i8>
  %i.bt = icmp eq <4 x i64> %i.bl, %broadcast.splat140
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index144 ; 2 uses
  %wide.load146 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !8
  %i.bv = and <4 x i8> %wide.load146, %i.bs
  %i.bw = select <4 x i1> %i.bt, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.bx = or <4 x i8> %i.bv, %i.bw
  store <4 x i8> %i.bx, ptr %i.bu, align 1, !tbaa !8
  %index.next147 = add nuw i64 %index144, 4       ; 2 uses
  %vec.ind.next148 = add nuw nsw <4 x i64> %vec.ind145, splat (i64 4)
  %i.by = icmp eq i64 %index.next147, %n.vec136
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n149 = icmp eq i64 %i.ar, %n.vec136
  br i1 %cmp.n149, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07790.ph = phi i64 [ %.079, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %OPENSSL_memcpy.exit88
  %reass.sub = add i64 %.08199, 64
  %i.bz = sub i64 %reass.sub, %.079
  %i.ca = icmp eq i64 %.080100, %i.q
  %.fr = freeze i1 %i.ca
  br i1 %.fr, label %.split95.us.preheader, label %.split95.preheader

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.07790 = phi i64 [ %i.co, %vec.epilog.scalar.ph ], [ %.07790.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cb = add i64 %i.ap, %.07790                  ; 5 uses
  %i.cc = xor i64 %i.aq, %i.cb
  %i.cd = sub i64 %i.cb, %i.aq
  %i.ce = xor i64 %i.cd, %i.cb
  %i.cf = or i64 %i.ce, %i.cc
  %i.cg = xor i64 %i.cf, %i.cb
  %.neg.i.i.i89 = ashr i64 %i.cg, 63
  %i.ch = trunc nsw i64 %.neg.i.i.i89 to i8
  %i.ci = icmp eq i64 %i.cb, %i.aq
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.07790 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !8
  %i.cl = and i8 %i.ck, %i.ch
  %i.cm = select i1 %i.ci, i8 -128, i8 0
  %i.cn = or i8 %i.cl, %i.cm
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !8
  %i.co = add nuw nsw i64 %.07790, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.co, 64
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !31

.split95.preheader:                               ; preds = %._crit_edge
  call void @SHA256_Transform(ptr noundef %0, ptr noundef nonnull %i.a) #8
  br label %.split97.us

.split95.us.preheader:                            ; preds = %._crit_edge
  %i.cp = load <4 x i8>, ptr %i.x, align 4, !tbaa !8
  %i.cq = or <4 x i8> %i.cp, %16
  store <4 x i8> %i.cq, ptr %i.x, align 4, !tbaa !8
  call void @SHA256_Transform(ptr noundef %0, ptr noundef nonnull %i.a) #8
  %i.cr = load <4 x i32>, ptr %0, align 4, !tbaa !16
  %i.cs = or <4 x i32> %i.cr, %i.ac
  %i.ct = load <4 x i32>, ptr %i.y, align 4, !tbaa !16
  %i.cu = or <4 x i32> %i.ct, %i.ad
  br label %.split97.us

.split97.us:                                      ; preds = %.split95.preheader, %.split95.us.preheader
  %i.cv = phi <4 x i32> [ %i.cs, %.split95.us.preheader ], [ %i.ac, %.split95.preheader ] ; 2 uses
  %i.cw = phi <4 x i32> [ %i.cu, %.split95.us.preheader ], [ %i.ad, %.split95.preheader ] ; 2 uses
  %i.cx = add nuw nsw i64 %.080100, 1             ; 2 uses
  %exitcond109.not = icmp eq i64 %i.cx, %i.t
  br i1 %exitcond109.not, label %.preheader, label %bb.c, !llvm.loop !32

bb.h:                                             ; preds = %bb.a, %bb.b, %.preheader
  %.076 = phi i32 [ 1, %.preheader ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.076
}

declare void @SHA256_Transform(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EVP_final_with_secret_suffix_sha384(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !42
  %.not = icmp eq i64 %i.c, 0
  %.not87 = icmp ult i64 %4, 2305843009213693952
  %or.cond = and i1 %.not87, %.not
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw i64 %4, 3                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.d
  %i.i = icmp ugt i64 %i.g, 4294967295
  %or.cond88 = or i1 %i.h, %i.i
  br i1 %or.cond88, label %bb.h, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !44
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = add i64 %3, 144
  %i.n = add i64 %i.m, %i.l
  %i.o = lshr i64 %i.n, 7
  %i.p = add nsw i64 %i.o, -1
  %i.q = add nuw nsw i64 %4, 144
  %i.r = add nuw nsw i64 %i.q, %i.l
  %i.s = lshr i64 %i.r, 7
  %i.t = shl i64 %3, 3
  %i.u = add i64 %i.f, %i.t                       ; 4 uses
  %5 = lshr i64 %i.u, 8
  %6 = lshr i64 %i.u, 16
  %7 = lshr i64 %i.u, 24
  %8 = trunc i64 %7 to i8
  %9 = trunc i64 %6 to i8
  %10 = insertelement <2 x i64> poison, i64 %5, i64 0
  %11 = insertelement <2 x i64> %10, i64 %i.u, i64 1
  %12 = trunc <2 x i64> %11 to <2 x i8>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 124 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = insertelement <4 x i8> poison, i8 %8, i64 0
  %14 = insertelement <4 x i8> %13, i8 %9, i64 1
  %15 = shufflevector <2 x i8> %12, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <4 x i8> %14, <4 x i8> %15, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.c

.preheader:                                       ; preds = %.split98.us
  %i.z = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %i.da)
  store <2 x i64> %i.z, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %i.db)
  store <2 x i64> %i.ab, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %i.dc)
  store <2 x i64> %i.ad, ptr %i.ac, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph103, %.split98.us
  %.081101 = phi i64 [ 0, %.lr.ph103 ], [ %i.dd, %.split98.us ] ; 3 uses
  %.082100 = phi i64 [ 0, %.lr.ph103 ], [ %i.cc, %.split98.us ] ; 5 uses
  %i.ae = phi <2 x i64> [ zeroinitializer, %.lr.ph103 ], [ %i.da, %.split98.us ] ; 2 uses
  %i.af = phi <2 x i64> [ zeroinitializer, %.lr.ph103 ], [ %i.db, %.split98.us ] ; 2 uses
  %i.ag = phi <2 x i64> [ zeroinitializer, %.lr.ph103 ], [ %i.dc, %.split98.us ] ; 2 uses
  %i.ah = icmp eq i64 %.081101, 0
  br i1 %i.ah, label %bb.d, label %OPENSSL_memcpy.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !44  ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %OPENSSL_memcpy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = zext i32 %i.ai to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 8 %i.v, i64 %i.ak, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.e, %bb.d, %bb.c
  %.080 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.ak, %bb.e ] ; 15 uses
  %i.al = icmp ult i64 %.082100, %4
  br i1 %i.al, label %bb.f, label %OPENSSL_memcpy.exit89

bb.f:                                             ; preds = %OPENSSL_memcpy.exit
  %i.am = sub nsw i64 128, %.080
  %i.an = sub nuw nsw i64 %4, %.082100
  %spec.select = call i64 @llvm.umin.i64(i64 %i.am, i64 %i.an) ; 2 uses
  %i.ao = icmp eq i64 %spec.select, 0
  br i1 %i.ao, label %OPENSSL_memcpy.exit89, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %.082100
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.080
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr readonly align 1 %i.ap, i64 %spec.select, i1 false)
  br label %OPENSSL_memcpy.exit89

OPENSSL_memcpy.exit89:                            ; preds = %bb.g, %bb.f, %OPENSSL_memcpy.exit
  %i.ar = icmp samesign ult i64 %.080, 128
  br i1 %i.ar, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %OPENSSL_memcpy.exit89
  %i.as = sub i64 %.082100, %.080                 ; 3 uses
  %i.at = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %3) #9, !srcloc !12 ; 5 uses
  %i.au = sub nuw nsw i64 128, %.080              ; 5 uses
  %min.iters.check = icmp samesign ugt i64 %.080, 124
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check129 = icmp samesign ugt i64 %.080, 112
  br i1 %min.iters.check129, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.av = and i64 %i.au, 12
  %n.vec = and i64 %i.au, 240                     ; 4 uses
  %i.aw = add nuw nsw i64 %.080, %n.vec           ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert130 = insertelement <16 x i64> poison, i64 %i.at, i64 0
  %broadcast.splat131 = shufflevector <16 x i64> %broadcast.splatinsert130, <16 x i64> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert132 = insertelement <16 x i64> poison, i64 %.080, i64 0
  %broadcast.splat133 = shufflevector <16 x i64> %broadcast.splatinsert132, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i64> %broadcast.splat133, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %.080
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ay = add <16 x i64> %broadcast.splat, %vec.ind ; 5 uses
  %i.az = xor <16 x i64> %broadcast.splat131, %i.ay
  %i.ba = sub <16 x i64> %i.ay, %broadcast.splat131
  %i.bb = xor <16 x i64> %i.ba, %i.ay
  %i.bc = or <16 x i64> %i.bb, %i.az
  %i.bd = xor <16 x i64> %i.bc, %i.ay
  %i.be = ashr <16 x i64> %i.bd, splat (i64 63)
  %i.bf = trunc nsw <16 x i64> %i.be to <16 x i8>
  %i.bg = icmp eq <16 x i64> %i.ay, %broadcast.splat131
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bh, align 1, !tbaa !8
  %i.bi = and <16 x i8> %wide.load, %i.bf
  %i.bj = select <16 x i1> %i.bg, <16 x i8> splat (i8 -128), <16 x i8> zeroinitializer
  %i.bk = or <16 x i8> %i.bi, %i.bj
  store <16 x i8> %i.bk, ptr %i.bh, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.aw, %vec.epilog.iter.check ], [ %.080, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %i.au, 252                  ; 3 uses
  %i.bm = add nuw nsw i64 %.080, %n.vec134
  %broadcast.splatinsert135 = insertelement <4 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat136 = shufflevector <4 x i64> %broadcast.splatinsert135, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert137 = insertelement <4 x i64> poison, i64 %i.at, i64 0
  %broadcast.splat138 = shufflevector <4 x i64> %broadcast.splatinsert137, <4 x i64> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert139 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat140 = shufflevector <4 x i64> %broadcast.splatinsert139, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction141 = add nuw nsw <4 x i64> %broadcast.splat140, <i64 0, i64 1, i64 2, i64 3>
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.080
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind143 = phi <4 x i64> [ %induction141, %vec.epilog.ph ], [ %vec.ind.next146, %vec.epilog.vector.body ] ; 2 uses
  %i.bo = add <4 x i64> %broadcast.splat136, %vec.ind143 ; 5 uses
  %i.bp = xor <4 x i64> %broadcast.splat138, %i.bo
  %i.bq = sub <4 x i64> %i.bo, %broadcast.splat138
  %i.br = xor <4 x i64> %i.bq, %i.bo
  %i.bs = or <4 x i64> %i.br, %i.bp
  %i.bt = xor <4 x i64> %i.bs, %i.bo
  %i.bu = ashr <4 x i64> %i.bt, splat (i64 63)
  %i.bv = trunc nsw <4 x i64> %i.bu to <4 x i8>
  %i.bw = icmp eq <4 x i64> %i.bo, %broadcast.splat138
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index142 ; 2 uses
  %wide.load144 = load <4 x i8>, ptr %i.bx, align 1, !tbaa !8
  %i.by = and <4 x i8> %wide.load144, %i.bv
  %i.bz = select <4 x i1> %i.bw, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.ca = or <4 x i8> %i.by, %i.bz
  store <4 x i8> %i.ca, ptr %i.bx, align 1, !tbaa !8
  %index.next145 = add nuw i64 %index142, 4       ; 2 uses
  %vec.ind.next146 = add nuw nsw <4 x i64> %vec.ind143, splat (i64 4)
  %i.cb = icmp eq i64 %index.next145, %n.vec134
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n147 = icmp eq i64 %i.au, %n.vec134
  br i1 %cmp.n147, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07891.ph = phi i64 [ %.080, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %OPENSSL_memcpy.exit89
  %reass.sub = add i64 %.082100, 128
  %i.cc = sub i64 %reass.sub, %.080
  %i.cd = icmp eq i64 %.081101, %i.p
  %.fr = freeze i1 %i.cd
  br i1 %.fr, label %.split96.us.preheader, label %.split96.preheader

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.07891 = phi i64 [ %i.cr, %vec.epilog.scalar.ph ], [ %.07891.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ce = add i64 %i.as, %.07891                  ; 5 uses
  %i.cf = xor i64 %i.at, %i.ce
  %i.cg = sub i64 %i.ce, %i.at
  %i.ch = xor i64 %i.cg, %i.ce
  %i.ci = or i64 %i.ch, %i.cf
  %i.cj = xor i64 %i.ci, %i.ce
  %.neg.i.i.i90 = ashr i64 %i.cj, 63
  %i.ck = trunc nsw i64 %.neg.i.i.i90 to i8
  %i.cl = icmp eq i64 %i.ce, %i.at
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.07891 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.co = and i8 %i.cn, %i.ck
  %i.cp = select i1 %i.cl, i8 -128, i8 0
  %i.cq = or i8 %i.co, %i.cp
  store i8 %i.cq, ptr %i.cm, align 1, !tbaa !8
  %i.cr = add nuw nsw i64 %.07891, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, 128
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !39

.split96.preheader:                               ; preds = %._crit_edge
  call void @SHA512_Transform(ptr noundef %0, ptr noundef nonnull %i.a) #8
  br label %.split98.us

.split96.us.preheader:                            ; preds = %._crit_edge
  %i.cs = load <4 x i8>, ptr %i.w, align 4, !tbaa !8
  %i.ct = or <4 x i8> %i.cs, %16
  store <4 x i8> %i.ct, ptr %i.w, align 4, !tbaa !8
  call void @SHA512_Transform(ptr noundef %0, ptr noundef nonnull %i.a) #8
  %i.cu = load <2 x i64>, ptr %0, align 8, !tbaa !10
  %i.cv = or <2 x i64> %i.ae, %i.cu
  %i.cw = load <2 x i64>, ptr %i.x, align 8, !tbaa !10
  %i.cx = or <2 x i64> %i.af, %i.cw
  %i.cy = load <2 x i64>, ptr %i.y, align 8, !tbaa !10
  %i.cz = or <2 x i64> %i.ag, %i.cy
  br label %.split98.us

.split98.us:                                      ; preds = %.split96.preheader, %.split96.us.preheader
  %i.da = phi <2 x i64> [ %i.cv, %.split96.us.preheader ], [ %i.ae, %.split96.preheader ] ; 2 uses
  %i.db = phi <2 x i64> [ %i.cx, %.split96.us.preheader ], [ %i.af, %.split96.preheader ] ; 2 uses
  %i.dc = phi <2 x i64> [ %i.cz, %.split96.us.preheader ], [ %i.ag, %.split96.preheader ] ; 2 uses
  %i.dd = add nuw nsw i64 %.081101, 1             ; 2 uses
  %exitcond110.not = icmp eq i64 %i.dd, %i.s
  br i1 %exitcond110.not, label %.preheader, label %bb.c, !llvm.loop !40

bb.h:                                             ; preds = %bb.a, %bb.b, %.preheader
  %.077 = phi i32 [ 1, %.preheader ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.077
}

declare void @SHA512_Transform(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @EVP_tls_cbc_record_digest_supported(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @EVP_MD_type(ptr noundef %0) #8
  %i.b = icmp eq i32 %i.a, 64
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @EVP_MD_type(ptr noundef %0) #8
  %i.d = icmp eq i32 %i.c, 672
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @EVP_MD_type(ptr noundef %0) #8
  %i.f = icmp eq i32 %i.e, 673
  %i.g = zext i1 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ %i.g, %bb.c ]
  ret i32 %i.h
}

declare i32 @EVP_MD_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @EVP_tls_cbc_digest_record(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 24 uses
  %9 = alloca %struct.sha512_state_st, align 8    ; 11 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 16 uses
  %10 = alloca %struct.sha256_state_st, align 4   ; 11 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 16 uses
  %11 = alloca %struct.sha_state_st, align 4      ; 11 uses
  %i.f = alloca [20 x i8], align 16               ; 4 uses
  %i.g = tail call i32 @EVP_MD_type(ptr noundef %0) #8
  %i.h = icmp eq i32 %i.g, 64
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i32 %8, 64
  br i1 %i.i, label %EVP_tls_cbc_digest_record_sha1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.j = icmp eq i32 %8, 0
  br i1 %i.j, label %vector.body70, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %8 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr readonly align 1 %7, i64 %i.k, i1 false)
  br label %vector.body70

vector.body70:                                    ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load72 = load <16 x i8>, ptr %i.e, align 16, !tbaa !8
  %wide.load73 = load <16 x i8>, ptr %i.l, align 16, !tbaa !8
  %i.m = xor <16 x i8> %wide.load72, splat (i8 54)
  %i.n = xor <16 x i8> %wide.load73, splat (i8 54)
  store <16 x i8> %i.m, ptr %i.e, align 16, !tbaa !8
  store <16 x i8> %i.n, ptr %i.l, align 16, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %wide.load72.1 = load <16 x i8>, ptr %i.o, align 16, !tbaa !8
  %wide.load73.1 = load <16 x i8>, ptr %i.p, align 16, !tbaa !8
  %i.q = xor <16 x i8> %wide.load72.1, splat (i8 54)
  %i.r = xor <16 x i8> %wide.load73.1, splat (i8 54)
  store <16 x i8> %i.q, ptr %i.o, align 16, !tbaa !8
  store <16 x i8> %i.r, ptr %i.p, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.s = call i32 @SHA1_Init(ptr noundef nonnull %11) #8 ; 0 uses
  %i.t = call i32 @SHA1_Update(ptr noundef nonnull %11, ptr noundef nonnull %i.e, i64 noundef 64) #8 ; 0 uses
  %i.u = call i32 @SHA1_Update(ptr noundef nonnull %11, ptr noundef %3, i64 noundef 13) #8 ; 0 uses
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %6, i64 276) ; 4 uses
  %i.v = call i32 @SHA1_Update(ptr noundef nonnull %11, ptr noundef %4, i64 noundef %spec.select.i) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 %spec.select.i
  %i.x = sub i64 %5, %spec.select.i
  %i.y = sub nuw i64 %6, %spec.select.i
  %i.z = call i32 @EVP_final_with_secret_suffix_sha1(ptr noundef nonnull %11, ptr noundef nonnull %i.f, ptr noundef %i.w, i64 noundef %i.x, i64 noundef %i.y)
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.e, label %vector.ph76

vector.ph76:                                      ; preds = %vector.body70
  %i.aa = call i32 @SHA1_Init(ptr noundef nonnull %11) #8 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load79 = load <16 x i8>, ptr %i.e, align 16, !tbaa !8
  %wide.load80 = load <16 x i8>, ptr %i.ab, align 16, !tbaa !8
  %i.ac = xor <16 x i8> %wide.load79, splat (i8 106)
  %i.ad = xor <16 x i8> %wide.load80, splat (i8 106)
  store <16 x i8> %i.ac, ptr %i.e, align 16, !tbaa !8
  store <16 x i8> %i.ad, ptr %i.ab, align 16, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %wide.load79.1 = load <16 x i8>, ptr %i.ae, align 16, !tbaa !8
  %wide.load80.1 = load <16 x i8>, ptr %i.af, align 16, !tbaa !8
  %i.ag = xor <16 x i8> %wide.load79.1, splat (i8 106)
  %i.ah = xor <16 x i8> %wide.load80.1, splat (i8 106)
  store <16 x i8> %i.ag, ptr %i.ae, align 16, !tbaa !8
  store <16 x i8> %i.ah, ptr %i.af, align 16, !tbaa !8
  %i.ai = call i32 @SHA1_Update(ptr noundef nonnull %11, ptr noundef nonnull %i.e, i64 noundef 64) #8 ; 0 uses
  %i.aj = call i32 @SHA1_Update(ptr noundef nonnull %11, ptr noundef nonnull %i.f, i64 noundef 20) #8 ; 0 uses
  %i.ak = call i32 @SHA1_Final(ptr noundef %1, ptr noundef nonnull %11) #8 ; 0 uses
  store i64 20, ptr %2, align 8, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %vector.ph76, %vector.body70
  %.024.i = phi i32 [ 1, %vector.ph76 ], [ 0, %vector.body70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %EVP_tls_cbc_digest_record_sha1.exit

bb.f:                                             ; preds = %bb.a
  %i.al = tail call i32 @EVP_MD_type(ptr noundef %0) #8
  %i.am = icmp eq i32 %i.al, 672
  br i1 %i.am, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.an = icmp ugt i32 %8, 64
  br i1 %i.an, label %EVP_tls_cbc_digest_record_sha1.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.ao = icmp eq i32 %8, 0
  br i1 %i.ao, label %vector.body56, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = zext nneg i32 %8 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr readonly align 1 %7, i64 %i.ap, i1 false)
  br label %vector.body56

vector.body56:                                    ; preds = %bb.i, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load58 = load <16 x i8>, ptr %i.c, align 16, !tbaa !8
  %wide.load59 = load <16 x i8>, ptr %i.aq, align 16, !tbaa !8
  %i.ar = xor <16 x i8> %wide.load58, splat (i8 54)
  %i.as = xor <16 x i8> %wide.load59, splat (i8 54)
  store <16 x i8> %i.ar, ptr %i.c, align 16, !tbaa !8
  store <16 x i8> %i.as, ptr %i.aq, align 16, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %wide.load58.1 = load <16 x i8>, ptr %i.at, align 16, !tbaa !8
  %wide.load59.1 = load <16 x i8>, ptr %i.au, align 16, !tbaa !8
  %i.av = xor <16 x i8> %wide.load58.1, splat (i8 54)
  %i.aw = xor <16 x i8> %wide.load59.1, splat (i8 54)
  store <16 x i8> %i.av, ptr %i.at, align 16, !tbaa !8
  store <16 x i8> %i.aw, ptr %i.au, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.ax = call i32 @SHA256_Init(ptr noundef nonnull %10) #8 ; 0 uses
  %i.ay = call i32 @SHA256_Update(ptr noundef nonnull %10, ptr noundef nonnull %i.c, i64 noundef 64) #8 ; 0 uses
  %i.az = call i32 @SHA256_Update(ptr noundef nonnull %10, ptr noundef %3, i64 noundef 13) #8 ; 0 uses
  %spec.select.i31 = call i64 @llvm.usub.sat.i64(i64 %6, i64 288) ; 4 uses
  %i.ba = call i32 @SHA256_Update(ptr noundef nonnull %10, ptr noundef %4, i64 noundef %spec.select.i31) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 %spec.select.i31
  %i.bc = sub i64 %5, %spec.select.i31
  %i.bd = sub nuw i64 %6, %spec.select.i31
  %i.be = call i32 @EVP_final_with_secret_suffix_sha256(ptr noundef nonnull %10, ptr noundef nonnull %i.d, ptr noundef %i.bb, i64 noundef %i.bc, i64 noundef %i.bd)
  %.not.i32 = icmp eq i32 %i.be, 0
  br i1 %.not.i32, label %bb.j, label %vector.ph62

vector.ph62:                                      ; preds = %vector.body56
  %i.bf = call i32 @SHA256_Init(ptr noundef nonnull %10) #8 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load65 = load <16 x i8>, ptr %i.c, align 16, !tbaa !8
  %wide.load66 = load <16 x i8>, ptr %i.bg, align 16, !tbaa !8
  %i.bh = xor <16 x i8> %wide.load65, splat (i8 106)
  %i.bi = xor <16 x i8> %wide.load66, splat (i8 106)
  store <16 x i8> %i.bh, ptr %i.c, align 16, !tbaa !8
  store <16 x i8> %i.bi, ptr %i.bg, align 16, !tbaa !8
end_hunk_0
