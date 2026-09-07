Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/mpn?download=true
inline.NumInlined: 138
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4lean7mpn_divEPKjmS1_mPjS2_:bb.a
_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i:               ; preds = %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.unr-lcssa, %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.epilog-lcssa
  br i1 %.not.i.i, label %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.thread.i, label %.lr.ph.i69.preheader.i

.lr.ph.i69.preheader.i:                           ; preds = %.lr.ph.i.i, %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i
  %i.hg = and i64 %.0649.i, 4294967295            ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.hg ; 3 uses
  br i1 %i.ec, label %.lr.ph.i69.i.epil.preheader, label %.lr.ph.i69.i

_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.thread.i:     ; preds = %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0649.i
  store i32 %i.fu, ptr %i.hi, align 4, !tbaa !12
  br label %.loopexit.i

.lr.ph.i69.i:                                     ; preds = %.lr.ph.i69.preheader.i, %.lr.ph.i69.i
  %i.hj = phi i32 [ %i.ie, %.lr.ph.i69.i ], [ 0, %.lr.ph.i69.preheader.i ] ; 2 uses
  %.030.i.i = phi i64 [ %i.if, %.lr.ph.i69.i ], [ 0, %.lr.ph.i69.preheader.i ] ; 4 uses
  %niter217 = phi i64 [ %niter217.next.1, %.lr.ph.i69.i ], [ 0, %.lr.ph.i69.preheader.i ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.030.i.i ; 2 uses
  %i.hl = getelementptr [4 x i8], ptr %i.fv, i64 %.030.i.i
  %i.hm = load i32, ptr %i.hk, align 4, !tbaa !12 ; 2 uses
  %i.hn = load i32, ptr %i.hl, align 4, !tbaa !12 ; 2 uses
  %i.ho = sub i32 %i.hm, %i.hn                    ; 2 uses
  %i.hp = icmp ugt i32 %i.hn, %i.hm
  %i.hq = sub i32 %i.ho, %i.hj
  store i32 %i.hq, ptr %i.hk, align 4, !tbaa !12
  %i.hr = icmp ugt i32 %i.hj, %i.ho
  %i.hs = or i1 %i.hp, %i.hr
  %i.ht = zext i1 %i.hs to i32                    ; 2 uses
  %i.hu = or disjoint i64 %.030.i.i, 1            ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hu ; 2 uses
  %i.hw = getelementptr [4 x i8], ptr %i.fv, i64 %i.hu
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !12 ; 2 uses
  %i.hy = load i32, ptr %i.hw, align 4, !tbaa !12 ; 2 uses
  %i.hz = sub i32 %i.hx, %i.hy                    ; 2 uses
  %i.ia = icmp ugt i32 %i.hy, %i.hx
  %i.ib = sub i32 %i.hz, %i.ht
  store i32 %i.ib, ptr %i.hv, align 4, !tbaa !12
  %i.ic = icmp ult i32 %i.hz, %i.ht
  %i.id = or i1 %i.ia, %i.ic                      ; 2 uses
  %i.ie = zext i1 %i.id to i32                    ; 2 uses
  %i.if = add nuw i64 %.030.i.i, 2                ; 2 uses
  %niter217.next.1 = add i64 %niter217, 2         ; 2 uses
  %niter217.ncmp.1 = icmp eq i64 %niter217.next.1, %unroll_iter216
  br i1 %niter217.ncmp.1, label %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa, label %.lr.ph.i69.i, !llvm.loop !1

_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa:  ; preds = %.lr.ph.i69.i
  br i1 %lcmp.mod213.not.not, label %.lr.ph.i69.i.epil.preheader, label %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i

.lr.ph.i69.i.epil.preheader:                      ; preds = %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa, %.lr.ph.i69.preheader.i
  %.epil.init = phi i32 [ 0, %.lr.ph.i69.preheader.i ], [ %i.ie, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa ] ; 2 uses
  %.030.i.i.epil.init = phi i64 [ 0, %.lr.ph.i69.preheader.i ], [ %i.if, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod215)
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.030.i.i.epil.init ; 2 uses
  %i.ih = getelementptr [4 x i8], ptr %i.fv, i64 %.030.i.i.epil.init
  %i.ii = load i32, ptr %i.ig, align 4, !tbaa !12 ; 2 uses
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !12 ; 2 uses
  %i.ik = sub i32 %i.ii, %i.ij                    ; 2 uses
  %i.il = icmp ugt i32 %i.ij, %i.ii
  %i.im = sub i32 %i.ik, %.epil.init
  store i32 %i.im, ptr %i.ig, align 4, !tbaa !12
  %i.in = icmp ugt i32 %.epil.init, %i.ik
  %i.io = or i1 %i.il, %i.in
  br label %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i

_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i:            ; preds = %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa, %.lr.ph.i69.i.epil.preheader
  %.lcssa = phi i1 [ %i.id, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa ], [ %i.io, %.lr.ph.i69.i.epil.preheader ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0649.i ; 2 uses
  store i32 %i.fu, ptr %i.ip, align 4, !tbaa !12
  br i1 %.lcssa, label %bb.y, label %.loopexit.i

bb.y:                                             ; preds = %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i
  %i.iq = add i32 %i.fu, -1
  store i32 %i.iq, ptr %i.ip, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !12
  invoke void @_ZN4lean6bufferIjLm16EE6resizeEmRKj(ptr noundef nonnull align 8 dereferenceable(88) %9, i64 noundef %i.ds, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc83 unwind label %.loopexit105

.noexc83:                                         ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.ir = load ptr, ptr %7, align 8, !tbaa !21    ; 4 uses
  %i.is = load ptr, ptr %6, align 8, !tbaa !21    ; 9 uses
  %i.it = ptrtoaddr ptr %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.hg
  %i.iv = load ptr, ptr %9, align 8, !tbaa !21    ; 7 uses
  %i.iw = ptrtoaddr ptr %i.iv to i64
  br label %.lr.ph.i72.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i72.i
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.dt
  store i32 %i.kh, ptr %i.ix, align 4, !tbaa !12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %._crit_edge.i.i
  %i.iy = add i32 %i.ef, %indvar
  %i.iz = icmp ult i32 %i.iy, %i.ee
  %i.ja = or i1 %i.iz, %i.eg
  br i1 %i.ja, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.jb = add i64 %i.em, %i.it
  %i.jc = sub i64 %i.iw, %i.jb
  %diff.check = icmp ugt i64 %i.jc, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.jd = and i64 %index, 4294967288
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load = load <4 x i32>, ptr %i.je, align 4, !tbaa !12
  %wide.load152 = load <4 x i32>, ptr %i.jf, align 4, !tbaa !12
  %i.jg = add i64 %index, %.0649.i
  %i.jh = and i64 %i.jg, 4294967295
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store <4 x i32> %wide.load, ptr %i.ji, align 4, !tbaa !12
  store <4 x i32> %wide.load152, ptr %i.jj, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jk = icmp eq i64 %index.next, %n.vec
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %._crit_edge.i.i, %middle.block
  %.07.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %._crit_edge.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod219.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jl = and i64 %.07.i.ph, 4294967288
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !12
  %i.jo = add i64 %.07.i.ph, %.0649.i
  %i.jp = and i64 %i.jo, 4294967295
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.jp
  store i32 %i.jn, ptr %i.jq, align 4, !tbaa !12
  %i.jr = or disjoint i64 %.07.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.07.i.unr = phi i64 [ %.07.i.ph, %scalar.ph.preheader ], [ %i.jr, %scalar.ph.prol ]
  %i.js = icmp eq i64 %i.di, %.07.i.ph
  br i1 %i.js, label %.loopexit.i, label %scalar.ph

.lr.ph.i72.i:                                     ; preds = %.lr.ph.i72.i, %.noexc83
  %.041.i.i = phi i32 [ %i.kh, %.lr.ph.i72.i ], [ 0, %.noexc83 ]
  %.03740.i.i = phi i64 [ %i.ki, %.lr.ph.i72.i ], [ 0, %.noexc83 ] ; 6 uses
  %i.jt = icmp ult i64 %.03740.i.i, %i.di
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.03740.i.i
  %i.jv = select i1 %i.jt, ptr %i.ju, ptr @_ZN4leanL4zeroE
  %i.jw = icmp ult i64 %.03740.i.i, %i.dj
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.03740.i.i
  %i.jy = select i1 %i.jw, ptr %i.jx, ptr @_ZN4leanL4zeroE
  %i.jz = load i32, ptr %i.jv, align 4, !tbaa !12 ; 2 uses
  %i.ka = load i32, ptr %i.jy, align 4, !tbaa !12
  %i.kb = add i32 %i.ka, %i.jz                    ; 3 uses
  %i.kc = icmp ult i32 %i.kb, %i.jz
  %i.kd = add i32 %i.kb, %.041.i.i                ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.03740.i.i
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !12
  %i.kf = icmp ult i32 %i.kd, %i.kb
  %i.kg = or i1 %i.kc, %i.kf
  %i.kh = zext i1 %i.kg to i32                    ; 2 uses
  %i.ki = add nuw i64 %.03740.i.i, 1              ; 2 uses
  %exitcond.not.i73.i = icmp eq i64 %i.ki, %i.dt
  br i1 %exitcond.not.i73.i, label %._crit_edge.i.i, label %.lr.ph.i72.i, !llvm.loop !0

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07.i = phi i64 [ %i.kw, %scalar.ph ], [ %.07.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.kj = and i64 %.07.i, 4294967295
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !12
  %i.km = add i64 %.07.i, %.0649.i
  %i.kn = and i64 %i.km, 4294967295
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.kn
  store i32 %i.kl, ptr %i.ko, align 4, !tbaa !12
  %i.kp = add nuw i64 %.07.i, 1                   ; 3 uses
  %i.kq = and i64 %i.kp, 4294967295
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !12
  %i.kt = add i64 %i.kp, %.0649.i
  %i.ku = and i64 %i.kt, 4294967295
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.ku
  store i32 %i.ks, ptr %i.kv, align 4, !tbaa !12
  %i.kw = add nuw i64 %.07.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.kp, %i.di
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %scalar.ph, !llvm.loop !46

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.thread.i
  %i.kx = phi ptr [ %i.ei, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i ], [ %i.ei, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.thread.i ], [ %i.ir, %middle.block ], [ %i.ir, %scalar.ph ], [ %i.ir, %scalar.ph.prol.loopexit ]
  %i.ky = phi ptr [ %i.ej, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i ], [ %i.ej, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.thread.i ], [ %i.is, %middle.block ], [ %i.is, %scalar.ph ], [ %i.is, %scalar.ph.prol.loopexit ]
  %i.kz = add i64 %.0649.i, -1
  %.not.i81 = icmp eq i64 %.0649.i, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.i81, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit, label %bb.t, !llvm.loop !47

_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit:        ; preds = %.loopexit.i, %bb.p, %.noexc82, %bb.k
  %.val78 = load ptr, ptr %6, align 8             ; 18 uses
  %.val78174 = ptrtoaddr ptr %.val78 to i64
  %.val79 = load i64, ptr %i.br, align 8          ; 12 uses
  %i.la = icmp eq i64 %i.bz, 0
  br i1 %i.la, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit
  %i.lb = add i64 %.val79, -1                     ; 7 uses
  %.not.i84 = icmp eq i64 %i.lb, 0
  %.pre.i85 = trunc i64 %i.bz to i32              ; 6 uses
  br i1 %.not.i84, label %._crit_edge.i, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %.preheader1.i
  %i.lc = sub i32 32, %.pre.i85                   ; 4 uses
  %min.iters.check157 = icmp ult i64 %i.lb, 12
  br i1 %min.iters.check157, label %scalar.ph156.preheader, label %vector.scevcheck153

vector.scevcheck153:                              ; preds = %.lr.ph.i86
  %i.ld = add i64 %.val79, -2                     ; 2 uses
  %i.le = and i64 %i.ld, 4294967295
  %i.lf = icmp eq i64 %i.le, 4294967295
  %i.lg = icmp ugt i64 %i.ld, 4294967295
  %i.lh = or i1 %i.lf, %i.lg
  br i1 %i.lh, label %scalar.ph156.preheader, label %vector.memcheck154

vector.memcheck154:                               ; preds = %vector.scevcheck153
  %i.li = shl nuw nsw i64 %.val79, 2              ; 2 uses
  %i.lj = getelementptr i8, ptr %5, i64 %i.li
  %scevgep = getelementptr i8, ptr %i.lj, i64 -4
  %scevgep155 = getelementptr i8, ptr %.val78, i64 %i.li
  %bound0 = icmp ult ptr %5, %scevgep155
  %bound1 = icmp ult ptr %.val78, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %vector.memcheck154
  %n.vec159 = and i64 %i.lb, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.lc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert160 = insertelement <4 x i32> poison, i32 %.pre.i85, i64 0
  %broadcast.splat161 = shufflevector <4 x i32> %broadcast.splatinsert160, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph158
  %index163 = phi i64 [ 0, %vector.ph158 ], [ %index.next168, %vector.body162 ] ; 4 uses
  %i.lk = and i64 %index163, 4294967288
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.lk ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %wide.load164 = load <4 x i32>, ptr %i.ll, align 4, !tbaa !12, !alias.scope !56
  %wide.load165 = load <4 x i32>, ptr %i.lm, align 4, !tbaa !12, !alias.scope !56
  %i.ln = lshr <4 x i32> %wide.load164, %broadcast.splat161
  %i.lo = lshr <4 x i32> %wide.load165, %broadcast.splat161
  %i.lp = and i64 %index163, 4294967288
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 20
  %wide.load166 = load <4 x i32>, ptr %i.lr, align 4, !tbaa !12, !alias.scope !56
  %wide.load167 = load <4 x i32>, ptr %i.ls, align 4, !tbaa !12, !alias.scope !56
  %i.lt = shl <4 x i32> %wide.load166, %broadcast.splat
  %i.lu = shl <4 x i32> %wide.load167, %broadcast.splat
  %i.lv = or disjoint <4 x i32> %i.lt, %i.ln
  %i.lw = or disjoint <4 x i32> %i.lu, %i.lo
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index163 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store <4 x i32> %i.lv, ptr %i.lx, align 4, !tbaa !12, !alias.scope !57, !noalias !56
  store <4 x i32> %i.lw, ptr %i.ly, align 4, !tbaa !12, !alias.scope !57, !noalias !56
  %index.next168 = add nuw i64 %index163, 8       ; 2 uses
  %i.lz = icmp eq i64 %index.next168, %n.vec159
  br i1 %i.lz, label %middle.block169, label %vector.body162, !llvm.loop !51

middle.block169:                                  ; preds = %vector.body162
  %cmp.n170 = icmp eq i64 %i.lb, %n.vec159
  br i1 %cmp.n170, label %._crit_edge.i, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %vector.memcheck154, %vector.scevcheck153, %.lr.ph.i86, %middle.block169
  %.02.i.ph = phi i64 [ 0, %vector.memcheck154 ], [ 0, %vector.scevcheck153 ], [ 0, %.lr.ph.i86 ], [ %n.vec159, %middle.block169 ] ; 5 uses
  %i.ma = add i64 %.val79, -2
  %i.mb = and i64 %i.lb, 1
  %lcmp.mod221.not.not = icmp eq i64 %i.mb, 0
  br i1 %lcmp.mod221.not.not, label %scalar.ph156.prol.loopexit, label %scalar.ph156.prol

scalar.ph156.prol:                                ; preds = %scalar.ph156.preheader
  %i.mc = and i64 %.02.i.ph, 4294967288
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !12
  %i.mf = lshr i32 %i.me, %.pre.i85
  %i.mg = or disjoint i64 %.02.i.ph, 1            ; 2 uses
  %i.mh = and i64 %i.mg, 4294967289
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !12
  %i.mk = shl i32 %i.mj, %i.lc
  %i.ml = or disjoint i32 %i.mk, %i.mf
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.02.i.ph
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !12
  br label %scalar.ph156.prol.loopexit

scalar.ph156.prol.loopexit:                       ; preds = %scalar.ph156.prol, %scalar.ph156.preheader
  %.02.i.unr = phi i64 [ %.02.i.ph, %scalar.ph156.preheader ], [ %i.mg, %scalar.ph156.prol ]
  %i.mn = icmp eq i64 %i.ma, %.02.i.ph
  br i1 %i.mn, label %._crit_edge.i, label %scalar.ph156

.preheader.i:                                     ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit
  %.not5.i = icmp eq i64 %.val79, 0
  br i1 %.not5.i, label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit, label %.lr.ph4.i.preheader

.lr.ph4.i.preheader:                              ; preds = %.preheader.i
  %i.mo = add i64 %.val79, -4294967297
  %or.cond204 = icmp ult i64 %i.mo, -4294967285
  %i.mp = sub i64 %.val78174, %i.b
  %diff.check175 = icmp ugt i64 %i.mp, -32
  %or.cond205 = select i1 %or.cond204, i1 true, i1 %diff.check175
  br i1 %or.cond205, label %.lr.ph4.i.preheader208, label %vector.ph178

vector.ph178:                                     ; preds = %.lr.ph4.i.preheader
  %n.vec179 = and i64 %.val79, 8589934584         ; 3 uses
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next184, %vector.body180 ] ; 3 uses
  %i.mq = and i64 %index181, 4294967288
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.mq ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %wide.load182 = load <4 x i32>, ptr %i.mr, align 4, !tbaa !12
  %wide.load183 = load <4 x i32>, ptr %i.ms, align 4, !tbaa !12
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index181 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  store <4 x i32> %wide.load182, ptr %i.mt, align 4, !tbaa !12
  store <4 x i32> %wide.load183, ptr %i.mu, align 4, !tbaa !12
  %index.next184 = add nuw i64 %index181, 8       ; 2 uses
  %i.mv = icmp eq i64 %index.next184, %n.vec179
  br i1 %i.mv, label %middle.block185, label %vector.body180, !llvm.loop !52

middle.block185:                                  ; preds = %vector.body180
  %cmp.n186 = icmp eq i64 %.val79, %n.vec179
  br i1 %cmp.n186, label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit, label %.lr.ph4.i.preheader208

.lr.ph4.i.preheader208:                           ; preds = %.lr.ph4.i.preheader, %middle.block185
  %.0253.i.ph = phi i64 [ 0, %.lr.ph4.i.preheader ], [ %n.vec179, %middle.block185 ] ; 3 uses
  %xtraiter222 = and i64 %.val79, 3               ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.lr.ph4.i.prol.loopexit, label %.lr.ph4.i.prol

.lr.ph4.i.prol:                                   ; preds = %.lr.ph4.i.preheader208, %.lr.ph4.i.prol
  %.0253.i.prol = phi i64 [ %i.na, %.lr.ph4.i.prol ], [ %.0253.i.ph, %.lr.ph4.i.preheader208 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph4.i.prol ], [ 0, %.lr.ph4.i.preheader208 ]
  %i.mw = and i64 %.0253.i.prol, 4294967295
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !12
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0253.i.prol
  store i32 %i.my, ptr %i.mz, align 4, !tbaa !12
  %i.na = add nuw i64 %.0253.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter222
  br i1 %prol.iter.cmp.not, label %.lr.ph4.i.prol.loopexit, label %.lr.ph4.i.prol, !llvm.loop !53

.lr.ph4.i.prol.loopexit:                          ; preds = %.lr.ph4.i.prol, %.lr.ph4.i.preheader208
  %.0253.i.unr = phi i64 [ %.0253.i.ph, %.lr.ph4.i.preheader208 ], [ %i.na, %.lr.ph4.i.prol ]
  %i.nb = sub i64 %.0253.i.ph, %.val79
  %i.nc = icmp ugt i64 %i.nb, -4
  br i1 %i.nc, label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit, label %.lr.ph4.i

.lr.ph4.i:                                        ; preds = %.lr.ph4.i.prol.loopexit, %.lr.ph4.i
  %.0253.i = phi i64 [ %i.nw, %.lr.ph4.i ], [ %.0253.i.unr, %.lr.ph4.i.prol.loopexit ] ; 6 uses
  %i.nd = and i64 %.0253.i, 4294967295
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.nd
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !12
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0253.i
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !12
  %i.nh = add nuw i64 %.0253.i, 1                 ; 2 uses
  %i.ni = and i64 %i.nh, 4294967295
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !12
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.nh
  store i32 %i.nk, ptr %i.nl, align 4, !tbaa !12
  %i.nm = add nuw i64 %.0253.i, 2                 ; 2 uses
  %i.nn = and i64 %i.nm, 4294967295
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4, !tbaa !12
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.nm
  store i32 %i.np, ptr %i.nq, align 4, !tbaa !12
  %i.nr = add nuw i64 %.0253.i, 3                 ; 2 uses
  %i.ns = and i64 %i.nr, 4294967295
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !12
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.nr
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !12
  %i.nw = add nuw i64 %.0253.i, 4                 ; 2 uses
  %exitcond6.not.i.3 = icmp eq i64 %i.nw, %.val79
  br i1 %exitcond6.not.i.3, label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit, label %.lr.ph4.i, !llvm.loop !54

._crit_edge.i:                                    ; preds = %scalar.ph156.prol.loopexit, %scalar.ph156, %middle.block169, %.preheader1.i
  %i.nx = and i64 %i.lb, 4294967295
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !12
  %i.oa = lshr i32 %i.nz, %.pre.i85
  %i.ob = getelementptr [4 x i8], ptr %5, i64 %.val79
  %i.oc = getelementptr i8, ptr %i.ob, i64 -4
  store i32 %i.oa, ptr %i.oc, align 4, !tbaa !12
  br label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit

scalar.ph156:                                     ; preds = %scalar.ph156.prol.loopexit, %scalar.ph156
  %.02.i = phi i64 [ %i.os, %scalar.ph156 ], [ %.02.i.unr, %scalar.ph156.prol.loopexit ] ; 4 uses
  %i.od = and i64 %.02.i, 4294967295
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !12
  %i.og = lshr i32 %i.of, %.pre.i85
  %i.oh = add nuw i64 %.02.i, 1                   ; 3 uses
  %i.oi = and i64 %i.oh, 4294967295
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !12
  %i.ol = shl i32 %i.ok, %i.lc
  %i.om = or disjoint i32 %i.ol, %i.og
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.02.i
  store i32 %i.om, ptr %i.on, align 4, !tbaa !12
  %i.oo = and i64 %i.oh, 4294967295
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !12
  %i.or = lshr i32 %i.oq, %.pre.i85
  %i.os = add nuw i64 %.02.i, 2                   ; 3 uses
  %i.ot = and i64 %i.os, 4294967295
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !12
  %i.ow = shl i32 %i.ov, %i.lc
  %i.ox = or disjoint i32 %i.ow, %i.or
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.oh
  store i32 %i.ox, ptr %i.oy, align 4, !tbaa !12
  %exitcond.not.i87.1 = icmp eq i64 %i.os, %i.lb
  br i1 %exitcond.not.i87.1, label %._crit_edge.i, label %scalar.ph156, !llvm.loop !55

_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit: ; preds = %.lr.ph4.i.prol.loopexit, %.lr.ph4.i, %middle.block185, %._crit_edge.i, %.preheader.i
  %i.oz = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %i.oz, %i.bw
  br i1 %.not.i.i.i89, label %_ZN4lean6bufferIjLm16EED2Ev.exit90, label %bb.z

bb.z:                                             ; preds = %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit
  %i.pa = load i64, ptr %i.by, align 8, !tbaa !23
  %i.pb = shl i64 %i.pa, 2
  call void @_ZdaPvm(ptr noundef %i.oz, i64 noundef %i.pb) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit90

_ZN4lean6bufferIjLm16EED2Ev.exit90:               ; preds = %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.pc = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %i.pc, %i.bt
  br i1 %.not.i.i.i91, label %_ZN4lean6bufferIjLm16EED2Ev.exit92, label %bb.aa

bb.aa:                                            ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit90
  %i.pd = load i64, ptr %i.bv, align 8, !tbaa !23
  %i.pe = shl i64 %i.pd, 2
  call void @_ZdaPvm(ptr noundef %i.pc, i64 noundef %i.pe) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit92

_ZN4lean6bufferIjLm16EED2Ev.exit92:               ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit90, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.pf = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %i.pf, %i.bq
  br i1 %.not.i.i.i93, label %_ZN4lean6bufferIjLm16EED2Ev.exit94, label %bb.ab

bb.ab:                                            ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit92
  %i.pg = load i64, ptr %i.bs, align 8, !tbaa !23
  %i.ph = shl i64 %i.pg, 2
  call void @_ZdaPvm(ptr noundef %i.pf, i64 noundef %i.ph) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit94

_ZN4lean6bufferIjLm16EED2Ev.exit94:               ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit92, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.pi = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.pi, %i.bn
  br i1 %.not.i.i.i95, label %_ZN4lean6bufferIjLm16EED2Ev.exit96, label %bb.ac

bb.ac:                                            ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit94
  %i.pj = load i64, ptr %i.bp, align 8, !tbaa !23
  %i.pk = shl i64 %i.pj, 2
  call void @_ZdaPvm(ptr noundef %i.pi, i64 noundef %i.pk) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit96

_ZN4lean6bufferIjLm16EED2Ev.exit96:               ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit94, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.loopexit

end_hunk_0
begin_hunk_1_@_ZN4lean13mpn_to_stringEPKjmPcm:bb.a
  %.pre = load i64, ptr %i.h, align 8, !tbaa !22
  br label %bb.q

_ZN4lean10mpn_bufferC2EmRKj.exit88:               ; preds = %_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader, %_ZN4lean10mpn_bufferC2EmRKj.exit88
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ], [ %indvars.iv.ph, %_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !12
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !12
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.cq = and i64 %indvars.iv.next, 4294967295
  %i.cr = icmp ugt i64 %1, %i.cq
  br i1 %i.cr, label %_ZN4lean10mpn_bufferC2EmRKj.exit88, label %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge, !llvm.loop !80

bb.q:                                             ; preds = %.critedge4, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge
  %i.cs = phi i32 [ undef, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %i.er, %.critedge4 ]
  %i.ct = phi ptr [ %i.cj, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %.val50, %.critedge4 ]
  %i.cu = phi ptr [ %i.ci, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %i.da, %.critedge4 ] ; 2 uses
  %i.cv = phi i64 [ %.pre, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %i.ff, %.critedge4 ] ; 2 uses
  %.034 = phi i64 [ 0, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %i.eu, %.critedge4 ] ; 4 uses
  switch i64 %i.cv, label %._crit_edge126 [
    i64 0, label %.critedge
    i64 1, label %bb.r
  ]

._crit_edge126:                                   ; preds = %bb.q
  %.pre127 = load ptr, ptr %4, align 8, !tbaa !21
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cw = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !12
  %.not = icmp eq i32 %i.cx, 0
  br i1 %.not, label %.critedge, label %bb.s

bb.s:                                             ; preds = %._crit_edge126, %bb.r
  %i.cy = phi ptr [ %.pre127, %._crit_edge126 ], [ %i.cw, %bb.r ]
  %i.cz = invoke fastcc noundef i64 @_ZN4leanL13div_normalizeEPKjmS1_mRNS_10mpn_bufferES3_(ptr noundef nonnull %i.cy, i64 noundef %i.cv, ptr noundef nonnull %i.c, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %6)
          to label %bb.t unwind label %.loopexit  ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.da = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !12 ; 2 uses
  %i.dc = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  %.val49 = load i64, ptr %i.cl, align 8, !tbaa !22 ; 2 uses
  %.01.i = add i64 %.val49, -1                    ; 2 uses
  %.not2.i = icmp eq i64 %.01.i, 0
  br i1 %.not2.i, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit, label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %bb.t
  %i.dd = zext i32 %i.db to i64                   ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph.i89
  %.04.i = phi i64 [ %.01.i, %.lr.ph.i89 ], [ %.0.i, %bb.y ] ; 3 uses
  %.0.in3.i = phi i64 [ %.val49, %.lr.ph.i89 ], [ %.04.i, %bb.y ]
  %i.de = and i64 %.04.i, 4294967295
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.de ; 3 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !12
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw i64 %i.dh, 32
  %i.dj = add i64 %.0.in3.i, -2                   ; 2 uses
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.dk ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !12
  %i.dn = zext i32 %i.dm to i64
  %i.do = or disjoint i64 %i.di, %i.dn            ; 3 uses
  %i.dp = udiv i64 %i.do, %i.dd                   ; 3 uses
  %.recomposed = urem i64 %i.do, %i.dd            ; 2 uses
  %i.dq = icmp ugt i64 %i.dp, 4294967295
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dr = call ptr @__cxa_allocate_exception(i64 40) #14 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !26
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i64 0, ptr %i.du, align 8, !tbaa !28
  store i8 0, ptr %i.dt, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.dr, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #15
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dv = mul nuw i64 %i.dp, %i.dd
  %i.dw = icmp ugt i64 %i.dv, %i.do
  %i.dx = trunc i64 %.recomposed to i32
  store i32 %i.dx, ptr %i.dl, align 4, !tbaa !12
  %i.dy = lshr i64 %.recomposed, 32
  %i.dz = trunc nuw i64 %i.dy to i32
  store i32 %i.dz, ptr %i.df, align 4, !tbaa !12
  %i.ea = trunc nuw i64 %i.dp to i32              ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dj ; 2 uses
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !12
  br i1 %i.dw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ec = add i32 %i.ea, -1
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !12
  %i.ed = load i32, ptr %i.dl, align 4, !tbaa !12
  %i.ee = add i32 %i.ed, %i.db
  store i32 %i.ee, ptr %i.df, align 4, !tbaa !12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i = add i64 %.04.i, -1                      ; 2 uses
  %.not.i90 = icmp eq i64 %.0.i, 0
  br i1 %.not.i90, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit, label %bb.u, !llvm.loop !3

_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit: ; preds = %bb.y
  %.val50.pre = load ptr, ptr %5, align 8
  br label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit

_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit:        ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit, %bb.t
  %.val50 = phi ptr [ %.val50.pre, %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit ], [ %.val, %bb.t ] ; 3 uses
  %.val51 = load i64, ptr %i.ch, align 8          ; 4 uses
  %i.ef = icmp eq i64 %i.cz, 0
  br i1 %i.ef, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit
  %i.eg = add i64 %.val51, 4294967295
  %.pre.i = trunc i64 %i.cz to i32
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val50, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !12
  %i.ek = lshr i32 %i.ej, %.pre.i
  %i.el = getelementptr [4 x i8], ptr %i.b, i64 %.val51
  %i.em = getelementptr i8, ptr %i.el, i64 -4
  store i32 %i.ek, ptr %i.em, align 4, !tbaa !12
  %.pre129 = load i32, ptr %i.b, align 4, !tbaa !12
  br label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit

.preheader.i:                                     ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit
  %.not5.i = icmp eq i64 %.val51, 0
  br i1 %.not5.i, label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit, label %.lr.ph4.i.preheader

.lr.ph4.i.preheader:                              ; preds = %.preheader.i
  %i.en = add i64 %.val51, 4294967295
  %i.eo = and i64 %i.en, 4294967295
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.val50, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !12 ; 2 uses
  store i32 %i.eq, ptr %i.b, align 4, !tbaa !12
  br label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit

_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit: ; preds = %.lr.ph4.i.preheader, %.preheader1.i, %.preheader.i
  %i.er = phi i32 [ %i.eq, %.lr.ph4.i.preheader ], [ %.pre129, %.preheader1.i ], [ %i.cs, %.preheader.i ] ; 2 uses
  %i.es = trunc i32 %i.er to i8
  %i.et = add i8 %i.es, 48
  %i.eu = add i64 %.034, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 %.034
  store i8 %i.et, ptr %i.ev, align 1, !tbaa !29
  %.pr = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.ew = icmp eq i64 %.pr, 0
  br i1 %i.ew, label %.critedge4, label %.lr.ph116

.lr.ph116:                                        ; preds = %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit, %bb.z
  %i.ex = phi i64 [ %i.fc, %bb.z ], [ %.pr, %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit ] ; 3 uses
  %i.ey = getelementptr [4 x i8], ptr %i.dc, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 -4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !12
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.z, label %.critedge4

bb.z:                                             ; preds = %.lr.ph116
  %i.fc = add i64 %i.ex, -1                       ; 3 uses
  store i64 %i.fc, ptr %i.h, align 8, !tbaa !22
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %.critedge4, label %.lr.ph116, !llvm.loop !81

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.fe = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %i.fe, %i.ci
  br i1 %.not.i.i.i98, label %.body86, label %bb.ae

.critedge4:                                       ; preds = %.lr.ph116, %bb.z, %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit
  %i.ff = phi i64 [ 0, %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit ], [ %i.ex, %.lr.ph116 ], [ 0, %bb.z ]
  br label %bb.q, !llvm.loop !82

.critedge:                                        ; preds = %bb.q, %bb.r
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 %.034
  store i8 0, ptr %i.fg, align 1, !tbaa !29
  %i.fh = add i64 %.034, -1                       ; 5 uses
  %i.fi = lshr i64 %i.fh, 1
  %i.fj = and i64 %i.fh, 1
  %i.fk = add nuw i64 %i.fi, %i.fj                ; 5 uses
  %.not121 = icmp eq i64 %i.fk, 0
  br i1 %.not121, label %._crit_edge, label %.lr.ph119.preheader

.lr.ph119.preheader:                              ; preds = %.critedge
  %xtraiter = and i64 %i.fk, 1
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %.lr.ph119.epil.preheader, label %.lr.ph119.preheader.new

.lr.ph119.preheader.new:                          ; preds = %.lr.ph119.preheader
  %unroll_iter = and i64 %i.fk, -2
  br label %.lr.ph119

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph119
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph119.epil.preheader

.lr.ph119.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph119.preheader
  %.0118.epil.init = phi i64 [ 0, %.lr.ph119.preheader ], [ %i.gk, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod187 = trunc i64 %i.fk to i1
  call void @llvm.assume(i1 %lcmp.mod187)
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 %.0118.epil.init ; 2 uses
  %i.fn = sub i64 %i.fh, %.0118.epil.init
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 %i.fn ; 2 uses
  %i.fp = load i8, ptr %i.fm, align 1, !tbaa !29
  %i.fq = load i8, ptr %i.fo, align 1, !tbaa !29
  store i8 %i.fq, ptr %i.fm, align 1, !tbaa !29
  store i8 %i.fp, ptr %i.fo, align 1, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph119.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %.not.i.i.i = icmp eq ptr %i.cu, %i.ci
  br i1 %.not.i.i.i, label %_ZN4lean6bufferIjLm16EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.fr = load i64, ptr %i.cg, align 8, !tbaa !23
  %i.fs = shl i64 %i.fr, 2
  call void @_ZdaPvm(ptr noundef nonnull %i.cu, i64 noundef %i.fs) #14
  %.pre125 = load ptr, ptr %5, align 8, !tbaa !21
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit

_ZN4lean6bufferIjLm16EED2Ev.exit:                 ; preds = %._crit_edge, %bb.ab
  %i.ft = phi ptr [ %i.ct, %._crit_edge ], [ %.pre125, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %.not.i.i.i94 = icmp eq ptr %i.ft, %i.ck
  br i1 %.not.i.i.i94, label %_ZN4lean6bufferIjLm16EED2Ev.exit95, label %bb.ac

bb.ac:                                            ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit
  %i.fu = load i64, ptr %i.cm, align 8, !tbaa !23
  %i.fv = shl i64 %i.fu, 2
  call void @_ZdaPvm(ptr noundef %i.ft, i64 noundef %i.fv) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit95

_ZN4lean6bufferIjLm16EED2Ev.exit95:               ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.fw = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.fw, %i.g
  br i1 %.not.i.i.i96, label %_ZN4lean6bufferIjLm16EED2Ev.exit97, label %bb.ad

bb.ad:                                            ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit95
  %i.fx = load i64, ptr %i.i, align 8, !tbaa !23
  %i.fy = shl i64 %i.fx, 2
  call void @_ZdaPvm(ptr noundef %i.fw, i64 noundef %i.fy) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit97

_ZN4lean6bufferIjLm16EED2Ev.exit97:               ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit95, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.ag

.lr.ph119:                                        ; preds = %.lr.ph119, %.lr.ph119.preheader.new
  %.0118 = phi i64 [ 0, %.lr.ph119.preheader.new ], [ %i.gk, %.lr.ph119 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph119.preheader.new ], [ %niter.next.1, %.lr.ph119 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 %.0118 ; 2 uses
  %i.ga = sub i64 %i.fh, %.0118
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ga ; 2 uses
  %i.gc = load i8, ptr %i.fz, align 1, !tbaa !29
  %i.gd = load i8, ptr %i.gb, align 1, !tbaa !29
  store i8 %i.gd, ptr %i.fz, align 1, !tbaa !29
  store i8 %i.gc, ptr %i.gb, align 1, !tbaa !29
  %i.ge = or disjoint i64 %.0118, 1               ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ge ; 2 uses
  %i.gg = sub i64 %i.fh, %i.ge
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 %i.gg ; 2 uses
  %i.gi = load i8, ptr %i.gf, align 1, !tbaa !29
  %i.gj = load i8, ptr %i.gh, align 1, !tbaa !29
  store i8 %i.gj, ptr %i.gf, align 1, !tbaa !29
  store i8 %i.gi, ptr %i.gh, align 1, !tbaa !29
  %i.gk = add nuw i64 %.0118, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph119, !llvm.loop !83

bb.ae:                                            ; preds = %bb.aa
  %i.gl = load i64, ptr %i.cg, align 8, !tbaa !23
  %i.gm = shl i64 %i.gl, 2
  call void @_ZdaPvm(ptr noundef %i.fe, i64 noundef %i.gm) #14
  br label %.body86

.body86:                                          ; preds = %bb.ae, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.gn = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.gn, %i.ck
  br i1 %.not.i.i.i100, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body86, %bb.p
  %.sink171 = phi ptr [ %i.an, %bb.p ], [ %i.cm, %.body86 ]
  %.sink = phi ptr [ %i.bi, %bb.p ], [ %i.gn, %.body86 ]
  %.pn45.pn.pn.ph = phi { ptr, i32 } [ %i.bh, %bb.p ], [ %lpad.phi, %.body86 ]
  %i.go = load i64, ptr %.sink171, align 8, !tbaa !23
  %i.gp = shl i64 %i.go, 2
  call void @_ZdaPvm(ptr noundef %.sink, i64 noundef %i.gp) #14
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body86, %bb.p
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.p ], [ %lpad.phi, %.body86 ], [ %.pn45.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.gq = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.gq, %i.g
  br i1 %.not.i.i.i102, label %_ZN4lean6bufferIjLm16EED2Ev.exit103, label %bb.af

bb.af:                                            ; preds = %.body
  %i.gr = load i64, ptr %i.i, align 8, !tbaa !23
  %i.gs = shl i64 %i.gr, 2
  call void @_ZdaPvm(ptr noundef %i.gq, i64 noundef %i.gs) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit103

_ZN4lean6bufferIjLm16EED2Ev.exit103:              ; preds = %.body, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %common.resume

bb.ag:                                            ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit97, %bb.b
  ret ptr %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean6bufferIjLm16EE6resizeEmRKj(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.g = shl i64 %1, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #16 ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.k = icmp ugt i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !32

bb.d:                                             ; preds = %bb.c
  %.idx.i.i = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr align 4 %i.i, i64 %.idx.i.i, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %bb.f, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.i, align 4, !tbaa !12
  store i32 %i.m, ptr %i.h, align 4, !tbaa !12
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.n
  br i1 %.not.i.i.i.i, label %_ZN4lean6bufferIjLm16EE12set_capacityEm.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i
  %i.o = load i64, ptr %i.d, align 8, !tbaa !23
  %i.p = shl i64 %i.o, 2
  tail call void @_ZdaPvm(ptr noundef %i.i, i64 noundef %i.p) #14
  br label %_ZN4lean6bufferIjLm16EE12set_capacityEm.exit.i

_ZN4lean6bufferIjLm16EE12set_capacityEm.exit.i:   ; preds = %bb.g, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  store i64 %1, ptr %i.d, align 8, !tbaa !23
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4lean6bufferIjLm16EE12set_capacityEm.exit.i, %bb.b
  %i.q = phi i64 [ %i.e, %bb.b ], [ %1, %_ZN4lean6bufferIjLm16EE12set_capacityEm.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %i.a, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN4lean6bufferIjLm16EE9push_backERKj.exit
  %i.s = phi i64 [ %i.q, %.lr.ph ], [ %i.ae, %_ZN4lean6bufferIjLm16EE9push_backERKj.exit ] ; 4 uses
  %i.t = phi i64 [ %.pre, %.lr.ph ], [ %i.aj, %_ZN4lean6bufferIjLm16EE9push_backERKj.exit ] ; 2 uses
  %.01420 = phi i64 [ %i.b, %.lr.ph ], [ %i.ak, %_ZN4lean6bufferIjLm16EE9push_backERKj.exit ]
  %.not.i = icmp ult i64 %i.t, %i.s
  br i1 %.not.i, label %._crit_edge.i, label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4lean6bufferIjLm16EE9push_backERKj.exit
end_hunk_1
