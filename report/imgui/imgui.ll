Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN16ImGuiListClipper4StepEv:bb.a
bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 984
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !371
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 984
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !371
  %i.du = icmp eq ptr %i.dr, %i.dt
  br i1 %i.du, label %bb.z, label %.critedge219.i

bb.z:                                             ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 8408
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !372 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 2                    ; 2 uses
  %i.dy = sext i1 %i.dx to i32                    ; 3 uses
  %i.dz = icmp eq i32 %i.dw, 3                    ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 8416
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !1183
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 8424
  %i.ee = load float, ptr %i.ed, align 8, !tbaa !1184
  %i.ef = fptosi float %i.ec to i32
  %i.eg = fptosi float %i.ee to i32
  %.sroa.24.0.insert.ext.i.i = zext i32 %i.eg to i64
  %.sroa.24.0.insert.shift.i.i = shl nuw i64 %.sroa.24.0.insert.ext.i.i, 32
  %.sroa.03.0.insert.ext.i.i = zext i32 %i.ef to i64
  %.sroa.03.0.insert.insert.i.i = or disjoint i64 %.sroa.24.0.insert.shift.i.i, %.sroa.03.0.insert.ext.i.i
  %i.eh = select i1 %i.dz, i32 65537, i32 1
  %.sroa.3.8.insert.insert.i.i = select i1 %i.dx, i32 65281, i32 %i.eh ; 2 uses
  store i64 %.sroa.03.0.insert.insert.i.i, ptr %4, align 8
  %.sroa.250.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.3.8.insert.insert.i.i, ptr %.sroa.250.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 4 dereferenceable(12) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 8428
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !373
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 8436
  %i.el = load float, ptr %i.ek, align 4, !tbaa !374
  %i.em = fcmp ogt float %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 8432
  %i.eo = load float, ptr %i.en, align 8          ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 8440
  %i.eq = load float, ptr %i.ep, align 8          ; 2 uses
  %i.er = fcmp ogt float %i.eo, %i.eq
  %i.es = select i1 %i.em, i1 true, i1 %i.er
  br i1 %i.es, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.et = fptosi float %i.eo to i32
  %i.eu = fptosi float %i.eq to i32
  %.sroa.24.0.insert.ext.i227.i = zext i32 %i.eu to i64
  %.sroa.24.0.insert.shift.i228.i = shl nuw i64 %.sroa.24.0.insert.ext.i227.i, 32
  %.sroa.03.0.insert.ext.i229.i = zext i32 %i.et to i64
  %.sroa.03.0.insert.insert.i230.i = or disjoint i64 %.sroa.24.0.insert.shift.i228.i, %.sroa.03.0.insert.ext.i229.i
  store i64 %.sroa.03.0.insert.insert.i230.i, ptr %5, align 8
  %.sroa.246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.3.8.insert.insert.i.i, ptr %.sroa.246.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 8388
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !375
  %i.ex = and i32 %i.ew, 1024
  %.not211.i = icmp eq i32 %i.ex, 0
  br i1 %.not211.i, label %.critedge219.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 8448
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !376
  %i.fa = icmp eq i32 %i.ez, -1
  br i1 %i.fa, label %bb.ad, label %.critedge219.i

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.fb = load i32, ptr %i.p, align 4, !tbaa !314 ; 2 uses
  %i.fc = add nsw i32 %i.fb, -1
  %.sroa.23.0.insert.ext.i239.i = zext i32 %i.fb to i64
  %.sroa.23.0.insert.shift.i240.i = shl nuw i64 %.sroa.23.0.insert.ext.i239.i, 32
  %.sroa.02.0.insert.ext.i241.i = zext i32 %i.fc to i64
  %.sroa.02.0.insert.insert.i242.i = or disjoint i64 %.sroa.23.0.insert.shift.i240.i, %.sroa.02.0.insert.ext.i241.i
  store i64 %.sroa.02.0.insert.insert.i242.i, ptr %6, align 8
  %.sroa.242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %.sroa.242.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 4 dereferenceable(12) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %.critedge219.i

.critedge219.i:                                   ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.x, %bb.w
  %.shrunk.i = phi i1 [ false, %bb.y ], [ %i.dz, %bb.ad ], [ %i.dz, %bb.ac ], [ %i.dz, %bb.ab ], [ false, %bb.x ], [ false, %bb.w ]
  %i.fd = phi i32 [ 0, %bb.y ], [ %i.dy, %bb.ad ], [ %i.dy, %bb.ac ], [ %i.dy, %bb.ab ], [ 0, %bb.x ], [ 0, %bb.w ]
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %.sroa.5.0.copyload.i.i = load float, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !75 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 1020
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !377
  %i.fg = fadd float %.sroa.5.0.copyload.i.i, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 1028
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !378
  %i.fj = fadd float %.sroa.5.0.copyload.i.i, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 8220
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !379 ; 2 uses
  %.not212.i = icmp eq i32 %i.fl, 0
  br i1 %.not212.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.critedge219.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 1008
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !237
  %i.fo = icmp eq i32 %i.fn, %i.fl
  br i1 %i.fo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fp = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.fq = fptosi float %i.fg to i32
  %i.fr = fptosi float %i.fj to i32
  %.sroa.24.0.insert.ext.i247.i = zext i32 %i.fr to i64
  %.sroa.24.0.insert.shift.i248.i = shl nuw i64 %.sroa.24.0.insert.ext.i247.i, 32
  %.sroa.03.0.insert.ext.i249.i = zext i32 %i.fq to i64
  %.sroa.03.0.insert.insert.i250.i = or disjoint i64 %.sroa.24.0.insert.shift.i248.i, %.sroa.03.0.insert.ext.i249.i
  store i64 %.sroa.03.0.insert.insert.i250.i, ptr %7, align 8
  %.sroa.237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %.sroa.237.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 4 dereferenceable(12) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.critedge219.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 620
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !380 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.g, i64 628
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !381 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 9172
  %i.fx = load i8, ptr %i.fw, align 4, !tbaa !382, !range !100, !noundef !236
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 9208
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !1185
  %i.gb = icmp eq ptr %i.ga, %i.g
  br i1 %i.gb, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 3304
  %i.gd = load float, ptr %i.gc, align 8, !tbaa !320 ; 4 uses
  %i.ge = fsub float %i.ft, %i.gd                 ; 2 uses
  %i.gf = fadd float %i.fv, %i.gd                 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 9216
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !1186, !range !100, !noundef !236
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 9224
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !1187
  %i.gm = fsub float %i.gl, %i.gd
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 9232
  %i.go = load float, ptr %i.gn, align 8, !tbaa !1188
  %i.gp = fadd float %i.gd, %i.go
  %i.gq = fptosi float %i.gm to i32
  %i.gr = fptosi float %i.gp to i32
  %.sroa.24.0.insert.ext.i253.i = zext i32 %i.gr to i64
  %.sroa.24.0.insert.shift.i254.i = shl nuw i64 %.sroa.24.0.insert.ext.i253.i, 32
  %.sroa.03.0.insert.ext.i255.i = zext i32 %i.gq to i64
  %.sroa.03.0.insert.insert.i256.i = or disjoint i64 %.sroa.24.0.insert.shift.i254.i, %.sroa.03.0.insert.ext.i255.i
  store i64 %.sroa.03.0.insert.insert.i256.i, ptr %8, align 8
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %.sroa.220.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull align 4 dereferenceable(12) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.0201.i = phi float [ %i.ft, %bb.ag ], [ %i.ft, %bb.ah ], [ %i.ge, %bb.aj ], [ %i.ge, %bb.ai ]
  %.0200.i = phi float [ %i.fv, %bb.ag ], [ %i.fv, %bb.ah ], [ %i.gf, %bb.aj ], [ %i.gf, %bb.ai ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.gt = fptosi float %.0201.i to i32
  %i.gu = fptosi float %.0200.i to i32
  %.sroa.24.0.insert.ext.i259.i = zext i32 %i.gu to i64
  %.sroa.24.0.insert.shift.i260.i = shl nuw i64 %.sroa.24.0.insert.ext.i259.i, 32
  %.sroa.03.0.insert.ext.i261.i = zext i32 %i.gt to i64
  %.sroa.03.0.insert.insert.i262.i = or disjoint i64 %.sroa.24.0.insert.shift.i260.i, %.sroa.03.0.insert.ext.i261.i
  %.sroa.5.8.insert.ext.i265.i = shl nsw i32 %i.fd, 8
  %.sroa.5.8.insert.shift.i266.i = and i32 %.sroa.5.8.insert.ext.i265.i, 65280
  %.sroa.5.8.insert.insert.i267.i = select i1 %.shrunk.i, i32 65537, i32 1
  %.sroa.3.8.insert.insert.i268.i = or disjoint i32 %.sroa.5.8.insert.shift.i266.i, %.sroa.5.8.insert.insert.i267.i
  store i64 %.sroa.03.0.insert.insert.i262.i, ptr %9, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.3.8.insert.insert.i268.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 4 dereferenceable(12) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.v
  %i.gv = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !360 ; 2 uses
  %i.gy = load i32, ptr %i.gv, align 8, !tbaa !366 ; 4 uses
  %i.gz = sext i32 %i.gy to i64
  %.idx.i = mul nsw i64 %i.gz, 12
  %i.ha = getelementptr inbounds i8, ptr %i.gx, i64 %.idx.i
  %.not213284.i = icmp eq i32 %i.gy, 0
  br i1 %.not213284.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 284
  br label %bb.aq

._crit_edge.i:                                    ; preds = %bb.as, %bb.al
  %i.hc = load i32, ptr %i.aa, align 4, !tbaa !354 ; 4 uses
  %i.hd = sub nsw i32 %i.gy, %i.hc                ; 2 uses
  %i.he = icmp slt i32 %i.hd, 2
  br i1 %i.he, label %_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i, label %.preheader47.i.i

.preheader47.i.i:                                 ; preds = %._crit_edge.i
  %i.hf = sext i32 %i.hc to i64                   ; 2 uses
  %i.hg = zext nneg i32 %i.hd to i64
  br label %.lr.ph.preheader.i.i

.loopexit46.i.i:                                  ; preds = %bb.an
  %i.hh = icmp sgt i64 %indvars.iv56.i.i, 2
  br i1 %i.hh, label %.lr.ph.preheader.i.i, label %.preheader.i.i, !llvm.loop !1175

.lr.ph.preheader.i.i:                             ; preds = %.loopexit46.i.i, %.preheader47.i.i
  %indvars.iv56.i.i = phi i64 [ %i.hg, %.preheader47.i.i ], [ %indvars.iv.next57.i.i, %.loopexit46.i.i ] ; 2 uses
  %indvars.iv.next57.i.i = add nsw i64 %indvars.iv56.i.i, -1 ; 2 uses
  %i.hi = add nsw i64 %indvars.iv.next57.i.i, %i.hf
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.loopexit46.i.i
  %.051.i.i = add nsw i32 %i.hc, 1                ; 2 uses
  %i.hj = load i32, ptr %i.gv, align 8, !tbaa !366 ; 3 uses
  %i.hk = icmp slt i32 %.051.i.i, %i.hj
  br i1 %i.hk, label %.lr.ph54.i.i, label %_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.an, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.hf, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.an ] ; 2 uses
  %10 = load ptr, ptr %i.gw, align 8, !tbaa !360  ; 2 uses
  %i.hl = getelementptr inbounds [12 x i8], ptr %10, i64 %indvars.iv.i.i ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !1181
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.hn = getelementptr inbounds [12 x i8], ptr %10, i64 %indvars.iv.next.i.i ; 3 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !1181
  %i.hp = icmp sgt i32 %i.hm, %i.ho
  br i1 %i.hp, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %i.hl, i64 12, i1 false), !tbaa.struct !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hl, ptr noundef nonnull align 4 dereferenceable(12) %i.hn, i64 12, i1 false), !tbaa.struct !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hn, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i.i
  %i.hq = icmp slt i64 %indvars.iv.next.i.i, %i.hi
  br i1 %i.hq, label %.lr.ph.i.i, label %.loopexit46.i.i, !llvm.loop !1176

