Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/samplers?download=true
inline.NumInlined: 118
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv17getRectSubPix_Cn_IfffNS_3nopIfEES2_EEvPKT_mNS_5Size_IiEEPT0_mS7_NS_6Point_IfEEi:bb.a
  br label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %._crit_edge211
  %indvar = phi i64 [ 0, %.lr.ph210.preheader ], [ %indvar.next, %._crit_edge211 ] ; 2 uses
  %.1214 = phi ptr [ %i.gn, %.lr.ph210.preheader ], [ %spec.select, %._crit_edge211 ] ; 7 uses
  %.1178213 = phi ptr [ %3, %.lr.ph210.preheader ], [ %i.od, %._crit_edge211 ] ; 3 uses
  %.1184212 = phi i32 [ 0, %.lr.ph210.preheader ], [ %i.oc, %._crit_edge211 ] ; 3 uses
  %i.mn = icmp sge i32 %.1184212, %i.gq
  %.not = icmp slt i32 %.1184212, %i.gs           ; 2 uses
  %or.cond194 = select i1 %i.mn, i1 %.not, i1 false
  %.0.idx = select i1 %or.cond194, i64 %i.t, i64 0 ; 2 uses
  %.0 = getelementptr inbounds nuw [4 x i8], ptr %.1214, i64 %.0.idx ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph210
  %i.mo = mul i64 %i.mh, %indvar                  ; 3 uses
  %i.mp = add i64 %i.mo, %i.b
  %.1214307 = ptrtoaddr ptr %.1214 to i64         ; 4 uses
  %i.mq = add i64 %i.mg, %i.mo                    ; 2 uses
  %i.mr = add i64 %i.mj, %.1214307
  %i.ms = shl nuw nsw i64 %.0.idx, 2              ; 2 uses
  %i.mt = add i64 %i.mr, %i.ms
  %i.mu = sub i64 %i.mt, %i.mq
  %diff.check = icmp ugt i64 %i.mu, -16
  %i.mv = add i64 %i.mf, %.1214307
  %i.mw = add i64 %i.mv, %i.ms
  %i.mx = sub i64 %i.mw, %i.mq
  %diff.check308 = icmp ugt i64 %i.mx, -16
  %conflict.rdx = or i1 %diff.check, %diff.check308
  %i.my = add i64 %i.mo, %i.b
  %i.mz = add i64 %i.mk, %.1214307
  %i.na = sub i64 %i.mz, %i.my
  %diff.check309 = icmp ugt i64 %i.na, -16
  %conflict.rdx310 = or i1 %conflict.rdx, %diff.check309
  %i.nb = sub i64 %.1214307, %i.mp
  %diff.check311 = icmp ugt i64 %i.nb, -16
  %conflict.rdx312 = or i1 %conflict.rdx310, %diff.check311
  br i1 %conflict.rdx312, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.nc = add i64 %index, %i.md                   ; 4 uses
  %i.nd = getelementptr inbounds [4 x i8], ptr %.1214, i64 %i.nc
  %wide.load = load <4 x float>, ptr %i.nd, align 4, !tbaa !36
  %i.ne = add nsw i64 %i.nc, %i.me                ; 2 uses
  %i.nf = getelementptr inbounds [4 x i8], ptr %.1214, i64 %i.ne
  %wide.load319 = load <4 x float>, ptr %i.nf, align 4, !tbaa !36
  %i.ng = fmul <4 x float> %broadcast.splat, %wide.load319
  %i.nh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat314, <4 x float> %i.ng)
  %i.ni = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.nc
  %wide.load320 = load <4 x float>, ptr %i.ni, align 4, !tbaa !36
  %i.nj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load320, <4 x float> %broadcast.splat316, <4 x float> %i.nh)
  %i.nk = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.ne
  %wide.load321 = load <4 x float>, ptr %i.nk, align 4, !tbaa !36
  %i.nl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load321, <4 x float> %broadcast.splat318, <4 x float> %i.nj)
  %i.nm = getelementptr inbounds [4 x i8], ptr %.1178213, i64 %i.nc
  store <4 x float> %i.nl, ptr %i.nm, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nn = icmp eq i64 %index.next, %n.vec
  br i1 %i.nn, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge211, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph210, %middle.block
  %indvars.iv.ph = phi i64 [ %i.md, %vector.memcheck ], [ %i.md, %.lr.ph210 ], [ %i.mm, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %.1214, i64 %indvars.iv
  %i.np = load float, ptr %i.no, align 4, !tbaa !36
  %i.nq = add nsw i64 %indvars.iv, %i.me          ; 2 uses
  %i.nr = getelementptr inbounds [4 x i8], ptr %.1214, i64 %i.nq
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !36
  %i.nt = fmul float %i.q, %i.ns
  %i.nu = tail call float @llvm.fmuladd.f32(float %i.np, float %i.p, float %i.nt)
  %i.nv = getelementptr inbounds [4 x i8], ptr %.0, i64 %indvars.iv
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !36
  %i.nx = tail call float @llvm.fmuladd.f32(float %i.nw, float %i.r, float %i.nu)
  %i.ny = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.nq
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !36
  %i.oa = tail call float @llvm.fmuladd.f32(float %i.nz, float %i.s, float %i.nx)
  %i.ob = getelementptr inbounds [4 x i8], ptr %.1178213, i64 %indvars.iv
  store float %i.oa, ptr %i.ob, align 4, !tbaa !36
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge211, label %scalar.ph, !llvm.loop !107

._crit_edge211:                                   ; preds = %scalar.ph, %middle.block
  %spec.select = select i1 %.not, ptr %.0, ptr %.1214
  %i.oc = add nuw nsw i32 %.1184212, 1            ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.1178213, i64 %i.u
  %exitcond228.not = icmp eq i32 %i.oc, %.sroa.9.0.extract.trunc
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond228.not, label %._crit_edge217, label %.lr.ph210, !llvm.loop !99

._crit_edge217:                                   ; preds = %._crit_edge211, %._crit_edge207.us, %._crit_edge211.us.us, %.lr.ph216.split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bb.c, %._crit_edge217
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #18
  unreachable
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv17getRectSubPix_Cn_IhffNS_3nopIfEES2_EEvPKT_mNS_5Size_IiEEPT0_mS7_NS_6Point_IfEEi(ptr noundef %0, i64 noundef %1, i64 %2, ptr noundef %3, i64 noundef %4, i64 %5, <2 x float> %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"class.cv::Rect_", align 4         ; 8 uses
  %.sroa.9.0.extract.shift = lshr i64 %5, 32      ; 4 uses
  %.sroa.0166.0.extract.trunc = trunc i64 %5 to i32 ; 2 uses
  %i.a = bitcast i64 %5 to <2 x i32>              ; 2 uses
  %.sroa.9.0.extract.trunc = trunc nuw i64 %.sroa.9.0.extract.shift to i32 ; 6 uses
  %i.b = add nsw <2 x i32> %i.a, splat (i32 -1)
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = fneg <2 x float> %i.c
  %i.e = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> splat (float 5.000000e-01), <2 x float> %6) ; 3 uses
  %i.f = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.e)
  %i.g = fptosi <2 x float> %i.f to <2 x i32>     ; 5 uses
  %i.h = extractelement <2 x i32> %i.g, i64 0     ; 2 uses
  %i.i = sitofp <2 x i32> %i.g to <2 x float>     ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.e, %i.i
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop514 = fsub <2 x float> %i.e, %i.i
  %i.k = extractelement <2 x float> %foldExtExtBinop514, i64 1 ; 5 uses
  %i.l = fsub float 1.000000e+00, %i.j            ; 2 uses
  %i.m = fsub float 1.000000e+00, %i.k            ; 4 uses
  %i.n = fmul float %i.l, %i.m                    ; 9 uses
  %i.o = fmul float %i.j, %i.m                    ; 9 uses
  %i.p = fmul float %i.l, %i.k                    ; 9 uses
  %i.q = fmul float %i.j, %i.k                    ; 9 uses
  %i.r = lshr i64 %4, 2                           ; 7 uses
  %i.s = icmp sgt i32 %i.h, -1
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = extractelement <2 x i32> %i.g, i64 1     ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  %i.v = bitcast i64 %2 to <2 x i32>
  %i.w = sub nsw <2 x i32> %i.v, %i.a
  %i.x = icmp sgt <2 x i32> %i.w, %i.g            ; 2 uses
  %i.y = extractelement <2 x i1> %i.x, i64 0
  %or.cond = select i1 %i.y, i1 %i.u, i1 false
  %i.z = extractelement <2 x i1> %i.x, i64 1
  %or.cond191 = select i1 %or.cond, i1 %i.z, i1 false
  br i1 %or.cond191, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = zext nneg i32 %i.t to i64               ; 4 uses
  %i.ab = mul i64 %1, %i.aa                       ; 5 uses
  %i.ac = mul i32 %7, %i.h
  %i.ad = sext i32 %i.ac to i64                   ; 16 uses
  %i.ae = getelementptr i8, ptr %0, i64 %i.ab
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad  ; 3 uses
  %i.ag = mul i32 %7, %.sroa.0166.0.extract.trunc ; 5 uses
  %i.ah = icmp sgt i32 %.sroa.9.0.extract.trunc, 0
  br i1 %i.ah, label %.preheader198.lr.ph, label %.loopexit

