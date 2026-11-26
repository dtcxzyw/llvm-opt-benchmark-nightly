Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/proj?download=true
inline.NumInlined: 135
inline.NumDeleted: 86
begin_hunk_0_@main:bb.a
  br i1 %or.cond.i, label %bb.fp, label %.noexc309

bb.fp:                                            ; preds = %bb.fo
  invoke void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.47)
          to label %.noexc309 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc309:                                        ; preds = %bb.fp, %bb.fo
  %i.lw = load ptr, ptr @_ZL4Proj, align 8, !tbaa !93
  %i.lx = invoke i32 @proj_errno_reset(ptr noundef %i.lw)
          to label %.noexc310 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc310:                                        ; preds = %.noexc309
  %i.ly = load i32, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !100
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !100
  %i.ma = call ptr @fgets(ptr noundef nonnull %i.d, i32 noundef 1000, ptr noundef %.0200) ; 3 uses
  store ptr %i.ma, ptr %i.e, align 8, !tbaa !11
  %.not4757.i = icmp eq ptr %i.ma, null
  br i1 %.not4757.i, label %_ZL8vprocessP8_IO_FILE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc310, %.noexc311
  %i.mb = phi ptr [ %i.mp, %.noexc311 ], [ %i.ma, %.noexc310 ] ; 4 uses
  %i.mc = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.mb, i32 noundef 10) #21
  %.not48.i = icmp eq ptr %i.mc, null
  br i1 %.not48.i, label %bb.fq, label %.loopexit.i

bb.fq:                                            ; preds = %.lr.ph.i
  %strlen.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.mb)
  %endptr.i = getelementptr inbounds i8, ptr %i.mb, i64 %strlen.i
  store i16 10, ptr %endptr.i, align 1
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fr, %bb.fq
  %i.md = call i32 @fgetc(ptr noundef %.0200)
  switch i32 %i.md, label %bb.fr [
    i32 -1, label %.loopexit.loopexit.i
    i32 10, label %.loopexit.loopexit.i
  ]

.loopexit.loopexit.i:                             ; preds = %bb.fr, %bb.fr
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !11
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.lr.ph.i
  %i.me = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %i.mb, %.lr.ph.i ] ; 5 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !12  ; 2 uses
  %i.mg = sext i8 %i.mf to i32
  %i.mh = load i32, ptr @_ZL3tag, align 4, !tbaa !39
  %i.mi = icmp eq i32 %i.mh, %i.mg
  br i1 %i.mi, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %.loopexit.i
  %i.mj = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.mk = call i32 @fputs(ptr noundef nonnull %i.me, ptr noundef %i.mj) ; 0 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.invoke, %.noexc321, %.noexc330, %bb.fs
  %i.ml = load ptr, ptr @_ZL4Proj, align 8, !tbaa !93
  %i.mm = invoke i32 @proj_errno_reset(ptr noundef %i.ml)
          to label %.noexc311 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc311:                                        ; preds = %.backedge.i
  %i.mn = load i32, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !100
  %i.mo = add nsw i32 %i.mn, 1
  store i32 %i.mo, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !100
  %i.mp = call ptr @fgets(ptr noundef nonnull %i.d, i32 noundef 1000, ptr noundef %.0200) ; 3 uses
  store ptr %i.mp, ptr %i.e, align 8, !tbaa !11
  %.not47.i = icmp eq ptr %i.mp, null
  br i1 %.not47.i, label %_ZL8vprocessP8_IO_FILE.exit, label %.lr.ph.i, !llvm.loop !31

bb.ft:                                            ; preds = %.loopexit.i
  switch i8 %i.mf, label %bb.fu [
    i8 73, label %.critedge.i
    i8 105, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.ft, %bb.ft
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 1 ; 2 uses
  store ptr %i.mq, ptr %i.e, align 8, !tbaa !11
  br label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  br i1 %i.lm, label %bb.fy, label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %.critedge.i
  %i.mr = phi ptr [ %i.mq, %.critedge.i ], [ %i.me, %bb.fu ]
  %i.ms = load ptr, ptr @_ZL4Proj, align 8, !tbaa !93
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 112
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !96
  %.not50.i = icmp eq ptr %i.mu, null
  br i1 %.not50.i, label %.invoke, label %bb.fw

.invoke:                                          ; preds = %.noexc324, %.noexc316, %bb.fw, %bb.fv
  %i.mv = phi ptr [ @.str.50, %.noexc316 ], [ @.str.49, %bb.fv ], [ @.str.50, %bb.fw ], [ @.str.52, %.noexc324 ]
  invoke void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef -1, ptr noundef nonnull %i.mv)
          to label %.backedge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fw:                                            ; preds = %bb.fv
  %i.mw = call double @strtod(ptr noundef nonnull %i.mr, ptr noundef nonnull %i.e) #19 ; 3 uses
  %i.mx = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.my = call double @strtod(ptr noundef %i.mx, ptr noundef nonnull %i.e) #19 ; 3 uses
  %i.mz = fcmp oeq double %i.mw, +inf
  %i.na = fcmp oeq double %i.my, +inf
  %or.cond4.i = select i1 %i.mz, i1 true, i1 %i.na
  br i1 %or.cond4.i, label %.invoke, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %.b46.i = load i1, ptr @_ZL8prescale, align 4   ; 2 uses
  %i.nb = load double, ptr @_ZL6fscale, align 8   ; 2 uses
  %i.nc = fmul double %i.mw, %i.nb
  %i.nd = fmul double %i.my, %i.nb
  %.sroa.022.0.i = select i1 %.b46.i, double %i.nc, double %i.mw ; 2 uses
  %.sroa.13.0.i = select i1 %.b46.i, double %i.nd, double %i.my ; 2 uses
  %.b45.i = load i1, ptr @_ZL9reversein, align 4  ; 2 uses
  %.sroa.022.1.i = select i1 %.b45.i, double %.sroa.13.0.i, double %.sroa.022.0.i ; 2 uses
  %.sroa.13.1.i = select i1 %.b45.i, double %.sroa.022.0.i, double %.sroa.13.0.i ; 2 uses
  %i.ne = load ptr, ptr @_ZL4Proj, align 8, !tbaa !93
  %i.nf = invoke { double, double } @_Z6pj_inv5PJ_XYP8PJconsts(double %.sroa.022.1.i, double %.sroa.13.1.i, ptr noundef %i.ne)
          to label %.noexc314 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc314:                                        ; preds = %bb.fx
  %i.ng = extractvalue { double, double } %i.nf, 0
  %i.nh = extractvalue { double, double } %i.nf, 1
  br label %bb.gb