.lr.ph54.i.i:                                     ; preds = %.preheader.i.i, %bb.ap
  %i.hr = phi i32 [ %i.im, %bb.ap ], [ %i.hj, %.preheader.i.i ] ; 2 uses
  %.053.i.i = phi i32 [ %.0.i.i, %bb.ap ], [ %.051.i.i, %.preheader.i.i ] ; 2 uses
  %.0.in52.i.i.a = phi i32 [ %.1.i.i, %bb.ap ], [ %i.hc, %.preheader.i.i ] ; 2 uses
  %11 = load ptr, ptr %i.gw, align 8, !tbaa !360  ; 2 uses
  %i.hs = sext i32 %.0.in52.i.i.a to i64
  %i.ht = getelementptr inbounds [12 x i8], ptr %11, i64 %i.hs ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !1182 ; 2 uses
  %i.hw = sext i32 %.053.i.i to i64               ; 2 uses
  %i.hx = getelementptr inbounds [12 x i8], ptr %11, i64 %i.hw ; 4 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !1181 ; 2 uses
  %i.hz = icmp slt i32 %i.hv, %i.hy
  br i1 %i.hz, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph54.i.i
  %i.ia = load i32, ptr %i.ht, align 4, !tbaa !1181
  %i.ib = call noundef i32 @llvm.smin.i32(i32 %i.ia, i32 %i.hy)
  store i32 %i.ib, ptr %i.ht, align 4, !tbaa !1181
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !1182
  %i.ie = call noundef i32 @llvm.smax.i32(i32 %i.hv, i32 %i.id)
  store i32 %i.ie, ptr %i.hu, align 4, !tbaa !1182
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.ig = sext i32 %i.hr to i64
  %i.ih = xor i64 %i.hw, -1
  %i.ii = add nsw i64 %i.ih, %i.ig
  %i.ij = mul nuw nsw i64 %i.ii, 12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hx, ptr nonnull align 4 %i.if, i64 %i.ij, i1 false)
  %i.ik = load i32, ptr %i.gv, align 8, !tbaa !366
  %i.il = add nsw i32 %i.ik, -1                   ; 2 uses
  store i32 %i.il, ptr %i.gv, align 8, !tbaa !366
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph54.i.i
  %i.im = phi i32 [ %i.hr, %.lr.ph54.i.i ], [ %i.il, %bb.ao ] ; 3 uses
  %.1.i.i = phi i32 [ %.053.i.i, %.lr.ph54.i.i ], [ %.0.in52.i.i.a, %bb.ao ] ; 2 uses
  %.0.i.i = add nsw i32 %.1.i.i, 1                ; 2 uses
  %i.in = icmp slt i32 %.0.i.i, %i.im
  br i1 %i.in, label %.lr.ph54.i.i, label %_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i, !llvm.loop !1177

bb.aq:                                            ; preds = %bb.as, %.lr.ph.i
  %.0198285.i = phi ptr [ %i.gx, %.lr.ph.i ], [ %i.kg, %bb.as ] ; 7 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0198285.i, i64 8 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 4, !tbaa !1190, !range !100, !noundef !236
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ir = load float, ptr %i.hb, align 4, !tbaa !318
  %i.is = load float, ptr %i.cx, align 8, !tbaa !362
  %i.it = load float, ptr %i.c, align 8, !tbaa !317
  %i.iu = getelementptr inbounds nuw i8, ptr %.0198285.i, i64 4
  %i.iv = fpext float %i.ir to double
  %i.iw = fpext float %i.is to double
  %i.ix = fpext float %i.it to double
  %i.iy = load <2 x i32>, ptr %.0198285.i, align 4, !tbaa !237
  %i.iz = sitofp <2 x i32> %i.iy to <2 x double>
  %i.ja = insertelement <2 x double> poison, double %i.iv, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = fsub <2 x double> %i.iz, %i.jb
  %i.jd = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jf = fsub <2 x double> %i.jc, %i.je
  %i.jg = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = fdiv <2 x double> %i.jf, %i.jh          ; 2 uses
  %i.jj = extractelement <2 x double> %i.ji, i64 0
  %i.jk = fptosi double %i.jj to i32
  %i.jl = extractelement <2 x double> %i.ji, i64 1
  %i.jm = fadd double %i.jl, f0x3FEFFFFDE0000000
  %i.jn = fptosi double %i.jm to i32
  %i.jo = add nsw i32 %i.cw, %i.jk
  %i.jp = getelementptr inbounds nuw i8, ptr %.0198285.i, i64 9
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !1191
  %i.jr = sext i8 %i.jq to i32
  %i.js = add nsw i32 %i.jo, %i.jr                ; 2 uses
  %i.jt = load i32, ptr %i.p, align 4, !tbaa !314 ; 2 uses
  %i.ju = add nsw i32 %i.jt, -1
  %i.jv = icmp slt i32 %i.js, %i.cw
  %i.jw = call i32 @llvm.smin.i32(i32 %i.js, i32 %i.ju)
  %i.jx = select i1 %i.jv, i32 %i.cw, i32 %i.jw   ; 3 uses
  store i32 %i.jx, ptr %.0198285.i, align 4, !tbaa !1181
  %i.jy = getelementptr inbounds nuw i8, ptr %.0198285.i, i64 10
  %i.jz = load i8, ptr %i.jy, align 2, !tbaa !1192
  %i.ka = sext i8 %i.jz to i32
  %i.kb = add i32 %i.cw, %i.ka
  %i.kc = add i32 %i.kb, %i.jn                    ; 2 uses
  %i.kd = add nsw i32 %i.jx, 1
  %.not282.i = icmp sgt i32 %i.kc, %i.jx
  %i.ke = call i32 @llvm.smin.i32(i32 %i.kc, i32 %i.jt)
  %i.kf = select i1 %.not282.i, i32 %i.ke, i32 %i.kd
  store i32 %i.kf, ptr %i.iu, align 4, !tbaa !1182
  store i8 0, ptr %i.io, align 4, !tbaa !1190
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.kg = getelementptr inbounds nuw i8, ptr %.0198285.i, i64 12 ; 2 uses
  %.not213.i = icmp eq ptr %i.kg, %i.ha
  br i1 %.not213.i, label %._crit_edge.i, label %bb.aq

_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i: ; preds = %bb.ap, %.preheader.i.i, %._crit_edge.i, %._ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit_crit_edge.i
  %i.kh = phi i32 [ %.pre290.i, %._ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit_crit_edge.i ], [ %i.gy, %._crit_edge.i ], [ %i.hj, %.preheader.i.i ], [ %i.im, %bb.ap ] ; 2 uses
  %i.ki = phi i32 [ %i.ct, %._ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit_crit_edge.i ], [ %i.cw, %._crit_edge.i ], [ %i.cw, %.preheader.i.i ], [ %i.cw, %bb.ap ] ; 2 uses
  %i.kj = phi ptr [ %i.cs, %._ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit_crit_edge.i ], [ %i.cv, %._crit_edge.i ], [ %i.cv, %.preheader.i.i ], [ %i.cv, %bb.ap ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.pre291.i = load i32, ptr %i.aa, align 4, !tbaa !354 ; 3 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.kh, i32 %.pre291.i)
  %wide.trip.count = sext i32 %smax to i64
  %exitcond.not61.not = icmp slt i32 %.pre291.i, %i.kh
  br i1 %exitcond.not61.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i
  %i.kl = sext i32 %.pre291.i to i64
  %i.km = load ptr, ptr %i.kk, align 8, !tbaa !360
  %i.kn = load i32, ptr %i.p, align 4, !tbaa !314
  br label %bb.au

bb.at:                                            ; preds = %bb.au
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.au, !llvm.loop !1178

bb.au:                                            ; preds = %.lr.ph, %bb.at
  %indvars.iv62 = phi i64 [ %i.kl, %.lr.ph ], [ %indvars.iv.next, %bb.at ] ; 2 uses
  %i.ko = getelementptr inbounds [12 x i8], ptr %i.km, i64 %indvars.iv62 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !1181 ; 2 uses
  %i.kq = call noundef i32 @llvm.smax.i32(i32 %i.kp, i32 %i.ki) ; 6 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !1182
  %i.kt = call noundef i32 @llvm.smin.i32(i32 %i.ks, i32 %i.kn) ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv62, 1 ; 3 uses
  %i.ku = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  %.not215.i = icmp slt i32 %i.kq, %i.kt
  br i1 %.not215.i, label %bb.av, label %bb.at, !llvm.loop !1178

bb.av:                                            ; preds = %bb.au
  store i32 %i.kq, ptr %0, align 8, !tbaa !315
  store i32 %i.kt, ptr %i.kj, align 4, !tbaa !358
  store i32 %i.ku, ptr %i.aa, align 4, !tbaa !354
  %i.kv = icmp sgt i32 %i.kp, %i.ki
  br i1 %i.kv, label %bb.aw, label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit

