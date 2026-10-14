Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/OptimizeConstProp?download=true
inline.NumInlined: 3084
inline.NumDeleted: 856
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4Luau7CodeGen14ConstPropState5clearEv:bb.a
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.m = icmp ult i64 %i.i, 4
  br i1 %i.m, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.i, 60
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ac, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %.07.i.i.i ; 2 uses
  %i.o = load i32, ptr %i.l, align 8, !tbaa !167
  store i32 %i.o, ptr %i.n, align 4, !tbaa !167
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i64 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %.07.i.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.l, align 8, !tbaa !167
  store i32 %i.s, ptr %i.r, align 4, !tbaa !167
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %.07.i.i.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.l, align 8, !tbaa !167
  store i32 %i.w, ptr %i.v, align 4, !tbaa !167
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i64 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %.07.i.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !167
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !167
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ac = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  store i64 0, ptr %i.ab, align 4
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !2

_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ac, %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.ag, %.lr.ph.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %.07.i.i.i.epil ; 2 uses
  %i.ae = load i32, ptr %i.l, align 8, !tbaa !167
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !167
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ag = add nuw nsw i64 %.07.i.i.i.epil, 1
  store i64 0, ptr %i.af, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !360

_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.d, %bb.c
  store i64 0, ptr %i.e, align 8, !tbaa !187
  br label %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %._crit_edge, %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3136 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3152 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !190
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE5clearEm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.am = load i64, ptr %i.al, align 8, !tbaa !191 ; 5 uses
  %i.an = icmp ugt i64 %i.am, 32
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !149 ; 6 uses
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef %i.ao) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3160 ; 5 uses
  %.not.i.i.i3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i3, label %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i, label %.lr.ph.i.i.i4.preheader

.lr.ph.i.i.i4.preheader:                          ; preds = %bb.g
  %xtraiter128 = and i64 %i.am, 3                 ; 3 uses
  %i.aq = icmp ult i64 %i.am, 4
  br i1 %i.aq, label %.lr.ph.i.i.i4.epil.preheader, label %.lr.ph.i.i.i4.preheader.new