bb.fy:                                            ; preds = %bb.fu
  %i.ni = invoke double @proj_dmstor(ptr noundef nonnull %i.me, ptr noundef nonnull %i.e)
          to label %.noexc315 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc315:                                        ; preds = %bb.fy
  %i.nj = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.nk = invoke double @proj_dmstor(ptr noundef %i.nj, ptr noundef nonnull %i.e)
          to label %.noexc316 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc316:                                        ; preds = %.noexc315
  %i.nl = fcmp oeq double %i.ni, +inf
  %i.nm = fcmp oeq double %i.nk, +inf
  %or.cond7.i = select i1 %i.nl, i1 true, i1 %i.nm
  br i1 %or.cond7.i, label %.invoke, label %bb.fz

bb.fz:                                            ; preds = %.noexc316
  %.b44.i = load i1, ptr @_ZL9reversein, align 4  ; 2 uses
  %.sroa.029.0.i = select i1 %.b44.i, double %i.nk, double %i.ni ; 3 uses
  %.sroa.11.0.i = select i1 %.b44.i, double %i.ni, double %i.nk ; 3 uses
  %i.nn = load ptr, ptr @_ZL4Proj, align 8, !tbaa !93
  %i.no = invoke { double, double } @_Z6pj_fwd5PJ_LPP8PJconsts(double %.sroa.029.0.i, double %.sroa.11.0.i, ptr noundef %i.nn)
          to label %.noexc318 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc318:                                        ; preds = %bb.fz
  %i.np = extractvalue { double, double } %i.no, 0 ; 2 uses
  %i.nq = extractvalue { double, double } %i.no, 1 ; 2 uses
  %.b43.i = load i1, ptr @_ZL9postscale, align 4
  br i1 %.b43.i, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %.noexc318
  %i.nr = load double, ptr @_ZL6fscale, align 8, !tbaa !55 ; 2 uses
  %i.ns = fmul double %i.np, %i.nr
  %i.nt = fmul double %i.nq, %i.nr
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %.noexc318, %.noexc314
  %.sroa.022.2.i = phi double [ %.sroa.022.1.i, %.noexc314 ], [ %i.ns, %bb.ga ], [ %i.np, %.noexc318 ]
  %.sroa.13.2.i = phi double [ %.sroa.13.1.i, %.noexc314 ], [ %i.nt, %bb.ga ], [ %i.nq, %.noexc318 ]
  %.sroa.029.1.i = phi double [ %i.ng, %.noexc314 ], [ %.sroa.029.0.i, %bb.ga ], [ %.sroa.029.0.i, %.noexc318 ] ; 3 uses
  %.sroa.11.1.i = phi double [ %i.nh, %.noexc314 ], [ %.sroa.11.0.i, %bb.ga ], [ %.sroa.11.0.i, %.noexc318 ] ; 3 uses
  %i.nu = invoke i32 @proj_context_errno(ptr noundef null)
          to label %.noexc319 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc319:                                        ; preds = %bb.gb
  %.not51.i = icmp eq i32 %i.nu, 0
  br i1 %.not51.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %.noexc319
  %i.nv = invoke i32 @proj_context_errno(ptr noundef null)
          to label %.noexc320 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc320:                                        ; preds = %bb.gc
  %i.nw = invoke ptr @proj_errno_string(i32 noundef %i.nv)
          to label %.noexc321 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc321:                                        ; preds = %.noexc320
  invoke void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef -1, ptr noundef nonnull @.str.51, ptr noundef %i.nw)
          to label %.backedge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gd:                                            ; preds = %.noexc319
  %i.nx = load ptr, ptr %i.e, align 8, !tbaa !11  ; 3 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !12
  %i.nz = icmp eq i8 %i.ny, 0
  %i.oa = icmp ugt ptr %i.nx, %i.d
  %or.cond10.i = and i1 %i.oa, %i.nz
  br i1 %or.cond10.i, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.ob = getelementptr inbounds i8, ptr %i.nx, i64 -1
  store ptr %i.ob, ptr %i.e, align 8, !tbaa !11
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.oc = load ptr, ptr @_ZL14ProjForFactors, align 8, !tbaa !93
  store double %.sroa.029.1.i, ptr %6, align 8
  store double %.sroa.11.1.i, ptr %.sroa.020.sroa.4.0..sroa_idx.i, align 8
  invoke void @proj_factors(ptr dead_on_unwind nonnull writable sret(%struct.P5_FACTORS) align 8 %5, ptr noundef %i.oc, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %6)
          to label %.noexc323 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc323:                                        ; preds = %bb.gf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) @_ZL4facs, ptr noundef nonnull align 8 dereferenceable(96) %5, i64 96, i1 false), !tbaa.struct !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.od = load ptr, ptr @_ZL14ProjForFactors, align 8, !tbaa !93
  %i.oe = invoke i32 @proj_errno(ptr noundef %i.od)
          to label %.noexc324 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc324:                                        ; preds = %.noexc323
  %.not52.i = icmp eq i32 %i.oe, 0
  br i1 %.not52.i, label %bb.gg, label %.invoke