bb.aw:                                            ; preds = %bb.av
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kx = load <2 x double>, ptr %i.kw, align 8, !tbaa !316
  %i.ky = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.kx)
  %i.kz = sitofp i32 %i.kq to double
  %i.la = load float, ptr %i.c, align 8, !tbaa !317 ; 4 uses
  %i.lb = fpext float %i.la to double
  %i.lc = call double @llvm.fmuladd.f64(double %i.kz, double %i.lb, double %i.ky)
  %i.ld = fptrunc double %i.lc to float           ; 5 uses
  %i.le = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 5312
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !289 ; 5 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 284 ; 3 uses
  %i.li = load float, ptr %i.lh, align 4, !tbaa !318
  %i.lj = fsub float %i.ld, %i.li
  store float %i.ld, ptr %i.lh, align 4, !tbaa !318
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 308 ; 2 uses
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !319 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.le, i64 3304
  %i.ln = load float, ptr %i.lm, align 8, !tbaa !320 ; 2 uses
  %i.lo = fsub float %i.ld, %i.ln                 ; 2 uses
  %i.lp = fcmp oge float %i.ll, %i.lo
  %i.lq = select i1 %i.lp, float %i.ll, float %i.lo
  store float %i.lq, ptr %i.lk, align 4, !tbaa !319
  %i.lr = fsub float %i.ld, %i.la
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 292
  store float %i.lr, ptr %i.ls, align 4, !tbaa !321
  %i.lt = fsub float %i.la, %i.ln
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lg, i64 332
  store float %i.lt, ptr %i.lu, align 4, !tbaa !322
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lg, i64 456
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !323 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 28
  store float %i.ld, ptr %i.lx, align 4, !tbaa !327
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.le, i64 8984
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !328 ; 6 uses
  %.not34.i.i.i = icmp eq ptr %i.lz, null
  br i1 %.not34.i.i.i, label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 570
  %i.mb = load i8, ptr %i.ma, align 2, !tbaa !344, !range !100, !noundef !236
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr noundef nonnull %i.lz)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.md = fdiv float %i.lj, %i.la
  %i.me = fadd float %i.md, 5.000000e-01
  %i.mf = fptosi float %i.me to i32               ; 3 uses
  %i.mg = icmp sgt i32 %i.mf, 0
  br i1 %i.mg, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !345
  %i.mj = and i32 %i.mi, 1
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lz, i64 112 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !346
  %i.mn = add nsw i32 %i.mm, %i.mf
  store i32 %i.mn, ptr %i.ml, align 8, !tbaa !346
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lz, i64 152 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !347
  %i.mq = add nsw i32 %i.mp, %i.mf
  store i32 %i.mq, ptr %i.mo, align 8, !tbaa !347
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.mr = load float, ptr %i.lh, align 4, !tbaa !318
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lz, i64 128
  store float %i.mr, ptr %i.ms, align 8, !tbaa !348
  %.pre24 = load i32, ptr %0, align 8, !tbaa !315
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre25 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !358
  br label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit

._crit_edge.loopexit:                             ; preds = %bb.at
  store i32 %i.kq, ptr %0, align 8, !tbaa !315
  store i32 %i.kt, ptr %i.kj, align 4, !tbaa !358
  store i32 %i.ku, ptr %i.aa, align 4, !tbaa !354
  br label %._crit_edge
end_hunk_0
begin_hunk_1_@_ZN5ImGui19FindHoveredWindowExERK6ImVec2bPP11ImGuiWindowS5_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.049 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ], [ null, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3324
  %i.h = load i64, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 5216
  %i.j = load i32, ptr %i.i, align 8, !tbaa !718  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %.thread111

.lr.ph:                                           ; preds = %bb.d
  %i.l = lshr i64 %i.h, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = bitcast i32 %i.m to float                ; 2 uses
  %i.o = trunc i64 %i.h to i32
  %i.p = bitcast i32 %i.o to float                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 3244
  %i.r = load float, ptr %i.q, align 4, !tbaa !730 ; 4 uses
  %.inv.i = fcmp ole float %i.r, %i.p
  %..i = select i1 %.inv.i, float %i.p, float %i.r
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %..i, i64 0
  %.inv12.i = fcmp ole float %i.r, %i.n
  %i.s = select i1 %.inv12.i, float %i.n, float %i.r
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.s, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 5224
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !494
  %i.v = bitcast <2 x float> %.sroa.0.4.vec.insert.i to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 5344
  %i.y = zext nneg i32 %i.j to i64
  %i.z = load float, ptr %0, align 4              ; 4 uses
  %i.aa = load float, ptr %i.w, align 4           ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.thread102
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %.thread102 ] ; 2 uses
  %.046130 = phi ptr [ null, %.lr.ph ], [ %.3107, %.thread102 ] ; 13 uses
  %.150128 = phi ptr [ %.049, %.lr.ph ], [ %.453106, %.thread102 ] ; 10 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !601 ; 20 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 205
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !398, !range !100, !noundef !236
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %.thread102

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 212
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !733, !range !100, !noundef !236
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.thread102, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !614 ; 2 uses
  %i.al = and i32 %i.ak, 512
  %.not58 = icmp eq i32 %i.al, 0
  br i1 %.not58, label %bb.h, label %.thread102

bb.h:                                             ; preds = %bb.g
  %i.am = and i32 %i.ak, 66
  %.not59 = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not59, i64 %i.v, i64 %i.h   ; 2 uses
  %.sroa.074.0.extract.trunc = trunc i64 %i.an to i32
  %i.ao = bitcast i32 %.sroa.074.0.extract.trunc to float ; 2 uses
  %.sroa.475.0.extract.shift = lshr i64 %i.an, 32
  %.sroa.475.0.extract.trunc = trunc nuw i64 %.sroa.475.0.extract.shift to i32
  %i.ap = bitcast i32 %.sroa.475.0.extract.trunc to float ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 536
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !373
  %i.as = fsub float %i.ar, %i.ao
  %i.at = fcmp ult float %i.z, %i.as
  br i1 %i.at, label %.thread102, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 540
  %i.av = load float, ptr %i.au, align 4, !tbaa !377
  %i.aw = fsub float %i.av, %i.ap
  %i.ax = fcmp ult float %i.aa, %i.aw
  br i1 %i.ax, label %.thread102, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 544
  %i.az = load float, ptr %i.ay, align 4, !tbaa !374
  %i.ba = fadd float %i.az, %i.ao
  %i.bb = fcmp olt float %i.z, %i.ba
  br i1 %i.bb, label %_ZNK6ImRect15ContainsWithPadERK6ImVec2S2_.exit, label %.thread102

_ZNK6ImRect15ContainsWithPadERK6ImVec2S2_.exit:   ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 548
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !378
  %i.be = fadd float %i.bd, %i.ap
  %i.bf = fcmp olt float %i.aa, %i.be
  br i1 %i.bf, label %bb.k, label %.thread102

bb.k:                                             ; preds = %_ZNK6ImRect15ContainsWithPadERK6ImVec2S2_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 648
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !734 ; 2 uses
  %.not61 = icmp eq i16 %i.bh, 0
  br i1 %.not61, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !693
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 652
  %i.bl = load i16, ptr %i.bk, align 4, !tbaa !1331
  %i.bm = sitofp i16 %i.bl to float
  %i.bn = fadd float %i.bj, %i.bm                 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !735
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 654
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !1332
  %i.bs = sitofp i16 %i.br to float
  %i.bt = fadd float %i.bp, %i.bs                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 650
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !736
  %i.bw = sitofp i16 %i.bv to float
  %i.bx = fadd float %i.bt, %i.bw
  %i.by = fcmp ult float %i.z, %i.bn
  br i1 %i.by, label %.thread90, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = sitofp i16 %i.bh to float
  %i.ca = fadd float %i.bn, %i.bz
  %i.cb = fcmp oge float %i.aa, %i.bt
  %i.cc = fcmp olt float %i.z, %i.ca
  %or.cond.i = and i1 %i.cc, %i.cb
  br i1 %or.cond.i, label %_ZNK6ImRect8ContainsERK6ImVec2.exit, label %.thread90

.thread90:                                        ; preds = %bb.m, %bb.l
  br i1 %1, label %.thread111, label %bb.p

_ZNK6ImRect8ContainsERK6ImVec2.exit:              ; preds = %bb.m
  %i.cd = fcmp olt float %i.aa, %i.bx
  %cond.fr = freeze i1 %i.cd
  br i1 %cond.fr, label %.thread102, label %bb.n

bb.n:                                             ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit
  br i1 %1, label %.thread111, label %bb.p

bb.o:                                             ; preds = %bb.k
  br i1 %1, label %.thread111, label %bb.p

bb.p:                                             ; preds = %.thread90, %bb.n, %bb.o
  %i.ce = icmp eq ptr %.150128, null
  %spec.select65 = select i1 %i.ce, ptr %i.ac, ptr %.150128 ; 3 uses
  %i.cf = icmp eq ptr %.046130, null
  br i1 %i.cf, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.x, align 8, !tbaa !501 ; 2 uses
  %.not62 = icmp eq ptr %i.cg, null
  br i1 %.not62, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 960
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !674
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 960
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !674
  %.not63 = icmp eq ptr %i.ci, %i.ck
  br i1 %.not63, label %.thread102, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.147 = phi ptr [ %.046130, %bb.p ], [ %i.ac, %bb.r ], [ %i.ac, %bb.q ] ; 2 uses
  %.not126 = icmp eq ptr %spec.select65, null
  br i1 %.not126, label %.thread102, label %.thread111

.thread102:                                       ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit, %bb.r, %bb.h, %bb.i, %bb.j, %bb.s, %_ZNK6ImRect15ContainsWithPadERK6ImVec2S2_.exit, %bb.f, %bb.e, %bb.g
  %.3107 = phi ptr [ %.046130, %bb.h ], [ null, %bb.r ], [ %.046130, %bb.g ], [ %.147, %bb.s ], [ %.046130, %_ZNK6ImRect15ContainsWithPadERK6ImVec2S2_.exit ], [ %.046130, %bb.f ], [ %.046130, %bb.e ], [ %.046130, %bb.j ], [ %.046130, %bb.i ], [ %.046130, %_ZNK6ImRect8ContainsERK6ImVec2.exit ] ; 2 uses
  %.453106 = phi ptr [ %.150128, %bb.h ], [ %spec.select65, %bb.r ], [ %.150128, %bb.g ], [ null, %bb.s ], [ %.150128, %_ZNK6ImRect15ContainsWithPadERK6ImVec2S2_.exit ], [ %.150128, %bb.f ], [ %.150128, %bb.e ], [ %.150128, %bb.j ], [ %.150128, %bb.i ], [ %.150128, %_ZNK6ImRect8ContainsERK6ImVec2.exit ] ; 2 uses
  %i.cl = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.cl, label %bb.e, label %.thread111, !llvm.loop !1330

