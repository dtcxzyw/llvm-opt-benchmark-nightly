Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/tls_cbc?download=true
inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@EVP_tls_cbc_remove_padding:bb.a
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !20

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
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
  br i1 %i.e, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %1, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.a, %bb.b
  %i.f = icmp ult i64 %spec.select, %4
  br i1 %i.f, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_ZL14OPENSSL_memsetPvim.exit
  %.067.lcssa = phi i64 [ 0, %_ZL14OPENSSL_memsetPvim.exit ], [ %i.y, %.lr.ph ]
  %i.g = icmp ugt i64 %1, 1
  br i1 %i.g, label %.lr.ph87.preheader, label %._crit_edge

.lr.ph87.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %1, 1
  %unroll_iter = and i64 %1, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod94 = trunc i64 %1 to i1
  br label %.lr.ph87

.lr.ph:                                           ; preds = %_ZL14OPENSSL_memsetPvim.exit, %.lr.ph
  %.06380 = phi i64 [ %i.aa, %.lr.ph ], [ 0, %_ZL14OPENSSL_memsetPvim.exit ] ; 2 uses
  %.06579 = phi i64 [ %i.z, %.lr.ph ], [ %spec.select, %_ZL14OPENSSL_memsetPvim.exit ] ; 7 uses
  %.06678 = phi i8 [ %i.j, %.lr.ph ], [ 0, %_ZL14OPENSSL_memsetPvim.exit ]
  %.06777 = phi i64 [ %i.y, %.lr.ph ], [ 0, %_ZL14OPENSSL_memsetPvim.exit ]
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
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %.lobit = ashr i64 %i.o, 63
  %i.r = trunc nsw i64 %.lobit to i8
  %i.s = and i8 %i.q, %i.r
  %i.t = and i8 %i.s, %i.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select75 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = or i8 %i.t, %i.v
  store i8 %i.w, ptr %i.u, align 1, !tbaa !11
  %i.x = select i1 %i.i, i64 %spec.select75, i64 0
  %i.y = or i64 %i.x, %.06777                     ; 2 uses
  %i.z = add nuw i64 %.06579, 1                   ; 2 uses
  %i.aa = add nuw nsw i64 %spec.select75, 1
  %exitcond.not = icmp eq i64 %i.z, %4
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.preheader
  br i1 %i.e, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.0.lcssa93 = phi ptr [ %i.a, %._crit_edge ], [ %.06284, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull readonly align 16 %.0.lcssa93, i64 %1, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %bb.c
  %.086 = phi ptr [ %.06284, %bb.c ], [ %i.a, %.lr.ph87.preheader ] ; 7 uses
  %.06185 = phi i64 [ %i.aq, %bb.c ], [ 1, %.lr.ph87.preheader ] ; 2 uses
  %.06284 = phi ptr [ %.086, %bb.c ], [ %i.b, %.lr.ph87.preheader ] ; 5 uses
  %.16883 = phi i64 [ %i.ar, %bb.c ], [ %.067.lcssa, %.lr.ph87.preheader ] ; 2 uses
  %i.ab = and i64 %.16883, 1
  %i.ac = add nuw nsw i64 %i.ab, 255
  %i.ad = and i64 %i.ac, 255
  %i.ae = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.ad) #9, !srcloc !15
  %i.af = trunc i64 %i.ae to i8                   ; 4 uses
  %i.ag = xor i8 %i.af, -1                        ; 3 uses
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %.not.epil = icmp ult i64 %i.bo, %1
  %i.ah = select i1 %.not.epil, i64 0, i64 %1
  %spec.select76.epil = sub nuw i64 %i.bo, %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %.086, i64 %i.bn
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %.086, i64 %spec.select76.epil
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !11
  %i.am = and i8 %i.aj, %i.af
  %i.an = and i8 %i.al, %i.ag
  %i.ao = or disjoint i8 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.06284, i64 %i.bn
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.aq = shl i64 %.06185, 1                      ; 2 uses
  %i.ar = lshr i64 %.16883, 1
  %i.as = icmp ult i64 %i.aq, %1
  br i1 %i.as, label %.lr.ph87, label %._crit_edge.thread, !llvm.loop !22

