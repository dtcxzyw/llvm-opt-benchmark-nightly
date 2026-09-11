Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cascadedetect?download=true
inline.NumInlined: 2811
inline.NumDeleted: 1260
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv23predictCategoricalStumpINS_12LBPEvaluatorEEEiRNS_21CascadeClassifierImplERNS_3PtrINS_16FeatureEvaluatorEEERd:bb.a
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !36 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !36
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !36 ; 2 uses
  %.neg79 = add i32 %i.bp, %i.at
  %i.ca = add i32 %i.bu, %i.bz
  %i.cb = sub i32 %.neg79, %i.ca
  %.not.i.i = icmp slt i32 %i.cb, %i.bl
  %i.cc = select i1 %.not.i.i, i64 0, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !36
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !36 ; 2 uses
  %i.ci = add i32 %i.ay, %i.bu
  %i.cj = add i32 %i.at, %i.ch
  %i.ck = sub i32 %i.ci, %i.cj
  %.not44.i.i = icmp slt i32 %i.ck, %i.bl
  %i.cl = select i1 %.not44.i.i, i64 0, i64 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !36
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !36
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !36
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !36 ; 2 uses
  %i.cw = add i32 %i.ay, %i.cq
  %i.cx = sub i32 %i.ch, %i.cw
  %i.cy = add nsw i32 %i.cx, %i.cv
  %.not45.i.i = icmp sge i32 %i.cy, %i.bl
  %i.cz = zext i1 %.not45.i.i to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  %i.db = load i32, ptr %i.da, align 4, !tbaa !36
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !36 ; 2 uses
  %i.df = add i32 %i.bi, %i.cv
  %i.dg = sub i32 %i.ay, %i.df
  %i.dh = add nsw i32 %i.dg, %i.de
  %.not46.i.i = icmp slt i32 %i.dh, %i.bl
  %i.di = select i1 %.not46.i.i, i32 0, i32 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !36
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !36 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ao, i64 60
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !36
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !36
  %i.dt = add i32 %i.de, %i.dn
  %i.du = sub i32 %i.bi, %i.dt
  %i.dv = add nsw i32 %i.du, %i.ds
  %.not47.i.i = icmp slt i32 %i.dv, %i.bl
  %i.dw = select i1 %.not47.i.i, i32 0, i32 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !36
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !36 ; 2 uses
  %i.ec = add i32 %i.bd, %i.dn
  %i.ed = add i32 %i.bi, %i.eb
  %i.ee = sub i32 %i.ec, %i.ed
  %.not48.i.i = icmp slt i32 %i.ee, %i.bl
  %i.ef = select i1 %.not48.i.i, i32 0, i32 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !36
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !36 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.em = load i32, ptr %i.el, align 4, !tbaa !36
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !36
  %i.eq = add i32 %i.eb, %i.ek
  %i.er = add i32 %i.bd, %i.ep
  %i.es = sub i32 %i.eq, %i.er
  %.not49.i.i = icmp slt i32 %i.es, %i.bl
  %i.et = select i1 %.not49.i.i, i32 0, i32 2
  %i.eu = add i32 %i.bd, %i.bz
  %i.ev = add i32 %i.at, %i.ek
  %i.ew = sub i32 %i.eu, %i.ev
  %.not50.i.i = icmp sge i32 %i.ew, %i.bl
  %i.ex = zext i1 %.not50.i.i to i32
  %i.ey = or disjoint i32 %i.et, %i.ex
  %i.ez = or disjoint i32 %i.dw, %i.di
  %i.fa = or disjoint i32 %i.ez, %i.ef
  %i.fb = or disjoint i32 %i.fa, %i.ey
  %i.fc = mul nsw i64 %indvars.iv, %i.z
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.052102, i64 %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.cl
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.cc
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.cz
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !36
  %i.fi = shl nuw i32 1, %i.fb
  %i.fj = and i32 %i.fi, %i.fh
  %.not62 = icmp eq i32 %i.fj, 0
  %.in.v = select i1 %.not62, i64 12, i64 8
  %.in = getelementptr inbounds nuw i8, ptr %i.al, i64 %.in.v
  %i.fk = load float, ptr %.in, align 4, !tbaa !112
  %i.fl = fpext float %i.fk to double
  %i.fm = fadd double %.14999, %i.fl              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !462