.thread111:                                       ; preds = %.thread102, %bb.o, %bb.n, %.thread90, %bb.s, %bb.d
  %.5 = phi ptr [ %.049, %bb.d ], [ %i.ac, %bb.o ], [ %spec.select65, %bb.s ], [ %i.ac, %bb.n ], [ %i.ac, %.thread90 ], [ %.453106, %.thread102 ]
  %.4 = phi ptr [ null, %bb.d ], [ %.046130, %bb.o ], [ %.147, %bb.s ], [ %.046130, %bb.n ], [ %.046130, %.thread90 ], [ %.3107, %.thread102 ]
  store ptr %.5, ptr %2, align 8, !tbaa !601
  %.not64 = icmp eq ptr %3, null
  br i1 %.not64, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread111
  store ptr %.4, ptr %3, align 8, !tbaa !601
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread111
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui8NewFrameEv() local_unnamed_addr #12 {
bb.a:
  %0 = alloca %struct.ImRect, align 8             ; 5 uses
  %1 = alloca %struct.ImFontStackData, align 8    ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 149 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10136 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1356 ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 10144
  %3 = zext nneg i32 %i.e to i64
  br label %bb.bh

._crit_edge:                                      ; preds = %bb.bj, %bb.a
  %i.g = phi i32 [ %i.e, %bb.a ], [ %i.pw, %bb.bj ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 10144 ; 2 uses
  %5 = load ptr, ptr %4, align 8, !tbaa !487      ; 2 uses
  %i.h = sext i32 %i.g to i64
  %.idx.i = shl nsw i64 %i.h, 5
  %i.i = getelementptr inbounds i8, ptr %5, i64 %.idx.i
  %.not12.i = icmp eq i32 %i.g, 0
  br i1 %.not12.i, label %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.c
  %.013.i = phi ptr [ %i.o, %bb.c ], [ %5, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.013.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !491
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !492
  tail call void %i.n(ptr noundef %i.c, ptr noundef nonnull %.013.i), !inline_history !493
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i, label %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit, label %.lr.ph.i

_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit: ; preds = %bb.c, %._crit_edge
  %i.p = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 13 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !737  ; 3 uses
  %i.s = and i32 %i.r, 4
  %.not.i301 = icmp eq i32 %i.s, 0
  br i1 %.not.i301, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 114
  store i8 1, ptr %i.t, align 2, !tbaa !738
  %i.u = and i32 %i.r, -5                         ; 2 uses
  store i32 %i.u, ptr %i.q, align 8, !tbaa !737
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit
  %i.v = phi i32 [ %i.u, %bb.d ], [ %i.r, %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit ] ; 2 uses
  %i.w = and i32 %i.v, 8
  %.not17.i = icmp eq i32 %i.w, 0
  br i1 %.not17.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 115
  store i8 0, ptr %i.x, align 1, !tbaa !1357
  %i.y = and i32 %i.v, -9
  store i32 %i.y, ptr %i.q, align 8, !tbaa !737
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 3064
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !739
  %.not18.i = icmp eq ptr %i.aa, null
  br i1 %.not18.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 3088 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !449 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = icmp eq ptr %i.ac, @_ZL39Platform_GetClipboardTextFn_DefaultImplP12ImGuiContext
  %or.cond.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr @"_ZZN5ImGuiL30ErrorCheckNewFrameSanityChecksEvEN3$_08__invokeEP12ImGuiContext", ptr %i.ab, align 8, !tbaa !449
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 3072
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !740
  %.not19.i = icmp eq ptr %i.ag, null
  br i1 %.not19.i, label %_ZN5ImGuiL30ErrorCheckNewFrameSanityChecksEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 3096 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !450 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = icmp eq ptr %i.ai, @_ZL39Platform_SetClipboardTextFn_DefaultImplP12ImGuiContextPKc
  %or.cond20.i = or i1 %i.aj, %i.ak
  br i1 %or.cond20.i, label %bb.l, label %_ZN5ImGuiL30ErrorCheckNewFrameSanityChecksEv.exit

bb.l:                                             ; preds = %bb.k
  store ptr @"_ZZN5ImGuiL30ErrorCheckNewFrameSanityChecksEvEN3$_18__invokeEP12ImGuiContextPKc", ptr %i.ah, align 8, !tbaa !450
  br label %_ZN5ImGuiL30ErrorCheckNewFrameSanityChecksEv.exit

_ZN5ImGuiL30ErrorCheckNewFrameSanityChecksEv.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 10066 ; 2 uses
  %i.am = load i8, ptr %i.al, align 2, !tbaa !485, !range !100, !noundef !236
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.u, label %bb.m

bb.m:                                             ; preds = %_ZN5ImGuiL30ErrorCheckNewFrameSanityChecksEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !486 ; 2 uses
  %.not.i302 = icmp eq ptr %i.ap, null
  br i1 %.not.i302, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i64 0, ptr %i.a, align 8, !tbaa !253
  %i.aq = call noundef ptr @_Z18ImFileLoadToMemoryPKcS0_Pmi(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull @.str.197, ptr noundef nonnull %i.a, i32 noundef 0) ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZN5ImGui23LoadIniSettingsFromDiskEPKc.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !253 ; 2 uses
  %.not5.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not5.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5ImGui25LoadIniSettingsFromMemoryEPKcm(ptr noundef nonnull %i.aq, i64 noundef %i.ar)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !228 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 10608 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 10604 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !229 ; 2 uses
  %i.ay = sext i16 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !231
  %.not.i.i.i.i = icmp eq i32 %i.ba, %i.au
  br i1 %.not.i.i.i.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i, label %bb.s

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i: ; preds = %bb.r
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 6
  %.pre.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i, align 2, !tbaa !233
  %i.bb = add i16 %.pre.i.i.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bc = sext i16 %i.ax to i32
  %i.bd = add nsw i32 %i.bc, 1
  %i.be = srem i32 %i.bd, 6                       ; 2 uses
  %i.bf = trunc nsw i32 %i.be to i16
  store i16 %i.bf, ptr %i.aw, align 4, !tbaa !229
  %i.bg = sext i32 %i.be to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bg ; 3 uses
  store i32 %i.au, ptr %i.bh, align 4, !tbaa !231
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  store i16 0, ptr %i.bi, align 2, !tbaa !233
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i16 0, ptr %i.bj, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i: ; preds = %bb.s, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i
  %i.bk = phi i16 [ 1, %bb.s ], [ %i.bb, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i ]
  %i.bl = phi i64 [ %i.bg, %bb.s ], [ %i.ay, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i ]
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 6
  store i16 %i.bk, ptr %i.bn, align 2, !tbaa !233
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 10600 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !235
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !235
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i, %bb.q
  %i.br = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !226
  %i.bs = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  call void %i.br(ptr noundef nonnull %i.aq, ptr noundef %i.bs), !inline_history !1333
  br label %_ZN5ImGui23LoadIniSettingsFromDiskEPKc.exit.i

_ZN5ImGui23LoadIniSettingsFromDiskEPKc.exit.i:    ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.t

bb.t:                                             ; preds = %_ZN5ImGui23LoadIniSettingsFromDiskEPKc.exit.i, %bb.m
  store i8 1, ptr %i.al, align 2, !tbaa !485
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN5ImGuiL30ErrorCheckNewFrameSanityChecksEv.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 10068 ; 3 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !573 ; 2 uses
  %i.bv = fcmp ogt float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.v, label %_ZN5ImGuiL14UpdateSettingsEv.exit

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !727
  %i.by = fsub float %i.bu, %i.bx                 ; 2 uses
  store float %i.by, ptr %i.bt, align 4, !tbaa !573
  %i.bz = fcmp ugt float %i.by, 0.000000e+00
  br i1 %i.bz, label %_ZN5ImGuiL14UpdateSettingsEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !486 ; 2 uses
  %.not14.i = icmp eq ptr %i.cb, null
  br i1 %.not14.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5ImGui21SaveIniSettingsToDiskEPKc(ptr noundef nonnull %i.cb)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 228
  store i8 1, ptr %i.cc, align 4, !tbaa !1358
  br label %bb.z
end_hunk_1
begin_hunk_2_@_ZN5ImGui8NewFrameEv:bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i321.prol.loopexit, label %.lr.ph.i321.prol

.lr.ph.i321.prol:                                 ; preds = %.lr.ph.i321.preheader, %.lr.ph.i321.prol
  %.030.i.prol = phi ptr [ %i.mg, %.lr.ph.i321.prol ], [ %i.lx, %.lr.ph.i321.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i321.prol ], [ 0, %.lr.ph.i321.preheader ]
  %i.me = load ptr, ptr %.030.i.prol, align 8, !tbaa !456
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 80
  store i8 1, ptr %i.mf, align 8, !tbaa !484
  %i.mg = getelementptr inbounds nuw i8, ptr %.030.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i321.prol.loopexit, label %.lr.ph.i321.prol, !llvm.loop !1335

.lr.ph.i321.prol.loopexit:                        ; preds = %.lr.ph.i321.prol, %.lr.ph.i321.preheader
  %.030.i.unr = phi ptr [ %i.lx, %.lr.ph.i321.preheader ], [ %i.mg, %.lr.ph.i321.prol ]
  %i.mh = icmp ult i64 %i.mb, 56
  br i1 %i.mh, label %.loopexit.i, label %.lr.ph.i321

.lr.ph.i321:                                      ; preds = %.lr.ph.i321.prol.loopexit, %.lr.ph.i321
  %.030.i = phi ptr [ %i.nf, %.lr.ph.i321 ], [ %.030.i.unr, %.lr.ph.i321.prol.loopexit ] ; 9 uses
  %i.mi = load ptr, ptr %.030.i, align 8, !tbaa !456
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 80
  store i8 1, ptr %i.mj, align 8, !tbaa !484
  %i.mk = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !456
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 80
  store i8 1, ptr %i.mm, align 8, !tbaa !484
  %i.mn = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !456
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 80
  store i8 1, ptr %i.mp, align 8, !tbaa !484
  %i.mq = getelementptr inbounds nuw i8, ptr %.030.i, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !456
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 80
  store i8 1, ptr %i.ms, align 8, !tbaa !484
  %i.mt = getelementptr inbounds nuw i8, ptr %.030.i, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !456
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 80
  store i8 1, ptr %i.mv, align 8, !tbaa !484
  %i.mw = getelementptr inbounds nuw i8, ptr %.030.i, i64 40
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !456
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 80
  store i8 1, ptr %i.my, align 8, !tbaa !484
  %i.mz = getelementptr inbounds nuw i8, ptr %.030.i, i64 48
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !456
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 80
  store i8 1, ptr %i.nb, align 8, !tbaa !484
  %i.nc = getelementptr inbounds nuw i8, ptr %.030.i, i64 56
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !456
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 80
  store i8 1, ptr %i.ne, align 8, !tbaa !484
  %i.nf = getelementptr inbounds nuw i8, ptr %.030.i, i64 64 ; 2 uses
  %.not.i322.7 = icmp eq ptr %i.nf, %i.ma
  br i1 %.not.i322.7, label %.loopexit.i, label %.lr.ph.i321

.loopexit.i:                                      ; preds = %.lr.ph.i321.prol.loopexit, %.lr.ph.i321, %bb.aw, %_ZL23SetupDrawListSharedDatav.exit
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lq, i64 3208 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lq, i64 4532 ; 2 uses
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !1374 ; 2 uses
  %i.nj = fcmp une float %i.ni, 0.000000e+00
  br i1 %i.nj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.loopexit.i
  store float %i.ni, ptr %i.ng, align 8, !tbaa !746
  store float 0.000000e+00, ptr %i.nh, align 4, !tbaa !1374
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.loopexit.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lq, i64 96
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !455 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 688
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !747
  %i.no = icmp eq ptr %i.nn, null
  br i1 %i.no, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 104
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !748
  %i.nr = icmp eq i32 %i.nq, 0
  br i1 %i.nr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @_Z20ImFontAtlasBuildMainP11ImFontAtlas(ptr noundef nonnull %i.nl)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lq, i64 104
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !749 ; 2 uses
  %.not.i.i319 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i319, label %bb.bc, label %_ZN5ImGui14GetDefaultFontEv.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nl, i64 112
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !750
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !751
  br label %_ZN5ImGui14GetDefaultFontEv.exit.i

_ZN5ImGui14GetDefaultFontEv.exit.i:               ; preds = %bb.bc, %bb.bb
  %i.nx = phi ptr [ %i.nw, %bb.bc ], [ %i.nt, %bb.bb ] ; 7 uses
  %i.ny = load float, ptr %i.ng, align 8, !tbaa !746 ; 2 uses
  %i.nz = fcmp ugt float %i.ny, 0.000000e+00
  br i1 %i.nz, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN5ImGui14GetDefaultFontEv.exit.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 28
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !1375 ; 2 uses
  %i.oc = fcmp ogt float %i.ob, 0.000000e+00
  %i.od = select i1 %i.oc, float %i.ob, float 2.000000e+01 ; 2 uses
  store float %i.od, ptr %i.ng, align 8, !tbaa !746
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN5ImGui14GetDefaultFontEv.exit.i
  %i.oe = phi float [ %i.od, %bb.bd ], [ %i.ny, %_ZN5ImGui14GetDefaultFontEv.exit.i ] ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.lq, i64 4552
  store ptr %i.nx, ptr %i.of, align 8, !tbaa !409
  %i.og = getelementptr inbounds nuw i8, ptr %i.lq, i64 4572
  store float %i.oe, ptr %i.og, align 4, !tbaa !752
  %i.oh = getelementptr inbounds nuw i8, ptr %i.lq, i64 4568
  store float 0.000000e+00, ptr %i.oh, align 8, !tbaa !410
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store ptr %i.nx, ptr %1, align 8, !tbaa !754
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.oe, ptr %i.oi, align 8, !tbaa !755
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.oe, ptr %i.oj, align 4, !tbaa !756
  %i.ok = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 4552
  store ptr %i.nx, ptr %i.ol, align 8, !tbaa !409
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 4572
  store float %i.oe, ptr %i.om, align 4, !tbaa !752
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef 0.000000e+00)
  %.not.i28.i = icmp eq ptr %i.nx, null
  br i1 %.not.i28.i, label %_ZN5ImGuiL19UpdateFontsNewFrameEv.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.on = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !757 ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 4608
  store ptr %i.oo, ptr %i.op, align 8, !tbaa !430
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 4616
  store ptr %i.nx, ptr %i.oq, align 8, !tbaa !758
  call void @_Z36ImFontAtlasUpdateDrawListsSharedDataP11ImFontAtlas(ptr noundef %i.oo)
  %i.or = getelementptr inbounds nuw i8, ptr %i.ok, i64 5312
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !289 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.os, null
  br i1 %.not16.i.i, label %_ZN5ImGuiL19UpdateFontsNewFrameEv.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 712
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !408
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oo, i64 40
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ov, align 8, !tbaa !435
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oo, i64 48
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !436
  call void @_ZN10ImDrawList11_SetTextureE12ImTextureRef(ptr noundef nonnull align 8 dereferenceable(224) %i.ou, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i)
  br label %_ZN5ImGuiL19UpdateFontsNewFrameEv.exit

_ZN5ImGuiL19UpdateFontsNewFrameEv.exit:           ; preds = %bb.be, %bb.bf, %bb.bg
  %i.ow = getelementptr inbounds nuw i8, ptr %i.lq, i64 8088
  call void @_ZN8ImVectorI15ImFontStackDataE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ow, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.ox = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 1, ptr %i.ox, align 1, !tbaa !395
  %i.oy = getelementptr inbounds nuw i8, ptr %i.c, i64 8200
  %i.oz = getelementptr inbounds nuw i8, ptr %i.c, i64 8208
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !399 ; 3 uses
  %i.pb = load i32, ptr %i.oy, align 8, !tbaa !431 ; 2 uses
  %i.pc = sext i32 %i.pb to i64
  %.idx = shl nsw i64 %i.pc, 3                    ; 2 uses
  %i.pd = getelementptr inbounds i8, ptr %i.pa, i64 %.idx
  %.not273491 = icmp eq i32 %i.pb, 0
  br i1 %.not273491, label %._crit_edge494, label %.lr.ph493.preheader

.lr.ph493.preheader:                              ; preds = %_ZN5ImGuiL19UpdateFontsNewFrameEv.exit
  %i.pe = add nsw i64 %.idx, -8                   ; 2 uses
  %i.pf = lshr exact i64 %i.pe, 3
  %i.pg = add nuw nsw i64 %i.pf, 1
  %xtraiter805 = and i64 %i.pg, 7                 ; 2 uses
  %lcmp.mod806.not = icmp eq i64 %xtraiter805, 0
  br i1 %lcmp.mod806.not, label %.lr.ph493.prol.loopexit, label %.lr.ph493.prol

.lr.ph493.prol:                                   ; preds = %.lr.ph493.preheader, %.lr.ph493.prol
  %.0257492.prol = phi ptr [ %i.pj, %.lr.ph493.prol ], [ %i.pa, %.lr.ph493.preheader ] ; 2 uses
  %prol.iter807 = phi i64 [ %prol.iter807.next, %.lr.ph493.prol ], [ 0, %.lr.ph493.preheader ]
  %i.ph = load ptr, ptr %.0257492.prol, align 8, !tbaa !400
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 88
  store i8 0, ptr %i.pi, align 8, !tbaa !700
  %i.pj = getelementptr inbounds nuw i8, ptr %.0257492.prol, i64 8 ; 2 uses
  %prol.iter807.next = add i64 %prol.iter807, 1   ; 2 uses
  %prol.iter807.cmp.not = icmp eq i64 %prol.iter807.next, %xtraiter805
  br i1 %prol.iter807.cmp.not, label %.lr.ph493.prol.loopexit, label %.lr.ph493.prol, !llvm.loop !1336

.lr.ph493.prol.loopexit:                          ; preds = %.lr.ph493.prol, %.lr.ph493.preheader
  %.0257492.unr = phi ptr [ %i.pa, %.lr.ph493.preheader ], [ %i.pj, %.lr.ph493.prol ]
  %i.pk = icmp ult i64 %i.pe, 56
  br i1 %i.pk, label %._crit_edge494, label %.lr.ph493

bb.bh:                                            ; preds = %.lr.ph, %bb.bj
  %i.pl = phi i32 [ %i.e, %.lr.ph ], [ %i.pw, %bb.bj ] ; 2 uses
  %indvars.iv = phi i64 [ %3, %.lr.ph ], [ %indvars.iv.next, %bb.bj ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %6 = load ptr, ptr %2, align 8, !tbaa !487
  %i.pm = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %indvars.iv.next ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !491
  %i.pp = icmp eq i32 %i.po, 7
  br i1 %i.pp, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 32
  %i.pr = sext i32 %i.pl to i64
  %i.ps = sub i64 %i.pr, %indvars.iv
  %i.pt = shl nsw i64 %i.ps, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pm, ptr nonnull align 8 %i.pq, i64 %i.pt, i1 false)
  %i.pu = load i32, ptr %i.d, align 8, !tbaa !488
  %i.pv = add nsw i32 %i.pu, -1                   ; 2 uses
  store i32 %i.pv, ptr %i.d, align 8, !tbaa !488
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.pw = phi i32 [ %i.pl, %bb.bh ], [ %i.pv, %bb.bi ] ; 2 uses
  %i.px = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.px, label %bb.bh, label %._crit_edge, !llvm.loop !1337

._crit_edge494:                                   ; preds = %.lr.ph493.prol.loopexit, %.lr.ph493, %_ZN5ImGuiL19UpdateFontsNewFrameEv.exit
  %i.py = getelementptr inbounds nuw i8, ptr %i.c, i64 8776 ; 2 uses
  %i.pz = load i8, ptr %i.py, align 8, !tbaa !687, !range !100, !noundef !236
  %i.qa = trunc nuw i8 %i.pz to i1
  br i1 %i.qa, label %bb.bk, label %_ZN5ImGui11KeepAliveIDEj.exit

.lr.ph493:                                        ; preds = %.lr.ph493.prol.loopexit, %.lr.ph493
  %.0257492 = phi ptr [ %i.qy, %.lr.ph493 ], [ %.0257492.unr, %.lr.ph493.prol.loopexit ] ; 9 uses
  %i.qb = load ptr, ptr %.0257492, align 8, !tbaa !400
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 88
  store i8 0, ptr %i.qc, align 8, !tbaa !700
  %i.qd = getelementptr inbounds nuw i8, ptr %.0257492, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !400
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 88
  store i8 0, ptr %i.qf, align 8, !tbaa !700
  %i.qg = getelementptr inbounds nuw i8, ptr %.0257492, i64 16
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !400
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 88
  store i8 0, ptr %i.qi, align 8, !tbaa !700
  %i.qj = getelementptr inbounds nuw i8, ptr %.0257492, i64 24
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !400
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 88
  store i8 0, ptr %i.ql, align 8, !tbaa !700
  %i.qm = getelementptr inbounds nuw i8, ptr %.0257492, i64 32
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !400
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 88
  store i8 0, ptr %i.qo, align 8, !tbaa !700
  %i.qp = getelementptr inbounds nuw i8, ptr %.0257492, i64 40
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !400
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 88
  store i8 0, ptr %i.qr, align 8, !tbaa !700
  %i.qs = getelementptr inbounds nuw i8, ptr %.0257492, i64 48
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !400
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 88
  store i8 0, ptr %i.qu, align 8, !tbaa !700
  %i.qv = getelementptr inbounds nuw i8, ptr %.0257492, i64 56
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !400
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 88
  store i8 0, ptr %i.qx, align 8, !tbaa !700
  %i.qy = getelementptr inbounds nuw i8, ptr %.0257492, i64 64 ; 2 uses
  %.not273.7 = icmp eq ptr %i.qy, %i.pd
  br i1 %.not273.7, label %._crit_edge494, label %.lr.ph493

bb.bk:                                            ; preds = %._crit_edge494
  %i.qz = getelementptr inbounds nuw i8, ptr %i.c, i64 8804
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !688 ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.c, i64 5428
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !652
  %i.rd = icmp eq i32 %i.ra, %i.rc
  br i1 %i.rd, label %bb.bl, label %_ZN5ImGui11KeepAliveIDEj.exit

bb.bl:                                            ; preds = %bb.bk
  %i.re = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 5428
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !652
  %i.rh = icmp eq i32 %i.rg, %i.ra
  br i1 %i.rh, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 5432
  store i32 %i.ra, ptr %i.ri, align 8, !tbaa !654
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.rj = getelementptr inbounds nuw i8, ptr %i.re, i64 5484
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !672
  %i.rl = icmp eq i32 %i.rk, %i.ra
  br i1 %i.rl, label %bb.bo, label %_ZN5ImGui11KeepAliveIDEj.exit

bb.bo:                                            ; preds = %bb.bn
  %i.rm = getelementptr inbounds nuw i8, ptr %i.re, i64 5493
  store i8 1, ptr %i.rm, align 1, !tbaa !719
  br label %_ZN5ImGui11KeepAliveIDEj.exit

_ZN5ImGui11KeepAliveIDEj.exit:                    ; preds = %bb.bo, %bb.bn, %bb.bk, %._crit_edge494
  %i.rn = getelementptr inbounds nuw i8, ptr %i.c, i64 177
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !1376, !range !100, !noundef !236
  %i.rp = trunc nuw i8 %i.ro to i1
  br i1 %i.rp, label %bb.bp, label %.sink.split

bb.bp:                                            ; preds = %_ZN5ImGui11KeepAliveIDEj.exit
  %i.rq = getelementptr inbounds nuw i8, ptr %i.c, i64 300
  %i.rr = load i8, ptr %i.rq, align 4, !tbaa !759, !range !100, !noundef !236
  %i.rs = trunc nuw i8 %i.rr to i1
  br i1 %i.rs, label %.thread, label %.thread449

.thread449:                                       ; preds = %bb.bp
  %i.rt = getelementptr inbounds nuw i8, ptr %i.c, i64 5396
  store i32 0, ptr %i.rt, align 4, !tbaa !685
  br label %.thread

.thread:                                          ; preds = %bb.bp, %.thread449
  %i.ru = getelementptr inbounds nuw i8, ptr %i.c, i64 5412
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !684
  %i.rw = icmp sgt i32 %i.rv, 1
  br i1 %i.rw, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.thread
  %i.rx = getelementptr inbounds nuw i8, ptr %i.c, i64 5408
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !669
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5ImGui11KeepAliveIDEj.exit, %bb.bq
  %.sink = phi i32 [ %i.ry, %bb.bq ], [ 0, %_ZN5ImGui11KeepAliveIDEj.exit ]
  %i.rz = getelementptr inbounds nuw i8, ptr %i.c, i64 5396
  store i32 %.sink, ptr %i.rz, align 4, !tbaa !685
  br label %bb.br

bb.br:                                            ; preds = %.sink.split, %.thread
  %i.sa = getelementptr inbounds nuw i8, ptr %i.c, i64 5408 ; 3 uses
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !669
  %.not274 = icmp eq i32 %i.sb, 0
  br i1 %.not274, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sc = getelementptr inbounds nuw i8, ptr %i.c, i64 5404
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !667 ; 4 uses
  %.not276 = icmp eq i32 %i.sd, 0
  br i1 %.not276, label %.thread734, label %bb.bt

.thread734:                                       ; preds = %bb.bs
  %i.se = getelementptr inbounds nuw i8, ptr %i.c, i64 5404
  br label %..thread451_crit_edge

bb.bt:                                            ; preds = %bb.bs
  %i.sf = getelementptr inbounds nuw i8, ptr %i.c, i64 5428
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !652
  %i.sh = icmp eq i32 %i.sg, %i.sd
  br i1 %i.sh, label %.thread738, label %.thread736

.thread738:                                       ; preds = %bb.bt
  %i.si = getelementptr inbounds nuw i8, ptr %i.c, i64 5420
  store float 0.000000e+00, ptr %i.si, align 4, !tbaa !1377
  %i.sj = getelementptr inbounds nuw i8, ptr %i.c, i64 5404
  br label %bb.bv

.thread736:                                       ; preds = %bb.bt
  %i.sk = getelementptr inbounds nuw i8, ptr %i.c, i64 5404
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br
  %i.sl = getelementptr inbounds nuw i8, ptr %i.c, i64 5416
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 5404
  %.pre523.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !667 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.sl, align 8, !tbaa !75
  %i.sm = getelementptr inbounds nuw i8, ptr %i.c, i64 5404 ; 2 uses
  %.not277 = icmp eq i32 %.pre523.pre, 0
  br i1 %.not277, label %..thread451_crit_edge, label %bb.bv

..thread451_crit_edge:                            ; preds = %.thread734, %bb.bu
  %i.sn = phi ptr [ %i.se, %.thread734 ], [ %i.sm, %bb.bu ]
  %.phi.trans.insert524 = getelementptr inbounds nuw i8, ptr %i.c, i64 5428
  %.pre525 = load i32, ptr %.phi.trans.insert524, align 4, !tbaa !652
  br label %.thread451

bb.bv:                                            ; preds = %.thread738, %.thread736, %bb.bu
  %i.so = phi ptr [ %i.sk, %.thread736 ], [ %i.sm, %bb.bu ], [ %i.sj, %.thread738 ] ; 2 uses
  %i.sp = phi i32 [ %i.sd, %.thread736 ], [ %.pre523.pre, %bb.bu ], [ %i.sd, %.thread738 ] ; 4 uses
  %i.sq = load float, ptr %i.cd, align 8, !tbaa !727 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.c, i64 5416 ; 2 uses
  %i.ss = load float, ptr %i.sr, align 8, !tbaa !760
  %i.st = fadd float %i.sq, %i.ss
  store float %i.st, ptr %i.sr, align 8, !tbaa !760
  %i.su = getelementptr inbounds nuw i8, ptr %i.c, i64 5428
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !652 ; 2 uses
  %.not279 = icmp eq i32 %i.sv, %i.sp
  br i1 %.not279, label %.thread451.thread, label %bb.bw

.thread451.thread:                                ; preds = %bb.bv
  store i32 %i.sp, ptr %i.sa, align 8, !tbaa !669
  %i.sw = getelementptr inbounds nuw i8, ptr %i.c, i64 5412
  store i32 0, ptr %i.sw, align 4, !tbaa !684
  store i32 0, ptr %i.so, align 4, !tbaa !667
  %i.sx = getelementptr inbounds nuw i8, ptr %i.c, i64 5424
  store i8 0, ptr %i.sx, align 8, !tbaa !668
  %i.sy = getelementptr inbounds nuw i8, ptr %i.c, i64 5425
  store i8 0, ptr %i.sy, align 1, !tbaa !686
  %i.sz = getelementptr inbounds nuw i8, ptr %i.c, i64 5428
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ta = getelementptr inbounds nuw i8, ptr %i.c, i64 5420 ; 2 uses
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !1377
  %i.tc = fadd float %i.sq, %i.tb
  store float %i.tc, ptr %i.ta, align 4, !tbaa !1377
  br label %.thread451

.thread451:                                       ; preds = %..thread451_crit_edge, %bb.bw
  %i.td = phi ptr [ %i.sn, %..thread451_crit_edge ], [ %i.so, %bb.bw ]
  %i.te = phi i32 [ 0, %..thread451_crit_edge ], [ %i.sp, %bb.bw ]
  %i.tf = phi i32 [ %.pre525, %..thread451_crit_edge ], [ %i.sv, %bb.bw ] ; 2 uses
  store i32 %i.te, ptr %i.sa, align 8, !tbaa !669
  %i.tg = getelementptr inbounds nuw i8, ptr %i.c, i64 5412
  store i32 0, ptr %i.tg, align 4, !tbaa !684
  store i32 0, ptr %i.td, align 4, !tbaa !667
  %i.th = getelementptr inbounds nuw i8, ptr %i.c, i64 5424
  store i8 0, ptr %i.th, align 8, !tbaa !668
end_hunk_2
begin_hunk_3_@_ZN5ImGui8NewFrameEv:bb.a
  %i.evx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.evw, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.evy = extractelement <2 x float> %i.evx, i64 0
  %i.evz = fmul float %i.evy, 5.000000e-01        ; 3 uses
  %i.ewa = extractelement <2 x float> %i.evx, i64 1
  %i.ewb = fmul float %i.ewa, 5.000000e-01        ; 3 uses
  switch i32 %i.evr, label %bb.acd [
    i32 0, label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit.i
    i32 1, label %bb.abz
    i32 2, label %bb.aca
    i32 3, label %bb.acb
    i32 4, label %bb.acc
  ]

bb.abz:                                           ; preds = %bb.aby
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit.i

bb.aca:                                           ; preds = %bb.aby
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit.i

bb.acb:                                           ; preds = %bb.aby
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit.i

bb.acc:                                           ; preds = %bb.aby
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit.i

bb.acd:                                           ; preds = %bb.aby
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit.i

_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit.i: ; preds = %bb.acd, %bb.acc, %bb.acb, %bb.aca, %bb.abz, %bb.aby
  %.sink13.i = phi float [ 5.000000e-01, %bb.acd ], [ %i.evz, %bb.abz ], [ 2.500000e-01, %bb.aca ], [ 2.500000e-01, %bb.acb ], [ %i.ewb, %bb.acc ], [ 5.000000e-01, %bb.aby ]
  %.sink12.i = phi float [ 2.500000e-01, %bb.acd ], [ 5.000000e-01, %bb.abz ], [ 5.000000e-01, %bb.aca ], [ %i.evz, %bb.acb ], [ 2.500000e-01, %bb.acc ], [ %i.ewb, %bb.aby ]
  %.sink.i419 = phi float [ %i.evz, %bb.acd ], [ 2.500000e-01, %bb.abz ], [ %i.ewb, %bb.aca ], [ 5.000000e-01, %bb.acb ], [ 5.000000e-01, %bb.acc ], [ 2.500000e-01, %bb.aby ]
  store float %.sink13.i, ptr %i.evm, align 4, !tbaa !75
  store float %.sink12.i, ptr %i.evn, align 4, !tbaa !75
  store float %.sink.i419, ptr %i.evo, align 4, !tbaa !75
  %i.ewc = getelementptr inbounds nuw i8, ptr %i.evm, i64 12
  store float 1.000000e+00, ptr %i.ewc, align 4, !tbaa !418
  %i.ewd = getelementptr inbounds nuw i8, ptr %i.evb, i64 64
  %i.ewe = load float, ptr %i.ewd, align 8, !tbaa !727
  %i.ewf = fsub float %i.evd, %i.ewe              ; 2 uses
  store float %i.ewf, ptr %i.evc, align 8, !tbaa !583
  %i.ewg = fcmp ugt float %i.ewf, 0.000000e+00
  br i1 %i.ewg, label %_ZN5ImGuiL30UpdateDebugToolFlashStyleColorEv.exit, label %bb.ace

bb.ace:                                           ; preds = %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit.i
  %.not.i.i420 = icmp eq i32 %i.evk, 61
  br i1 %.not.i.i420, label %_ZL24DebugFlashStyleColorStopv.exit.i, label %bb.acf

bb.acf:                                           ; preds = %bb.ace
  %i.ewh = getelementptr inbounds nuw i8, ptr %i.evb, i64 10476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.evm, ptr noundef nonnull align 4 dereferenceable(16) %i.ewh, i64 16, i1 false), !tbaa.struct !386
  br label %_ZL24DebugFlashStyleColorStopv.exit.i

