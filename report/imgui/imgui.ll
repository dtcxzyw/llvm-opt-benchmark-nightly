Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN16ImGuiListClipper4StepEv:bb.a
bb.k:                                             ; preds = %bb.j
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !361
  br label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit

bb.l:                                             ; preds = %bb.h
  %.pre23 = load float, ptr %i.c, align 8, !tbaa !317 ; 2 uses
  br i1 %i.ac, label %.thread.i, label %.thread318.i

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.l
  %i.am = phi float [ %.pre, %..thread.i_crit_edge ], [ %.pre23, %bb.l ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 284
  %i.ao = load float, ptr %i.an, align 4, !tbaa !318
  %i.ap = fpext float %i.ao to double
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ap, ptr %i.aq, align 8, !tbaa !359
  %i.ar = fcmp ugt float %i.am, 0.000000e+00
  br i1 %i.ar, label %.thread274.i, label %bb.m

bb.m:                                             ; preds = %.thread.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !361 ; 2 uses
  %i.av = add nsw i32 %i.au, 1
  %.sroa.23.0.insert.ext.i.i = zext i32 %i.av to i64
  %.sroa.23.0.insert.shift.i.i = shl nuw i64 %.sroa.23.0.insert.ext.i.i, 32
  %.sroa.02.0.insert.ext.i.i = zext i32 %i.au to i64
  %.sroa.02.0.insert.insert.i.i = or disjoint i64 %.sroa.23.0.insert.shift.i.i, %.sroa.02.0.insert.ext.i.i
  store i64 %.sroa.02.0.insert.insert.i.i, ptr %2, align 8
  %.sroa.274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %.sroa.274.0..sroa_idx.i, align 8
  %i.aw = load i32, ptr %i.as, align 8, !tbaa !366
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(12) %2)
  br label %_ZN8ImVectorI21ImGuiListClipperRangeE10push_frontERKS0_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !360
  %i.ba = call noundef ptr @_ZN8ImVectorI21ImGuiListClipperRangeE6insertEPKS0_RS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef %i.az, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  br label %_ZN8ImVectorI21ImGuiListClipperRangeE10push_frontERKS0_.exit.i

_ZN8ImVectorI21ImGuiListClipperRangeE10push_frontERKS0_.exit.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !360 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !1181
  %i.be = load i32, ptr %i.at, align 8, !tbaa !361
  %i.bf = call noundef i32 @llvm.smax.i32(i32 %i.bd, i32 %i.be) ; 2 uses
  store i32 %i.bf, ptr %0, align 8, !tbaa !315
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !1182
  %i.bi = load i32, ptr %i.p, align 4, !tbaa !314
  %i.bj = call noundef i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bi) ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !358
  store i32 1, ptr %i.aa, align 4, !tbaa !354
  br label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit

.thread318.i:                                     ; preds = %bb.l
  %i.bl = fcmp ugt float %.pre23, 0.000000e+00
  br i1 %i.bl, label %._ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit_crit_edge.i, label %bb.p

bb.p:                                             ; preds = %.thread318.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !359 ; 3 uses
  %i.bo = fptrunc double %i.bn to float
  %i.bp = tail call float @llvm.fabs.f32(float %i.bo)
  %i.bq = fcmp ult float %i.bp, f0x4B800000
  br i1 %i.bq, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 284
  %i.bs = load float, ptr %i.br, align 4, !tbaa !318 ; 2 uses
  %i.bt = tail call float @llvm.fabs.f32(float %i.bs)
  %i.bu = fcmp ult float %i.bt, f0x4B800000
  br i1 %i.bu, label %bb.r, label %.critedge.i

