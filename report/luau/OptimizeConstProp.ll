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
  %i.o = load i32, ptr %i.l, align 8, !tbaa !158
  store i32 %i.o, ptr %i.n, align 4, !tbaa !158
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i64 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %.07.i.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.l, align 8, !tbaa !158
  store i32 %i.s, ptr %i.r, align 4, !tbaa !158
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %.07.i.i.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.l, align 8, !tbaa !158
  store i32 %i.w, ptr %i.v, align 4, !tbaa !158
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i64 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %.07.i.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !158
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !158
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ac = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  store i64 0, ptr %i.ab, align 4
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !197

_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ac, %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod121 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod121)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.ag, %.lr.ph.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %.07.i.i.i.epil ; 2 uses
  %i.ae = load i32, ptr %i.l, align 8, !tbaa !158
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !158
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ag = add nuw nsw i64 %.07.i.i.i.epil, 1
  store i64 0, ptr %i.af, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !198

_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.d, %bb.c
  store i64 0, ptr %i.e, align 8, !tbaa !195
  br label %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %._crit_edge, %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen12RegisterLinkEE4fillEPSt4pairIjS3_EmRKj.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3136 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3152 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !200
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE5clearEm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.am = load i64, ptr %i.al, align 8, !tbaa !201 ; 5 uses
  %i.an = icmp ugt i64 %i.am, 32
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !139 ; 6 uses
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
  %xtraiter122 = and i64 %i.am, 3                 ; 3 uses
  %i.aq = icmp ult i64 %i.am, 4
  br i1 %i.aq, label %.lr.ph.i.i.i4.epil.preheader, label %.lr.ph.i.i.i4.preheader.new