.lr.ph.i.i.i4.preheader.new:                      ; preds = %.lr.ph.i.i.i4.preheader
  %unroll_iter132 = and i64 %i.am, 60
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4, %.lr.ph.i.i.i4.preheader.new
  %.07.i.i.i5 = phi i64 [ 0, %.lr.ph.i.i.i4.preheader.new ], [ %i.bg, %.lr.ph.i.i.i4 ] ; 5 uses
  %niter133 = phi i64 [ 0, %.lr.ph.i.i.i4.preheader.new ], [ %niter133.next.3, %.lr.ph.i.i.i4 ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.07.i.i.i5 ; 2 uses
  %i.as = load i32, ptr %i.ap, align 8, !tbaa !167
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !167
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i8 0, ptr %i.at, align 4, !tbaa !52
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.07.i.i.i5 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.ap, align 8, !tbaa !167
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !167
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i8 0, ptr %i.ax, align 4, !tbaa !52
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.07.i.i.i5 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i32, ptr %i.ap, align 8, !tbaa !167
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !167
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  store i8 0, ptr %i.bb, align 4, !tbaa !52
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.07.i.i.i5 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load i32, ptr %i.ap, align 8, !tbaa !167
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !167
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  store i8 0, ptr %i.bf, align 4, !tbaa !52
  %i.bg = add nuw nsw i64 %.07.i.i.i5, 4          ; 2 uses
  %niter133.next.3 = add nuw nsw i64 %niter133, 4 ; 2 uses
  %niter133.ncmp.3 = icmp eq i64 %niter133.next.3, %unroll_iter132
  br i1 %niter133.ncmp.3, label %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i4, !llvm.loop !3

_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i4
  %lcmp.mod130.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod130.not, label %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i, label %.lr.ph.i.i.i4.epil.preheader

.lr.ph.i.i.i4.epil.preheader:                     ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i4.preheader
  %.07.i.i.i5.epil.init = phi i64 [ 0, %.lr.ph.i.i.i4.preheader ], [ %i.bg, %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter128, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph.i.i.i4.epil

.lr.ph.i.i.i4.epil:                               ; preds = %.lr.ph.i.i.i4.epil, %.lr.ph.i.i.i4.epil.preheader
  %.07.i.i.i5.epil = phi i64 [ %i.bk, %.lr.ph.i.i.i4.epil ], [ %.07.i.i.i5.epil.init, %.lr.ph.i.i.i4.epil.preheader ] ; 2 uses
  %epil.iter129 = phi i64 [ %epil.iter129.next, %.lr.ph.i.i.i4.epil ], [ 0, %.lr.ph.i.i.i4.epil.preheader ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.07.i.i.i5.epil ; 2 uses
  %i.bi = load i32, ptr %i.ap, align 8, !tbaa !167
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !167
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i8 0, ptr %i.bj, align 4, !tbaa !52
  %i.bk = add nuw nsw i64 %.07.i.i.i5.epil, 1
  %epil.iter129.next = add i64 %epil.iter129, 1   ; 2 uses
  %epil.iter129.cmp.not = icmp eq i64 %epil.iter129.next, %xtraiter128
  br i1 %epil.iter129.cmp.not, label %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i, label %.lr.ph.i.i.i4.epil, !llvm.loop !361

_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i4.epil, %bb.g, %bb.f
  store i64 0, ptr %i.ai, align 8, !tbaa !190
  br label %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE5clearEm.exit, %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3184 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !192
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE5clearEm.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !193 ; 9 uses
  %i.br = icmp ugt i64 %i.bq, 32
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !148 ; 24 uses
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef %i.bs) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 7 uses
  %.not.i.i.i7 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i7, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i8.preheader:                          ; preds = %bb.j
  %min.iters.check = icmp ult i64 %i.bq, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i8.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i8.preheader
  %i.bu = shl nuw nsw i64 %i.bq, 3
  %i.bv = getelementptr i8, ptr %i.bs, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3196
  %bound0 = icmp ult ptr %i.bs, %i.bw
  %bound1 = icmp ult ptr %i.bt, %i.bv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i8.preheader126, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 60                      ; 9 uses
  %1 = load <4 x i32>, ptr %i.bt, align 8
  %broadcast.splat = shufflevector <4 x i32> %1, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec, ptr %i.bs, align 4, !alias.scope !380, !noalias !381
  store <4 x i32> %interleaved.vec, ptr %i.bx, align 4, !alias.scope !380, !noalias !381
  %i.by = icmp eq i64 %n.vec, 4
  br i1 %i.by, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %interleaved.vec.1 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.1, ptr %i.bz, align 4, !alias.scope !380, !noalias !381
  store <4 x i32> %interleaved.vec.1, ptr %i.ca, align 4, !alias.scope !380, !noalias !381
  %i.cb = icmp eq i64 %n.vec, 8
  br i1 %i.cb, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %interleaved.vec.2 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.2, ptr %i.cc, align 4, !alias.scope !380, !noalias !381
  store <4 x i32> %interleaved.vec.2, ptr %i.cd, align 4, !alias.scope !380, !noalias !381
  %i.ce = icmp eq i64 %n.vec, 12
  br i1 %i.ce, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  %interleaved.vec.3 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.3, ptr %i.cf, align 4, !alias.scope !380, !noalias !381
  store <4 x i32> %interleaved.vec.3, ptr %i.cg, align 4, !alias.scope !380, !noalias !381
  %i.ch = icmp eq i64 %n.vec, 16
  br i1 %i.ch, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  %interleaved.vec.4 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.4, ptr %i.ci, align 4, !alias.scope !380, !noalias !381
  store <4 x i32> %interleaved.vec.4, ptr %i.cj, align 4, !alias.scope !380, !noalias !381
  %i.ck = icmp eq i64 %n.vec, 20
  br i1 %i.ck, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bs, i64 176
  %interleaved.vec.5 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.5, ptr %i.cl, align 4, !alias.scope !380, !noalias !381
  store <4 x i32> %interleaved.vec.5, ptr %i.cm, align 4, !alias.scope !380, !noalias !381
  %i.cn = icmp eq i64 %n.vec, 24
  br i1 %i.cn, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 192
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bs, i64 208
  %interleaved.vec.6 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.6, ptr %i.co, align 4, !alias.scope !380, !noalias !381
  store <4 x i32> %interleaved.vec.6, ptr %i.cp, align 4, !alias.scope !380, !noalias !381
  %i.cq = icmp eq i64 %n.vec, 28
  br i1 %i.cq, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bs, i64 224
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bs, i64 240
  %interleaved.vec.7 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.7, ptr %i.cr, align 4, !alias.scope !380, !noalias !381
  store <4 x i32> %interleaved.vec.7, ptr %i.cs, align 4, !alias.scope !380, !noalias !381
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8.preheader126

.lr.ph.i.i.i8.preheader126:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i8.preheader, %middle.block
  %.07.i.i.i9.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i8.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter134 = and i64 %i.bq, 3                 ; 2 uses
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %.lr.ph.i.i.i8.prol.loopexit, label %.lr.ph.i.i.i8.prol

.lr.ph.i.i.i8.prol:                               ; preds = %.lr.ph.i.i.i8.preheader126, %.lr.ph.i.i.i8.prol
  %.07.i.i.i9.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i8.prol ], [ %.07.i.i.i9.ph, %.lr.ph.i.i.i8.preheader126 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i8.prol ], [ 0, %.lr.ph.i.i.i8.preheader126 ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.07.i.i.i9.prol ; 2 uses
  %i.cu = load i32, ptr %i.bt, align 8, !tbaa !167
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !167
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 0, ptr %i.cv, align 4
  %i.cw = add nuw nsw i64 %.07.i.i.i9.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter134
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i8.prol.loopexit, label %.lr.ph.i.i.i8.prol, !llvm.loop !365

.lr.ph.i.i.i8.prol.loopexit:                      ; preds = %.lr.ph.i.i.i8.prol, %.lr.ph.i.i.i8.preheader126
  %.07.i.i.i9.unr = phi i64 [ %.07.i.i.i9.ph, %.lr.ph.i.i.i8.preheader126 ], [ %i.cw, %.lr.ph.i.i.i8.prol ]
  %i.cx = sub nsw i64 %.07.i.i.i9.ph, %i.bq
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %.lr.ph.i.i.i8.prol.loopexit, %.lr.ph.i.i.i8
  %.07.i.i.i9 = phi i64 [ %i.do, %.lr.ph.i.i.i8 ], [ %.07.i.i.i9.unr, %.lr.ph.i.i.i8.prol.loopexit ] ; 5 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.07.i.i.i9 ; 2 uses
  %i.da = load i32, ptr %i.bt, align 8, !tbaa !167
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !167
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 0, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.07.i.i.i9 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i32, ptr %i.bt, align 8, !tbaa !167
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !167
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.07.i.i.i9 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i32, ptr %i.bt, align 8, !tbaa !167
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !167
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  store i32 0, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.07.i.i.i9 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load i32, ptr %i.bt, align 8, !tbaa !167
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !167
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  store i32 0, ptr %i.dn, align 4
  %i.do = add nuw nsw i64 %.07.i.i.i9, 4          ; 2 uses
  %exitcond.not.i.i.i10.3 = icmp eq i64 %i.do, %i.bq
  br i1 %exitcond.not.i.i.i10.3, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8, !llvm.loop !366

_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i8.prol.loopexit, %.lr.ph.i.i.i8, %middle.block, %bb.j, %bb.i
  store i64 0, ptr %i.bm, align 8, !tbaa !192
  br label %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE5clearEm.exit, %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 3576
  store i32 -1, ptr %i.dp, align 8, !tbaa !147
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 3584 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 3600 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !194
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !195 ; 6 uses
  %i.dw = icmp ugt i64 %i.dv, 32
  %i.dx = load ptr, ptr %i.dq, align 8, !tbaa !154 ; 10 uses
  br i1 %i.dw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPv(ptr noundef %i.dx) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i

bb.m:                                             ; preds = %bb.k
  %.not.i.i.i11 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i.i11, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.m
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %.pre.i.i.i = load i32, ptr %i.dy, align 8, !tbaa !167 ; 2 uses
  %min.iters.check55 = icmp ult i64 %i.dv, 8
  br i1 %min.iters.check55, label %.lr.ph.i.i.i12.preheader, label %vector.ph56

vector.ph56:                                      ; preds = %.lr.ph.preheader.i.i.i
  %n.vec57 = and i64 %i.dv, 56                    ; 5 uses
  %broadcast.splatinsert58 = insertelement <4 x i32> poison, i32 %.pre.i.i.i, i64 0
  %broadcast.splat59 = shufflevector <4 x i32> %broadcast.splatinsert58, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <4 x i32> %broadcast.splat59, ptr %i.dx, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat59, ptr %i.dz, align 4, !tbaa !167
  %i.ea = icmp eq i64 %n.vec57, 8
  br i1 %i.ea, label %middle.block63, label %vector.body60.1

vector.body60.1:                                  ; preds = %vector.ph56
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  store <4 x i32> %broadcast.splat59, ptr %i.eb, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat59, ptr %i.ec, align 4, !tbaa !167
  %i.ed = icmp eq i64 %n.vec57, 16
  br i1 %i.ed, label %middle.block63, label %vector.body60.2

vector.body60.2:                                  ; preds = %vector.body60.1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 80
  store <4 x i32> %broadcast.splat59, ptr %i.ee, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat59, ptr %i.ef, align 4, !tbaa !167
  %i.eg = icmp eq i64 %n.vec57, 24
  br i1 %i.eg, label %middle.block63, label %vector.body60.3

vector.body60.3:                                  ; preds = %vector.body60.2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 96
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 112
  store <4 x i32> %broadcast.splat59, ptr %i.eh, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat59, ptr %i.ei, align 4, !tbaa !167
  br label %middle.block63

middle.block63:                                   ; preds = %vector.body60.3, %vector.body60.2, %vector.body60.1, %vector.ph56
  %cmp.n64 = icmp eq i64 %i.dv, %n.vec57
  br i1 %cmp.n64, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i, label %.lr.ph.i.i.i12.preheader

.lr.ph.i.i.i12.preheader:                         ; preds = %.lr.ph.preheader.i.i.i, %middle.block63
  %.05.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec57, %middle.block63 ]
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12.preheader, %.lr.ph.i.i.i12
  %.05.i.i.i = phi i64 [ %i.ek, %.lr.ph.i.i.i12 ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i12.preheader ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.05.i.i.i
  store i32 %.pre.i.i.i, ptr %i.ej, align 4, !tbaa !167
  %i.ek = add nuw nsw i64 %.05.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i13 = icmp eq i64 %i.ek, %i.dv
  br i1 %exitcond.not.i.i.i13, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i, label %.lr.ph.i.i.i12, !llvm.loop !367

_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i12, %middle.block63, %bb.m, %bb.l
  store i64 0, ptr %i.dr, align 8, !tbaa !194
  br label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit

_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit: ; preds = %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit, %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 3616 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 3632 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !194
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit21, label %bb.n

bb.n:                                             ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !195 ; 6 uses
  %i.er = icmp ugt i64 %i.eq, 32
  %i.es = load ptr, ptr %i.el, align 8, !tbaa !154 ; 10 uses
  br i1 %i.er, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdlPv(ptr noundef %i.es) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.el, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i20

bb.p:                                             ; preds = %bb.n
  %.not.i.i.i14 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i14, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i20, label %.lr.ph.preheader.i.i.i15

.lr.ph.preheader.i.i.i15:                         ; preds = %bb.p
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %.pre.i.i.i16 = load i32, ptr %i.et, align 8, !tbaa !167 ; 2 uses
  %min.iters.check67 = icmp ult i64 %i.eq, 8
  br i1 %min.iters.check67, label %.lr.ph.i.i.i17.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %.lr.ph.preheader.i.i.i15
  %n.vec69 = and i64 %i.eq, 56                    ; 5 uses
  %broadcast.splatinsert70 = insertelement <4 x i32> poison, i32 %.pre.i.i.i16, i64 0
  %broadcast.splat71 = shufflevector <4 x i32> %broadcast.splatinsert70, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <4 x i32> %broadcast.splat71, ptr %i.es, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat71, ptr %i.eu, align 4, !tbaa !167
  %i.ev = icmp eq i64 %n.vec69, 8
  br i1 %i.ev, label %middle.block75, label %vector.body72.1

vector.body72.1:                                  ; preds = %vector.ph68
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  store <4 x i32> %broadcast.splat71, ptr %i.ew, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat71, ptr %i.ex, align 4, !tbaa !167
  %i.ey = icmp eq i64 %n.vec69, 16
  br i1 %i.ey, label %middle.block75, label %vector.body72.2

vector.body72.2:                                  ; preds = %vector.body72.1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  store <4 x i32> %broadcast.splat71, ptr %i.ez, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat71, ptr %i.fa, align 4, !tbaa !167
  %i.fb = icmp eq i64 %n.vec69, 24
  br i1 %i.fb, label %middle.block75, label %vector.body72.3

vector.body72.3:                                  ; preds = %vector.body72.2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 112
  store <4 x i32> %broadcast.splat71, ptr %i.fc, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat71, ptr %i.fd, align 4, !tbaa !167
  br label %middle.block75

middle.block75:                                   ; preds = %vector.body72.3, %vector.body72.2, %vector.body72.1, %vector.ph68
  %cmp.n76 = icmp eq i64 %i.eq, %n.vec69
  br i1 %cmp.n76, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i20, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %.lr.ph.preheader.i.i.i15, %middle.block75
  %.05.i.i.i18.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i15 ], [ %n.vec69, %middle.block75 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17
  %.05.i.i.i18 = phi i64 [ %i.ff, %.lr.ph.i.i.i17 ], [ %.05.i.i.i18.ph, %.lr.ph.i.i.i17.preheader ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.05.i.i.i18
  store i32 %.pre.i.i.i16, ptr %i.fe, align 4, !tbaa !167
  %i.ff = add nuw nsw i64 %.05.i.i.i18, 1         ; 2 uses
  %exitcond.not.i.i.i19 = icmp eq i64 %i.ff, %i.eq
  br i1 %exitcond.not.i.i.i19, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i20, label %.lr.ph.i.i.i17, !llvm.loop !368

_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i20: ; preds = %.lr.ph.i.i.i17, %middle.block75, %bb.p, %bb.o
  store i64 0, ptr %i.em, align 8, !tbaa !194
  br label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit21

_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit21: ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit, %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i20
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 3648 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 3664 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !196
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit21
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !197 ; 9 uses
  %i.fm = icmp ugt i64 %i.fl, 32
  %i.fn = load ptr, ptr %i.fg, align 8, !tbaa !153 ; 24 uses
  br i1 %i.fm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdlPv(ptr noundef %i.fn) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 3672 ; 7 uses
  %.not.i.i.i22 = icmp eq i64 %i.fl, 0
  br i1 %.not.i.i.i22, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i23.preheader

.lr.ph.i.i.i23.preheader:                         ; preds = %bb.s
  %min.iters.check84 = icmp ult i64 %i.fl, 8
  br i1 %min.iters.check84, label %.lr.ph.i.i.i23.preheader125, label %vector.memcheck85

vector.memcheck85:                                ; preds = %.lr.ph.i.i.i23.preheader
  %i.fp = shl nuw nsw i64 %i.fl, 3
  %i.fq = getelementptr i8, ptr %i.fn, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 3676
  %bound086 = icmp ult ptr %i.fn, %i.fr
  %bound187 = icmp ult ptr %i.fo, %i.fq
  %found.conflict88 = and i1 %bound086, %bound187
  br i1 %found.conflict88, label %.lr.ph.i.i.i23.preheader125, label %vector.ph89

vector.ph89:                                      ; preds = %vector.memcheck85
  %n.vec90 = and i64 %i.fl, 60                    ; 9 uses
  %2 = load <4 x i32>, ptr %i.fo, align 8
  %broadcast.splat94 = shufflevector <4 x i32> %2, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %interleaved.vec95 = shufflevector <2 x i32> %broadcast.splat94, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec95, ptr %i.fn, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  store <4 x i32> %interleaved.vec95, ptr %i.fs, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  %i.ft = icmp eq i64 %n.vec90, 4
  br i1 %i.ft, label %middle.block98, label %vector.body91.1

vector.body91.1:                                  ; preds = %vector.ph89
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %interleaved.vec95.1 = shufflevector <2 x i32> %broadcast.splat94, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec95.1, ptr %i.fu, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  store <4 x i32> %interleaved.vec95.1, ptr %i.fv, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  %i.fw = icmp eq i64 %n.vec90, 8
  br i1 %i.fw, label %middle.block98, label %vector.body91.2

vector.body91.2:                                  ; preds = %vector.body91.1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fn, i64 80
  %interleaved.vec95.2 = shufflevector <2 x i32> %broadcast.splat94, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec95.2, ptr %i.fx, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  store <4 x i32> %interleaved.vec95.2, ptr %i.fy, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  %i.fz = icmp eq i64 %n.vec90, 12
  br i1 %i.fz, label %middle.block98, label %vector.body91.3

vector.body91.3:                                  ; preds = %vector.body91.2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fn, i64 96
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 112
  %interleaved.vec95.3 = shufflevector <2 x i32> %broadcast.splat94, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec95.3, ptr %i.ga, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  store <4 x i32> %interleaved.vec95.3, ptr %i.gb, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  %i.gc = icmp eq i64 %n.vec90, 16
  br i1 %i.gc, label %middle.block98, label %vector.body91.4

vector.body91.4:                                  ; preds = %vector.body91.3
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 128
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fn, i64 144
  %interleaved.vec95.4 = shufflevector <2 x i32> %broadcast.splat94, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec95.4, ptr %i.gd, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  store <4 x i32> %interleaved.vec95.4, ptr %i.ge, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  %i.gf = icmp eq i64 %n.vec90, 20
  br i1 %i.gf, label %middle.block98, label %vector.body91.5

vector.body91.5:                                  ; preds = %vector.body91.4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fn, i64 160
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 176
  %interleaved.vec95.5 = shufflevector <2 x i32> %broadcast.splat94, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec95.5, ptr %i.gg, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  store <4 x i32> %interleaved.vec95.5, ptr %i.gh, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  %i.gi = icmp eq i64 %n.vec90, 24
  br i1 %i.gi, label %middle.block98, label %vector.body91.6

vector.body91.6:                                  ; preds = %vector.body91.5
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fn, i64 192
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fn, i64 208
  %interleaved.vec95.6 = shufflevector <2 x i32> %broadcast.splat94, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec95.6, ptr %i.gj, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  store <4 x i32> %interleaved.vec95.6, ptr %i.gk, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  %i.gl = icmp eq i64 %n.vec90, 28
  br i1 %i.gl, label %middle.block98, label %vector.body91.7

vector.body91.7:                                  ; preds = %vector.body91.6
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fn, i64 224
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fn, i64 240
  %interleaved.vec95.7 = shufflevector <2 x i32> %broadcast.splat94, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec95.7, ptr %i.gm, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  store <4 x i32> %interleaved.vec95.7, ptr %i.gn, align 4, !tbaa !167, !alias.scope !382, !noalias !383
  br label %middle.block98

middle.block98:                                   ; preds = %vector.body91.7, %vector.body91.6, %vector.body91.5, %vector.body91.4, %vector.body91.3, %vector.body91.2, %vector.body91.1, %vector.ph89
  %cmp.n99 = icmp eq i64 %i.fl, %n.vec90
  br i1 %cmp.n99, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i23.preheader125

.lr.ph.i.i.i23.preheader125:                      ; preds = %vector.memcheck85, %.lr.ph.i.i.i23.preheader, %middle.block98
  %.07.i.i.i24.ph = phi i64 [ 0, %vector.memcheck85 ], [ 0, %.lr.ph.i.i.i23.preheader ], [ %n.vec90, %middle.block98 ] ; 3 uses
  %xtraiter136 = and i64 %i.fl, 3                 ; 2 uses
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %.lr.ph.i.i.i23.prol.loopexit, label %.lr.ph.i.i.i23.prol

.lr.ph.i.i.i23.prol:                              ; preds = %.lr.ph.i.i.i23.preheader125, %.lr.ph.i.i.i23.prol
  %.07.i.i.i24.prol = phi i64 [ %i.gr, %.lr.ph.i.i.i23.prol ], [ %.07.i.i.i24.ph, %.lr.ph.i.i.i23.preheader125 ] ; 2 uses
  %prol.iter138 = phi i64 [ %prol.iter138.next, %.lr.ph.i.i.i23.prol ], [ 0, %.lr.ph.i.i.i23.preheader125 ]
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.07.i.i.i24.prol ; 2 uses
  %i.gp = load i32, ptr %i.fo, align 8, !tbaa !167
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !167
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i32 0, ptr %i.gq, align 4, !tbaa !167
  %i.gr = add nuw nsw i64 %.07.i.i.i24.prol, 1    ; 2 uses
  %prol.iter138.next = add i64 %prol.iter138, 1   ; 2 uses
  %prol.iter138.cmp.not = icmp eq i64 %prol.iter138.next, %xtraiter136
  br i1 %prol.iter138.cmp.not, label %.lr.ph.i.i.i23.prol.loopexit, label %.lr.ph.i.i.i23.prol, !llvm.loop !372

.lr.ph.i.i.i23.prol.loopexit:                     ; preds = %.lr.ph.i.i.i23.prol, %.lr.ph.i.i.i23.preheader125
  %.07.i.i.i24.unr = phi i64 [ %.07.i.i.i24.ph, %.lr.ph.i.i.i23.preheader125 ], [ %i.gr, %.lr.ph.i.i.i23.prol ]
  %i.gs = sub nsw i64 %.07.i.i.i24.ph, %i.fl
  %i.gt = icmp ugt i64 %i.gs, -4
  br i1 %i.gt, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %.lr.ph.i.i.i23.prol.loopexit, %.lr.ph.i.i.i23
  %.07.i.i.i24 = phi i64 [ %i.hj, %.lr.ph.i.i.i23 ], [ %.07.i.i.i24.unr, %.lr.ph.i.i.i23.prol.loopexit ] ; 5 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.07.i.i.i24 ; 2 uses
  %i.gv = load i32, ptr %i.fo, align 8, !tbaa !167
  store i32 %i.gv, ptr %i.gu, align 4, !tbaa !167
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store i32 0, ptr %i.gw, align 4, !tbaa !167
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.07.i.i.i24 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load i32, ptr %i.fo, align 8, !tbaa !167
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !167
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  store i32 0, ptr %i.ha, align 4, !tbaa !167
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.07.i.i.i24 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load i32, ptr %i.fo, align 8, !tbaa !167
  store i32 %i.hd, ptr %i.hc, align 4, !tbaa !167
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 20
  store i32 0, ptr %i.he, align 4, !tbaa !167
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.07.i.i.i24 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load i32, ptr %i.fo, align 8, !tbaa !167
  store i32 %i.hh, ptr %i.hg, align 4, !tbaa !167
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 28
  store i32 0, ptr %i.hi, align 4, !tbaa !167
  %i.hj = add nuw nsw i64 %.07.i.i.i24, 4         ; 2 uses
  %exitcond.not.i.i.i25.3 = icmp eq i64 %i.hj, %i.fl
  br i1 %exitcond.not.i.i.i25.3, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i23, !llvm.loop !373

_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i23.prol.loopexit, %.lr.ph.i.i.i23, %middle.block98, %bb.s, %bb.r
  store i64 0, ptr %i.fh, align 8, !tbaa !196
  br label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit21, %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i
  tail call void @_ZN4Luau7CodeGen14ConstPropState26invalidateValuePropagationEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !159 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 3416 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !198
  %.not.i.i.i26 = icmp eq ptr %i.hn, %i.hl
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !198
  br label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !157 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !199
  %.not.i.i1.i = icmp eq ptr %i.hr, %i.hp
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !199
  br label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !151 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !172
  %.not.i.i2.i = icmp eq ptr %i.hv, %i.ht
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !172
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i

_ZNSt6vectorIjSaIjEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !151 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !172
  %.not.i.i3.i = icmp eq ptr %i.hz, %i.hx
  br i1 %.not.i.i3.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i:     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !172
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i

_ZNSt6vectorIjSaIjEE5clearEv.exit5.i:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !200
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !201 ; 9 uses
  %i.ig = icmp ugt i64 %i.if, 32
  %i.ih = load ptr, ptr %i.ia, align 8, !tbaa !163 ; 24 uses
  br i1 %i.ig, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_ZdlPv(ptr noundef %i.ih) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ia, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 7 uses
  %.not.i.i.i.i = icmp eq i64 %i.if, 0
  br i1 %.not.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.v
  %min.iters.check107 = icmp ult i64 %i.if, 8
  br i1 %min.iters.check107, label %.lr.ph.i.i.i.i.preheader124, label %vector.memcheck108

vector.memcheck108:                               ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ij = shl nuw nsw i64 %i.if, 3
  %i.ik = getelementptr i8, ptr %i.ih, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 3356
  %bound0109 = icmp ult ptr %i.ih, %i.il
  %bound1110 = icmp ult ptr %i.ii, %i.ik
  %found.conflict111 = and i1 %bound0109, %bound1110
  br i1 %found.conflict111, label %.lr.ph.i.i.i.i.preheader124, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck108
  %n.vec113 = and i64 %i.if, 60                   ; 9 uses
  %3 = load <4 x i32>, ptr %i.ii, align 8
  %broadcast.splat117 = shufflevector <4 x i32> %3, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %interleaved.vec118 = shufflevector <2 x i32> %broadcast.splat117, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec118, ptr %i.ih, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  store <4 x i32> %interleaved.vec118, ptr %i.im, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  %i.in = icmp eq i64 %n.vec113, 4
  br i1 %i.in, label %middle.block121, label %vector.body114.1

vector.body114.1:                                 ; preds = %vector.ph112
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  %interleaved.vec118.1 = shufflevector <2 x i32> %broadcast.splat117, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec118.1, ptr %i.io, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  store <4 x i32> %interleaved.vec118.1, ptr %i.ip, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  %i.iq = icmp eq i64 %n.vec113, 8
  br i1 %i.iq, label %middle.block121, label %vector.body114.2

vector.body114.2:                                 ; preds = %vector.body114.1
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ih, i64 64
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 80
  %interleaved.vec118.2 = shufflevector <2 x i32> %broadcast.splat117, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec118.2, ptr %i.ir, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  store <4 x i32> %interleaved.vec118.2, ptr %i.is, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  %i.it = icmp eq i64 %n.vec113, 12
  br i1 %i.it, label %middle.block121, label %vector.body114.3

vector.body114.3:                                 ; preds = %vector.body114.2
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ih, i64 96
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ih, i64 112
  %interleaved.vec118.3 = shufflevector <2 x i32> %broadcast.splat117, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec118.3, ptr %i.iu, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  store <4 x i32> %interleaved.vec118.3, ptr %i.iv, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  %i.iw = icmp eq i64 %n.vec113, 16
  br i1 %i.iw, label %middle.block121, label %vector.body114.4

vector.body114.4:                                 ; preds = %vector.body114.3
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ih, i64 128
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ih, i64 144
  %interleaved.vec118.4 = shufflevector <2 x i32> %broadcast.splat117, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec118.4, ptr %i.ix, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  store <4 x i32> %interleaved.vec118.4, ptr %i.iy, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  %i.iz = icmp eq i64 %n.vec113, 20
  br i1 %i.iz, label %middle.block121, label %vector.body114.5

vector.body114.5:                                 ; preds = %vector.body114.4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ih, i64 160
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ih, i64 176
  %interleaved.vec118.5 = shufflevector <2 x i32> %broadcast.splat117, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec118.5, ptr %i.ja, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  store <4 x i32> %interleaved.vec118.5, ptr %i.jb, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  %i.jc = icmp eq i64 %n.vec113, 24
  br i1 %i.jc, label %middle.block121, label %vector.body114.6

vector.body114.6:                                 ; preds = %vector.body114.5
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ih, i64 192
  %i.je = getelementptr inbounds nuw i8, ptr %i.ih, i64 208
  %interleaved.vec118.6 = shufflevector <2 x i32> %broadcast.splat117, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec118.6, ptr %i.jd, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  store <4 x i32> %interleaved.vec118.6, ptr %i.je, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  %i.jf = icmp eq i64 %n.vec113, 28
  br i1 %i.jf, label %middle.block121, label %vector.body114.7

vector.body114.7:                                 ; preds = %vector.body114.6
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ih, i64 224
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ih, i64 240
  %interleaved.vec118.7 = shufflevector <2 x i32> %broadcast.splat117, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec118.7, ptr %i.jg, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  store <4 x i32> %interleaved.vec118.7, ptr %i.jh, align 4, !tbaa !167, !alias.scope !384, !noalias !385
  br label %middle.block121

middle.block121:                                  ; preds = %vector.body114.7, %vector.body114.6, %vector.body114.5, %vector.body114.4, %vector.body114.3, %vector.body114.2, %vector.body114.1, %vector.ph112
  %cmp.n122 = icmp eq i64 %i.if, %n.vec113
  br i1 %cmp.n122, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader124

.lr.ph.i.i.i.i.preheader124:                      ; preds = %vector.memcheck108, %.lr.ph.i.i.i.i.preheader, %middle.block121
  %.07.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck108 ], [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec113, %middle.block121 ] ; 3 uses
  %xtraiter139 = and i64 %i.if, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader124, %.lr.ph.i.i.i.i.prol
  %.07.i.i.i.i.prol = phi i64 [ %i.jl, %.lr.ph.i.i.i.i.prol ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader124 ] ; 2 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader124 ]
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.07.i.i.i.i.prol ; 2 uses
  %i.jj = load i32, ptr %i.ii, align 8, !tbaa !167
  store i32 %i.jj, ptr %i.ji, align 4, !tbaa !167
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  store i32 0, ptr %i.jk, align 4, !tbaa !167
  %i.jl = add nuw nsw i64 %.07.i.i.i.i.prol, 1    ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !377

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader124
  %.07.i.i.i.i.unr = phi i64 [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader124 ], [ %i.jl, %.lr.ph.i.i.i.i.prol ]
  %i.jm = sub nsw i64 %.07.i.i.i.i.ph, %i.if
  %i.jn = icmp ugt i64 %i.jm, -4
  br i1 %i.jn, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi i64 [ %i.kd, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.07.i.i.i.i ; 2 uses
  %i.jp = load i32, ptr %i.ii, align 8, !tbaa !167
  store i32 %i.jp, ptr %i.jo, align 4, !tbaa !167
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  store i32 0, ptr %i.jq, align 4, !tbaa !167
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.07.i.i.i.i ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load i32, ptr %i.ii, align 8, !tbaa !167
  store i32 %i.jt, ptr %i.js, align 4, !tbaa !167
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 0, ptr %i.ju, align 4, !tbaa !167
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.07.i.i.i.i ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load i32, ptr %i.ii, align 8, !tbaa !167
  store i32 %i.jx, ptr %i.jw, align 4, !tbaa !167
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 20
  store i32 0, ptr %i.jy, align 4, !tbaa !167
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.07.i.i.i.i ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load i32, ptr %i.ii, align 8, !tbaa !167
  store i32 %i.kb, ptr %i.ka, align 4, !tbaa !167
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 28
  store i32 0, ptr %i.kc, align 4, !tbaa !167
  %i.kd = add nuw nsw i64 %.07.i.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.kd, %i.if
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !378

_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block121, %bb.v, %bb.u
  store i64 0, ptr %i.ib, align 8, !tbaa !200
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !161 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !202
  %.not.i.i6.i = icmp eq ptr %i.kh, %i.kf
  br i1 %.not.i.i6.i, label %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !202
  br label %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit

_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i, %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 3504
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !151 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 3512 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !172
  %.not.i.i.i27 = icmp eq ptr %i.kl, %i.kj
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i29, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i28

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i28:    ; preds = %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !172
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i29

_ZNSt6vectorIjSaIjEE5clearEv.exit.i29:            ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i28, %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !155 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !203
  %.not.i.i1.i30 = icmp eq ptr %i.kp, %i.kn
  br i1 %.not.i.i1.i30, label %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i29
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !203
  br label %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit

_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i29, %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 3528
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !151 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 3536 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !172
  %.not.i.i.i31 = icmp eq ptr %i.kt, %i.kr
  br i1 %.not.i.i.i31, label %_ZN4Luau7CodeGen14ConstPropState22invalidateUserdataDataEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i32

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i32:    ; preds = %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !172
  br label %_ZN4Luau7CodeGen14ConstPropState22invalidateUserdataDataEv.exit

_ZN4Luau7CodeGen14ConstPropState22invalidateUserdataDataEv.exit: ; preds = %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i32
  ret void

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %i.ku = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  store i8 -1, ptr %i.ku, align 4, !tbaa !52
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ku, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5.0..sroa_idx, i8 0, i64 11, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.kv = load i32, ptr %i.a, align 8, !tbaa !136
  %i.kw = sext i32 %i.kv to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.kw
  br i1 %.not.not, label %bb.w, label %._crit_edge, !llvm.loop !379
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4Luau7CodeGenL20setupBlockEntryStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockERNS0_14ConstPropStateE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(3704) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %5 = alloca %"class.std::function.133", align 8 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGenL20setupBlockEntryStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockERNS0_14ConstPropStateE:bb.a
  ret void

bb.w:                                             ; preds = %._crit_edge
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %i.v, align 8, !tbaa !390 ; 2 uses
  %.not.i31 = icmp eq ptr %i.cp, null
  br i1 %.not.i31, label %_ZNSt14_Function_baseD2Ev.exit32, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = invoke noundef zeroext i1 %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit32 unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit32:                 ; preds = %bb.w, %bb.x
  %i.ct = load ptr, ptr %i.s, align 8, !tbaa !390 ; 2 uses
  %.not.i33 = icmp eq ptr %i.ct, null
  br i1 %.not.i33, label %_ZNSt14_Function_baseD2Ev.exit34, label %bb.z

bb.z:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit32
  %i.cu = invoke noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit34 unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit34:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit32, %bb.z
  resume { ptr, i32 } %i.co
}

declare noundef i32 @_ZN4Luau7CodeGen20getLiveOutValueCountERNS0_10IrFunctionERNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 4 dereferenceable(36)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen14ConstPropState26invalidateValuePropagationEv(ptr noundef nonnull align 8 dereferenceable(3704) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3200
  tail call void @_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE5clearEm(ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 noundef 32)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3296 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3312 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !270
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3304
  %i.g = load i64, ptr %i.f, align 8, !tbaa !271  ; 5 uses
  %i.h = icmp ugt i64 %i.g, 32
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !164  ; 6 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef %i.i) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3320 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.g, 4
  br i1 %i.k, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.g, 60
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.aa, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i.i.i ; 2 uses
  %i.m = load i8, ptr %i.j, align 8, !tbaa !52
  store i8 %i.m, ptr %i.l, align 4, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.n, align 4, !tbaa !167
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i8, ptr %i.j, align 8, !tbaa !52
  store i8 %i.q, ptr %i.p, align 4, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !167
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i8, ptr %i.j, align 8, !tbaa !52
  store i8 %i.u, ptr %i.t, align 4, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !167
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i8, ptr %i.j, align 8, !tbaa !52
  store i8 %i.y, ptr %i.x, align 4, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i32 0, ptr %i.z, align 4, !tbaa !167
  %i.aa = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !5

_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.aa, %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod43 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.ae, %.lr.ph.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i.i.i.epil ; 2 uses
  %i.ac = load i8, ptr %i.j, align 8, !tbaa !52
  store i8 %i.ac, ptr %i.ab, align 4, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 0, ptr %i.ad, align 4, !tbaa !167
  %i.ae = add nuw nsw i64 %.07.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !395

_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.d, %bb.c
  store i64 0, ptr %i.c, align 8, !tbaa !270
  br label %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit

_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit: ; preds = %bb.a, %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3384
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !151 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3392 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !172
  %.not.i.i = icmp eq ptr %i.ai, %i.ag
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !172
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !155 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !203
  %.not.i.i1 = icmp eq ptr %i.am, %i.ak
  br i1 %.not.i.i1, label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !203
  br label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !200
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !201 ; 9 uses
  %i.at = icmp ugt i64 %i.as, 32
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !163 ; 24 uses
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef %i.au) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 7 uses
  %.not.i.i.i2 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i2, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i, label %.lr.ph.i.i.i3.preheader

