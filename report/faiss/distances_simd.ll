inline.NumInlined: 164
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5faiss8fvec_addILNS_9SIMDLevelE0EEEvmPKffPf:bb.a
  %i.bh = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.bp = load float, ptr %i.bl, align 1, !alias.scope !76
  %i.bq = load float, ptr %i.bm, align 1, !alias.scope !76
  %i.br = load float, ptr %i.bn, align 1, !alias.scope !76
  %i.bs = load float, ptr %i.bo, align 1, !alias.scope !76
  %i.bt = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 116
  %i.cb = load float, ptr %i.bx, align 1, !alias.scope !76
  %i.cc = load float, ptr %i.by, align 1, !alias.scope !76
  %i.cd = load float, ptr %i.bz, align 1, !alias.scope !76
  %i.ce = load float, ptr %i.ca, align 1, !alias.scope !76
  %i.cf = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.cn = load float, ptr %i.cj, align 1, !alias.scope !76
  %i.co = load float, ptr %i.ck, align 1, !alias.scope !76
  %i.cp = load float, ptr %i.cl, align 1, !alias.scope !76
  %i.cq = load float, ptr %i.cm, align 1, !alias.scope !76
  %i.cr = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 92
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 124
  %i.cz = load float, ptr %i.cv, align 1, !alias.scope !76
  %i.da = load float, ptr %i.cw, align 1, !alias.scope !76
  %i.db = load float, ptr %i.cx, align 1, !alias.scope !76
  %i.dc = load float, ptr %i.cy, align 1, !alias.scope !76
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
  store <32 x float> %interleaved.vec, ptr %i.dh, align 1, !alias.scope !79, !noalias !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !81

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
  %wide.load = load <4 x float>, ptr %i.dy, align 4, !tbaa !9
  %wide.load49 = load <4 x float>, ptr %i.dz, align 4, !tbaa !9
  %i.ea = fadd <4 x float> %broadcast.splat46, %wide.load
  %i.eb = fadd <4 x float> %broadcast.splat46, %wide.load49
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dx ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x float> %i.ea, ptr %i.ec, align 4, !tbaa !9
  store <4 x float> %i.eb, ptr %i.ed, align 4, !tbaa !9
  %index.next50 = add nuw i64 %index48, 8         ; 2 uses
  %i.ee = icmp eq i64 %index.next50, %n.vec44
  br i1 %i.ee, label %middle.block51, label %vector.body47, !llvm.loop !82

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
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !9
  %i.ei = fadd float %2, %i.eh
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.137.prol
  store float %i.ei, ptr %i.ej, align 4, !tbaa !9
  %i.ek = add nuw i64 %.137.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph38.prol.loopexit, label %.lr.ph38.prol, !llvm.loop !83

