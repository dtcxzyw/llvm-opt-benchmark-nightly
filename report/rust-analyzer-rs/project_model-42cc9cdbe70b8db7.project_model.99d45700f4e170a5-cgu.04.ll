inline.NumInlined: 599
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringINtNtBb_3vec3VecB17_EE6insertCsdcPuHeDsw6v_13project_model:bb.a
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %.sroa.510.0.i.i.i
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.db
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr nonnull align 8 %i.dg, i64 %i.de, i1 false), !alias.scope !413, !noalias !415
  br label %bb.an

bb.ak:                                            ; preds = %bb.am, %bb.al
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !416
  unreachable

.thread.i.i:                                      ; preds = %bb.w, %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 272
  %i.dk = add nuw nsw i16 %i.bm, 1
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %.sroa.17.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !417, !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i16 %i.dk, ptr %i.bl, align 2, !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !351
  br label %bb.ap

bb.al:                                            ; preds = %bb.ag, %.thread.i.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.cm, %.thread.i.i.i.i ], [ %i.co, %bb.ag ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #22
          to label %bb.am unwind label %bb.ak, !noalias !419

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #22
          to label %.thread unwind label %bb.ak, !noalias !416

bb.an:                                            ; preds = %bb.aj, %bb.ai
  %i.dm = getelementptr inbounds nuw i8, ptr %spec.select32.i.i.i, i64 272
  %i.dn = add i16 %i.cx, 1
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %.sroa.510.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !420, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %i.dn, ptr %i.cw, align 2, !noalias !399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.426.i.i, i64 40, i1 false), !noalias !421
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !351
  %.not.i.i = icmp eq i64 %.sroa.025.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7244.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7244.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i, i64 40, i1 false), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.dp = load ptr, ptr %.sroa.13.0, align 8, !noalias !422, !noundef !4 ; 2 uses
  %.not.i145.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i145.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7244.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7244.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7244.i.i, i64 16 ; 5 uses
  br label %bb.bf

bb.ap:                                            ; preds = %bb.an, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.cq

._crit_edge.i.i:                                  ; preds = %bb.cl, %bb.ao
  %.sroa.0.0.i.i10 = phi i64 [ %.sroa.025.0.copyload.i.i, %bb.ao ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cl ]
  %.lcssa137.i.i = phi i64 [ 0, %bb.ao ], [ %i.er, %bb.cl ] ; 3 uses
  %.lcssa129.i.i = phi ptr [ %i.ca, %bb.ao ], [ %i.hb, %bb.cl ] ; 4 uses
  %.lcssa.i.i = phi ptr [ %.sroa.13.0, %bb.ao ], [ %i.en, %bb.cl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !351
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.02.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7244.i.i, i64 40, i1 false), !noalias !351
  store i64 %.sroa.0.0.i.i10, ptr %i.j, align 8, !noalias !351
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %.lcssa.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !351
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %.lcssa137.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !351
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %.lcssa129.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !351
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 %.lcssa137.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !351
  %i.dr = load ptr, ptr %1, align 8, !noalias !425, !noundef !4 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i23.i.i, label %bb.aq, label %bb.as, !prof !163

bb.aq:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #27
          to label %bb.ar unwind label %bb.bc, !noalias !425

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !428, !noalias !425, !noundef !4 ; 2 uses
  %i.du = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringINtNtB6_3vec3VecB1u_EEE13new_uninit_inCsdcPuHeDsw6v_13project_model()
          to label %.noexc.i.i.i.i unwind label %bb.aw, !noalias !431 ; 9 uses

.noexc.i.i.i.i:                                   ; preds = %bb.as
  store ptr null, ptr %i.du, align 8, !noalias !431
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 538 ; 3 uses
  store i16 0, ptr %i.dv, align 2, !noalias !431
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 544 ; 2 uses
  store ptr %i.dr, ptr %i.dw, align 8, !noalias !431
  %i.dx = add i64 %i.dt, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.at, label %bb.ax, !prof !163

bb.at:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
          to label %bb.au unwind label %bb.av, !noalias !431

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.du, i64 noundef 640, i64 noundef 8) #26, !noalias !431
  br label %.body.i.i.i.i

bb.aw:                                            ; preds = %bb.as
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.aw, %bb.av
  tail call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %.noexc.i.i.i.i
  store ptr %i.du, ptr %i.dr, align 8, !noalias !432
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dr, i64 536
  store i16 0, ptr %i.ea, align 8, !noalias !437
  store ptr %i.du, ptr %1, align 8, !alias.scope !428, !noalias !425
  store i64 %i.dx, ptr %i.ds, align 8, !alias.scope !428, !noalias !425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 24, i1 false), !noalias !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !425
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.7244.i.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false), !noalias !351
  %i.ec = icmp eq i64 %.lcssa137.i.i, %i.dt
  br i1 %i.ec, label %bb.ay, label %.invoke.i.i.i.i, !prof !174

.invoke.i.i.i.i:                                  ; preds = %bb.ay, %bb.ax
  %i.ed = phi ptr [ @98, %bb.ax ], [ @96, %bb.ay ]
  %i.ee = phi i64 [ 48, %bb.ax ], [ 32, %bb.ay ]
  %i.ef = phi ptr [ @99, %bb.ax ], [ @100, %bb.ay ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ed, i64 noundef %i.ee, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #27
          to label %.cont.i.i.i.i unwind label %bb.az, !noalias !438

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.eg = load i16, ptr %i.dv, align 2, !noalias !438, !noundef !4 ; 3 uses
  %i.eh = icmp ult i16 %i.eg, 11
  br i1 %i.eh, label %bb.cm, label %.invoke.i.i.i.i, !prof !174

bb.az:                                            ; preds = %.invoke.i.i.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #22
          to label %bb.bb unwind label %bb.ba, !noalias !442

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !425
  unreachable

bb.bb:                                            ; preds = %bb.az
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #22
          to label %.thread unwind label %bb.ba, !noalias !425

bb.bc:                                            ; preds = %bb.aq
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.j) #22
          to label %bb.be unwind label %bb.bd, !noalias !351

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !351
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.em) #22
          to label %.thread unwind label %bb.bd, !noalias !351