.critedge.i:                                      ; preds = %bb.q, %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 332
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !322
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 3304
  %i.by = load float, ptr %i.bx, align 8, !tbaa !320
  %i.bz = fadd float %i.bw, %i.by                 ; 3 uses
  store float %i.bz, ptr %i.c, align 8, !tbaa !317
  %i.ca = fpext float %i.bz to double
  %i.cb = fadd double %i.bn, %i.ca
  %i.cc = fptrunc double %i.cb to float
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 284
  store float %i.cc, ptr %i.cd, align 4, !tbaa !318
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = fpext float %i.bs to double
  %i.cf = fsub double %i.ce, %i.bn
  %i.cg = fptrunc double %i.cf to float
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !358
  %i.cj = load i32, ptr %0, align 8, !tbaa !315
  %i.ck = sub nsw i32 %i.ci, %i.cj
  %i.cl = sitofp i32 %i.ck to float
  %i.cm = fdiv float %i.cg, %i.cl                 ; 2 uses
  store float %i.cm, ptr %i.c, align 8, !tbaa !317
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge.i
  %i.cn = phi float [ %i.cm, %bb.r ], [ %i.bz, %.critedge.i ] ; 3 uses
  %i.co = fcmp oeq float %i.cn, 0.000000e+00
  %i.cp = icmp eq i32 %i.q, 2147483647
  %or.cond280.i = and i1 %i.cp, %i.co
  br i1 %or.cond280.i, label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = fcmp ugt float %i.cn, 0.000000e+00
  br i1 %i.cq, label %.thread274.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.590) ; 0 uses
  br label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit.thread

._ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit_crit_edge.i: ; preds = %.thread318.i
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !358
  %.phi.trans.insert289.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.pre290.i = load i32, ptr %.phi.trans.insert289.i, align 8, !tbaa !353
  br label %_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i

