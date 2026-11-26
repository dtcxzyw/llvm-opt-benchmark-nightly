Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/distances_simd?download=true
inline.NumInlined: 164
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5faiss8fvec_addILNS_9SIMDLevelE0EEEvmPKffPf:bb.a
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 1
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 2
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 92
  %i.db = getelementptr inbounds nuw i8, ptr %i.u, i64 124
  %i.dc = load float, ptr %i.cy, align 1, !alias.scope !95
  %i.dd = load float, ptr %i.cz, align 1, !alias.scope !95
  %i.de = load float, ptr %i.da, align 1, !alias.scope !95
  %i.df = load float, ptr %i.db, align 1, !alias.scope !95
  %i.dg = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.dh = insertelement <4 x float> %i.dg, float %i.dd, i64 1
  %i.di = insertelement <4 x float> %i.dh, float %i.de, i64 2
  %i.dj = insertelement <4 x float> %i.di, float %i.df, i64 3
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.o
  %i.dl = shufflevector <4 x float> %i.ad, <4 x float> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dm = shufflevector <4 x float> %i.bb, <4 x float> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dn = shufflevector <8 x float> %i.dl, <8 x float> %i.dm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.do = fadd <16 x float> %i.m, %i.dn
  %i.dp = shufflevector <4 x float> %i.bz, <4 x float> %i.cl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dq = shufflevector <4 x float> %i.cx, <4 x float> %i.dj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dr = shufflevector <8 x float> %i.dp, <8 x float> %i.dq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ds = fadd <16 x float> %i.n, %i.dr
  %interleaved.vec = shufflevector <16 x float> %i.do, <16 x float> %i.ds, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.dk, align 1, !alias.scope !96, !noalias !95
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader56

.lr.ph.preheader56:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.036.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  %i.du = insertelement <4 x float> poison, float %2, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.l, %middle.block ], [ %i.ew, %.lr.ph ] ; 5 uses
  %i.dw = icmp ult i64 %.0.lcssa, %0
  br i1 %i.dw, label %.lr.ph38.preheader, label %._crit_edge

.lr.ph38.preheader:                               ; preds = %.preheader
  %i.dx = sub nuw i64 %0, %.0.lcssa               ; 3 uses
  %min.iters.check42 = icmp ult i64 %i.dx, 8
  %i.dy = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.dy, -32
  %or.cond = or i1 %min.iters.check42, %diff.check
  br i1 %or.cond, label %.lr.ph38.preheader55, label %vector.ph44

vector.ph44:                                      ; preds = %.lr.ph38.preheader
  %n.vec45 = and i64 %i.dx, -8                    ; 3 uses
  %i.dz = add i64 %.0.lcssa, %n.vec45
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph44
  %index49 = phi i64 [ 0, %vector.ph44 ], [ %index.next51, %vector.body48 ] ; 2 uses
  %i.ea = add nuw i64 %.0.lcssa, %index49         ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load = load <4 x float>, ptr %i.eb, align 4, !tbaa !14
  %wide.load50 = load <4 x float>, ptr %i.ec, align 4, !tbaa !14
  %i.ed = fadd <4 x float> %broadcast.splat47, %wide.load
  %i.ee = fadd <4 x float> %broadcast.splat47, %wide.load50
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ea ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <4 x float> %i.ed, ptr %i.ef, align 4, !tbaa !14
  store <4 x float> %i.ee, ptr %i.eg, align 4, !tbaa !14
  %index.next51 = add nuw i64 %index49, 8         ; 2 uses
  %i.eh = icmp eq i64 %index.next51, %n.vec45
  br i1 %i.eh, label %middle.block52, label %vector.body48, !llvm.loop !91

middle.block52:                                   ; preds = %vector.body48
  %cmp.n53 = icmp eq i64 %i.dx, %n.vec45
  br i1 %cmp.n53, label %._crit_edge, label %.lr.ph38.preheader55

.lr.ph38.preheader55:                             ; preds = %.lr.ph38.preheader, %middle.block52
  %.137.ph = phi i64 [ %.0.lcssa, %.lr.ph38.preheader ], [ %i.dz, %middle.block52 ] ; 4 uses
  %i.ei = sub i64 %0, %.137.ph
  %xtraiter = and i64 %i.ei, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph38.prol.loopexit, label %.lr.ph38.prol

.lr.ph38.prol:                                    ; preds = %.lr.ph38.preheader55, %.lr.ph38.prol
  %.137.prol = phi i64 [ %i.en, %.lr.ph38.prol ], [ %.137.ph, %.lr.ph38.preheader55 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph38.prol ], [ 0, %.lr.ph38.preheader55 ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.137.prol
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !14
  %i.el = fadd float %2, %i.ek
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.137.prol
  store float %i.el, ptr %i.em, align 4, !tbaa !14
  %i.en = add nuw i64 %.137.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph38.prol.loopexit, label %.lr.ph38.prol, !llvm.loop !92

.lr.ph38.prol.loopexit:                           ; preds = %.lr.ph38.prol, %.lr.ph38.preheader55
  %.137.unr = phi i64 [ %.137.ph, %.lr.ph38.preheader55 ], [ %i.en, %.lr.ph38.prol ]
  %i.eo = sub i64 %.137.ph, %0
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph.preheader56, %.lr.ph
  %.036 = phi i64 [ %i.ew, %.lr.ph ], [ %.036.ph, %.lr.ph.preheader56 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.036 ; 2 uses
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.036 ; 2 uses
  %i.es = load <4 x float>, ptr %i.eq, align 1
  %i.et = fadd <4 x float> %i.dv, %i.es
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.eu = load <4 x float>, ptr %.sroa.719.0..sroa_idx, align 1
  %i.ev = fadd <4 x float> %i.dv, %i.eu
  store <4 x float> %i.et, ptr %i.er, align 1
  store <4 x float> %i.ev, ptr %.sroa.727.0..sroa_idx, align 1
  %i.ew = add nuw i64 %.036, 8                    ; 3 uses
  %i.ex = or disjoint i64 %i.ew, 7
  %i.ey = icmp ult i64 %i.ex, %0
  br i1 %i.ey, label %.lr.ph, label %.preheader, !llvm.loop !93

.lr.ph38:                                         ; preds = %.lr.ph38.prol.loopexit, %.lr.ph38
  %.137 = phi i64 [ %i.fs, %.lr.ph38 ], [ %.137.unr, %.lr.ph38.prol.loopexit ] ; 6 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.137
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !14
  %i.fb = fadd float %2, %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.137
  store float %i.fb, ptr %i.fc, align 4, !tbaa !14
  %i.fd = add nuw i64 %.137, 1                    ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !14
  %i.fg = fadd float %2, %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fd
  store float %i.fg, ptr %i.fh, align 4, !tbaa !14
  %i.fi = add nuw i64 %.137, 2                    ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !14
  %i.fl = fadd float %2, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fi
  store float %i.fl, ptr %i.fm, align 4, !tbaa !14
  %i.fn = add nuw i64 %.137, 3                    ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fn
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !14
  %i.fq = fadd float %2, %i.fp
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fn
  store float %i.fq, ptr %i.fr, align 4, !tbaa !14
  %i.fs = add nuw i64 %.137, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fs, %0
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph38, !llvm.loop !94

._crit_edge:                                      ; preds = %.lr.ph38.prol.loopexit, %.lr.ph38, %middle.block52, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss27compute_PQ_dis_tables_dsub2ILNS_9SIMDLevelE0EEEvmmPKfmS3_bPf(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x float], align 32             ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca [8 x float], align 32             ; 89 uses
  %i.c = lshr i64 %0, 1                           ; 5 uses
  %i.d = and i64 %1, 7
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.preheader141, label %bb.b

.preheader141:                                    ; preds = %bb.a
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge158.split, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader141
  %.not159 = icmp eq i64 %1, 0
  %i.f = shl i64 %1, 1                            ; 40 uses
  %.not160 = icmp eq i64 %3, 0
  %.idx15.i101 = mul i64 %1, 12
  %.idx16.i93 = shl i64 %1, 3
  br i1 %.not159, label %._crit_edge158.split, label %.lr.ph155.preheader

.lr.ph155.preheader:                              ; preds = %.lr.ph157
  %.sroa.0112.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 8 uses
  %.sroa.0112.sroa.80.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  %.sroa.0112.sroa.96.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 8 uses
  %.sroa.0112.sroa.112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  %.sroa.0112.sroa.128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 8 uses
  %.sroa.0112.sroa.144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 8 uses
  %.sroa.0112.sroa.160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 7 uses
  %.sroa.0112.sroa.80.0..sroa_idx400 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  %.sroa.0112.sroa.112.0..sroa_idx460 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  %.sroa.0112.sroa.144.0..sroa_idx520 = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 8 uses
  %.sroa.0112.sroa.160.0..sroa_idx550 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %.lr.ph155

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.g, ptr %7, align 8, !tbaa !118
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !24
  store i8 0, ptr %i.g, align 8, !tbaa !25
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17 ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64                ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.l)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %7, align 8, !tbaa !26
  %i.n = load i64, ptr %i.h, align 8, !tbaa !24
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.m, i64 noundef %i.n, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.k)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.q = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss27compute_PQ_dis_tables_dsub2ILNS_9SIMDLevelE0EEEvmmPKfmS3_bPf, ptr noundef nonnull @.str.2, i32 noundef 149)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #18
          to label %bb.y unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.r, %bb.h ]
  %i.s = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.u = load i64, ptr %i.g, align 8, !tbaa !25
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  resume { ptr, i32 } %.pn

..loopexit_crit_edge:                             ; preds = %._crit_edge
  %i.w = icmp ult i64 %i.ac, %i.c
  %indvars.iv.next = add nuw i64 %indvars.iv, 4
  %indvar.next = add i32 %indvar, 1
  br i1 %i.w, label %.lr.ph155, label %._crit_edge158.split, !llvm.loop !97

._crit_edge158.split:                             ; preds = %..loopexit_crit_edge, %.lr.ph157, %.preheader141
  ret void

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %..loopexit_crit_edge
  %indvar = phi i32 [ 0, %.lr.ph155.preheader ], [ %indvar.next, %..loopexit_crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph155.preheader ], [ %indvars.iv.next, %..loopexit_crit_edge ] ; 2 uses
  %.068156 = phi i64 [ 0, %.lr.ph155.preheader ], [ %i.ac, %..loopexit_crit_edge ] ; 7 uses
  %i.x = mul i32 %indvar, -4                      ; 2 uses
  %umin652 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.c)
  %i.y = trunc i64 %umin652 to i32                ; 10 uses
  %i.z = add i32 %i.x, %i.y                       ; 8 uses
  %i.aa = add i32 %i.x, -1
  %i.ab = add i32 %i.aa, %i.y                     ; 8 uses
  %i.ac = add nuw i64 %.068156, 4                 ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.c) ; 3 uses
  %i.ad = trunc i64 %.sroa.speculated to i32
  %i.ae = mul i64 %.068156, %1
  %i.af = trunc i64 %.068156 to i32
  %i.ag = icmp slt i32 %i.af, %i.ad
  %sext = shl i64 %.sroa.speculated, 32
  %i.ah = ashr exact i64 %sext, 32                ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.ac
  %i.aj = sub i64 %.sroa.speculated, %.068156
  %.tr = trunc i64 %i.aj to i32
  %i.ak = shl i32 %.tr, 1                         ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %.idx77 = shl i64 %.068156, 3
  %invariant.gep149 = getelementptr i8, ptr %4, i64 %.idx77 ; 2 uses
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = sub i64 %i.ah, %.068156                 ; 2 uses
  %xtraiter = and i32 %i.y, 3                     ; 4 uses
  %i.ap = icmp ult i32 %i.ab, 3
  %unroll_iter = sub i32 %i.z, %xtraiter
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod653 = icmp ne i32 %xtraiter, 0
  %xtraiter664 = and i32 %i.y, 3                  ; 4 uses
  %i.aq = icmp ult i32 %i.ab, 3
  %unroll_iter668 = sub i32 %i.z, %xtraiter664
  %lcmp.mod666.not = icmp eq i32 %xtraiter664, 0
  %lcmp.mod667 = icmp ne i32 %xtraiter664, 0
  %xtraiter671 = and i32 %i.y, 3                  ; 4 uses
  %i.ar = icmp ult i32 %i.ab, 3
  %unroll_iter675 = sub i32 %i.z, %xtraiter671
  %lcmp.mod673.not = icmp eq i32 %xtraiter671, 0
  %lcmp.mod674 = icmp ne i32 %xtraiter671, 0
  %xtraiter678 = and i32 %i.y, 3                  ; 4 uses
  %i.as = icmp ult i32 %i.ab, 3
  %unroll_iter682 = sub i32 %i.z, %xtraiter678
  %lcmp.mod680.not = icmp eq i32 %xtraiter678, 0
  %lcmp.mod681 = icmp ne i32 %xtraiter678, 0
  %xtraiter685 = and i32 %i.y, 3                  ; 4 uses
  %i.at = icmp ult i32 %i.ab, 3
  %unroll_iter689 = sub i32 %i.z, %xtraiter685
  %lcmp.mod687.not = icmp eq i32 %xtraiter685, 0
  %lcmp.mod688 = icmp ne i32 %xtraiter685, 0
  %xtraiter692 = and i32 %i.y, 3                  ; 4 uses
  %i.au = icmp ult i32 %i.ab, 3
  %unroll_iter696 = sub i32 %i.z, %xtraiter692
  %lcmp.mod694.not = icmp eq i32 %xtraiter692, 0
  %lcmp.mod695 = icmp ne i32 %xtraiter692, 0
  %xtraiter699 = and i32 %i.y, 3                  ; 4 uses
  %i.av = icmp ult i32 %i.ab, 3
  %unroll_iter703 = sub i32 %i.z, %xtraiter699
  %lcmp.mod701.not = icmp eq i32 %xtraiter699, 0
  %lcmp.mod702 = icmp ne i32 %xtraiter699, 0
  %xtraiter706 = and i32 %i.y, 3                  ; 4 uses
  %i.aw = icmp ult i32 %i.ab, 3
  %unroll_iter710 = sub i32 %i.z, %xtraiter706
  %lcmp.mod708.not = icmp eq i32 %xtraiter706, 0
  %lcmp.mod709 = icmp ne i32 %xtraiter706, 0
  br label %.preheader140