bb.bf:                                            ; preds = %.lr.ph.i.i, %bb.cl
  %.sroa.0.1.i.i = phi i64 [ %.sroa.025.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cl ]
  %i.en = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %i.ln, %bb.cl ] ; 18 uses
  %i.eo = phi ptr [ %.sroa.13.0, %.lr.ph.i.i ], [ %i.en, %bb.cl ]
  %i.ep = phi i64 [ 0, %.lr.ph.i.i ], [ %i.er, %bb.cl ]
  %i.eq = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %i.hb, %bb.cl ] ; 2 uses
  %i.er = add nuw i64 %i.ep, 1                    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 536
  %i.et = load i16, ptr %i.es, align 8, !noalias !422 ; 4 uses
  %i.eu = zext i16 %i.et to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !351
  store i64 %.sroa.0.1.i.i, ptr %i.l, align 8, !noalias !351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.i.i, i64 16, i1 false), !noalias !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.24..sroa_idx.i.i, i64 24, i1 false), !noalias !351
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 538 ; 4 uses
  %i.ew = load i16, ptr %i.ev, align 2, !noalias !443, !noundef !4 ; 5 uses
  %i.ex = icmp ult i16 %i.ew, 11
  br i1 %i.ex, label %bb.bh, label %bb.bg

.loopexit45.i.i:                                  ; preds = %bb.bo
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bg:                                            ; preds = %bb.bf
  %i.ey = icmp ult i16 %i.et, 5
  br i1 %i.ey, label %bb.bo, label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.ez = zext nneg i16 %i.ew to i64              ; 4 uses
  %i.fa = add nuw nsw i16 %i.ew, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.fc = add nuw nsw i64 %i.eu, 1                ; 7 uses
  %.not.i.i32.not.i.i = icmp ult i16 %i.et, %i.ew
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.eu ; 3 uses
  br i1 %.not.i.i32.not.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !449
  %i.fe = getelementptr inbounds nuw i8, ptr %i.en, i64 272
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.24..sroa_idx.i.i, i64 24, i1 false), !noalias !351
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.fc
  %i.fh = sub nsw i64 %i.ez, %i.eu                ; 2 uses
  %i.fi = mul nuw nsw i64 %i.fh, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr nonnull align 8 %i.fd, i64 %i.fi, i1 false), !alias.scope !450, !noalias !453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !449
  %i.fj = getelementptr inbounds nuw i8, ptr %i.en, i64 272 ; 2 uses
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.fj, i64 %i.eu ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fj, i64 %i.fc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fl, ptr nonnull align 8 %i.fk, i64 %i.fi, i1 false), !alias.scope !459, !noalias !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.24..sroa_idx.i.i, i64 24, i1 false), !noalias !351
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 544 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fc
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.eu
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = shl nuw nsw i64 %i.fh, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr nonnull align 8 %i.fn, i64 %i.fq, i1 false), !alias.scope !464, !noalias !467
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fr = getelementptr inbounds nuw i8, ptr %i.en, i64 544 ; 6 uses
  %i.fs = add nuw nsw i64 %i.ez, 2                ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fc
  store ptr %i.eq, ptr %i.ft, align 8, !alias.scope !464, !noalias !467
  store i16 %i.fa, ptr %i.ev, align 2, !noalias !467
  %i.fu = icmp samesign ult i64 %i.fc, %i.fs
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i.preheader, label %.thread41.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.bk
  %i.fv = add nuw nsw i64 %i.ez, 1
  %i.fw = sub nsw i64 %i.fv, %i.eu
  %i.fx = sub nsw i64 %i.ez, %i.eu
  %xtraiter413 = and i64 %i.fw, 3                 ; 2 uses
  %lcmp.mod414.not = icmp eq i64 %xtraiter413, 0
  br i1 %lcmp.mod414.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.fy, %.lr.ph.i.i.i.i.i.prol ], [ %i.fc, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter415 = phi i64 [ %prol.iter415.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.fy = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.fz = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.fz)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !467, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.en, ptr %i.gb, align 8, !noalias !467
  %i.gc = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 536
  store i16 %i.gc, ptr %i.gd, align 8, !noalias !467
  %prol.iter415.next = add i64 %prol.iter415, 1   ; 2 uses
  %prol.iter415.cmp.not = icmp eq i64 %prol.iter415.next, %xtraiter413
  br i1 %prol.iter415.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !468

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fy, %.lr.ph.i.i.i.i.i.prol ]
  %i.ge = icmp ult i64 %i.fx, 3
  br i1 %i.ge, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.gu, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.gf = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0.06.i.i.i.i.i
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !467, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.en, ptr %i.gh, align 8, !noalias !467
  %i.gi = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 536
  store i16 %i.gi, ptr %i.gj, align 8, !noalias !467
  %i.gk = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gf
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !467, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.en, ptr %i.gm, align 8, !noalias !467
  %i.gn = trunc nuw nsw i64 %i.gf to i16
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 536
  store i16 %i.gn, ptr %i.go, align 8, !noalias !467
  %i.gp = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gk
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !467, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.en, ptr %i.gr, align 8, !noalias !467
  %i.gs = trunc nuw nsw i64 %i.gk to i16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 536
  store i16 %i.gs, ptr %i.gt, align 8, !noalias !467
  %i.gu = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.gv = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gv)
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gp
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !467, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.en, ptr %i.gx, align 8, !noalias !467
  %i.gy = trunc nuw nsw i64 %i.gp to i16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 536
  store i16 %i.gy, ptr %i.gz, align 8, !noalias !467
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gu, %i.fs
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bg
  switch i16 %i.et, label %bb.bm [
    i16 5, label %bb.bo
    i16 6, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.ha = add nsw i64 %i.eu, -7
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bg
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.bn ], [ 6, %bb.bm ], [ 4, %bb.bg ], [ 5, %bb.bl ] ; 7 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.bn ], [ %i.ha, %bb.bm ], [ %i.eu, %bb.bg ], [ 5, %bb.bl ] ; 9 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.bn ], [ true, %bb.bm ], [ false, %bb.bg ], [ false, %bb.bl ]
  %i.hb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringINtNtB6_3vec3VecB1u_EEE13new_uninit_inCsdcPuHeDsw6v_13project_model()
          to label %.noexc.i29.i.i unwind label %.loopexit45.i.i, !noalias !443 ; 14 uses