.preheader198.lr.ph:                              ; preds = %bb.c
  %.not189218 = icmp slt i32 %i.ag, 2
  %i.ai = sext i32 %7 to i64                      ; 15 uses
  br i1 %.not189218, label %.preheader198.lr.ph.split.us, label %.preheader198.preheader

.preheader198.preheader:                          ; preds = %.preheader198.lr.ph
  %i.aj = add nsw i32 %i.ag, -2                   ; 2 uses
  %i.ak = zext i32 %i.aj to i64                   ; 5 uses
  %i.al = zext nneg i32 %i.ag to i64              ; 3 uses
  %i.am = and i64 %4, -4
  %i.an = and i64 %i.ak, 4294967294               ; 8 uses
  %i.ao = add nuw nsw i64 %i.an, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.al) ; 3 uses
  %i.ap = shl nuw nsw i64 %umax, 2
  %i.aq = lshr i64 %i.ak, 1                       ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  %i.as = sub nsw i64 %i.ap, %i.ar
  %i.at = add nuw nsw i64 %i.aa, 1
  %i.au = mul i64 %1, %i.at                       ; 5 uses
  %i.av = add i64 %umax, %i.au                    ; 2 uses
  %i.aw = add i64 %i.av, %i.ai
  %i.ax = add i64 %i.aw, %i.ad
  %i.ay = sub i64 %i.ax, %i.an
  %i.az = add i64 %i.av, %i.ad
  %i.ba = sub i64 %i.az, %i.an
  %i.bb = add i64 %umax, %i.ab                    ; 2 uses
  %i.bc = add i64 %i.bb, %i.ai
  %i.bd = add i64 %i.bc, %i.ad
  %i.be = sub i64 %i.bd, %i.an
  %i.bf = add i64 %i.bb, %i.ad
  %i.bg = sub i64 %i.bf, %i.an
  %i.bh = add nuw nsw i64 %.sroa.9.0.extract.shift, 4294967295
  %i.bi = and i64 %i.bh, 4294967295               ; 3 uses
  %i.bj = mul i64 %i.r, %i.bi
  %i.bk = shl i64 %i.bj, 2
  %i.bl = getelementptr i8, ptr %3, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.ar
  %scevgep454 = getelementptr i8, ptr %i.bm, i64 8
  %i.bn = getelementptr i8, ptr %0, i64 %i.au
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.ai
  %scevgep455 = getelementptr i8, ptr %i.bo, i64 %i.ad
  %i.bp = add nuw nsw i64 %i.bi, %i.aa
  %i.bq = add nuw nsw i64 %i.bp, 1
  %i.br = mul i64 %1, %i.bq                       ; 2 uses
  %i.bs = getelementptr i8, ptr %0, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.an
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.ai
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.ad
  %i.bw = getelementptr i8, ptr %0, i64 %i.au
  %scevgep457 = getelementptr i8, ptr %i.bw, i64 %i.ad
  %i.bx = getelementptr i8, ptr %0, i64 %i.br
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.an
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.ad
  %i.ca = getelementptr i8, ptr %0, i64 %i.ab
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.ai
  %scevgep459 = getelementptr i8, ptr %i.cb, i64 %i.ad
  %i.cc = add nuw nsw i64 %i.bi, %i.aa
  %i.cd = mul i64 %1, %i.cc
  %i.ce = add i64 %i.cd, %i.an                    ; 2 uses
  %i.cf = getelementptr i8, ptr %0, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.ai
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.ad
  %i.ci = getelementptr i8, ptr %0, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.ad
  %i.ck = insertelement <4 x ptr> poison, ptr %i.bv, i64 0
  %i.cl = insertelement <4 x ptr> %i.ck, ptr %i.bz, i64 1
  %i.cm = insertelement <4 x ptr> %i.cl, ptr %i.ch, i64 2
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %i.cj, i64 3
  %i.co = getelementptr i8, <4 x ptr> %i.cn, i64 2
  %i.cp = insertelement <4 x ptr> poison, ptr %3, i64 0
  %i.cq = shufflevector <4 x ptr> %i.cp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cr = insertelement <4 x ptr> poison, ptr %scevgep455, i64 0
  %i.cs = insertelement <4 x ptr> %i.cr, ptr %scevgep457, i64 1
  %i.ct = insertelement <4 x ptr> %i.cs, ptr %scevgep459, i64 2
  %i.cu = insertelement <4 x ptr> %i.ct, ptr %i.af, i64 3
  %i.cv = insertelement <4 x ptr> poison, ptr %scevgep454, i64 0
  %i.cw = shufflevector <4 x ptr> %i.cv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cx = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check486 = icmp ult i32 %i.aj, 6
  %i.cy = icmp ult <4 x ptr> %i.cq, %i.co
  %i.cz = icmp ult <4 x ptr> %i.cu, %i.cw
  %i.da = or i64 %1, %4
  %i.db = and <4 x i1> %i.cy, %i.cz
  %i.dc = bitcast <4 x i1> %i.db to i4
  %i.dd = icmp ne i4 %i.dc, 0
  %i.de = icmp slt i64 %i.da, 0
  %op.rdx510 = or i1 %i.dd, %i.de
  %n.vec488 = and i64 %i.cx, 4294967292           ; 5 uses
  %i.df = shl nuw nsw i64 %n.vec488, 1            ; 4 uses
  %i.dg = or disjoint i64 %i.df, 2
  %broadcast.splatinsert489 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat490 = shufflevector <4 x float> %broadcast.splatinsert489, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert491 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat492 = shufflevector <4 x float> %broadcast.splatinsert491, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert493 = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splat494 = shufflevector <4 x float> %broadcast.splatinsert493, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert495 = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat496 = shufflevector <4 x float> %broadcast.splatinsert495, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %ind.escape = add nsw i64 %n.vec488, -1
  %cmp.n502 = icmp eq i64 %i.cx, %n.vec488
  %i.dh = insertelement <2 x float> poison, float %i.o, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = insertelement <2 x float> poison, float %i.n, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = insertelement <2 x float> poison, float %i.p, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = insertelement <2 x float> poison, float %i.q, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = and i64 %i.ak, 4294967294
  %i.dp = and i64 %i.ak, 4294967294
  %i.dq = add nuw nsw i64 %i.dp, 3
  %i.dr = tail call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.al)
  %i.ds = add nsw i64 %i.dr, -2
  %i.dt = sub nsw i64 %i.ds, %9                   ; 3 uses
  %min.iters.check432 = icmp ult i64 %i.dt, 4
  %invariant.gep532 = getelementptr i8, ptr %3, i64 %i.as
  %invariant.gep534 = getelementptr i8, ptr %0, i64 %i.au
  %invariant.gep536 = getelementptr i8, ptr %invariant.gep534, i64 %i.ai
  %invariant.gep538 = getelementptr i8, ptr %invariant.gep536, i64 %i.ad
  %invariant.gep540 = getelementptr i8, ptr %0, i64 %i.ay
  %invariant.gep542 = getelementptr i8, ptr %0, i64 %i.au
  %invariant.gep544 = getelementptr i8, ptr %invariant.gep542, i64 %i.ad
  %invariant.gep546 = getelementptr i8, ptr %0, i64 %i.ba
  %invariant.gep548 = getelementptr i8, ptr %0, i64 %i.ab
  %invariant.gep550 = getelementptr i8, ptr %invariant.gep548, i64 %i.ai
  %invariant.gep552 = getelementptr i8, ptr %invariant.gep550, i64 %i.ad
  %invariant.gep554 = getelementptr i8, ptr %0, i64 %i.be
  %invariant.gep556 = getelementptr i8, ptr %0, i64 %i.ab
  %invariant.gep558 = getelementptr i8, ptr %invariant.gep556, i64 %i.ad
  %invariant.gep560 = getelementptr i8, ptr %0, i64 %i.bg
  %n.vec434 = and i64 %i.dt, -4                   ; 3 uses
  %broadcast.splatinsert435 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat436 = shufflevector <4 x float> %broadcast.splatinsert435, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert437 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat438 = shufflevector <4 x float> %broadcast.splatinsert437, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert439 = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splat440 = shufflevector <4 x float> %broadcast.splatinsert439, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert441 = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat442 = shufflevector <4 x float> %broadcast.splatinsert441, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n451 = icmp eq i64 %i.dt, %n.vec434
  br label %.preheader198