.lr.ph.i.i.i3.preheader:                          ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.as, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i3.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i3.preheader
  %i.aw = shl nuw nsw i64 %i.as, 3
  %i.ax = getelementptr i8, ptr %i.au, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3356
  %bound0 = icmp ult ptr %i.au, %i.ay
  %bound1 = icmp ult ptr %i.av, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i3.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 60                      ; 9 uses
  %1 = load <4 x i32>, ptr %i.av, align 8
  %broadcast.splat = shufflevector <4 x i32> %1, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec, ptr %i.au, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  store <4 x i32> %interleaved.vec, ptr %i.az, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  %i.ba = icmp eq i64 %n.vec, 4
  br i1 %i.ba, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %interleaved.vec.1 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.1, ptr %i.bb, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  store <4 x i32> %interleaved.vec.1, ptr %i.bc, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  %i.bd = icmp eq i64 %n.vec, 8
  br i1 %i.bd, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %interleaved.vec.2 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.2, ptr %i.be, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  store <4 x i32> %interleaved.vec.2, ptr %i.bf, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  %i.bg = icmp eq i64 %n.vec, 12
  br i1 %i.bg, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %interleaved.vec.3 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.3, ptr %i.bh, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  store <4 x i32> %interleaved.vec.3, ptr %i.bi, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  %i.bj = icmp eq i64 %n.vec, 16
  br i1 %i.bj, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %interleaved.vec.4 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.4, ptr %i.bk, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  store <4 x i32> %interleaved.vec.4, ptr %i.bl, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  %i.bm = icmp eq i64 %n.vec, 20
  br i1 %i.bm, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %interleaved.vec.5 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.5, ptr %i.bn, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  store <4 x i32> %interleaved.vec.5, ptr %i.bo, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  %i.bp = icmp eq i64 %n.vec, 24
  br i1 %i.bp, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  %i.br = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  %interleaved.vec.6 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.6, ptr %i.bq, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  store <4 x i32> %interleaved.vec.6, ptr %i.br, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  %i.bs = icmp eq i64 %n.vec, 28
  br i1 %i.bs, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  %interleaved.vec.7 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.7, ptr %i.bt, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  store <4 x i32> %interleaved.vec.7, ptr %i.bu, align 4, !tbaa !167, !alias.scope !406, !noalias !407
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i, label %.lr.ph.i.i.i3.preheader42