.lr.ph.i.i.i4.preheader.new:                      ; preds = %.lr.ph.i.i.i4.preheader
  %unroll_iter126 = and i64 %i.am, 60
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4, %.lr.ph.i.i.i4.preheader.new
  %.07.i.i.i5 = phi i64 [ 0, %.lr.ph.i.i.i4.preheader.new ], [ %i.bg, %.lr.ph.i.i.i4 ] ; 5 uses
  %niter127 = phi i64 [ 0, %.lr.ph.i.i.i4.preheader.new ], [ %niter127.next.3, %.lr.ph.i.i.i4 ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.07.i.i.i5 ; 2 uses
  %i.as = load i32, ptr %i.ap, align 8, !tbaa !158
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !158
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i8 0, ptr %i.at, align 4, !tbaa !30
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.07.i.i.i5 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.ap, align 8, !tbaa !158
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !158
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i8 0, ptr %i.ax, align 4, !tbaa !30
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.07.i.i.i5 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i32, ptr %i.ap, align 8, !tbaa !158
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !158
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  store i8 0, ptr %i.bb, align 4, !tbaa !30
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.07.i.i.i5 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load i32, ptr %i.ap, align 8, !tbaa !158
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !158
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  store i8 0, ptr %i.bf, align 4, !tbaa !30
  %i.bg = add nuw nsw i64 %.07.i.i.i5, 4          ; 2 uses
  %niter127.next.3 = add nuw nsw i64 %niter127, 4 ; 2 uses
  %niter127.ncmp.3 = icmp eq i64 %niter127.next.3, %unroll_iter126
  br i1 %niter127.ncmp.3, label %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i4, !llvm.loop !202

_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i4
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod124.not, label %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i, label %.lr.ph.i.i.i4.epil.preheader

.lr.ph.i.i.i4.epil.preheader:                     ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i4.preheader
  %.07.i.i.i5.epil.init = phi i64 [ 0, %.lr.ph.i.i.i4.preheader ], [ %i.bg, %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod125 = icmp ne i64 %xtraiter122, 0
  tail call void @llvm.assume(i1 %lcmp.mod125)
  br label %.lr.ph.i.i.i4.epil

.lr.ph.i.i.i4.epil:                               ; preds = %.lr.ph.i.i.i4.epil, %.lr.ph.i.i.i4.epil.preheader
  %.07.i.i.i5.epil = phi i64 [ %i.bk, %.lr.ph.i.i.i4.epil ], [ %.07.i.i.i5.epil.init, %.lr.ph.i.i.i4.epil.preheader ] ; 2 uses
  %epil.iter123 = phi i64 [ %epil.iter123.next, %.lr.ph.i.i.i4.epil ], [ 0, %.lr.ph.i.i.i4.epil.preheader ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.07.i.i.i5.epil ; 2 uses
  %i.bi = load i32, ptr %i.ap, align 8, !tbaa !158
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !158
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i8 0, ptr %i.bj, align 4, !tbaa !30
  %i.bk = add nuw nsw i64 %.07.i.i.i5.epil, 1
  %epil.iter123.next = add i64 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i64 %epil.iter123.next, %xtraiter122
  br i1 %epil.iter123.cmp.not, label %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i, label %.lr.ph.i.i.i4.epil, !llvm.loop !203

_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i4.epil, %bb.g, %bb.f
  store i64 0, ptr %i.ai, align 8, !tbaa !200
  br label %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE5clearEm.exit, %_ZN4Luau6detail16ItemInterfaceMapIjhE4fillEPSt4pairIjhEmRKj.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3184 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !204
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE5clearEm.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !205 ; 9 uses
  %i.br = icmp ugt i64 %i.bq, 32
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !138 ; 24 uses
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
  br i1 %min.iters.check, label %.lr.ph.i.i.i8.preheader120, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i8.preheader
  %i.bu = shl nuw nsw i64 %i.bq, 3
  %scevgep = getelementptr i8, ptr %i.bs, i64 %i.bu
  %scevgep52 = getelementptr inbounds nuw i8, ptr %0, i64 3196
  %bound0 = icmp ult ptr %i.bs, %scevgep52
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i8.preheader120, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 60                      ; 9 uses
  %1 = load <4 x i32>, ptr %i.bt, align 8
  %broadcast.splat = shufflevector <4 x i32> %1, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec, ptr %i.bs, align 4, !alias.scope !206, !noalias !209
  store <4 x i32> %interleaved.vec, ptr %i.bv, align 4, !alias.scope !206, !noalias !209
  %i.bw = icmp eq i64 %n.vec, 4
  br i1 %i.bw, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %interleaved.vec.1 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.1, ptr %i.bx, align 4, !alias.scope !206, !noalias !209
  store <4 x i32> %interleaved.vec.1, ptr %i.by, align 4, !alias.scope !206, !noalias !209
  %i.bz = icmp eq i64 %n.vec, 8
  br i1 %i.bz, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %interleaved.vec.2 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.2, ptr %i.ca, align 4, !alias.scope !206, !noalias !209
  store <4 x i32> %interleaved.vec.2, ptr %i.cb, align 4, !alias.scope !206, !noalias !209
  %i.cc = icmp eq i64 %n.vec, 12
  br i1 %i.cc, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  %interleaved.vec.3 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.3, ptr %i.cd, align 4, !alias.scope !206, !noalias !209
  store <4 x i32> %interleaved.vec.3, ptr %i.ce, align 4, !alias.scope !206, !noalias !209
  %i.cf = icmp eq i64 %n.vec, 16
  br i1 %i.cf, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  %interleaved.vec.4 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.4, ptr %i.cg, align 4, !alias.scope !206, !noalias !209
  store <4 x i32> %interleaved.vec.4, ptr %i.ch, align 4, !alias.scope !206, !noalias !209
  %i.ci = icmp eq i64 %n.vec, 20
  br i1 %i.ci, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 176
  %interleaved.vec.5 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.5, ptr %i.cj, align 4, !alias.scope !206, !noalias !209
  store <4 x i32> %interleaved.vec.5, ptr %i.ck, align 4, !alias.scope !206, !noalias !209
  %i.cl = icmp eq i64 %n.vec, 24
  br i1 %i.cl, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bs, i64 192
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bs, i64 208
  %interleaved.vec.6 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.6, ptr %i.cm, align 4, !alias.scope !206, !noalias !209
  store <4 x i32> %interleaved.vec.6, ptr %i.cn, align 4, !alias.scope !206, !noalias !209
  %i.co = icmp eq i64 %n.vec, 28
  br i1 %i.co, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bs, i64 224
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bs, i64 240
  %interleaved.vec.7 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.7, ptr %i.cp, align 4, !alias.scope !206, !noalias !209
  store <4 x i32> %interleaved.vec.7, ptr %i.cq, align 4, !alias.scope !206, !noalias !209
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8.preheader120

.lr.ph.i.i.i8.preheader120:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i8.preheader, %middle.block
  %.07.i.i.i9.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i8.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter128 = and i64 %i.bq, 3                 ; 2 uses
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph.i.i.i8.prol.loopexit, label %.lr.ph.i.i.i8.prol

.lr.ph.i.i.i8.prol:                               ; preds = %.lr.ph.i.i.i8.preheader120, %.lr.ph.i.i.i8.prol
  %.07.i.i.i9.prol = phi i64 [ %i.cu, %.lr.ph.i.i.i8.prol ], [ %.07.i.i.i9.ph, %.lr.ph.i.i.i8.preheader120 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i8.prol ], [ 0, %.lr.ph.i.i.i8.preheader120 ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.07.i.i.i9.prol ; 2 uses
  %i.cs = load i32, ptr %i.bt, align 8, !tbaa !158
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !158
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 0, ptr %i.ct, align 4
  %i.cu = add nuw nsw i64 %.07.i.i.i9.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter128
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i8.prol.loopexit, label %.lr.ph.i.i.i8.prol, !llvm.loop !211

.lr.ph.i.i.i8.prol.loopexit:                      ; preds = %.lr.ph.i.i.i8.prol, %.lr.ph.i.i.i8.preheader120
  %.07.i.i.i9.unr = phi i64 [ %.07.i.i.i9.ph, %.lr.ph.i.i.i8.preheader120 ], [ %i.cu, %.lr.ph.i.i.i8.prol ]
  %i.cv = sub nsw i64 %.07.i.i.i9.ph, %i.bq
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %.lr.ph.i.i.i8.prol.loopexit, %.lr.ph.i.i.i8
  %.07.i.i.i9 = phi i64 [ %i.dm, %.lr.ph.i.i.i8 ], [ %.07.i.i.i9.unr, %.lr.ph.i.i.i8.prol.loopexit ] ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.07.i.i.i9 ; 2 uses
  %i.cy = load i32, ptr %i.bt, align 8, !tbaa !158
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !158
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 0, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.07.i.i.i9 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.bt, align 8, !tbaa !158
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !158
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.07.i.i.i9 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load i32, ptr %i.bt, align 8, !tbaa !158
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !158
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store i32 0, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.07.i.i.i9 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load i32, ptr %i.bt, align 8, !tbaa !158
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !158
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  store i32 0, ptr %i.dl, align 4
  %i.dm = add nuw nsw i64 %.07.i.i.i9, 4          ; 2 uses
  %exitcond.not.i.i.i10.3 = icmp eq i64 %i.dm, %i.bq
  br i1 %exitcond.not.i.i.i10.3, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8, !llvm.loop !212

_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i8.prol.loopexit, %.lr.ph.i.i.i8, %middle.block, %bb.j, %bb.i
  store i64 0, ptr %i.bm, align 8, !tbaa !204
  br label %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE5clearEm.exit, %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 3576
  store i32 -1, ptr %i.dn, align 8, !tbaa !135
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 3584 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 3600 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !213
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !214 ; 6 uses
  %i.du = icmp ugt i64 %i.dt, 32
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !144 ; 10 uses
  br i1 %i.du, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPv(ptr noundef %i.dv) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i

bb.m:                                             ; preds = %bb.k
  %.not.i.i.i11 = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i.i11, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.m
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %.pre.i.i.i = load i32, ptr %i.dw, align 8, !tbaa !158 ; 2 uses
  %min.iters.check55 = icmp ult i64 %i.dt, 8
  br i1 %min.iters.check55, label %.lr.ph.i.i.i12.preheader, label %vector.ph56

vector.ph56:                                      ; preds = %.lr.ph.preheader.i.i.i
  %n.vec57 = and i64 %i.dt, 56                    ; 5 uses
  %broadcast.splatinsert58 = insertelement <4 x i32> poison, i32 %.pre.i.i.i, i64 0
  %broadcast.splat59 = shufflevector <4 x i32> %broadcast.splatinsert58, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <4 x i32> %broadcast.splat59, ptr %i.dv, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat59, ptr %i.dx, align 4, !tbaa !158
  %i.dy = icmp eq i64 %n.vec57, 8
  br i1 %i.dy, label %middle.block63, label %vector.body60.1

vector.body60.1:                                  ; preds = %vector.ph56
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  store <4 x i32> %broadcast.splat59, ptr %i.dz, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat59, ptr %i.ea, align 4, !tbaa !158
  %i.eb = icmp eq i64 %n.vec57, 16
  br i1 %i.eb, label %middle.block63, label %vector.body60.2

vector.body60.2:                                  ; preds = %vector.body60.1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  store <4 x i32> %broadcast.splat59, ptr %i.ec, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat59, ptr %i.ed, align 4, !tbaa !158
  %i.ee = icmp eq i64 %n.vec57, 24
  br i1 %i.ee, label %middle.block63, label %vector.body60.3

vector.body60.3:                                  ; preds = %vector.body60.2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 112
  store <4 x i32> %broadcast.splat59, ptr %i.ef, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat59, ptr %i.eg, align 4, !tbaa !158
  br label %middle.block63

middle.block63:                                   ; preds = %vector.body60.3, %vector.body60.2, %vector.body60.1, %vector.ph56
  %cmp.n64 = icmp eq i64 %i.dt, %n.vec57
  br i1 %cmp.n64, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i, label %.lr.ph.i.i.i12.preheader

.lr.ph.i.i.i12.preheader:                         ; preds = %.lr.ph.preheader.i.i.i, %middle.block63
  %.05.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec57, %middle.block63 ]
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12.preheader, %.lr.ph.i.i.i12
  %.05.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i12 ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i12.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.05.i.i.i
  store i32 %.pre.i.i.i, ptr %i.eh, align 4, !tbaa !158
  %i.ei = add nuw nsw i64 %.05.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i13 = icmp eq i64 %i.ei, %i.dt
  br i1 %exitcond.not.i.i.i13, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i, label %.lr.ph.i.i.i12, !llvm.loop !215

_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i12, %middle.block63, %bb.m, %bb.l
  store i64 0, ptr %i.dp, align 8, !tbaa !213
  br label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit

_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit: ; preds = %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit, %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 3616 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 3632 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !213
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit21, label %bb.n

bb.n:                                             ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !214 ; 6 uses
  %i.ep = icmp ugt i64 %i.eo, 32
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !144 ; 10 uses
  br i1 %i.ep, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdlPv(ptr noundef %i.eq) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i20

bb.p:                                             ; preds = %bb.n
  %.not.i.i.i14 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i.i14, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i20, label %.lr.ph.preheader.i.i.i15

.lr.ph.preheader.i.i.i15:                         ; preds = %bb.p
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %.pre.i.i.i16 = load i32, ptr %i.er, align 8, !tbaa !158 ; 2 uses
  %min.iters.check67 = icmp ult i64 %i.eo, 8
  br i1 %min.iters.check67, label %.lr.ph.i.i.i17.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %.lr.ph.preheader.i.i.i15
  %n.vec69 = and i64 %i.eo, 56                    ; 5 uses
  %broadcast.splatinsert70 = insertelement <4 x i32> poison, i32 %.pre.i.i.i16, i64 0
  %broadcast.splat71 = shufflevector <4 x i32> %broadcast.splatinsert70, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> %broadcast.splat71, ptr %i.eq, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat71, ptr %i.es, align 4, !tbaa !158
  %i.et = icmp eq i64 %n.vec69, 8
  br i1 %i.et, label %middle.block75, label %vector.body72.1

vector.body72.1:                                  ; preds = %vector.ph68
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  store <4 x i32> %broadcast.splat71, ptr %i.eu, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat71, ptr %i.ev, align 4, !tbaa !158
  %i.ew = icmp eq i64 %n.vec69, 16
  br i1 %i.ew, label %middle.block75, label %vector.body72.2

vector.body72.2:                                  ; preds = %vector.body72.1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 80
  store <4 x i32> %broadcast.splat71, ptr %i.ex, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat71, ptr %i.ey, align 4, !tbaa !158
  %i.ez = icmp eq i64 %n.vec69, 24
  br i1 %i.ez, label %middle.block75, label %vector.body72.3

vector.body72.3:                                  ; preds = %vector.body72.2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 112
  store <4 x i32> %broadcast.splat71, ptr %i.fa, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat71, ptr %i.fb, align 4, !tbaa !158
  br label %middle.block75

middle.block75:                                   ; preds = %vector.body72.3, %vector.body72.2, %vector.body72.1, %vector.ph68
  %cmp.n76 = icmp eq i64 %i.eo, %n.vec69
  br i1 %cmp.n76, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i20, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %.lr.ph.preheader.i.i.i15, %middle.block75
  %.05.i.i.i18.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i15 ], [ %n.vec69, %middle.block75 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17
  %.05.i.i.i18 = phi i64 [ %i.fd, %.lr.ph.i.i.i17 ], [ %.05.i.i.i18.ph, %.lr.ph.i.i.i17.preheader ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.05.i.i.i18
  store i32 %.pre.i.i.i16, ptr %i.fc, align 4, !tbaa !158
  %i.fd = add nuw nsw i64 %.05.i.i.i18, 1         ; 2 uses
  %exitcond.not.i.i.i19 = icmp eq i64 %i.fd, %i.eo
  br i1 %exitcond.not.i.i.i19, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i20, label %.lr.ph.i.i.i17, !llvm.loop !216

_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i20: ; preds = %.lr.ph.i.i.i17, %middle.block75, %bb.p, %bb.o
  store i64 0, ptr %i.ek, align 8, !tbaa !213
  br label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit21

_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit21: ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit, %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i20
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 3648 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 3664 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !217
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit21
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !218 ; 9 uses
  %i.fk = icmp ugt i64 %i.fj, 32
  %i.fl = load ptr, ptr %i.fe, align 8, !tbaa !143 ; 24 uses
  br i1 %i.fk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdlPv(ptr noundef %i.fl) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fe, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 3672 ; 7 uses
  %.not.i.i.i22 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i.i22, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i23.preheader

.lr.ph.i.i.i23.preheader:                         ; preds = %bb.s
  %min.iters.check85 = icmp ult i64 %i.fj, 8
  br i1 %min.iters.check85, label %.lr.ph.i.i.i23.preheader119, label %vector.memcheck78

vector.memcheck78:                                ; preds = %.lr.ph.i.i.i23.preheader
  %i.fn = shl nuw nsw i64 %i.fj, 3
  %scevgep79 = getelementptr i8, ptr %i.fl, i64 %i.fn
  %scevgep80 = getelementptr inbounds nuw i8, ptr %0, i64 3676
  %bound081 = icmp ult ptr %i.fl, %scevgep80
  %bound182 = icmp ult ptr %i.fm, %scevgep79
  %found.conflict83 = and i1 %bound081, %bound182
  br i1 %found.conflict83, label %.lr.ph.i.i.i23.preheader119, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck78
  %n.vec87 = and i64 %i.fj, 60                    ; 9 uses
  %2 = load <4 x i32>, ptr %i.fm, align 8
  %broadcast.splat91 = shufflevector <4 x i32> %2, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %interleaved.vec92 = shufflevector <2 x i32> %broadcast.splat91, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec92, ptr %i.fl, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  store <4 x i32> %interleaved.vec92, ptr %i.fo, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  %i.fp = icmp eq i64 %n.vec87, 4
  br i1 %i.fp, label %middle.block95, label %vector.body88.1

vector.body88.1:                                  ; preds = %vector.ph86
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %interleaved.vec92.1 = shufflevector <2 x i32> %broadcast.splat91, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec92.1, ptr %i.fq, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  store <4 x i32> %interleaved.vec92.1, ptr %i.fr, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  %i.fs = icmp eq i64 %n.vec87, 8
  br i1 %i.fs, label %middle.block95, label %vector.body88.2

vector.body88.2:                                  ; preds = %vector.body88.1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 80
  %interleaved.vec92.2 = shufflevector <2 x i32> %broadcast.splat91, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec92.2, ptr %i.ft, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  store <4 x i32> %interleaved.vec92.2, ptr %i.fu, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  %i.fv = icmp eq i64 %n.vec87, 12
  br i1 %i.fv, label %middle.block95, label %vector.body88.3

vector.body88.3:                                  ; preds = %vector.body88.2
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fl, i64 96
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fl, i64 112
  %interleaved.vec92.3 = shufflevector <2 x i32> %broadcast.splat91, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec92.3, ptr %i.fw, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  store <4 x i32> %interleaved.vec92.3, ptr %i.fx, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  %i.fy = icmp eq i64 %n.vec87, 16
  br i1 %i.fy, label %middle.block95, label %vector.body88.4

vector.body88.4:                                  ; preds = %vector.body88.3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 128
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 144
  %interleaved.vec92.4 = shufflevector <2 x i32> %broadcast.splat91, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec92.4, ptr %i.fz, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  store <4 x i32> %interleaved.vec92.4, ptr %i.ga, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  %i.gb = icmp eq i64 %n.vec87, 20
  br i1 %i.gb, label %middle.block95, label %vector.body88.5

vector.body88.5:                                  ; preds = %vector.body88.4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fl, i64 160
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fl, i64 176
  %interleaved.vec92.5 = shufflevector <2 x i32> %broadcast.splat91, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec92.5, ptr %i.gc, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  store <4 x i32> %interleaved.vec92.5, ptr %i.gd, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  %i.ge = icmp eq i64 %n.vec87, 24
  br i1 %i.ge, label %middle.block95, label %vector.body88.6

vector.body88.6:                                  ; preds = %vector.body88.5
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fl, i64 192
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 208
  %interleaved.vec92.6 = shufflevector <2 x i32> %broadcast.splat91, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec92.6, ptr %i.gf, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  store <4 x i32> %interleaved.vec92.6, ptr %i.gg, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  %i.gh = icmp eq i64 %n.vec87, 28
  br i1 %i.gh, label %middle.block95, label %vector.body88.7

vector.body88.7:                                  ; preds = %vector.body88.6
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fl, i64 224
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fl, i64 240
  %interleaved.vec92.7 = shufflevector <2 x i32> %broadcast.splat91, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec92.7, ptr %i.gi, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  store <4 x i32> %interleaved.vec92.7, ptr %i.gj, align 4, !tbaa !158, !alias.scope !219, !noalias !222
  br label %middle.block95

middle.block95:                                   ; preds = %vector.body88.7, %vector.body88.6, %vector.body88.5, %vector.body88.4, %vector.body88.3, %vector.body88.2, %vector.body88.1, %vector.ph86
  %cmp.n96 = icmp eq i64 %i.fj, %n.vec87
  br i1 %cmp.n96, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i23.preheader119

.lr.ph.i.i.i23.preheader119:                      ; preds = %vector.memcheck78, %.lr.ph.i.i.i23.preheader, %middle.block95
  %.07.i.i.i24.ph = phi i64 [ 0, %vector.memcheck78 ], [ 0, %.lr.ph.i.i.i23.preheader ], [ %n.vec87, %middle.block95 ] ; 3 uses
  %xtraiter130 = and i64 %i.fj, 3                 ; 2 uses
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.lr.ph.i.i.i23.prol.loopexit, label %.lr.ph.i.i.i23.prol

.lr.ph.i.i.i23.prol:                              ; preds = %.lr.ph.i.i.i23.preheader119, %.lr.ph.i.i.i23.prol
  %.07.i.i.i24.prol = phi i64 [ %i.gn, %.lr.ph.i.i.i23.prol ], [ %.07.i.i.i24.ph, %.lr.ph.i.i.i23.preheader119 ] ; 2 uses
  %prol.iter132 = phi i64 [ %prol.iter132.next, %.lr.ph.i.i.i23.prol ], [ 0, %.lr.ph.i.i.i23.preheader119 ]
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.07.i.i.i24.prol ; 2 uses
  %i.gl = load i32, ptr %i.fm, align 8, !tbaa !158
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !158
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store i32 0, ptr %i.gm, align 4, !tbaa !158
  %i.gn = add nuw nsw i64 %.07.i.i.i24.prol, 1    ; 2 uses
  %prol.iter132.next = add i64 %prol.iter132, 1   ; 2 uses
  %prol.iter132.cmp.not = icmp eq i64 %prol.iter132.next, %xtraiter130
  br i1 %prol.iter132.cmp.not, label %.lr.ph.i.i.i23.prol.loopexit, label %.lr.ph.i.i.i23.prol, !llvm.loop !224

.lr.ph.i.i.i23.prol.loopexit:                     ; preds = %.lr.ph.i.i.i23.prol, %.lr.ph.i.i.i23.preheader119
  %.07.i.i.i24.unr = phi i64 [ %.07.i.i.i24.ph, %.lr.ph.i.i.i23.preheader119 ], [ %i.gn, %.lr.ph.i.i.i23.prol ]
  %i.go = sub nsw i64 %.07.i.i.i24.ph, %i.fj
  %i.gp = icmp ugt i64 %i.go, -4
  br i1 %i.gp, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %.lr.ph.i.i.i23.prol.loopexit, %.lr.ph.i.i.i23
  %.07.i.i.i24 = phi i64 [ %i.hf, %.lr.ph.i.i.i23 ], [ %.07.i.i.i24.unr, %.lr.ph.i.i.i23.prol.loopexit ] ; 5 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.07.i.i.i24 ; 2 uses
  %i.gr = load i32, ptr %i.fm, align 8, !tbaa !158
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !158
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i32 0, ptr %i.gs, align 4, !tbaa !158
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.07.i.i.i24 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i32, ptr %i.fm, align 8, !tbaa !158
  store i32 %i.gv, ptr %i.gu, align 4, !tbaa !158
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i32 0, ptr %i.gw, align 4, !tbaa !158
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.07.i.i.i24 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load i32, ptr %i.fm, align 8, !tbaa !158
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !158
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 20
  store i32 0, ptr %i.ha, align 4, !tbaa !158
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.07.i.i.i24 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load i32, ptr %i.fm, align 8, !tbaa !158
  store i32 %i.hd, ptr %i.hc, align 4, !tbaa !158
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 28
  store i32 0, ptr %i.he, align 4, !tbaa !158
  %i.hf = add nuw nsw i64 %.07.i.i.i24, 4         ; 2 uses
  %exitcond.not.i.i.i25.3 = icmp eq i64 %i.hf, %i.fj
  br i1 %exitcond.not.i.i.i25.3, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i23, !llvm.loop !225

_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i23.prol.loopexit, %.lr.ph.i.i.i23, %middle.block95, %bb.s, %bb.r
  store i64 0, ptr %i.ff, align 8, !tbaa !217
  br label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit21, %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i
  tail call void @_ZN4Luau7CodeGen14ConstPropState26invalidateValuePropagationEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !149 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 3416 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !226
  %.not.i.i.i26 = icmp eq ptr %i.hj, %i.hh
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !226
  br label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !147 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !227
  %.not.i.i1.i = icmp eq ptr %i.hn, %i.hl
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !227
  br label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !141 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !170
  %.not.i.i2.i = icmp eq ptr %i.hr, %i.hp
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !170
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i

_ZNSt6vectorIjSaIjEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !141 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !170
  %.not.i.i3.i = icmp eq ptr %i.hv, %i.ht
  br i1 %.not.i.i3.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i:     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !170
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i

_ZNSt6vectorIjSaIjEE5clearEv.exit5.i:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !228
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !229 ; 9 uses
  %i.ic = icmp ugt i64 %i.ib, 32
  %i.id = load ptr, ptr %i.hw, align 8, !tbaa !153 ; 24 uses
  br i1 %i.ic, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_ZdlPv(ptr noundef %i.id) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hw, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 7 uses
  %.not.i.i.i.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.v
  %min.iters.check105 = icmp ult i64 %i.ib, 8
  br i1 %min.iters.check105, label %.lr.ph.i.i.i.i.preheader118, label %vector.memcheck98

vector.memcheck98:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.if = shl nuw nsw i64 %i.ib, 3
  %scevgep99 = getelementptr i8, ptr %i.id, i64 %i.if
  %scevgep100 = getelementptr inbounds nuw i8, ptr %0, i64 3356
  %bound0101 = icmp ult ptr %i.id, %scevgep100
  %bound1102 = icmp ult ptr %i.ie, %scevgep99
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck98
  %n.vec107 = and i64 %i.ib, 60                   ; 9 uses
  %3 = load <4 x i32>, ptr %i.ie, align 8
  %broadcast.splat111 = shufflevector <4 x i32> %3, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %interleaved.vec112 = shufflevector <2 x i32> %broadcast.splat111, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec112, ptr %i.id, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  store <4 x i32> %interleaved.vec112, ptr %i.ig, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  %i.ih = icmp eq i64 %n.vec107, 4
  br i1 %i.ih, label %middle.block115, label %vector.body108.1

vector.body108.1:                                 ; preds = %vector.ph106
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  %interleaved.vec112.1 = shufflevector <2 x i32> %broadcast.splat111, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec112.1, ptr %i.ii, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  store <4 x i32> %interleaved.vec112.1, ptr %i.ij, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  %i.ik = icmp eq i64 %n.vec107, 8
  br i1 %i.ik, label %middle.block115, label %vector.body108.2

vector.body108.2:                                 ; preds = %vector.body108.1
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 64
  %i.im = getelementptr inbounds nuw i8, ptr %i.id, i64 80
  %interleaved.vec112.2 = shufflevector <2 x i32> %broadcast.splat111, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec112.2, ptr %i.il, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  store <4 x i32> %interleaved.vec112.2, ptr %i.im, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  %i.in = icmp eq i64 %n.vec107, 12
  br i1 %i.in, label %middle.block115, label %vector.body108.3

vector.body108.3:                                 ; preds = %vector.body108.2
  %i.io = getelementptr inbounds nuw i8, ptr %i.id, i64 96
  %i.ip = getelementptr inbounds nuw i8, ptr %i.id, i64 112
  %interleaved.vec112.3 = shufflevector <2 x i32> %broadcast.splat111, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec112.3, ptr %i.io, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  store <4 x i32> %interleaved.vec112.3, ptr %i.ip, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  %i.iq = icmp eq i64 %n.vec107, 16
  br i1 %i.iq, label %middle.block115, label %vector.body108.4

vector.body108.4:                                 ; preds = %vector.body108.3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.id, i64 128
  %i.is = getelementptr inbounds nuw i8, ptr %i.id, i64 144
  %interleaved.vec112.4 = shufflevector <2 x i32> %broadcast.splat111, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec112.4, ptr %i.ir, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  store <4 x i32> %interleaved.vec112.4, ptr %i.is, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  %i.it = icmp eq i64 %n.vec107, 20
  br i1 %i.it, label %middle.block115, label %vector.body108.5

vector.body108.5:                                 ; preds = %vector.body108.4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.id, i64 160
  %i.iv = getelementptr inbounds nuw i8, ptr %i.id, i64 176
  %interleaved.vec112.5 = shufflevector <2 x i32> %broadcast.splat111, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec112.5, ptr %i.iu, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  store <4 x i32> %interleaved.vec112.5, ptr %i.iv, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  %i.iw = icmp eq i64 %n.vec107, 24
  br i1 %i.iw, label %middle.block115, label %vector.body108.6

vector.body108.6:                                 ; preds = %vector.body108.5
  %i.ix = getelementptr inbounds nuw i8, ptr %i.id, i64 192
  %i.iy = getelementptr inbounds nuw i8, ptr %i.id, i64 208
  %interleaved.vec112.6 = shufflevector <2 x i32> %broadcast.splat111, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec112.6, ptr %i.ix, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  store <4 x i32> %interleaved.vec112.6, ptr %i.iy, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  %i.iz = icmp eq i64 %n.vec107, 28
  br i1 %i.iz, label %middle.block115, label %vector.body108.7

vector.body108.7:                                 ; preds = %vector.body108.6
  %i.ja = getelementptr inbounds nuw i8, ptr %i.id, i64 224
  %i.jb = getelementptr inbounds nuw i8, ptr %i.id, i64 240
  %interleaved.vec112.7 = shufflevector <2 x i32> %broadcast.splat111, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec112.7, ptr %i.ja, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  store <4 x i32> %interleaved.vec112.7, ptr %i.jb, align 4, !tbaa !158, !alias.scope !230, !noalias !233
  br label %middle.block115

middle.block115:                                  ; preds = %vector.body108.7, %vector.body108.6, %vector.body108.5, %vector.body108.4, %vector.body108.3, %vector.body108.2, %vector.body108.1, %vector.ph106
  %cmp.n116 = icmp eq i64 %i.ib, %n.vec107
  br i1 %cmp.n116, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %vector.memcheck98, %.lr.ph.i.i.i.i.preheader, %middle.block115
  %.07.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck98 ], [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec107, %middle.block115 ] ; 3 uses
  %xtraiter133 = and i64 %i.ib, 3                 ; 2 uses
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i.prol
  %.07.i.i.i.i.prol = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.prol ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %prol.iter135 = phi i64 [ %prol.iter135.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader118 ]
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.07.i.i.i.i.prol ; 2 uses
  %i.jd = load i32, ptr %i.ie, align 8, !tbaa !158
  store i32 %i.jd, ptr %i.jc, align 4, !tbaa !158
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  store i32 0, ptr %i.je, align 4, !tbaa !158
  %i.jf = add nuw nsw i64 %.07.i.i.i.i.prol, 1    ; 2 uses
  %prol.iter135.next = add i64 %prol.iter135, 1   ; 2 uses
  %prol.iter135.cmp.not = icmp eq i64 %prol.iter135.next, %xtraiter133
  br i1 %prol.iter135.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !235

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader118
  %.07.i.i.i.i.unr = phi i64 [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ], [ %i.jf, %.lr.ph.i.i.i.i.prol ]
  %i.jg = sub nsw i64 %.07.i.i.i.i.ph, %i.ib
  %i.jh = icmp ugt i64 %i.jg, -4
  br i1 %i.jh, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi i64 [ %i.jx, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.07.i.i.i.i ; 2 uses
  %i.jj = load i32, ptr %i.ie, align 8, !tbaa !158
  store i32 %i.jj, ptr %i.ji, align 4, !tbaa !158
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  store i32 0, ptr %i.jk, align 4, !tbaa !158
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.07.i.i.i.i ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i32, ptr %i.ie, align 8, !tbaa !158
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !158
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 12
  store i32 0, ptr %i.jo, align 4, !tbaa !158
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.07.i.i.i.i ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load i32, ptr %i.ie, align 8, !tbaa !158
  store i32 %i.jr, ptr %i.jq, align 4, !tbaa !158
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 20
  store i32 0, ptr %i.js, align 4, !tbaa !158
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.07.i.i.i.i ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load i32, ptr %i.ie, align 8, !tbaa !158
  store i32 %i.jv, ptr %i.ju, align 4, !tbaa !158
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 28
  store i32 0, ptr %i.jw, align 4, !tbaa !158
  %i.jx = add nuw nsw i64 %.07.i.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.jx, %i.ib
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !236

_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block115, %bb.v, %bb.u
  store i64 0, ptr %i.hx, align 8, !tbaa !228
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !151 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !237
  %.not.i.i6.i = icmp eq ptr %i.kb, %i.jz
  br i1 %.not.i.i6.i, label %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !237
  br label %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit

_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i, %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 3504
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !141 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 3512 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !170
  %.not.i.i.i27 = icmp eq ptr %i.kf, %i.kd
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i29, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i28

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i28:    ; preds = %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !170
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i29

_ZNSt6vectorIjSaIjEE5clearEv.exit.i29:            ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i28, %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !145 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !238
  %.not.i.i1.i30 = icmp eq ptr %i.kj, %i.kh
  br i1 %.not.i.i1.i30, label %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i29
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !238
  br label %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit

_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i29, %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 3528
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !141 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 3536 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !170
  %.not.i.i.i31 = icmp eq ptr %i.kn, %i.kl
  br i1 %.not.i.i.i31, label %_ZN4Luau7CodeGen14ConstPropState22invalidateUserdataDataEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i32

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i32:    ; preds = %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !170
  br label %_ZN4Luau7CodeGen14ConstPropState22invalidateUserdataDataEv.exit

_ZN4Luau7CodeGen14ConstPropState22invalidateUserdataDataEv.exit: ; preds = %_ZN4Luau7CodeGen14ConstPropState24invalidateHeapBufferDataEv.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i32
  ret void

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %i.ko = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  store i8 -1, ptr %i.ko, align 4, !tbaa !30
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5.0..sroa_idx, i8 0, i64 11, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.kp = load i32, ptr %i.a, align 8, !tbaa !117
  %i.kq = sext i32 %i.kp to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.kq
  br i1 %.not.not, label %bb.w, label %._crit_edge, !llvm.loop !239
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4Luau7CodeGenL20setupBlockEntryStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockERNS0_14ConstPropStateE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(3704) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %5 = alloca %"class.std::function.133", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !103
  %i.c = and i8 %i.b, 4
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZNSt14_Function_baseD2Ev.exit30

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not46 = icmp eq ptr %i.f, %i.g
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 873
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 3104
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 3120
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 3128
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 3112
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 3088 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4Luau7CodeGen14ConstPropState9updateTagENS0_4IrOpEh.exit, %bb.b
  %i.r = ptrtoint ptr %3 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.u, align 8
  store i64 %i.r, ptr %4, align 8, !tbaa !240
  store ptr @"_ZNSt17_Function_handlerIFhmEZN4Luau7CodeGenL20setupBlockEntryStateERNS2_9IrBuilderERNS2_10IrFunctionERNS2_7IrBlockERNS2_14ConstPropStateEE3$_0E9_M_invokeERKSt9_Any_dataOm", ptr %i.t, align 8, !tbaa !242
  store ptr @"_ZNSt17_Function_handlerIFhmEZN4Luau7CodeGenL20setupBlockEntryStateERNS2_9IrBuilderERNS2_10IrFunctionERNS2_7IrBlockERNS2_14ConstPropStateEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.s, align 8, !tbaa !245
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %5, align 8, !tbaa !240
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !120
  store ptr @"_ZNSt17_Function_handlerIFvmhEZN4Luau7CodeGenL20setupBlockEntryStateERNS2_9IrBuilderERNS2_10IrFunctionERNS2_7IrBlockERNS2_14ConstPropStateEE3$_1E9_M_invokeERKSt9_Any_dataOmOh", ptr %i.w, align 8, !tbaa !246
  store ptr @"_ZNSt17_Function_handlerIFvmhEZN4Luau7CodeGenL20setupBlockEntryStateERNS2_9IrBuilderERNS2_10IrFunctionERNS2_7IrBlockERNS2_14ConstPropStateEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.v, align 8, !tbaa !245
  invoke void @_ZN4Luau7CodeGen29propagateTagsFromPredecessorsERKNS0_10IrFunctionERKNS0_7IrBlockESt8functionIFhmEES7_IFvmhEE(ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 %5)
          to label %bb.r unwind label %bb.w

bb.c:                                             ; preds = %.lr.ph, %_ZN4Luau7CodeGen14ConstPropState9updateTagENS0_4IrOpEh.exit
  %i.x = phi ptr [ %i.g, %.lr.ph ], [ %i.cb, %_ZN4Luau7CodeGen14ConstPropState9updateTagENS0_4IrOpEh.exit ]
  %.045 = phi i64 [ 0, %.lr.ph ], [ %i.bz, %_ZN4Luau7CodeGen14ConstPropState9updateTagENS0_4IrOpEh.exit ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.045
  %i.z = load i8, ptr %i.y, align 1, !tbaa !30    ; 2 uses
  %i.aa = and i8 %i.z, 127                        ; 2 uses
  %i.ab = icmp ne i8 %i.aa, 15
  %.not27 = icmp sgt i8 %i.z, -1
  %or.cond = and i1 %.not27, %i.ab
  br i1 %or.cond, label %bb.d, label %_ZN4Luau7CodeGen14ConstPropState9updateTagENS0_4IrOpEh.exit

bb.d:                                             ; preds = %bb.c
  %i.ac = lshr i64 %.045, 6                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ac
  %i.ae = and i64 %.045, 63
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !182
  %i.ag = shl nuw i64 1, %i.ae                    ; 2 uses
  %i.ah = and i64 %i.af, %i.ag
  %.not41 = icmp eq i64 %i.ah, 0
  br i1 %.not41, label %bb.e, label %_ZN4Luau7CodeGen14ConstPropState9updateTagENS0_4IrOpEh.exit

end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGenL20setupBlockEntryStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockERNS0_14ConstPropStateE:bb.a
  ret void

bb.w:                                             ; preds = %._crit_edge
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %i.v, align 8, !tbaa !245 ; 2 uses
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
  %i.ct = load ptr, ptr %i.s, align 8, !tbaa !245 ; 2 uses
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
  %i.d = load i64, ptr %i.c, align 8, !tbaa !316
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3304
  %i.g = load i64, ptr %i.f, align 8, !tbaa !317  ; 5 uses
  %i.h = icmp ugt i64 %i.g, 32
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !154  ; 6 uses
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
  %i.m = load i8, ptr %i.j, align 8, !tbaa !30
  store i8 %i.m, ptr %i.l, align 4, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.n, align 4, !tbaa !158
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i8, ptr %i.j, align 8, !tbaa !30
  store i8 %i.q, ptr %i.p, align 4, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !158
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i8, ptr %i.j, align 8, !tbaa !30
  store i8 %i.u, ptr %i.t, align 4, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !158
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i8, ptr %i.j, align 8, !tbaa !30
  store i8 %i.y, ptr %i.x, align 4, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i32 0, ptr %i.z, align 4, !tbaa !158
  %i.aa = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !318

_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.aa, %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.ae, %.lr.ph.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i.i.i.epil ; 2 uses
  %i.ac = load i8, ptr %i.j, align 8, !tbaa !30
  store i8 %i.ac, ptr %i.ab, align 4, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 0, ptr %i.ad, align 4, !tbaa !158
  %i.ae = add nuw nsw i64 %.07.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !319

_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.d, %bb.c
  store i64 0, ptr %i.c, align 8, !tbaa !316
  br label %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit

_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit: ; preds = %bb.a, %_ZN4Luau6detail16ItemInterfaceMapIhjE4fillEPSt4pairIhjEmRKh.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3384
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3392 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !170
  %.not.i.i = icmp eq ptr %i.ai, %i.ag
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !170
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %_ZN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEE5clearEm.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !145 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !238
  %.not.i.i1 = icmp eq ptr %i.am, %i.ak
  br i1 %.not.i.i1, label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !238
  br label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !228
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !229 ; 9 uses
  %i.at = icmp ugt i64 %i.as, 32
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !153 ; 24 uses
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
  br i1 %min.iters.check, label %.lr.ph.i.i.i3.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i3.preheader
  %i.aw = shl nuw nsw i64 %i.as, 3
  %scevgep = getelementptr i8, ptr %i.au, i64 %i.aw
  %scevgep16 = getelementptr inbounds nuw i8, ptr %0, i64 3356
  %bound0 = icmp ult ptr %i.au, %scevgep16
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i3.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 60                      ; 9 uses
  %1 = load <4 x i32>, ptr %i.av, align 8
  %broadcast.splat = shufflevector <4 x i32> %1, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec, ptr %i.au, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  store <4 x i32> %interleaved.vec, ptr %i.ax, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  %i.ay = icmp eq i64 %n.vec, 4
  br i1 %i.ay, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %interleaved.vec.1 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.1, ptr %i.az, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  store <4 x i32> %interleaved.vec.1, ptr %i.ba, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  %i.bb = icmp eq i64 %n.vec, 8
  br i1 %i.bb, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %interleaved.vec.2 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.2, ptr %i.bc, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  store <4 x i32> %interleaved.vec.2, ptr %i.bd, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  %i.be = icmp eq i64 %n.vec, 12
  br i1 %i.be, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %interleaved.vec.3 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.3, ptr %i.bf, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  store <4 x i32> %interleaved.vec.3, ptr %i.bg, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  %i.bh = icmp eq i64 %n.vec, 16
  br i1 %i.bh, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %interleaved.vec.4 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.4, ptr %i.bi, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  store <4 x i32> %interleaved.vec.4, ptr %i.bj, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  %i.bk = icmp eq i64 %n.vec, 20
  br i1 %i.bk, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %interleaved.vec.5 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.5, ptr %i.bl, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  store <4 x i32> %interleaved.vec.5, ptr %i.bm, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  %i.bn = icmp eq i64 %n.vec, 24
  br i1 %i.bn, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  %interleaved.vec.6 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.6, ptr %i.bo, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  store <4 x i32> %interleaved.vec.6, ptr %i.bp, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  %i.bq = icmp eq i64 %n.vec, 28
  br i1 %i.bq, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.br = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  %interleaved.vec.7 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.7, ptr %i.br, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  store <4 x i32> %interleaved.vec.7, ptr %i.bs, align 4, !tbaa !158, !alias.scope !320, !noalias !323
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i, label %.lr.ph.i.i.i3.preheader39

.lr.ph.i.i.i3.preheader39:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i3.preheader, %middle.block
  %.07.i.i.i4.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i3.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter41 = and i64 %i.as, 3                  ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.i3.prol.loopexit, label %.lr.ph.i.i.i3.prol

.lr.ph.i.i.i3.prol:                               ; preds = %.lr.ph.i.i.i3.preheader39, %.lr.ph.i.i.i3.prol
  %.07.i.i.i4.prol = phi i64 [ %i.bw, %.lr.ph.i.i.i3.prol ], [ %.07.i.i.i4.ph, %.lr.ph.i.i.i3.preheader39 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i3.prol ], [ 0, %.lr.ph.i.i.i3.preheader39 ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.07.i.i.i4.prol ; 2 uses
  %i.bu = load i32, ptr %i.av, align 8, !tbaa !158
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !158
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 0, ptr %i.bv, align 4, !tbaa !158
  %i.bw = add nuw nsw i64 %.07.i.i.i4.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter41
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i3.prol.loopexit, label %.lr.ph.i.i.i3.prol, !llvm.loop !325

.lr.ph.i.i.i3.prol.loopexit:                      ; preds = %.lr.ph.i.i.i3.prol, %.lr.ph.i.i.i3.preheader39
  %.07.i.i.i4.unr = phi i64 [ %.07.i.i.i4.ph, %.lr.ph.i.i.i3.preheader39 ], [ %i.bw, %.lr.ph.i.i.i3.prol ]
  %i.bx = sub nsw i64 %.07.i.i.i4.ph, %i.as
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %.lr.ph.i.i.i3.prol.loopexit, %.lr.ph.i.i.i3
  %.07.i.i.i4 = phi i64 [ %i.co, %.lr.ph.i.i.i3 ], [ %.07.i.i.i4.unr, %.lr.ph.i.i.i3.prol.loopexit ] ; 5 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.07.i.i.i4 ; 2 uses
  %i.ca = load i32, ptr %i.av, align 8, !tbaa !158
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !158
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 0, ptr %i.cb, align 4, !tbaa !158
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.07.i.i.i4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.av, align 8, !tbaa !158
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !158
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !158
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.07.i.i.i4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i32, ptr %i.av, align 8, !tbaa !158
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !158
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  store i32 0, ptr %i.cj, align 4, !tbaa !158
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.07.i.i.i4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load i32, ptr %i.av, align 8, !tbaa !158
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !158
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  store i32 0, ptr %i.cn, align 4, !tbaa !158
  %i.co = add nuw nsw i64 %.07.i.i.i4, 4          ; 2 uses
  %exitcond.not.i.i.i5.3 = icmp eq i64 %i.co, %i.as
  br i1 %exitcond.not.i.i.i5.3, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i, label %.lr.ph.i.i.i3, !llvm.loop !326

_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i3.prol.loopexit, %.lr.ph.i.i.i3, %middle.block, %bb.g, %bb.f
  store i64 0, ptr %i.ao, align 8, !tbaa !228
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit, %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !151 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !237
  %.not.i.i6 = icmp eq ptr %i.cs, %i.cq
  br i1 %.not.i.i6, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !237
  br label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit, %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 3184 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !204
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !205 ; 9 uses
  %i.cz = icmp ugt i64 %i.cy, 32
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !138 ; 24 uses
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef %i.da) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 7 uses
  %.not.i.i.i7 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i7, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i8.preheader:                          ; preds = %bb.j
  %min.iters.check25 = icmp ult i64 %i.cy, 8
  br i1 %min.iters.check25, label %.lr.ph.i.i.i8.preheader38, label %vector.memcheck18

vector.memcheck18:                                ; preds = %.lr.ph.i.i.i8.preheader
  %i.dc = shl nuw nsw i64 %i.cy, 3
  %scevgep19 = getelementptr i8, ptr %i.da, i64 %i.dc
  %scevgep20 = getelementptr inbounds nuw i8, ptr %0, i64 3196
  %bound021 = icmp ult ptr %i.da, %scevgep20
  %bound122 = icmp ult ptr %i.db, %scevgep19
  %found.conflict23 = and i1 %bound021, %bound122
  br i1 %found.conflict23, label %.lr.ph.i.i.i8.preheader38, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck18
  %n.vec27 = and i64 %i.cy, 60                    ; 9 uses
  %2 = load <4 x i32>, ptr %i.db, align 8
  %broadcast.splat31 = shufflevector <4 x i32> %2, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %interleaved.vec32 = shufflevector <2 x i32> %broadcast.splat31, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec32, ptr %i.da, align 4, !alias.scope !327, !noalias !330
  store <4 x i32> %interleaved.vec32, ptr %i.dd, align 4, !alias.scope !327, !noalias !330
  %i.de = icmp eq i64 %n.vec27, 4
  br i1 %i.de, label %middle.block35, label %vector.body28.1

vector.body28.1:                                  ; preds = %vector.ph26
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %interleaved.vec32.1 = shufflevector <2 x i32> %broadcast.splat31, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec32.1, ptr %i.df, align 4, !alias.scope !327, !noalias !330
  store <4 x i32> %interleaved.vec32.1, ptr %i.dg, align 4, !alias.scope !327, !noalias !330
  %i.dh = icmp eq i64 %n.vec27, 8
  br i1 %i.dh, label %middle.block35, label %vector.body28.2

vector.body28.2:                                  ; preds = %vector.body28.1
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %interleaved.vec32.2 = shufflevector <2 x i32> %broadcast.splat31, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec32.2, ptr %i.di, align 4, !alias.scope !327, !noalias !330
  store <4 x i32> %interleaved.vec32.2, ptr %i.dj, align 4, !alias.scope !327, !noalias !330
  %i.dk = icmp eq i64 %n.vec27, 12
  br i1 %i.dk, label %middle.block35, label %vector.body28.3

vector.body28.3:                                  ; preds = %vector.body28.2
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 112
  %interleaved.vec32.3 = shufflevector <2 x i32> %broadcast.splat31, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec32.3, ptr %i.dl, align 4, !alias.scope !327, !noalias !330
  store <4 x i32> %interleaved.vec32.3, ptr %i.dm, align 4, !alias.scope !327, !noalias !330
  %i.dn = icmp eq i64 %n.vec27, 16
  br i1 %i.dn, label %middle.block35, label %vector.body28.4

vector.body28.4:                                  ; preds = %vector.body28.3
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 144
  %interleaved.vec32.4 = shufflevector <2 x i32> %broadcast.splat31, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec32.4, ptr %i.do, align 4, !alias.scope !327, !noalias !330
  store <4 x i32> %interleaved.vec32.4, ptr %i.dp, align 4, !alias.scope !327, !noalias !330
  %i.dq = icmp eq i64 %n.vec27, 20
  br i1 %i.dq, label %middle.block35, label %vector.body28.5

vector.body28.5:                                  ; preds = %vector.body28.4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 160
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 176
  %interleaved.vec32.5 = shufflevector <2 x i32> %broadcast.splat31, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec32.5, ptr %i.dr, align 4, !alias.scope !327, !noalias !330
  store <4 x i32> %interleaved.vec32.5, ptr %i.ds, align 4, !alias.scope !327, !noalias !330
  %i.dt = icmp eq i64 %n.vec27, 24
  br i1 %i.dt, label %middle.block35, label %vector.body28.6

vector.body28.6:                                  ; preds = %vector.body28.5
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.dv = getelementptr inbounds nuw i8, ptr %i.da, i64 208
  %interleaved.vec32.6 = shufflevector <2 x i32> %broadcast.splat31, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec32.6, ptr %i.du, align 4, !alias.scope !327, !noalias !330
  store <4 x i32> %interleaved.vec32.6, ptr %i.dv, align 4, !alias.scope !327, !noalias !330
  %i.dw = icmp eq i64 %n.vec27, 28
  br i1 %i.dw, label %middle.block35, label %vector.body28.7

vector.body28.7:                                  ; preds = %vector.body28.6
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 224
  %i.dy = getelementptr inbounds nuw i8, ptr %i.da, i64 240
  %interleaved.vec32.7 = shufflevector <2 x i32> %broadcast.splat31, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec32.7, ptr %i.dx, align 4, !alias.scope !327, !noalias !330
  store <4 x i32> %interleaved.vec32.7, ptr %i.dy, align 4, !alias.scope !327, !noalias !330
  br label %middle.block35

middle.block35:                                   ; preds = %vector.body28.7, %vector.body28.6, %vector.body28.5, %vector.body28.4, %vector.body28.3, %vector.body28.2, %vector.body28.1, %vector.ph26
  %cmp.n36 = icmp eq i64 %i.cy, %n.vec27
  br i1 %cmp.n36, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8.preheader38

.lr.ph.i.i.i8.preheader38:                        ; preds = %vector.memcheck18, %.lr.ph.i.i.i8.preheader, %middle.block35
  %.07.i.i.i9.ph = phi i64 [ 0, %vector.memcheck18 ], [ 0, %.lr.ph.i.i.i8.preheader ], [ %n.vec27, %middle.block35 ] ; 3 uses
  %xtraiter43 = and i64 %i.cy, 3                  ; 2 uses
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.lr.ph.i.i.i8.prol.loopexit, label %.lr.ph.i.i.i8.prol

.lr.ph.i.i.i8.prol:                               ; preds = %.lr.ph.i.i.i8.preheader38, %.lr.ph.i.i.i8.prol
  %.07.i.i.i9.prol = phi i64 [ %i.ec, %.lr.ph.i.i.i8.prol ], [ %.07.i.i.i9.ph, %.lr.ph.i.i.i8.preheader38 ] ; 2 uses
  %prol.iter45 = phi i64 [ %prol.iter45.next, %.lr.ph.i.i.i8.prol ], [ 0, %.lr.ph.i.i.i8.preheader38 ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.07.i.i.i9.prol ; 2 uses
  %i.ea = load i32, ptr %i.db, align 8, !tbaa !158
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !158
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 0, ptr %i.eb, align 4
  %i.ec = add nuw nsw i64 %.07.i.i.i9.prol, 1     ; 2 uses
  %prol.iter45.next = add i64 %prol.iter45, 1     ; 2 uses
  %prol.iter45.cmp.not = icmp eq i64 %prol.iter45.next, %xtraiter43
  br i1 %prol.iter45.cmp.not, label %.lr.ph.i.i.i8.prol.loopexit, label %.lr.ph.i.i.i8.prol, !llvm.loop !332

.lr.ph.i.i.i8.prol.loopexit:                      ; preds = %.lr.ph.i.i.i8.prol, %.lr.ph.i.i.i8.preheader38
  %.07.i.i.i9.unr = phi i64 [ %.07.i.i.i9.ph, %.lr.ph.i.i.i8.preheader38 ], [ %i.ec, %.lr.ph.i.i.i8.prol ]
  %i.ed = sub nsw i64 %.07.i.i.i9.ph, %i.cy
  %i.ee = icmp ugt i64 %i.ed, -4
  br i1 %i.ee, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %.lr.ph.i.i.i8.prol.loopexit, %.lr.ph.i.i.i8
  %.07.i.i.i9 = phi i64 [ %i.eu, %.lr.ph.i.i.i8 ], [ %.07.i.i.i9.unr, %.lr.ph.i.i.i8.prol.loopexit ] ; 5 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.07.i.i.i9 ; 2 uses
  %i.eg = load i32, ptr %i.db, align 8, !tbaa !158
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !158
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 0, ptr %i.eh, align 4
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.07.i.i.i9 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i32, ptr %i.db, align 8, !tbaa !158
  store i32 %i.ek, ptr %i.ej, align 4, !tbaa !158
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.el, align 4
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.07.i.i.i9 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i32, ptr %i.db, align 8, !tbaa !158
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !158
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  store i32 0, ptr %i.ep, align 4
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.07.i.i.i9 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load i32, ptr %i.db, align 8, !tbaa !158
  store i32 %i.es, ptr %i.er, align 4, !tbaa !158
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 28
  store i32 0, ptr %i.et, align 4
  %i.eu = add nuw nsw i64 %.07.i.i.i9, 4          ; 2 uses
  %exitcond.not.i.i.i10.3 = icmp eq i64 %i.eu, %i.cy
  br i1 %exitcond.not.i.i.i10.3, label %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i, label %.lr.ph.i.i.i8, !llvm.loop !333

_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i8.prol.loopexit, %.lr.ph.i.i.i8, %middle.block35, %bb.j, %bb.i
  store i64 0, ptr %i.cu, align 8, !tbaa !204
  br label %_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit, %_ZN4Luau6detail16ItemInterfaceMapIjNS_7CodeGen4IrOpEE4fillEPSt4pairIjS3_EmRKj.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 3576
  store i32 -1, ptr %i.ev, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv(ptr noundef nonnull align 8 dereferenceable(3704) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3416 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !226
  br label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !227
  %.not.i.i1 = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i1, label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit
  store ptr %i.f, ptr %i.g, align 8, !tbaa !227
  br label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit, %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !141  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !170
  %.not.i.i2 = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i2, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit
  store ptr %i.j, ptr %i.k, align 8, !tbaa !170
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !141  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170
  %.not.i.i3 = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i3, label %_ZNSt6vectorIjSaIjEE5clearEv.exit5, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4:       ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  store ptr %i.n, ptr %i.o, align 8, !tbaa !170
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit5

_ZNSt6vectorIjSaIjEE5clearEv.exit5:               ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !228
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.v = load i64, ptr %i.u, align 8, !tbaa !229  ; 9 uses
  %i.w = icmp ugt i64 %i.v, 32
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !153  ; 24 uses
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
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.z
  %scevgep12 = getelementptr inbounds nuw i8, ptr %0, i64 3356
  %bound0 = icmp ult ptr %i.x, %scevgep12
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 60                       ; 9 uses
  %1 = load <4 x i32>, ptr %i.y, align 8
  %broadcast.splat = shufflevector <4 x i32> %1, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec, ptr %i.x, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  store <4 x i32> %interleaved.vec, ptr %i.aa, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  %i.ab = icmp eq i64 %n.vec, 4
  br i1 %i.ab, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %interleaved.vec.1 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.1, ptr %i.ac, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  store <4 x i32> %interleaved.vec.1, ptr %i.ad, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  %i.ae = icmp eq i64 %n.vec, 8
  br i1 %i.ae, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %interleaved.vec.2 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.2, ptr %i.af, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  store <4 x i32> %interleaved.vec.2, ptr %i.ag, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  %i.ah = icmp eq i64 %n.vec, 12
  br i1 %i.ah, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %interleaved.vec.3 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.3, ptr %i.ai, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  store <4 x i32> %interleaved.vec.3, ptr %i.aj, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  %i.ak = icmp eq i64 %n.vec, 16
  br i1 %i.ak, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %interleaved.vec.4 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.4, ptr %i.al, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  store <4 x i32> %interleaved.vec.4, ptr %i.am, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  %i.an = icmp eq i64 %n.vec, 20
  br i1 %i.an, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 160
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %interleaved.vec.5 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.5, ptr %i.ao, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  store <4 x i32> %interleaved.vec.5, ptr %i.ap, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  %i.aq = icmp eq i64 %n.vec, 24
  br i1 %i.aq, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 208
  %interleaved.vec.6 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.6, ptr %i.ar, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  store <4 x i32> %interleaved.vec.6, ptr %i.as, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  %i.at = icmp eq i64 %n.vec, 28
  br i1 %i.at, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 224
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %interleaved.vec.7 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.7, ptr %i.au, align 4, !tbaa !158, !alias.scope !334, !noalias !337
  store <4 x i32> %interleaved.vec.7, ptr %i.av, align 4, !tbaa !158, !alias.scope !334, !noalias !337
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
  %.07.i.i.i.prol = phi i64 [ %i.az, %.lr.ph.i.i.i.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader14 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader14 ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.07.i.i.i.prol ; 2 uses
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !158
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !158
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 0, ptr %i.ay, align 4, !tbaa !158
  %i.az = add nuw nsw i64 %.07.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !339

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader14
  %.07.i.i.i.unr = phi i64 [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader14 ], [ %i.az, %.lr.ph.i.i.i.prol ]
  %i.ba = sub nsw i64 %.07.i.i.i.ph, %i.v
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.07.i.i.i ; 2 uses
  %i.bd = load i32, ptr %i.y, align 8, !tbaa !158
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !158
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 0, ptr %i.be, align 4, !tbaa !158
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.07.i.i.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.y, align 8, !tbaa !158
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !158
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !158
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.07.i.i.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i32, ptr %i.y, align 8, !tbaa !158
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !158
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  store i32 0, ptr %i.bm, align 4, !tbaa !158
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.07.i.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i32, ptr %i.y, align 8, !tbaa !158
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !158
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  store i32 0, ptr %i.bq, align 4, !tbaa !158
  %i.br = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.br, %i.v
  br i1 %exitcond.not.i.i.i.3, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !340

_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.d, %bb.c
  store i64 0, ptr %i.r, align 8, !tbaa !228
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit5, %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !151 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !237
  %.not.i.i6 = icmp eq ptr %i.bv, %i.bt
  br i1 %.not.i.i6, label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !237
  br label %_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE5clearEv.exit: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit, %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE5clearEm(ptr noundef nonnull align 8 dereferenceable(90) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !341
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !156  ; 4 uses
  %i.f = icmp ugt i64 %i.e, %1
  %i.g = load ptr, ptr %0, align 8, !tbaa !155    ; 2 uses
  br i1 %i.f, label %.lr.ph.i.i, label %bb.d

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i
  %.04.i.i = phi i64 [ %i.m, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.04.i.i ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.promoted.i.i.i.i.i = load i32, ptr %i.j, align 8, !tbaa !112
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i
  store i32 0, ptr %i.j, align 8, !tbaa !112
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !114  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.k) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i

_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i:             ; preds = %bb.c, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  %i.m = add nuw i64 %.04.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.e
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE7destroyEv.exit, label %.lr.ph.i.i, !llvm.loop !157

_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE7destroyEv.exit: ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !155
  tail call void @_ZdlPv(ptr noundef %.pre.i) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(90) %0, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapINS_7CodeGen6IrInstEjE4fillEPSt4pairIS3_jEmRKS3_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN4Luau6detail16ItemInterfaceMapINS_7CodeGen6IrInstEjE4fillEPSt4pairIS3_jEmRKS3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i
  %.04.i = phi i64 [ %i.s, %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i ], [ 0, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.04.i ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.promoted.i.i.i.i = load i32, ptr %i.p, align 8, !tbaa !112
  %.not1.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.i
  store i32 0, ptr %i.p, align 8, !tbaa !112
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !114  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.not.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.q) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i

_ZN4Luau7CodeGen6IrInstD2Ev.exit.i:               ; preds = %bb.e, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i
  %i.s = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.e
  br i1 %exitcond.not.i, label %_ZN4Luau6detail16ItemInterfaceMapINS_7CodeGen6IrInstEjE7destroyEPSt4pairIS3_jEm.exit, label %.lr.ph.i, !llvm.loop !157

_ZN4Luau6detail16ItemInterfaceMapINS_7CodeGen6IrInstEjE7destroyEPSt4pairIS3_jEm.exit: ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit.i
  %.pr = load i64, ptr %i.d, align 8, !tbaa !156  ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !155
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not.i1 = icmp eq i64 %.pr, 0
  br i1 %.not.i1, label %_ZN4Luau6detail16ItemInterfaceMapINS_7CodeGen6IrInstEjE4fillEPSt4pairIS3_jEmRKS3_.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %_ZN4Luau6detail16ItemInterfaceMapINS_7CodeGen6IrInstEjE7destroyEPSt4pairIS3_jEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i2
  %.07.i = phi i64 [ 0, %.lr.ph.i2 ], [ %i.ac, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %.07.i ; 4 uses
  %i.y = load i8, ptr %i.u, align 8, !tbaa !111
  store i8 %i.y, ptr %i.x, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.v)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.aa, ptr noundef nonnull align 8 dereferenceable(11) %i.w, i64 11, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i32 0, ptr %i.ab, align 8, !tbaa !158
  %i.ac = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %i.ac, %.pr
  br i1 %exitcond.not.i3, label %_ZN4Luau6detail16ItemInterfaceMapINS_7CodeGen6IrInstEjE4fillEPSt4pairIS3_jEmRKS3_.exit, label %bb.f, !llvm.loop !342

_ZN4Luau6detail16ItemInterfaceMapINS_7CodeGen6IrInstEjE4fillEPSt4pairIS3_jEmRKS3_.exit: ; preds = %bb.f, %bb.d, %_ZN4Luau6detail16ItemInterfaceMapINS_7CodeGen6IrInstEjE7destroyEPSt4pairIS3_jEm.exit, %_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE7destroyEv.exit
  store i64 0, ptr %i.a, align 8, !tbaa !341
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN4Luau6detail16ItemInterfaceMapINS_7CodeGen6IrInstEjE4fillEPSt4pairIS3_jEmRKS3_.exit
  ret void
}

declare i16 @_ZN4Luau7CodeGen22tryGetLuauTagForBcTypeEhb(i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen14ConstPropState9updateTagENS0_4IrOpEh(ptr noundef nonnull align 8 dereferenceable(3704) %0, i32 %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
end_hunk_1
begin_hunk_2_@_ZN4Luau7CodeGen14ConstPropState24invalidateTableArraySizeEv:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %interleaved.vec.2 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.2, ptr %i.q, align 4, !tbaa !158, !alias.scope !486, !noalias !489
  store <4 x i32> %interleaved.vec.2, ptr %i.r, align 4, !tbaa !158, !alias.scope !486, !noalias !489
  %i.s = icmp eq i64 %n.vec, 12
  br i1 %i.s, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %interleaved.vec.3 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.3, ptr %i.t, align 4, !tbaa !158, !alias.scope !486, !noalias !489
  store <4 x i32> %interleaved.vec.3, ptr %i.u, align 4, !tbaa !158, !alias.scope !486, !noalias !489
  %i.v = icmp eq i64 %n.vec, 16
  br i1 %i.v, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %interleaved.vec.4 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.4, ptr %i.w, align 4, !tbaa !158, !alias.scope !486, !noalias !489
  store <4 x i32> %interleaved.vec.4, ptr %i.x, align 4, !tbaa !158, !alias.scope !486, !noalias !489
  %i.y = icmp eq i64 %n.vec, 20
  br i1 %i.y, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %interleaved.vec.5 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.5, ptr %i.z, align 4, !tbaa !158, !alias.scope !486, !noalias !489
  store <4 x i32> %interleaved.vec.5, ptr %i.aa, align 4, !tbaa !158, !alias.scope !486, !noalias !489
  %i.ab = icmp eq i64 %n.vec, 24
  br i1 %i.ab, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %interleaved.vec.6 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.6, ptr %i.ac, align 4, !tbaa !158, !alias.scope !486, !noalias !489
  store <4 x i32> %interleaved.vec.6, ptr %i.ad, align 4, !tbaa !158, !alias.scope !486, !noalias !489
  %i.ae = icmp eq i64 %n.vec, 28
  br i1 %i.ae, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %interleaved.vec.7 = shufflevector <2 x i32> %broadcast.splat, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.7, ptr %i.af, align 4, !tbaa !158, !alias.scope !486, !noalias !489
  store <4 x i32> %interleaved.vec.7, ptr %i.ag, align 4, !tbaa !158, !alias.scope !486, !noalias !489
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i.preheader31

.lr.ph.i.i.i.preheader31:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.07.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader31, %.lr.ph.i.i.i.prol
  %.07.i.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader31 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader31 ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.07.i.i.i.prol ; 2 uses
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !158
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !158
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !158
  %i.ak = add nuw nsw i64 %.07.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !491

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader31
  %.07.i.i.i.unr = phi i64 [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader31 ], [ %i.ak, %.lr.ph.i.i.i.prol ]
  %i.al = sub nsw i64 %.07.i.i.i.ph, %i.f
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.07.i.i.i ; 2 uses
  %i.ao = load i32, ptr %i.i, align 8, !tbaa !158
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !158
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.ap, align 4, !tbaa !158
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.07.i.i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.i, align 8, !tbaa !158
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !158
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !158
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.07.i.i.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !158
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !158
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store i32 0, ptr %i.ax, align 4, !tbaa !158
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.07.i.i.i ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i32, ptr %i.i, align 8, !tbaa !158
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !158
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  store i32 0, ptr %i.bb, align 4, !tbaa !158
  %i.bc = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bc, %i.f
  br i1 %exitcond.not.i.i.i.3, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !492

_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.d, %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !217
  br label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %bb.a, %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !149 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3416 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !226
  %.not.i.i.i1 = icmp eq ptr %i.bg, %i.be
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !226
  br label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !147 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !227
  %.not.i.i1.i = icmp eq ptr %i.bk, %i.bi
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !227
  br label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !141 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !170
  %.not.i.i2.i = icmp eq ptr %i.bo, %i.bm
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !170
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i

_ZNSt6vectorIjSaIjEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !141 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !170
  %.not.i.i3.i = icmp eq ptr %i.bs, %i.bq
  br i1 %.not.i.i3.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i:     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !170
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i

_ZNSt6vectorIjSaIjEE5clearEv.exit5.i:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !228
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !229 ; 9 uses
  %i.bz = icmp ugt i64 %i.by, 32
  %i.ca = load ptr, ptr %i.bt, align 8, !tbaa !153 ; 24 uses
  br i1 %i.bz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef %i.ca) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 7 uses
  %.not.i.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %min.iters.check17 = icmp ult i64 %i.by, 8
  br i1 %min.iters.check17, label %.lr.ph.i.i.i.i.preheader30, label %vector.memcheck10

vector.memcheck10:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cc = shl nuw nsw i64 %i.by, 3
  %scevgep11 = getelementptr i8, ptr %i.ca, i64 %i.cc
  %scevgep12 = getelementptr inbounds nuw i8, ptr %0, i64 3356
  %bound013 = icmp ult ptr %i.ca, %scevgep12
  %bound114 = icmp ult ptr %i.cb, %scevgep11
  %found.conflict15 = and i1 %bound013, %bound114
  br i1 %found.conflict15, label %.lr.ph.i.i.i.i.preheader30, label %vector.ph18

vector.ph18:                                      ; preds = %vector.memcheck10
  %n.vec19 = and i64 %i.by, 60                    ; 9 uses
  %1 = load <4 x i32>, ptr %i.cb, align 8
  %broadcast.splat23 = shufflevector <4 x i32> %1, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %interleaved.vec24 = shufflevector <2 x i32> %broadcast.splat23, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec24, ptr %i.ca, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  store <4 x i32> %interleaved.vec24, ptr %i.cd, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  %i.ce = icmp eq i64 %n.vec19, 4
  br i1 %i.ce, label %middle.block27, label %vector.body20.1

vector.body20.1:                                  ; preds = %vector.ph18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %interleaved.vec24.1 = shufflevector <2 x i32> %broadcast.splat23, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec24.1, ptr %i.cf, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  store <4 x i32> %interleaved.vec24.1, ptr %i.cg, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  %i.ch = icmp eq i64 %n.vec19, 8
  br i1 %i.ch, label %middle.block27, label %vector.body20.2

vector.body20.2:                                  ; preds = %vector.body20.1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %interleaved.vec24.2 = shufflevector <2 x i32> %broadcast.splat23, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec24.2, ptr %i.ci, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  store <4 x i32> %interleaved.vec24.2, ptr %i.cj, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  %i.ck = icmp eq i64 %n.vec19, 12
  br i1 %i.ck, label %middle.block27, label %vector.body20.3

vector.body20.3:                                  ; preds = %vector.body20.2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  %interleaved.vec24.3 = shufflevector <2 x i32> %broadcast.splat23, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec24.3, ptr %i.cl, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  store <4 x i32> %interleaved.vec24.3, ptr %i.cm, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  %i.cn = icmp eq i64 %n.vec19, 16
  br i1 %i.cn, label %middle.block27, label %vector.body20.4

vector.body20.4:                                  ; preds = %vector.body20.3
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 128
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 144
  %interleaved.vec24.4 = shufflevector <2 x i32> %broadcast.splat23, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec24.4, ptr %i.co, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  store <4 x i32> %interleaved.vec24.4, ptr %i.cp, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  %i.cq = icmp eq i64 %n.vec19, 20
  br i1 %i.cq, label %middle.block27, label %vector.body20.5

vector.body20.5:                                  ; preds = %vector.body20.4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 160
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 176
  %interleaved.vec24.5 = shufflevector <2 x i32> %broadcast.splat23, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec24.5, ptr %i.cr, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  store <4 x i32> %interleaved.vec24.5, ptr %i.cs, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  %i.ct = icmp eq i64 %n.vec19, 24
  br i1 %i.ct, label %middle.block27, label %vector.body20.6

vector.body20.6:                                  ; preds = %vector.body20.5
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 192
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 208
  %interleaved.vec24.6 = shufflevector <2 x i32> %broadcast.splat23, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec24.6, ptr %i.cu, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  store <4 x i32> %interleaved.vec24.6, ptr %i.cv, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  %i.cw = icmp eq i64 %n.vec19, 28
  br i1 %i.cw, label %middle.block27, label %vector.body20.7

vector.body20.7:                                  ; preds = %vector.body20.6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 224
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 240
  %interleaved.vec24.7 = shufflevector <2 x i32> %broadcast.splat23, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec24.7, ptr %i.cx, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  store <4 x i32> %interleaved.vec24.7, ptr %i.cy, align 4, !tbaa !158, !alias.scope !493, !noalias !496
  br label %middle.block27

middle.block27:                                   ; preds = %vector.body20.7, %vector.body20.6, %vector.body20.5, %vector.body20.4, %vector.body20.3, %vector.body20.2, %vector.body20.1, %vector.ph18
  %cmp.n28 = icmp eq i64 %i.by, %n.vec19
  br i1 %cmp.n28, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader30

.lr.ph.i.i.i.i.preheader30:                       ; preds = %vector.memcheck10, %.lr.ph.i.i.i.i.preheader, %middle.block27
  %.07.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck10 ], [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec19, %middle.block27 ] ; 3 uses
  %xtraiter32 = and i64 %i.by, 3                  ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.prol
  %.07.i.i.i.i.prol = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.prol ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 2 uses
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader30 ]
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.07.i.i.i.i.prol ; 2 uses
  %i.da = load i32, ptr %i.cb, align 8, !tbaa !158
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !158
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 0, ptr %i.db, align 4, !tbaa !158
  %i.dc = add nuw nsw i64 %.07.i.i.i.i.prol, 1    ; 2 uses
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !498

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader30
  %.07.i.i.i.i.unr = phi i64 [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ], [ %i.dc, %.lr.ph.i.i.i.i.prol ]
  %i.dd = sub nsw i64 %.07.i.i.i.i.ph, %i.by
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.07.i.i.i.i ; 2 uses
  %i.dg = load i32, ptr %i.cb, align 8, !tbaa !158
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !158
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 0, ptr %i.dh, align 4, !tbaa !158
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.07.i.i.i.i ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i32, ptr %i.cb, align 8, !tbaa !158
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !158
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dl, align 4, !tbaa !158
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.07.i.i.i.i ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i32, ptr %i.cb, align 8, !tbaa !158
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !158
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  store i32 0, ptr %i.dp, align 4, !tbaa !158
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.07.i.i.i.i ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load i32, ptr %i.cb, align 8, !tbaa !158
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !158
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 28
  store i32 0, ptr %i.dt, align 4, !tbaa !158
  %i.du = add nuw nsw i64 %.07.i.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.du, %i.by
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !499

_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block27, %bb.g, %bb.f
  store i64 0, ptr %i.bu, align 8, !tbaa !228
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !151 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !237
  %.not.i.i6.i = icmp eq ptr %i.dy, %i.dw
  br i1 %.not.i.i6.i, label %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !237
  br label %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit

_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i, %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEEixERKj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !217  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !218  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %1, align 4, !tbaa !158    ; 3 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !158  ; 2 uses
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 3 uses
  %i.m = zext i32 %i.i to i64
  %i.n = and i64 %i.l, %i.m
  %i.o = load ptr, ptr %0, align 8, !tbaa !143
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.01832.i.i = phi i64 [ 0, %bb.d ], [ %i.t, %bb.g ]
  %.01931.i.i = phi i64 [ %i.n, %bb.d ], [ %i.v, %bb.g ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.01931.i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !158  ; 2 uses
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
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !500

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(30) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !218
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit

_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.w = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.x = add i64 %i.w, -1                         ; 3 uses
  %i.y = load i32, ptr %1, align 4, !tbaa !158    ; 3 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = and i64 %i.x, %i.z                      ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !143   ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !158 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !158 ; 2 uses
  %i.ag = icmp eq i32 %i.af, %i.ad
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit
  %.02134.i.lcssa5 = phi i64 [ %i.aa, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.02134.i.lcssa5
  store i32 %i.y, ptr %i.ah, align 4, !tbaa !501
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !217
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !217
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE13insert_unsafeERS4_.exit

.lr.ph:                                           ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit, %bb.h
  %i.ak = phi i32 [ %i.aq, %bb.h ], [ %i.af, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit ]
  %.02134.i7 = phi i64 [ %i.ao, %bb.h ], [ %i.aa, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit ] ; 2 uses
  %.02035.i6 = phi i64 [ %i.am, %bb.h ], [ 0, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit ]
  %i.al = icmp eq i32 %i.ak, %i.y
  br i1 %i.al, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE13insert_unsafeERS4_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.am = add i64 %.02035.i6, 1                   ; 3 uses
  %i.an = add i64 %i.am, %.02134.i7
  %i.ao = and i64 %i.an, %i.x                     ; 3 uses
  %.not.i3 = icmp ule i64 %i.am, %i.x
  tail call void @llvm.assume(i1 %.not.i3)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !158 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, %i.ad
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE13insert_unsafeERS4_.exit: ; preds = %.lr.ph, %._crit_edge
  %i.as = phi i64 [ %.02134.i.lcssa5, %._crit_edge ], [ %.02134.i7, %.lr.ph ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE4findERKj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !217
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE4findERS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %1, align 4, !tbaa !158    ; 3 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !158  ; 2 uses
  %i.g = icmp eq i32 %i.e, %i.f
  br i1 %i.g, label %_ZNK4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE4findERS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !218
end_hunk_2
begin_hunk_3_@_ZN4Luau7CodeGen14ConstPropState14invalidateHeapEv:bb.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !213
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.f = load i64, ptr %i.e, align 8, !tbaa !214  ; 6 uses
  %i.g = icmp ugt i64 %i.f, 32
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !144  ; 10 uses
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
  %.pre.i.i.i = load i32, ptr %i.i, align 8, !tbaa !158 ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.f, 56                       ; 5 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.h, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat, ptr %i.j, align 4, !tbaa !158
  %i.k = icmp eq i64 %n.vec, 8
  br i1 %i.k, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store <4 x i32> %broadcast.splat, ptr %i.l, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat, ptr %i.m, align 4, !tbaa !158
  %i.n = icmp eq i64 %n.vec, 16
  br i1 %i.n, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store <4 x i32> %broadcast.splat, ptr %i.o, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat, ptr %i.p, align 4, !tbaa !158
  %i.q = icmp eq i64 %n.vec, 24
  br i1 %i.q, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store <4 x i32> %broadcast.splat, ptr %i.r, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat, ptr %i.s, align 4, !tbaa !158
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
  store i32 %.pre.i.i.i, ptr %i.t, align 4, !tbaa !158
  %i.u = add nuw nsw i64 %.05.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.u, %i.f
  br i1 %exitcond.not.i.i.i, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !551

_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.d, %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !213
  br label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit

_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit: ; preds = %bb.a, %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3616 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3632 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !213
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit8, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !214 ; 6 uses
  %i.ab = icmp ugt i64 %i.aa, 32
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !144 ; 10 uses
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
  %.pre.i.i.i3 = load i32, ptr %i.ad, align 8, !tbaa !158 ; 2 uses
  %min.iters.check23 = icmp ult i64 %i.aa, 8
  br i1 %min.iters.check23, label %.lr.ph.i.i.i4.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph.preheader.i.i.i2
  %n.vec25 = and i64 %i.aa, 56                    ; 5 uses
  %broadcast.splatinsert26 = insertelement <4 x i32> poison, i32 %.pre.i.i.i3, i64 0
  %broadcast.splat27 = shufflevector <4 x i32> %broadcast.splatinsert26, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x i32> %broadcast.splat27, ptr %i.ac, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat27, ptr %i.ae, align 4, !tbaa !158
  %i.af = icmp eq i64 %n.vec25, 8
  br i1 %i.af, label %middle.block31, label %vector.body28.1

vector.body28.1:                                  ; preds = %vector.ph24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store <4 x i32> %broadcast.splat27, ptr %i.ag, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat27, ptr %i.ah, align 4, !tbaa !158
  %i.ai = icmp eq i64 %n.vec25, 16
  br i1 %i.ai, label %middle.block31, label %vector.body28.2

vector.body28.2:                                  ; preds = %vector.body28.1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store <4 x i32> %broadcast.splat27, ptr %i.aj, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat27, ptr %i.ak, align 4, !tbaa !158
  %i.al = icmp eq i64 %n.vec25, 24
  br i1 %i.al, label %middle.block31, label %vector.body28.3

vector.body28.3:                                  ; preds = %vector.body28.2
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  store <4 x i32> %broadcast.splat27, ptr %i.am, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat27, ptr %i.an, align 4, !tbaa !158
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
  store i32 %.pre.i.i.i3, ptr %i.ao, align 4, !tbaa !158
  %i.ap = add nuw nsw i64 %.05.i.i.i5, 1          ; 2 uses
  %exitcond.not.i.i.i6 = icmp eq i64 %i.ap, %i.aa
  br i1 %exitcond.not.i.i.i6, label %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i7, label %.lr.ph.i.i.i4, !llvm.loop !552

_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i7: ; preds = %.lr.ph.i.i.i4, %middle.block31, %bb.g, %bb.f
  store i64 0, ptr %i.w, align 8, !tbaa !213
  br label %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit8

_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit8: ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit, %_ZN4Luau6detail16ItemInterfaceSetIjE4fillEPjmRKj.exit.i.i7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3648 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3664 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !217
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %i.av = load i64, ptr %i.au, align 8, !tbaa !218 ; 9 uses
  %i.aw = icmp ugt i64 %i.av, 32
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !143 ; 24 uses
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
  br i1 %min.iters.check36, label %.lr.ph.i.i.i10.preheader69, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i10.preheader
  %i.az = shl nuw nsw i64 %i.av, 3
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.az
  %scevgep34 = getelementptr inbounds nuw i8, ptr %0, i64 3676
  %bound0 = icmp ult ptr %i.ax, %scevgep34
  %bound1 = icmp ult ptr %i.ay, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i10.preheader69, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck
  %n.vec38 = and i64 %i.av, 60                    ; 9 uses
  %1 = load <4 x i32>, ptr %i.ay, align 8
  %broadcast.splat42 = shufflevector <4 x i32> %1, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec, ptr %i.ax, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  store <4 x i32> %interleaved.vec, ptr %i.ba, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  %i.bb = icmp eq i64 %n.vec38, 4
  br i1 %i.bb, label %middle.block45, label %vector.body39.1

vector.body39.1:                                  ; preds = %vector.ph37
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %interleaved.vec.1 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.1, ptr %i.bc, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  store <4 x i32> %interleaved.vec.1, ptr %i.bd, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  %i.be = icmp eq i64 %n.vec38, 8
  br i1 %i.be, label %middle.block45, label %vector.body39.2

vector.body39.2:                                  ; preds = %vector.body39.1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %interleaved.vec.2 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.2, ptr %i.bf, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  store <4 x i32> %interleaved.vec.2, ptr %i.bg, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  %i.bh = icmp eq i64 %n.vec38, 12
  br i1 %i.bh, label %middle.block45, label %vector.body39.3

vector.body39.3:                                  ; preds = %vector.body39.2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %interleaved.vec.3 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.3, ptr %i.bi, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  store <4 x i32> %interleaved.vec.3, ptr %i.bj, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  %i.bk = icmp eq i64 %n.vec38, 16
  br i1 %i.bk, label %middle.block45, label %vector.body39.4

vector.body39.4:                                  ; preds = %vector.body39.3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %interleaved.vec.4 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.4, ptr %i.bl, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  store <4 x i32> %interleaved.vec.4, ptr %i.bm, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  %i.bn = icmp eq i64 %n.vec38, 20
  br i1 %i.bn, label %middle.block45, label %vector.body39.5

vector.body39.5:                                  ; preds = %vector.body39.4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 176
  %interleaved.vec.5 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.5, ptr %i.bo, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  store <4 x i32> %interleaved.vec.5, ptr %i.bp, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  %i.bq = icmp eq i64 %n.vec38, 24
  br i1 %i.bq, label %middle.block45, label %vector.body39.6

vector.body39.6:                                  ; preds = %vector.body39.5
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  %interleaved.vec.6 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.6, ptr %i.br, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  store <4 x i32> %interleaved.vec.6, ptr %i.bs, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  %i.bt = icmp eq i64 %n.vec38, 28
  br i1 %i.bt, label %middle.block45, label %vector.body39.7

vector.body39.7:                                  ; preds = %vector.body39.6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 224
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 240
  %interleaved.vec.7 = shufflevector <2 x i32> %broadcast.splat42, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec.7, ptr %i.bu, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  store <4 x i32> %interleaved.vec.7, ptr %i.bv, align 4, !tbaa !158, !alias.scope !553, !noalias !556
  br label %middle.block45

middle.block45:                                   ; preds = %vector.body39.7, %vector.body39.6, %vector.body39.5, %vector.body39.4, %vector.body39.3, %vector.body39.2, %vector.body39.1, %vector.ph37
  %cmp.n46 = icmp eq i64 %i.av, %n.vec38
  br i1 %cmp.n46, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i10.preheader69

.lr.ph.i.i.i10.preheader69:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i10.preheader, %middle.block45
  %.07.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i10.preheader ], [ %n.vec38, %middle.block45 ] ; 3 uses
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol

.lr.ph.i.i.i10.prol:                              ; preds = %.lr.ph.i.i.i10.preheader69, %.lr.ph.i.i.i10.prol
  %.07.i.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i.i10.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i10.preheader69 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i10.prol ], [ 0, %.lr.ph.i.i.i10.preheader69 ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.07.i.i.i.prol ; 2 uses
  %i.bx = load i32, ptr %i.ay, align 8, !tbaa !158
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !158
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 0, ptr %i.by, align 4, !tbaa !158
  %i.bz = add nuw nsw i64 %.07.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol, !llvm.loop !558

.lr.ph.i.i.i10.prol.loopexit:                     ; preds = %.lr.ph.i.i.i10.prol, %.lr.ph.i.i.i10.preheader69
  %.07.i.i.i.unr = phi i64 [ %.07.i.i.i.ph, %.lr.ph.i.i.i10.preheader69 ], [ %i.bz, %.lr.ph.i.i.i10.prol ]
  %i.ca = sub nsw i64 %.07.i.i.i.ph, %i.av
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10
  %.07.i.i.i = phi i64 [ %i.cr, %.lr.ph.i.i.i10 ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 5 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.07.i.i.i ; 2 uses
  %i.cd = load i32, ptr %i.ay, align 8, !tbaa !158
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !158
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 0, ptr %i.ce, align 4, !tbaa !158
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.07.i.i.i ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.ay, align 8, !tbaa !158
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !158
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !158
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.07.i.i.i ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i32, ptr %i.ay, align 8, !tbaa !158
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !158
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  store i32 0, ptr %i.cm, align 4, !tbaa !158
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.07.i.i.i ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i32, ptr %i.ay, align 8, !tbaa !158
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !158
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 28
  store i32 0, ptr %i.cq, align 4, !tbaa !158
  %i.cr = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i11.3 = icmp eq i64 %i.cr, %i.av
  br i1 %exitcond.not.i.i.i11.3, label %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i, label %.lr.ph.i.i.i10, !llvm.loop !559

_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i: ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10, %middle.block45, %bb.j, %bb.i
  store i64 0, ptr %i.ar, align 8, !tbaa !217
  br label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit

_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit: ; preds = %_ZN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEE5clearEv.exit8, %_ZN4Luau6detail16ItemInterfaceMapIjiE4fillEPSt4pairIjiEmRKj.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !149 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 3416 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !226
  %.not.i.i.i12 = icmp eq ptr %i.cv, %i.ct
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !226
  br label %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen19NumberedInstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE5clearEm.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !147 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !227
  %.not.i.i1.i = icmp eq ptr %i.cz, %i.cx
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !227
  br label %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau7CodeGen13NodeSlotStateES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE5clearEv.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !141 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !170
  %.not.i.i2.i = icmp eq ptr %i.dd, %i.db
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !170
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i

_ZNSt6vectorIjSaIjEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE5clearEv.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !141 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !170
  %.not.i.i3.i = icmp eq ptr %i.dh, %i.df
  br i1 %.not.i.i3.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i:     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !170
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i

_ZNSt6vectorIjSaIjEE5clearEv.exit5.i:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i4.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !228
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !229 ; 9 uses
  %i.do = icmp ugt i64 %i.dn, 32
  %i.dp = load ptr, ptr %i.di, align 8, !tbaa !153 ; 24 uses
  br i1 %i.do, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPv(ptr noundef %i.dp) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 7 uses
  %.not.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.m
  %min.iters.check55 = icmp ult i64 %i.dn, 8
  br i1 %min.iters.check55, label %.lr.ph.i.i.i.i.preheader68, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dr = shl nuw nsw i64 %i.dn, 3
  %scevgep49 = getelementptr i8, ptr %i.dp, i64 %i.dr
  %scevgep50 = getelementptr inbounds nuw i8, ptr %0, i64 3356
  %bound051 = icmp ult ptr %i.dp, %scevgep50
  %bound152 = icmp ult ptr %i.dq, %scevgep49
  %found.conflict53 = and i1 %bound051, %bound152
  br i1 %found.conflict53, label %.lr.ph.i.i.i.i.preheader68, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck48
  %n.vec57 = and i64 %i.dn, 60                    ; 9 uses
  %2 = load <4 x i32>, ptr %i.dq, align 8
  %broadcast.splat61 = shufflevector <4 x i32> %2, <4 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %interleaved.vec62 = shufflevector <2 x i32> %broadcast.splat61, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec62, ptr %i.dp, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  store <4 x i32> %interleaved.vec62, ptr %i.ds, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  %i.dt = icmp eq i64 %n.vec57, 4
  br i1 %i.dt, label %middle.block65, label %vector.body58.1

vector.body58.1:                                  ; preds = %vector.ph56
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %interleaved.vec62.1 = shufflevector <2 x i32> %broadcast.splat61, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec62.1, ptr %i.du, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  store <4 x i32> %interleaved.vec62.1, ptr %i.dv, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  %i.dw = icmp eq i64 %n.vec57, 8
  br i1 %i.dw, label %middle.block65, label %vector.body58.2

vector.body58.2:                                  ; preds = %vector.body58.1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  %interleaved.vec62.2 = shufflevector <2 x i32> %broadcast.splat61, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec62.2, ptr %i.dx, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  store <4 x i32> %interleaved.vec62.2, ptr %i.dy, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  %i.dz = icmp eq i64 %n.vec57, 12
  br i1 %i.dz, label %middle.block65, label %vector.body58.3

vector.body58.3:                                  ; preds = %vector.body58.2
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 96
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
  %interleaved.vec62.3 = shufflevector <2 x i32> %broadcast.splat61, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec62.3, ptr %i.ea, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  store <4 x i32> %interleaved.vec62.3, ptr %i.eb, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  %i.ec = icmp eq i64 %n.vec57, 16
  br i1 %i.ec, label %middle.block65, label %vector.body58.4

vector.body58.4:                                  ; preds = %vector.body58.3
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 144
  %interleaved.vec62.4 = shufflevector <2 x i32> %broadcast.splat61, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec62.4, ptr %i.ed, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  store <4 x i32> %interleaved.vec62.4, ptr %i.ee, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  %i.ef = icmp eq i64 %n.vec57, 20
  br i1 %i.ef, label %middle.block65, label %vector.body58.5

vector.body58.5:                                  ; preds = %vector.body58.4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 160
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dp, i64 176
  %interleaved.vec62.5 = shufflevector <2 x i32> %broadcast.splat61, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec62.5, ptr %i.eg, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  store <4 x i32> %interleaved.vec62.5, ptr %i.eh, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  %i.ei = icmp eq i64 %n.vec57, 24
  br i1 %i.ei, label %middle.block65, label %vector.body58.6

vector.body58.6:                                  ; preds = %vector.body58.5
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dp, i64 192
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dp, i64 208
  %interleaved.vec62.6 = shufflevector <2 x i32> %broadcast.splat61, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec62.6, ptr %i.ej, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  store <4 x i32> %interleaved.vec62.6, ptr %i.ek, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  %i.el = icmp eq i64 %n.vec57, 28
  br i1 %i.el, label %middle.block65, label %vector.body58.7

vector.body58.7:                                  ; preds = %vector.body58.6
  %i.em = getelementptr inbounds nuw i8, ptr %i.dp, i64 224
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 240
  %interleaved.vec62.7 = shufflevector <2 x i32> %broadcast.splat61, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  store <4 x i32> %interleaved.vec62.7, ptr %i.em, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  store <4 x i32> %interleaved.vec62.7, ptr %i.en, align 4, !tbaa !158, !alias.scope !560, !noalias !563
  br label %middle.block65

middle.block65:                                   ; preds = %vector.body58.7, %vector.body58.6, %vector.body58.5, %vector.body58.4, %vector.body58.3, %vector.body58.2, %vector.body58.1, %vector.ph56
  %cmp.n66 = icmp eq i64 %i.dn, %n.vec57
  br i1 %cmp.n66, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader68

.lr.ph.i.i.i.i.preheader68:                       ; preds = %vector.memcheck48, %.lr.ph.i.i.i.i.preheader, %middle.block65
  %.07.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck48 ], [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec57, %middle.block65 ] ; 3 uses
  %xtraiter70 = and i64 %i.dn, 3                  ; 2 uses
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader68, %.lr.ph.i.i.i.i.prol
  %.07.i.i.i.i.prol = phi i64 [ %i.er, %.lr.ph.i.i.i.i.prol ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader68 ] ; 2 uses
  %prol.iter72 = phi i64 [ %prol.iter72.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader68 ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.07.i.i.i.i.prol ; 2 uses
  %i.ep = load i32, ptr %i.dq, align 8, !tbaa !158
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !158
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 0, ptr %i.eq, align 4, !tbaa !158
  %i.er = add nuw nsw i64 %.07.i.i.i.i.prol, 1    ; 2 uses
  %prol.iter72.next = add i64 %prol.iter72, 1     ; 2 uses
  %prol.iter72.cmp.not = icmp eq i64 %prol.iter72.next, %xtraiter70
  br i1 %prol.iter72.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !565

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader68
  %.07.i.i.i.i.unr = phi i64 [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader68 ], [ %i.er, %.lr.ph.i.i.i.i.prol ]
  %i.es = sub nsw i64 %.07.i.i.i.i.ph, %i.dn
  %i.et = icmp ugt i64 %i.es, -4
  br i1 %i.et, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi i64 [ %i.fj, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.07.i.i.i.i ; 2 uses
  %i.ev = load i32, ptr %i.dq, align 8, !tbaa !158
  store i32 %i.ev, ptr %i.eu, align 4, !tbaa !158
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 0, ptr %i.ew, align 4, !tbaa !158
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.07.i.i.i.i ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.dq, align 8, !tbaa !158
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !158
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fa, align 4, !tbaa !158
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.07.i.i.i.i ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load i32, ptr %i.dq, align 8, !tbaa !158
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !158
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 20
  store i32 0, ptr %i.fe, align 4, !tbaa !158
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.07.i.i.i.i ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load i32, ptr %i.dq, align 8, !tbaa !158
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !158
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 28
  store i32 0, ptr %i.fi, align 4, !tbaa !158
  %i.fj = add nuw nsw i64 %.07.i.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.fj, %i.dn
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !566

_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block65, %bb.m, %bb.l
  store i64 0, ptr %i.dj, align 8, !tbaa !228
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIjjE4fillEPSt4pairIjjEmRKj.exit.i.i.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit5.i
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !151 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !237
  %.not.i.i6.i = icmp eq ptr %i.fn, %i.fl
  br i1 %.not.i.i6.i, label %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !237
  br label %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit

_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit: ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE5clearEm.exit.i, %_ZSt8_DestroyIPN4Luau7CodeGen15ArrayValueEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !145 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !238
  %.not.i.i = icmp eq ptr %i.fr, %i.fp
  br i1 %.not.i.i, label %_ZNSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv.exit
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !238
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !567

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !158  ; 2 uses
  %i.k = load i32, ptr %0, align 4, !tbaa !158
  store i32 %i.k, ptr %i.i, align 4, !tbaa !158
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !158
  %i.x = load i32, ptr %i.v, align 4, !tbaa !158
  %i.y = icmp ult i32 %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !158
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !158
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !568

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !158
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !158
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !158 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %i.j
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !158
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !569

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.ar, align 4, !tbaa !158
  %i.as = icmp sgt i64 %i.m, 4
end_hunk_3