.noexc.i29.i.i:                                   ; preds = %bb.bo
  store ptr null, ptr %i.hb, align 8, !noalias !470
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 538 ; 3 uses
  store i16 0, ptr %i.hc, align 2, !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.hd = load i16, ptr %i.ev, align 2, !noalias !477, !noundef !4
  %i.he = zext i16 %i.hd to i64
  %i.hf = xor i64 %.sroa.06.0.i.i.i, -1
  %i.hg = add nsw i64 %i.he, %i.hf                ; 4 uses
  %i.hh = trunc i64 %i.hg to i16
  store i16 %i.hh, ptr %i.hc, align 2, !alias.scope !474, !noalias !479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !477
  %i.hi = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %.sroa.06.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.hj, i64 24, i1 false), !noalias !477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !477
  %i.hk = getelementptr inbounds nuw i8, ptr %i.en, i64 272 ; 2 uses
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.hk, i64 %.sroa.06.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i64 24, i1 false), !noalias !477
  %i.hm = icmp ult i64 %i.hg, 12
  br i1 %i.hm, label %bb.bu, label %bb.bp, !prof !390

bb.bp:                                            ; preds = %.noexc.i29.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hg, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #27
          to label %bb.br unwind label %bb.bq, !noalias !477

bb.bq:                                            ; preds = %bb.bp
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22
          to label %bb.bt unwind label %bb.bs, !noalias !477

bb.br:                                            ; preds = %bb.bp
  unreachable

bb.bs:                                            ; preds = %bb.bt, %bb.bq
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !477
  unreachable

bb.bt:                                            ; preds = %bb.bq
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #22
          to label %bb.cd unwind label %bb.bs, !noalias !477

bb.bu:                                            ; preds = %.noexc.i29.i.i
  %i.hp = add nuw nsw i64 %.sroa.06.0.i.i.i, 1    ; 2 uses
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hs = mul nuw nsw i64 %i.hg, 24               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hr, ptr nonnull readonly align 8 %i.hq, i64 %i.hs, i1 false), !alias.scope !480, !noalias !479
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.hk, i64 %i.hp
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hb, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hu, ptr nonnull readonly align 8 %i.ht, i64 %i.hs, i1 false), !alias.scope !484, !noalias !479
  %i.hv = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.hv, ptr %i.ev, align 2, !noalias !477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !477
  %i.hw = load i16, ptr %i.hc, align 2, !noalias !470, !noundef !4 ; 3 uses
  %i.hx = zext i16 %i.hw to i64
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 5 uses
  %i.hz = icmp ult i16 %i.hw, 12
  br i1 %i.hz, label %bb.bv, label %bb.bx, !prof !390

bb.bv:                                            ; preds = %bb.bu
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hb, i64 544 ; 6 uses
  %i.ib = zext i16 %i.ew to i64
  %i.ic = sub nuw nsw i64 %i.ib, %.sroa.06.0.i.i.i
  %i.id = icmp eq i64 %i.ic, %i.hy
  br i1 %i.id, label %bb.bz, label %bb.bw, !prof !174

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28
          to label %.noexc.i.i30.i.i unwind label %bb.by, !noalias !470

.noexc.i.i30.i.i:                                 ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bu
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
          to label %bb.cb unwind label %bb.by, !noalias !470

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBG_3vec3VecBC_EEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #22
          to label %bb.cd unwind label %bb.cc, !noalias !470

bb.bz:                                            ; preds = %bb.bv
  %i.if = getelementptr i8, ptr %i.en, i64 552
  %i.ig = getelementptr [8 x i8], ptr %i.if, i64 %.sroa.06.0.i.i.i
  %i.ih = shl nuw nsw i64 %i.hy, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ia, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ig, i64 %i.ih, i1 false), !alias.scope !489, !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %xtraiter = and i64 %i.hy, 3                    ; 3 uses
  %i.ii = icmp ult i16 %i.hw, 3
  br i1 %i.ii, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bz
  %unroll_iter = and i64 %i.hy, 28
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.new
  %.sroa.0.09.i.i.i.i.i.i = phi i64 [ 0, %.new ], [ %i.iy, %bb.ca ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.ca ]
  %i.ij = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.sroa.0.09.i.i.i.i.i.i
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !493, !noalias !496, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.hb, ptr %i.il, align 8, !noalias !499
  %i.im = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i to i16
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 536
  store i16 %i.im, ptr %i.in, align 8, !noalias !496
  %i.io = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 2 ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.ij
  %i.iq = load ptr, ptr %i.ip, align 8, !alias.scope !493, !noalias !496, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.hb, ptr %i.iq, align 8, !noalias !499
  %i.ir = trunc nuw nsw i64 %i.ij to i16
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 536
  store i16 %i.ir, ptr %i.is, align 8, !noalias !496
  %i.it = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 3 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.io
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !493, !noalias !496, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.hb, ptr %i.iv, align 8, !noalias !499
  %i.iw = trunc nuw nsw i64 %i.io to i16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 536
  store i16 %i.iw, ptr %i.ix, align 8, !noalias !496
  %i.iy = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i, 4 ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.it
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !493, !noalias !496, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.hb, ptr %i.ja, align 8, !noalias !499
  %i.jb = trunc nuw nsw i64 %i.it to i16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 536
  store i16 %i.jb, ptr %i.jc, align 8, !noalias !496
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.ca

bb.cb:                                            ; preds = %bb.bx
  unreachable

bb.cc:                                            ; preds = %bb.by
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !470
  unreachable

bb.cd:                                            ; preds = %bb.by, %bb.bt
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ie, %bb.by ], [ %i.hn, %bb.bt ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hb, i64 noundef 640, i64 noundef 8) #26, !noalias !470
  br label %bb.cj

.unr-lcssa:                                       ; preds = %bb.ca
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.bz
  %.sroa.0.09.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.bz ], [ %i.iy, %.unr-lcssa ]
  %lcmp.mod410 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod410)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.je, %bb.ce ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ce ]
  %i.je = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil, 1
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.sroa.0.09.i.i.i.i.i.i.epil
  %i.jg = load ptr, ptr %i.jf, align 8, !alias.scope !493, !noalias !496, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.hb, ptr %i.jg, align 8, !noalias !499
  %i.jh = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil to i16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 536
  store i16 %i.jh, ptr %i.ji, align 8, !noalias !496
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ce, !llvm.loop !500