.lr.ph.i.i.i3.preheader42:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i3.preheader, %middle.block
  %.07.i.i.i4.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i3.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter44 = and i64 %i.as, 3                  ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i3.prol.loopexit, label %.lr.ph.i.i.i3.prol

.lr.ph.i.i.i3.prol:                               ; preds = %.lr.ph.i.i.i3.preheader42, %.lr.ph.i.i.i3.prol
  %.07.i.i.i4.prol = phi i64 [ %i.by, %.lr.ph.i.i.i3.prol ], [ %.07.i.i.i4.ph, %.lr.ph.i.i.i3.preheader42 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i3.prol ], [ 0, %.lr.ph.i.i.i3.preheader42 ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.07.i.i.i4.prol ; 2 uses
  %i.bw = load i32, ptr %i.av, align 8, !tbaa !167
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !167
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 0, ptr %i.bx, align 4, !tbaa !167
  %i.by = add nuw nsw i64 %.07.i.i.i4.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter44
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i3.prol.loopexit, label %.lr.ph.i.i.i3.prol, !llvm.loop !399

.lr.ph.i.i.i3.prol.loopexit:                      ; preds = %.lr.ph.i.i.i3.prol, %.lr.ph.i.i.i3.preheader42
  %.07.i.i.i4.unr = phi i64 [ %.07.i.i.i4.ph, %.lr.ph.i.i.i3.preheader42 ], [ %i.by, %.lr.ph.i.i.i3.prol ]
  %i.bz = sub nsw i64 %.07.i.i.i4.ph, %i.as
  %i.ca = icmp ugt i64 %i.bz, -4
  br i1 %i.ca, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %.lr.ph.i.i.i3.prol.loopexit, %.lr.ph.i.i.i3
  %.07.i.i.i4 = phi i64 [ %i.cq, %.lr.ph.i.i.i3 ], [ %.07.i.i.i4.unr, %.lr.ph.i.i.i3.prol.loopexit ] ; 5 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.07.i.i.i4 ; 2 uses
  %i.cc = load i32, ptr %i.av, align 8, !tbaa !167
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !167
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 0, ptr %i.cd, align 4, !tbaa !167
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.07.i.i.i4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.av, align 8, !tbaa !167
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !167
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !167
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.07.i.i.i4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i32, ptr %i.av, align 8, !tbaa !167
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !167
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  store i32 0, ptr %i.cl, align 4, !tbaa !167
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.07.i.i.i4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load i32, ptr %i.av, align 8, !tbaa !167
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !167
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  store i32 0, ptr %i.cp, align 4, !tbaa !167
  %i.cq = add nuw nsw i64 %.07.i.i.i4, 4          ; 2 uses
  %exitcond.not.i.i.i5.3 = icmp eq i64 %i.cq, %i.as
  br i1 %exitcond.not.i.i.i5.3, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i, label %.lr.ph.i.i.i3, !llvm.loop !400

_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i3.prol.loopexit, %.lr.ph.i.i.i3, %middle.block, %bb.g, %bb.f
  store i64 0, ptr %i.ao, align 8, !tbaa !200
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit, %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !161 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !202
  %.not.i.i6 = icmp eq ptr %i.cu, %i.cs
  br i1 %.not.i.i6, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !202
  br label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit, %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 3184 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !192
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !193 ; 9 uses
  %i.db = icmp ugt i64 %i.da, 32
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !148 ; 24 uses
  br i1 %i.db, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef %i.dc) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 7 uses
  %.not.i.i.i7 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i7, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i8.preheader:                          ; preds = %bb.j
  %min.iters.check24 = icmp ult i64 %i.da, 8
  br i1 %min.iters.check24, label %.lr.ph.i.i.i8.preheader41, label %vector.memcheck25

vector.memcheck25:                                ; preds = %.lr.ph.i.i.i8.preheader
  %i.de = shl nuw nsw i64 %i.da, 3
  %i.df = getelementptr i8, ptr %i.dc, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 3196
  %bound026 = icmp ult ptr %i.dc, %i.dg
  %bound127 = icmp ult ptr %i.dd, %i.df
  %found.conflict28 = and i1 %bound026, %bound127
  br i1 %found.conflict28, label %.lr.ph.i.i.i8.preheader41, label %vector.ph29

vector.ph29:                                      ; preds = %vector.memcheck25
  %n.vec30 = and i64 %i.da, 60                    ; 9 uses
  %2 = load <4 x i32>, ptr %i.dd, align 8
  %broadcast.splat34 = shufflevector <4 x i32> %2, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %interleaved.vec35 = shufflevector <2 x i32> %broadcast.splat34, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec35, ptr %i.dc, align 4, !alias.scope !408, !noalias !409
  store <4 x i32> %interleaved.vec35, ptr %i.dh, align 4, !alias.scope !408, !noalias !409
  %i.di = icmp eq i64 %n.vec30, 4
  br i1 %i.di, label %middle.block38, label %vector.body31.1

vector.body31.1:                                  ; preds = %vector.ph29
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %interleaved.vec35.1 = shufflevector <2 x i32> %broadcast.splat34, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec35.1, ptr %i.dj, align 4, !alias.scope !408, !noalias !409
  store <4 x i32> %interleaved.vec35.1, ptr %i.dk, align 4, !alias.scope !408, !noalias !409
  %i.dl = icmp eq i64 %n.vec30, 8
  br i1 %i.dl, label %middle.block38, label %vector.body31.2

vector.body31.2:                                  ; preds = %vector.body31.1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %interleaved.vec35.2 = shufflevector <2 x i32> %broadcast.splat34, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec35.2, ptr %i.dm, align 4, !alias.scope !408, !noalias !409
  store <4 x i32> %interleaved.vec35.2, ptr %i.dn, align 4, !alias.scope !408, !noalias !409
  %i.do = icmp eq i64 %n.vec30, 12
  br i1 %i.do, label %middle.block38, label %vector.body31.3

