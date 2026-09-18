Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui?download=true
inline.NumInlined: 3240
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN16ImGuiListClipper4StepEv:bb.a
  %i.cz = fpext float %i.cy to double
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.db = load i32, ptr %i.da, align 8, !tbaa !379
  %i.dc = sitofp i32 %i.db to double
  %i.dd = fpext float %i.cu to double
  %i.de = fneg double %i.dc
  %i.df = tail call double @llvm.fmuladd.f64(double %i.de, double %i.dd, double %i.cz)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.df, ptr %i.dg, align 8, !tbaa !381
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 10008
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !386, !range !119, !noundef !254
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread253.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %.sroa.23.0.insert.ext.i210.i = zext i32 %i.p to i64
  %.sroa.23.0.insert.shift.i211.i = shl nuw i64 %.sroa.23.0.insert.ext.i210.i, 32
  store i64 %.sroa.23.0.insert.shift.i211.i, ptr %3, align 8
  %.sroa.256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.256.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 4 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.aj

bb.u:                                             ; preds = %.thread253.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 8225
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !387, !range !119, !noundef !254
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.v, label %.critedge209.i

bb.v:                                             ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 8080
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !388 ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %.critedge209.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 984
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !389
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 984
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !389
  %i.du = icmp eq ptr %i.dr, %i.dt
  br i1 %i.du, label %bb.x, label %.critedge209.i

bb.x:                                             ; preds = %bb.w
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 8256
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !1171
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 8264
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !1172
  %i.ea = fptosi float %i.dx to i32
  %i.eb = fptosi float %i.dz to i32
  %.sroa.24.0.insert.ext.i.i = zext i32 %i.eb to i64
  %.sroa.24.0.insert.shift.i.i = shl nuw i64 %.sroa.24.0.insert.ext.i.i, 32
  %.sroa.03.0.insert.ext.i.i = zext i32 %i.ea to i64
  %.sroa.03.0.insert.insert.i.i = or disjoint i64 %.sroa.24.0.insert.shift.i.i, %.sroa.03.0.insert.ext.i.i
  store i64 %.sroa.03.0.insert.insert.i.i, ptr %4, align 8
  %.sroa.248.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %.sroa.248.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 4 dereferenceable(12) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 8272
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !1173
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 8280
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !1174
  %i.eg = fptosi float %i.ed to i32
  %i.eh = fptosi float %i.ef to i32
  %.sroa.24.0.insert.ext.i217.i = zext i32 %i.eh to i64
  %.sroa.24.0.insert.shift.i218.i = shl nuw i64 %.sroa.24.0.insert.ext.i217.i, 32
  %.sroa.03.0.insert.ext.i219.i = zext i32 %i.eg to i64
  %.sroa.03.0.insert.insert.i220.i = or disjoint i64 %.sroa.24.0.insert.shift.i218.i, %.sroa.03.0.insert.ext.i219.i
  store i64 %.sroa.03.0.insert.insert.i220.i, ptr %5, align 8
  %.sroa.244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %.sroa.244.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 8228
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !390
  %i.ek = and i32 %i.ej, 1024
  %.not201.i = icmp eq i32 %i.ek, 0
  br i1 %.not201.i, label %.critedge209.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 8288
  %i.em = load i32, ptr %i.el, align 8, !tbaa !391
  %i.en = icmp eq i32 %i.em, -1
  br i1 %i.en, label %bb.z, label %.critedge209.i

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.eo = load i32, ptr %i.o, align 8, !tbaa !334 ; 2 uses
  %i.ep = add nsw i32 %i.eo, -1
  %.sroa.23.0.insert.ext.i223.i = zext i32 %i.eo to i64
  %.sroa.23.0.insert.shift.i224.i = shl nuw i64 %.sroa.23.0.insert.ext.i223.i, 32
  %.sroa.02.0.insert.ext.i225.i = zext i32 %i.ep to i64
  %.sroa.02.0.insert.insert.i226.i = or disjoint i64 %.sroa.23.0.insert.shift.i224.i, %.sroa.02.0.insert.ext.i225.i
  store i64 %.sroa.02.0.insert.insert.i226.i, ptr %6, align 8
  %.sroa.240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %.sroa.240.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 4 dereferenceable(12) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %.critedge209.i