.epilog-lcssa:                                    ; preds = %bb.ce, %.unr-lcssa
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !443 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.4.0..sroa_idx.i.i, i64 40, i1 false), !noalias !443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !470
  %spec.select.i31.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.hb, ptr %i.en ; 11 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 538 ; 2 uses
  %i.jk = load i16, ptr %i.jj, align 2, !noalias !501, !noundef !4 ; 2 uses
  %i.jl = zext i16 %i.jk to i64                   ; 5 uses
  %i.jm = add i16 %i.jk, 1
  %i.jn = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 8 ; 2 uses
  %i.jo = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 7 uses
  %.not.i10.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.jl
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %.sroa.5.0.i.i.i ; 3 uses
  br i1 %.not.i10.not.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.epilog-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !449
  %i.jq = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 272
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.jq, i64 %.sroa.5.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.24..sroa_idx.i.i, i64 24, i1 false), !noalias !351
  br label %bb.ch

bb.cg:                                            ; preds = %.epilog-lcssa
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %i.jo
  %i.jt = sub nuw nsw i64 %i.jl, %.sroa.5.0.i.i.i ; 2 uses
  %i.ju = mul nuw nsw i64 %i.jt, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.js, ptr nonnull align 8 %i.jp, i64 %i.ju, i1 false), !alias.scope !506, !noalias !509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !449
  %i.jv = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 272 ; 2 uses
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.jv, i64 %.sroa.5.0.i.i.i ; 2 uses
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %i.jv, i64 %i.jo
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jx, ptr nonnull align 8 %i.jw, i64 %i.ju, i1 false), !alias.scope !511, !noalias !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.24..sroa_idx.i.i, i64 24, i1 false), !noalias !351
  %i.jy = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 544 ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.jo
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.sroa.5.0.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = shl nuw nsw i64 %i.jt, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kb, ptr nonnull align 8 %i.jz, i64 %i.kc, i1 false), !alias.scope !516, !noalias !501
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.kd = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 544 ; 6 uses
  %i.ke = add nuw nsw i64 %i.jl, 2                ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.jo
  store ptr %i.eq, ptr %i.kf, align 8, !alias.scope !516, !noalias !501
  store i16 %i.jm, ptr %i.jj, align 2, !noalias !501
  %i.kg = icmp samesign ult i64 %i.jo, %i.ke
  br i1 %i.kg, label %.lr.ph.i.i11.i.i.i.preheader, label %.loopexit.i.i

.lr.ph.i.i11.i.i.i.preheader:                     ; preds = %bb.ch
  %i.kh = add nuw nsw i64 %i.jl, 1
  %i.ki = sub nsw i64 %i.kh, %.sroa.5.0.i.i.i
  %i.kj = sub nsw i64 %i.jl, %.sroa.5.0.i.i.i
  %xtraiter411 = and i64 %i.ki, 3                 ; 2 uses
  %lcmp.mod412.not = icmp eq i64 %xtraiter411, 0
  br i1 %lcmp.mod412.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol

.lr.ph.i.i11.i.i.i.prol:                          ; preds = %.lr.ph.i.i11.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.prol = phi i64 [ %i.kk, %.lr.ph.i.i11.i.i.i.prol ], [ %i.jo, %.lr.ph.i.i11.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.preheader ]
  %i.kk = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol, 1 ; 2 uses
  %i.kl = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.kl)
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.sroa.0.06.i.i12.i.i.i.prol
  %i.kn = load ptr, ptr %i.km, align 8, !noalias !501, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.kn, align 8, !noalias !501
  %i.ko = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol to i16
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 536
  store i16 %i.ko, ptr %i.kp, align 8, !noalias !501
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter411
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !llvm.loop !519

.lr.ph.i.i11.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i11.i.i.i.prol, %.lr.ph.i.i11.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.unr = phi i64 [ %i.jo, %.lr.ph.i.i11.i.i.i.preheader ], [ %i.kk, %.lr.ph.i.i11.i.i.i.prol ]
  %i.kq = icmp ult i64 %i.kj, 3
  br i1 %i.kq, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i
  %.sroa.0.06.i.i12.i.i.i = phi i64 [ %i.lg, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.unr, %.lr.ph.i.i11.i.i.i.prol.loopexit ] ; 7 uses
  %i.kr = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 1 ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.sroa.0.06.i.i12.i.i.i
  %i.kt = load ptr, ptr %i.ks, align 8, !noalias !501, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.kt, align 8, !noalias !501
  %i.ku = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 536
  store i16 %i.ku, ptr %i.kv, align 8, !noalias !501
  %i.kw = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 2 ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kr
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !501, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.ky, align 8, !noalias !501
  %i.kz = trunc nuw nsw i64 %i.kr to i16
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 536
  store i16 %i.kz, ptr %i.la, align 8, !noalias !501
  %i.lb = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 3 ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kw
  %i.ld = load ptr, ptr %i.lc, align 8, !noalias !501, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.ld, align 8, !noalias !501
  %i.le = trunc nuw nsw i64 %i.kw to i16
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 536
  store i16 %i.le, ptr %i.lf, align 8, !noalias !501
  %i.lg = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 4 ; 2 uses
  %i.lh = icmp ult i64 %.sroa.0.06.i.i12.i.i.i, 9
  tail call void @llvm.assume(i1 %i.lh)
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.lb
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !501, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.lj, align 8, !noalias !501
  %i.lk = trunc nuw nsw i64 %i.lb to i16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 536
  store i16 %i.lk, ptr %i.ll, align 8, !noalias !501
  %exitcond.not.i.i13.i.i.i.3 = icmp eq i64 %i.lg, %i.ke
  br i1 %exitcond.not.i.i13.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

bb.ci:                                            ; preds = %bb.ck, %bb.cj
  %i.lm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !520
  unreachable

bb.cj:                                            ; preds = %bb.cd, %.loopexit45.i.i
  %.pn.ph.i27.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.cd ], [ %lpad.loopexit.i.i, %.loopexit45.i.i ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #22
          to label %bb.ck unwind label %bb.ci, !noalias !521

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #22
          to label %.thread unwind label %bb.ci, !noalias !520

.thread41.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !351
  br label %.loopexit46.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i, %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.718.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.4.i.i, i64 40, i1 false), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !351
  %.not16.i.i = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i.i, -1
  br i1 %.not16.i.i, label %.loopexit46.i.i, label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7244.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.718.i.i, i64 40, i1 false), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  %i.ln = load ptr, ptr %i.en, align 8, !noalias !422, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.bf

.loopexit46.i.i:                                  ; preds = %.loopexit.i.i, %.thread41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7244.i.i)
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ay
  %i.lo = zext nneg i16 %i.eg to i64              ; 3 uses
  %i.lp = add nuw nsw i16 %i.eg, 1
  store i16 %i.lp, ptr %i.dv, align 2, !noalias !438