vector.body31.3:                                  ; preds = %vector.body31.2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 112
  %interleaved.vec35.3 = shufflevector <2 x i32> %broadcast.splat34, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec35.3, ptr %i.dp, align 4, !alias.scope !408, !noalias !409
  store <4 x i32> %interleaved.vec35.3, ptr %i.dq, align 4, !alias.scope !408, !noalias !409
  %i.dr = icmp eq i64 %n.vec30, 16
  br i1 %i.dr, label %middle.block38, label %vector.body31.4

vector.body31.4:                                  ; preds = %vector.body31.3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dc, i64 144
  %interleaved.vec35.4 = shufflevector <2 x i32> %broadcast.splat34, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec35.4, ptr %i.ds, align 4, !alias.scope !408, !noalias !409
  store <4 x i32> %interleaved.vec35.4, ptr %i.dt, align 4, !alias.scope !408, !noalias !409
  %i.du = icmp eq i64 %n.vec30, 20
  br i1 %i.du, label %middle.block38, label %vector.body31.5

vector.body31.5:                                  ; preds = %vector.body31.4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 160
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dc, i64 176
  %interleaved.vec35.5 = shufflevector <2 x i32> %broadcast.splat34, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec35.5, ptr %i.dv, align 4, !alias.scope !408, !noalias !409
  store <4 x i32> %interleaved.vec35.5, ptr %i.dw, align 4, !alias.scope !408, !noalias !409
  %i.dx = icmp eq i64 %n.vec30, 24
  br i1 %i.dx, label %middle.block38, label %vector.body31.6

vector.body31.6:                                  ; preds = %vector.body31.5
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dc, i64 192
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dc, i64 208
  %interleaved.vec35.6 = shufflevector <2 x i32> %broadcast.splat34, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec35.6, ptr %i.dy, align 4, !alias.scope !408, !noalias !409
  store <4 x i32> %interleaved.vec35.6, ptr %i.dz, align 4, !alias.scope !408, !noalias !409
  %i.ea = icmp eq i64 %n.vec30, 28
  br i1 %i.ea, label %middle.block38, label %vector.body31.7

vector.body31.7:                                  ; preds = %vector.body31.6
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dc, i64 224
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dc, i64 240
  %interleaved.vec35.7 = shufflevector <2 x i32> %broadcast.splat34, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec35.7, ptr %i.eb, align 4, !alias.scope !408, !noalias !409
  store <4 x i32> %interleaved.vec35.7, ptr %i.ec, align 4, !alias.scope !408, !noalias !409
  br label %middle.block38

middle.block38:                                   ; preds = %vector.body31.7, %vector.body31.6, %vector.body31.5, %vector.body31.4, %vector.body31.3, %vector.body31.2, %vector.body31.1, %vector.ph29
  %cmp.n39 = icmp eq i64 %i.da, %n.vec30
  br i1 %cmp.n39, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8.preheader41

.lr.ph.i.i.i8.preheader41:                        ; preds = %vector.memcheck25, %.lr.ph.i.i.i8.preheader, %middle.block38
  %.07.i.i.i9.ph = phi i64 [ 0, %vector.memcheck25 ], [ 0, %.lr.ph.i.i.i8.preheader ], [ %n.vec30, %middle.block38 ] ; 3 uses
  %xtraiter46 = and i64 %i.da, 3                  ; 2 uses
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47.not, label %.lr.ph.i.i.i8.prol.loopexit, label %.lr.ph.i.i.i8.prol

