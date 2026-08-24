Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ptsetreg?download=true
inline.NumInlined: 1274
inline.NumDeleted: 418
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK2cv25Affine3DEstimatorCallback12computeErrorERKNS_11_InputArrayES3_S3_RKNS_12_OutputArrayE:bb.a
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.av ; 3 uses
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !363, !alias.scope !364
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !363, !alias.scope !364
  %i.bc = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.bb, i64 1
  %i.be = fpext <2 x float> %i.bd to <2 x double> ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bh = load float, ptr %i.bf, align 4, !tbaa !367, !alias.scope !364
  %i.bi = load float, ptr %i.bg, align 4, !tbaa !367, !alias.scope !364
  %i.bj = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bi, i64 1
  %i.bl = fpext <2 x float> %i.bk to <2 x double> ; 3 uses
  %i.bm = fmul <2 x double> %broadcast.splat79, %i.bl
  %i.bn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.be, <2 x double> %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bq = load float, ptr %i.bo, align 4, !tbaa !349, !alias.scope !364
  %i.br = load float, ptr %i.bp, align 4, !tbaa !349, !alias.scope !364
  %i.bs = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.br, i64 1
  %i.bu = fpext <2 x float> %i.bt to <2 x double> ; 3 uses
  %i.bv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat81, <2 x double> %i.bu, <2 x double> %i.bn)
  %i.bw = fadd <2 x double> %broadcast.splat83, %i.bv
  %i.bx = load float, ptr %i.ay, align 4, !tbaa !363, !alias.scope !368
  %i.by = load float, ptr %i.az, align 4, !tbaa !363, !alias.scope !368
  %i.bz = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.by, i64 1
  %i.cb = fpext <2 x float> %i.ca to <2 x double>
  %i.cc = fsub <2 x double> %i.bw, %i.cb          ; 2 uses
  %i.cd = fmul <2 x double> %broadcast.splat87, %i.bl
  %i.ce = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat85, <2 x double> %i.be, <2 x double> %i.cd)
  %i.cf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat89, <2 x double> %i.bu, <2 x double> %i.ce)
  %i.cg = fadd <2 x double> %broadcast.splat91, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.cj = load float, ptr %i.ch, align 4, !tbaa !367, !alias.scope !368
  %i.ck = load float, ptr %i.ci, align 4, !tbaa !367, !alias.scope !368
  %i.cl = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.ck, i64 1
  %i.cn = fpext <2 x float> %i.cm to <2 x double>
  %i.co = fsub <2 x double> %i.cg, %i.cn          ; 2 uses
  %i.cp = fmul <2 x double> %broadcast.splat95, %i.bl
  %i.cq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat93, <2 x double> %i.be, <2 x double> %i.cp)
  %i.cr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat97, <2 x double> %i.bu, <2 x double> %i.cq)
  %i.cs = fadd <2 x double> %broadcast.splat99, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cv = load float, ptr %i.ct, align 4, !tbaa !349, !alias.scope !368
  %i.cw = load float, ptr %i.cu, align 4, !tbaa !349, !alias.scope !368
  %i.cx = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cw, i64 1
  %i.cz = fpext <2 x float> %i.cy to <2 x double>
  %i.da = fsub <2 x double> %i.cs, %i.cz          ; 2 uses
  %i.db = fmul <2 x double> %i.co, %i.co
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.cc, <2 x double> %i.db)
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.da, <2 x double> %i.dc)
  %i.de = fptrunc <2 x double> %i.dd to <2 x float>
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index
  store <2 x float> %i.de, ptr %i.df, align 4, !tbaa !254, !alias.scope !370, !noalias !372
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !373

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.dh = shufflevector <8 x double> %i.as, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.di = shufflevector <8 x double> %i.as, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.dj = shufflevector <8 x double> %i.as, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.dk = shufflevector <8 x double> %i.as, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.v

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv ; 3 uses
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.do = load float, ptr %i.dm, align 4, !tbaa !363
  %i.dp = fpext float %i.do to double             ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !367
  %i.ds = fpext float %i.dr to double             ; 2 uses
  %i.dt = fmul double %i.am, %i.ds
  %i.du = call double @llvm.fmuladd.f64(double %i.ak, double %i.dp, double %i.dt)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !349
  %i.dx = fpext float %i.dw to double             ; 2 uses
  %i.dy = call double @llvm.fmuladd.f64(double %i.ao, double %i.dx, double %i.du)
  %i.dz = fadd double %i.aq, %i.dy
  %i.ea = load float, ptr %i.dn, align 4, !tbaa !363
  %i.eb = fpext float %i.ea to double
  %i.ec = fsub double %i.dz, %i.eb                ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ee = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x double> %i.dh, %i.ef
  %i.eh = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.ei, <2 x double> %i.eg)
  %i.ek = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.el, <2 x double> %i.ej)
  %i.en = fadd <2 x double> %i.dk, %i.em          ; 2 uses
  %i.eo = load <2 x float>, ptr %i.ed, align 4, !tbaa !254
  %i.ep = fpext <2 x float> %i.eo to <2 x double> ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.en, %i.ep ; 2 uses
  %foldExtExtBinop101 = fsub <2 x double> %i.en, %i.ep
  %i.eq = extractelement <2 x double> %foldExtExtBinop101, i64 1 ; 2 uses
  %foldExtExtBinop103 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %i.er = extractelement <2 x double> %foldExtExtBinop103, i64 0
  %i.es = call double @llvm.fmuladd.f64(double %i.ec, double %i.ec, double %i.er)
  %i.et = call double @llvm.fmuladd.f64(double %i.eq, double %i.eq, double %i.es)
  %i.eu = fptrunc double %i.et to float
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  store float %i.eu, ptr %i.ev, align 4, !tbaa !254
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !374