end_hunk_0
begin_hunk_1_@_RNvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB17_EE6insertCsdcPuHeDsw6v_13project_model:bb.a
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %.sroa.510.0.i.i.i
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.db
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr nonnull align 8 %i.dg, i64 %i.de, i1 false), !alias.scope !613, !noalias !615
  br label %bb.an

bb.ak:                                            ; preds = %bb.am, %bb.al
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !616
  unreachable

.thread.i.i:                                      ; preds = %bb.w, %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 272
  %i.dk = add nuw nsw i16 %i.bm, 1
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %.sroa.17.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !617, !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i16 %i.dk, ptr %i.bl, align 2, !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !552
  br label %bb.ap

bb.al:                                            ; preds = %bb.ag, %.thread.i.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.cm, %.thread.i.i.i.i ], [ %i.co, %bb.ag ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #22
          to label %bb.am unwind label %bb.ak, !noalias !619

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #22
          to label %.thread unwind label %bb.ak, !noalias !616

bb.an:                                            ; preds = %bb.aj, %bb.ai
  %i.dm = getelementptr inbounds nuw i8, ptr %spec.select32.i.i.i, i64 272
  %i.dn = add i16 %i.cx, 1
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %.sroa.510.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !620, !noalias !599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %i.dn, ptr %i.cw, align 2, !noalias !599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.426.i.i, i64 40, i1 false), !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !552
  %.not.i.i = icmp eq i64 %.sroa.025.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7244.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7244.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i, i64 40, i1 false), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.dp = load ptr, ptr %.sroa.13.0, align 8, !noalias !622, !noundef !4 ; 2 uses
  %.not.i145.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i145.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7244.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7244.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7244.i.i, i64 16 ; 5 uses
  br label %bb.bf

bb.ap:                                            ; preds = %bb.an, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.cq

._crit_edge.i.i:                                  ; preds = %bb.cl, %bb.ao
  %.sroa.0.0.i.i10 = phi i64 [ %.sroa.025.0.copyload.i.i, %bb.ao ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cl ]
  %.lcssa137.i.i = phi i64 [ 0, %bb.ao ], [ %i.er, %bb.cl ] ; 3 uses
  %.lcssa129.i.i = phi ptr [ %i.ca, %bb.ao ], [ %i.hb, %bb.cl ] ; 4 uses
  %.lcssa.i.i = phi ptr [ %.sroa.13.0, %bb.ao ], [ %i.en, %bb.cl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !552
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.02.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7244.i.i, i64 40, i1 false), !noalias !552
  store i64 %.sroa.0.0.i.i10, ptr %i.j, align 8, !noalias !552
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %.lcssa.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !552
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %.lcssa137.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !552
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %.lcssa129.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !552
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 %.lcssa137.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !552
  %i.dr = load ptr, ptr %1, align 8, !noalias !625, !noundef !4 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i23.i.i, label %bb.aq, label %bb.as, !prof !163

bb.aq:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #27
          to label %bb.ar unwind label %bb.bc, !noalias !625

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !628, !noalias !625, !noundef !4 ; 2 uses
  %i.du = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB1u_EEE13new_uninit_inCsdcPuHeDsw6v_13project_model()
          to label %.noexc.i.i.i.i unwind label %bb.aw, !noalias !631 ; 9 uses

.noexc.i.i.i.i:                                   ; preds = %bb.as
  store ptr null, ptr %i.du, align 8, !noalias !631
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 538 ; 3 uses
  store i16 0, ptr %i.dv, align 2, !noalias !631
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 544 ; 2 uses
  store ptr %i.dr, ptr %i.dw, align 8, !noalias !631
  %i.dx = add i64 %i.dt, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.at, label %bb.ax, !prof !163

bb.at:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
          to label %bb.au unwind label %bb.av, !noalias !631

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.du, i64 noundef 640, i64 noundef 8) #26, !noalias !631
  br label %.body.i.i.i.i

bb.aw:                                            ; preds = %bb.as
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.aw, %bb.av
  tail call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %.noexc.i.i.i.i
  store ptr %i.du, ptr %i.dr, align 8, !noalias !632
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dr, i64 536
  store i16 0, ptr %i.ea, align 8, !noalias !637
  store ptr %i.du, ptr %1, align 8, !alias.scope !628, !noalias !625
  store i64 %i.dx, ptr %i.ds, align 8, !alias.scope !628, !noalias !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 24, i1 false), !noalias !552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !625
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.7244.i.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false), !noalias !552
  %i.ec = icmp eq i64 %.lcssa137.i.i, %i.dt
  br i1 %i.ec, label %bb.ay, label %.invoke.i.i.i.i, !prof !174

.invoke.i.i.i.i:                                  ; preds = %bb.ay, %bb.ax
  %i.ed = phi ptr [ @98, %bb.ax ], [ @96, %bb.ay ]
  %i.ee = phi i64 [ 48, %bb.ax ], [ 32, %bb.ay ]
  %i.ef = phi ptr [ @99, %bb.ax ], [ @100, %bb.ay ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ed, i64 noundef %i.ee, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #27
          to label %.cont.i.i.i.i unwind label %bb.az, !noalias !638

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.eg = load i16, ptr %i.dv, align 2, !noalias !638, !noundef !4 ; 3 uses
  %i.eh = icmp ult i16 %i.eg, 11
  br i1 %i.eh, label %bb.cm, label %.invoke.i.i.i.i, !prof !174

bb.az:                                            ; preds = %.invoke.i.i.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #22
          to label %bb.bb unwind label %bb.ba, !noalias !642

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !625
  unreachable

bb.bb:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #22
          to label %.thread unwind label %bb.ba, !noalias !625

bb.bc:                                            ; preds = %bb.aq
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.j) #22
          to label %bb.be unwind label %bb.bd, !noalias !552

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !552
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.em) #22
          to label %.thread unwind label %bb.bd, !noalias !552