_ZL24DebugFlashStyleColorStopv.exit.i:            ; preds = %bb.acf, %bb.ace
  store i32 61, ptr %i.evj, align 4, !tbaa !387
  br label %_ZN5ImGuiL30UpdateDebugToolFlashStyleColorEv.exit

_ZN5ImGuiL30UpdateDebugToolFlashStyleColorEv.exit: ; preds = %_ZN5ImGuiL28UpdateDebugToolItemPathQueryEv.exit, %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit.i, %_ZL24DebugFlashStyleColorStopv.exit.i
  %i.ewi = getelementptr inbounds nuw i8, ptr %i.c, i64 10457 ; 2 uses
  %i.ewj = load i8, ptr %i.ewi, align 1, !tbaa !862 ; 2 uses
  %.not298 = icmp eq i8 %i.ewj, 0
  br i1 %.not298, label %bb.aci, label %bb.acg

bb.acg:                                           ; preds = %_ZN5ImGuiL30UpdateDebugToolFlashStyleColorEv.exit
  %i.ewk = add i8 %i.ewj, -1                      ; 2 uses
  store i8 %i.ewk, ptr %i.ewi, align 1, !tbaa !862
  %i.ewl = icmp eq i8 %i.ewk, 0
  br i1 %i.ewl, label %bb.ach, label %bb.aci