bb.gg:                                            ; preds = %.noexc324
  %i.of = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.og = load i8, ptr %i.of, align 1, !tbaa !12
  %.not53.i = icmp eq i8 %i.og, 10
  br i1 %.not53.i, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.oh = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.oi = call i32 @fputs(ptr noundef nonnull %i.of, ptr noundef %i.oh) ; 0 uses
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.oj = load ptr, ptr @stdout, align 8, !tbaa !38
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.53, i64 11, i64 1, ptr %i.oj) ; 0 uses
  %i.ok = invoke ptr @proj_rtodms2(ptr noundef nonnull %i.f, i64 noundef 40, double noundef %.sroa.029.1.i, i32 noundef 69, i32 noundef 87)
          to label %.noexc326 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc326:                                        ; preds = %bb.gi
  %i.ol = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.om = call i32 @fputs(ptr noundef %i.ok, ptr noundef %i.ol) ; 0 uses
  %i.on = fmul double %.sroa.029.1.i, f0x404CA5DC1A63C1F8
  %i.oo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, double noundef %i.on) ; 0 uses
  %i.op = load ptr, ptr @stdout, align 8, !tbaa !38
  %fwrite54.i = call i64 @fwrite(ptr nonnull @.str.55, i64 11, i64 1, ptr %i.op) ; 0 uses
  %i.oq = invoke ptr @proj_rtodms2(ptr noundef nonnull %i.f, i64 noundef 40, double noundef %.sroa.11.1.i, i32 noundef 78, i32 noundef 83)
          to label %.noexc327 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc327:                                        ; preds = %.noexc326
  %i.or = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.os = call i32 @fputs(ptr noundef %i.oq, ptr noundef %i.or) ; 0 uses
  %i.ot = fmul double %.sroa.11.1.i, f0x404CA5DC1A63C1F8
  %i.ou = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, double noundef %i.ot) ; 0 uses
  %i.ov = load i8, ptr @_ZL11swapAxisCrs, align 1, !tbaa !92, !range !102, !noundef !82
  %i.ow = trunc nuw i8 %i.ov to i1
  %.str.56..str.57.i = select i1 %i.ow, ptr @.str.56, ptr @.str.57
  %i.ox = load ptr, ptr @stdout, align 8, !tbaa !38
  %fwrite55.i = call i64 @fwrite(ptr nonnull %.str.56..str.57.i, i64 15, i64 1, ptr %i.ox) ; 0 uses
  %i.oy = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.oz = load ptr, ptr @_ZL5oform, align 8, !tbaa !11
  invoke void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef %i.oy, ptr noundef %i.oz, double noundef %.sroa.022.2.i)
          to label %.noexc328 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc328:                                        ; preds = %.noexc327
  %i.pa = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.pb = call i32 @putc(i32 noundef 10, ptr noundef %i.pa), !inline_history !24 ; 0 uses
  %i.pc = load i8, ptr @_ZL11swapAxisCrs, align 1, !tbaa !92, !range !102, !noundef !82
  %i.pd = trunc nuw i8 %i.pc to i1
  %i.pe = select i1 %i.pd, ptr @.str.57, ptr @.str.56
  %i.pf = load ptr, ptr @stdout, align 8, !tbaa !38
  %fwrite56.i = call i64 @fwrite(ptr nonnull %i.pe, i64 15, i64 1, ptr %i.pf) ; 0 uses
  %i.pg = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.ph = load ptr, ptr @_ZL5oform, align 8, !tbaa !11
  invoke void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef %i.pg, ptr noundef %i.ph, double noundef %.sroa.13.2.i)
          to label %.noexc329 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc329:                                        ; preds = %.noexc328
  %i.pi = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.pj = call i32 @putc(i32 noundef 10, ptr noundef %i.pi), !inline_history !24 ; 0 uses
  %i.pk = load double, ptr @_ZL4facs, align 8, !tbaa !104 ; 2 uses
  %i.pl = fadd double %i.pk, -1.000000e+00
  %i.pm = fmul double %i.pl, 1.000000e+02
  %i.pn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, double noundef %i.pk, double noundef %i.pm) ; 0 uses
  %i.po = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL4facs, i64 8), align 8, !tbaa !105 ; 2 uses
  %i.pp = fadd double %i.po, -1.000000e+00
  %i.pq = fmul double %i.pp, 1.000000e+02
  %i.pr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, double noundef %i.po, double noundef %i.pq) ; 0 uses
  %i.ps = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL4facs, i64 16), align 8, !tbaa !106 ; 2 uses
  %i.pt = fadd double %i.ps, -1.000000e+00
  %i.pu = fmul double %i.pt, 1.000000e+02
  %i.pv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, double noundef %i.ps, double noundef %i.pu) ; 0 uses
  %i.pw = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL4facs, i64 24), align 8, !tbaa !107
  %i.px = fmul double %i.pw, f0x404CA5DC1A63C1F8
  %i.py = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, double noundef %i.px) ; 0 uses
  %i.pz = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL4facs, i64 32), align 8, !tbaa !108
  %i.qa = fmul double %i.pz, f0x404CA5DC1A63C1F8
  %i.qb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, double noundef %i.qa) ; 0 uses
  %i.qc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63) ; 0 uses
  %i.qd = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL4facs, i64 40), align 8, !tbaa !109
  %i.qe = invoke ptr @proj_rtodms2(ptr noundef nonnull %i.f, i64 noundef 40, double noundef %i.qd, i32 noundef 0, i32 noundef 0)
          to label %.noexc330 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc330:                                        ; preds = %.noexc329
  %i.qf = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.qg = call i32 @fputs(ptr noundef %i.qe, ptr noundef %i.qf) ; 0 uses
  %i.qh = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL4facs, i64 40), align 8, !tbaa !109
  %i.qi = fmul double %i.qh, f0x404CA5DC1A63C1F8
  %i.qj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, double noundef %i.qi) ; 0 uses
  %i.qk = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL4facs, i64 48), align 8, !tbaa !110
  %i.ql = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL4facs, i64 56), align 8, !tbaa !111
  %i.qm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, double noundef %i.qk, double noundef %i.ql) ; 0 uses
  %i.qn = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.qo = call i32 @fflush(ptr noundef %i.qn)     ; 0 uses
  br label %.backedge.i