bb.bf:                                            ; preds = %.lr.ph.i.i, %bb.cl
  %.sroa.0.1.i.i = phi i64 [ %.sroa.025.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cl ]
  %i.en = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %i.ln, %bb.cl ] ; 18 uses
  %i.eo = phi ptr [ %.sroa.13.0, %.lr.ph.i.i ], [ %i.en, %bb.cl ]
  %i.ep = phi i64 [ 0, %.lr.ph.i.i ], [ %i.er, %bb.cl ]
  %i.eq = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %i.hb, %bb.cl ] ; 2 uses
  %i.er = add nuw i64 %i.ep, 1                    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 536
  %i.et = load i16, ptr %i.es, align 8, !noalias !622 ; 4 uses
  %i.eu = zext i16 %i.et to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !552
  store i64 %.sroa.0.1.i.i, ptr %i.l, align 8, !noalias !552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.i.i, i64 16, i1 false), !noalias !552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.24..sroa_idx.i.i, i64 24, i1 false), !noalias !552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 538 ; 4 uses
  %i.ew = load i16, ptr %i.ev, align 2, !noalias !643, !noundef !4 ; 5 uses
  %i.ex = icmp ult i16 %i.ew, 11
  br i1 %i.ex, label %bb.bh, label %bb.bg

.loopexit45.i.i:                                  ; preds = %bb.bo
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bg:                                            ; preds = %bb.bf
  %i.ey = icmp ult i16 %i.et, 5
  br i1 %i.ey, label %bb.bo, label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.ez = zext nneg i16 %i.ew to i64              ; 4 uses
  %i.fa = add nuw nsw i16 %i.ew, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.fc = add nuw nsw i64 %i.eu, 1                ; 7 uses
  %.not.i.i32.not.i.i = icmp ult i16 %i.et, %i.ew
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.eu ; 3 uses
  br i1 %.not.i.i32.not.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !649
  %i.fe = getelementptr inbounds nuw i8, ptr %i.en, i64 272
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.24..sroa_idx.i.i, i64 24, i1 false), !noalias !552
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.fc
  %i.fh = sub nsw i64 %i.ez, %i.eu                ; 2 uses
  %i.fi = mul nuw nsw i64 %i.fh, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr nonnull align 8 %i.fd, i64 %i.fi, i1 false), !alias.scope !650, !noalias !653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !649
  %i.fj = getelementptr inbounds nuw i8, ptr %i.en, i64 272 ; 2 uses
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.fj, i64 %i.eu ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fj, i64 %i.fc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fl, ptr nonnull align 8 %i.fk, i64 %i.fi, i1 false), !alias.scope !659, !noalias !662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.24..sroa_idx.i.i, i64 24, i1 false), !noalias !552
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 544 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fc
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.eu
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = shl nuw nsw i64 %i.fh, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr nonnull align 8 %i.fn, i64 %i.fq, i1 false), !alias.scope !664, !noalias !667
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fr = getelementptr inbounds nuw i8, ptr %i.en, i64 544 ; 6 uses
  %i.fs = add nuw nsw i64 %i.ez, 2                ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fc
  store ptr %i.eq, ptr %i.ft, align 8, !alias.scope !664, !noalias !667
  store i16 %i.fa, ptr %i.ev, align 2, !noalias !667
  %i.fu = icmp samesign ult i64 %i.fc, %i.fs
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i.preheader, label %.thread41.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.bk
  %i.fv = add nuw nsw i64 %i.ez, 1
  %i.fw = sub nsw i64 %i.fv, %i.eu
  %i.fx = sub nsw i64 %i.ez, %i.eu
  %xtraiter413 = and i64 %i.fw, 3                 ; 2 uses
  %lcmp.mod414.not = icmp eq i64 %xtraiter413, 0
  br i1 %lcmp.mod414.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.fy, %.lr.ph.i.i.i.i.i.prol ], [ %i.fc, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter415 = phi i64 [ %prol.iter415.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.fy = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.fz = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.fz)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !667, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.en, ptr %i.gb, align 8, !noalias !667
  %i.gc = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 536
  store i16 %i.gc, ptr %i.gd, align 8, !noalias !667
  %prol.iter415.next = add i64 %prol.iter415, 1   ; 2 uses
  %prol.iter415.cmp.not = icmp eq i64 %prol.iter415.next, %xtraiter413
  br i1 %prol.iter415.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !668

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fy, %.lr.ph.i.i.i.i.i.prol ]
  %i.ge = icmp ult i64 %i.fx, 3
  br i1 %i.ge, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.gu, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.gf = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0.06.i.i.i.i.i
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !667, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.en, ptr %i.gh, align 8, !noalias !667
  %i.gi = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 536
  store i16 %i.gi, ptr %i.gj, align 8, !noalias !667
  %i.gk = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gf
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !667, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.en, ptr %i.gm, align 8, !noalias !667
  %i.gn = trunc nuw nsw i64 %i.gf to i16
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 536
  store i16 %i.gn, ptr %i.go, align 8, !noalias !667
  %i.gp = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gk
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !667, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.en, ptr %i.gr, align 8, !noalias !667
  %i.gs = trunc nuw nsw i64 %i.gk to i16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 536
  store i16 %i.gs, ptr %i.gt, align 8, !noalias !667
  %i.gu = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.gv = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gv)
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gp
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !667, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.en, ptr %i.gx, align 8, !noalias !667
  %i.gy = trunc nuw nsw i64 %i.gp to i16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 536
  store i16 %i.gy, ptr %i.gz, align 8, !noalias !667
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gu, %i.fs
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bg
  switch i16 %i.et, label %bb.bm [
    i16 5, label %bb.bo
    i16 6, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.ha = add nsw i64 %i.eu, -7
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bg
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.bn ], [ 6, %bb.bm ], [ 4, %bb.bg ], [ 5, %bb.bl ] ; 7 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.bn ], [ %i.ha, %bb.bm ], [ %i.eu, %bb.bg ], [ 5, %bb.bl ] ; 9 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.bn ], [ true, %bb.bm ], [ false, %bb.bg ], [ false, %bb.bl ]
  %i.hb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB1u_EEE13new_uninit_inCsdcPuHeDsw6v_13project_model()
          to label %.noexc.i29.i.i unwind label %.loopexit45.i.i, !noalias !643 ; 14 uses