.lr.ph.i.i.i8.prol:                               ; preds = %.lr.ph.i.i.i8.preheader41, %.lr.ph.i.i.i8.prol
  %.07.i.i.i9.prol = phi i64 [ %i.eg, %.lr.ph.i.i.i8.prol ], [ %.07.i.i.i9.ph, %.lr.ph.i.i.i8.preheader41 ] ; 2 uses
  %prol.iter48 = phi i64 [ %prol.iter48.next, %.lr.ph.i.i.i8.prol ], [ 0, %.lr.ph.i.i.i8.preheader41 ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.07.i.i.i9.prol ; 2 uses
  %i.ee = load i32, ptr %i.dd, align 8, !tbaa !167
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !167
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 0, ptr %i.ef, align 4
  %i.eg = add nuw nsw i64 %.07.i.i.i9.prol, 1     ; 2 uses
  %prol.iter48.next = add i64 %prol.iter48, 1     ; 2 uses
  %prol.iter48.cmp.not = icmp eq i64 %prol.iter48.next, %xtraiter46
  br i1 %prol.iter48.cmp.not, label %.lr.ph.i.i.i8.prol.loopexit, label %.lr.ph.i.i.i8.prol, !llvm.loop !404

.lr.ph.i.i.i8.prol.loopexit:                      ; preds = %.lr.ph.i.i.i8.prol, %.lr.ph.i.i.i8.preheader41
  %.07.i.i.i9.unr = phi i64 [ %.07.i.i.i9.ph, %.lr.ph.i.i.i8.preheader41 ], [ %i.eg, %.lr.ph.i.i.i8.prol ]
  %i.eh = sub nsw i64 %.07.i.i.i9.ph, %i.da
  %i.ei = icmp ugt i64 %i.eh, -4
  br i1 %i.ei, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %.lr.ph.i.i.i8.prol.loopexit, %.lr.ph.i.i.i8
  %.07.i.i.i9 = phi i64 [ %i.ey, %.lr.ph.i.i.i8 ], [ %.07.i.i.i9.unr, %.lr.ph.i.i.i8.prol.loopexit ] ; 5 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.07.i.i.i9 ; 2 uses
  %i.ek = load i32, ptr %i.dd, align 8, !tbaa !167
  store i32 %i.ek, ptr %i.ej, align 4, !tbaa !167
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 0, ptr %i.el, align 4
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.07.i.i.i9 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i32, ptr %i.dd, align 8, !tbaa !167
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !167
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.ep, align 4
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.07.i.i.i9 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load i32, ptr %i.dd, align 8, !tbaa !167
  store i32 %i.es, ptr %i.er, align 4, !tbaa !167
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  store i32 0, ptr %i.et, align 4
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.07.i.i.i9 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load i32, ptr %i.dd, align 8, !tbaa !167
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !167
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 28
  store i32 0, ptr %i.ex, align 4
  %i.ey = add nuw nsw i64 %.07.i.i.i9, 4          ; 2 uses
  %exitcond.not.i.i.i10.3 = icmp eq i64 %i.ey, %i.da
  br i1 %exitcond.not.i.i.i10.3, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8, !llvm.loop !405

_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i8.prol.loopexit, %.lr.ph.i.i.i8, %middle.block38, %bb.j, %bb.i
  store i64 0, ptr %i.cw, align 8, !tbaa !192
  br label %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit, %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 3576
  store i32 -1, ptr %i.ez, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv(ptr noundef nonnull align 8 dereferenceable(3704) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3416 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !198
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !198
  br label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !157  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !199
  %.not.i.i1 = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i1, label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit
  store ptr %i.f, ptr %i.g, align 8, !tbaa !199
  br label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit, %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !151  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172
  %.not.i.i2 = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i2, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit
  store ptr %i.j, ptr %i.k, align 8, !tbaa !172
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !151  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !172
  %.not.i.i3 = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i3, label %_ZNSt6vectorIjSaIjEE5clearEv.exit5, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4:       ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  store ptr %i.n, ptr %i.o, align 8, !tbaa !172
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit5

_ZNSt6vectorIjSaIjEE5clearEv.exit5:               ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !200
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.v = load i64, ptr %i.u, align 8, !tbaa !201  ; 9 uses
  %i.w = icmp ugt i64 %i.v, 32
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !163  ; 24 uses
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef %i.x) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 7 uses
  %.not.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.z = shl nuw nsw i64 %i.v, 3
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3356
  %bound0 = icmp ult ptr %i.x, %i.ab
  %bound1 = icmp ult ptr %i.y, %i.aa
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 60                       ; 9 uses
  %1 = load <4 x i32>, ptr %i.y, align 8
  %broadcast.splat = shufflevector <4 x i32> %1, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec, ptr %i.x, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  store <4 x i32> %interleaved.vec, ptr %i.ac, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  %i.ad = icmp eq i64 %n.vec, 4
  br i1 %i.ad, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %interleaved.vec.1 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.1, ptr %i.ae, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  store <4 x i32> %interleaved.vec.1, ptr %i.af, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  %i.ag = icmp eq i64 %n.vec, 8
  br i1 %i.ag, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %interleaved.vec.2 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.2, ptr %i.ah, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  store <4 x i32> %interleaved.vec.2, ptr %i.ai, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  %i.aj = icmp eq i64 %n.vec, 12
  br i1 %i.aj, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %interleaved.vec.3 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.3, ptr %i.ak, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  store <4 x i32> %interleaved.vec.3, ptr %i.al, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  %i.am = icmp eq i64 %n.vec, 16
  br i1 %i.am, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %interleaved.vec.4 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.4, ptr %i.an, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  store <4 x i32> %interleaved.vec.4, ptr %i.ao, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  %i.ap = icmp eq i64 %n.vec, 20
  br i1 %i.ap, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 160
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %interleaved.vec.5 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.5, ptr %i.aq, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  store <4 x i32> %interleaved.vec.5, ptr %i.ar, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  %i.as = icmp eq i64 %n.vec, 24
  br i1 %i.as, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 208
  %interleaved.vec.6 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.6, ptr %i.at, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  store <4 x i32> %interleaved.vec.6, ptr %i.au, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  %i.av = icmp eq i64 %n.vec, 28
  br i1 %i.av, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 224
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %interleaved.vec.7 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.7, ptr %i.aw, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  store <4 x i32> %interleaved.vec.7, ptr %i.ax, align 4, !tbaa !167, !alias.scope !415, !noalias !416
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i, label %.lr.ph.i.i.i.preheader14

.lr.ph.i.i.i.preheader14:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.07.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader14, %.lr.ph.i.i.i.prol
  %.07.i.i.i.prol = phi i64 [ %i.bb, %.lr.ph.i.i.i.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader14 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader14 ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.07.i.i.i.prol ; 2 uses
  %i.az = load i32, ptr %i.y, align 8, !tbaa !167
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !167
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 0, ptr %i.ba, align 4, !tbaa !167
  %i.bb = add nuw nsw i64 %.07.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !413

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader14
  %.07.i.i.i.unr = phi i64 [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader14 ], [ %i.bb, %.lr.ph.i.i.i.prol ]
  %i.bc = sub nsw i64 %.07.i.i.i.ph, %i.v
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.07.i.i.i ; 2 uses
  %i.bf = load i32, ptr %i.y, align 8, !tbaa !167
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !167
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 0, ptr %i.bg, align 4, !tbaa !167
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.07.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.y, align 8, !tbaa !167
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !167
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !167
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.07.i.i.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i32, ptr %i.y, align 8, !tbaa !167
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !167
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  store i32 0, ptr %i.bo, align 4, !tbaa !167
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.07.i.i.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i32, ptr %i.y, align 8, !tbaa !167
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !167
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  store i32 0, ptr %i.bs, align 4, !tbaa !167
  %i.bt = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bt, %i.v
  br i1 %exitcond.not.i.i.i.3, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !414

_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.d, %bb.c
  store i64 0, ptr %i.r, align 8, !tbaa !200
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit5, %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !161 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !202
  %.not.i.i6 = icmp eq ptr %i.bx, %i.bv
  br i1 %.not.i.i6, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !202
  br label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit, %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE5clearEm(ptr noundef nonnull align 8 dereferenceable(90) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !272
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !166  ; 4 uses
  %i.f = icmp ugt i64 %i.e, %1
  %i.g = load ptr, ptr %0, align 8, !tbaa !165    ; 2 uses
  br i1 %i.f, label %.lr.ph.i.i, label %bb.d

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i
  %.04.i.i = phi i64 [ %i.m, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.04.i.i ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.promoted.i.i.i.i.i = load i32, ptr %i.j, align 8, !tbaa !131
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i
  store i32 0, ptr %i.j, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !133  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.k) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i

_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i:             ; preds = %bb.c, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  %i.m = add nuw i64 %.04.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.e
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE7destroyEv.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE7destroyEv.exit: ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !165
  tail call void @_ZdlPv(ptr noundef %.pre.i) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(90) %0, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapINS_7CodeGen6IrInstEjE4fillEPSt4pairIS3_jEmRKS3_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN4Luau6detail16ItemInterfaceMapINS_7CodeGen6IrInstEjE4fillEPSt4pairIS3_jEmRKS3_.exit, label %.lr.ph.i

end_hunk_1
begin_hunk_2_@_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv:bb.a

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ar, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.07.i.i.i ; 2 uses
  %i.ad = load i8, ptr %i.aa, align 8, !tbaa !52
  store i8 %i.ad, ptr %i.ac, align 4, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %i.ae, align 4, !tbaa !167
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.07.i.i.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i8, ptr %i.aa, align 8, !tbaa !52
  store i8 %i.ah, ptr %i.ag, align 4, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !167
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.07.i.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i8, ptr %i.aa, align 8, !tbaa !52
  store i8 %i.al, ptr %i.ak, align 4, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store i32 0, ptr %i.am, align 4, !tbaa !167
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.07.i.i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i8, ptr %i.aa, align 8, !tbaa !52
  store i8 %i.ap, ptr %i.ao, align 4, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  store i32 0, ptr %i.aq, align 4, !tbaa !167
  %i.ar = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !5

_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ar, %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.av, %.lr.ph.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.07.i.i.i.epil ; 2 uses
  %i.at = load i8, ptr %i.aa, align 8, !tbaa !52
  store i8 %i.at, ptr %i.as, align 4, !tbaa !52
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 0, ptr %i.au, align 4, !tbaa !167
  %i.av = add nuw nsw i64 %.07.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !498

_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.h, %bb.g
  store i64 0, ptr %i.t, align 8, !tbaa !270
  br label %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit

_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit: ; preds = %_ZN4Luau7CodeGen14ConstPropState27invalidateCapturedRegistersEv.exit, %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3096
  store i8 0, ptr %i.aw, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext range(i8 -1, 12) i8 @_ZN4Luau7CodeGenL20tryGetTagForTypenameESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %0, ptr nofree readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i64 %0, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit66.thread [
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i35
    i64 5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i51
    i64 8, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i55
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.a = load i16, ptr %1, align 1
  %i.b = xor i16 %i.a, 26990
  %i.c = getelementptr i8, ptr %1, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 108
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit66.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31: ; preds = %bb.a
  %bcmp.i32 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.22, i64 %0)
  %i.k = icmp eq i32 %bcmp.i32, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i39

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i35: ; preds = %bb.a
  %bcmp.i36 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.23, i64 %0)
  %i.l = icmp eq i32 %bcmp.i36, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i39: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31
  %bcmp.i40 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.24, i64 %0)
  %i.m = icmp eq i32 %bcmp.i40, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit66.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i35
  %bcmp.i44 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.25, i64 %0)
  %i.n = icmp ne i32 %bcmp.i44, 0
  %or.cond87 = or i1 %2, %i.n
  br i1 %or.cond87, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i47, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i47: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43
  %i.o = load i32, ptr %1, align 1
  %i.p = xor i32 %i.o, 1769108595
  %i.q = getelementptr i8, ptr %1, i64 4
  %i.r = load i16, ptr %i.q, align 1
  %i.s = zext i16 %i.r to i32
  %i.t = xor i32 %i.s, 26478
  %i.u = or i32 %i.p, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i59

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i51: ; preds = %bb.a
  %bcmp.i52 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.27, i64 %0)
  %i.y = icmp eq i32 %bcmp.i52, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit66.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i55: ; preds = %bb.a
  %bcmp.i56 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.28, i64 %0)
  %i.z = icmp eq i32 %bcmp.i56, 0
  br i1 %i.z, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit66.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i59: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i47
  %bcmp.i60 = tail call i32 @bcmp(ptr nonnull %1, ptr nonnull @.str.29, i64 %0)
  %i.aa = icmp eq i32 %bcmp.i60, 0
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i63

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i63: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i59
  %i.ab = load i32, ptr %1, align 1
  %i.ac = xor i32 %i.ab, 1717990754
  %i.ad = getelementptr i8, ptr %1, i64 4
  %i.ae = load i16, ptr %i.ad, align 1
  %i.af = zext i16 %i.ae to i32
  %i.ag = xor i32 %i.af, 29285
  %i.ah = or i32 %i.ac, %i.ag
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit66.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit66.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i55, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i39, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i63
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit66.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i63, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i59, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i55, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i47, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i39, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i35, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.0 = phi i8 [ 3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i35 ], [ 8, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i55 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31 ], [ -1, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit66.thread ], [ 4, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i39 ], [ 6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i47 ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i51 ], [ 10, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i59 ], [ 11, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i63 ], [ 5, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43 ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen14ConstPropState24invalidateTableArraySizeEv(ptr noundef nonnull align 8 dereferenceable(3704) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3648 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3664 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !196
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %i.f = load i64, ptr %i.e, align 8, !tbaa !197  ; 9 uses
  %i.g = icmp ugt i64 %i.f, 32
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !153  ; 24 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef %i.h) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3672 ; 7 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader34, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.j = shl nuw nsw i64 %i.f, 3
  %i.k = getelementptr i8, ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3676
  %bound0 = icmp ult ptr %i.h, %i.l
  %bound1 = icmp ult ptr %i.i, %i.k
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 60                       ; 9 uses
  %1 = load <4 x i32>, ptr %i.i, align 8
  %broadcast.splat = shufflevector <4 x i32> %1, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec, ptr %i.h, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  store <4 x i32> %interleaved.vec, ptr %i.m, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  %i.n = icmp eq i64 %n.vec, 4
  br i1 %i.n, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %interleaved.vec.1 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.1, ptr %i.o, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  store <4 x i32> %interleaved.vec.1, ptr %i.p, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  %i.q = icmp eq i64 %n.vec, 8
  br i1 %i.q, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %interleaved.vec.2 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.2, ptr %i.r, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  store <4 x i32> %interleaved.vec.2, ptr %i.s, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  %i.t = icmp eq i64 %n.vec, 12
  br i1 %i.t, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %interleaved.vec.3 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.3, ptr %i.u, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  store <4 x i32> %interleaved.vec.3, ptr %i.v, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  %i.w = icmp eq i64 %n.vec, 16
  br i1 %i.w, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %interleaved.vec.4 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.4, ptr %i.x, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  store <4 x i32> %interleaved.vec.4, ptr %i.y, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  %i.z = icmp eq i64 %n.vec, 20
  br i1 %i.z, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %interleaved.vec.5 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.5, ptr %i.aa, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  store <4 x i32> %interleaved.vec.5, ptr %i.ab, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  %i.ac = icmp eq i64 %n.vec, 24
  br i1 %i.ac, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %interleaved.vec.6 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.6, ptr %i.ad, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  store <4 x i32> %interleaved.vec.6, ptr %i.ae, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  %i.af = icmp eq i64 %n.vec, 28
  br i1 %i.af, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %interleaved.vec.7 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.7, ptr %i.ag, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  store <4 x i32> %interleaved.vec.7, ptr %i.ah, align 4, !tbaa !167, !alias.scope !509, !noalias !510
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i.preheader34

.lr.ph.i.i.i.preheader34:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.07.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader34, %.lr.ph.i.i.i.prol
  %.07.i.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.i.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader34 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader34 ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.07.i.i.i.prol ; 2 uses
  %i.aj = load i32, ptr %i.i, align 8, !tbaa !167
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !167
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 0, ptr %i.ak, align 4, !tbaa !167
  %i.al = add nuw nsw i64 %.07.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !502

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader34
  %.07.i.i.i.unr = phi i64 [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader34 ], [ %i.al, %.lr.ph.i.i.i.prol ]
  %i.am = sub nsw i64 %.07.i.i.i.ph, %i.f
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.07.i.i.i ; 2 uses
  %i.ap = load i32, ptr %i.i, align 8, !tbaa !167
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !167
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 0, ptr %i.aq, align 4, !tbaa !167
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.07.i.i.i ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.i, align 8, !tbaa !167
  store i32 %i.at, ptr %i.as, align 4, !tbaa !167
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !167
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.07.i.i.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i32, ptr %i.i, align 8, !tbaa !167
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !167
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store i32 0, ptr %i.ay, align 4, !tbaa !167
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.07.i.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i32, ptr %i.i, align 8, !tbaa !167
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !167
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  store i32 0, ptr %i.bc, align 4, !tbaa !167
  %i.bd = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bd, %i.f
  br i1 %exitcond.not.i.i.i.3, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !503

_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.d, %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !196
  br label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %bb.a, %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !159 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3416 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !198
  %.not.i.i.i1 = icmp eq ptr %i.bh, %i.bf
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !198
  br label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !157 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !199
  %.not.i.i1.i = icmp eq ptr %i.bl, %i.bj
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !199
  br label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !151 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !172
  %.not.i.i2.i = icmp eq ptr %i.bp, %i.bn
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !172
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i

_ZNSt6vectorIjSaIjEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !151 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !172
  %.not.i.i3.i = icmp eq ptr %i.bt, %i.br
  br i1 %.not.i.i3.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i:     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !172
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i

_ZNSt6vectorIjSaIjEE5clearEv.exit5.i:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !200
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !201 ; 9 uses
  %i.ca = icmp ugt i64 %i.bz, 32
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !163 ; 24 uses
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef %i.cb) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 7 uses
  %.not.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %min.iters.check16 = icmp ult i64 %i.bz, 8
  br i1 %min.iters.check16, label %.lr.ph.i.i.i.i.preheader33, label %vector.memcheck17

vector.memcheck17:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cd = shl nuw nsw i64 %i.bz, 3
  %i.ce = getelementptr i8, ptr %i.cb, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 3356
  %bound018 = icmp ult ptr %i.cb, %i.cf
  %bound119 = icmp ult ptr %i.cc, %i.ce
  %found.conflict20 = and i1 %bound018, %bound119
  br i1 %found.conflict20, label %.lr.ph.i.i.i.i.preheader33, label %vector.ph21

vector.ph21:                                      ; preds = %vector.memcheck17
  %n.vec22 = and i64 %i.bz, 60                    ; 9 uses
  %2 = load <4 x i32>, ptr %i.cc, align 8
  %broadcast.splat26 = shufflevector <4 x i32> %2, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %interleaved.vec27 = shufflevector <2 x i32> %broadcast.splat26, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec27, ptr %i.cb, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  store <4 x i32> %interleaved.vec27, ptr %i.cg, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  %i.ch = icmp eq i64 %n.vec22, 4
  br i1 %i.ch, label %middle.block30, label %vector.body23.1

vector.body23.1:                                  ; preds = %vector.ph21
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %interleaved.vec27.1 = shufflevector <2 x i32> %broadcast.splat26, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec27.1, ptr %i.ci, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  store <4 x i32> %interleaved.vec27.1, ptr %i.cj, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  %i.ck = icmp eq i64 %n.vec22, 8
  br i1 %i.ck, label %middle.block30, label %vector.body23.2

vector.body23.2:                                  ; preds = %vector.body23.1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %interleaved.vec27.2 = shufflevector <2 x i32> %broadcast.splat26, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec27.2, ptr %i.cl, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  store <4 x i32> %interleaved.vec27.2, ptr %i.cm, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  %i.cn = icmp eq i64 %n.vec22, 12
  br i1 %i.cn, label %middle.block30, label %vector.body23.3

vector.body23.3:                                  ; preds = %vector.body23.2
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cb, i64 112
  %interleaved.vec27.3 = shufflevector <2 x i32> %broadcast.splat26, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec27.3, ptr %i.co, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  store <4 x i32> %interleaved.vec27.3, ptr %i.cp, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  %i.cq = icmp eq i64 %n.vec22, 16
  br i1 %i.cq, label %middle.block30, label %vector.body23.4

vector.body23.4:                                  ; preds = %vector.body23.3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 128
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 144
  %interleaved.vec27.4 = shufflevector <2 x i32> %broadcast.splat26, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec27.4, ptr %i.cr, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  store <4 x i32> %interleaved.vec27.4, ptr %i.cs, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  %i.ct = icmp eq i64 %n.vec22, 20
  br i1 %i.ct, label %middle.block30, label %vector.body23.5