_ZL8vprocessP8_IO_FILE.exit:                      ; preds = %.noexc311, %.noexc310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ia

bb.gj:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.015.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  br label %bb.gk

bb.gk:                                            ; preds = %bb.hz, %bb.gj
  %i.qp = phi i32 [ %.pre482, %bb.hz ], [ 0, %bb.gj ]
  %i.qq = add nsw i32 %i.qp, 1
  store i32 %i.qq, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !100
  %.b29.i = load i1, ptr @_ZL6bin_in, align 4
  br i1 %.b29.i, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.qr = call i64 @fread(ptr noundef nonnull %2, i64 noundef 16, i64 noundef 1, ptr noundef %.0200)
  %.not40.i = icmp eq i64 %i.qr, 1
  br i1 %.not40.i, label %._crit_edge.i, label %_ZL7processP8_IO_FILE.exit

._crit_edge.i:                                    ; preds = %bb.gl
  %.pre47.i = load double, ptr %2, align 8, !tbaa !12
  br label %bb.hb

bb.gm:                                            ; preds = %bb.gk
  %i.qs = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef %.0200) ; 6 uses
  store ptr %i.qs, ptr %i.b, align 8, !tbaa !11
  %.not.i331 = icmp eq ptr %i.qs, null
  br i1 %.not.i331, label %_ZL7processP8_IO_FILE.exit, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.qt = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.qs, i32 noundef 10) #21
  %.not39.i = icmp eq ptr %i.qt, null
  br i1 %.not39.i, label %bb.go, label %.loopexit.i332

bb.go:                                            ; preds = %bb.gn
  %strlen.i337 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.qs)
  %endptr.i338 = getelementptr inbounds i8, ptr %i.qs, i64 %strlen.i337
  store i16 10, ptr %endptr.i338, align 1
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gp, %bb.go
  %i.qu = call i32 @fgetc(ptr noundef %.0200)
  switch i32 %i.qu, label %bb.gp [
    i32 -1, label %.loopexit.loopexit.i339
    i32 10, label %.loopexit.loopexit.i339
  ]

.loopexit.loopexit.i339:                          ; preds = %bb.gp, %bb.gp
  %.pre.i340 = load ptr, ptr %i.b, align 8, !tbaa !11
  br label %.loopexit.i332

.loopexit.i332:                                   ; preds = %.loopexit.loopexit.i339, %bb.gn
  %i.qv = phi ptr [ %.pre.i340, %.loopexit.loopexit.i339 ], [ %i.qs, %bb.gn ] ; 2 uses
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !12
  %i.qx = sext i8 %i.qw to i32
  %i.qy = load i32, ptr @_ZL3tag, align 4, !tbaa !39
  %i.qz = icmp eq i32 %i.qy, %i.qx
  br i1 %i.qz, label %bb.gq, label %bb.gs

bb.gq:                                            ; preds = %.loopexit.i332
  %.b27.i = load i1, ptr @_ZL7bin_out, align 4
  br i1 %.b27.i, label %bb.hz, label %bb.gr, !llvm.loop !32

bb.gr:                                            ; preds = %bb.gq
  %i.ra = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.rb = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.ra) ; 0 uses
  br label %bb.hz, !llvm.loop !32

bb.gs:                                            ; preds = %.loopexit.i332
  %.b35.i = load i1, ptr @_ZL9reversein, align 4
  %i.rc = load ptr, ptr @_ZL8informat, align 8, !tbaa !49
  %i.rd = invoke noundef double %i.rc(ptr noundef nonnull %i.qv, ptr noundef nonnull %i.b)
          to label %.noexc341 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !33 ; 4 uses

.noexc341:                                        ; preds = %bb.gs
  br i1 %.b35.i, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %.noexc341
  store double %i.rd, ptr %i.li, align 8, !tbaa !12
  %i.re = load ptr, ptr @_ZL8informat, align 8, !tbaa !49
  %i.rf = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.rg = invoke noundef double %i.re(ptr noundef %i.rf, ptr noundef nonnull %i.b)
          to label %.noexc342 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !33 ; 2 uses

.noexc342:                                        ; preds = %bb.gt
  store double %i.rg, ptr %2, align 8, !tbaa !12
  br label %bb.gv

bb.gu:                                            ; preds = %.noexc341
  store double %i.rd, ptr %2, align 8, !tbaa !12
  %i.rh = load ptr, ptr @_ZL8informat, align 8, !tbaa !49
  %i.ri = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.rj = invoke noundef double %i.rh(ptr noundef %i.ri, ptr noundef nonnull %i.b)
          to label %.noexc343 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !33 ; 2 uses

.noexc343:                                        ; preds = %bb.gu
  store double %i.rj, ptr %i.li, align 8, !tbaa !12
  br label %bb.gv