.thread274.i:                                     ; preds = %.thread.i, %bb.t
  %i.cu = phi float [ %i.cn, %bb.t ], [ %i.am, %.thread.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !358 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !362
  %i.cz = fpext float %i.cy to double
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.db = load i32, ptr %i.da, align 8, !tbaa !361
  %i.dc = sitofp i32 %i.db to double
  %i.dd = fpext float %i.cu to double
  %i.de = fneg double %i.dc
  %i.df = tail call double @llvm.fmuladd.f64(double %i.de, double %i.dd, double %i.cz)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.df, ptr %i.dg, align 8, !tbaa !363
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 10264
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !368, !range !99, !noundef !236
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread274.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %.sroa.23.0.insert.ext.i220.i = zext i32 %i.q to i64
  %.sroa.23.0.insert.shift.i221.i = shl nuw i64 %.sroa.23.0.insert.ext.i220.i, 32
  store i64 %.sroa.23.0.insert.shift.i221.i, ptr %3, align 8
  %.sroa.264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.264.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 4 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.al

bb.w:                                             ; preds = %.thread274.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 8385
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !369, !range !99, !noundef !236
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.x, label %.critedge219.i

bb.x:                                             ; preds = %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 8224
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !370 ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %.critedge219.i, label %bb.y

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
  %.sroa.5.8.insert.shift.i.i = select i1 %i.dz, i32 65537, i32 1
  %.sroa.5.8.insert.insert.i.i = select i1 %i.dx, i32 65281, i32 %.sroa.5.8.insert.shift.i.i ; 2 uses
  store i64 %.sroa.03.0.insert.insert.i.i, ptr %4, align 8
  %.sroa.250.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.5.8.insert.insert.i.i, ptr %.sroa.250.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 4 dereferenceable(12) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 8428
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !373
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 8436
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !374
  %i.el = fcmp ogt float %i.ei, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 8432
  %i.en = load float, ptr %i.em, align 8          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 8440
  %i.ep = load float, ptr %i.eo, align 8          ; 2 uses
  %i.eq = fcmp ogt float %i.en, %i.ep
  %i.er = select i1 %i.el, i1 true, i1 %i.eq
  br i1 %i.er, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.es = fptosi float %i.en to i32
  %i.et = fptosi float %i.ep to i32
  %.sroa.24.0.insert.ext.i227.i = zext i32 %i.et to i64
  %.sroa.24.0.insert.shift.i228.i = shl nuw i64 %.sroa.24.0.insert.ext.i227.i, 32
  %.sroa.03.0.insert.ext.i229.i = zext i32 %i.es to i64
  %.sroa.03.0.insert.insert.i230.i = or disjoint i64 %.sroa.24.0.insert.shift.i228.i, %.sroa.03.0.insert.ext.i229.i
  store i64 %.sroa.03.0.insert.insert.i230.i, ptr %5, align 8
  %.sroa.246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.5.8.insert.insert.i.i, ptr %.sroa.246.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 8388
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !375
  %i.ew = and i32 %i.ev, 1024
  %.not211.i = icmp eq i32 %i.ew, 0
  br i1 %.not211.i, label %.critedge219.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 8448
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !376
  %i.ez = icmp eq i32 %i.ey, -1
  br i1 %i.ez, label %bb.ad, label %.critedge219.i

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.fa = load i32, ptr %i.p, align 4, !tbaa !314 ; 2 uses
  %i.fb = add nsw i32 %i.fa, -1
  %.sroa.23.0.insert.ext.i239.i = zext i32 %i.fa to i64
  %.sroa.23.0.insert.shift.i240.i = shl nuw i64 %.sroa.23.0.insert.ext.i239.i, 32
  %.sroa.02.0.insert.ext.i241.i = zext i32 %i.fb to i64
  %.sroa.02.0.insert.insert.i242.i = or disjoint i64 %.sroa.23.0.insert.shift.i240.i, %.sroa.02.0.insert.ext.i241.i
  store i64 %.sroa.02.0.insert.insert.i242.i, ptr %6, align 8
  %.sroa.242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %.sroa.242.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 4 dereferenceable(12) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %.critedge219.i

.critedge219.i:                                   ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.x, %bb.w
  %.shrunk.i = phi i1 [ false, %bb.y ], [ %i.dz, %bb.ad ], [ %i.dz, %bb.ac ], [ %i.dz, %bb.ab ], [ false, %bb.x ], [ false, %bb.w ]
  %i.fc = phi i32 [ 0, %bb.y ], [ %i.dy, %bb.ad ], [ %i.dy, %bb.ac ], [ %i.dy, %bb.ab ], [ 0, %bb.x ], [ 0, %bb.w ]
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %.sroa.5.0.copyload.i.i = load float, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !75 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 1020
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !377
  %i.ff = fadd float %.sroa.5.0.copyload.i.i, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 1028
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !378
  %i.fi = fadd float %.sroa.5.0.copyload.i.i, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 8220
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !379 ; 2 uses
  %.not212.i = icmp eq i32 %i.fk, 0
  br i1 %.not212.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.critedge219.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 1008
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !237
  %i.fn = icmp eq i32 %i.fm, %i.fk
  br i1 %i.fn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fo = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.fp = fptosi float %i.ff to i32
  %i.fq = fptosi float %i.fi to i32
  %.sroa.24.0.insert.ext.i247.i = zext i32 %i.fq to i64
  %.sroa.24.0.insert.shift.i248.i = shl nuw i64 %.sroa.24.0.insert.ext.i247.i, 32
  %.sroa.03.0.insert.ext.i249.i = zext i32 %i.fp to i64
  %.sroa.03.0.insert.insert.i250.i = or disjoint i64 %.sroa.24.0.insert.shift.i248.i, %.sroa.03.0.insert.ext.i249.i
  store i64 %.sroa.03.0.insert.insert.i250.i, ptr %7, align 8
  %.sroa.237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %.sroa.237.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 4 dereferenceable(12) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.critedge219.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 620
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !380 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 628
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !381 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 9172
  %i.fw = load i8, ptr %i.fv, align 4, !tbaa !382, !range !99, !noundef !236
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 9208
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1185
  %i.ga = icmp eq ptr %i.fz, %i.g
  br i1 %i.ga, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 3304
  %i.gc = load float, ptr %i.gb, align 8, !tbaa !320 ; 4 uses
  %i.gd = fsub float %i.fs, %i.gc                 ; 2 uses
  %i.ge = fadd float %i.fu, %i.gc                 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 9216
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !1186, !range !99, !noundef !236
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gi = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 9224
  %i.gk = load float, ptr %i.gj, align 8, !tbaa !1187
  %i.gl = fsub float %i.gk, %i.gc
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 9232
  %i.gn = load float, ptr %i.gm, align 8, !tbaa !1188
  %i.go = fadd float %i.gc, %i.gn
  %i.gp = fptosi float %i.gl to i32
  %i.gq = fptosi float %i.go to i32
  %.sroa.24.0.insert.ext.i253.i = zext i32 %i.gq to i64
  %.sroa.24.0.insert.shift.i254.i = shl nuw i64 %.sroa.24.0.insert.ext.i253.i, 32
  %.sroa.03.0.insert.ext.i255.i = zext i32 %i.gp to i64
  %.sroa.03.0.insert.insert.i256.i = or disjoint i64 %.sroa.24.0.insert.shift.i254.i, %.sroa.03.0.insert.ext.i255.i
  store i64 %.sroa.03.0.insert.insert.i256.i, ptr %8, align 8
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %.sroa.220.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 4 dereferenceable(12) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.0201.i = phi float [ %i.fs, %bb.ag ], [ %i.fs, %bb.ah ], [ %i.gd, %bb.aj ], [ %i.gd, %bb.ai ]
  %.0200.i = phi float [ %i.fu, %bb.ag ], [ %i.fu, %bb.ah ], [ %i.ge, %bb.aj ], [ %i.ge, %bb.ai ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.gs = fptosi float %.0201.i to i32
  %i.gt = fptosi float %.0200.i to i32
  %.sroa.24.0.insert.ext.i259.i = zext i32 %i.gt to i64
  %.sroa.24.0.insert.shift.i260.i = shl nuw i64 %.sroa.24.0.insert.ext.i259.i, 32
  %.sroa.03.0.insert.ext.i261.i = zext i32 %i.gs to i64
  %.sroa.03.0.insert.insert.i262.i = or disjoint i64 %.sroa.24.0.insert.shift.i260.i, %.sroa.03.0.insert.ext.i261.i
  %.sroa.5.8.insert.ext.i265.i = shl nsw i32 %i.fc, 8
  %.sroa.5.8.insert.shift.i266.i = and i32 %.sroa.5.8.insert.ext.i265.i, 65280
  %.sroa.5.8.insert.insert.i267.i = select i1 %.shrunk.i, i32 65537, i32 1
  %.sroa.3.8.insert.insert.i268.i = or disjoint i32 %.sroa.5.8.insert.shift.i266.i, %.sroa.5.8.insert.insert.i267.i
  store i64 %.sroa.03.0.insert.insert.i262.i, ptr %9, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.3.8.insert.insert.i268.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @_ZN8ImVectorI21ImGuiListClipperRangeE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 4 dereferenceable(12) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.v
  %i.gu = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !360 ; 2 uses
  %i.gx = load i32, ptr %i.gu, align 8, !tbaa !366 ; 4 uses
  %i.gy = sext i32 %i.gx to i64
  %.idx.i = mul nsw i64 %i.gy, 12
  %i.gz = getelementptr inbounds i8, ptr %i.gw, i64 %.idx.i
  %.not213283.i = icmp eq i32 %i.gx, 0
  br i1 %.not213283.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 284
  br label %bb.aq

._crit_edge.i:                                    ; preds = %bb.as, %bb.al
  %i.hb = load i32, ptr %i.aa, align 4, !tbaa !354 ; 4 uses
  %i.hc = sub nsw i32 %i.gx, %i.hb                ; 2 uses
  %i.hd = icmp slt i32 %i.hc, 2
  br i1 %i.hd, label %_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i, label %.preheader47.i.i

.preheader47.i.i:                                 ; preds = %._crit_edge.i
  %i.he = sext i32 %i.hb to i64                   ; 2 uses
  %i.hf = zext nneg i32 %i.hc to i64
  br label %.lr.ph.preheader.i.i

.loopexit46.i.i:                                  ; preds = %bb.an
  %i.hg = icmp sgt i64 %indvars.iv56.i.i, 2
  br i1 %i.hg, label %.lr.ph.preheader.i.i, label %.preheader.i.i, !llvm.loop !1175

.lr.ph.preheader.i.i:                             ; preds = %.loopexit46.i.i, %.preheader47.i.i
  %indvars.iv56.i.i = phi i64 [ %i.hf, %.preheader47.i.i ], [ %indvars.iv.next57.i.i, %.loopexit46.i.i ] ; 2 uses
  %indvars.iv.next57.i.i = add nsw i64 %indvars.iv56.i.i, -1 ; 2 uses
  %i.hh = add nsw i64 %indvars.iv.next57.i.i, %i.he
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.loopexit46.i.i
  %.051.i.i = add nsw i32 %i.hb, 1                ; 2 uses
  %i.hi = load i32, ptr %i.gu, align 8, !tbaa !366 ; 3 uses
  %i.hj = icmp slt i32 %.051.i.i, %i.hi
  br i1 %i.hj, label %.lr.ph54.i.i, label %_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.an, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.he, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.an ] ; 2 uses
  %i.hk = load ptr, ptr %i.gv, align 8, !tbaa !360 ; 2 uses
  %i.hl = getelementptr inbounds [12 x i8], ptr %i.hk, i64 %indvars.iv.i.i ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !1181
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.hn = getelementptr inbounds [12 x i8], ptr %i.hk, i64 %indvars.iv.next.i.i ; 3 uses
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
end_hunk_0