bb.d:                                             ; preds = %bb.d, %.lr.ph87
  %.05982 = phi i64 [ %.06185, %.lr.ph87 ], [ %i.bo, %bb.d ] ; 2 uses
  %.06081 = phi i64 [ 0, %.lr.ph87 ], [ %i.bn, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph87 ], [ %niter.next.1, %bb.d ]
  %.not = icmp ult i64 %.05982, %1
  %i.at = select i1 %.not, i64 0, i64 %1
  %spec.select76 = sub nuw i64 %.05982, %i.at     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.086, i64 %.06081
  %i.av = load i8, ptr %i.au, align 2, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %.086, i64 %spec.select76
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ay = and i8 %i.av, %i.af
  %i.az = and i8 %i.ax, %i.ag
  %i.ba = or disjoint i8 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.06284, i64 %.06081
  store i8 %i.ba, ptr %i.bb, align 2, !tbaa !11
  %i.bc = or disjoint i64 %.06081, 1              ; 2 uses
  %i.bd = add i64 %spec.select76, 1               ; 2 uses
  %.not.1 = icmp ult i64 %i.bd, %1
  %i.be = select i1 %.not.1, i64 0, i64 %1
  %spec.select76.1 = sub nuw i64 %i.bd, %i.be     ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.086, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %.086, i64 %spec.select76.1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bj = and i8 %i.bg, %i.af
  %i.bk = and i8 %i.bi, %i.ag
  %i.bl = or disjoint i8 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.06284, i64 %i.bc
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !11
  %i.bn = add nuw i64 %.06081, 2                  ; 3 uses
  %i.bo = add i64 %spec.select76.1, 1             ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !23
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_sha1_final_with_secret_suffix(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 4, !tbaa !29
  %.not = icmp eq i32 %i.c, 0
  %.not86 = icmp ult i64 %4, 2305843009213693952
  %or.cond = and i1 %.not86, %.not
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw i64 %4, 3                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = add i64 %i.d, %i.g                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.d
  %i.j = icmp ugt i64 %i.h, 4294967295
  %or.cond87 = or i1 %i.i, %i.j
  br i1 %or.cond87, label %bb.h, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = add i64 %3, 72
  %i.o = add i64 %i.n, %i.m
  %i.p = lshr i64 %i.o, 6
  %i.q = add nsw i64 %i.p, -1
  %i.r = add nuw nsw i64 %4, 72
  %i.s = add nuw nsw i64 %i.r, %i.m
  %i.t = lshr i64 %i.s, 6
  %i.u = shl i64 %3, 3
  %i.v = add i64 %i.u, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = bitcast i64 %i.v to <8 x i8>
  %6 = shufflevector <8 x i8> %5, <8 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
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
  br i1 %i.ad, label %bb.d, label %_ZL14OPENSSL_memcpyPvPKvm.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !31  ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = zext i32 %i.ae to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 4 %i.w, i64 %i.ag, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.e, %bb.d, %bb.c
  %.079 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.ag, %bb.e ] ; 15 uses
  %i.ah = icmp ult i64 %.08199, %4
  br i1 %i.ah, label %bb.f, label %_ZL14OPENSSL_memcpyPvPKvm.exit88

bb.f:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.ai = sub nsw i64 64, %.079
  %i.aj = sub nuw nsw i64 %4, %.08199
  %spec.select = call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.aj) ; 2 uses
  %i.ak = icmp eq i64 %spec.select, 0
  br i1 %i.ak, label %_ZL14OPENSSL_memcpyPvPKvm.exit88, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.08199
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.079
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr readonly align 1 %i.al, i64 %spec.select, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit88