bb.gv:                                            ; preds = %.noexc343, %.noexc342
  %i.rk = phi double [ %i.rd, %.noexc343 ], [ %i.rg, %.noexc342 ]
  %i.rl = phi double [ %i.rj, %.noexc343 ], [ %i.rd, %.noexc342 ]
  %i.rm = fcmp oeq double %i.rl, +inf
  br i1 %i.rm, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  store double +inf, ptr %2, align 8, !tbaa !12
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.rn = phi double [ +inf, %bb.gw ], [ %i.rk, %bb.gv ] ; 2 uses
  %i.ro = load ptr, ptr %i.b, align 8, !tbaa !11  ; 4 uses
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !12
  %i.rq = icmp eq i8 %i.rp, 0
  %i.rr = icmp ugt ptr %i.ro, %i.a
  %or.cond.i333 = and i1 %i.rr, %i.rq
  br i1 %or.cond.i333, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.rs = getelementptr inbounds i8, ptr %i.ro, i64 -1 ; 2 uses
  store ptr %i.rs, ptr %i.b, align 8, !tbaa !11
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.rt = phi ptr [ %i.rs, %bb.gy ], [ %i.ro, %bb.gx ] ; 2 uses
  %.b26.i = load i1, ptr @_ZL7bin_out, align 4
  %i.ru = xor i1 %.b26.i, true
  %.b30.i = load i1, ptr @_ZL6echoin, align 4
  %or.cond4.i334 = select i1 %i.ru, i1 %.b30.i, i1 false
  br i1 %or.cond4.i334, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.rv = load i8, ptr %i.rt, align 1, !tbaa !12
  store i8 0, ptr %i.rt, align 1, !tbaa !12
  %i.rw = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.rx = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.rw) ; 0 uses
  %i.ry = load ptr, ptr %i.b, align 8, !tbaa !11
  store i8 %i.rv, ptr %i.ry, align 1, !tbaa !12
  %i.rz = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.sa = call i32 @putc(i32 noundef 9, ptr noundef %i.rz), !inline_history !24 ; 0 uses
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz, %._crit_edge.i
  %i.sb = phi double [ %.pre47.i, %._crit_edge.i ], [ %i.rn, %bb.gz ], [ %i.rn, %bb.ha ] ; 3 uses
  %i.sc = fcmp une double %i.sb, +inf
  br i1 %i.sc, label %bb.hc, label %.thread.i

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.b38.i = load i1, ptr @_ZL8prescale, align 4
  br i1 %.b38.i, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.sd = load double, ptr @_ZL6fscale, align 8, !tbaa !55 ; 2 uses
  %i.se = fmul double %i.sb, %i.sd
  %i.sf = load double, ptr %i.li, align 8, !tbaa !12
  %i.sg = fmul double %i.sd, %i.sf
  store double %i.sg, ptr %i.li, align 8, !tbaa !12
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.sroa.0.0.copyload.i = phi double [ %i.se, %bb.hd ], [ %i.sb, %bb.hc ]
  %.b33.i = load i1, ptr @_ZL9dofactors, align 4
  %or.cond6.not.i = select i1 %.b33.i, i1 %i.lj, i1 false
  br i1 %or.cond6.not.i, label %bb.hf, label %.noexc345

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.sh = load ptr, ptr @_ZL14ProjForFactors, align 8, !tbaa !93
  invoke void @proj_factors(ptr dead_on_unwind nonnull writable sret(%struct.P5_FACTORS) align 8 %3, ptr noundef %i.sh, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %.sroa.015.i)
          to label %.noexc344 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc344:                                        ; preds = %bb.hf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) @_ZL4facs, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false), !tbaa.struct !101
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.si = load ptr, ptr @_ZL14ProjForFactors, align 8, !tbaa !93
  %i.sj = invoke i32 @proj_errno(ptr noundef %i.si)
          to label %.noexc345 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc345:                                        ; preds = %.noexc344, %bb.he
  %.0.i = phi i32 [ 0, %bb.he ], [ %i.sj, %.noexc344 ]
  %.sroa.2.0.copyload.i = load double, ptr %i.li, align 8, !tbaa !55
  %i.sk = load ptr, ptr @_ZL4Proj, align 8, !tbaa !93
  %i.sl = invoke { double, double } %storemerge277(double %.sroa.0.0.copyload.i, double %.sroa.2.0.copyload.i, ptr noundef %i.sk)
          to label %.noexc346 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !33 ; 2 uses

.noexc346:                                        ; preds = %.noexc345
  %i.sm = extractvalue { double, double } %i.sl, 0 ; 4 uses
  %i.sn = extractvalue { double, double } %i.sl, 1 ; 3 uses
  store double %i.sm, ptr %2, align 8, !tbaa !55
  store double %i.sn, ptr %i.li, align 8, !tbaa !55
  %.b32.i = load i1, ptr @_ZL9dofactors, align 4
  %or.cond8.i = select i1 %.b32.i, i1 %i.lk, i1 false
  br i1 %or.cond8.i, label %bb.hg, label %.noexc348