.noexc.i29.i.i:                                   ; preds = %bb.bo
  store ptr null, ptr %i.hb, align 8, !noalias !669
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 538 ; 3 uses
  store i16 0, ptr %i.hc, align 2, !noalias !669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !669
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.hd = load i16, ptr %i.ev, align 2, !noalias !676, !noundef !4
  %i.he = zext i16 %i.hd to i64
  %i.hf = xor i64 %.sroa.06.0.i.i.i, -1
  %i.hg = add nsw i64 %i.he, %i.hf                ; 4 uses
  %i.hh = trunc i64 %i.hg to i16
  store i16 %i.hh, ptr %i.hc, align 2, !alias.scope !673, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !676
  %i.hi = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %.sroa.06.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.hj, i64 24, i1 false), !noalias !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !676
  %i.hk = getelementptr inbounds nuw i8, ptr %i.en, i64 272 ; 2 uses
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.hk, i64 %.sroa.06.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i64 24, i1 false), !noalias !676
  %i.hm = icmp ult i64 %i.hg, 12
  br i1 %i.hm, label %bb.bu, label %bb.bp, !prof !390

bb.bp:                                            ; preds = %.noexc.i29.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hg, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #27
          to label %bb.br unwind label %bb.bq, !noalias !676

bb.bq:                                            ; preds = %bb.bp
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #22
          to label %bb.bt unwind label %bb.bs, !noalias !676

bb.br:                                            ; preds = %bb.bp
  unreachable

bb.bs:                                            ; preds = %bb.bt, %bb.bq
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !676
  unreachable

bb.bt:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.cd unwind label %bb.bs, !noalias !676

bb.bu:                                            ; preds = %.noexc.i29.i.i
  %i.hp = add nuw nsw i64 %.sroa.06.0.i.i.i, 1    ; 2 uses
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hs = mul nuw nsw i64 %i.hg, 24               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hr, ptr nonnull readonly align 8 %i.hq, i64 %i.hs, i1 false), !alias.scope !679, !noalias !678
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.hk, i64 %i.hp
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hb, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hu, ptr nonnull readonly align 8 %i.ht, i64 %i.hs, i1 false), !alias.scope !683, !noalias !678
  %i.hv = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.hv, ptr %i.ev, align 2, !noalias !676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !676
  %i.hw = load i16, ptr %i.hc, align 2, !noalias !669, !noundef !4 ; 3 uses
  %i.hx = zext i16 %i.hw to i64
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 5 uses
  %i.hz = icmp ult i16 %i.hw, 12
  br i1 %i.hz, label %bb.bv, label %bb.bx, !prof !390

bb.bv:                                            ; preds = %bb.bu
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hb, i64 544 ; 6 uses
  %i.ib = zext i16 %i.ew to i64
  %i.ic = sub nuw nsw i64 %i.ib, %.sroa.06.0.i.i.i
  %i.id = icmp eq i64 %i.ic, %i.hy
  br i1 %i.id, label %bb.bz, label %bb.bw, !prof !174

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28
          to label %.noexc.i.i30.i.i unwind label %bb.by, !noalias !669

.noexc.i.i30.i.i:                                 ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bu
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hy, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
          to label %bb.cb unwind label %bb.by, !noalias !669

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtB4_6option6OptionBC_EEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #22
          to label %bb.cd unwind label %bb.cc, !noalias !669

bb.bz:                                            ; preds = %bb.bv
  %i.if = getelementptr i8, ptr %i.en, i64 552
  %i.ig = getelementptr [8 x i8], ptr %i.if, i64 %.sroa.06.0.i.i.i
  %i.ih = shl nuw nsw i64 %i.hy, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ia, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ig, i64 %i.ih, i1 false), !alias.scope !688, !noalias !669
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %xtraiter = and i64 %i.hy, 3                    ; 3 uses
  %i.ii = icmp ult i16 %i.hw, 3
  br i1 %i.ii, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bz
  %unroll_iter = and i64 %i.hy, 28
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.new
  %.sroa.0.09.i.i.i.i.i.i = phi i64 [ 0, %.new ], [ %i.iy, %bb.ca ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.ca ]
  %i.ij = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.sroa.0.09.i.i.i.i.i.i
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !692, !noalias !695, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.hb, ptr %i.il, align 8, !noalias !698
  %i.im = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i to i16
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 536
  store i16 %i.im, ptr %i.in, align 8, !noalias !695
  %i.io = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 2 ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.ij
  %i.iq = load ptr, ptr %i.ip, align 8, !alias.scope !692, !noalias !695, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.hb, ptr %i.iq, align 8, !noalias !698
  %i.ir = trunc nuw nsw i64 %i.ij to i16
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 536
  store i16 %i.ir, ptr %i.is, align 8, !noalias !695
  %i.it = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 3 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.io
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !692, !noalias !695, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.hb, ptr %i.iv, align 8, !noalias !698
  %i.iw = trunc nuw nsw i64 %i.io to i16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 536
  store i16 %i.iw, ptr %i.ix, align 8, !noalias !695
  %i.iy = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i, 4 ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.it
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !692, !noalias !695, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.hb, ptr %i.ja, align 8, !noalias !698
  %i.jb = trunc nuw nsw i64 %i.it to i16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 536
  store i16 %i.jb, ptr %i.jc, align 8, !noalias !695
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.ca

bb.cb:                                            ; preds = %bb.bx
  unreachable

bb.cc:                                            ; preds = %bb.by
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !669
  unreachable

bb.cd:                                            ; preds = %bb.by, %bb.bt
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ie, %bb.by ], [ %i.hn, %bb.bt ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hb, i64 noundef 640, i64 noundef 8) #26, !noalias !669
  br label %bb.cj

.unr-lcssa:                                       ; preds = %bb.ca
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.bz
  %.sroa.0.09.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.bz ], [ %i.iy, %.unr-lcssa ]
  %lcmp.mod410 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod410)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.je, %bb.ce ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ce ]
  %i.je = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil, 1
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.sroa.0.09.i.i.i.i.i.i.epil
  %i.jg = load ptr, ptr %i.jf, align 8, !alias.scope !692, !noalias !695, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.hb, ptr %i.jg, align 8, !noalias !698
  %i.jh = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil to i16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 536
  store i16 %i.jh, ptr %i.ji, align 8, !noalias !695
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ce, !llvm.loop !699

.epilog-lcssa:                                    ; preds = %bb.ce, %.unr-lcssa
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !643 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.4.0..sroa_idx.i.i, i64 40, i1 false), !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !669
  %spec.select.i31.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.hb, ptr %i.en ; 11 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 538 ; 2 uses
  %i.jk = load i16, ptr %i.jj, align 2, !noalias !700, !noundef !4 ; 2 uses
  %i.jl = zext i16 %i.jk to i64                   ; 5 uses
  %i.jm = add i16 %i.jk, 1
  %i.jn = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 8 ; 2 uses
  %i.jo = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 7 uses
  %.not.i10.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.jl
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %.sroa.5.0.i.i.i ; 3 uses
  br i1 %.not.i10.not.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.epilog-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !649
  %i.jq = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 272
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.jq, i64 %.sroa.5.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.24..sroa_idx.i.i, i64 24, i1 false), !noalias !552
  br label %bb.ch