.lr.ph38.prol.loopexit:                           ; preds = %.lr.ph38.prol, %.lr.ph38.preheader54
  %.137.unr = phi i64 [ %.137.ph, %.lr.ph38.preheader54 ], [ %i.ek, %.lr.ph38.prol ]
  %i.el = sub i64 %.137.ph, %0
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph.preheader55, %.lr.ph
  %.036 = phi i64 [ %i.et, %.lr.ph ], [ %.036.ph, %.lr.ph.preheader55 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.036 ; 2 uses
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.036 ; 2 uses
  %i.ep = load <4 x float>, ptr %i.en, align 1
  %i.eq = fadd <4 x float> %i.ds, %i.ep
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.er = load <4 x float>, ptr %.sroa.719.0..sroa_idx, align 1
  %i.es = fadd <4 x float> %i.ds, %i.er
  store <4 x float> %i.eq, ptr %i.eo, align 1
  store <4 x float> %i.es, ptr %.sroa.727.0..sroa_idx, align 1
  %i.et = add nuw i64 %.036, 8                    ; 3 uses
  %i.eu = or disjoint i64 %i.et, 7
  %i.ev = icmp ult i64 %i.eu, %0
  br i1 %i.ev, label %.lr.ph, label %.preheader, !llvm.loop !84

.lr.ph38:                                         ; preds = %.lr.ph38.prol.loopexit, %.lr.ph38
  %.137 = phi i64 [ %i.fp, %.lr.ph38 ], [ %.137.unr, %.lr.ph38.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.137
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !9
  %i.ey = fadd float %2, %i.ex
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.137
  store float %i.ey, ptr %i.ez, align 4, !tbaa !9
  %i.fa = add nuw i64 %.137, 1                    ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !9
  %i.fd = fadd float %2, %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fa
  store float %i.fd, ptr %i.fe, align 4, !tbaa !9
  %i.ff = add nuw i64 %.137, 2                    ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !9
  %i.fi = fadd float %2, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ff
  store float %i.fi, ptr %i.fj, align 4, !tbaa !9
  %i.fk = add nuw i64 %.137, 3                    ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !9
  %i.fn = fadd float %2, %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fk
  store float %i.fn, ptr %i.fo, align 4, !tbaa !9
  %i.fp = add nuw i64 %.137, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fp, %0
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph38, !llvm.loop !85

._crit_edge:                                      ; preds = %.lr.ph38.prol.loopexit, %.lr.ph38, %middle.block51, %.preheader
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
  store ptr %i.g, ptr %7, align 8, !tbaa !86
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !90
  store i8 0, ptr %i.g, align 8, !tbaa !92
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17 ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64                ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.l)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %7, align 8, !tbaa !93
  %i.n = load i64, ptr %i.h, align 8, !tbaa !90
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
  %i.s = load ptr, ptr %7, align 8, !tbaa !93     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.u = load i64, ptr %i.g, align 8, !tbaa !92
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
  br i1 %i.w, label %.lr.ph155, label %._crit_edge158.split, !llvm.loop !94

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
  %xtraiter665 = and i32 %i.y, 3                  ; 4 uses
  %i.aq = icmp ult i32 %i.ab, 3
  %unroll_iter669 = sub i32 %i.z, %xtraiter665
  %lcmp.mod667.not = icmp eq i32 %xtraiter665, 0
  %lcmp.mod668 = icmp ne i32 %xtraiter665, 0
  %xtraiter673 = and i32 %i.y, 3                  ; 4 uses
  %i.ar = icmp ult i32 %i.ab, 3
  %unroll_iter677 = sub i32 %i.z, %xtraiter673
  %lcmp.mod675.not = icmp eq i32 %xtraiter673, 0
  %lcmp.mod676 = icmp ne i32 %xtraiter673, 0
  %xtraiter681 = and i32 %i.y, 3                  ; 4 uses
  %i.as = icmp ult i32 %i.ab, 3
  %unroll_iter685 = sub i32 %i.z, %xtraiter681
  %lcmp.mod683.not = icmp eq i32 %xtraiter681, 0
  %lcmp.mod684 = icmp ne i32 %xtraiter681, 0
  %xtraiter689 = and i32 %i.y, 3                  ; 4 uses
  %i.at = icmp ult i32 %i.ab, 3
  %unroll_iter693 = sub i32 %i.z, %xtraiter689
  %lcmp.mod691.not = icmp eq i32 %xtraiter689, 0
  %lcmp.mod692 = icmp ne i32 %xtraiter689, 0
  %xtraiter697 = and i32 %i.y, 3                  ; 4 uses
  %i.au = icmp ult i32 %i.ab, 3
  %unroll_iter701 = sub i32 %i.z, %xtraiter697
  %lcmp.mod699.not = icmp eq i32 %xtraiter697, 0
  %lcmp.mod700 = icmp ne i32 %xtraiter697, 0
  %xtraiter705 = and i32 %i.y, 3                  ; 4 uses
  %i.av = icmp ult i32 %i.ab, 3
  %unroll_iter709 = sub i32 %i.z, %xtraiter705
  %lcmp.mod707.not = icmp eq i32 %xtraiter705, 0
  %lcmp.mod708 = icmp ne i32 %xtraiter705, 0
  %xtraiter713 = and i32 %i.y, 3                  ; 4 uses
  %i.aw = icmp ult i32 %i.ab, 3
  %unroll_iter717 = sub i32 %i.z, %xtraiter713
  %lcmp.mod715.not = icmp eq i32 %xtraiter713, 0
  %lcmp.mod716 = icmp ne i32 %xtraiter713, 0
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
  %.sroa.0112.sroa.160.0.copyload = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
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
  %i.de = load <2 x float>, ptr %i.dc, align 4, !tbaa !9
  store <2 x float> %i.de, ptr %i.dd, align 32, !tbaa !9
  %i.df = add i64 %.064143.us, %i.f               ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load <2 x float>, ptr %i.dg, align 4, !tbaa !9
  store <2 x float> %i.dj, ptr %i.di, align 8, !tbaa !9
  %i.dk = add i64 %i.df, %i.f                     ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load <2 x float>, ptr %i.dl, align 4, !tbaa !9
  store <2 x float> %i.do, ptr %i.dn, align 16, !tbaa !9
  %i.dp = add i64 %i.dk, %i.f                     ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = add nuw nsw i64 %.065142.us, 8          ; 2 uses
  %i.du = load <2 x float>, ptr %i.dq, align 4, !tbaa !9
  store <2 x float> %i.du, ptr %i.ds, align 8, !tbaa !9
  %i.dv = add i64 %i.dp, %i.f                     ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.preheader.new, !llvm.loop !95

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
  %i.dz = load <2 x float>, ptr %i.dw, align 4, !tbaa !9
  store <2 x float> %i.dz, ptr %i.dx, align 8, !tbaa !9
  %i.ea = add i64 %.064143.us.epil, %i.f
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.j, !llvm.loop !96

._crit_edge.us:                                   ; preds = %bb.j, %._crit_edge.us.unr-lcssa
  %i.eb = load <2 x float>, ptr %i.b, align 32    ; 2 uses
  %i.ec = load <2 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.ed = load <2 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %.sroa.0112.sroa.160.0.copyload551 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx550, align 4
  %.sroa.0112.sroa.144.0.copyload521 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ee = shl i64 %i.ax, 1
  %i.ef = or disjoint i64 %i.ee, 2                ; 2 uses
  br i1 %i.aq, label %.epil.preheader663, label %._crit_edge.us.new
end_hunk_0