.preheader140:                                    ; preds = %.lr.ph155, %._crit_edge
  %indvars.iv168 = phi i64 [ 0, %.lr.ph155 ], [ %indvars.iv.next169, %._crit_edge ] ; 3 uses
  %i.ax = add i64 %indvars.iv168, %i.ae           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br i1 %i.ag, label %.lr.ph.us.preheader, label %.preheader140.split.preheader

.preheader140.split.preheader:                    ; preds = %.preheader140
  %.sroa.0112.sroa.64.0.copyload = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %i.ay = load <4 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %i.az = load <4 x float>, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %i.ba = load <4 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  %.sroa.0112.sroa.128.0.copyload = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  %.sroa.0112.sroa.160.0.copyload = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload373 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %.sroa.0112.sroa.80.0.copyload403 = load float, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %.sroa.0112.sroa.96.0.copyload433 = load float, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %.sroa.0112.sroa.112.0.copyload463 = load float, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  %.sroa.0112.sroa.128.0.copyload493 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload523 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  %.sroa.0112.sroa.160.0.copyload553 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload375 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %.sroa.0112.sroa.96.0.copyload435 = load float, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %.sroa.0112.sroa.128.0.copyload495 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload525 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  %.sroa.0112.sroa.160.0.copyload555 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  %.sroa.0112.sroa.80.0.copyload405 = load float, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %.sroa.0112.sroa.112.0.copyload465 = load float, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload377 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %.sroa.0112.sroa.80.0.copyload407 = load float, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %.sroa.0112.sroa.96.0.copyload437 = load float, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %.sroa.0112.sroa.112.0.copyload467 = load float, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  %.sroa.0112.sroa.128.0.copyload497 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload527 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  %.sroa.0112.sroa.160.0.copyload557 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload379 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %i.bb = load <4 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %i.bc = load <4 x float>, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %i.bd = load <4 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  %.sroa.0112.sroa.128.0.copyload499 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %i.be = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload381 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %.sroa.0112.sroa.80.0.copyload411 = load float, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %.sroa.0112.sroa.96.0.copyload441 = load float, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %.sroa.0112.sroa.112.0.copyload471 = load float, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  %.sroa.0112.sroa.128.0.copyload501 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload531 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  %.sroa.0112.sroa.160.0.copyload561 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload383 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %.sroa.0112.sroa.96.0.copyload443 = load float, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %.sroa.0112.sroa.128.0.copyload503 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload533 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  %.sroa.0112.sroa.160.0.copyload563 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  %.sroa.0112.sroa.80.0.copyload413 = load float, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %.sroa.0112.sroa.112.0.copyload473 = load float, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload385 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %.sroa.0112.sroa.80.0.copyload415 = load float, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %.sroa.0112.sroa.96.0.copyload445 = load float, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %.sroa.0112.sroa.112.0.copyload475 = load float, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  %.sroa.0112.sroa.128.0.copyload505 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload535 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  %.sroa.0112.sroa.160.0.copyload565 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  %i.bf = insertelement <4 x float> <float poison, float undef, float poison, float undef>, float %.sroa.0112.sroa.64.0.copyload, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %.sroa.0112.sroa.64.0.copyload375, i64 2
  %i.bh = insertelement <4 x float> <float undef, float poison, float undef, float poison>, float %.sroa.0112.sroa.64.0.copyload373, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %.sroa.0112.sroa.64.0.copyload377, i64 3
  %i.bj = insertelement <4 x float> <float poison, float undef, float poison, float undef>, float %.sroa.0112.sroa.64.0.copyload379, i64 0
  %i.bk = insertelement <4 x float> %i.bj, float %.sroa.0112.sroa.64.0.copyload383, i64 2
  %i.bl = insertelement <4 x float> <float undef, float poison, float undef, float poison>, float %.sroa.0112.sroa.64.0.copyload381, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %.sroa.0112.sroa.64.0.copyload385, i64 3
  %i.bn = insertelement <4 x float> %i.az, float %.sroa.0112.sroa.80.0.copyload403, i64 1
  %i.bo = insertelement <4 x float> %i.bn, float %.sroa.0112.sroa.96.0.copyload435, i64 2
  %i.bp = insertelement <4 x float> %i.bo, float %.sroa.0112.sroa.80.0.copyload407, i64 3
  %i.bq = insertelement <4 x float> %i.ay, float %.sroa.0112.sroa.96.0.copyload433, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %.sroa.0112.sroa.80.0.copyload405, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %.sroa.0112.sroa.96.0.copyload437, i64 3
  %i.bt = insertelement <4 x float> %i.bc, float %.sroa.0112.sroa.80.0.copyload411, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %.sroa.0112.sroa.96.0.copyload443, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %.sroa.0112.sroa.80.0.copyload415, i64 3
  %i.bw = insertelement <4 x float> %i.bb, float %.sroa.0112.sroa.96.0.copyload441, i64 1
  %i.bx = insertelement <4 x float> %i.bw, float %.sroa.0112.sroa.80.0.copyload413, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %.sroa.0112.sroa.96.0.copyload445, i64 3
  %i.bz = insertelement <4 x float> poison, float %.sroa.0112.sroa.128.0.copyload, i64 0
  %i.ca = insertelement <4 x float> %i.bz, float %.sroa.0112.sroa.112.0.copyload463, i64 1
  %i.cb = insertelement <4 x float> %i.ca, float %.sroa.0112.sroa.128.0.copyload495, i64 2
  %i.cc = insertelement <4 x float> %i.cb, float %.sroa.0112.sroa.112.0.copyload467, i64 3
  %i.cd = insertelement <4 x float> %i.ba, float %.sroa.0112.sroa.128.0.copyload493, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %.sroa.0112.sroa.112.0.copyload465, i64 2
  %i.cf = insertelement <4 x float> %i.ce, float %.sroa.0112.sroa.128.0.copyload497, i64 3
  %i.cg = insertelement <4 x float> poison, float %.sroa.0112.sroa.128.0.copyload499, i64 0
  %i.ch = insertelement <4 x float> %i.cg, float %.sroa.0112.sroa.112.0.copyload471, i64 1
  %i.ci = insertelement <4 x float> %i.ch, float %.sroa.0112.sroa.128.0.copyload503, i64 2
  %i.cj = insertelement <4 x float> %i.ci, float %.sroa.0112.sroa.112.0.copyload475, i64 3
  %i.ck = insertelement <4 x float> %i.bd, float %.sroa.0112.sroa.128.0.copyload501, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %.sroa.0112.sroa.112.0.copyload473, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %.sroa.0112.sroa.128.0.copyload505, i64 3
  %i.cn = insertelement <4 x float> poison, float %.sroa.0112.sroa.160.0.copyload, i64 0
  %i.co = insertelement <4 x float> %i.cn, float %.sroa.0112.sroa.160.0.copyload553, i64 1
  %i.cp = insertelement <4 x float> %i.co, float %.sroa.0112.sroa.160.0.copyload555, i64 2
  %i.cq = insertelement <4 x float> %i.cp, float %.sroa.0112.sroa.160.0.copyload557, i64 3
  %i.cr = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cs = insertelement <4 x float> %i.cr, float %.sroa.0112.sroa.144.0.copyload531, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %.sroa.0112.sroa.144.0.copyload533, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %.sroa.0112.sroa.144.0.copyload535, i64 3
  %i.cv = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cw = insertelement <4 x float> %i.cv, float %.sroa.0112.sroa.160.0.copyload561, i64 1
  %i.cx = insertelement <4 x float> %i.cw, float %.sroa.0112.sroa.160.0.copyload563, i64 2
  %i.cy = insertelement <4 x float> %i.cx, float %.sroa.0112.sroa.160.0.copyload565, i64 3
  %i.cz = insertelement <2 x float> poison, float %.sroa.0112.sroa.144.0.copyload, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %.sroa.0112.sroa.144.0.copyload523, i64 1
  br label %.preheader

.lr.ph.us.preheader:                              ; preds = %.preheader140
  %i.db = shl i64 %i.ax, 1                        ; 2 uses
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.us.preheader.new