bb.v:                                             ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %.pn54 = phi { ptr, i32 } [ %i.dl, %bb.u ], [ %i.w, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #23
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.j
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.v ], [ %i.v, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.i
  %.pn54.pn.pn = phi { ptr, i32 } [ %.pn54.pn, %bb.w ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn54.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv25Affine3DEstimatorCallback11checkSubsetERKNS_11_InputArrayES3_i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !375
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51, !noalias !375
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.e = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.f = icmp eq i32 %i.e, 65536
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51, !noalias !378
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %_ZNK2cv11_InputArray6getMatEi.exit92 unwind label %bb.j

bb.e:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit92 unwind label %bb.j

_ZNK2cv11_InputArray6getMatEi.exit92:             ; preds = %bb.e, %bb.d
  %i.i = add i32 %3, -1
  %.not85109 = icmp sgt i32 %3, 1
  %8 = zext i32 %i.i to i64                       ; 4 uses
  br i1 %.not85109, label %_ZNK2cv11_InputArray6getMatEi.exit92.split.us.preheader, label %_ZNK2cv11_InputArray6getMatEi.exit92.split.preheader

_ZNK2cv11_InputArray6getMatEi.exit92.split.preheader: ; preds = %_ZNK2cv11_InputArray6getMatEi.exit92
  %..sroa.sel = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %..sroa.sel, align 8, !tbaa !281
  %.not = icmp sgt i32 %3, %i.j
  %..sroa.sel.1 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %..sroa.sel.1, align 8
  %.not.1 = icmp sgt i32 %3, %i.k
  %or.cond = select i1 %.not, i1 true, i1 %.not.1
  br i1 %or.cond, label %.split.us, label %.critedge89

_ZNK2cv11_InputArray6getMatEi.exit92.split.us.preheader: ; preds = %_ZNK2cv11_InputArray6getMatEi.exit92
  %..sroa.sel100.us = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load ptr, ptr %..sroa.sel100.us, align 8, !tbaa !118 ; 3 uses
  %..sroa.sel.us = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i32, ptr %..sroa.sel.us, align 8, !tbaa !281
  %.not.us = icmp sgt i32 %3, %i.m
  br i1 %.not.us, label %.split.us, label %.preheader.us

bb.f:                                             ; preds = %.preheader.us, %.critedge.us
  %indvars.iv118 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next119, %.critedge.us ] ; 4 uses
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv118 ; 3 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !363
  %i.p = fsub float %i.o, %i.at                   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !367
  %i.s = fsub float %i.r, %i.av                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !349
  %i.v = fsub float %i.u, %i.ax                   ; 3 uses
  %i.w = fmul float %i.s, %i.s
  %i.x = call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.w)
  %i.y = call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.x)
  %.not84107.us.not = icmp eq i64 %indvars.iv118, 0
  br i1 %.not84107.us.not, label %.critedge.us, label %.lr.ph.us

bb.g:                                             ; preds = %.lr.ph.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv118
  br i1 %exitcond.not, label %.critedge.us, label %.lr.ph.us, !llvm.loop !381

.lr.ph.us:                                        ; preds = %bb.f, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !363
  %i.ab = fsub float %i.aa, %i.at                 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !367
  %i.ae = fsub float %i.ad, %i.av                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !349
  %i.ah = fsub float %i.ag, %i.ax                 ; 3 uses
  %i.ai = fmul float %i.ae, %i.ae
  %i.aj = call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.ai)
  %i.ak = call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.aj)
  %i.al = fmul float %i.y, %i.ak
  %i.am = fmul float %i.s, %i.ae
  %i.an = call float @llvm.fmuladd.f32(float %i.p, float %i.ab, float %i.am)
  %i.ao = call float @llvm.fmuladd.f32(float %i.v, float %i.ah, float %i.an) ; 2 uses
  %i.ap = fmul float %i.ao, %i.ao
  %i.aq = fmul float %i.al, f0x3F7DF4C2
  %i.ar = fcmp ule float %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %.critedge89

.critedge.us:                                     ; preds = %bb.g, %bb.f
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %8
  br i1 %exitcond122.not, label %..critedge87_crit_edge.us, label %bb.f, !llvm.loop !382