bb.ach:                                           ; preds = %bb.acg
  %i.ewm = getelementptr inbounds nuw i8, ptr %i.c, i64 7788
  store i32 0, ptr %i.ewm, align 4, !tbaa !863
  %i.ewn = getelementptr inbounds nuw i8, ptr %i.c, i64 10458
  store i8 0, ptr %i.ewn, align 2, !tbaa !586
  br label %bb.aci

bb.aci:                                           ; preds = %bb.ach, %bb.acg, %_ZN5ImGuiL30UpdateDebugToolFlashStyleColorEv.exit
  %i.ewo = getelementptr inbounds nuw i8, ptr %i.c, i64 10456 ; 2 uses
  %i.ewp = load i8, ptr %i.ewo, align 8, !tbaa !864 ; 2 uses
  %.not299 = icmp eq i8 %i.ewp, 0
  br i1 %.not299, label %bb.acl, label %bb.acj

bb.acj:                                           ; preds = %bb.aci
  %i.ewq = add i8 %i.ewp, -1                      ; 2 uses
  store i8 %i.ewq, ptr %i.ewo, align 8, !tbaa !864
  %i.ewr = icmp eq i8 %i.ewq, 0
  br i1 %i.ewr, label %bb.ack, label %bb.acl

bb.ack:                                           ; preds = %bb.acj
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.89)
  %i.ews = getelementptr inbounds nuw i8, ptr %i.c, i64 10452 ; 2 uses
  %i.ewt = load i32, ptr %i.ews, align 4, !tbaa !865
  %i.ewu = xor i32 %i.ewt, -1
  %i.ewv = getelementptr inbounds nuw i8, ptr %i.c, i64 10404 ; 2 uses
  %i.eww = load i32, ptr %i.ewv, align 4, !tbaa !247
  %i.ewx = and i32 %i.eww, %i.ewu
  store i32 %i.ewx, ptr %i.ewv, align 4, !tbaa !247
  store i32 0, ptr %i.ews, align 4, !tbaa !865
  %.pre534 = load ptr, ptr @GImGui, align 8, !tbaa !227
  br label %bb.acl