.critedge209.i:                                   ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.eq = phi i1 [ true, %bb.x ], [ false, %bb.w ], [ true, %bb.z ], [ true, %bb.y ], [ false, %bb.v ], [ false, %bb.u ]
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 300
  %.sroa.5.0.copyload.i.i = load float, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !86 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 1020
  %i.es = load float, ptr %i.er, align 4, !tbaa !392
  %i.et = fadd float %.sroa.5.0.copyload.i.i, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 1028
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !393
  %i.ew = fadd float %.sroa.5.0.copyload.i.i, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8076
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !394 ; 2 uses
  %.not202.i = icmp eq i32 %i.ey, 0
  br i1 %.not202.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.critedge209.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 1008
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !255
  %i.fb = icmp eq i32 %i.fa, %i.ey
  br i1 %i.fb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.fd = fptosi float %i.et to i32
  %i.fe = fptosi float %i.ew to i32
  %.sroa.24.0.insert.ext.i231.i = zext i32 %i.fe to i64
  %.sroa.24.0.insert.shift.i232.i = shl nuw i64 %.sroa.24.0.insert.ext.i231.i, 32
  %.sroa.03.0.insert.ext.i233.i = zext i32 %i.fd to i64
  %.sroa.03.0.insert.insert.i234.i = or disjoint i64 %.sroa.24.0.insert.shift.i232.i, %.sroa.03.0.insert.ext.i233.i
  store i64 %.sroa.03.0.insert.insert.i234.i, ptr %7, align 8
  %.sroa.235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %.sroa.235.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 4 dereferenceable(12) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.critedge209.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 612
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !395 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 620
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !396 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 9004
  %i.fk = load i8, ptr %i.fj, align 4, !tbaa !397, !range !119, !noundef !254
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 9040
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1175
  %i.fo = icmp eq ptr %i.fn, %i.f
  br i1 %i.fo, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 3232
  %i.fq = load float, ptr %i.fp, align 8, !tbaa !340 ; 2 uses
  %i.fr = fsub float %i.fg, %i.fq                 ; 2 uses
  %i.fs = fadd float %i.fi, %i.fq                 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 9048
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !1176, !range !119, !noundef !254
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 9056
  %i.fy = load float, ptr %i.fx, align 8, !tbaa !1177
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 9064
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !1178
  %i.gb = fptosi float %i.fy to i32
  %i.gc = fptosi float %i.ga to i32
  %.sroa.24.0.insert.ext.i237.i = zext i32 %i.gc to i64
  %.sroa.24.0.insert.shift.i238.i = shl nuw i64 %.sroa.24.0.insert.ext.i237.i, 32
  %.sroa.03.0.insert.ext.i239.i = zext i32 %i.gb to i64
  %.sroa.03.0.insert.insert.i240.i = or disjoint i64 %.sroa.24.0.insert.shift.i238.i, %.sroa.03.0.insert.ext.i239.i
  store i64 %.sroa.03.0.insert.insert.i240.i, ptr %8, align 8
  %.sroa.222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %.sroa.222.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 4 dereferenceable(12) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.0191.i = phi float [ %i.fr, %bb.af ], [ %i.fr, %bb.ae ], [ %i.fg, %bb.ad ], [ %i.fg, %bb.ac ]
  %.0190.i = phi float [ %i.fs, %bb.af ], [ %i.fs, %bb.ae ], [ %i.fi, %bb.ad ], [ %i.fi, %bb.ac ]
  br i1 %i.eq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 8248
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !398 ; 2 uses
  %i.gf = icmp eq i32 %i.ge, 2
  %i.gg = icmp eq i32 %i.ge, 3
  %i.gh = select i1 %i.gf, i32 65280, i32 0
  %i.gi = select i1 %i.gg, i32 65537, i32 1
  %10 = or disjoint i32 %i.gi, %i.gh
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.5.8.insert.insert.i.i = phi i32 [ %10, %bb.ah ], [ 1, %bb.ag ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.gk = fptosi float %.0191.i to i32
  %i.gl = fptosi float %.0190.i to i32
  %.sroa.24.0.insert.ext.i243.i = zext i32 %i.gl to i64
  %.sroa.24.0.insert.shift.i244.i = shl nuw i64 %.sroa.24.0.insert.ext.i243.i, 32
  %.sroa.03.0.insert.ext.i245.i = zext i32 %i.gk to i64
  %.sroa.03.0.insert.insert.i246.i = or disjoint i64 %.sroa.24.0.insert.shift.i244.i, %.sroa.03.0.insert.ext.i245.i
  store i64 %.sroa.03.0.insert.insert.i246.i, ptr %9, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.5.8.insert.insert.i.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull align 4 dereferenceable(12) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.t
  %i.gm = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !378 ; 2 uses
  %i.gp = load i32, ptr %i.gm, align 8, !tbaa !384 ; 4 uses
  %i.gq = sext i32 %i.gp to i64
  %.idx.i = mul nsw i64 %i.gq, 12
  %i.gr = getelementptr inbounds i8, ptr %i.go, i64 %.idx.i
  %.not203261.i = icmp eq i32 %i.gp, 0
  br i1 %.not203261.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj
  %i.gs = getelementptr inbounds nuw i8, ptr %i.f, i64 284
  br label %bb.ao

._crit_edge.i:                                    ; preds = %bb.aq, %bb.aj
  %i.gt = load i32, ptr %i.z, align 4, !tbaa !372 ; 4 uses
  %i.gu = sub nsw i32 %i.gp, %i.gt                ; 2 uses
  %i.gv = icmp slt i32 %i.gu, 2
  br i1 %i.gv, label %_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i, label %.preheader47.i.i

.preheader47.i.i:                                 ; preds = %._crit_edge.i
  %i.gw = sext i32 %i.gt to i64                   ; 2 uses
  %i.gx = zext nneg i32 %i.gu to i64
  br label %.lr.ph.preheader.i.i

.loopexit46.i.i:                                  ; preds = %bb.al
  %i.gy = icmp sgt i64 %indvars.iv56.i.i, 2
  br i1 %i.gy, label %.lr.ph.preheader.i.i, label %.preheader.i.i, !llvm.loop !1163

.lr.ph.preheader.i.i:                             ; preds = %.loopexit46.i.i, %.preheader47.i.i
  %indvars.iv56.i.i = phi i64 [ %i.gx, %.preheader47.i.i ], [ %indvars.iv.next57.i.i, %.loopexit46.i.i ] ; 2 uses
  %indvars.iv.next57.i.i = add nsw i64 %indvars.iv56.i.i, -1 ; 2 uses
  %i.gz = add nsw i64 %indvars.iv.next57.i.i, %i.gw
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.loopexit46.i.i
  %.051.i.i = add nsw i32 %i.gt, 1                ; 2 uses
  %i.ha = load i32, ptr %i.gm, align 8, !tbaa !384 ; 3 uses
  %i.hb = icmp slt i32 %.051.i.i, %i.ha
  br i1 %i.hb, label %.lr.ph54.i.i, label %_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.al, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.gw, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.al ] ; 2 uses
  %i.hc = load ptr, ptr %i.gn, align 8, !tbaa !378 ; 2 uses
  %i.hd = getelementptr inbounds [12 x i8], ptr %i.hc, i64 %indvars.iv.i.i ; 3 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !1169
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.hf = getelementptr inbounds [12 x i8], ptr %i.hc, i64 %indvars.iv.next.i.i ; 3 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !1169
  %i.hh = icmp sgt i32 %i.he, %i.hg
  br i1 %i.hh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %i.hd, i64 12, i1 false), !tbaa.struct !1179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hd, ptr noundef nonnull align 4 dereferenceable(12) %i.hf, i64 12, i1 false), !tbaa.struct !1179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hf, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !1179
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i.i
  %i.hi = icmp slt i64 %indvars.iv.next.i.i, %i.gz
  br i1 %i.hi, label %.lr.ph.i.i, label %.loopexit46.i.i, !llvm.loop !1164