_ZL14OPENSSL_memcpyPvPKvm.exit88:                 ; preds = %bb.g, %bb.f, %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.an = icmp samesign ult i64 %.079, 64
  br i1 %i.an, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit88
  %i.ao = sub i64 %.08199, %.079                  ; 3 uses
  %i.ap = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %3) #9, !srcloc !15 ; 5 uses
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
  %wide.load = load <16 x i8>, ptr %i.bd, align 1, !tbaa !11
  %i.be = and <16 x i8> %wide.load, %i.bb
  %i.bf = select <16 x i1> %i.bc, <16 x i8> splat (i8 -128), <16 x i8> zeroinitializer
  %i.bg = or <16 x i8> %i.be, %i.bf
  store <16 x i8> %i.bg, ptr %i.bd, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

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
  %wide.load140 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !11
  %i.bu = and <4 x i8> %wide.load140, %i.br
  %i.bv = select <4 x i1> %i.bs, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.bw = or <4 x i8> %i.bu, %i.bv
  store <4 x i8> %i.bw, ptr %i.bt, align 1, !tbaa !11
  %index.next141 = add nuw i64 %index138, 4       ; 2 uses
  %vec.ind.next142 = add nuw nsw <4 x i64> %vec.ind139, splat (i64 4)
  %i.bx = icmp eq i64 %index.next141, %n.vec130
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n143 = icmp eq i64 %i.aq, %n.vec130
  br i1 %cmp.n143, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07790.ph = phi i64 [ %.079, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZL14OPENSSL_memcpyPvPKvm.exit88
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
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.ck = and i8 %i.cj, %i.cg
  %i.cl = select i1 %i.ch, i8 -128, i8 0
  %i.cm = or i8 %i.ck, %i.cl
  store i8 %i.cm, ptr %i.ci, align 1, !tbaa !11
  %i.cn = add nuw nsw i64 %.07790, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, 64
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !26

.split95.preheader:                               ; preds = %._crit_edge
  call void @SHA1_Transform(ptr noundef %0, ptr noundef nonnull %i.a) #8
  br label %.split97.us

.split95.us.preheader:                            ; preds = %._crit_edge
  %i.co = load <4 x i8>, ptr %i.x, align 4, !tbaa !11
  %i.cp = or <4 x i8> %i.co, %6
  store <4 x i8> %i.cp, ptr %i.x, align 4, !tbaa !11
  call void @SHA1_Transform(ptr noundef %0, ptr noundef nonnull %i.a) #8
  %i.cq = load <4 x i32>, ptr %0, align 4, !tbaa !19
  %i.cr = or <4 x i32> %i.cq, %i.ac
  %i.cs = load i32, ptr %i.y, align 4, !tbaa !19
  %i.ct = or i32 %i.cs, %.sroa.15.1
  br label %.split97.us

.split97.us:                                      ; preds = %.split95.preheader, %.split95.us.preheader
  %.sroa.15.2 = phi i32 [ %i.ct, %.split95.us.preheader ], [ %.sroa.15.1, %.split95.preheader ] ; 2 uses
  %i.cu = phi <4 x i32> [ %i.cr, %.split95.us.preheader ], [ %i.ac, %.split95.preheader ] ; 2 uses
  %i.cv = add nuw nsw i64 %.080100, 1             ; 2 uses
  %exitcond109.not = icmp eq i64 %i.cv, %i.t
  br i1 %exitcond109.not, label %.preheader, label %bb.c, !llvm.loop !27

bb.h:                                             ; preds = %bb.a, %bb.b, %.preheader
  %.076 = phi i32 [ 1, %.preheader ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.076
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @SHA1_Transform(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_sha256_final_with_secret_suffix(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !37
  %.not = icmp eq i32 %i.c, 0
  %.not86 = icmp ult i64 %4, 2305843009213693952
  %or.cond = and i1 %.not86, %.not
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw i64 %4, 3                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = add i64 %i.d, %i.g                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.d
  %i.j = icmp ugt i64 %i.h, 4294967295
  %or.cond87 = or i1 %i.i, %i.j
  br i1 %or.cond87, label %bb.h, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = add i64 %3, 72
  %i.o = add i64 %i.n, %i.m
  %i.p = lshr i64 %i.o, 6
  %i.q = add nsw i64 %i.p, -1
  %i.r = add nuw nsw i64 %4, 72
  %i.s = add nuw nsw i64 %i.r, %i.m
  %i.t = lshr i64 %i.s, 6
  %i.u = shl i64 %3, 3
  %i.v = add i64 %i.u, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = bitcast i64 %i.v to <8 x i8>
  %6 = shufflevector <8 x i8> %5, <8 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
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
  br i1 %i.ae, label %bb.d, label %_ZL14OPENSSL_memcpyPvPKvm.exit

bb.d:                                             ; preds = %bb.c
  %i.af = load i32, ptr %i.k, align 4, !tbaa !39  ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = zext i32 %i.af to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 4 %i.w, i64 %i.ah, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.e, %bb.d, %bb.c
  %.079 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.ah, %bb.e ] ; 15 uses
  %i.ai = icmp ult i64 %.08199, %4
  br i1 %i.ai, label %bb.f, label %_ZL14OPENSSL_memcpyPvPKvm.exit88

bb.f:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.aj = sub nsw i64 64, %.079
  %i.ak = sub nuw nsw i64 %4, %.08199
  %spec.select = call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ak) ; 2 uses
  %i.al = icmp eq i64 %spec.select, 0
  br i1 %i.al, label %_ZL14OPENSSL_memcpyPvPKvm.exit88, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.08199
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.079
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr readonly align 1 %i.am, i64 %spec.select, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit88

_ZL14OPENSSL_memcpyPvPKvm.exit88:                 ; preds = %bb.g, %bb.f, %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.ao = icmp samesign ult i64 %.079, 64
  br i1 %i.ao, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit88
  %i.ap = sub i64 %.08199, %.079                  ; 3 uses
  %i.aq = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %3) #9, !srcloc !15 ; 5 uses
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
  %wide.load = load <16 x i8>, ptr %i.be, align 1, !tbaa !11
  %i.bf = and <16 x i8> %wide.load, %i.bc
  %i.bg = select <16 x i1> %i.bd, <16 x i8> splat (i8 -128), <16 x i8> zeroinitializer
  %i.bh = or <16 x i8> %i.bf, %i.bg
  store <16 x i8> %i.bh, ptr %i.be, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

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
  %wide.load146 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !11
  %i.bv = and <4 x i8> %wide.load146, %i.bs
  %i.bw = select <4 x i1> %i.bt, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.bx = or <4 x i8> %i.bv, %i.bw
  store <4 x i8> %i.bx, ptr %i.bu, align 1, !tbaa !11
  %index.next147 = add nuw i64 %index144, 4       ; 2 uses
  %vec.ind.next148 = add nuw nsw <4 x i64> %vec.ind145, splat (i64 4)
  %i.by = icmp eq i64 %index.next147, %n.vec136
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n149 = icmp eq i64 %i.ar, %n.vec136
  br i1 %cmp.n149, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07790.ph = phi i64 [ %.079, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZL14OPENSSL_memcpyPvPKvm.exit88
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
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !11
  %i.cl = and i8 %i.ck, %i.ch
  %i.cm = select i1 %i.ci, i8 -128, i8 0
  %i.cn = or i8 %i.cl, %i.cm
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !11
  %i.co = add nuw nsw i64 %.07790, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.co, 64
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !34

.split95.preheader:                               ; preds = %._crit_edge
  call void @SHA256_Transform(ptr noundef %0, ptr noundef nonnull %i.a) #8
  br label %.split97.us

.split95.us.preheader:                            ; preds = %._crit_edge
  %i.cp = load <4 x i8>, ptr %i.x, align 4, !tbaa !11
  %i.cq = or <4 x i8> %i.cp, %6
  store <4 x i8> %i.cq, ptr %i.x, align 4, !tbaa !11
  call void @SHA256_Transform(ptr noundef %0, ptr noundef nonnull %i.a) #8
  %i.cr = load <4 x i32>, ptr %0, align 4, !tbaa !19
  %i.cs = or <4 x i32> %i.cr, %i.ac
  %i.ct = load <4 x i32>, ptr %i.y, align 4, !tbaa !19
  %i.cu = or <4 x i32> %i.ct, %i.ad
  br label %.split97.us

.split97.us:                                      ; preds = %.split95.preheader, %.split95.us.preheader
  %i.cv = phi <4 x i32> [ %i.cs, %.split95.us.preheader ], [ %i.ac, %.split95.preheader ] ; 2 uses
  %i.cw = phi <4 x i32> [ %i.cu, %.split95.us.preheader ], [ %i.ad, %.split95.preheader ] ; 2 uses
  %i.cx = add nuw nsw i64 %.080100, 1             ; 2 uses
  %exitcond109.not = icmp eq i64 %i.cx, %i.t
  br i1 %exitcond109.not, label %.preheader, label %bb.c, !llvm.loop !35

bb.h:                                             ; preds = %bb.a, %bb.b, %.preheader
  %.076 = phi i32 [ 1, %.preheader ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.076
}

declare void @SHA256_Transform(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @EVP_tls_cbc_record_digest_supported(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @EVP_MD_type(ptr noundef %0) #8 ; 2 uses
  %switch.selectcmp.case1 = icmp eq i32 %i.a, 64
  %switch.selectcmp.case2 = icmp eq i32 %i.a, 672
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.b = zext i1 %switch.selectcmp to i32
  ret i32 %i.b
}

declare i32 @EVP_MD_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @EVP_tls_cbc_digest_record(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 16 uses
  %9 = alloca %struct.sha256_state_st, align 4    ; 11 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 16 uses
  %10 = alloca %struct.sha_state_st, align 4      ; 11 uses
  %i.d = alloca [20 x i8], align 16               ; 4 uses
  %i.e = tail call i32 @EVP_MD_type(ptr noundef %0) #8
  switch i32 %i.e, label %bb.j [
    i32 64, label %bb.b
    i32 672, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i32 %8, 64
  br i1 %i.f, label %_ZL26tls_cbc_digest_record_sha1PhPmPKhS2_mmS2_j.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.g = icmp eq i32 %8, 0
  br i1 %i.g, label %vector.body37, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext nneg i32 %8 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr readonly align 1 %7, i64 %i.h, i1 false)
  br label %vector.body37

vector.body37:                                    ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load39 = load <16 x i8>, ptr %i.c, align 16, !tbaa !11
  %wide.load40 = load <16 x i8>, ptr %i.i, align 16, !tbaa !11
  %i.j = xor <16 x i8> %wide.load39, splat (i8 54)
  %i.k = xor <16 x i8> %wide.load40, splat (i8 54)
  store <16 x i8> %i.j, ptr %i.c, align 16, !tbaa !11
  store <16 x i8> %i.k, ptr %i.i, align 16, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %wide.load39.1 = load <16 x i8>, ptr %i.l, align 16, !tbaa !11
  %wide.load40.1 = load <16 x i8>, ptr %i.m, align 16, !tbaa !11
  %i.n = xor <16 x i8> %wide.load39.1, splat (i8 54)
  %i.o = xor <16 x i8> %wide.load40.1, splat (i8 54)
  store <16 x i8> %i.n, ptr %i.l, align 16, !tbaa !11
  store <16 x i8> %i.o, ptr %i.m, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.p = call i32 @SHA1_Init(ptr noundef nonnull %10) #8 ; 0 uses
  %i.q = call i32 @SHA1_Update(ptr noundef nonnull %10, ptr noundef nonnull %i.c, i64 noundef 64) #8 ; 0 uses
  %i.r = call i32 @SHA1_Update(ptr noundef nonnull %10, ptr noundef %3, i64 noundef 13) #8 ; 0 uses
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %6, i64 276) ; 4 uses
  %i.s = call i32 @SHA1_Update(ptr noundef nonnull %10, ptr noundef %4, i64 noundef %spec.select.i) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 %spec.select.i
  %i.u = sub i64 %5, %spec.select.i
  %i.v = sub nuw i64 %6, %spec.select.i
  %i.w = call i32 @EVP_sha1_final_with_secret_suffix(ptr noundef nonnull %10, ptr noundef nonnull %i.d, ptr noundef %i.t, i64 noundef %i.u, i64 noundef %i.v)
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.e, label %vector.ph43

vector.ph43:                                      ; preds = %vector.body37
  %i.x = call i32 @SHA1_Init(ptr noundef nonnull %10) #8 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load46 = load <16 x i8>, ptr %i.c, align 16, !tbaa !11
  %wide.load47 = load <16 x i8>, ptr %i.y, align 16, !tbaa !11
  %i.z = xor <16 x i8> %wide.load46, splat (i8 106)
  %i.aa = xor <16 x i8> %wide.load47, splat (i8 106)
  store <16 x i8> %i.z, ptr %i.c, align 16, !tbaa !11
  store <16 x i8> %i.aa, ptr %i.y, align 16, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %wide.load46.1 = load <16 x i8>, ptr %i.ab, align 16, !tbaa !11
  %wide.load47.1 = load <16 x i8>, ptr %i.ac, align 16, !tbaa !11
  %i.ad = xor <16 x i8> %wide.load46.1, splat (i8 106)
  %i.ae = xor <16 x i8> %wide.load47.1, splat (i8 106)
  store <16 x i8> %i.ad, ptr %i.ab, align 16, !tbaa !11
  store <16 x i8> %i.ae, ptr %i.ac, align 16, !tbaa !11
  %i.af = call i32 @SHA1_Update(ptr noundef nonnull %10, ptr noundef nonnull %i.c, i64 noundef 64) #8 ; 0 uses
  %i.ag = call i32 @SHA1_Update(ptr noundef nonnull %10, ptr noundef nonnull %i.d, i64 noundef 20) #8 ; 0 uses
  %i.ah = call i32 @SHA1_Final(ptr noundef %1, ptr noundef nonnull %10) #8 ; 0 uses
  store i64 20, ptr %2, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %vector.ph43, %vector.body37
  %.024.i = phi i32 [ 1, %vector.ph43 ], [ 0, %vector.body37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %_ZL26tls_cbc_digest_record_sha1PhPmPKhS2_mmS2_j.exit

bb.f:                                             ; preds = %bb.a
  %i.ai = icmp ugt i32 %8, 64
  br i1 %i.ai, label %_ZL26tls_cbc_digest_record_sha1PhPmPKhS2_mmS2_j.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.aj = icmp eq i32 %8, 0
  br i1 %i.aj, label %vector.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = zext nneg i32 %8 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %7, i64 %i.ak, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.a, align 16, !tbaa !11
  %wide.load28 = load <16 x i8>, ptr %i.al, align 16, !tbaa !11
  %i.am = xor <16 x i8> %wide.load, splat (i8 54)
  %i.an = xor <16 x i8> %wide.load28, splat (i8 54)
  store <16 x i8> %i.am, ptr %i.a, align 16, !tbaa !11
  store <16 x i8> %i.an, ptr %i.al, align 16, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.ao, align 16, !tbaa !11
  %wide.load28.1 = load <16 x i8>, ptr %i.ap, align 16, !tbaa !11
  %i.aq = xor <16 x i8> %wide.load.1, splat (i8 54)
  %i.ar = xor <16 x i8> %wide.load28.1, splat (i8 54)
  store <16 x i8> %i.aq, ptr %i.ao, align 16, !tbaa !11
  store <16 x i8> %i.ar, ptr %i.ap, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.as = call i32 @SHA256_Init(ptr noundef nonnull %9) #8 ; 0 uses
  %i.at = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef nonnull %i.a, i64 noundef 64) #8 ; 0 uses
  %i.au = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef %3, i64 noundef 13) #8 ; 0 uses
  %spec.select.i21 = call i64 @llvm.usub.sat.i64(i64 %6, i64 288) ; 4 uses
  %i.av = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef %4, i64 noundef %spec.select.i21) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 %spec.select.i21
  %i.ax = sub i64 %5, %spec.select.i21
  %i.ay = sub nuw i64 %6, %spec.select.i21
  %i.az = call i32 @EVP_sha256_final_with_secret_suffix(ptr noundef nonnull %9, ptr noundef nonnull %i.b, ptr noundef %i.aw, i64 noundef %i.ax, i64 noundef %i.ay)
  %.not.i22 = icmp eq i32 %i.az, 0
  br i1 %.not.i22, label %bb.i, label %vector.ph29

vector.ph29:                                      ; preds = %vector.body
  %i.ba = call i32 @SHA256_Init(ptr noundef nonnull %9) #8 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load32 = load <16 x i8>, ptr %i.a, align 16, !tbaa !11
  %wide.load33 = load <16 x i8>, ptr %i.bb, align 16, !tbaa !11
  %i.bc = xor <16 x i8> %wide.load32, splat (i8 106)
  %i.bd = xor <16 x i8> %wide.load33, splat (i8 106)
  store <16 x i8> %i.bc, ptr %i.a, align 16, !tbaa !11
  store <16 x i8> %i.bd, ptr %i.bb, align 16, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %wide.load32.1 = load <16 x i8>, ptr %i.be, align 16, !tbaa !11
  %wide.load33.1 = load <16 x i8>, ptr %i.bf, align 16, !tbaa !11
  %i.bg = xor <16 x i8> %wide.load32.1, splat (i8 106)
  %i.bh = xor <16 x i8> %wide.load33.1, splat (i8 106)
  store <16 x i8> %i.bg, ptr %i.be, align 16, !tbaa !11
  store <16 x i8> %i.bh, ptr %i.bf, align 16, !tbaa !11
  %i.bi = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef nonnull %i.a, i64 noundef 64) #8 ; 0 uses
  %i.bj = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef nonnull %i.b, i64 noundef 32) #8 ; 0 uses
  %i.bk = call i32 @SHA256_Final(ptr noundef %1, ptr noundef nonnull %9) #8 ; 0 uses
  store i64 32, ptr %2, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %vector.ph29, %vector.body
  %.024.i25 = phi i32 [ 1, %vector.ph29 ], [ 0, %vector.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %_ZL26tls_cbc_digest_record_sha1PhPmPKhS2_mmS2_j.exit

end_hunk_0