bb.acl:                                           ; preds = %bb.ack, %bb.acj, %bb.aci
  %i.ewy = phi ptr [ %.pre534, %bb.ack ], [ %i.evb, %bb.acj ], [ %i.evb, %bb.aci ] ; 4 uses
  %i.ewz = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 1, ptr %i.ewz, align 2, !tbaa !866
  %i.exa = getelementptr inbounds nuw i8, ptr %i.ewy, i64 7928 ; 2 uses
  %i.exb = load i32, ptr %i.exa, align 8, !tbaa !852
  %i.exc = or i32 %i.exb, 2
  store i32 %i.exc, ptr %i.exa, align 8, !tbaa !852
  %i.exd = getelementptr inbounds nuw i8, ptr %i.ewy, i64 7960
  store i32 1137180672, ptr %i.exd, align 8, !tbaa !75
  %.sroa_idx446 = getelementptr inbounds nuw i8, ptr %i.ewy, i64 7964
  store i32 1137180672, ptr %.sroa_idx446, align 4, !tbaa !75
  %i.exe = getelementptr inbounds nuw i8, ptr %i.ewy, i64 7936
  store i32 4, ptr %i.exe, align 8, !tbaa !867
  %i.exf = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.90, ptr noundef null, i32 noundef 0) ; 0 uses
  %i.exg = getelementptr inbounds nuw i8, ptr %i.c, i64 10364
  store i32 0, ptr %i.exg, align 4, !tbaa !396
  %i.exh = getelementptr inbounds nuw i8, ptr %i.c, i64 10368
  %i.exi = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 10 uses
  %i.exj = getelementptr inbounds nuw i8, ptr %i.exi, i64 5264
  %i.exk = load i32, ptr %i.exj, align 8, !tbaa !868
  %i.exl = trunc i32 %i.exk to i16
  store i16 %i.exl, ptr %i.exh, align 8, !tbaa !869
  %i.exm = getelementptr inbounds nuw i8, ptr %i.exi, i64 5312
  %i.exn = load ptr, ptr %i.exm, align 8, !tbaa !289 ; 2 uses
  %i.exo = getelementptr inbounds nuw i8, ptr %i.exn, i64 264
  %i.exp = load i32, ptr %i.exo, align 8, !tbaa !870
  %i.exq = trunc i32 %i.exp to i16
  %i.exr = getelementptr inbounds nuw i8, ptr %i.c, i64 10370
  store i16 %i.exq, ptr %i.exr, align 2, !tbaa !871
  %i.exs = getelementptr inbounds nuw i8, ptr %i.exn, i64 416
  %i.ext = load i32, ptr %i.exs, align 8, !tbaa !417
  %i.exu = trunc i32 %i.ext to i16
  %i.exv = getelementptr inbounds nuw i8, ptr %i.c, i64 10372
  store i16 %i.exu, ptr %i.exv, align 4, !tbaa !872
  %i.exw = getelementptr inbounds nuw i8, ptr %i.exi, i64 8056
  %i.exx = load i32, ptr %i.exw, align 8, !tbaa !391
  %i.exy = trunc i32 %i.exx to i16
  %i.exz = getelementptr inbounds nuw i8, ptr %i.c, i64 10374
  store i16 %i.exy, ptr %i.exz, align 2, !tbaa !873
  %i.eya = getelementptr inbounds nuw i8, ptr %i.exi, i64 8072
  %i.eyb = load i32, ptr %i.eya, align 8, !tbaa !407
  %i.eyc = trunc i32 %i.eyb to i16
  %i.eyd = getelementptr inbounds nuw i8, ptr %i.c, i64 10376
  store i16 %i.eyc, ptr %i.eyd, align 8, !tbaa !874
  %i.eye = getelementptr inbounds nuw i8, ptr %i.exi, i64 8088
  %i.eyf = load i32, ptr %i.eye, align 8, !tbaa !875
  %i.eyg = trunc i32 %i.eyf to i16
  %i.eyh = getelementptr inbounds nuw i8, ptr %i.c, i64 10378
  store i16 %i.eyg, ptr %i.eyh, align 2, !tbaa !876
  %i.eyi = getelementptr inbounds nuw i8, ptr %i.exi, i64 8104
  %i.eyj = load i32, ptr %i.eyi, align 8, !tbaa !877
  %i.eyk = trunc i32 %i.eyj to i16
  %i.eyl = getelementptr inbounds nuw i8, ptr %i.c, i64 10380
  store i16 %i.eyk, ptr %i.eyl, align 4, !tbaa !878
  %i.eym = getelementptr inbounds nuw i8, ptr %i.exi, i64 8136
  %i.eyn = load i32, ptr %i.eym, align 8, !tbaa !879
  %i.eyo = trunc i32 %i.eyn to i16
  %i.eyp = getelementptr inbounds nuw i8, ptr %i.c, i64 10382
  store i16 %i.eyo, ptr %i.eyp, align 2, !tbaa !880
  %i.eyq = getelementptr inbounds nuw i8, ptr %i.exi, i64 8120
  %i.eyr = load i32, ptr %i.eyq, align 8, !tbaa !881
  %i.eys = trunc i32 %i.eyr to i16
  %i.eyt = getelementptr inbounds nuw i8, ptr %i.c, i64 10384
  store i16 %i.eys, ptr %i.eyt, align 8, !tbaa !882
  %i.eyu = getelementptr inbounds nuw i8, ptr %i.exi, i64 8168
  %i.eyv = load i32, ptr %i.eyu, align 8, !tbaa !729
  %i.eyw = trunc i32 %i.eyv to i16
  %i.eyx = getelementptr inbounds nuw i8, ptr %i.c, i64 10386
  store i16 %i.eyw, ptr %i.eyx, align 2, !tbaa !883
  %i.eyy = getelementptr inbounds nuw i8, ptr %i.exi, i64 9856
  %i.eyz = load i16, ptr %i.eyy, align 8, !tbaa !884
  %i.eza = getelementptr inbounds nuw i8, ptr %i.c, i64 10388
  store i16 %i.eyz, ptr %i.eza, align 4, !tbaa !885
  %i.ezb = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  %i.ezc = load i8, ptr %i.ezb, align 4, !tbaa !886, !range !100, !noundef !236
  %i.ezd = trunc nuw i8 %i.ezc to i1
  %i.eze = getelementptr inbounds nuw i8, ptr %i.c, i64 10464 ; 2 uses
  br i1 %i.ezd, label %bb.acm, label %bb.aco