.preheader198.lr.ph.split.us:                     ; preds = %.preheader198.lr.ph
  %i.du = icmp eq i32 %i.ag, 1
  br i1 %i.du, label %._crit_edge.us225, label %.loopexit

._crit_edge.us225:                                ; preds = %.preheader198.lr.ph.split.us, %._crit_edge.us225
  %.0176224.us = phi ptr [ %i.dv, %._crit_edge.us225 ], [ %i.af, %.preheader198.lr.ph.split.us ] ; 3 uses
  %.0177223.us = phi ptr [ %i.ek, %._crit_edge.us225 ], [ %3, %.preheader198.lr.ph.split.us ] ; 2 uses
  %.0183222.us = phi i32 [ %i.ej, %._crit_edge.us225 ], [ 0, %.preheader198.lr.ph.split.us ]
  %i.dv = getelementptr i8, ptr %.0176224.us, i64 %1 ; 3 uses
  %.pre = load i8, ptr %.0176224.us, align 1, !tbaa !27
  %i.dw = uitofp i8 %.pre to float
  %i.dx = getelementptr inbounds i8, ptr %.0176224.us, i64 %i.ai
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !27
  %i.dz = uitofp i8 %i.dy to float
  %i.ea = fmul float %i.o, %i.dz
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.n, float %i.ea)
  %i.ec = load i8, ptr %i.dv, align 1, !tbaa !27
  %i.ed = uitofp i8 %i.ec to float
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.p, float %i.eb)
  %i.ef = getelementptr i8, ptr %i.dv, i64 %i.ai
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !27
  %i.eh = uitofp i8 %i.eg to float
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.q, float %i.ee)
  store float %i.ei, ptr %.0177223.us, align 4, !tbaa !36
  %i.ej = add nuw nsw i32 %.0183222.us, 1         ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.0177223.us, i64 %i.r
  %exitcond263.not = icmp eq i32 %i.ej, %.sroa.9.0.extract.trunc
  br i1 %exitcond263.not, label %.loopexit, label %._crit_edge.us225, !llvm.loop !108