vector.body23.5:                                  ; preds = %vector.body23.4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cb, i64 160
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cb, i64 176
  %interleaved.vec27.5 = shufflevector <2 x i32> %broadcast.splat26, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec27.5, ptr %i.cu, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  store <4 x i32> %interleaved.vec27.5, ptr %i.cv, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  %i.cw = icmp eq i64 %n.vec22, 24
  br i1 %i.cw, label %middle.block30, label %vector.body23.6

vector.body23.6:                                  ; preds = %vector.body23.5
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 192
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 208
  %interleaved.vec27.6 = shufflevector <2 x i32> %broadcast.splat26, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec27.6, ptr %i.cx, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  store <4 x i32> %interleaved.vec27.6, ptr %i.cy, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  %i.cz = icmp eq i64 %n.vec22, 28
  br i1 %i.cz, label %middle.block30, label %vector.body23.7

vector.body23.7:                                  ; preds = %vector.body23.6
  %i.da = getelementptr inbounds nuw i8, ptr %i.cb, i64 224
  %i.db = getelementptr inbounds nuw i8, ptr %i.cb, i64 240
  %interleaved.vec27.7 = shufflevector <2 x i32> %broadcast.splat26, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec27.7, ptr %i.da, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  store <4 x i32> %interleaved.vec27.7, ptr %i.db, align 4, !tbaa !167, !alias.scope !511, !noalias !512
  br label %middle.block30

middle.block30:                                   ; preds = %vector.body23.7, %vector.body23.6, %vector.body23.5, %vector.body23.4, %vector.body23.3, %vector.body23.2, %vector.body23.1, %vector.ph21
  %cmp.n31 = icmp eq i64 %i.bz, %n.vec22
  br i1 %cmp.n31, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader33

.lr.ph.i.i.i.i.preheader33:                       ; preds = %vector.memcheck17, %.lr.ph.i.i.i.i.preheader, %middle.block30
  %.07.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck17 ], [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec22, %middle.block30 ] ; 3 uses
  %xtraiter35 = and i64 %i.bz, 3                  ; 2 uses
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.prol
  %.07.i.i.i.i.prol = phi i64 [ %i.df, %.lr.ph.i.i.i.i.prol ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ] ; 2 uses
  %prol.iter37 = phi i64 [ %prol.iter37.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader33 ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.07.i.i.i.i.prol ; 2 uses
  %i.dd = load i32, ptr %i.cc, align 8, !tbaa !167
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !167
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 0, ptr %i.de, align 4, !tbaa !167
  %i.df = add nuw nsw i64 %.07.i.i.i.i.prol, 1    ; 2 uses
  %prol.iter37.next = add i64 %prol.iter37, 1     ; 2 uses
  %prol.iter37.cmp.not = icmp eq i64 %prol.iter37.next, %xtraiter35
  br i1 %prol.iter37.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !507

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader33
  %.07.i.i.i.i.unr = phi i64 [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ], [ %i.df, %.lr.ph.i.i.i.i.prol ]
  %i.dg = sub nsw i64 %.07.i.i.i.i.ph, %i.bz
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi i64 [ %i.dx, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.07.i.i.i.i ; 2 uses
  %i.dj = load i32, ptr %i.cc, align 8, !tbaa !167
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !167
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 0, ptr %i.dk, align 4, !tbaa !167
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.07.i.i.i.i ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.cc, align 8, !tbaa !167
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !167
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !167
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.07.i.i.i.i ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load i32, ptr %i.cc, align 8, !tbaa !167
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !167
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  store i32 0, ptr %i.ds, align 4, !tbaa !167
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.07.i.i.i.i ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load i32, ptr %i.cc, align 8, !tbaa !167
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !167
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  store i32 0, ptr %i.dw, align 4, !tbaa !167
  %i.dx = add nuw nsw i64 %.07.i.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.dx, %i.bz
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !508

_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block30, %bb.g, %bb.f
  store i64 0, ptr %i.bv, align 8, !tbaa !200
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !161 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !202
  %.not.i.i6.i = icmp eq ptr %i.eb, %i.dz
  br i1 %.not.i.i6.i, label %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !202
  br label %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit

_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i, %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEEixERKj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !196  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %1, align 4, !tbaa !167    ; 3 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !167  ; 2 uses
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 3 uses
  %i.m = zext i32 %i.i to i64
  %i.n = and i64 %i.l, %i.m
  %i.o = load ptr, ptr %0, align 8, !tbaa !153
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.01832.i.i = phi i64 [ 0, %bb.d ], [ %i.t, %bb.g ]
  %.01931.i.i = phi i64 [ %i.n, %bb.d ], [ %i.v, %bb.g ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.01931.i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !167  ; 2 uses
  %i.r = icmp eq i32 %i.q, %i.i
  br i1 %i.r, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq i32 %i.q, %i.j
  br i1 %i.s, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add i64 %.01832.i.i, 1                   ; 3 uses
  %i.u = add i64 %i.t, %.01931.i.i
  %i.v = and i64 %i.u, %i.l
  %.not.i.i = icmp ugt i64 %i.t, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !15

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(30) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !197
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit
end_hunk_2
begin_hunk_3_@_ZN4Luau7CodeGen14ConstPropState14invalidateHeapEv:bb.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !194
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.f = load i64, ptr %i.e, align 8, !tbaa !195  ; 6 uses
  %i.g = icmp ugt i64 %i.f, 32
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !154  ; 10 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef %i.h) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %.pre.i.i.i = load i32, ptr %i.i, align 8, !tbaa !167 ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.f, 56                       ; 5 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.h, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat, ptr %i.j, align 4, !tbaa !167
  %i.k = icmp eq i64 %n.vec, 8
  br i1 %i.k, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store <4 x i32> %broadcast.splat, ptr %i.l, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat, ptr %i.m, align 4, !tbaa !167
  %i.n = icmp eq i64 %n.vec, 16
  br i1 %i.n, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store <4 x i32> %broadcast.splat, ptr %i.o, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat, ptr %i.p, align 4, !tbaa !167
  %i.q = icmp eq i64 %n.vec, 24
  br i1 %i.q, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store <4 x i32> %broadcast.splat, ptr %i.r, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat, ptr %i.s, align 4, !tbaa !167
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.05.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.05.i.i.i
  store i32 %.pre.i.i.i, ptr %i.t, align 4, !tbaa !167
  %i.u = add nuw nsw i64 %.05.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.u, %i.f
  br i1 %exitcond.not.i.i.i, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !554

_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.d, %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !194
  br label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit

_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit: ; preds = %bb.a, %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3616 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3632 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !194
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit8, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !195 ; 6 uses
  %i.ab = icmp ugt i64 %i.aa, 32
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !154 ; 10 uses
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef %i.ac) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i7

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i1, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i7, label %.lr.ph.preheader.i.i.i2

.lr.ph.preheader.i.i.i2:                          ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %.pre.i.i.i3 = load i32, ptr %i.ad, align 8, !tbaa !167 ; 2 uses
  %min.iters.check23 = icmp ult i64 %i.aa, 8
  br i1 %min.iters.check23, label %.lr.ph.i.i.i4.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph.preheader.i.i.i2
  %n.vec25 = and i64 %i.aa, 56                    ; 5 uses
  %broadcast.splatinsert26 = insertelement <4 x i32> poison, i32 %.pre.i.i.i3, i64 0
  %broadcast.splat27 = shufflevector <4 x i32> %broadcast.splatinsert26, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x i32> %broadcast.splat27, ptr %i.ac, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat27, ptr %i.ae, align 4, !tbaa !167
  %i.af = icmp eq i64 %n.vec25, 8
  br i1 %i.af, label %middle.block31, label %vector.body28.1

vector.body28.1:                                  ; preds = %vector.ph24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store <4 x i32> %broadcast.splat27, ptr %i.ag, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat27, ptr %i.ah, align 4, !tbaa !167
  %i.ai = icmp eq i64 %n.vec25, 16
  br i1 %i.ai, label %middle.block31, label %vector.body28.2

vector.body28.2:                                  ; preds = %vector.body28.1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store <4 x i32> %broadcast.splat27, ptr %i.aj, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat27, ptr %i.ak, align 4, !tbaa !167
  %i.al = icmp eq i64 %n.vec25, 24
  br i1 %i.al, label %middle.block31, label %vector.body28.3

vector.body28.3:                                  ; preds = %vector.body28.2
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  store <4 x i32> %broadcast.splat27, ptr %i.am, align 4, !tbaa !167
  store <4 x i32> %broadcast.splat27, ptr %i.an, align 4, !tbaa !167
  br label %middle.block31

middle.block31:                                   ; preds = %vector.body28.3, %vector.body28.2, %vector.body28.1, %vector.ph24
  %cmp.n32 = icmp eq i64 %i.aa, %n.vec25
  br i1 %cmp.n32, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i7, label %.lr.ph.i.i.i4.preheader

.lr.ph.i.i.i4.preheader:                          ; preds = %.lr.ph.preheader.i.i.i2, %middle.block31
  %.05.i.i.i5.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i2 ], [ %n.vec25, %middle.block31 ]
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4.preheader, %.lr.ph.i.i.i4
  %.05.i.i.i5 = phi i64 [ %i.ap, %.lr.ph.i.i.i4 ], [ %.05.i.i.i5.ph, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.05.i.i.i5
  store i32 %.pre.i.i.i3, ptr %i.ao, align 4, !tbaa !167
  %i.ap = add nuw nsw i64 %.05.i.i.i5, 1          ; 2 uses
  %exitcond.not.i.i.i6 = icmp eq i64 %i.ap, %i.aa
  br i1 %exitcond.not.i.i.i6, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i7, label %.lr.ph.i.i.i4, !llvm.loop !555

_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i7: ; preds = %.lr.ph.i.i.i4, %middle.block31, %bb.g, %bb.f
  store i64 0, ptr %i.w, align 8, !tbaa !194
  br label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit8

_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit8: ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit, %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3648 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3664 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !196
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %i.av = load i64, ptr %i.au, align 8, !tbaa !197 ; 9 uses
  %i.aw = icmp ugt i64 %i.av, 32
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !153 ; 24 uses
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef %i.ax) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3672 ; 7 uses
  %.not.i.i.i9 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i9, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i10.preheader

.lr.ph.i.i.i10.preheader:                         ; preds = %bb.j
  %min.iters.check36 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check36, label %.lr.ph.i.i.i10.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i10.preheader
  %i.az = shl nuw nsw i64 %i.av, 3
  %i.ba = getelementptr i8, ptr %i.ax, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 3676
  %bound0 = icmp ult ptr %i.ax, %i.bb
  %bound1 = icmp ult ptr %i.ay, %i.ba
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i10.preheader72, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck
  %n.vec38 = and i64 %i.av, 60                    ; 9 uses
  %1 = load <4 x i32>, ptr %i.ay, align 8
  %broadcast.splat42 = shufflevector <4 x i32> %1, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec, ptr %i.ax, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  store <4 x i32> %interleaved.vec, ptr %i.bc, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  %i.bd = icmp eq i64 %n.vec38, 4
  br i1 %i.bd, label %middle.block45, label %vector.body39.1

vector.body39.1:                                  ; preds = %vector.ph37
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %interleaved.vec.1 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.1, ptr %i.be, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  store <4 x i32> %interleaved.vec.1, ptr %i.bf, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  %i.bg = icmp eq i64 %n.vec38, 8
  br i1 %i.bg, label %middle.block45, label %vector.body39.2

vector.body39.2:                                  ; preds = %vector.body39.1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %interleaved.vec.2 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.2, ptr %i.bh, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  store <4 x i32> %interleaved.vec.2, ptr %i.bi, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  %i.bj = icmp eq i64 %n.vec38, 12
  br i1 %i.bj, label %middle.block45, label %vector.body39.3

vector.body39.3:                                  ; preds = %vector.body39.2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %interleaved.vec.3 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.3, ptr %i.bk, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  store <4 x i32> %interleaved.vec.3, ptr %i.bl, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  %i.bm = icmp eq i64 %n.vec38, 16
  br i1 %i.bm, label %middle.block45, label %vector.body39.4