.lr.ph54.i.i:                                     ; preds = %.preheader.i.i, %bb.an
  %i.hj = phi i32 [ %i.if, %bb.an ], [ %i.ha, %.preheader.i.i ] ; 2 uses
  %.053.i.i = phi i32 [ %.0.i.i, %bb.an ], [ %.051.i.i, %.preheader.i.i ] ; 2 uses
  %.0.in52.i.i = phi i32 [ %.1.i.i, %bb.an ], [ %i.gt, %.preheader.i.i ] ; 2 uses
  %i.hk = load ptr, ptr %i.gn, align 8, !tbaa !378 ; 2 uses
  %i.hl = sext i32 %.0.in52.i.i to i64
  %i.hm = getelementptr inbounds [12 x i8], ptr %i.hk, i64 %i.hl ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !1170 ; 2 uses
  %i.hp = sext i32 %.053.i.i to i64               ; 2 uses
  %i.hq = getelementptr inbounds [12 x i8], ptr %i.hk, i64 %i.hp ; 4 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !1169 ; 2 uses
  %i.hs = icmp slt i32 %i.ho, %i.hr
  br i1 %i.hs, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph54.i.i
  %i.ht = load i32, ptr %i.hm, align 4, !tbaa !1169
  %i.hu = call noundef i32 @llvm.smin.i32(i32 %i.ht, i32 %i.hr)
  store i32 %i.hu, ptr %i.hm, align 4, !tbaa !1169
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !1170
  %i.hx = call noundef i32 @llvm.smax.i32(i32 %i.ho, i32 %i.hw)
  store i32 %i.hx, ptr %i.hn, align 4, !tbaa !1170
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.hz = sext i32 %i.hj to i64
  %i.ia = xor i64 %i.hp, -1
  %i.ib = add nsw i64 %i.ia, %i.hz
  %i.ic = mul nuw nsw i64 %i.ib, 12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hq, ptr nonnull align 4 %i.hy, i64 %i.ic, i1 false)
  %i.id = load i32, ptr %i.gm, align 8, !tbaa !384
  %i.ie = add nsw i32 %i.id, -1                   ; 2 uses
  store i32 %i.ie, ptr %i.gm, align 8, !tbaa !384
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph54.i.i
  %i.if = phi i32 [ %i.hj, %.lr.ph54.i.i ], [ %i.ie, %bb.am ] ; 3 uses
  %.1.i.i = phi i32 [ %.053.i.i, %.lr.ph54.i.i ], [ %.0.in52.i.i, %bb.am ] ; 2 uses
  %.0.i.i = add nsw i32 %.1.i.i, 1                ; 2 uses
  %i.ig = icmp slt i32 %.0.i.i, %i.if
  br i1 %i.ig, label %.lr.ph54.i.i, label %_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i, !llvm.loop !1165