._crit_edge:                                      ; preds = %bb.i, %bb.h
  %.149.lcssa = phi double [ 0.000000e+00, %bb.h ], [ %i.fm, %bb.i ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !260
  %i.fp = fpext float %i.fo to double
  %i.fq = fcmp uge double %.149.lcssa, %i.fp
  br i1 %i.fq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.fr = sext i32 %i.ah to i64                   ; 2 uses
  %i.fs = getelementptr inbounds [16 x i8], ptr %.050103, i64 %i.fr
  %i.ft = mul nsw i64 %i.fr, %i.z
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.052102, i64 %i.ft
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  br i1 %exitcond115.not, label %.thread71, label %bb.h, !llvm.loop !463

bb.k:                                             ; preds = %._crit_edge
  %i.fv = trunc nuw nsw i64 %indvars.iv111 to i32
  %i.fw = sub nsw i32 0, %i.fv
  br label %.thread71

.thread71:                                        ; preds = %bb.j, %bb.g, %bb.k
  %storemerge = phi double [ %.149.lcssa, %bb.k ], [ 0.000000e+00, %bb.g ], [ %.149.lcssa, %bb.j ]
  %.3 = phi i32 [ %i.fw, %bb.k ], [ 1, %bb.g ], [ 1, %bb.j ]
  store double %storemerge, ptr %2, align 8, !tbaa !41
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !53
  %.not.i = icmp eq i32 %i.fy, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.thread71
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #33
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.thread71, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i32 %.3
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv14predictOrderedINS_13HaarEvaluatorEEEiRNS_21CascadeClassifierImplERNS_3PtrINS_16FeatureEvaluatorEEERd(ptr noundef nonnull align 8 dereferenceable(1376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv14predictOrderedINS_13HaarEvaluatorEEEiRNS_21CascadeClassifierImplERNS_3PtrINS_16FeatureEvaluatorEEERdE25__cv_trace_location_fn487)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !217  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12                  ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !209
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !213
  %.not72 = icmp sgt i32 %i.i, 0
  br i1 %.not72, label %.lr.ph77, label %.split.loop.exit

.lr.ph77:                                         ; preds = %bb.a
  %i.p = load ptr, ptr %1, align 8, !tbaa !165    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1320
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1312
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1328
  %wide.trip.count87 = and i64 %i.h, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %bb.i
  %indvars.iv84 = phi i64 [ 0, %.lr.ph77 ], [ %indvars.iv.next85, %bb.i ] ; 3 uses
  %.05174 = phi i32 [ 0, %.lr.ph77 ], [ %.152.lcssa, %bb.i ] ; 2 uses
  %.05373 = phi i32 [ 0, %.lr.ph77 ], [ %.154.lcssa, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv84 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !259  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %bb.h

.lr.ph:                                           ; preds = %bb.b
  %i.x = load i32, ptr %i.t, align 4, !tbaa !264
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !169
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !173  ; 12 uses
  %i.aa = load float, ptr %i.s, align 8, !tbaa !149
  %i.ab = sext i32 %i.x to i64
  %wide.trip.count = zext nneg i32 %i.v to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.o, i64 %i.ab
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.ac = phi double [ 0.000000e+00, %.lr.ph ], [ %i.dx, %bb.g ]
  %.15266 = phi i32 [ %.05174, %.lr.ph ], [ %i.eb, %bb.g ] ; 2 uses
  %.15465 = phi i32 [ %.05373, %.lr.ph ], [ %i.dz, %bb.g ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.046 = phi i32 [ 0, %bb.c ], [ %i.dq, %bb.f ]
  %i.ad = add nsw i32 %.046, %.15465
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.ae ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !266
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [64 x i8], ptr %i.y, i64 %i.ah ; 15 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !112
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !36
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !36
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !36
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !36
  %i.be = add i32 %i.at, %i.ay
  %i.bf = sub i32 %i.ao, %i.be
  %i.bg = add nsw i32 %i.bf, %i.bd
  %i.bh = sitofp i32 %i.bg to float
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 52
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !112
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !36
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !36
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !36
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !36
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !36
  %i.ce = add i32 %i.bt, %i.by
  %i.cf = sub i32 %i.bo, %i.ce
  %i.cg = add nsw i32 %i.cf, %i.cd
  %i.ch = sitofp i32 %i.cg to float
  %i.ci = fmul float %i.bj, %i.ch
  %i.cj = call float @llvm.fmuladd.f32(float %i.ak, float %i.bh, float %i.ci) ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !112 ; 2 uses
  %i.cm = fcmp une float %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !36
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !36
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !36
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !36
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !36
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !36
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !36
  %i.dh = add i32 %i.cw, %i.db
  %i.di = sub i32 %i.cr, %i.dh
  %i.dj = add nsw i32 %i.di, %i.dg
  %i.dk = sitofp i32 %i.dj to float
  %i.dl = call float @llvm.fmuladd.f32(float %i.cl, float %i.dk, float %i.cj)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i = phi float [ %i.dl, %bb.e ], [ %i.cj, %bb.d ]
  %i.dm = fmul float %.0.i.i, %i.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !267
  %i.dp = fcmp olt float %i.dm, %i.do
  %.in.v = select i1 %i.dp, i64 8, i64 12
  %.in = getelementptr inbounds nuw i8, ptr %i.af, i64 %.in.v
  %i.dq = load i32, ptr %.in, align 4, !tbaa !36  ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %bb.d, label %bb.g, !llvm.loop !464

bb.g:                                             ; preds = %bb.f
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ds = sub nsw i32 %.15266, %i.dq
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !112
  %i.dw = fpext float %i.dv to double
  %i.dx = fadd double %i.ac, %i.dw                ; 2 uses
  %i.dy = load i32, ptr %gep, align 4, !tbaa !269 ; 2 uses
  %i.dz = add nsw i32 %i.dy, %.15465              ; 2 uses
  %i.ea = add i32 %.15266, 1
  %i.eb = add i32 %i.ea, %i.dy                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.h, label %bb.c, !llvm.loop !465

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.ec = phi double [ 0.000000e+00, %bb.b ], [ %i.dx, %bb.g ] ; 3 uses
  %.154.lcssa = phi i32 [ %.05373, %bb.b ], [ %i.dz, %bb.g ]
  %.152.lcssa = phi i32 [ %.05174, %bb.b ], [ %i.eb, %bb.g ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !260
  %i.ef = fpext float %i.ee to double
  %i.eg = fcmp uge double %i.ec, %i.ef
  br i1 %i.eg, label %bb.i, label %.split.loop.exit70

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %..split.loop.exit_crit_edge, label %bb.b, !llvm.loop !466

..split.loop.exit_crit_edge:                      ; preds = %bb.i
  store double %i.ec, ptr %2, align 8, !tbaa !41
  br label %.split.loop.exit

.split.loop.exit70:                               ; preds = %bb.h
  %i.eh = trunc nuw nsw i64 %indvars.iv84 to i32
  store double %i.ec, ptr %2, align 8, !tbaa !41
  %i.ei = sub nsw i32 0, %i.eh
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.a, %..split.loop.exit_crit_edge, %.split.loop.exit70
  %spec.select = phi i32 [ %i.ei, %.split.loop.exit70 ], [ 1, %..split.loop.exit_crit_edge ], [ 1, %bb.a ]
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !53
  %.not.i = icmp eq i32 %i.ek, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.split.loop.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #33
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.split.loop.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i32 %spec.select
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv18predictCategoricalINS_12LBPEvaluatorEEEiRNS_21CascadeClassifierImplERNS_3PtrINS_16FeatureEvaluatorEEERd(ptr noundef nonnull align 8 dereferenceable(1376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv18predictCategoricalINS_12LBPEvaluatorEEEiRNS_21CascadeClassifierImplERNS_3PtrINS_16FeatureEvaluatorEEERdE25__cv_trace_location_fn529)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !217  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12                  ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !263
  %i.l = add nsw i32 %i.k, 31
  %i.m = sdiv i32 %i.l, 32
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !209
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !213
  %.not94 = icmp sgt i32 %i.i, 0
  br i1 %.not94, label %.lr.ph99, label %.split.loop.exit

.lr.ph99:                                         ; preds = %bb.a
  %i.w = load ptr, ptr %1, align 8, !tbaa !165    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1264
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1272
  %wide.trip.count109 = and i64 %i.h, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph99, %bb.g
  %indvars.iv106 = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next107, %bb.g ] ; 3 uses
  %.05896 = phi i32 [ 0, %.lr.ph99 ], [ %.159.lcssa, %bb.g ] ; 2 uses
  %.06095 = phi i32 [ 0, %.lr.ph99 ], [ %.161.lcssa, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv106 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !259 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %bb.f

.lr.ph:                                           ; preds = %bb.b
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !264
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !191
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !196 ; 16 uses
  %i.ag = sext i32 %i.ad to i64
  %wide.trip.count = zext nneg i32 %i.ab to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.v, i64 %i.ag
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ah = phi double [ 0.000000e+00, %.lr.ph ], [ %i.fq, %bb.e ]
  %.15988 = phi i32 [ %.05896, %.lr.ph ], [ %i.fu, %bb.e ] ; 2 uses
  %.16187 = phi i32 [ %.06095, %.lr.ph ], [ %i.fs, %bb.e ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %.053 = phi i32 [ 0, %bb.c ], [ %i.fj, %bb.d ]
  %i.ai = add nsw i32 %.053, %.16187
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !266
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [64 x i8], ptr %i.ae, i64 %i.am ; 16 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !36
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !36 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.au = load i32, ptr %i.at, align 4, !tbaa !36
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !36 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !36
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !36 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !36
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !36 ; 4 uses
  %i.bi = add i32 %i.ax, %i.bc
  %i.bj = sub i32 %i.as, %i.bi
  %i.bk = add nsw i32 %i.bj, %i.bh                ; 8 uses
  %i.bl = load i32, ptr %i.an, align 4, !tbaa !36
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !36
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !36 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !36
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !36 ; 2 uses
  %.neg69 = add i32 %i.bo, %i.as
  %i.bz = add i32 %i.bt, %i.by
  %i.ca = sub i32 %.neg69, %i.bz
  %.not.i.i = icmp slt i32 %i.ca, %i.bk
  %i.cb = select i1 %.not.i.i, i64 0, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !36
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !36 ; 2 uses
  %i.ch = add i32 %i.ax, %i.bt
  %i.ci = add i32 %i.as, %i.cg
  %i.cj = sub i32 %i.ch, %i.ci
  %.not44.i.i = icmp slt i32 %i.cj, %i.bk
  %i.ck = select i1 %.not44.i.i, i64 0, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !36
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !36
  %i.cq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !36
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !36 ; 2 uses
  %i.cv = add i32 %i.ax, %i.cp
  %i.cw = sub i32 %i.cg, %i.cv
  %i.cx = add nsw i32 %i.cw, %i.cu
  %.not45.i.i = icmp sge i32 %i.cx, %i.bk
  %i.cy = zext i1 %.not45.i.i to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !36
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !36 ; 2 uses
  %i.de = add i32 %i.bh, %i.cu
  %i.df = sub i32 %i.ax, %i.de
  %i.dg = add nsw i32 %i.df, %i.dd
  %.not46.i.i = icmp slt i32 %i.dg, %i.bk
  %i.dh = select i1 %.not46.i.i, i32 0, i32 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !36
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !36 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.an, i64 60
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !36
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !36
  %i.ds = add i32 %i.dd, %i.dm
  %i.dt = sub i32 %i.bh, %i.ds
  %i.du = add nsw i32 %i.dt, %i.dr
  %.not47.i.i = icmp slt i32 %i.du, %i.bk
  %i.dv = select i1 %.not47.i.i, i32 0, i32 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.an, i64 52
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !36
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !36 ; 2 uses
  %i.eb = add i32 %i.bc, %i.dm
  %i.ec = add i32 %i.bh, %i.ea
  %i.ed = sub i32 %i.eb, %i.ec
  %.not48.i.i = icmp slt i32 %i.ed, %i.bk
  %i.ee = select i1 %.not48.i.i, i32 0, i32 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !36
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !36 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !36
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !36
  %i.ep = add i32 %i.ea, %i.ej
  %i.eq = add i32 %i.bc, %i.eo
  %i.er = sub i32 %i.ep, %i.eq
  %.not49.i.i = icmp slt i32 %i.er, %i.bk
  %i.es = select i1 %.not49.i.i, i32 0, i32 2
  %i.et = add i32 %i.bc, %i.by
  %i.eu = add i32 %i.as, %i.ej
  %i.ev = sub i32 %i.et, %i.eu
  %.not50.i.i = icmp sge i32 %i.ev, %i.bk
  %i.ew = zext i1 %.not50.i.i to i32
  %i.ex = or disjoint i32 %i.es, %i.ew
  %i.ey = or disjoint i32 %i.dv, %i.dh
  %i.ez = or disjoint i32 %i.ey, %i.ee
  %i.fa = or disjoint i32 %i.ez, %i.ex
  %i.fb = mul nsw i64 %i.aj, %i.n
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.fb
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.ck
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.cb
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.cy
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !36
  %i.fh = shl nuw i32 1, %i.fa
  %i.fi = and i32 %i.fh, %i.fg
  %.not64 = icmp eq i32 %i.fi, 0
  %.in.v = select i1 %.not64, i64 12, i64 8
  %.in = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.in.v
  %i.fj = load i32, ptr %.in, align 4, !tbaa !36  ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %bb.d, label %bb.e, !llvm.loop !467

bb.e:                                             ; preds = %bb.d
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fl = sub nsw i32 %.15988, %i.fj
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.fm
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !112
  %i.fp = fpext float %i.fo to double
  %i.fq = fadd double %i.ah, %i.fp                ; 2 uses
  %i.fr = load i32, ptr %gep, align 4, !tbaa !269 ; 2 uses
  %i.fs = add nsw i32 %i.fr, %.16187              ; 2 uses
  %i.ft = add i32 %.15988, 1
  %i.fu = add i32 %i.ft, %i.fr                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.f, label %bb.c, !llvm.loop !468

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.fv = phi double [ 0.000000e+00, %bb.b ], [ %i.fq, %bb.e ] ; 3 uses
  %.161.lcssa = phi i32 [ %.06095, %bb.b ], [ %i.fs, %bb.e ]
  %.159.lcssa = phi i32 [ %.05896, %bb.b ], [ %i.fu, %bb.e ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !260
  %i.fy = fpext float %i.fx to double
  %i.fz = fcmp uge double %i.fv, %i.fy
  br i1 %i.fz, label %bb.g, label %.split.loop.exit92

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %..split.loop.exit_crit_edge, label %bb.b, !llvm.loop !469

..split.loop.exit_crit_edge:                      ; preds = %bb.g
  store double %i.fv, ptr %2, align 8, !tbaa !41
  br label %.split.loop.exit

.split.loop.exit92:                               ; preds = %bb.f
  %i.ga = trunc nuw nsw i64 %indvars.iv106 to i32
  store double %i.fv, ptr %2, align 8, !tbaa !41
  %i.gb = sub nsw i32 0, %i.ga
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.a, %..split.loop.exit_crit_edge, %.split.loop.exit92
  %spec.select = phi i32 [ %i.gb, %.split.loop.exit92 ], [ 1, %..split.loop.exit_crit_edge ], [ 1, %bb.a ]
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !53
  %.not.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.split.loop.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #33
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.split.loop.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv21CascadeClassifierImpl16setMaskGeneratorERKNS_3PtrINS_21BaseCascadeClassifier13MaskGeneratorEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1376) initializes((216, 224)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %1, align 8, !tbaa !270
  store ptr %i.b, ptr %i.a, align 8, !tbaa !270
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74   ; 4 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_21BaseCascadeClassifier13MaskGeneratorEEaSERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.g, align 4, !tbaa !36
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !36
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !74
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.l = phi ptr [ %i.f, %bb.b ], [ %i.f, %bb.d ], [ %.pr.pre.i.i.i.i, %bb.e ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !77
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #29, !inline_history !470
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #29, !inline_history !470
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i9.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !78

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #29
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.e, ptr %i.c, align 8, !tbaa !74
  br label %_ZN2cv3PtrINS_21BaseCascadeClassifier13MaskGeneratorEEaSERKS3_.exit

_ZN2cv3PtrINS_21BaseCascadeClassifier13MaskGeneratorEEaSERKS3_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZN2cv21CascadeClassifierImpl16getMaskGeneratorEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr.100") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1376) %1) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !271
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !271
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_21BaseCascadeClassifier13MaskGeneratorEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !36
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !36
  br label %_ZN2cv3PtrINS_21BaseCascadeClassifier13MaskGeneratorEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv3PtrINS_21BaseCascadeClassifier13MaskGeneratorEEC2ERKS3_.exit

_ZN2cv3PtrINS_21BaseCascadeClassifier13MaskGeneratorEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv32createFaceDetectionMaskGeneratorEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr.100") align 8 captures(none) initializes((0, 16)) %0) local_unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2cv21CascadeClassifierImpl18isOldFormatCascadeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1376) %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.c = icmp ne ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK2cv21CascadeClassifierImpl14getFeatureTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1376) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(1216) %i.b)
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZNK2cv21CascadeClassifierImpl21getOriginalWindowSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1376) %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 4
  ret i64 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZN2cv21CascadeClassifierImpl13getOldCascadeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1376) %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv21CascadeClassifierImpl26detectMultiScaleNoGroupingERKNS_11_InputArrayERSt6vectorINS_5Rect_IiEESaIS6_EERS4_IiSaIiEERS4_IdSaIdEEdNS_5Size_IiEESH_b(ptr noundef nonnull align 8 dereferenceable(1376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %5, i64 %6, i64 %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %11 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %12 = alloca %"class.std::vector.24", align 8   ; 22 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 11 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 8 uses
end_hunk_0