bb.cg:                                            ; preds = %.epilog-lcssa
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %i.jo
  %i.jt = sub nuw nsw i64 %i.jl, %.sroa.5.0.i.i.i ; 2 uses
  %i.ju = mul nuw nsw i64 %i.jt, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.js, ptr nonnull align 8 %i.jp, i64 %i.ju, i1 false), !alias.scope !705, !noalias !708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !649
  %i.jv = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 272 ; 2 uses
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.jv, i64 %.sroa.5.0.i.i.i ; 2 uses
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %i.jv, i64 %i.jo
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jx, ptr nonnull align 8 %i.jw, i64 %i.ju, i1 false), !alias.scope !710, !noalias !713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.24..sroa_idx.i.i, i64 24, i1 false), !noalias !552
  %i.jy = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 544 ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.jo
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.sroa.5.0.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = shl nuw nsw i64 %i.jt, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kb, ptr nonnull align 8 %i.jz, i64 %i.kc, i1 false), !alias.scope !715, !noalias !700
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.kd = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 544 ; 6 uses
  %i.ke = add nuw nsw i64 %i.jl, 2                ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.jo
  store ptr %i.eq, ptr %i.kf, align 8, !alias.scope !715, !noalias !700
  store i16 %i.jm, ptr %i.jj, align 2, !noalias !700
  %i.kg = icmp samesign ult i64 %i.jo, %i.ke
  br i1 %i.kg, label %.lr.ph.i.i11.i.i.i.preheader, label %.loopexit.i.i

.lr.ph.i.i11.i.i.i.preheader:                     ; preds = %bb.ch
  %i.kh = add nuw nsw i64 %i.jl, 1
  %i.ki = sub nsw i64 %i.kh, %.sroa.5.0.i.i.i
  %i.kj = sub nsw i64 %i.jl, %.sroa.5.0.i.i.i
  %xtraiter411 = and i64 %i.ki, 3                 ; 2 uses
  %lcmp.mod412.not = icmp eq i64 %xtraiter411, 0
  br i1 %lcmp.mod412.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol

.lr.ph.i.i11.i.i.i.prol:                          ; preds = %.lr.ph.i.i11.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.prol = phi i64 [ %i.kk, %.lr.ph.i.i11.i.i.i.prol ], [ %i.jo, %.lr.ph.i.i11.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.preheader ]
  %i.kk = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol, 1 ; 2 uses
  %i.kl = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.kl)
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.sroa.0.06.i.i12.i.i.i.prol
  %i.kn = load ptr, ptr %i.km, align 8, !noalias !700, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.kn, align 8, !noalias !700
  %i.ko = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol to i16
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 536
  store i16 %i.ko, ptr %i.kp, align 8, !noalias !700
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter411
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !llvm.loop !718

.lr.ph.i.i11.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i11.i.i.i.prol, %.lr.ph.i.i11.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.unr = phi i64 [ %i.jo, %.lr.ph.i.i11.i.i.i.preheader ], [ %i.kk, %.lr.ph.i.i11.i.i.i.prol ]
  %i.kq = icmp ult i64 %i.kj, 3
  br i1 %i.kq, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i
  %.sroa.0.06.i.i12.i.i.i = phi i64 [ %i.lg, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.unr, %.lr.ph.i.i11.i.i.i.prol.loopexit ] ; 7 uses
  %i.kr = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 1 ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.sroa.0.06.i.i12.i.i.i
  %i.kt = load ptr, ptr %i.ks, align 8, !noalias !700, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.kt, align 8, !noalias !700
  %i.ku = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 536
  store i16 %i.ku, ptr %i.kv, align 8, !noalias !700
  %i.kw = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 2 ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kr
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !700, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.ky, align 8, !noalias !700
  %i.kz = trunc nuw nsw i64 %i.kr to i16
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 536
  store i16 %i.kz, ptr %i.la, align 8, !noalias !700
  %i.lb = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 3 ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kw
  %i.ld = load ptr, ptr %i.lc, align 8, !noalias !700, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.ld, align 8, !noalias !700
  %i.le = trunc nuw nsw i64 %i.kw to i16
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 536
  store i16 %i.le, ptr %i.lf, align 8, !noalias !700
  %i.lg = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 4 ; 2 uses
  %i.lh = icmp ult i64 %.sroa.0.06.i.i12.i.i.i, 9
  tail call void @llvm.assume(i1 %i.lh)
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.lb
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !700, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.lj, align 8, !noalias !700
  %i.lk = trunc nuw nsw i64 %i.lb to i16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 536
  store i16 %i.lk, ptr %i.ll, align 8, !noalias !700
  %exitcond.not.i.i13.i.i.i.3 = icmp eq i64 %i.lg, %i.ke
  br i1 %exitcond.not.i.i13.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

bb.ci:                                            ; preds = %bb.ck, %bb.cj
  %i.lm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !719
  unreachable

bb.cj:                                            ; preds = %bb.cd, %.loopexit45.i.i
  %.pn.ph.i27.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.cd ], [ %lpad.loopexit.i.i, %.loopexit45.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #22
          to label %bb.ck unwind label %bb.ci, !noalias !720

bb.ck:                                            ; preds = %bb.cj
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #22
          to label %.thread unwind label %bb.ci, !noalias !719

.thread41.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !552
  br label %.loopexit46.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i, %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.718.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.4.i.i, i64 40, i1 false), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !552
  %.not16.i.i = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i.i, -1
  br i1 %.not16.i.i, label %.loopexit46.i.i, label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7244.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.718.i.i, i64 40, i1 false), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  %i.ln = load ptr, ptr %i.en, align 8, !noalias !622, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.bf

.loopexit46.i.i:                                  ; preds = %.loopexit.i.i, %.thread41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7244.i.i)
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ay
  %i.lo = zext nneg i16 %i.eg to i64              ; 3 uses
  %i.lp = add nuw nsw i16 %i.eg, 1
  store i16 %i.lp, ptr %i.dv, align 2, !noalias !638
end_hunk_1