bb.acm:                                           ; preds = %bb.acl
  %i.ezf = load i8, ptr %i.eze, align 8, !tbaa !579 ; 2 uses
  %i.ezg = icmp eq i8 %i.ezf, -1
  br i1 %i.ezg, label %bb.aco, label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  %i.ezh = sext i8 %i.ezf to i16
  %i.ezi = load i32, ptr %i.cj, align 4, !tbaa !228
  %i.ezj = and i32 %i.ezi, 3
  %i.ezk = icmp eq i32 %i.ezj, 0
  %i.ezl = zext i1 %i.ezk to i16
  %.lhs.trunc = add nsw i16 %i.ezl, %i.ezh
  %i.ezm = srem i16 %.lhs.trunc, 10
  %i.ezn = trunc nsw i16 %i.ezm to i8
  br label %bb.aco

bb.aco:                                           ; preds = %bb.acl, %bb.acn, %bb.acm
  %.sink768 = phi i8 [ 0, %bb.acm ], [ %i.ezn, %bb.acn ], [ -1, %bb.acl ]
  store i8 %.sink768, ptr %i.eze, align 8, !tbaa !579
  %i.ezo = load ptr, ptr %4, align 8, !tbaa !487  ; 2 uses
  %i.ezp = load i32, ptr %i.d, align 8, !tbaa !488 ; 2 uses
  %i.ezq = sext i32 %i.ezp to i64
  %.idx.i421 = shl nsw i64 %i.ezq, 5
  %i.ezr = getelementptr inbounds i8, ptr %i.ezo, i64 %.idx.i421
  %.not12.i422 = icmp eq i32 %i.ezp, 0
  br i1 %.not12.i422, label %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit427, label %.lr.ph.i423

.lr.ph.i423:                                      ; preds = %bb.aco, %bb.acq
  %.013.i424 = phi ptr [ %i.ezx, %bb.acq ], [ %i.ezo, %bb.aco ] ; 4 uses
  %i.ezs = getelementptr inbounds nuw i8, ptr %.013.i424, i64 4
  %i.ezt = load i32, ptr %i.ezs, align 4, !tbaa !491
  %i.ezu = icmp eq i32 %i.ezt, 1
  br i1 %i.ezu, label %bb.acp, label %bb.acq

bb.acp:                                           ; preds = %.lr.ph.i423
  %i.ezv = getelementptr inbounds nuw i8, ptr %.013.i424, i64 16
  %i.ezw = load ptr, ptr %i.ezv, align 8, !tbaa !492
  call void %i.ezw(ptr noundef %i.c, ptr noundef nonnull %.013.i424), !inline_history !493
  br label %bb.acq

bb.acq:                                           ; preds = %bb.acp, %.lr.ph.i423
  %i.ezx = getelementptr inbounds nuw i8, ptr %.013.i424, i64 32 ; 2 uses
  %.not.i425 = icmp eq ptr %i.ezx, %i.ezr
  br i1 %.not.i425, label %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit427, label %.lr.ph.i423

_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit427: ; preds = %bb.acq, %bb.aco
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8ImVectorIjE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !515  ; 4 uses
  %i.c = icmp sgt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %_ZN8ImVectorIjE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sdiv i32 %i.b, 2
  %i.e = add nsw i32 %i.d, %i.b
  br label %_ZNK8ImVectorIjE14_grow_capacityEi.exit

_ZNK8ImVectorIjE14_grow_capacityEi.exit:          ; preds = %bb.b, %bb.c
  %i.f = phi i32 [ %i.e, %bb.c ], [ 8, %bb.b ]
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 %1) ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !226
  %i.k = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  %i.l = tail call noundef ptr %i.j(i64 noundef %i.i, ptr noundef %i.k), !inline_history !29 ; 2 uses
  %i.m = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 10596 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !228  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 10608 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 10604 ; 2 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !229  ; 2 uses
  %i.t = sext i16 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !231
  %.not.i.i.i = icmp eq i32 %i.v, %i.p
  br i1 %.not.i.i.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !232
  %i.w = add i16 %.pre.i, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = sext i16 %i.s to i32
  %i.y = add nsw i32 %i.x, 1
  %i.z = srem i32 %i.y, 6                         ; 2 uses
  %i.aa = trunc nsw i32 %i.z to i16
  store i16 %i.aa, ptr %i.r, align 4, !tbaa !229
  %i.ab = sext i32 %i.z to i64                    ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ab ; 3 uses
  store i32 %i.p, ptr %i.ac, align 4, !tbaa !231
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  store i16 0, ptr %i.ad, align 2, !tbaa !233
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i16 0, ptr %i.ae, align 4, !tbaa !232
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.af = phi i16 [ 1, %bb.e ], [ %i.w, %._crit_edge.i ]
  %i.ag = phi i64 [ %i.ab, %bb.e ], [ %i.t, %._crit_edge.i ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i16 %i.af, ptr %i.ai, align 4, !tbaa !232
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !234
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.n, align 4, !tbaa !234
  br label %_ZN5ImGui8MemAllocEm.exit.i

_ZN5ImGui8MemAllocEm.exit.i:                      ; preds = %bb.f, %_ZNK8ImVectorIjE14_grow_capacityEi.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !514 ; 2 uses
  %.not6.i = icmp eq ptr %i.am, null
  br i1 %.not6.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i
  %i.an = load i32, ptr %0, align 8, !tbaa !516
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.l, ptr nonnull align 4 %i.am, i64 %i.ap, i1 false)
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !514 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.aq, null
  br i1 %.not.i7.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.ar, null
  br i1 %.not7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !228 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 10608 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 10604 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !229 ; 2 uses
  %i.ax = sext i16 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !231
  %.not.i.i8.i = icmp eq i32 %i.az, %i.at
  br i1 %.not.i.i8.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i, label %bb.j

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i: ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !233
  %i.ba = add i16 %.pre.i.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = sext i16 %i.aw to i32
  %i.bc = add nsw i32 %i.bb, 1
  %i.bd = srem i32 %i.bc, 6                       ; 2 uses
  %i.be = trunc nsw i32 %i.bd to i16
  store i16 %i.be, ptr %i.av, align 4, !tbaa !229
  %i.bf = sext i32 %i.bd to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bf ; 3 uses
  store i32 %i.at, ptr %i.bg, align 4, !tbaa !231
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  store i16 0, ptr %i.bh, align 2, !tbaa !233
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i16 0, ptr %i.bi, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i: ; preds = %bb.j, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i
  %i.bj = phi i16 [ 1, %bb.j ], [ %i.ba, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bk = phi i64 [ %i.bf, %bb.j ], [ %i.ax, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  store i16 %i.bj, ptr %i.bm, align 2, !tbaa !233
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 10600 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !235
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !235
  br label %_ZN5ImGui7MemFreeEPv.exit.i

_ZN5ImGui7MemFreeEPv.exit.i:                      ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i, %bb.h, %bb.g
  %i.bq = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !226
  %i.br = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  tail call void %i.bq(ptr noundef %i.aq, ptr noundef %i.br), !inline_history !30
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i, %_ZN5ImGui8MemAllocEm.exit.i
  store ptr %i.l, ptr %i.al, align 8, !tbaa !514
  store i32 %i.g, ptr %i.a, align 4, !tbaa !515
  br label %_ZN8ImVectorIjE7reserveEi.exit

_ZN8ImVectorIjE7reserveEi.exit:                   ; preds = %bb.k, %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !516
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8ImVectorI15ImGuiInputEventE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !224  ; 4 uses
  %i.c = icmp sgt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %_ZN8ImVectorI15ImGuiInputEventE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK8ImVectorI15ImGuiInputEventE14_grow_capacityEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sdiv i32 %i.b, 2
  %i.e = add nsw i32 %i.d, %i.b
  br label %_ZNK8ImVectorI15ImGuiInputEventE14_grow_capacityEi.exit
end_hunk_3
