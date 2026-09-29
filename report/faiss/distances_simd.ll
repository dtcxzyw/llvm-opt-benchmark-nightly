Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/distances_simd?download=true
inline.NumInlined: 164
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5faiss8fvec_addILNS_9SIMDLevelE0EEEvmPKfS3_Pf:bb.a
.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i64 %0, -8                           ; 2 uses
  %i.f = lshr i64 %i.e, 3                         ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, 4611686018427387902
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %i.i = and i64 %i.e, 8
  %lcmp.mod.not.not = icmp eq i64 %i.i, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.041.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bl, %.preheader.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod50 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod50)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.041.epil.init ; 2 uses
  %.sroa.729.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.041.epil.init ; 2 uses
  %.sroa.721.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.041.epil.init ; 2 uses
  %i.m = load <4 x float>, ptr %i.j, align 1
  %i.n = load <4 x float>, ptr %i.k, align 1
  %i.o = fadd <4 x float> %i.m, %i.n
  %.sroa.737.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load <4 x float>, ptr %.sroa.729.0..sroa_idx.epil, align 1
  %i.q = load <4 x float>, ptr %.sroa.721.0..sroa_idx.epil, align 1
  %i.r = fadd <4 x float> %i.p, %i.q
  store <4 x float> %i.o, ptr %i.l, align 1
  store <4 x float> %i.r, ptr %.sroa.737.0..sroa_idx.epil, align 1
  %i.s = add nuw i64 %.041.epil.init, 8
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.bl, %.preheader.loopexit.unr-lcssa ], [ %i.s, %.lr.ph.epil.preheader ] ; 6 uses
  %i.t = icmp ult i64 %.0.lcssa, %0
  br i1 %i.t, label %.lr.ph43.preheader, label %._crit_edge

.lr.ph43.preheader:                               ; preds = %.preheader
  %i.u = sub nuw i64 %0, %.0.lcssa                ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 12
  br i1 %min.iters.check, label %.lr.ph43.preheader48, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph43.preheader
  %i.v = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.v, -32
  %i.w = sub i64 %i.a, %i.c
  %diff.check44 = icmp ugt i64 %i.w, -32
  %conflict.rdx = or i1 %diff.check, %diff.check44
  br i1 %conflict.rdx, label %.lr.ph43.preheader48, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -8                       ; 3 uses
  %i.x = add i64 %.0.lcssa, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = add nuw i64 %.0.lcssa, %index            ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <4 x float>, ptr %i.z, align 4, !tbaa !14
  %wide.load45 = load <4 x float>, ptr %i.aa, align 4, !tbaa !14
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load46 = load <4 x float>, ptr %i.ab, align 4, !tbaa !14
  %wide.load47 = load <4 x float>, ptr %i.ac, align 4, !tbaa !14
  %i.ad = fadd <4 x float> %wide.load, %wide.load46
  %i.ae = fadd <4 x float> %wide.load45, %wide.load47
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x float> %i.ad, ptr %i.af, align 4, !tbaa !14
  store <4 x float> %i.ae, ptr %i.ag, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph43.preheader48

.lr.ph43.preheader48:                             ; preds = %vector.memcheck, %.lr.ph43.preheader, %middle.block
  %.142.ph = phi i64 [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %.lr.ph43.preheader ], [ %i.x, %middle.block ] ; 4 uses
  %i.ai = sub i64 %0, %.142.ph
  %xtraiter51 = and i64 %i.ai, 3                  ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph43.prol.loopexit, label %.lr.ph43.prol