vector.body39.4:                                  ; preds = %vector.body39.3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %interleaved.vec.4 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.4, ptr %i.bn, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  store <4 x i32> %interleaved.vec.4, ptr %i.bo, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  %i.bp = icmp eq i64 %n.vec38, 20
  br i1 %i.bp, label %middle.block45, label %vector.body39.5

vector.body39.5:                                  ; preds = %vector.body39.4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 176
  %interleaved.vec.5 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.5, ptr %i.bq, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  store <4 x i32> %interleaved.vec.5, ptr %i.br, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  %i.bs = icmp eq i64 %n.vec38, 24
  br i1 %i.bs, label %middle.block45, label %vector.body39.6

vector.body39.6:                                  ; preds = %vector.body39.5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  %interleaved.vec.6 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.6, ptr %i.bt, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  store <4 x i32> %interleaved.vec.6, ptr %i.bu, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  %i.bv = icmp eq i64 %n.vec38, 28
  br i1 %i.bv, label %middle.block45, label %vector.body39.7

vector.body39.7:                                  ; preds = %vector.body39.6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 224
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 240
  %interleaved.vec.7 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.7, ptr %i.bw, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  store <4 x i32> %interleaved.vec.7, ptr %i.bx, align 4, !tbaa !167, !alias.scope !566, !noalias !567
  br label %middle.block45

middle.block45:                                   ; preds = %vector.body39.7, %vector.body39.6, %vector.body39.5, %vector.body39.4, %vector.body39.3, %vector.body39.2, %vector.body39.1, %vector.ph37
  %cmp.n46 = icmp eq i64 %i.av, %n.vec38
  br i1 %cmp.n46, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i10.preheader72

.lr.ph.i.i.i10.preheader72:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i10.preheader, %middle.block45
  %.07.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i10.preheader ], [ %n.vec38, %middle.block45 ] ; 3 uses
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol

.lr.ph.i.i.i10.prol:                              ; preds = %.lr.ph.i.i.i10.preheader72, %.lr.ph.i.i.i10.prol
  %.07.i.i.i.prol = phi i64 [ %i.cb, %.lr.ph.i.i.i10.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i10.preheader72 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i10.prol ], [ 0, %.lr.ph.i.i.i10.preheader72 ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.07.i.i.i.prol ; 2 uses
  %i.bz = load i32, ptr %i.ay, align 8, !tbaa !167
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !167
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 0, ptr %i.ca, align 4, !tbaa !167
  %i.cb = add nuw nsw i64 %.07.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol, !llvm.loop !559

.lr.ph.i.i.i10.prol.loopexit:                     ; preds = %.lr.ph.i.i.i10.prol, %.lr.ph.i.i.i10.preheader72
  %.07.i.i.i.unr = phi i64 [ %.07.i.i.i.ph, %.lr.ph.i.i.i10.preheader72 ], [ %i.cb, %.lr.ph.i.i.i10.prol ]
  %i.cc = sub nsw i64 %.07.i.i.i.ph, %i.av
  %i.cd = icmp ugt i64 %i.cc, -4
  br i1 %i.cd, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10
  %.07.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i10 ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 5 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.07.i.i.i ; 2 uses
  %i.cf = load i32, ptr %i.ay, align 8, !tbaa !167
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !167
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i32 0, ptr %i.cg, align 4, !tbaa !167
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.07.i.i.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ay, align 8, !tbaa !167
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !167
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !167
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.07.i.i.i ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i32, ptr %i.ay, align 8, !tbaa !167
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !167
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  store i32 0, ptr %i.co, align 4, !tbaa !167
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.07.i.i.i ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i32, ptr %i.ay, align 8, !tbaa !167
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !167
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 28
  store i32 0, ptr %i.cs, align 4, !tbaa !167
  %i.ct = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i11.3 = icmp eq i64 %i.ct, %i.av
  br i1 %exitcond.not.i.i.i11.3, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i10, !llvm.loop !560

_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10, %middle.block45, %bb.j, %bb.i
  store i64 0, ptr %i.ar, align 8, !tbaa !196
  br label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit8, %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !159 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 3416 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !198
  %.not.i.i.i12 = icmp eq ptr %i.cx, %i.cv
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !198
  br label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !157 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !199
  %.not.i.i1.i = icmp eq ptr %i.db, %i.cz
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !199
  br label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !151 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !172
  %.not.i.i2.i = icmp eq ptr %i.df, %i.dd
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !172
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i

_ZNSt6vectorIjSaIjEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !151 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !172
  %.not.i.i3.i = icmp eq ptr %i.dj, %i.dh
  br i1 %.not.i.i3.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i:     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !172
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i

_ZNSt6vectorIjSaIjEE5clearEv.exit5.i:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !200
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !201 ; 9 uses
  %i.dq = icmp ugt i64 %i.dp, 32
  %i.dr = load ptr, ptr %i.dk, align 8, !tbaa !163 ; 24 uses
  br i1 %i.dq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPv(ptr noundef %i.dr) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dk, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 7 uses
  %.not.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.m
  %min.iters.check54 = icmp ult i64 %i.dp, 8
  br i1 %min.iters.check54, label %.lr.ph.i.i.i.i.preheader71, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dt = shl nuw nsw i64 %i.dp, 3
  %i.du = getelementptr i8, ptr %i.dr, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 3356
  %bound056 = icmp ult ptr %i.dr, %i.dv
  %bound157 = icmp ult ptr %i.ds, %i.du
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %.lr.ph.i.i.i.i.preheader71, label %vector.ph59

vector.ph59:                                      ; preds = %vector.memcheck55
  %n.vec60 = and i64 %i.dp, 60                    ; 9 uses
  %2 = load <4 x i32>, ptr %i.ds, align 8
  %broadcast.splat64 = shufflevector <4 x i32> %2, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %interleaved.vec65 = shufflevector <2 x i32> %broadcast.splat64, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec65, ptr %i.dr, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  store <4 x i32> %interleaved.vec65, ptr %i.dw, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  %i.dx = icmp eq i64 %n.vec60, 4
  br i1 %i.dx, label %middle.block68, label %vector.body61.1

vector.body61.1:                                  ; preds = %vector.ph59
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %interleaved.vec65.1 = shufflevector <2 x i32> %broadcast.splat64, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec65.1, ptr %i.dy, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  store <4 x i32> %interleaved.vec65.1, ptr %i.dz, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  %i.ea = icmp eq i64 %n.vec60, 8
  br i1 %i.ea, label %middle.block68, label %vector.body61.2

vector.body61.2:                                  ; preds = %vector.body61.1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  %interleaved.vec65.2 = shufflevector <2 x i32> %broadcast.splat64, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec65.2, ptr %i.eb, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  store <4 x i32> %interleaved.vec65.2, ptr %i.ec, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  %i.ed = icmp eq i64 %n.vec60, 12
  br i1 %i.ed, label %middle.block68, label %vector.body61.3

vector.body61.3:                                  ; preds = %vector.body61.2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  %interleaved.vec65.3 = shufflevector <2 x i32> %broadcast.splat64, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec65.3, ptr %i.ee, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  store <4 x i32> %interleaved.vec65.3, ptr %i.ef, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  %i.eg = icmp eq i64 %n.vec60, 16
  br i1 %i.eg, label %middle.block68, label %vector.body61.4

vector.body61.4:                                  ; preds = %vector.body61.3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 128
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dr, i64 144
  %interleaved.vec65.4 = shufflevector <2 x i32> %broadcast.splat64, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec65.4, ptr %i.eh, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  store <4 x i32> %interleaved.vec65.4, ptr %i.ei, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  %i.ej = icmp eq i64 %n.vec60, 20
  br i1 %i.ej, label %middle.block68, label %vector.body61.5

vector.body61.5:                                  ; preds = %vector.body61.4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 160
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 176
  %interleaved.vec65.5 = shufflevector <2 x i32> %broadcast.splat64, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec65.5, ptr %i.ek, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  store <4 x i32> %interleaved.vec65.5, ptr %i.el, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  %i.em = icmp eq i64 %n.vec60, 24
  br i1 %i.em, label %middle.block68, label %vector.body61.6

vector.body61.6:                                  ; preds = %vector.body61.5
  %i.en = getelementptr inbounds nuw i8, ptr %i.dr, i64 192
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dr, i64 208
  %interleaved.vec65.6 = shufflevector <2 x i32> %broadcast.splat64, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec65.6, ptr %i.en, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  store <4 x i32> %interleaved.vec65.6, ptr %i.eo, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  %i.ep = icmp eq i64 %n.vec60, 28
  br i1 %i.ep, label %middle.block68, label %vector.body61.7

vector.body61.7:                                  ; preds = %vector.body61.6
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dr, i64 224
  %i.er = getelementptr inbounds nuw i8, ptr %i.dr, i64 240
  %interleaved.vec65.7 = shufflevector <2 x i32> %broadcast.splat64, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec65.7, ptr %i.eq, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  store <4 x i32> %interleaved.vec65.7, ptr %i.er, align 4, !tbaa !167, !alias.scope !568, !noalias !569
  br label %middle.block68

middle.block68:                                   ; preds = %vector.body61.7, %vector.body61.6, %vector.body61.5, %vector.body61.4, %vector.body61.3, %vector.body61.2, %vector.body61.1, %vector.ph59
  %cmp.n69 = icmp eq i64 %i.dp, %n.vec60
  br i1 %cmp.n69, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader71

.lr.ph.i.i.i.i.preheader71:                       ; preds = %vector.memcheck55, %.lr.ph.i.i.i.i.preheader, %middle.block68
  %.07.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck55 ], [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec60, %middle.block68 ] ; 3 uses
  %xtraiter73 = and i64 %i.dp, 3                  ; 2 uses
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader71, %.lr.ph.i.i.i.i.prol
  %.07.i.i.i.i.prol = phi i64 [ %i.ev, %.lr.ph.i.i.i.i.prol ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader71 ] ; 2 uses
  %prol.iter75 = phi i64 [ %prol.iter75.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader71 ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.07.i.i.i.i.prol ; 2 uses
  %i.et = load i32, ptr %i.ds, align 8, !tbaa !167
  store i32 %i.et, ptr %i.es, align 4, !tbaa !167
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 0, ptr %i.eu, align 4, !tbaa !167
  %i.ev = add nuw nsw i64 %.07.i.i.i.i.prol, 1    ; 2 uses
  %prol.iter75.next = add i64 %prol.iter75, 1     ; 2 uses
  %prol.iter75.cmp.not = icmp eq i64 %prol.iter75.next, %xtraiter73
  br i1 %prol.iter75.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !564

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader71
  %.07.i.i.i.i.unr = phi i64 [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader71 ], [ %i.ev, %.lr.ph.i.i.i.i.prol ]
  %i.ew = sub nsw i64 %.07.i.i.i.i.ph, %i.dp
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi i64 [ %i.fn, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.07.i.i.i.i ; 2 uses
  %i.ez = load i32, ptr %i.ds, align 8, !tbaa !167
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !167
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store i32 0, ptr %i.fa, align 4, !tbaa !167
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.07.i.i.i.i ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i32, ptr %i.ds, align 8, !tbaa !167
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !167
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !167
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.07.i.i.i.i ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load i32, ptr %i.ds, align 8, !tbaa !167
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !167
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 20
  store i32 0, ptr %i.fi, align 4, !tbaa !167
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.07.i.i.i.i ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load i32, ptr %i.ds, align 8, !tbaa !167
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !167
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 28
  store i32 0, ptr %i.fm, align 4, !tbaa !167
  %i.fn = add nuw nsw i64 %.07.i.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.fn, %i.dp
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !565

_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block68, %bb.m, %bb.l
  store i64 0, ptr %i.dl, align 8, !tbaa !200
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !161 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !202
  %.not.i.i6.i = icmp eq ptr %i.fr, %i.fp
  br i1 %.not.i.i6.i, label %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !202
  br label %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit

_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i, %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !155 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !203
  %.not.i.i = icmp eq ptr %i.fv, %i.ft
  br i1 %.not.i.i, label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !203
  br label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit: ; preds = %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit, %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !570

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !167  ; 2 uses
  %i.k = load i32, ptr %0, align 4, !tbaa !167
  store i32 %i.k, ptr %i.i, align 4, !tbaa !167
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

end_hunk_3