bb.ao:                                            ; preds = %bb.aq, %.lr.ph.i
  %.0188262.i = phi ptr [ %i.go, %.lr.ph.i ], [ %i.jz, %bb.aq ] ; 7 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0188262.i, i64 8 ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 4, !tbaa !1180, !range !119, !noundef !254
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ik = load float, ptr %i.gs, align 4, !tbaa !338
  %i.il = load float, ptr %i.cx, align 8, !tbaa !380
  %i.im = load float, ptr %i.b, align 4, !tbaa !337
  %i.in = getelementptr inbounds nuw i8, ptr %.0188262.i, i64 4
  %i.io = fpext float %i.im to double
  %i.ip = fpext float %i.il to double
  %i.iq = fpext float %i.ik to double
  %i.ir = load <2 x i32>, ptr %.0188262.i, align 4, !tbaa !255
  %i.is = sitofp <2 x i32> %i.ir to <2 x double>
  %i.it = insertelement <2 x double> poison, double %i.iq, i64 0
  %i.iu = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iv = fsub <2 x double> %i.is, %i.iu
  %i.iw = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.ix = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iy = fsub <2 x double> %i.iv, %i.ix
  %i.iz = insertelement <2 x double> poison, double %i.io, i64 0
  %i.ja = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jb = fdiv <2 x double> %i.iy, %i.ja          ; 2 uses
  %i.jc = extractelement <2 x double> %i.jb, i64 0
  %i.jd = fptosi double %i.jc to i32
  %i.je = extractelement <2 x double> %i.jb, i64 1
  %i.jf = fadd double %i.je, f0x3FEFFFFDE0000000
  %i.jg = fptosi double %i.jf to i32
  %i.jh = add nsw i32 %i.cw, %i.jd
  %i.ji = getelementptr inbounds nuw i8, ptr %.0188262.i, i64 9
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !1181
  %i.jk = sext i8 %i.jj to i32
  %i.jl = add nsw i32 %i.jh, %i.jk                ; 2 uses
  %i.jm = load i32, ptr %i.o, align 8, !tbaa !334 ; 2 uses
  %i.jn = add nsw i32 %i.jm, -1
  %i.jo = icmp slt i32 %i.jl, %i.cw
  %i.jp = call i32 @llvm.smin.i32(i32 %i.jl, i32 %i.jn)
  %i.jq = select i1 %i.jo, i32 %i.cw, i32 %i.jp   ; 3 uses
  store i32 %i.jq, ptr %.0188262.i, align 4, !tbaa !1169
  %i.jr = getelementptr inbounds nuw i8, ptr %.0188262.i, i64 10
  %i.js = load i8, ptr %i.jr, align 2, !tbaa !1182
  %i.jt = sext i8 %i.js to i32
  %i.ju = add i32 %i.cw, %i.jt
  %i.jv = add i32 %i.ju, %i.jg                    ; 2 uses
  %i.jw = add nsw i32 %i.jq, 1
  %.not259.i = icmp sgt i32 %i.jv, %i.jq
  %i.jx = call i32 @llvm.smin.i32(i32 %i.jv, i32 %i.jm)
  %i.jy = select i1 %.not259.i, i32 %i.jx, i32 %i.jw
  store i32 %i.jy, ptr %i.in, align 4, !tbaa !1170
  store i8 0, ptr %i.ih, align 4, !tbaa !1180
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.jz = getelementptr inbounds nuw i8, ptr %.0188262.i, i64 12 ; 2 uses
  %.not203.i = icmp eq ptr %i.jz, %i.gr
  br i1 %.not203.i, label %._crit_edge.i, label %bb.ao