bb.hg:                                            ; preds = %.noexc346
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.so = load ptr, ptr @_ZL14ProjForFactors, align 8, !tbaa !93
  invoke void @proj_factors(ptr dead_on_unwind nonnull writable sret(%struct.P5_FACTORS) align 8 %4, ptr noundef %i.so, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %.sroa.015.i)
          to label %.noexc347 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc347:                                        ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) @_ZL4facs, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false), !tbaa.struct !101
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.sp = load ptr, ptr @_ZL14ProjForFactors, align 8, !tbaa !93
  %i.sq = invoke i32 @proj_errno(ptr noundef %i.sp)
          to label %.noexc348 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc348:                                        ; preds = %.noexc347, %.noexc346
  %.1.i = phi i32 [ %.0.i, %.noexc346 ], [ %i.sq, %.noexc347 ]
  %.b34.i = load i1, ptr @_ZL9postscale, align 4
  %i.sr = fcmp une double %i.sm, +inf
  %or.cond11.i = select i1 %.b34.i, i1 %i.sr, i1 false
  br i1 %or.cond11.i, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %.noexc348
  %i.ss = load double, ptr @_ZL6fscale, align 8, !tbaa !55 ; 2 uses
  %i.st = fmul double %i.sm, %i.ss                ; 2 uses
  store double %i.st, ptr %2, align 8, !tbaa !12
  %i.su = fmul double %i.sn, %i.ss                ; 2 uses
  store double %i.su, ptr %i.li, align 8, !tbaa !12
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %.noexc348
  %i.sv = phi double [ %i.su, %bb.hh ], [ %i.sn, %.noexc348 ] ; 5 uses
  %i.sw = phi double [ %i.st, %bb.hh ], [ %i.sm, %.noexc348 ] ; 6 uses
  %i.sx = icmp eq i32 %.1.i, 0                    ; 3 uses
  %.b.i336 = load i1, ptr @_ZL7bin_out, align 4
  br i1 %.b.i336, label %bb.hj, label %bb.hk

.thread.i:                                        ; preds = %bb.hb
  %.b55.i = load i1, ptr @_ZL7bin_out, align 4
  br i1 %.b55.i, label %bb.hj, label %.thread57.i

bb.hj:                                            ; preds = %.thread.i, %bb.hi
  %i.sy = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.sz = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 16, i64 noundef 1, ptr noundef %i.sy) ; 0 uses
  br label %bb.hz, !llvm.loop !32

bb.hk:                                            ; preds = %bb.hi
  %i.ta = fcmp oeq double %i.sw, +inf
  br i1 %i.ta, label %.thread57.i, label %bb.hl

.thread57.i:                                      ; preds = %bb.hk, %.thread.i
  %.25660.i = phi i1 [ %i.sx, %bb.hk ], [ true, %.thread.i ]
  %i.tb = load ptr, ptr @_ZL5oterr, align 8, !tbaa !11
  br label %.noexc356.sink.split

bb.hl:                                            ; preds = %bb.hk
  %i.tc = load ptr, ptr @_ZL5oform, align 8
  %i.td = icmp ne ptr %i.tc, null
  %or.cond13.i = select i1 %i.ll, i1 true, i1 %i.td
  br i1 %or.cond13.i, label %bb.hp, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %.b37.i = load i1, ptr @_ZL10reverseout, align 4
  br i1 %.b37.i, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.te = invoke noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.sv, i32 noundef 78, i32 noundef 83)
          to label %.noexc351.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ho:                                            ; preds = %bb.hm
  %i.tf = invoke noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.sw, i32 noundef 69, i32 noundef 87)
          to label %.noexc351.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc351.invoke:                                 ; preds = %bb.ho, %bb.hn
  %.sink558 = phi ptr [ %i.te, %bb.hn ], [ %i.tf, %bb.ho ]
  %i.tg = phi double [ %i.sw, %bb.hn ], [ %i.sv, %bb.ho ]
  %i.th = phi i32 [ 69, %bb.hn ], [ 78, %bb.ho ]
  %i.ti = phi i32 [ 87, %bb.hn ], [ 83, %bb.ho ]
  %i.tj = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.tk = call i32 @fputs(ptr noundef %.sink558, ptr noundef %i.tj) ; 0 uses
  %i.tl = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.tm = call i32 @putc(i32 noundef 9, ptr noundef %i.tl) ; 0 uses
  %i.tn = invoke noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.tg, i32 noundef %i.th, i32 noundef %i.ti)
          to label %.noexc356.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hp:                                            ; preds = %bb.hl
  %i.to = load ptr, ptr @_ZL4Proj, align 8, !tbaa !93 ; 2 uses
  br i1 %i.ll, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.tp = invoke i32 @proj_angular_input(ptr noundef %i.to, i32 noundef 1)
          to label %.noexc353 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc353:                                        ; preds = %bb.hq
  %.not44.i = icmp eq i32 %i.tp, 0
  br i1 %.not44.i, label %bb.hs, label %.sink.split.i

bb.hr:                                            ; preds = %bb.hp
  %i.tq = invoke i32 @proj_angular_output(ptr noundef %i.to, i32 noundef 1)
          to label %.noexc354 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
begin_hunk_1_@main:bb.a
  %.pre482 = load i32, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !100
  br label %bb.gk

_ZL7processP8_IO_FILE.exit:                       ; preds = %bb.gl, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.015.i)
  br label %bb.ia

bb.ia:                                            ; preds = %_ZL7processP8_IO_FILE.exit, %_ZL8vprocessP8_IO_FILE.exit
  %i.ut = call i32 @fclose(ptr noundef %.0200)    ; 0 uses
  store ptr null, ptr @emess_dat, align 8, !tbaa !99
  br label %bb.ib

bb.ib:                                            ; preds = %bb.fk, %bb.ia
  %i.uu = getelementptr inbounds nuw i8, ptr %.1202424, i64 8
  %.not284 = icmp eq i32 %i.ln, 0
  br i1 %.not284, label %bb.ic, label %bb.fh, !llvm.loop !34

bb.ic:                                            ; preds = %bb.ib
  %i.uv = load ptr, ptr @_ZL14ProjForFactors, align 8, !tbaa !93 ; 3 uses
  %.not285 = icmp eq ptr %i.uv, null
  %i.uw = load ptr, ptr @_ZL4Proj, align 8        ; 2 uses
  %.not286 = icmp eq ptr %i.uv, %i.uw
  %or.cond304 = select i1 %.not285, i1 true, i1 %.not286
  br i1 %or.cond304, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.ux = invoke ptr @proj_destroy(ptr noundef nonnull %i.uv)
          to label %thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

thread-pre-split:                                 ; preds = %bb.id
  %.pr = load ptr, ptr @_ZL4Proj, align 8, !tbaa !93
  br label %bb.ie