.lr.ph43.prol:                                    ; preds = %.lr.ph43.preheader48, %.lr.ph43.prol
  %.142.prol = phi i64 [ %i.ap, %.lr.ph43.prol ], [ %.142.ph, %.lr.ph43.preheader48 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph43.prol ], [ 0, %.lr.ph43.preheader48 ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.142.prol
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !14
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.142.prol
  %i.am = load float, ptr %i.al, align 4, !tbaa !14
  %i.an = fadd float %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.142.prol
  store float %i.an, ptr %i.ao, align 4, !tbaa !14
  %i.ap = add nuw i64 %.142.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter51
  br i1 %prol.iter.cmp.not, label %.lr.ph43.prol.loopexit, label %.lr.ph43.prol, !llvm.loop !84

.lr.ph43.prol.loopexit:                           ; preds = %.lr.ph43.prol, %.lr.ph43.preheader48
  %.142.unr = phi i64 [ %.142.ph, %.lr.ph43.preheader48 ], [ %i.ap, %.lr.ph43.prol ]
  %i.aq = sub i64 %.142.ph, %0
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge, label %.lr.ph43

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.041 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bl, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.041 ; 2 uses
  %.sroa.729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.041 ; 2 uses
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.041 ; 2 uses
  %i.av = load <4 x float>, ptr %i.as, align 1
  %i.aw = load <4 x float>, ptr %i.at, align 1
  %i.ax = fadd <4 x float> %i.av, %i.aw
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load <4 x float>, ptr %.sroa.729.0..sroa_idx, align 1
  %i.az = load <4 x float>, ptr %.sroa.721.0..sroa_idx, align 1
  %i.ba = fadd <4 x float> %i.ay, %i.az
  store <4 x float> %i.ax, ptr %i.au, align 1
  store <4 x float> %i.ba, ptr %.sroa.737.0..sroa_idx, align 1
  %i.bb = or disjoint i64 %.041, 8                ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb ; 2 uses
  %.sroa.729.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bb ; 2 uses
  %.sroa.721.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bb ; 2 uses
  %i.bf = load <4 x float>, ptr %i.bc, align 1
  %i.bg = load <4 x float>, ptr %i.bd, align 1
  %i.bh = fadd <4 x float> %i.bf, %i.bg
  %.sroa.737.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load <4 x float>, ptr %.sroa.729.0..sroa_idx.1, align 1
  %i.bj = load <4 x float>, ptr %.sroa.721.0..sroa_idx.1, align 1
  %i.bk = fadd <4 x float> %i.bi, %i.bj
  store <4 x float> %i.bh, ptr %i.be, align 1
  store <4 x float> %i.bk, ptr %.sroa.737.0..sroa_idx.1, align 1
  %i.bl = add nuw i64 %.041, 16                   ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !85

.lr.ph43:                                         ; preds = %.lr.ph43.prol.loopexit, %.lr.ph43
  %.142 = phi i64 [ %i.cn, %.lr.ph43 ], [ %.142.unr, %.lr.ph43.prol.loopexit ] ; 7 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.142
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !14
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.142
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !14
  %i.bq = fadd float %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.142
  store float %i.bq, ptr %i.br, align 4, !tbaa !14
  %i.bs = add nuw i64 %.142, 1                    ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !14
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bs
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !14
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bs
  store float %i.bx, ptr %i.by, align 4, !tbaa !14
  %i.bz = add nuw i64 %.142, 2                    ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !14
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bz
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !14
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bz
  store float %i.ce, ptr %i.cf, align 4, !tbaa !14
  %i.cg = add nuw i64 %.142, 3                    ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !14
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cg
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !14
  %i.cl = fadd float %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cg
  store float %i.cl, ptr %i.cm, align 4, !tbaa !14
  %i.cn = add nuw i64 %.142, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cn, %0
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph43, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph43.prol.loopexit, %.lr.ph43, %middle.block, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5faiss8fvec_addILNS_9SIMDLevelE0EEEvmPKffPf(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = icmp ugt i64 %0, 7
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %0, -8                           ; 3 uses
  %i.e = lshr i64 %i.d, 3
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.d, 24
  br i1 %min.iters.check, label %.lr.ph.preheader55, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.g = shl i64 %i.d, 2
  %i.h = and i64 %i.g, -32
  %4 = add i64 %i.h, 32                           ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %4
  %scevgep39 = getelementptr i8, ptr %1, i64 %4
  %bound0 = icmp ult ptr %3, %scevgep39
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader55, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0 ; 2 uses
  %i.j = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <16 x i32> zeroinitializer
  %i.k = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl nuw i64 %index, 3                    ; 5 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l ; 8 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load float, ptr %i.m, align 1, !alias.scope !95
  %i.u = load float, ptr %i.o, align 1, !alias.scope !95
  %i.v = load float, ptr %i.q, align 1, !alias.scope !95
  %i.w = load float, ptr %i.s, align 1, !alias.scope !95
  %i.x = insertelement <4 x float> poison, float %i.t, i64 0
  %i.y = insertelement <4 x float> %i.x, float %i.u, i64 1
  %i.z = insertelement <4 x float> %i.y, float %i.v, i64 2
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 100
  %i.af = load float, ptr %i.ab, align 1, !alias.scope !95
  %i.ag = load float, ptr %i.ac, align 1, !alias.scope !95
  %i.ah = load float, ptr %i.ad, align 1, !alias.scope !95
  %i.ai = load float, ptr %i.ae, align 1, !alias.scope !95
  %i.aj = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 1
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.ar = load float, ptr %i.an, align 1, !alias.scope !95
  %i.as = load float, ptr %i.ao, align 1, !alias.scope !95
  %i.at = load float, ptr %i.ap, align 1, !alias.scope !95
  %i.au = load float, ptr %i.aq, align 1, !alias.scope !95
  %i.av = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 1
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 2
  %i.ay = insertelement <4 x float> %i.ax, float %i.au, i64 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 108
  %i.bd = load float, ptr %i.az, align 1, !alias.scope !95
  %i.be = load float, ptr %i.ba, align 1, !alias.scope !95
  %i.bf = load float, ptr %i.bb, align 1, !alias.scope !95
  %i.bg = load float, ptr %i.bc, align 1, !alias.scope !95
  %i.bh = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.bp = load float, ptr %i.bl, align 1, !alias.scope !95
  %i.bq = load float, ptr %i.bm, align 1, !alias.scope !95
  %i.br = load float, ptr %i.bn, align 1, !alias.scope !95
  %i.bs = load float, ptr %i.bo, align 1, !alias.scope !95
  %i.bt = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 116
  %i.cb = load float, ptr %i.bx, align 1, !alias.scope !95
  %i.cc = load float, ptr %i.by, align 1, !alias.scope !95
  %i.cd = load float, ptr %i.bz, align 1, !alias.scope !95
  %i.ce = load float, ptr %i.ca, align 1, !alias.scope !95
  %i.cf = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.cn = load float, ptr %i.cj, align 1, !alias.scope !95
  %i.co = load float, ptr %i.ck, align 1, !alias.scope !95
  %i.cp = load float, ptr %i.cl, align 1, !alias.scope !95
  %i.cq = load float, ptr %i.cm, align 1, !alias.scope !95
  %i.cr = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 92
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 124
  %i.cz = load float, ptr %i.cv, align 1, !alias.scope !95
  %i.da = load float, ptr %i.cw, align 1, !alias.scope !95
  %i.db = load float, ptr %i.cx, align 1, !alias.scope !95
  %i.dc = load float, ptr %i.cy, align 1, !alias.scope !95
  %i.dd = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 1
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 2
  %i.dg = insertelement <4 x float> %i.df, float %i.dc, i64 3
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.l
  %i.di = shufflevector <4 x float> %i.aa, <4 x float> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dj = shufflevector <4 x float> %i.ay, <4 x float> %i.bk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dk = shufflevector <8 x float> %i.di, <8 x float> %i.dj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dl = fadd <16 x float> %i.j, %i.dk
  %i.dm = shufflevector <4 x float> %i.bw, <4 x float> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dn = shufflevector <4 x float> %i.cu, <4 x float> %i.dg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.do = shufflevector <8 x float> %i.dm, <8 x float> %i.dn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dp = fadd <16 x float> %i.k, %i.do
  %interleaved.vec = shufflevector <16 x float> %i.dl, <16 x float> %i.dp, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.dh, align 1, !alias.scope !96, !noalias !95
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader55

.lr.ph.preheader55:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.036.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %i.dr = insertelement <4 x float> poison, float %2, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %middle.block ], [ %i.et, %.lr.ph ] ; 5 uses
  %i.dt = icmp ult i64 %.0.lcssa, %0
  br i1 %i.dt, label %.lr.ph38.preheader, label %._crit_edge

.lr.ph38.preheader:                               ; preds = %.preheader
  %i.du = sub nuw i64 %0, %.0.lcssa               ; 3 uses
  %min.iters.check42 = icmp ult i64 %i.du, 8
  %i.dv = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.dv, -32
  %or.cond = or i1 %min.iters.check42, %diff.check
  br i1 %or.cond, label %.lr.ph38.preheader54, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph38.preheader
  %n.vec44 = and i64 %i.du, -8                    ; 3 uses
  %i.dw = add i64 %.0.lcssa, %n.vec44
  %broadcast.splatinsert45 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat46 = shufflevector <4 x float> %broadcast.splatinsert45, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph43
  %index48 = phi i64 [ 0, %vector.ph43 ], [ %index.next50, %vector.body47 ] ; 2 uses
  %i.dx = add nuw i64 %.0.lcssa, %index48         ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load = load <4 x float>, ptr %i.dy, align 4, !tbaa !14
  %wide.load49 = load <4 x float>, ptr %i.dz, align 4, !tbaa !14
  %i.ea = fadd <4 x float> %broadcast.splat46, %wide.load
  %i.eb = fadd <4 x float> %broadcast.splat46, %wide.load49
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dx ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x float> %i.ea, ptr %i.ec, align 4, !tbaa !14
  store <4 x float> %i.eb, ptr %i.ed, align 4, !tbaa !14
  %index.next50 = add nuw i64 %index48, 8         ; 2 uses
  %i.ee = icmp eq i64 %index.next50, %n.vec44
  br i1 %i.ee, label %middle.block51, label %vector.body47, !llvm.loop !91

middle.block51:                                   ; preds = %vector.body47
  %cmp.n52 = icmp eq i64 %i.du, %n.vec44
  br i1 %cmp.n52, label %._crit_edge, label %.lr.ph38.preheader54

.lr.ph38.preheader54:                             ; preds = %.lr.ph38.preheader, %middle.block51
  %.137.ph = phi i64 [ %.0.lcssa, %.lr.ph38.preheader ], [ %i.dw, %middle.block51 ] ; 4 uses
  %i.ef = sub i64 %0, %.137.ph
  %xtraiter = and i64 %i.ef, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph38.prol.loopexit, label %.lr.ph38.prol

.lr.ph38.prol:                                    ; preds = %.lr.ph38.preheader54, %.lr.ph38.prol
  %.137.prol = phi i64 [ %i.ek, %.lr.ph38.prol ], [ %.137.ph, %.lr.ph38.preheader54 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph38.prol ], [ 0, %.lr.ph38.preheader54 ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.137.prol
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !14
  %i.ei = fadd float %2, %i.eh
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.137.prol
  store float %i.ei, ptr %i.ej, align 4, !tbaa !14
  %i.ek = add nuw i64 %.137.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph38.prol.loopexit, label %.lr.ph38.prol, !llvm.loop !92
end_hunk_0