_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i: ; preds = %bb.an, %.preheader.i.i, %._crit_edge.i, %._ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit_crit_edge.i
  %i.ka = phi i32 [ %.pre266.i, %._ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit_crit_edge.i ], [ %i.gp, %._crit_edge.i ], [ %i.ha, %.preheader.i.i ], [ %i.if, %bb.an ] ; 2 uses
  %i.kb = phi i32 [ %i.ct, %._ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit_crit_edge.i ], [ %i.cw, %._crit_edge.i ], [ %i.cw, %.preheader.i.i ], [ %i.cw, %bb.an ] ; 2 uses
  %i.kc = phi ptr [ %i.cs, %._ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit_crit_edge.i ], [ %i.cv, %._crit_edge.i ], [ %i.cv, %.preheader.i.i ], [ %i.cv, %bb.an ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre267.i = load i32, ptr %i.z, align 4, !tbaa !372 ; 3 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.ka, i32 %.pre267.i)
  %wide.trip.count = sext i32 %smax to i64
  %exitcond.not60.not = icmp slt i32 %.pre267.i, %i.ka
  br i1 %exitcond.not60.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i
  %i.kf = sext i32 %.pre267.i to i64
  %i.kg = load ptr, ptr %i.kd, align 8, !tbaa !378
  %i.kh = load i32, ptr %i.o, align 8, !tbaa !334
  br label %bb.as

bb.ar:                                            ; preds = %bb.as
end_hunk_0