.lr.ph.us.preheader.new:                          ; preds = %.lr.ph.us.preheader, %.lr.ph.us.preheader.new
  %.064143.us = phi i64 [ %i.dv, %.lr.ph.us.preheader.new ], [ %i.db, %.lr.ph.us.preheader ] ; 2 uses
  %.065142.us = phi i64 [ %i.dt, %.lr.ph.us.preheader.new ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph.us.preheader.new ], [ 0, %.lr.ph.us.preheader ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us
  %i.de = load <2 x float>, ptr %i.dc, align 4, !tbaa !14
  store <2 x float> %i.de, ptr %i.dd, align 32, !tbaa !14
  %i.df = add i64 %.064143.us, %i.f               ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load <2 x float>, ptr %i.dg, align 4, !tbaa !14
  store <2 x float> %i.dj, ptr %i.di, align 8, !tbaa !14
  %i.dk = add i64 %i.df, %i.f                     ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load <2 x float>, ptr %i.dl, align 4, !tbaa !14
  store <2 x float> %i.do, ptr %i.dn, align 16, !tbaa !14
  %i.dp = add i64 %i.dk, %i.f                     ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = add nuw nsw i64 %.065142.us, 8          ; 2 uses
  %i.du = load <2 x float>, ptr %i.dq, align 4, !tbaa !14
  store <2 x float> %i.du, ptr %i.ds, align 8, !tbaa !14
  %i.dv = add i64 %i.dp, %i.f                     ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.preheader.new, !llvm.loop !98

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us.preheader
  %.064143.us.epil.init = phi i64 [ %i.db, %.lr.ph.us.preheader ], [ %i.dv, %._crit_edge.us.unr-lcssa ]
  %.065142.us.epil.init = phi i64 [ 0, %.lr.ph.us.preheader ], [ %i.dt, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod653)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.064143.us.epil = phi i64 [ %.064143.us.epil.init, %.epil.preheader ], [ %i.ea, %bb.j ] ; 2 uses
  %.065142.us.epil = phi i64 [ %.065142.us.epil.init, %.epil.preheader ], [ %i.dy, %bb.j ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.epil
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.epil
  %i.dy = add nuw nsw i64 %.065142.us.epil, 2
  %i.dz = load <2 x float>, ptr %i.dw, align 4, !tbaa !14
  store <2 x float> %i.dz, ptr %i.dx, align 8, !tbaa !14
  %i.ea = add i64 %.064143.us.epil, %i.f
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.j, !llvm.loop !99

._crit_edge.us:                                   ; preds = %bb.j, %._crit_edge.us.unr-lcssa
  %i.eb = load <2 x float>, ptr %i.b, align 32    ; 2 uses
  %i.ec = load <2 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.ed = load <2 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %.sroa.0112.sroa.144.0.copyload521 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8
  %.sroa.0112.sroa.160.0.copyload551 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx550, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ee = shl i64 %i.ax, 1
  %i.ef = or disjoint i64 %i.ee, 2                ; 2 uses
  br i1 %i.aq, label %.epil.preheader663, label %._crit_edge.us.new

._crit_edge.us.new:                               ; preds = %._crit_edge.us, %._crit_edge.us.new
  %.064143.us.1 = phi i64 [ %i.ez, %._crit_edge.us.new ], [ %i.ef, %._crit_edge.us ] ; 2 uses
  %.065142.us.1 = phi i64 [ %i.ex, %._crit_edge.us.new ], [ 0, %._crit_edge.us ] ; 5 uses
  %niter669 = phi i32 [ %niter669.next.3, %._crit_edge.us.new ], [ 0, %._crit_edge.us ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.1
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.1
  %i.ei = load <2 x float>, ptr %i.eg, align 4, !tbaa !14
  store <2 x float> %i.ei, ptr %i.eh, align 32, !tbaa !14
  %i.ej = add i64 %.064143.us.1, %i.f             ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ej
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.1
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load <2 x float>, ptr %i.ek, align 4, !tbaa !14
  store <2 x float> %i.en, ptr %i.em, align 8, !tbaa !14
  %i.eo = add i64 %i.ej, %i.f                     ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eo
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.1
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load <2 x float>, ptr %i.ep, align 4, !tbaa !14
  store <2 x float> %i.es, ptr %i.er, align 16, !tbaa !14
  %i.et = add i64 %i.eo, %i.f                     ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.et
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = add nuw nsw i64 %.065142.us.1, 8        ; 2 uses
  %i.ey = load <2 x float>, ptr %i.eu, align 4, !tbaa !14
  store <2 x float> %i.ey, ptr %i.ew, align 8, !tbaa !14
  %i.ez = add i64 %i.et, %i.f                     ; 2 uses
  %niter669.next.3 = add i32 %niter669, 4         ; 2 uses
  %niter669.ncmp.3 = icmp eq i32 %niter669.next.3, %unroll_iter668
  br i1 %niter669.ncmp.3, label %._crit_edge.us.1.unr-lcssa, label %._crit_edge.us.new, !llvm.loop !100

._crit_edge.us.1.unr-lcssa:                       ; preds = %._crit_edge.us.new
  br i1 %lcmp.mod666.not, label %._crit_edge.us.1, label %.epil.preheader663

.epil.preheader663:                               ; preds = %._crit_edge.us.1.unr-lcssa, %._crit_edge.us
  %.064143.us.1.epil.init = phi i64 [ %i.ef, %._crit_edge.us ], [ %i.ez, %._crit_edge.us.1.unr-lcssa ]
  %.065142.us.1.epil.init = phi i64 [ 0, %._crit_edge.us ], [ %i.ex, %._crit_edge.us.1.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod667)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader663
  %.064143.us.1.epil = phi i64 [ %.064143.us.1.epil.init, %.epil.preheader663 ], [ %i.fe, %bb.k ] ; 2 uses
  %.065142.us.1.epil = phi i64 [ %.065142.us.1.epil.init, %.epil.preheader663 ], [ %i.fc, %bb.k ] ; 2 uses
  %epil.iter665 = phi i32 [ 0, %.epil.preheader663 ], [ %epil.iter665.next, %bb.k ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.1.epil
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.1.epil
  %i.fc = add nuw nsw i64 %.065142.us.1.epil, 2
  %i.fd = load <2 x float>, ptr %i.fa, align 4, !tbaa !14
  store <2 x float> %i.fd, ptr %i.fb, align 8, !tbaa !14
  %i.fe = add i64 %.064143.us.1.epil, %i.f
  %epil.iter665.next = add i32 %epil.iter665, 1   ; 2 uses
  %epil.iter665.cmp.not = icmp eq i32 %epil.iter665.next, %xtraiter664
  br i1 %epil.iter665.cmp.not, label %._crit_edge.us.1, label %bb.k, !llvm.loop !101

._crit_edge.us.1:                                 ; preds = %bb.k, %._crit_edge.us.1.unr-lcssa
  %i.ff = load <2 x float>, ptr %i.b, align 32    ; 2 uses
  %i.fg = load <2 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.fh = load <2 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %i.fi = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.fj = shl i64 %i.ax, 1
  %i.fk = or disjoint i64 %i.fj, 4                ; 2 uses
  br i1 %i.ar, label %.epil.preheader670, label %._crit_edge.us.1.new

._crit_edge.us.1.new:                             ; preds = %._crit_edge.us.1, %._crit_edge.us.1.new
  %.064143.us.2 = phi i64 [ %i.ge, %._crit_edge.us.1.new ], [ %i.fk, %._crit_edge.us.1 ] ; 2 uses
  %.065142.us.2 = phi i64 [ %i.gc, %._crit_edge.us.1.new ], [ 0, %._crit_edge.us.1 ] ; 5 uses
  %niter676 = phi i32 [ %niter676.next.3, %._crit_edge.us.1.new ], [ 0, %._crit_edge.us.1 ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.2
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.2
  %i.fn = load <2 x float>, ptr %i.fl, align 4, !tbaa !14
  store <2 x float> %i.fn, ptr %i.fm, align 32, !tbaa !14
  %i.fo = add i64 %.064143.us.2, %i.f             ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load <2 x float>, ptr %i.fp, align 4, !tbaa !14
  store <2 x float> %i.fs, ptr %i.fr, align 8, !tbaa !14
  %i.ft = add i64 %i.fo, %i.f                     ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.2
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load <2 x float>, ptr %i.fu, align 4, !tbaa !14
  store <2 x float> %i.fx, ptr %i.fw, align 16, !tbaa !14
  %i.fy = add i64 %i.ft, %i.f                     ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = add nuw nsw i64 %.065142.us.2, 8        ; 2 uses
  %i.gd = load <2 x float>, ptr %i.fz, align 4, !tbaa !14
  store <2 x float> %i.gd, ptr %i.gb, align 8, !tbaa !14
  %i.ge = add i64 %i.fy, %i.f                     ; 2 uses
  %niter676.next.3 = add i32 %niter676, 4         ; 2 uses
  %niter676.ncmp.3 = icmp eq i32 %niter676.next.3, %unroll_iter675
  br i1 %niter676.ncmp.3, label %._crit_edge.us.2.unr-lcssa, label %._crit_edge.us.1.new, !llvm.loop !102

._crit_edge.us.2.unr-lcssa:                       ; preds = %._crit_edge.us.1.new
  br i1 %lcmp.mod673.not, label %._crit_edge.us.2, label %.epil.preheader670

.epil.preheader670:                               ; preds = %._crit_edge.us.2.unr-lcssa, %._crit_edge.us.1
  %.064143.us.2.epil.init = phi i64 [ %i.fk, %._crit_edge.us.1 ], [ %i.ge, %._crit_edge.us.2.unr-lcssa ]
  %.065142.us.2.epil.init = phi i64 [ 0, %._crit_edge.us.1 ], [ %i.gc, %._crit_edge.us.2.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod674)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader670
  %.064143.us.2.epil = phi i64 [ %.064143.us.2.epil.init, %.epil.preheader670 ], [ %i.gj, %bb.l ] ; 2 uses
  %.065142.us.2.epil = phi i64 [ %.065142.us.2.epil.init, %.epil.preheader670 ], [ %i.gh, %bb.l ] ; 2 uses
  %epil.iter672 = phi i32 [ 0, %.epil.preheader670 ], [ %epil.iter672.next, %bb.l ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.2.epil
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.2.epil
  %i.gh = add nuw nsw i64 %.065142.us.2.epil, 2
  %i.gi = load <2 x float>, ptr %i.gf, align 4, !tbaa !14
  store <2 x float> %i.gi, ptr %i.gg, align 8, !tbaa !14
  %i.gj = add i64 %.064143.us.2.epil, %i.f
  %epil.iter672.next = add i32 %epil.iter672, 1   ; 2 uses
  %epil.iter672.cmp.not = icmp eq i32 %epil.iter672.next, %xtraiter671
  br i1 %epil.iter672.cmp.not, label %._crit_edge.us.2, label %bb.l, !llvm.loop !103

._crit_edge.us.2:                                 ; preds = %bb.l, %._crit_edge.us.2.unr-lcssa
  %i.gk = load <4 x float>, ptr %i.b, align 32    ; 2 uses
  %i.gl = load <4 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.gm = load <4 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %i.gn = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.go = shl i64 %i.ax, 1
  %i.gp = or disjoint i64 %i.go, 6                ; 2 uses
  br i1 %i.as, label %.epil.preheader677, label %._crit_edge.us.2.new

._crit_edge.us.2.new:                             ; preds = %._crit_edge.us.2, %._crit_edge.us.2.new
  %.064143.us.3 = phi i64 [ %i.hj, %._crit_edge.us.2.new ], [ %i.gp, %._crit_edge.us.2 ] ; 2 uses
  %.065142.us.3 = phi i64 [ %i.hh, %._crit_edge.us.2.new ], [ 0, %._crit_edge.us.2 ] ; 5 uses
  %niter683 = phi i32 [ %niter683.next.3, %._crit_edge.us.2.new ], [ 0, %._crit_edge.us.2 ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.3
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.3
  %i.gs = load <2 x float>, ptr %i.gq, align 4, !tbaa !14
  store <2 x float> %i.gs, ptr %i.gr, align 32, !tbaa !14
  %i.gt = add i64 %.064143.us.3, %i.f             ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.3
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load <2 x float>, ptr %i.gu, align 4, !tbaa !14
  store <2 x float> %i.gx, ptr %i.gw, align 8, !tbaa !14
  %i.gy = add i64 %i.gt, %i.f                     ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gy
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.3
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load <2 x float>, ptr %i.gz, align 4, !tbaa !14
  store <2 x float> %i.hc, ptr %i.hb, align 16, !tbaa !14
  %i.hd = add i64 %i.gy, %i.f                     ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hd
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.3
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = add nuw nsw i64 %.065142.us.3, 8        ; 2 uses
  %i.hi = load <2 x float>, ptr %i.he, align 4, !tbaa !14
  store <2 x float> %i.hi, ptr %i.hg, align 8, !tbaa !14
  %i.hj = add i64 %i.hd, %i.f                     ; 2 uses
  %niter683.next.3 = add i32 %niter683, 4         ; 2 uses
  %niter683.ncmp.3 = icmp eq i32 %niter683.next.3, %unroll_iter682
  br i1 %niter683.ncmp.3, label %._crit_edge.us.3.unr-lcssa, label %._crit_edge.us.2.new, !llvm.loop !104

._crit_edge.us.3.unr-lcssa:                       ; preds = %._crit_edge.us.2.new
  br i1 %lcmp.mod680.not, label %._crit_edge.us.3, label %.epil.preheader677

.epil.preheader677:                               ; preds = %._crit_edge.us.3.unr-lcssa, %._crit_edge.us.2
  %.064143.us.3.epil.init = phi i64 [ %i.gp, %._crit_edge.us.2 ], [ %i.hj, %._crit_edge.us.3.unr-lcssa ]
  %.065142.us.3.epil.init = phi i64 [ 0, %._crit_edge.us.2 ], [ %i.hh, %._crit_edge.us.3.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod681)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader677
  %.064143.us.3.epil = phi i64 [ %.064143.us.3.epil.init, %.epil.preheader677 ], [ %i.ho, %bb.m ] ; 2 uses
  %.065142.us.3.epil = phi i64 [ %.065142.us.3.epil.init, %.epil.preheader677 ], [ %i.hm, %bb.m ] ; 2 uses
  %epil.iter679 = phi i32 [ 0, %.epil.preheader677 ], [ %epil.iter679.next, %bb.m ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.3.epil
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.3.epil
  %i.hm = add nuw nsw i64 %.065142.us.3.epil, 2
  %i.hn = load <2 x float>, ptr %i.hk, align 4, !tbaa !14
  store <2 x float> %i.hn, ptr %i.hl, align 8, !tbaa !14
  %i.ho = add i64 %.064143.us.3.epil, %i.f
  %epil.iter679.next = add i32 %epil.iter679, 1   ; 2 uses
  %epil.iter679.cmp.not = icmp eq i32 %epil.iter679.next, %xtraiter678
  br i1 %epil.iter679.cmp.not, label %._crit_edge.us.3, label %bb.m, !llvm.loop !105

._crit_edge.us.3:                                 ; preds = %bb.m, %._crit_edge.us.3.unr-lcssa
  %i.hp = load <4 x float>, ptr %i.b, align 32    ; 2 uses
  %i.hq = load <4 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.hr = load <4 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %i.hs = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ht = shl i64 %i.ax, 1
  %i.hu = or disjoint i64 %i.ht, 8                ; 2 uses
  br i1 %i.at, label %.epil.preheader684, label %._crit_edge.us.3.new

._crit_edge.us.3.new:                             ; preds = %._crit_edge.us.3, %._crit_edge.us.3.new
  %.064143.us.4 = phi i64 [ %i.io, %._crit_edge.us.3.new ], [ %i.hu, %._crit_edge.us.3 ] ; 2 uses
  %.065142.us.4 = phi i64 [ %i.im, %._crit_edge.us.3.new ], [ 0, %._crit_edge.us.3 ] ; 5 uses
  %niter690 = phi i32 [ %niter690.next.3, %._crit_edge.us.3.new ], [ 0, %._crit_edge.us.3 ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.4
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.4
  %i.hx = load <2 x float>, ptr %i.hv, align 4, !tbaa !14
  store <2 x float> %i.hx, ptr %i.hw, align 32, !tbaa !14
  %i.hy = add i64 %.064143.us.4, %i.f             ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load <2 x float>, ptr %i.hz, align 4, !tbaa !14
  store <2 x float> %i.ic, ptr %i.ib, align 8, !tbaa !14
  %i.id = add i64 %i.hy, %i.f                     ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.id
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load <2 x float>, ptr %i.ie, align 4, !tbaa !14
  store <2 x float> %i.ih, ptr %i.ig, align 16, !tbaa !14
  %i.ii = add i64 %i.id, %i.f                     ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ii
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.4
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = add nuw nsw i64 %.065142.us.4, 8        ; 2 uses
  %i.in = load <2 x float>, ptr %i.ij, align 4, !tbaa !14
  store <2 x float> %i.in, ptr %i.il, align 8, !tbaa !14
  %i.io = add i64 %i.ii, %i.f                     ; 2 uses
  %niter690.next.3 = add i32 %niter690, 4         ; 2 uses
  %niter690.ncmp.3 = icmp eq i32 %niter690.next.3, %unroll_iter689
  br i1 %niter690.ncmp.3, label %._crit_edge.us.4.unr-lcssa, label %._crit_edge.us.3.new, !llvm.loop !106

._crit_edge.us.4.unr-lcssa:                       ; preds = %._crit_edge.us.3.new
  br i1 %lcmp.mod687.not, label %._crit_edge.us.4, label %.epil.preheader684

.epil.preheader684:                               ; preds = %._crit_edge.us.4.unr-lcssa, %._crit_edge.us.3
  %.064143.us.4.epil.init = phi i64 [ %i.hu, %._crit_edge.us.3 ], [ %i.io, %._crit_edge.us.4.unr-lcssa ]
  %.065142.us.4.epil.init = phi i64 [ 0, %._crit_edge.us.3 ], [ %i.im, %._crit_edge.us.4.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod688)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader684
  %.064143.us.4.epil = phi i64 [ %.064143.us.4.epil.init, %.epil.preheader684 ], [ %i.it, %bb.n ] ; 2 uses
  %.065142.us.4.epil = phi i64 [ %.065142.us.4.epil.init, %.epil.preheader684 ], [ %i.ir, %bb.n ] ; 2 uses
  %epil.iter686 = phi i32 [ 0, %.epil.preheader684 ], [ %epil.iter686.next, %bb.n ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.4.epil
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.4.epil
  %i.ir = add nuw nsw i64 %.065142.us.4.epil, 2
  %i.is = load <2 x float>, ptr %i.ip, align 4, !tbaa !14
  store <2 x float> %i.is, ptr %i.iq, align 8, !tbaa !14
  %i.it = add i64 %.064143.us.4.epil, %i.f
  %epil.iter686.next = add i32 %epil.iter686, 1   ; 2 uses
  %epil.iter686.cmp.not = icmp eq i32 %epil.iter686.next, %xtraiter685
  br i1 %epil.iter686.cmp.not, label %._crit_edge.us.4, label %bb.n, !llvm.loop !107

._crit_edge.us.4:                                 ; preds = %bb.n, %._crit_edge.us.4.unr-lcssa
  %i.iu = load <2 x float>, ptr %i.b, align 32    ; 2 uses
  %i.iv = load <2 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.iw = load <2 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %i.ix = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.iy = shl i64 %i.ax, 1
  %i.iz = or disjoint i64 %i.iy, 10               ; 2 uses
  br i1 %i.au, label %.epil.preheader691, label %._crit_edge.us.4.new

._crit_edge.us.4.new:                             ; preds = %._crit_edge.us.4, %._crit_edge.us.4.new
  %.064143.us.5 = phi i64 [ %i.jt, %._crit_edge.us.4.new ], [ %i.iz, %._crit_edge.us.4 ] ; 2 uses
  %.065142.us.5 = phi i64 [ %i.jr, %._crit_edge.us.4.new ], [ 0, %._crit_edge.us.4 ] ; 5 uses
  %niter697 = phi i32 [ %niter697.next.3, %._crit_edge.us.4.new ], [ 0, %._crit_edge.us.4 ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.5
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.5
  %i.jc = load <2 x float>, ptr %i.ja, align 4, !tbaa !14
  store <2 x float> %i.jc, ptr %i.jb, align 32, !tbaa !14
  %i.jd = add i64 %.064143.us.5, %i.f             ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jd
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.5
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load <2 x float>, ptr %i.je, align 4, !tbaa !14
  store <2 x float> %i.jh, ptr %i.jg, align 8, !tbaa !14
  %i.ji = add i64 %i.jd, %i.f                     ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ji
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.5
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load <2 x float>, ptr %i.jj, align 4, !tbaa !14
  store <2 x float> %i.jm, ptr %i.jl, align 16, !tbaa !14
  %i.jn = add i64 %i.ji, %i.f                     ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jn
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.5
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = add nuw nsw i64 %.065142.us.5, 8        ; 2 uses
  %i.js = load <2 x float>, ptr %i.jo, align 4, !tbaa !14
  store <2 x float> %i.js, ptr %i.jq, align 8, !tbaa !14
  %i.jt = add i64 %i.jn, %i.f                     ; 2 uses
  %niter697.next.3 = add i32 %niter697, 4         ; 2 uses
  %niter697.ncmp.3 = icmp eq i32 %niter697.next.3, %unroll_iter696
  br i1 %niter697.ncmp.3, label %._crit_edge.us.5.unr-lcssa, label %._crit_edge.us.4.new, !llvm.loop !108

._crit_edge.us.5.unr-lcssa:                       ; preds = %._crit_edge.us.4.new
  br i1 %lcmp.mod694.not, label %._crit_edge.us.5, label %.epil.preheader691

.epil.preheader691:                               ; preds = %._crit_edge.us.5.unr-lcssa, %._crit_edge.us.4
  %.064143.us.5.epil.init = phi i64 [ %i.iz, %._crit_edge.us.4 ], [ %i.jt, %._crit_edge.us.5.unr-lcssa ]
  %.065142.us.5.epil.init = phi i64 [ 0, %._crit_edge.us.4 ], [ %i.jr, %._crit_edge.us.5.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod695)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader691
  %.064143.us.5.epil = phi i64 [ %.064143.us.5.epil.init, %.epil.preheader691 ], [ %i.jy, %bb.o ] ; 2 uses
  %.065142.us.5.epil = phi i64 [ %.065142.us.5.epil.init, %.epil.preheader691 ], [ %i.jw, %bb.o ] ; 2 uses
  %epil.iter693 = phi i32 [ 0, %.epil.preheader691 ], [ %epil.iter693.next, %bb.o ]
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.5.epil
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.5.epil
  %i.jw = add nuw nsw i64 %.065142.us.5.epil, 2
  %i.jx = load <2 x float>, ptr %i.ju, align 4, !tbaa !14
  store <2 x float> %i.jx, ptr %i.jv, align 8, !tbaa !14
  %i.jy = add i64 %.064143.us.5.epil, %i.f
  %epil.iter693.next = add i32 %epil.iter693, 1   ; 2 uses
  %epil.iter693.cmp.not = icmp eq i32 %epil.iter693.next, %xtraiter692
  br i1 %epil.iter693.cmp.not, label %._crit_edge.us.5, label %bb.o, !llvm.loop !109

._crit_edge.us.5:                                 ; preds = %bb.o, %._crit_edge.us.5.unr-lcssa
  %i.jz = load <2 x float>, ptr %i.b, align 32    ; 2 uses
  %i.ka = load <2 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.kb = load <2 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %i.kc = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.kd = shl i64 %i.ax, 1
  %i.ke = or disjoint i64 %i.kd, 12               ; 2 uses
  br i1 %i.av, label %.epil.preheader698, label %._crit_edge.us.5.new

._crit_edge.us.5.new:                             ; preds = %._crit_edge.us.5, %._crit_edge.us.5.new
  %.064143.us.6 = phi i64 [ %i.ky, %._crit_edge.us.5.new ], [ %i.ke, %._crit_edge.us.5 ] ; 2 uses
  %.065142.us.6 = phi i64 [ %i.kw, %._crit_edge.us.5.new ], [ 0, %._crit_edge.us.5 ] ; 5 uses
  %niter704 = phi i32 [ %niter704.next.3, %._crit_edge.us.5.new ], [ 0, %._crit_edge.us.5 ]
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.6
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.6
  %i.kh = load <2 x float>, ptr %i.kf, align 4, !tbaa !14
  store <2 x float> %i.kh, ptr %i.kg, align 32, !tbaa !14
  %i.ki = add i64 %.064143.us.6, %i.f             ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ki
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.6
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load <2 x float>, ptr %i.kj, align 4, !tbaa !14
  store <2 x float> %i.km, ptr %i.kl, align 8, !tbaa !14
  %i.kn = add i64 %i.ki, %i.f                     ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.6
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load <2 x float>, ptr %i.ko, align 4, !tbaa !14
  store <2 x float> %i.kr, ptr %i.kq, align 16, !tbaa !14
  %i.ks = add i64 %i.kn, %i.f                     ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ks
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.6
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = add nuw nsw i64 %.065142.us.6, 8        ; 2 uses
  %i.kx = load <2 x float>, ptr %i.kt, align 4, !tbaa !14
  store <2 x float> %i.kx, ptr %i.kv, align 8, !tbaa !14
  %i.ky = add i64 %i.ks, %i.f                     ; 2 uses
  %niter704.next.3 = add i32 %niter704, 4         ; 2 uses
  %niter704.ncmp.3 = icmp eq i32 %niter704.next.3, %unroll_iter703
  br i1 %niter704.ncmp.3, label %._crit_edge.us.6.unr-lcssa, label %._crit_edge.us.5.new, !llvm.loop !110

._crit_edge.us.6.unr-lcssa:                       ; preds = %._crit_edge.us.5.new
  br i1 %lcmp.mod701.not, label %._crit_edge.us.6, label %.epil.preheader698

.epil.preheader698:                               ; preds = %._crit_edge.us.6.unr-lcssa, %._crit_edge.us.5
  %.064143.us.6.epil.init = phi i64 [ %i.ke, %._crit_edge.us.5 ], [ %i.ky, %._crit_edge.us.6.unr-lcssa ]
  %.065142.us.6.epil.init = phi i64 [ 0, %._crit_edge.us.5 ], [ %i.kw, %._crit_edge.us.6.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod702)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader698
  %.064143.us.6.epil = phi i64 [ %.064143.us.6.epil.init, %.epil.preheader698 ], [ %i.ld, %bb.p ] ; 2 uses
  %.065142.us.6.epil = phi i64 [ %.065142.us.6.epil.init, %.epil.preheader698 ], [ %i.lb, %bb.p ] ; 2 uses
  %epil.iter700 = phi i32 [ 0, %.epil.preheader698 ], [ %epil.iter700.next, %bb.p ]
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.6.epil
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.6.epil
  %i.lb = add nuw nsw i64 %.065142.us.6.epil, 2
  %i.lc = load <2 x float>, ptr %i.kz, align 4, !tbaa !14
  store <2 x float> %i.lc, ptr %i.la, align 8, !tbaa !14
  %i.ld = add i64 %.064143.us.6.epil, %i.f
  %epil.iter700.next = add i32 %epil.iter700, 1   ; 2 uses
  %epil.iter700.cmp.not = icmp eq i32 %epil.iter700.next, %xtraiter699
  br i1 %epil.iter700.cmp.not, label %._crit_edge.us.6, label %bb.p, !llvm.loop !111

._crit_edge.us.6:                                 ; preds = %bb.p, %._crit_edge.us.6.unr-lcssa
  %i.le = load <4 x float>, ptr %i.b, align 32    ; 2 uses
  %i.lf = load <4 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.lg = load <4 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %i.lh = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.li = shl i64 %i.ax, 1
  %i.lj = or disjoint i64 %i.li, 14               ; 2 uses
  br i1 %i.aw, label %.epil.preheader705, label %._crit_edge.us.6.new

._crit_edge.us.6.new:                             ; preds = %._crit_edge.us.6, %._crit_edge.us.6.new
  %.064143.us.7 = phi i64 [ %i.md, %._crit_edge.us.6.new ], [ %i.lj, %._crit_edge.us.6 ] ; 2 uses
  %.065142.us.7 = phi i64 [ %i.mb, %._crit_edge.us.6.new ], [ 0, %._crit_edge.us.6 ] ; 5 uses
  %niter711 = phi i32 [ %niter711.next.3, %._crit_edge.us.6.new ], [ 0, %._crit_edge.us.6 ]
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.7
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.7
  %i.lm = load <2 x float>, ptr %i.lk, align 4, !tbaa !14
  store <2 x float> %i.lm, ptr %i.ll, align 32, !tbaa !14
  %i.ln = add i64 %.064143.us.7, %i.f             ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.7
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load <2 x float>, ptr %i.lo, align 4, !tbaa !14
  store <2 x float> %i.lr, ptr %i.lq, align 8, !tbaa !14
  %i.ls = add i64 %i.ln, %i.f                     ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ls
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.7
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load <2 x float>, ptr %i.lt, align 4, !tbaa !14
  store <2 x float> %i.lw, ptr %i.lv, align 16, !tbaa !14
  %i.lx = add i64 %i.ls, %i.f                     ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lx
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.7
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = add nuw nsw i64 %.065142.us.7, 8        ; 2 uses
  %i.mc = load <2 x float>, ptr %i.ly, align 4, !tbaa !14
  store <2 x float> %i.mc, ptr %i.ma, align 8, !tbaa !14
  %i.md = add i64 %i.lx, %i.f                     ; 2 uses
  %niter711.next.3 = add i32 %niter711, 4         ; 2 uses
  %niter711.ncmp.3 = icmp eq i32 %niter711.next.3, %unroll_iter710
  br i1 %niter711.ncmp.3, label %._crit_edge.us.7.unr-lcssa, label %._crit_edge.us.6.new, !llvm.loop !112

._crit_edge.us.7.unr-lcssa:                       ; preds = %._crit_edge.us.6.new
  br i1 %lcmp.mod708.not, label %._crit_edge.us.7, label %.epil.preheader705

.epil.preheader705:                               ; preds = %._crit_edge.us.7.unr-lcssa, %._crit_edge.us.6
  %.064143.us.7.epil.init = phi i64 [ %i.lj, %._crit_edge.us.6 ], [ %i.md, %._crit_edge.us.7.unr-lcssa ]
  %.065142.us.7.epil.init = phi i64 [ 0, %._crit_edge.us.6 ], [ %i.mb, %._crit_edge.us.7.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod709)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader705
  %.064143.us.7.epil = phi i64 [ %.064143.us.7.epil.init, %.epil.preheader705 ], [ %i.mi, %bb.q ] ; 2 uses
  %.065142.us.7.epil = phi i64 [ %.065142.us.7.epil.init, %.epil.preheader705 ], [ %i.mg, %bb.q ] ; 2 uses
  %epil.iter707 = phi i32 [ 0, %.epil.preheader705 ], [ %epil.iter707.next, %bb.q ]
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.7.epil
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.7.epil
  %i.mg = add nuw nsw i64 %.065142.us.7.epil, 2
  %i.mh = load <2 x float>, ptr %i.me, align 4, !tbaa !14
  store <2 x float> %i.mh, ptr %i.mf, align 8, !tbaa !14
  %i.mi = add i64 %.064143.us.7.epil, %i.f
  %epil.iter707.next = add i32 %epil.iter707, 1   ; 2 uses
  %epil.iter707.cmp.not = icmp eq i32 %epil.iter707.next, %xtraiter706
  br i1 %epil.iter707.cmp.not, label %._crit_edge.us.7, label %bb.q, !llvm.loop !113

._crit_edge.us.7:                                 ; preds = %bb.q, %._crit_edge.us.7.unr-lcssa
  %i.mj = load <4 x float>, ptr %i.b, align 32    ; 2 uses
  %i.mk = load <4 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.ml = load <4 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %i.mm = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8
  %i.mn = shufflevector <2 x float> %i.eb, <2 x float> %i.ff, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.mp = shufflevector <4 x float> %i.mo, <4 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mq = shufflevector <2 x float> %i.eb, <2 x float> %i.ff, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.mt = shufflevector <2 x float> %i.iu, <2 x float> %i.jz, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> %i.le, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.mv = shufflevector <4 x float> %i.mu, <4 x float> %i.mj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mw = shufflevector <2 x float> %i.iu, <2 x float> %i.jz, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> %i.le, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> %i.mj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.mz = shufflevector <2 x float> %i.ec, <2 x float> %i.fg, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> %i.gl, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.nc = shufflevector <2 x float> %i.ec, <2 x float> %i.fg, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> %i.gl, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nf = shufflevector <2 x float> %i.iv, <2 x float> %i.ka, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> %i.lf, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> %i.mk, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ni = shufflevector <2 x float> %i.iv, <2 x float> %i.ka, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> %i.lf, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> %i.mk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nl = shufflevector <2 x float> %i.ed, <2 x float> %i.fh, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.nm = shufflevector <4 x float> %i.nl, <4 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.no = shufflevector <2 x float> %i.ed, <2 x float> %i.fh, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.np = shufflevector <4 x float> %i.no, <4 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.nq = shufflevector <4 x float> %i.np, <4 x float> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nr = shufflevector <2 x float> %i.iw, <2 x float> %i.kb, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> %i.lg, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.nt = shufflevector <4 x float> %i.ns, <4 x float> %i.ml, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.nu = shufflevector <2 x float> %i.iw, <2 x float> %i.kb, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.nv = shufflevector <4 x float> %i.nu, <4 x float> %i.lg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.nw = shufflevector <4 x float> %i.nv, <4 x float> %i.ml, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nx = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ny = insertelement <4 x float> %i.nx, float %.sroa.0112.sroa.160.0.copyload551, i64 0
  %i.nz = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.oa = shufflevector <4 x float> %i.ny, <4 x float> %i.nz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ob = shufflevector <2 x float> %i.hs, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.oc = shufflevector <4 x float> %i.oa, <4 x float> %i.ob, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.od = extractelement <2 x float> %i.gn, i64 0
  %i.oe = extractelement <2 x float> %i.hs, i64 0
  %i.of = shufflevector <2 x float> %i.ix, <2 x float> %i.kc, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.og = shufflevector <2 x float> %i.lh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oh = shufflevector <4 x float> %i.of, <4 x float> %i.og, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.oi = shufflevector <2 x float> %i.mm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oj = shufflevector <4 x float> %i.oh, <4 x float> %i.oi, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ok = shufflevector <2 x float> %i.ix, <2 x float> %i.kc, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> %i.og, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.om = shufflevector <4 x float> %i.ol, <4 x float> %i.oi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.on = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.oo = insertelement <2 x float> %i.on, float %.sroa.0112.sroa.144.0.copyload521, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader140.split.preheader, %._crit_edge.us.7
  %.sroa.70.0 = phi float [ %i.oe, %._crit_edge.us.7 ], [ %.sroa.0112.sroa.144.0.copyload527, %.preheader140.split.preheader ] ; 2 uses
  %.sroa.52.0 = phi float [ %i.od, %._crit_edge.us.7 ], [ %.sroa.0112.sroa.144.0.copyload525, %.preheader140.split.preheader ] ; 2 uses
  %i.op = phi <4 x float> [ %i.mp, %._crit_edge.us.7 ], [ %i.bg, %.preheader140.split.preheader ] ; 3 uses
  %i.oq = phi <4 x float> [ %i.ms, %._crit_edge.us.7 ], [ %i.bi, %.preheader140.split.preheader ] ; 3 uses
  %i.or = phi <4 x float> [ %i.mv, %._crit_edge.us.7 ], [ %i.bk, %.preheader140.split.preheader ] ; 3 uses
  %i.os = phi <4 x float> [ %i.my, %._crit_edge.us.7 ], [ %i.bm, %.preheader140.split.preheader ] ; 3 uses
  %i.ot = phi <4 x float> [ %i.nb, %._crit_edge.us.7 ], [ %i.bp, %.preheader140.split.preheader ] ; 3 uses
  %i.ou = phi <4 x float> [ %i.ne, %._crit_edge.us.7 ], [ %i.bs, %.preheader140.split.preheader ] ; 3 uses
  %i.ov = phi <4 x float> [ %i.nh, %._crit_edge.us.7 ], [ %i.bv, %.preheader140.split.preheader ] ; 3 uses
  %i.ow = phi <4 x float> [ %i.nk, %._crit_edge.us.7 ], [ %i.by, %.preheader140.split.preheader ] ; 3 uses
  %i.ox = phi <4 x float> [ %i.nn, %._crit_edge.us.7 ], [ %i.cc, %.preheader140.split.preheader ] ; 3 uses
  %i.oy = phi <4 x float> [ %i.nq, %._crit_edge.us.7 ], [ %i.cf, %.preheader140.split.preheader ] ; 3 uses
  %i.oz = phi <4 x float> [ %i.nt, %._crit_edge.us.7 ], [ %i.cj, %.preheader140.split.preheader ] ; 3 uses
  %i.pa = phi <4 x float> [ %i.nw, %._crit_edge.us.7 ], [ %i.cm, %.preheader140.split.preheader ] ; 3 uses
  %i.pb = phi <4 x float> [ %i.oc, %._crit_edge.us.7 ], [ %i.cq, %.preheader140.split.preheader ] ; 3 uses
  %i.pc = phi <4 x float> [ %i.oj, %._crit_edge.us.7 ], [ %i.cu, %.preheader140.split.preheader ] ; 3 uses
  %i.pd = phi <4 x float> [ %i.om, %._crit_edge.us.7 ], [ %i.cy, %.preheader140.split.preheader ] ; 3 uses
  %i.pe = phi <2 x float> [ %i.oo, %._crit_edge.us.7 ], [ %i.da, %.preheader140.split.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %invariant.gep = getelementptr [4 x i8], ptr %6, i64 %indvars.iv168
  br i1 %.not160, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.pf = shufflevector <4 x float> %i.oq, <4 x float> %i.op, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pg = shufflevector <4 x float> %i.op, <4 x float> %i.oq, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ph = shufflevector <4 x float> %i.ou, <4 x float> %i.ot, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pi = shufflevector <4 x float> %i.ot, <4 x float> %i.ou, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pj = shufflevector <4 x float> %i.oy, <4 x float> %i.ox, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pk = shufflevector <4 x float> %i.ox, <4 x float> %i.oy, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pl = shufflevector <4 x float> %i.os, <4 x float> %i.or, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pm = shufflevector <4 x float> %i.or, <4 x float> %i.os, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pn = shufflevector <4 x float> %i.ow, <4 x float> %i.ov, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.po = shufflevector <4 x float> %i.ov, <4 x float> %i.ow, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pp = shufflevector <4 x float> %i.pa, <4 x float> %i.oz, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pq = shufflevector <4 x float> %i.oz, <4 x float> %i.pa, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pr = shufflevector <2 x float> %i.pe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ps = insertelement <4 x float> %i.pr, float %.sroa.52.0, i64 2
  %i.pt = insertelement <4 x float> %i.ps, float %.sroa.70.0, i64 3
  %i.pu = shufflevector <4 x float> %i.pc, <4 x float> %i.pd, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pv = shufflevector <4 x float> %i.pd, <4 x float> %i.pc, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pw = shufflevector <2 x float> %i.pe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.px = shufflevector <4 x float> %i.pb, <4 x float> %i.pw, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.py = insertelement <4 x float> %i.px, float %.sroa.70.0, i64 3
  %i.pz = shufflevector <4 x float> %i.pw, <4 x float> %i.pb, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.qa = insertelement <4 x float> %i.pz, float %.sroa.52.0, i64 2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit, %.preheader
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 8 ; 2 uses
  %i.qb = icmp ugt i64 %1, %indvars.iv.next169
  br i1 %i.qb, label %.preheader140, label %..loopexit_crit_edge, !llvm.loop !114

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit
  %.0148 = phi i64 [ %i.us, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.qc = mul i64 %.0148, %0
  %gep152 = getelementptr [4 x i8], ptr %invariant.gep149, i64 %i.qc ; 4 uses
  %i.qd = load <2 x float>, ptr %gep152, align 1
  %.sroa.0111.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep152, i64 8
  %i.qe = load <2 x float>, ptr %.sroa.0111.sroa.7.0..sroa_idx, align 1
  %.sroa.0111.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep152, i64 16
  %i.qf = load <2 x float>, ptr %.sroa.0111.sroa.9.0..sroa_idx, align 1
  %.sroa.0111.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep152, i64 24
  %i.qg = load <2 x float>, ptr %.sroa.0111.sroa.11.0..sroa_idx, align 1
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !noalias !119
  br i1 %i.al, label %.lr.ph.preheader.i, label %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.qh = mul i64 %.0148, %0
  %gep150 = getelementptr [4 x i8], ptr %invariant.gep149, i64 %i.qh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %i.a, ptr readonly align 4 %gep150, i64 %i.an, i1 false), !tbaa !14, !noalias !119
  %.0. = load <2 x float>, ptr %i.a, align 32
  %.8. = load <2 x float>, ptr %.8..8..8..sroa_idx, align 8
  %.16. = load <2 x float>, ptr %.16..16..16..sroa_idx, align 16
  %.24. = load <2 x float>, ptr %.24..24..24..sroa_idx, align 8
  br label %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit

_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit: ; preds = %bb.s, %.lr.ph.preheader.i
  %i.qi = phi <2 x float> [ zeroinitializer, %bb.s ], [ %.0., %.lr.ph.preheader.i ]
  %i.qj = phi <2 x float> [ zeroinitializer, %bb.s ], [ %.8., %.lr.ph.preheader.i ]
  %i.qk = phi <2 x float> [ zeroinitializer, %bb.s ], [ %.16., %.lr.ph.preheader.i ]
  %i.ql = phi <2 x float> [ zeroinitializer, %bb.s ], [ %.24., %.lr.ph.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit, %bb.r
  %i.qm = phi <2 x float> [ %i.qd, %bb.r ], [ %i.qi, %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit ] ; 4 uses
  %i.qn = phi <2 x float> [ %i.qe, %bb.r ], [ %i.qj, %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit ] ; 4 uses
  %i.qo = phi <2 x float> [ %i.qf, %bb.r ], [ %i.qk, %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit ] ; 4 uses
  %i.qp = phi <2 x float> [ %i.qg, %bb.r ], [ %i.ql, %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit ] ; 4 uses
  %i.qq = shufflevector <2 x float> %i.qp, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.qr = mul i64 %.0148, %i.c
  %i.qs = add i64 %i.qr, %.068156
  %i.qt = mul i64 %i.qs, %1
  %gep147 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.qt ; 5 uses
  br i1 %5, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.qu = shufflevector <2 x float> %i.qm, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.qv = shufflevector <2 x float> %i.qn, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.qw = shufflevector <2 x float> %i.qo, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.qx = shufflevector <2 x float> %i.qm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.qy = fmul <4 x float> %i.qx, %i.oq
  %i.qz = fmul <4 x float> %i.qu, %i.op
  %i.ra = shufflevector <2 x float> %i.qn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.rb = fmul <4 x float> %i.ra, %i.ou
  %i.rc = fmul <4 x float> %i.qv, %i.ot
  %i.rd = shufflevector <2 x float> %i.qo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.re = fmul <4 x float> %i.rd, %i.oy
  %i.rf = fmul <4 x float> %i.qw, %i.ox
  %i.rg = fadd <4 x float> %i.qz, %i.qy           ; 4 uses
  %i.rh = fadd <4 x float> %i.rc, %i.rb           ; 3 uses
  %i.ri = fadd <4 x float> %i.rf, %i.re           ; 2 uses
  %i.rj = fmul <4 x float> %i.qu, %i.or
  %i.rk = fmul <4 x float> %i.qx, %i.os
  %i.rl = fmul <4 x float> %i.qv, %i.ov
  %i.rm = fmul <4 x float> %i.ra, %i.ow
  %i.rn = fmul <4 x float> %i.qw, %i.oz
  %i.ro = fmul <4 x float> %i.rd, %i.pa
  %i.rp = fadd <4 x float> %i.rj, %i.rk           ; 4 uses
  %i.rq = fadd <4 x float> %i.rl, %i.rm           ; 3 uses
  %i.rr = fadd <4 x float> %i.rn, %i.ro           ; 2 uses
  switch i64 %i.ao, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit [
    i64 4, label %bb.v
    i64 3, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split
    i64 2, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split
    i64 1, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split
  ]

bb.v:                                             ; preds = %bb.u
  %i.rs = shufflevector <2 x float> %i.qp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.rt = fmul <4 x float> %i.rs, %i.pu
  %i.ru = fmul <4 x float> %i.qq, %i.pv
  %i.rv = fadd <4 x float> %i.ru, %i.rt
  %i.rw = fmul <4 x float> %i.qq, %i.py
  %i.rx = fmul <4 x float> %i.rs, %i.qa
  %i.ry = fadd <4 x float> %i.rw, %i.rx
  br label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split.sink.split

bb.w:                                             ; preds = %bb.t
  %i.rz = shufflevector <2 x float> %i.qm, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sa = fsub <4 x float> %i.rz, %i.pf           ; 2 uses
  %i.sb = shufflevector <2 x float> %i.qm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.sc = fsub <4 x float> %i.sb, %i.pg           ; 2 uses
  %i.sd = shufflevector <2 x float> %i.qn, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.se = fsub <4 x float> %i.sd, %i.ph           ; 2 uses
  %i.sf = shufflevector <2 x float> %i.qn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.sg = fsub <4 x float> %i.sf, %i.pi           ; 2 uses
  %i.sh = shufflevector <2 x float> %i.qo, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.si = fsub <4 x float> %i.sh, %i.pj           ; 2 uses
  %i.sj = shufflevector <2 x float> %i.qo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.sk = fsub <4 x float> %i.sj, %i.pk           ; 2 uses
  %i.sl = fmul <4 x float> %i.sa, %i.sa
  %i.sm = fmul <4 x float> %i.sc, %i.sc
  %i.sn = fmul <4 x float> %i.se, %i.se
  %i.so = fmul <4 x float> %i.sg, %i.sg
  %i.sp = fmul <4 x float> %i.si, %i.si
  %i.sq = fmul <4 x float> %i.sk, %i.sk
  %i.sr = fadd <4 x float> %i.sl, %i.sm           ; 4 uses
  %i.ss = fadd <4 x float> %i.sn, %i.so           ; 3 uses
  %i.st = fadd <4 x float> %i.sp, %i.sq           ; 2 uses
  %i.su = fsub <4 x float> %i.rz, %i.pl           ; 2 uses
  %i.sv = fsub <4 x float> %i.sb, %i.pm           ; 2 uses
  %i.sw = fmul <4 x float> %i.su, %i.su
  %i.sx = fmul <4 x float> %i.sv, %i.sv
  %i.sy = fsub <4 x float> %i.sd, %i.pn           ; 2 uses
  %i.sz = fsub <4 x float> %i.sf, %i.po           ; 2 uses
  %i.ta = fmul <4 x float> %i.sy, %i.sy
  %i.tb = fmul <4 x float> %i.sz, %i.sz
  %i.tc = fsub <4 x float> %i.sh, %i.pp           ; 2 uses
  %i.td = fsub <4 x float> %i.sj, %i.pq           ; 2 uses
  %i.te = fmul <4 x float> %i.tc, %i.tc
  %i.tf = fmul <4 x float> %i.td, %i.td
  %i.tg = fadd <4 x float> %i.sw, %i.sx           ; 4 uses
  %i.th = fadd <4 x float> %i.ta, %i.tb           ; 3 uses
  %i.ti = fadd <4 x float> %i.te, %i.tf           ; 2 uses
  switch i64 %i.ao, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit [
    i64 4, label %bb.x
    i64 3, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split
    i64 2, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split
    i64 1, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split
  ]

bb.x:                                             ; preds = %bb.w
  %i.tj = shufflevector <2 x float> %i.qp, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.tk = fsub <4 x float> %i.tj, %i.pc           ; 2 uses
  %i.tl = fmul <4 x float> %i.tk, %i.tk
  %i.tm = shufflevector <2 x float> %i.qp, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.tn = fsub <4 x float> %i.tm, %i.pd           ; 2 uses
  %i.to = fmul <4 x float> %i.tn, %i.tn
  %i.tp = fadd <4 x float> %i.tl, %i.to
  %i.tq = fsub <4 x float> %i.tj, %i.pt           ; 2 uses
  %i.tr = fsub <4 x float> %i.tm, %i.pb           ; 2 uses
  %i.ts = fmul <4 x float> %i.tq, %i.tq
  %i.tt = fmul <4 x float> %i.tr, %i.tr
  %i.tu = fadd <4 x float> %i.ts, %i.tt
  br label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split.sink.split

_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split.sink.split: ; preds = %bb.v, %bb.x
  %i.tv = phi <4 x float> [ %i.sr, %bb.x ], [ %i.rg, %bb.v ]
  %i.tw = phi <4 x float> [ %i.tg, %bb.x ], [ %i.rp, %bb.v ]
  %i.tx = phi <4 x float> [ %i.ss, %bb.x ], [ %i.rh, %bb.v ]
  %i.ty = phi <4 x float> [ %i.th, %bb.x ], [ %i.rq, %bb.v ]
  %i.tz = phi <4 x float> [ %i.st, %bb.x ], [ %i.ri, %bb.v ]
  %i.ua = phi <4 x float> [ %i.ti, %bb.x ], [ %i.rr, %bb.v ]
  %i.ub = phi <4 x float> [ %i.tu, %bb.x ], [ %i.ry, %bb.v ]
  %i.uc = phi <4 x float> [ %i.tp, %bb.x ], [ %i.rv, %bb.v ]
  %i.ud = getelementptr inbounds nuw i8, ptr %gep147, i64 %.idx15.i101 ; 2 uses
  store <4 x float> %i.ub, ptr %i.ud, align 1
  %.sroa.7.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  store <4 x float> %i.uc, ptr %.sroa.7.0..sroa_idx.i105, align 1
  br label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split

_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split: ; preds = %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split.sink.split, %bb.w, %bb.u
  %i.ue = phi <4 x float> [ %i.rg, %bb.u ], [ %i.sr, %bb.w ], [ %i.tv, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split.sink.split ]
  %i.uf = phi <4 x float> [ %i.rp, %bb.u ], [ %i.tg, %bb.w ], [ %i.tw, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split.sink.split ]
  %i.ug = phi <4 x float> [ %i.rh, %bb.u ], [ %i.ss, %bb.w ], [ %i.tx, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split.sink.split ]
  %i.uh = phi <4 x float> [ %i.rq, %bb.u ], [ %i.th, %bb.w ], [ %i.ty, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split.sink.split ]
  %i.ui = phi <4 x float> [ %i.ri, %bb.u ], [ %i.st, %bb.w ], [ %i.tz, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split.sink.split ]
  %i.uj = phi <4 x float> [ %i.rr, %bb.u ], [ %i.ti, %bb.w ], [ %i.ua, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split.sink.split ]
  %i.uk = getelementptr inbounds nuw i8, ptr %gep147, i64 %.idx16.i93 ; 2 uses
  store <4 x float> %i.ui, ptr %i.uk, align 1
  %.sroa.742.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  store <4 x float> %i.uj, ptr %.sroa.742.0..sroa_idx.i97, align 1
  br label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split

_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split: ; preds = %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split, %bb.w, %bb.u
  %i.ul = phi <4 x float> [ %i.rg, %bb.u ], [ %i.sr, %bb.w ], [ %i.ue, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split ]
  %i.um = phi <4 x float> [ %i.rp, %bb.u ], [ %i.tg, %bb.w ], [ %i.uf, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split ]
  %i.un = phi <4 x float> [ %i.rh, %bb.u ], [ %i.ss, %bb.w ], [ %i.ug, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split ]
  %i.uo = phi <4 x float> [ %i.rq, %bb.u ], [ %i.th, %bb.w ], [ %i.uh, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split ]
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %gep147, i64 %1 ; 2 uses
  store <4 x float> %i.un, ptr %i.up, align 1
  %.sroa.721.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  store <4 x float> %i.uo, ptr %.sroa.721.0..sroa_idx.i89, align 1
  br label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split

_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split: ; preds = %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split, %bb.w, %bb.u
  %i.uq = phi <4 x float> [ %i.rg, %bb.u ], [ %i.sr, %bb.w ], [ %i.ul, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split ]
  %i.ur = phi <4 x float> [ %i.rp, %bb.u ], [ %i.tg, %bb.w ], [ %i.um, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split ]
  store <4 x float> %i.uq, ptr %gep147, align 1
  %.sroa.750.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %gep147, i64 16
  store <4 x float> %i.ur, ptr %.sroa.750.0..sroa_idx.i82, align 1
  br label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit

_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit: ; preds = %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split, %bb.w, %bb.u
  %i.us = add nuw i64 %.0148, 1                   ; 2 uses
  %exitcond167.not = icmp eq i64 %i.us, %3
  br i1 %exitcond167.not, label %._crit_edge, label %.lr.ph, !llvm.loop !117

bb.y:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 7 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.e = sub i64 9223372036854775807, %i.b
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %1, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef %i.d)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = phi ptr [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  store i8 0, ptr %i.n, align 1, !tbaa !25
  br label %.sink.split.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.d, i1 false)
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %1, %i.b
  br i1 %i.o, label %.sink.split.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !24
  %i.p = load ptr, ptr %0, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store i8 0, ptr %i.q, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %bb.g, %.sink.split.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss14FaissExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss14FaissExceptionE, i64 16), ptr %0, align 8, !tbaa !121
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !25
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !122

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #20 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !25
  store i8 %i.u, ptr %i.s, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !25
  store i8 %i.y, ptr %i.x, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !26    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !25
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !26
  store i64 %.0, ptr %i.h, align 8, !tbaa !25
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5faiss9fvec_maddILNS_9SIMDLevelE0EEEvmPKffS3_Pf(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader15, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.d, -32
  %i.e = sub i64 %i.a, %i.c
  %diff.check11 = icmp ugt i64 %i.e, -32
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %0, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x float>, ptr %i.f, align 4, !tbaa !14
  %wide.load12 = load <4 x float>, ptr %i.g, align 4, !tbaa !14
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load13 = load <4 x float>, ptr %i.h, align 4, !tbaa !14
  %wide.load14 = load <4 x float>, ptr %i.i, align 4, !tbaa !14
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load13, <4 x float> %wide.load)
  %i.k = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load14, <4 x float> %wide.load12)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x float> %i.j, ptr %i.l, align 4, !tbaa !14
  store <4 x float> %i.k, ptr %i.m, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %0, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.09.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.09.ph, 1
  %xtraiter = and i64 %0, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader15
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.09.ph
  %i.p = load float, ptr %i.o, align 4, !tbaa !14
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.09.ph
  %i.r = load float, ptr %i.q, align 4, !tbaa !14
  %i.s = tail call float @llvm.fmuladd.f32(float %2, float %i.r, float %i.p)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.09.ph
  store float %i.s, ptr %i.t, align 4, !tbaa !14
  %i.u = or disjoint i64 %.09.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader15
  %.09.unr = phi i64 [ %.09.ph, %.lr.ph.preheader15 ], [ %i.u, %.lr.ph.prol ]
  %i.v = icmp eq i64 %0, %.neg
  br i1 %i.v, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.09 = phi i64 [ %i.aj, %.lr.ph ], [ %.09.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.09
  %i.x = load float, ptr %i.w, align 4, !tbaa !14
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.09
  %i.z = load float, ptr %i.y, align 4, !tbaa !14
  %i.aa = tail call float @llvm.fmuladd.f32(float %2, float %i.z, float %i.x)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.09
  store float %i.aa, ptr %i.ab, align 4, !tbaa !14
  %i.ac = add nuw i64 %.09, 1                     ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !14
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ac
  %i.ag = load float, ptr %i.af, align 4, !tbaa !14
  %i.ah = tail call float @llvm.fmuladd.f32(float %2, float %i.ag, float %i.ae)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ac
  store float %i.ah, ptr %i.ai, align 4, !tbaa !14
  %i.aj = add nuw i64 %.09, 2                     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.aj, %0
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !124
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5faiss24fvec_L2sqr_ny_transposedILNS_9SIMDLevelE0EEEvPfPKfS4_S4_mmm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.preheader31, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.c = icmp ult i64 %4, 4
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %4, -4
  br label %.lr.ph

.preheader31:                                     ; preds = %bb.a
  %.not40 = icmp eq i64 %6, 0
  br i1 %.not40, label %._crit_edge39, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader31
  %min.iters.check = icmp ult i64 %6, 8
  %i.d = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.preheader.preheader59, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %6, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <4 x float>, ptr %i.e, align 4, !tbaa !14
  %wide.load58 = load <4 x float>, ptr %i.f, align 4, !tbaa !14
  %i.g = fadd <4 x float> %wide.load, zeroinitializer
  %i.h = fadd <4 x float> %wide.load58, zeroinitializer
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x float> %i.g, ptr %i.i, align 4, !tbaa !14
  store <4 x float> %i.h, ptr %i.j, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %._crit_edge39, label %.preheader.preheader59

.preheader.preheader59:                           ; preds = %.preheader.preheader, %middle.block
  %.02738.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter71 = and i64 %6, 3                     ; 2 uses
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader59, %.preheader.prol
  %.02738.prol = phi i64 [ %i.p, %.preheader.prol ], [ %.02738.ph, %.preheader.preheader59 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader59 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02738.prol
  %i.m = load float, ptr %i.l, align 4, !tbaa !14
  %i.n = fadd float %i.m, 0.000000e+00
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02738.prol
  store float %i.n, ptr %i.o, align 4, !tbaa !14
  %i.p = add nuw i64 %.02738.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter71
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !126

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader59
  %.02738.unr = phi i64 [ %.02738.ph, %.preheader.preheader59 ], [ %i.p, %.preheader.prol ]
  %i.q = sub i64 %.02738.ph, %6
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %._crit_edge39, label %.preheader

.preheader31.thread.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader31.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader31.thread.unr-lcssa, %.lr.ph.preheader
  %.02833.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cc, %.preheader31.thread.unr-lcssa ]
  %.02932.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cb, %.preheader31.thread.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.02833.epil = phi i64 [ %i.v, %.lr.ph.epil ], [ %.02833.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.02932.epil = phi float [ %i.u, %.lr.ph.epil ], [ %.02932.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833.epil
  %i.t = load float, ptr %i.s, align 4, !tbaa !14 ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %.02932.epil) ; 2 uses
  %i.v = add nuw i64 %.02833.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader31.thread, label %.lr.ph.epil, !llvm.loop !127

.preheader31.thread:                              ; preds = %.lr.ph.epil, %.preheader31.thread.unr-lcssa
  %.lcssa61 = phi float [ %i.cb, %.preheader31.thread.unr-lcssa ], [ %i.u, %.lr.ph.epil ]
  %.not4050 = icmp eq i64 %6, 0
  br i1 %.not4050, label %._crit_edge39, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader31.thread
  %xtraiter64 = and i64 %4, 3                     ; 3 uses
  %i.w = icmp ult i64 %4, 4
  %unroll_iter69 = and i64 %4, -4
  %lcmp.mod66.not = icmp eq i64 %xtraiter64, 0
  %lcmp.mod68 = icmp ne i64 %xtraiter64, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.02738.us = phi i64 [ %i.bm, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %i.x = getelementptr [4 x i8], ptr %2, i64 %.02738.us ; 5 uses
  br i1 %i.w, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %.035.us = phi i64 [ %i.az, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.02634.us = phi float [ %i.ay, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter70 = phi i64 [ %niter70.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.035.us
  %i.z = load float, ptr %i.y, align 4, !tbaa !14
  %i.aa = mul i64 %.035.us, %5
  %i.ab = getelementptr [4 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !14
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.z, float %i.ac, float %.02634.us)
  %i.ae = or disjoint i64 %.035.us, 1             ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !14
  %i.ah = mul i64 %i.ae, %5
  %i.ai = getelementptr [4 x i8], ptr %i.x, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !14
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.aj, float %i.ad)
  %i.al = or disjoint i64 %.035.us, 2             ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !14
  %i.ao = mul i64 %i.al, %5
  %i.ap = getelementptr [4 x i8], ptr %i.x, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !14
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.an, float %i.aq, float %i.ak)
  %i.as = or disjoint i64 %.035.us, 3             ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !14
  %i.av = mul i64 %i.as, %5
  %i.aw = getelementptr [4 x i8], ptr %i.x, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !14
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ax, float %i.ar) ; 3 uses
  %i.az = add nuw i64 %.035.us, 4                 ; 2 uses
  %niter70.next.3 = add nuw i64 %niter70, 4       ; 2 uses
  %niter70.ncmp.3 = icmp eq i64 %niter70.next.3, %unroll_iter69
  br i1 %niter70.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !0

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod66.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %.035.us.epil.init = phi i64 [ 0, %.preheader.us ], [ %i.az, %._crit_edge.us.unr-lcssa ]
  %.02634.us.epil.init = phi float [ 0.000000e+00, %.preheader.us ], [ %i.ay, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.035.us.epil = phi i64 [ %.035.us.epil.init, %.epil.preheader ], [ %i.bg, %bb.b ] ; 3 uses
  %.02634.us.epil = phi float [ %.02634.us.epil.init, %.epil.preheader ], [ %i.bf, %bb.b ]
  %epil.iter65 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter65.next, %bb.b ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.035.us.epil
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !14
  %i.bc = mul i64 %.035.us.epil, %5
  %i.bd = getelementptr [4 x i8], ptr %i.x, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !14
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.be, float %.02634.us.epil) ; 2 uses
  %i.bg = add nuw i64 %.035.us.epil, 1
  %epil.iter65.next = add i64 %epil.iter65, 1     ; 2 uses
  %epil.iter65.cmp.not = icmp eq i64 %epil.iter65.next, %xtraiter64
  br i1 %epil.iter65.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !128

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi float [ %i.ay, %._crit_edge.us.unr-lcssa ], [ %i.bf, %bb.b ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02738.us
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !14
  %i.bj = fadd float %.lcssa61, %i.bi
  %i.bk = tail call float @llvm.fmuladd.f32(float %.lcssa, float -2.000000e+00, float %i.bj)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02738.us
  store float %i.bk, ptr %i.bl, align 4, !tbaa !14
  %i.bm = add nuw i64 %.02738.us, 1               ; 2 uses
  %exitcond45.not = icmp eq i64 %i.bm, %6
  br i1 %exitcond45.not, label %._crit_edge39, label %.preheader.us, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02833 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ] ; 5 uses
  %.02932 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.cb, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !14 ; 2 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %.02932)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !14 ; 2 uses
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.bp)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !14 ; 2 uses
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.bt)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !14 ; 2 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.bx) ; 3 uses
  %i.cc = add nuw i64 %.02833, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader31.thread.unr-lcssa, label %.lr.ph, !llvm.loop !2

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.02738 = phi i64 [ %i.cw, %.preheader ], [ %.02738.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02738
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !14
  %i.cf = fadd float %i.ce, 0.000000e+00
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02738
  store float %i.cf, ptr %i.cg, align 4, !tbaa !14
  %i.ch = add nuw i64 %.02738, 1                  ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !14
  %i.ck = fadd float %i.cj, 0.000000e+00
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  store float %i.ck, ptr %i.cl, align 4, !tbaa !14
  %i.cm = add nuw i64 %.02738, 2                  ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !14
  %i.cp = fadd float %i.co, 0.000000e+00
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cm
  store float %i.cp, ptr %i.cq, align 4, !tbaa !14
  %i.cr = add nuw i64 %.02738, 3                  ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !14
  %i.cu = fadd float %i.ct, 0.000000e+00
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cr
  store float %i.cu, ptr %i.cv, align 4, !tbaa !14
  %i.cw = add nuw i64 %.02738, 4                  ; 2 uses
  %exitcond46.not.3 = icmp eq i64 %i.cw, %6
  br i1 %exitcond46.not.3, label %._crit_edge39, label %.preheader, !llvm.loop !129

._crit_edge39:                                    ; preds = %._crit_edge.us, %.preheader.prol.loopexit, %.preheader, %middle.block, %.preheader31.thread, %.preheader31
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss22fvec_inner_products_nyILNS_9SIMDLevelE0EEEvPfPKfS4_mm(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.0910 = phi ptr [ %i.c, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = tail call noundef float @_ZN5faiss18fvec_inner_productEPKfS1_m(ptr noundef %1, ptr noundef %.0910, i64 noundef %3)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.011
  store float %i.a, ptr %i.b, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.0910, i64 %3
  %i.d = add nuw i64 %.011, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.d, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130
}

declare noundef float @_ZN5faiss18fvec_inner_productEPKfS1_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss13fvec_L2sqr_nyILNS_9SIMDLevelE0EEEvPfPKfS4_mm(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.0910 = phi ptr [ %i.c, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = tail call noundef float @_ZN5faiss10fvec_L2sqrEPKfS1_m(ptr noundef %1, ptr noundef %.0910, i64 noundef %3)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.011
  store float %i.a, ptr %i.b, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.0910, i64 %3
  %i.d = add nuw i64 %.011, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.d, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3
}

declare noundef float @_ZN5faiss10fvec_L2sqrEPKfS1_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5faiss21fvec_L2sqr_ny_nearestILNS_9SIMDLevelE0EEEmPfPKfS4_mm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i = phi i64 [ %i.d, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.0910.i = phi ptr [ %i.c, %.lr.ph.i ], [ %2, %bb.a ] ; 2 uses
  %i.a = tail call noundef float @_ZN5faiss10fvec_L2sqrEPKfS1_m(ptr noundef %1, ptr noundef %.0910.i, i64 noundef %3)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.011.i
  store float %i.a, ptr %i.b, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.0910.i, i64 %3
  %i.d = add nuw i64 %.011.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.d, %4
  br i1 %exitcond.not.i, label %.lr.ph.preheader, label %.lr.ph.i, !llvm.loop !3

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %xtraiter = and i64 %4, 1
  %i.e = icmp eq i64 %4, 1
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %4, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.p, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01419.epil.init = phi float [ +inf, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01518.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %.116.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod23 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.020.epil.init
  %i.g = load float, ptr %i.f, align 4, !tbaa !14
  %i.h = fcmp olt float %i.g, %.01419.epil.init
  %.116.epil = select i1 %i.h, i64 %.020.epil.init, i64 %.01518.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.015.lcssa = phi i64 [ 0, %bb.a ], [ %.116.1, %._crit_edge.loopexit.unr-lcssa ], [ %.116.epil, %.lr.ph.epil.preheader ]
  ret i64 %.015.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.p, %.lr.ph ] ; 4 uses
  %.01419 = phi float [ +inf, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ] ; 2 uses
  %.01518 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.116.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.020
  %i.j = load float, ptr %i.i, align 4, !tbaa !14 ; 2 uses
  %i.k = fcmp olt float %i.j, %.01419             ; 2 uses
  %.116 = select i1 %i.k, i64 %.020, i64 %.01518
  %.1 = select i1 %i.k, float %i.j, float %.01419 ; 2 uses
  %i.l = or disjoint i64 %.020, 1                 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !14 ; 2 uses
  %i.o = fcmp olt float %i.n, %.1                 ; 2 uses
  %.116.1 = select i1 %i.o, i64 %i.l, i64 %.116   ; 3 uses
  %.1.1 = select i1 %i.o, float %i.n, float %.1   ; 2 uses
  %i.p = add nuw i64 %.020, 2                     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !131
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @_ZN5faiss34fvec_L2sqr_ny_nearest_y_transposedILNS_9SIMDLevelE0EEEmPfPKfS4_S4_mmm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %.preheader31.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.c = icmp ult i64 %4, 4
  br i1 %i.c, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -4
  br label %.lr.ph.i

.preheader31.i:                                   ; preds = %bb.a
  %.not40.i = icmp eq i64 %6, 0
  br i1 %.not40.i, label %._crit_edge, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader31.i
  %min.iters.check = icmp ult i64 %6, 8
  %i.d = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.preheader.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %6, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <4 x float>, ptr %i.e, align 4, !tbaa !14
  %wide.load35 = load <4 x float>, ptr %i.f, align 4, !tbaa !14
  %i.g = fadd <4 x float> %wide.load, zeroinitializer
  %i.h = fadd <4 x float> %wide.load35, zeroinitializer
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x float> %i.g, ptr %i.i, align 4, !tbaa !14
  store <4 x float> %i.h, ptr %i.j, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %.preheader.i.preheader36

.preheader.i.preheader36:                         ; preds = %.preheader.i.preheader, %middle.block
  %.02738.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter48 = and i64 %6, 3                     ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader36, %.preheader.i.prol
  %.02738.i.prol = phi i64 [ %i.p, %.preheader.i.prol ], [ %.02738.i.ph, %.preheader.i.preheader36 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader36 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02738.i.prol
  %i.m = load float, ptr %i.l, align 4, !tbaa !14
  %i.n = fadd float %i.m, 0.000000e+00
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02738.i.prol
  store float %i.n, ptr %i.o, align 4, !tbaa !14
  %i.p = add nuw i64 %.02738.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter48
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !133

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader36
  %.02738.i.unr = phi i64 [ %.02738.i.ph, %.preheader.i.preheader36 ], [ %i.p, %.preheader.i.prol ]
  %i.q = sub i64 %.02738.i.ph, %6
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %.lr.ph.preheader, label %.preheader.i

.preheader31.thread.i.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader31.thread.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader31.thread.i.unr-lcssa, %.lr.ph.i.preheader
  %.02833.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cc, %.preheader31.thread.i.unr-lcssa ]
  %.02932.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.cb, %.preheader31.thread.i.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.02833.i.epil = phi i64 [ %i.v, %.lr.ph.i.epil ], [ %.02833.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.02932.i.epil = phi float [ %i.u, %.lr.ph.i.epil ], [ %.02932.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833.i.epil
  %i.t = load float, ptr %i.s, align 4, !tbaa !14 ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %.02932.i.epil) ; 2 uses
  %i.v = add nuw i64 %.02833.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader31.thread.i, label %.lr.ph.i.epil, !llvm.loop !134

.preheader31.thread.i:                            ; preds = %.lr.ph.i.epil, %.preheader31.thread.i.unr-lcssa
  %.lcssa38 = phi float [ %i.cb, %.preheader31.thread.i.unr-lcssa ], [ %i.u, %.lr.ph.i.epil ]
  %.not4050.i = icmp eq i64 %6, 0
  br i1 %.not4050.i, label %._crit_edge, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader31.thread.i
  %xtraiter41 = and i64 %4, 3                     ; 3 uses
  %i.w = icmp ult i64 %4, 4
  %unroll_iter46 = and i64 %4, -4
  %lcmp.mod43.not = icmp eq i64 %xtraiter41, 0
  %lcmp.mod45 = icmp ne i64 %xtraiter41, 0
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.us.i
  %.02738.us.i = phi i64 [ %i.bm, %._crit_edge.us.i ], [ 0, %.preheader.us.i.preheader ] ; 4 uses
  %i.x = getelementptr [4 x i8], ptr %2, i64 %.02738.us.i ; 5 uses
  br i1 %i.w, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %.035.us.i = phi i64 [ %i.az, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 6 uses
  %.02634.us.i = phi float [ %i.ay, %.preheader.us.i.new ], [ 0.000000e+00, %.preheader.us.i ]
  %niter47 = phi i64 [ %niter47.next.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.035.us.i
  %i.z = load float, ptr %i.y, align 4, !tbaa !14
  %i.aa = mul i64 %.035.us.i, %5
  %i.ab = getelementptr [4 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !14
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.z, float %i.ac, float %.02634.us.i)
  %i.ae = or disjoint i64 %.035.us.i, 1           ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !14
  %i.ah = mul i64 %i.ae, %5
  %i.ai = getelementptr [4 x i8], ptr %i.x, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !14
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.aj, float %i.ad)
  %i.al = or disjoint i64 %.035.us.i, 2           ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !14
  %i.ao = mul i64 %i.al, %5
  %i.ap = getelementptr [4 x i8], ptr %i.x, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !14
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.an, float %i.aq, float %i.ak)
  %i.as = or disjoint i64 %.035.us.i, 3           ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !14
  %i.av = mul i64 %i.as, %5
  %i.aw = getelementptr [4 x i8], ptr %i.x, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !14
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ax, float %i.ar) ; 3 uses
  %i.az = add nuw i64 %.035.us.i, 4               ; 2 uses
  %niter47.next.3 = add nuw i64 %niter47, 4       ; 2 uses
  %niter47.ncmp.3 = icmp eq i64 %niter47.next.3, %unroll_iter46
  br i1 %niter47.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !0

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod43.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %.035.us.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %i.az, %._crit_edge.us.i.unr-lcssa ]
  %.02634.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.i ], [ %i.ay, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.035.us.i.epil = phi i64 [ %.035.us.i.epil.init, %.epil.preheader ], [ %i.bg, %bb.b ] ; 3 uses
  %.02634.us.i.epil = phi float [ %.02634.us.i.epil.init, %.epil.preheader ], [ %i.bf, %bb.b ]
  %epil.iter42 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter42.next, %bb.b ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.035.us.i.epil
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !14
  %i.bc = mul i64 %.035.us.i.epil, %5
  %i.bd = getelementptr [4 x i8], ptr %i.x, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !14
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.be, float %.02634.us.i.epil) ; 2 uses
  %i.bg = add nuw i64 %.035.us.i.epil, 1
  %epil.iter42.next = add i64 %epil.iter42, 1     ; 2 uses
  %epil.iter42.cmp.not = icmp eq i64 %epil.iter42.next, %xtraiter41
  br i1 %epil.iter42.cmp.not, label %._crit_edge.us.i, label %bb.b, !llvm.loop !135

._crit_edge.us.i:                                 ; preds = %bb.b, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi float [ %i.ay, %._crit_edge.us.i.unr-lcssa ], [ %i.bf, %bb.b ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02738.us.i
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !14
  %i.bj = fadd float %.lcssa38, %i.bi
  %i.bk = tail call float @llvm.fmuladd.f32(float %.lcssa, float -2.000000e+00, float %i.bj)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02738.us.i
  store float %i.bk, ptr %i.bl, align 4, !tbaa !14
  %i.bm = add nuw i64 %.02738.us.i, 1             ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.bm, %6
  br i1 %exitcond45.not.i, label %.lr.ph.preheader, label %.preheader.us.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.02833.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cc, %.lr.ph.i ] ; 5 uses
  %.02932.i = phi float [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.cb, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833.i
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !14 ; 2 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %.02932.i)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !14 ; 2 uses
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.bp)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !14 ; 2 uses
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.bt)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !14 ; 2 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.bx) ; 3 uses
  %i.cc = add nuw i64 %.02833.i, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader31.thread.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !2

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.02738.i = phi i64 [ %i.cw, %.preheader.i ], [ %.02738.i.unr, %.preheader.i.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02738.i
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !14
  %i.cf = fadd float %i.ce, 0.000000e+00
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02738.i
  store float %i.cf, ptr %i.cg, align 4, !tbaa !14
  %i.ch = add nuw i64 %.02738.i, 1                ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !14
  %i.ck = fadd float %i.cj, 0.000000e+00
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  store float %i.ck, ptr %i.cl, align 4, !tbaa !14
  %i.cm = add nuw i64 %.02738.i, 2                ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !14
  %i.cp = fadd float %i.co, 0.000000e+00
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cm
  store float %i.cp, ptr %i.cq, align 4, !tbaa !14
  %i.cr = add nuw i64 %.02738.i, 3                ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !14
  %i.cu = fadd float %i.ct, 0.000000e+00
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cr
  store float %i.cu, ptr %i.cv, align 4, !tbaa !14
  %i.cw = add nuw i64 %.02738.i, 4                ; 2 uses
  %exitcond46.not.i.3 = icmp eq i64 %i.cw, %6
  br i1 %exitcond46.not.i.3, label %.lr.ph.preheader, label %.preheader.i, !llvm.loop !136

.lr.ph.preheader:                                 ; preds = %._crit_edge.us.i, %.preheader.i.prol.loopexit, %.preheader.i, %middle.block
  %xtraiter50 = and i64 %6, 1
  %i.cx = icmp eq i64 %6, 1
  br i1 %i.cx, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter55 = and i64 %6, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod52.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod52.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.di, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01623.epil.init = phi float [ +inf, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01722.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %.118.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod54 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.024.epil.init
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !14
  %i.da = fcmp olt float %i.cz, %.01623.epil.init
  %.118.epil = select i1 %i.da, i64 %.024.epil.init, i64 %.01722.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader31.thread.i, %.preheader31.i
  %.017.lcssa = phi i64 [ 0, %.preheader31.thread.i ], [ 0, %.preheader31.i ], [ %.118.1, %._crit_edge.loopexit.unr-lcssa ], [ %.118.epil, %.lr.ph.epil.preheader ]
  ret i64 %.017.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.di, %.lr.ph ] ; 4 uses
  %.01623 = phi float [ +inf, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ] ; 2 uses
  %.01722 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.118.1, %.lr.ph ]
  %niter56 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter56.next.1, %.lr.ph ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.024
  %i.dc = load float, ptr %i.db, align 4, !tbaa !14 ; 2 uses
  %i.dd = fcmp olt float %i.dc, %.01623           ; 2 uses
  %.118 = select i1 %i.dd, i64 %.024, i64 %.01722
  %.1 = select i1 %i.dd, float %i.dc, float %.01623 ; 2 uses
  %i.de = or disjoint i64 %.024, 1                ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !14 ; 2 uses
  %i.dh = fcmp olt float %i.dg, %.1               ; 2 uses
  %.118.1 = select i1 %i.dh, i64 %i.de, i64 %.118 ; 3 uses
  %.1.1 = select i1 %i.dh, float %i.dg, float %.1 ; 2 uses
  %i.di = add nuw i64 %.024, 2                    ; 2 uses
  %niter56.next.1 = add i64 %niter56, 2           ; 2 uses
  %niter56.ncmp.1 = icmp eq i64 %niter56.next.1, %unroll_iter55
  br i1 %niter56.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !137
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN5faiss20fvec_madd_and_argminILNS_9SIMDLevelE0EEEimPKffS3_Pf(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %0, 1
  %i.a = icmp eq i64 %0, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %0, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.022.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %.01621.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01720.epil.init = phi float [ 1.000000e+20, %.lr.ph.preheader ], [ %.118.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i64 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.022.epil.init
  %i.c = load float, ptr %i.b, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.022.epil.init
  %i.e = load float, ptr %i.d, align 4, !tbaa !14
  %i.f = tail call float @llvm.fmuladd.f32(float %2, float %i.e, float %i.c) ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.022.epil.init
  store float %i.f, ptr %i.g, align 4, !tbaa !14
  %i.h = fcmp olt float %i.f, %.01720.epil.init
  %i.i = trunc i64 %.022.epil.init to i32
  %.1.epil = select i1 %i.h, i32 %i.i, i32 %.01621.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.016.lcssa = phi i32 [ -1, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ]
  ret i32 %.016.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.022 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ] ; 6 uses
  %.01621 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ]
  %.01720 = phi float [ 1.000000e+20, %.lr.ph.preheader.new ], [ %.118.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.022
  %i.k = load float, ptr %i.j, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.022
  %i.m = load float, ptr %i.l, align 4, !tbaa !14
  %i.n = tail call float @llvm.fmuladd.f32(float %2, float %i.m, float %i.k) ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.022
  store float %i.n, ptr %i.o, align 4, !tbaa !14
  %i.p = fcmp olt float %i.n, %.01720             ; 2 uses
  %i.q = trunc i64 %.022 to i32
  %.118 = select i1 %i.p, float %i.n, float %.01720 ; 2 uses
  %.1 = select i1 %i.p, i32 %i.q, i32 %.01621
  %i.r = or disjoint i64 %.022, 1                 ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !14
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.r
  %i.v = load float, ptr %i.u, align 4, !tbaa !14
  %i.w = tail call float @llvm.fmuladd.f32(float %2, float %i.v, float %i.t) ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.r
  store float %i.w, ptr %i.x, align 4, !tbaa !14
  %i.y = fcmp olt float %i.w, %.118               ; 2 uses
  %i.z = trunc i64 %i.r to i32
  %.118.1 = select i1 %i.y, float %i.w, float %.118 ; 2 uses
  %.1.1 = select i1 %i.y, i32 %i.z, i32 %.1       ; 3 uses
  %i.aa = add nuw i64 %.022, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !138
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = distinct !{!3, !15}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"float", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"long", !9, i64 0}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"any pointer", !9, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !18, i64 8, !9, i64 16}
!24 = !{!23, !18, i64 8}
!25 = !{!9, !9, i64 0}
!26 = !{!23, !21, i64 0}
!27 = distinct !{!27, !15, !16, !17}
!28 = distinct !{!28, !15, !17, !16}
!29 = distinct !{!29, !15, !16, !17}
!30 = distinct !{!30, !15, !17, !16}
!31 = distinct !{!31, !15, !16, !17}
!32 = distinct !{!32, !15, !17, !16}
!33 = distinct !{!33, !15, !16, !17}
!34 = distinct !{!34, !15, !17, !16}
!35 = distinct !{!35, !15, !16, !17}
!36 = distinct !{!36, !15, !17, !16}
!37 = distinct !{!37, !15, !16, !17}
!38 = distinct !{!38, !15, !17, !16}
!39 = distinct !{!39, !15, !16, !17}
!40 = distinct !{!40, !15, !17, !16}
!41 = distinct !{!41, !15, !16, !17}
!42 = distinct !{!42, !15, !17, !16}
!43 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE1ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!44 = !{!43, !18, i64 0}
!45 = distinct !{!45, !15, !16, !17}
!46 = distinct !{!46, !15, !17, !16}
!47 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE0ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!48 = !{!47, !18, i64 0}
!49 = distinct !{!49, !15, !16, !17}
!50 = distinct !{!50, !15, !17, !16}
!51 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE2ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!52 = !{!51, !18, i64 0}
!53 = distinct !{!53, !15, !16, !17}
!54 = distinct !{!54, !15, !17, !16}
!55 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE3ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!56 = !{!55, !18, i64 0}
!57 = distinct !{!57, !15}
!58 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE4ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!59 = !{!58, !18, i64 0}
!60 = !{!58, !13, i64 8}
!61 = distinct !{!61, !15}
!62 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE20ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!63 = !{!62, !18, i64 0}
!64 = distinct !{!64, !15}
!65 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE21ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!66 = !{!65, !18, i64 0}
!67 = distinct !{!67, !15}
!68 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE22ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!69 = !{!68, !18, i64 0}
!70 = distinct !{!70, !15}
!71 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE23ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!72 = !{!71, !18, i64 0}
!73 = distinct !{!73, !15}
!74 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE24ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!75 = !{!74, !18, i64 0}
!76 = distinct !{!76, !15}
!77 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE25ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!78 = !{!77, !18, i64 0}
!79 = distinct !{!79, !15, !16, !17}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15, !16}
!83 = distinct !{!83, !15, !16, !17}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !15}
!86 = distinct !{!86, !15, !16}
!87 = distinct !{!87, i1 false, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !15, !16, !17}
!91 = distinct !{!91, !15, !16, !17}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !15, !16}
!94 = distinct !{!94, !15, !16}
!95 = !{!88}
!96 = !{!89}
!97 = distinct !{!97, !15}
!98 = distinct !{!98, !15, !16}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !15, !16}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !15, !16}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !15, !16}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !15, !16}
!107 = distinct !{!107, !19}
!108 = distinct !{!108, !15, !16}
!109 = distinct !{!109, !19}
!110 = distinct !{!110, !15, !16}
!111 = distinct !{!111, !19}
!112 = distinct !{!112, !15, !16}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !15}
!115 = distinct !{!115, i1 true, !"_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi"}
!116 = distinct !{!116, !115, !"_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi: argument 0"}
!117 = distinct !{!117, !15}
!118 = !{!22, !21, i64 0}
!119 = !{!116}
!120 = !{!"vtable pointer", !8, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!123 = distinct !{!123, !15, !16, !17}
!124 = distinct !{!124, !15, !16}
!125 = distinct !{!125, !15, !16, !17}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !15, !16}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !15}
!132 = distinct !{!132, !15, !16, !17}
!133 = distinct !{!133, !19}
!134 = distinct !{!134, !19}
!135 = distinct !{!135, !19}
!136 = distinct !{!136, !15, !16}
!137 = distinct !{!137, !15}
!138 = distinct !{!138, !15}
end_hunk_0