bb.ie:                                            ; preds = %thread-pre-split, %bb.ic
  %i.uy = phi ptr [ %.pr, %thread-pre-split ], [ %i.uw, %bb.ic ] ; 2 uses
  %.not287 = icmp eq ptr %i.uy, null
  br i1 %.not287, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.uz = invoke ptr @proj_destroy(ptr noundef nonnull %i.uy)
          to label %bb.ig unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ig:                                            ; preds = %bb.if, %bb.ie
  call void @exit(i32 noundef 0) #23
  unreachable

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %.pn301 = phi { ptr, i32 } [ %.pn266.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %i.jj, %bb.ed ], [ %lpad.loopexit.split-lp613, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.va = load ptr, ptr %7, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %bb.ih

bb.ih:                                            ; preds = %.loopexit.split-lp
  %i.vb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !17
  %i.vd = ptrtoint ptr %i.vc to i64
  %i.ve = ptrtoint ptr %i.va to i64
  %i.vf = sub i64 %i.vd, %i.ve
  call void @_ZdlPvm(ptr noundef nonnull %i.va, i64 noundef %i.vf) #26
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %.loopexit.split-lp, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn301
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_Z38pj_stderr_proj_lib_deprecation_warningv() local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare noundef ptr @_Z14pj_get_releasev() local_unnamed_addr #2

declare void @_Z5emessiPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @proj_list_operations() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @proj_list_ellps() local_unnamed_addr #2

declare ptr @proj_get_units_from_database(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @proj_unit_list_destroy(ptr noundef) local_unnamed_addr #2

declare void @_Z10set_rtodmsii(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !11
  store ptr %i.e, ptr %i.b, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !16
  br label %_ZNSt6vectorIPcSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #24
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !11
  store ptr %i.t, ptr %i.s, align 8, !tbaa !11
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #26
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !18
  store ptr %i.v, ptr %i.a, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !17
  br label %_ZNSt6vectorIPcSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

_ZNSt6vectorIPcSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  ret void
}

declare noundef zeroext i1 @_Z32validate_form_string_for_numbersPKc(ptr noundef) local_unnamed_addr #2

declare void @proj_context_use_proj4_init_rules(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !112
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.68) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !113
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !22
  %i.g = load i64, ptr %i.a, align 8, !tbaa !113
  store i64 %i.g, ptr %i.b, align 8, !tbaa !12
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !12
  store i8 %i.i, ptr %i.h, align 1, !tbaa !12
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !23
  %i.l = load ptr, ptr %0, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare ptr @proj_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @proj_get_type(ptr noundef) local_unnamed_addr #2

declare ptr @proj_crs_get_sub_crs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @proj_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs12ProjectedCRS16coordinateSystemEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs16CoordinateSystem8axisListEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj2cs20CoordinateSystemAxis9directionEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5osgeo4proj4util8CodeListeqERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !22
  %i.h = load ptr, ptr %0, align 8, !tbaa !22
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

declare ptr @proj_get_source_crs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_get_prime_meridian(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @proj_prime_meridian_get_parameters(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_create_ellipsoidal_2D_cs(ptr noundef, i32 noundef, ptr noundef, double noundef) local_unnamed_addr #2

declare ptr @proj_get_ellipsoid(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @proj_ellipsoid_get_parameters(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_create_geographic_crs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef, double noundef, ptr noundef, double noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_get_name(ptr noundef) local_unnamed_addr #2

declare ptr @proj_crs_get_datum(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_crs_get_datum_ensemble(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_create_geographic_crs_from_datum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_create_crs_to_crs_from_pj(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_crs_get_coordoperation(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_create_cartesian_2D_cs(ptr noundef, i32 noundef, ptr noundef, double noundef) local_unnamed_addr #2

declare ptr @proj_create_projected_crs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_create_argv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_errno_string(i32 noundef) local_unnamed_addr #2

declare i32 @proj_context_errno(ptr noundef) local_unnamed_addr #2

declare i32 @proj_angular_input(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @proj_angular_output(ptr noundef, i32 noundef) local_unnamed_addr #2

declare { double, double } @_Z6pj_inv5PJ_XYP8PJconsts(double, double, ptr noundef) #2

declare { double, double } @_Z6pj_fwd5PJ_LPP8PJconsts(double, double, ptr noundef) #2

declare void @_Z10pj_pr_listP8PJconsts(ptr noundef) local_unnamed_addr #2

declare void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) #10

declare double @proj_dmstor(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare i32 @proj_errno_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @proj_factors(ptr dead_on_unwind writable sret(%struct.P5_FACTORS) align 8, ptr noundef, ptr noundef byval(%union.PJ_COORD) align 8) local_unnamed_addr #2

declare i32 @proj_errno(ptr noundef) local_unnamed_addr #2

declare ptr @proj_rtodms2(ptr noundef, i64 noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_Z6rtodmsPcmdii(ptr noundef, i64 noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

attributes #0 = { mustprogress norecurse noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { cold nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"any p2 pointer", !9, i64 0}
!14 = !{!"p2 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIPcSaIS0_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 8}
!17 = !{!15, !14, i64 16}
!18 = !{!15, !14, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !20, i64 8, !5, i64 16}
!22 = !{!21, !10, i64 0}
!23 = !{!21, !20, i64 8}
!24 = distinct !{null}
!25 = distinct !{!25, !43}
!26 = distinct !{!26, !43}
!27 = distinct !{!27, !43}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{!30, !43}
!31 = distinct !{!31, !43}
!32 = distinct !{!32, !43}
!33 = distinct !{null}
!34 = distinct !{!34, !43}
!35 = !{!"_ZTS5EMESS", !10, i64 0, !10, i64 8, !6, i64 16}
!36 = !{!35, !10, i64 8}
!37 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!6, !6, i64 0}
!40 = !{!"_ZTS7PJ_LIST", !10, i64 0, !9, i64 8, !14, i64 16}
!41 = !{!40, !10, i64 0}
!42 = !{!40, !14, i64 16}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"_ZTS8PJ_ELLPS", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!45 = !{!44, !10, i64 0}
!46 = !{!44, !10, i64 8}
!47 = !{!44, !10, i64 16}
!48 = !{!44, !10, i64 24}
!49 = !{!9, !9, i64 0}
!50 = !{!"double", !5, i64 0}
!51 = !{!"_ZTS14PROJ_UNIT_INFO", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !50, i64 32, !10, i64 40, !6, i64 48}
!52 = !{!51, !10, i64 40}
!53 = !{!51, !50, i64 32}
!54 = !{!51, !10, i64 16}
!55 = !{!50, !50, i64 0}
!56 = !{!14, !14, i64 0}
!57 = !{!"p1 _ZTS6pj_ctx", !9, i64 0}
!58 = !{!"p1 _ZTS8ARG_list", !9, i64 0}
!59 = !{!"p1 _ZTS8PJconsts", !9, i64 0}
!60 = !{!"p1 _ZTS13geod_geodesic", !9, i64 0}
!61 = !{!"_ZTS11pj_io_units", !5, i64 0}
!62 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !9, i64 0}
!63 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!64 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !63, i64 0}
!65 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !62, i64 0, !64, i64 8}
!66 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !65, i64 0}
!67 = !{!"bool", !5, i64 0}
!68 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !9, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !71, i64 0}
!73 = !{!"_ZTS7PJ_TYPE", !5, i64 0}
!74 = !{!"p1 _ZTS16PJCoordOperation", !9, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !75, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !76, i64 0}
!78 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !77, i64 0}
!79 = !{!"_ZTS8PJconsts", !57, i64 0, !10, i64 8, !10, i64 16, !58, i64 24, !10, i64 32, !59, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !60, i64 80, !9, i64 88, !6, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !50, i64 168, !50, i64 176, !50, i64 184, !50, i64 192, !50, i64 200, !50, i64 208, !50, i64 216, !50, i64 224, !50, i64 232, !50, i64 240, !50, i64 248, !50, i64 256, !50, i64 264, !50, i64 272, !50, i64 280, !50, i64 288, !50, i64 296, !50, i64 304, !50, i64 312, !50, i64 320, !50, i64 328, !50, i64 336, !6, i64 344, !6, i64 348, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !61, i64 380, !61, i64 384, !59, i64 392, !59, i64 400, !59, i64 408, !59, i64 416, !59, i64 424, !59, i64 432, !50, i64 440, !50, i64 448, !50, i64 456, !50, i64 464, !50, i64 472, !50, i64 480, !50, i64 488, !50, i64 496, !50, i64 504, !50, i64 512, !50, i64 520, !6, i64 528, !5, i64 536, !6, i64 592, !9, i64 600, !9, i64 608, !50, i64 616, !50, i64 624, !6, i64 632, !5, i64 636, !66, i64 640, !67, i64 656, !50, i64 664, !67, i64 672, !21, i64 680, !21, i64 712, !21, i64 744, !67, i64 776, !72, i64 784, !73, i64 808, !78, i64 816, !6, i64 840, !67, i64 844, !67, i64 845, !67, i64 846, !59, i64 848}
!80 = !{!79, !57, i64 0}
!81 = !{!65, !62, i64 0}
!82 = !{}
!83 = !{!"p1 _ZTSN5osgeo4proj2cs11CartesianCSE", !9, i64 0}
!84 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj2cs11CartesianCSELN9__gnu_cxx12_Lock_policyE2EE", !83, i64 0, !64, i64 8}
!85 = !{!84, !83, i64 0}
!86 = !{!"p1 _ZTSN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEE", !9, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEEESaIS9_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!87, !86, i64 0}
!89 = !{!"p1 _ZTSN5osgeo4proj2cs20CoordinateSystemAxisE", !9, i64 0}
!90 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisELN9__gnu_cxx12_Lock_policyE2EE", !89, i64 0, !64, i64 8}
!91 = !{!90, !89, i64 0}
!92 = !{!67, !67, i64 0}
!93 = !{!59, !59, i64 0}
!94 = !{!79, !61, i64 384}
!95 = !{!79, !10, i64 16}
!96 = !{!79, !9, i64 112}
!97 = !{!79, !50, i64 216}
!98 = !{!79, !50, i64 168}
!99 = !{!35, !10, i64 0}
!100 = !{!35, !6, i64 16}
!101 = !{i64 0, i64 8, !55, i64 8, i64 8, !55, i64 16, i64 8, !55, i64 24, i64 8, !55, i64 32, i64 8, !55, i64 40, i64 8, !55, i64 48, i64 8, !55, i64 56, i64 8, !55, i64 64, i64 8, !55, i64 72, i64 8, !55, i64 80, i64 8, !55, i64 88, i64 8, !55}
!102 = !{i8 0, i8 2}
!103 = !{!"_ZTS10P5_FACTORS", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !50, i64 56, !50, i64 64, !50, i64 72, !50, i64 80, !50, i64 88}
!104 = !{!103, !50, i64 0}
!105 = !{!103, !50, i64 8}
!106 = !{!103, !50, i64 16}
!107 = !{!103, !50, i64 24}
!108 = !{!103, !50, i64 32}
!109 = !{!103, !50, i64 40}
!110 = !{!103, !50, i64 48}
!111 = !{!103, !50, i64 56}
!112 = !{!19, !10, i64 0}
!113 = !{!20, !20, i64 0}
end_hunk_1