.preheader198:                                    ; preds = %.preheader198.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader198.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %.0176224 = phi ptr [ %i.af, %.preheader198.preheader ], [ %i.ls, %._crit_edge ] ; 21 uses
  %.0177223 = phi ptr [ %3, %.preheader198.preheader ], [ %i.lt, %._crit_edge ] ; 5 uses
  %.0183222 = phi i32 [ 0, %.preheader198.preheader ], [ %i.lr, %._crit_edge ]
  %i.el = mul i64 %i.am, %indvar                  ; 2 uses
  %i.em = mul i64 %1, %indvar                     ; 8 uses
  %invariant.gep = getelementptr i8, ptr %.0176224, i64 %i.ai ; 5 uses
  %invariant.gep283 = getelementptr i8, ptr %.0176224, i64 %i.ai ; 5 uses
  %brmerge = select i1 %min.iters.check486, i1 true, i1 %op.rdx510
  br i1 %brmerge, label %scalar.ph485.preheader, label %vector.body497

vector.body497:                                   ; preds = %.preheader198, %vector.body497
  %index498 = phi i64 [ %index.next499, %vector.body497 ], [ 0, %.preheader198 ] ; 2 uses
  %i.en = shl nuw i64 %index498, 1                ; 11 uses
  %i.eo = or disjoint i64 %i.en, 2                ; 3 uses
  %i.ep = or disjoint i64 %i.en, 4                ; 3 uses
  %i.eq = or disjoint i64 %i.en, 6                ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.en
  %i.es = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.eo
  %i.et = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.ep
  %i.eu = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.eq
  %i.ev = load i8, ptr %i.er, align 1, !tbaa !27, !alias.scope !109
  %i.ew = load i8, ptr %i.es, align 1, !tbaa !27, !alias.scope !109
  %i.ex = load i8, ptr %i.et, align 1, !tbaa !27, !alias.scope !109
  %i.ey = load i8, ptr %i.eu, align 1, !tbaa !27, !alias.scope !109
  %i.ez = insertelement <4 x i8> poison, i8 %i.ev, i64 0
  %i.fa = insertelement <4 x i8> %i.ez, i8 %i.ew, i64 1
  %i.fb = insertelement <4 x i8> %i.fa, i8 %i.ex, i64 2
  %i.fc = insertelement <4 x i8> %i.fb, i8 %i.ey, i64 3
  %i.fd = uitofp <4 x i8> %i.fc to <4 x float>
  %i.fe = getelementptr i8, ptr %invariant.gep283, i64 %i.en ; 2 uses
  %i.ff = getelementptr i8, ptr %invariant.gep283, i64 %i.eo ; 2 uses
  %i.fg = getelementptr i8, ptr %invariant.gep283, i64 %i.ep ; 2 uses
  %i.fh = getelementptr i8, ptr %invariant.gep283, i64 %i.eq ; 2 uses
  %i.fi = load i8, ptr %i.fe, align 1, !tbaa !27, !alias.scope !112
  %i.fj = load i8, ptr %i.ff, align 1, !tbaa !27, !alias.scope !112
  %i.fk = load i8, ptr %i.fg, align 1, !tbaa !27, !alias.scope !112
  %i.fl = load i8, ptr %i.fh, align 1, !tbaa !27, !alias.scope !112
  %i.fm = insertelement <4 x i8> poison, i8 %i.fi, i64 0
  %i.fn = insertelement <4 x i8> %i.fm, i8 %i.fj, i64 1
  %i.fo = insertelement <4 x i8> %i.fn, i8 %i.fk, i64 2
  %i.fp = insertelement <4 x i8> %i.fo, i8 %i.fl, i64 3
  %i.fq = uitofp <4 x i8> %i.fp to <4 x float>
  %i.fr = fmul <4 x float> %broadcast.splat490, %i.fq
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %broadcast.splat492, <4 x float> %i.fr)
  %i.ft = add i64 %1, %i.en                       ; 2 uses
  %i.fu = add i64 %1, %i.eo                       ; 2 uses
  %i.fv = add i64 %1, %i.ep                       ; 2 uses
  %i.fw = add i64 %1, %i.eq                       ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.ft ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.fu ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.fv ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.fw ; 2 uses
  %i.gb = load i8, ptr %i.fx, align 1, !tbaa !27, !alias.scope !114
  %i.gc = load i8, ptr %i.fy, align 1, !tbaa !27, !alias.scope !114
  %i.gd = load i8, ptr %i.fz, align 1, !tbaa !27, !alias.scope !114
  %i.ge = load i8, ptr %i.ga, align 1, !tbaa !27, !alias.scope !114
  %i.gf = insertelement <4 x i8> poison, i8 %i.gb, i64 0
  %i.gg = insertelement <4 x i8> %i.gf, i8 %i.gc, i64 1
  %i.gh = insertelement <4 x i8> %i.gg, i8 %i.gd, i64 2
  %i.gi = insertelement <4 x i8> %i.gh, i8 %i.ge, i64 3
  %i.gj = uitofp <4 x i8> %i.gi to <4 x float>
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> %broadcast.splat494, <4 x float> %i.fs)
  %i.gl = getelementptr i8, ptr %invariant.gep, i64 %i.ft ; 2 uses
  %i.gm = getelementptr i8, ptr %invariant.gep, i64 %i.fu ; 2 uses
  %i.gn = getelementptr i8, ptr %invariant.gep, i64 %i.fv ; 2 uses
  %i.go = getelementptr i8, ptr %invariant.gep, i64 %i.fw ; 2 uses
  %i.gp = load i8, ptr %i.gl, align 1, !tbaa !27, !alias.scope !116
  %i.gq = load i8, ptr %i.gm, align 1, !tbaa !27, !alias.scope !116
  %i.gr = load i8, ptr %i.gn, align 1, !tbaa !27, !alias.scope !116
  %i.gs = load i8, ptr %i.go, align 1, !tbaa !27, !alias.scope !116
  %i.gt = insertelement <4 x i8> poison, i8 %i.gp, i64 0
  %i.gu = insertelement <4 x i8> %i.gt, i8 %i.gq, i64 1
  %i.gv = insertelement <4 x i8> %i.gu, i8 %i.gr, i64 2
  %i.gw = insertelement <4 x i8> %i.gv, i8 %i.gs, i64 3
  %i.gx = uitofp <4 x i8> %i.gw to <4 x float>
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> %broadcast.splat496, <4 x float> %i.gk)
  %i.gz = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.en
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 1
  %i.hb = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.en
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 3
  %i.hd = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.en
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 5
  %i.hf = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.en
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 7
  %i.hh = load i8, ptr %i.ha, align 1, !tbaa !27, !alias.scope !109
  %i.hi = load i8, ptr %i.hc, align 1, !tbaa !27, !alias.scope !109
  %i.hj = load i8, ptr %i.he, align 1, !tbaa !27, !alias.scope !109
  %i.hk = load i8, ptr %i.hg, align 1, !tbaa !27, !alias.scope !109
  %i.hl = insertelement <4 x i8> poison, i8 %i.hh, i64 0
  %i.hm = insertelement <4 x i8> %i.hl, i8 %i.hi, i64 1
  %i.hn = insertelement <4 x i8> %i.hm, i8 %i.hj, i64 2
  %i.ho = insertelement <4 x i8> %i.hn, i8 %i.hk, i64 3
  %i.hp = uitofp <4 x i8> %i.ho to <4 x float>
  %i.hq = getelementptr i8, ptr %i.fe, i64 1
  %i.hr = getelementptr i8, ptr %i.ff, i64 1
  %i.hs = getelementptr i8, ptr %i.fg, i64 1
  %i.ht = getelementptr i8, ptr %i.fh, i64 1
  %i.hu = load i8, ptr %i.hq, align 1, !tbaa !27, !alias.scope !112
  %i.hv = load i8, ptr %i.hr, align 1, !tbaa !27, !alias.scope !112
  %i.hw = load i8, ptr %i.hs, align 1, !tbaa !27, !alias.scope !112
  %i.hx = load i8, ptr %i.ht, align 1, !tbaa !27, !alias.scope !112
  %i.hy = insertelement <4 x i8> poison, i8 %i.hu, i64 0
  %i.hz = insertelement <4 x i8> %i.hy, i8 %i.hv, i64 1
  %i.ia = insertelement <4 x i8> %i.hz, i8 %i.hw, i64 2
  %i.ib = insertelement <4 x i8> %i.ia, i8 %i.hx, i64 3
  %i.ic = uitofp <4 x i8> %i.ib to <4 x float>
  %i.id = fmul <4 x float> %broadcast.splat490, %i.ic
  %i.ie = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hp, <4 x float> %broadcast.splat492, <4 x float> %i.id)
  %i.if = getelementptr i8, ptr %i.fx, i64 1
  %i.ig = getelementptr i8, ptr %i.fy, i64 1
  %i.ih = getelementptr i8, ptr %i.fz, i64 1
  %i.ii = getelementptr i8, ptr %i.ga, i64 1
  %i.ij = load i8, ptr %i.if, align 1, !tbaa !27, !alias.scope !114
  %i.ik = load i8, ptr %i.ig, align 1, !tbaa !27, !alias.scope !114
  %i.il = load i8, ptr %i.ih, align 1, !tbaa !27, !alias.scope !114
  %i.im = load i8, ptr %i.ii, align 1, !tbaa !27, !alias.scope !114
  %i.in = insertelement <4 x i8> poison, i8 %i.ij, i64 0
  %i.io = insertelement <4 x i8> %i.in, i8 %i.ik, i64 1
  %i.ip = insertelement <4 x i8> %i.io, i8 %i.il, i64 2
  %i.iq = insertelement <4 x i8> %i.ip, i8 %i.im, i64 3
  %i.ir = uitofp <4 x i8> %i.iq to <4 x float>
  %i.is = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ir, <4 x float> %broadcast.splat494, <4 x float> %i.ie)
  %i.it = getelementptr i8, ptr %i.gl, i64 1
  %i.iu = getelementptr i8, ptr %i.gm, i64 1
  %i.iv = getelementptr i8, ptr %i.gn, i64 1
  %i.iw = getelementptr i8, ptr %i.go, i64 1
  %i.ix = load i8, ptr %i.it, align 1, !tbaa !27, !alias.scope !116
  %i.iy = load i8, ptr %i.iu, align 1, !tbaa !27, !alias.scope !116
  %i.iz = load i8, ptr %i.iv, align 1, !tbaa !27, !alias.scope !116
  %i.ja = load i8, ptr %i.iw, align 1, !tbaa !27, !alias.scope !116
  %i.jb = insertelement <4 x i8> poison, i8 %i.ix, i64 0
  %i.jc = insertelement <4 x i8> %i.jb, i8 %i.iy, i64 1
  %i.jd = insertelement <4 x i8> %i.jc, i8 %i.iz, i64 2
  %i.je = insertelement <4 x i8> %i.jd, i8 %i.ja, i64 3
  %i.jf = uitofp <4 x i8> %i.je to <4 x float>
  %i.jg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jf, <4 x float> %broadcast.splat496, <4 x float> %i.is)
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.0177223, i64 %i.en
  %interleaved.vec = shufflevector <4 x float> %i.gy, <4 x float> %i.jg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.jh, align 4, !tbaa !36, !alias.scope !118, !noalias !120
  %index.next499 = add nuw i64 %index498, 4       ; 2 uses
  %i.ji = icmp eq i64 %index.next499, %n.vec488
end_hunk_0