.preheader.us:                                    ; preds = %_ZNK2cv11_InputArray6getMatEi.exit92.split.us.preheader
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %8 ; 3 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !363 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !367 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !349 ; 2 uses
  br label %bb.f

..critedge87_crit_edge.us:                        ; preds = %.critedge.us
  %..sroa.sel100.us.1 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ay = load ptr, ptr %..sroa.sel100.us.1, align 8, !tbaa !118 ; 3 uses
  %..sroa.sel.us.1 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = load i32, ptr %..sroa.sel.us.1, align 8, !tbaa !281
  %.not.us.1 = icmp sgt i32 %3, %i.az
  br i1 %.not.us.1, label %.split.us, label %.preheader.us.1

.preheader.us.1:                                  ; preds = %..critedge87_crit_edge.us
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %8 ; 3 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !363 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !367 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !349 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.critedge.us.1, %.preheader.us.1
  %indvars.iv118.1 = phi i64 [ 0, %.preheader.us.1 ], [ %indvars.iv.next119.1, %.critedge.us.1 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %indvars.iv118.1 ; 3 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !363
  %i.bi = fsub float %i.bh, %i.bb                 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !367
  %i.bl = fsub float %i.bk, %i.bd                 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !349
  %i.bo = fsub float %i.bn, %i.bf                 ; 3 uses
  %i.bp = fmul float %i.bl, %i.bl
  %i.bq = call float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.bp)
  %i.br = call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bq)
  %.not84107.us.not.1 = icmp eq i64 %indvars.iv118.1, 0
  br i1 %.not84107.us.not.1, label %.critedge.us.1, label %.lr.ph.us.1

.lr.ph.us.1:                                      ; preds = %bb.h, %bb.i
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %indvars.iv.1 ; 3 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !363
  %i.bu = fsub float %i.bt, %i.bb                 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !367
  %i.bx = fsub float %i.bw, %i.bd                 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !349
  %i.ca = fsub float %i.bz, %i.bf                 ; 3 uses
  %i.cb = fmul float %i.bx, %i.bx
  %i.cc = call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.cb)
  %i.cd = call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.cc)
  %i.ce = fmul float %i.br, %i.cd
  %i.cf = fmul float %i.bl, %i.bx
  %i.cg = call float @llvm.fmuladd.f32(float %i.bi, float %i.bu, float %i.cf)
  %i.ch = call float @llvm.fmuladd.f32(float %i.bo, float %i.ca, float %i.cg) ; 2 uses
  %i.ci = fmul float %i.ch, %i.ch
  %i.cj = fmul float %i.ce, f0x3F7DF4C2
  %i.ck = fcmp ule float %i.ci, %i.cj
  br i1 %i.ck, label %bb.i, label %.critedge89

bb.i:                                             ; preds = %.lr.ph.us.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %indvars.iv118.1
  br i1 %exitcond.1.not, label %.critedge.us.1, label %.lr.ph.us.1, !llvm.loop !381

.critedge.us.1:                                   ; preds = %bb.i, %bb.h
  %indvars.iv.next119.1 = add nuw nsw i64 %indvars.iv118.1, 1 ; 2 uses
  %exitcond122.1.not = icmp eq i64 %indvars.iv.next119.1, %8
  br i1 %exitcond122.1.not, label %.critedge89, label %bb.h, !llvm.loop !382

bb.j:                                             ; preds = %bb.e, %bb.d, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.split.us:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit92.split.preheader, %_ZNK2cv11_InputArray6getMatEi.exit92.split.us.preheader, %..critedge87_crit_edge.us
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv25Affine3DEstimatorCallback11checkSubsetERKNS_11_InputArrayES3_i, ptr noundef nonnull @.str.1, i32 noundef 485) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %.split.us
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %6, align 8, !tbaa !8     ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !14
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.m ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #23
  br label %bb.o

.critedge89:                                      ; preds = %.lr.ph.us, %.critedge.us.1, %.lr.ph.us.1, %_ZNK2cv11_InputArray6getMatEi.exit92.split.preheader
  %i.ct = phi i1 [ true, %.critedge.us.1 ], [ true, %_ZNK2cv11_InputArray6getMatEi.exit92.split.preheader ], [ false, %.lr.ph.us.1 ], [ false, %.lr.ph.us ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %i.ct

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j
  %.pn80.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cl, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn80.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv19PointSetRegistrator8Callback11checkSubsetERKNS_11_InputArrayES4_i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i1 true
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv30Translation3DEstimatorCallbackELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !43
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !79
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !79
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv30Translation3DEstimatorCallbackESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv30Translation3DEstimatorCallbackESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv30Translation3DEstimatorCallbackESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv30Translation3DEstimatorCallbackESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv30Translation3DEstimatorCallbackESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !341  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv30Translation3DEstimatorCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv30Translation3DEstimatorCallback9runKernelERKNS_11_InputArrayES3_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 8 uses
end_hunk_0
