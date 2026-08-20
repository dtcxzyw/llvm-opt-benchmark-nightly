inline.NumInlined: 341
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsc61CYD6Y1ak_10serde_json5value5ValueE6insertCsjRvGck33osM_6diesel:bb.a
  %i.dh = shl nuw nsw i64 %i.dd, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr nonnull align 8 %i.df, i64 %i.dh, i1 false), !alias.scope !343, !noalias !345
  br label %bb.an

bb.ak:                                            ; preds = %bb.am, %bb.al
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21, !noalias !346
  unreachable

.thread.i.i:                                      ; preds = %bb.w, %bb.v
  %i.dj = add nuw nsw i16 %i.bm, 1
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %.sroa.13.0, i64 %.sroa.17.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dk, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !347, !noalias !348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i16 %i.dj, ptr %i.bl, align 2, !noalias !348
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !281
  br label %bb.ap

bb.al:                                            ; preds = %bb.ag, %.thread.i.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.cm, %.thread.i.i.i.i ], [ %i.co, %bb.ag ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5value5ValueECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #23
          to label %bb.am unwind label %bb.ak, !noalias !349

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #23
          to label %.thread unwind label %bb.ak, !noalias !346

bb.an:                                            ; preds = %bb.aj, %bb.ai
  %i.dl = add i16 %i.cx, 1
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i.i.i, i64 %.sroa.510.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !350, !noalias !329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %i.dl, ptr %i.cw, align 2, !noalias !329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.426.i.i, i64 48, i1 false), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !281
  %.not.i.i = icmp eq i64 %.sroa.025.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7244.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7244.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i, i64 48, i1 false), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 352
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !352, !noundef !3 ; 2 uses
  %.not.i145.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i145.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7244.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7244.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7244.i.i, i64 16 ; 5 uses
  br label %bb.bf

bb.ap:                                            ; preds = %bb.an, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.cq

._crit_edge.i.i:                                  ; preds = %bb.cl, %bb.ao
  %.sroa.0.0.i.i10 = phi i64 [ %.sroa.025.0.copyload.i.i, %bb.ao ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cl ]
  %.lcssa137.i.i = phi i64 [ 0, %bb.ao ], [ %i.es, %bb.cl ] ; 3 uses
  %.lcssa129.i.i = phi ptr [ %i.ca, %bb.ao ], [ %i.hg, %bb.cl ] ; 4 uses
  %.lcssa.i.i = phi ptr [ %.sroa.13.0, %bb.ao ], [ %i.eo, %bb.cl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !281
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7244.i.i, i64 48, i1 false), !noalias !281
  store i64 %.sroa.0.0.i.i10, ptr %i.j, align 8, !noalias !281
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %.lcssa.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !281
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 %.lcssa137.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !281
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %.lcssa129.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !281
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %.lcssa137.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !281
  %i.dq = load ptr, ptr %1, align 8, !noalias !355, !noundef !3 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i23.i.i, label %bb.aq, label %bb.as, !prof !100

bb.aq:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24
          to label %bb.ar unwind label %bb.bc, !noalias !355

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !358, !noalias !355, !noundef !3 ; 2 uses
  %i.dt = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsc61CYD6Y1ak_10serde_json5value5ValueEE13new_uninit_inCsjRvGck33osM_6diesel()
          to label %.noexc.i.i.i.i unwind label %bb.aw, !noalias !361 ; 9 uses

.noexc.i.i.i.i:                                   ; preds = %bb.as
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 352
  store ptr null, ptr %i.du, align 8, !noalias !361
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 626 ; 3 uses
  store i16 0, ptr %i.dv, align 2, !noalias !361
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 632 ; 2 uses
  store ptr %i.dq, ptr %i.dw, align 8, !noalias !361
  %i.dx = add i64 %i.ds, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.at, label %bb.ax, !prof !100

bb.at:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.au unwind label %bb.av, !noalias !361

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef 728, i64 noundef 8) #22, !noalias !361
  br label %.body.i.i.i.i

bb.aw:                                            ; preds = %bb.as
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.aw, %bb.av
  tail call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %.noexc.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 352
  store ptr %i.dt, ptr %i.ea, align 8, !noalias !362
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 624
  store i16 0, ptr %i.eb, align 8, !noalias !367
  store ptr %i.dt, ptr %1, align 8, !alias.scope !358, !noalias !355
  store i64 %i.dx, ptr %i.dr, align 8, !alias.scope !358, !noalias !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false), !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !355
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.7244.i.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.ec, i64 32, i1 false), !noalias !281
  %i.ed = icmp eq i64 %.lcssa137.i.i, %i.ds
  br i1 %i.ed, label %bb.ay, label %.invoke.i.i.i.i, !prof !278

.invoke.i.i.i.i:                                  ; preds = %bb.ay, %bb.ax
  %i.ee = phi ptr [ @25, %bb.ax ], [ @23, %bb.ay ]
  %i.ef = phi i64 [ 48, %bb.ax ], [ 32, %bb.ay ]
  %i.eg = phi ptr [ @26, %bb.ax ], [ @27, %bb.ay ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg) #24
          to label %.cont.i.i.i.i unwind label %bb.az, !noalias !368

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.eh = load i16, ptr %i.dv, align 2, !noalias !368, !noundef !3 ; 3 uses
  %i.ei = icmp ult i16 %i.eh, 11
  br i1 %i.ei, label %bb.cm, label %.invoke.i.i.i.i, !prof !278

bb.az:                                            ; preds = %.invoke.i.i.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5value5ValueECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #23
          to label %bb.bb unwind label %bb.ba, !noalias !372

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21, !noalias !355
  unreachable

bb.bb:                                            ; preds = %bb.az
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #23
          to label %.thread unwind label %bb.ba, !noalias !355

bb.bc:                                            ; preds = %bb.aq
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.j) #23
          to label %bb.be unwind label %bb.bd, !noalias !281

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21, !noalias !281
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5value5ValueECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(32) %i.en) #23
          to label %.thread unwind label %bb.bd, !noalias !281

bb.bf:                                            ; preds = %.lr.ph.i.i, %bb.cl
  %.sroa.0.1.i.i = phi i64 [ %.sroa.025.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cl ]
  %i.eo = phi ptr [ %i.do, %.lr.ph.i.i ], [ %i.lf, %bb.cl ] ; 20 uses
  %i.ep = phi ptr [ %.sroa.13.0, %.lr.ph.i.i ], [ %i.eo, %bb.cl ]
  %i.eq = phi i64 [ 0, %.lr.ph.i.i ], [ %i.es, %bb.cl ]
  %i.er = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %i.hg, %bb.cl ] ; 2 uses
  %i.es = add i64 %i.eq, 1                        ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 624
  %i.eu = load i16, ptr %i.et, align 8, !noalias !352 ; 4 uses
  %i.ev = zext i16 %i.eu to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !281
  store i64 %.sroa.0.1.i.i, ptr %i.l, align 8, !noalias !281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.i.i, i64 16, i1 false), !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.24..sroa_idx.i.i, i64 32, i1 false), !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 626 ; 4 uses
  %i.ex = load i16, ptr %i.ew, align 2, !noalias !373, !noundef !3 ; 5 uses
  %i.ey = icmp ult i16 %i.ex, 11
  br i1 %i.ey, label %bb.bh, label %bb.bg

.loopexit45.i.i:                                  ; preds = %bb.bo
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bg:                                            ; preds = %bb.bf
  %i.ez = icmp ult i16 %i.eu, 5
  br i1 %i.ez, label %bb.bo, label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.fa = zext nneg i16 %i.ex to i64              ; 4 uses
  %i.fb = add nuw nsw i16 %i.ex, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 360 ; 2 uses
  %i.fd = add nuw nsw i64 %i.ev, 1                ; 7 uses
  %.not.i.i32.not.i.i = icmp ult i16 %i.eu, %i.ex
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.ev ; 3 uses
  br i1 %.not.i.i32.not.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !379
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.24..sroa_idx.i.i, i64 32, i1 false), !noalias !281
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.fd
  %i.fh = sub nsw i64 %i.fa, %i.ev                ; 3 uses
  %i.fi = mul nsw i64 %i.fh, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr nonnull align 8 %i.fe, i64 %i.fi, i1 false), !alias.scope !380, !noalias !383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !379
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %i.ev ; 2 uses
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %i.fd
  %i.fl = shl nsw i64 %i.fh, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fk, ptr nonnull align 8 %i.fj, i64 %i.fl, i1 false), !alias.scope !389, !noalias !392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.24..sroa_idx.i.i, i64 32, i1 false), !noalias !281
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eo, i64 632 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fd
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ev
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = shl nsw i64 %i.fh, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr nonnull align 8 %i.fn, i64 %i.fq, i1 false), !alias.scope !394, !noalias !397
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eo, i64 632 ; 6 uses
  %i.fs = add nuw nsw i64 %i.fa, 2                ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fd
  store ptr %i.er, ptr %i.ft, align 8, !alias.scope !394, !noalias !397
  store i16 %i.fb, ptr %i.ew, align 2, !noalias !397
  %i.fu = icmp samesign ult i64 %i.fd, %i.fs
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i.preheader, label %.thread41.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.bk
  %i.fv = add nuw nsw i64 %i.fa, 1
  %i.fw = sub nsw i64 %i.fv, %i.ev
  %i.fx = sub nsw i64 %i.fa, %i.ev
  %xtraiter410 = and i64 %i.fw, 3                 ; 2 uses
  %lcmp.mod411.not = icmp eq i64 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.fy, %.lr.ph.i.i.i.i.i.prol ], [ %i.fd, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter412 = phi i64 [ %prol.iter412.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.fy = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.fz = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.fz)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !397, !nonnull !3, !noundef !3 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  store ptr %i.eo, ptr %i.gc, align 8, !noalias !397
  %i.gd = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 624
  store i16 %i.gd, ptr %i.ge, align 8, !noalias !397
  %prol.iter412.next = add i64 %prol.iter412, 1   ; 2 uses
  %prol.iter412.cmp.not = icmp eq i64 %prol.iter412.next, %xtraiter410
  br i1 %prol.iter412.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !398

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.fd, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fy, %.lr.ph.i.i.i.i.i.prol ]
  %i.gf = icmp ult i64 %i.fx, 3
  br i1 %i.gf, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.gy, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.gg = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0.06.i.i.i.i.i
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !397, !nonnull !3, !noundef !3 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 352
  store ptr %i.eo, ptr %i.gj, align 8, !noalias !397
  %i.gk = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 624
  store i16 %i.gk, ptr %i.gl, align 8, !noalias !397
  %i.gm = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gg
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !397, !nonnull !3, !noundef !3 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 352
  store ptr %i.eo, ptr %i.gp, align 8, !noalias !397
  %i.gq = trunc nuw nsw i64 %i.gg to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 624
  store i16 %i.gq, ptr %i.gr, align 8, !noalias !397
  %i.gs = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gm
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !397, !nonnull !3, !noundef !3 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 352
  store ptr %i.eo, ptr %i.gv, align 8, !noalias !397
  %i.gw = trunc nuw nsw i64 %i.gm to i16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 624
  store i16 %i.gw, ptr %i.gx, align 8, !noalias !397
  %i.gy = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.gz = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gz)
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gs
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !397, !nonnull !3, !noundef !3 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 352
  store ptr %i.eo, ptr %i.hc, align 8, !noalias !397
  %i.hd = trunc nuw nsw i64 %i.gs to i16
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 624
  store i16 %i.hd, ptr %i.he, align 8, !noalias !397
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gy, %i.fs
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bg
  switch i16 %i.eu, label %bb.bm [
    i16 5, label %bb.bo
    i16 6, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.hf = add nsw i64 %i.ev, -7
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bg
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.bn ], [ 6, %bb.bm ], [ 4, %bb.bg ], [ 5, %bb.bl ] ; 7 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.bn ], [ %i.hf, %bb.bm ], [ %i.ev, %bb.bg ], [ 5, %bb.bl ] ; 9 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.bn ], [ true, %bb.bm ], [ false, %bb.bg ], [ false, %bb.bl ]
  %i.hg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsc61CYD6Y1ak_10serde_json5value5ValueEE13new_uninit_inCsjRvGck33osM_6diesel()
          to label %.noexc.i29.i.i unwind label %.loopexit45.i.i, !noalias !373 ; 10 uses

.noexc.i29.i.i:                                   ; preds = %bb.bo
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 352
  store ptr null, ptr %i.hh, align 8, !noalias !400
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 626 ; 3 uses
  store i16 0, ptr %i.hi, align 2, !noalias !400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.hj = load i16, ptr %i.ew, align 2, !noalias !407, !noundef !3
  %i.hk = zext i16 %i.hj to i64
  %i.hl = xor i64 %.sroa.06.0.i.i.i, -1
  %i.hm = add nsw i64 %i.hk, %i.hl                ; 5 uses
  %i.hn = trunc i64 %i.hm to i16
  store i16 %i.hn, ptr %i.hi, align 2, !alias.scope !404, !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !407
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eo, i64 360 ; 2 uses
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.ho, i64 %.sroa.06.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.hp, i64 24, i1 false), !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !407
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %.sroa.06.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.hq, i64 32, i1 false), !noalias !407
  %i.hr = icmp ult i64 %i.hm, 12
  br i1 %i.hr, label %bb.bu, label %bb.bp, !prof !320

bb.bp:                                            ; preds = %.noexc.i29.i.i
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hm, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #24
          to label %bb.br unwind label %bb.bq, !noalias !407

bb.bq:                                            ; preds = %bb.bp
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5value5ValueECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(32) %i.a) #23
          to label %bb.bt unwind label %bb.bs, !noalias !407

bb.br:                                            ; preds = %bb.bp
  unreachable

bb.bs:                                            ; preds = %bb.bt, %bb.bq
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21, !noalias !407
  unreachable

bb.bt:                                            ; preds = %bb.bq
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #23
          to label %bb.cd unwind label %bb.bs, !noalias !407

bb.bu:                                            ; preds = %.noexc.i29.i.i
  %i.hu = add nuw nsw i64 %.sroa.06.0.i.i.i, 1    ; 2 uses
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %i.ho, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hg, i64 360
  %i.hx = mul nuw nsw i64 %i.hm, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hw, ptr nonnull readonly align 8 %i.hv, i64 %i.hx, i1 false), !alias.scope !410, !noalias !409
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %i.hu
  %i.hz = shl nuw nsw i64 %i.hm, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.hg, ptr nonnull readonly align 8 %i.hy, i64 %i.hz, i1 false), !alias.scope !414, !noalias !409
  %i.ia = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.ia, ptr %i.ew, align 2, !noalias !407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !407
  %i.ib = load i16, ptr %i.hi, align 2, !noalias !400, !noundef !3 ; 2 uses
  %i.ic = zext i16 %i.ib to i64                   ; 3 uses
  %i.id = add nuw nsw i64 %i.ic, 1                ; 3 uses
  %i.ie = icmp ult i16 %i.ib, 12
  br i1 %i.ie, label %bb.bv, label %bb.bx, !prof !320

bb.bv:                                            ; preds = %bb.bu
  %i.if = getelementptr inbounds nuw i8, ptr %i.hg, i64 632 ; 2 uses
  %i.ig = zext i16 %i.ex to i64
  %i.ih = sub nuw nsw i64 %i.ig, %.sroa.06.0.i.i.i
  %i.ii = icmp eq i64 %i.ih, %i.id
  br i1 %i.ii, label %bb.bz, label %bb.bw, !prof !278

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
          to label %.noexc.i.i30.i.i unwind label %bb.by, !noalias !400

.noexc.i.i30.i.i:                                 ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bu
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.id, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24
          to label %bb.cb unwind label %bb.by, !noalias !400

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsc61CYD6Y1ak_10serde_json5value5ValueEECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(56) %i.c) #23
          to label %bb.cd unwind label %bb.cc, !noalias !400

bb.bz:                                            ; preds = %bb.bv
  %i.ik = getelementptr i8, ptr %i.eo, i64 640
  %i.il = getelementptr [8 x i8], ptr %i.ik, i64 %.sroa.06.0.i.i.i
  %i.im = shl nuw nsw i64 %i.id, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.if, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.il, i64 %i.im, i1 false), !alias.scope !419, !noalias !400
  %4 = icmp ne i64 %i.es, 0
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.0.013.i.i.i.i.i.i = phi i64 [ 0, %bb.bz ], [ %spec.select10.i.i.i.i.i.i, %bb.ca ] ; 5 uses
  %i.in = icmp samesign uge i64 %.sroa.0.013.i.i.i.i.i.i, %i.ic ; 2 uses
  %not..i.i.i.i.i.i = xor i1 %i.in, true
  %i.io = zext i1 %not..i.i.i.i.i.i to i64
  %spec.select10.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i, %i.io ; 2 uses
  %i.ip = icmp samesign ult i64 %.sroa.0.013.i.i.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.sroa.0.013.i.i.i.i.i.i
  %i.ir = load ptr, ptr %i.iq, align 8, !alias.scope !423, !noalias !426, !nonnull !3, !noundef !3 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 352
  store ptr %i.hg, ptr %i.is, align 8, !noalias !429
  %i.it = trunc nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i to i16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 624
  store i16 %i.it, ptr %i.iu, align 8, !noalias !426
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %spec.select10.i.i.i.i.i.i, %i.ic
  %or.cond.i.i.i.i.i.i = select i1 %i.in, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ce, label %bb.ca

bb.cb:                                            ; preds = %bb.bx
  unreachable

bb.cc:                                            ; preds = %bb.by
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21, !noalias !400
  unreachable

bb.cd:                                            ; preds = %bb.by, %bb.bt
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ij, %bb.by ], [ %i.hs, %bb.bt ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hg, i64 noundef 728, i64 noundef 8) #22, !noalias !400
  br label %bb.cj

bb.ce:                                            ; preds = %bb.ca
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !373 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4.0..sroa_idx.i.i, i64 48, i1 false), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !400
  %spec.select.i31.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.hg, ptr %i.eo ; 12 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 626 ; 2 uses
  %i.ix = load i16, ptr %i.iw, align 2, !noalias !430, !noundef !3 ; 2 uses
  %i.iy = zext i16 %i.ix to i64                   ; 5 uses
  %i.iz = add i16 %i.ix, 1
  %i.ja = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 360 ; 2 uses
  %i.jb = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 7 uses
  %.not.i10.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.iy
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %i.ja, i64 %.sroa.5.0.i.i.i ; 3 uses
  br i1 %.not.i10.not.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !379
  %i.jd = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31.i.i, i64 %.sroa.5.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jd, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.24..sroa_idx.i.i, i64 32, i1 false), !noalias !281
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.je = getelementptr inbounds nuw [24 x i8], ptr %i.ja, i64 %i.jb
  %i.jf = sub nuw nsw i64 %i.iy, %.sroa.5.0.i.i.i ; 3 uses
  %i.jg = mul nuw nsw i64 %i.jf, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.je, ptr nonnull align 8 %i.jc, i64 %i.jg, i1 false), !alias.scope !435, !noalias !438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !379
  %i.jh = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31.i.i, i64 %.sroa.5.0.i.i.i ; 2 uses
  %i.ji = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31.i.i, i64 %i.jb
  %i.jj = shl nuw nsw i64 %i.jf, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ji, ptr nonnull align 8 %i.jh, i64 %i.jj, i1 false), !alias.scope !440, !noalias !443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jh, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.24..sroa_idx.i.i, i64 32, i1 false), !noalias !281
  %i.jk = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 632 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jb
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %.sroa.5.0.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = shl nuw nsw i64 %i.jf, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jn, ptr nonnull align 8 %i.jl, i64 %i.jo, i1 false), !alias.scope !445, !noalias !430
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.jp = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 632 ; 6 uses
  %i.jq = add nuw nsw i64 %i.iy, 2                ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jb
  store ptr %i.er, ptr %i.jr, align 8, !alias.scope !445, !noalias !430
  store i16 %i.iz, ptr %i.iw, align 2, !noalias !430
  %i.js = icmp samesign ult i64 %i.jb, %i.jq
  br i1 %i.js, label %.lr.ph.i.i11.i.i.i.preheader, label %.loopexit.i.i

.lr.ph.i.i11.i.i.i.preheader:                     ; preds = %bb.ch
  %i.jt = add nuw nsw i64 %i.iy, 1
  %i.ju = sub nsw i64 %i.jt, %.sroa.5.0.i.i.i
  %i.jv = sub nsw i64 %i.iy, %.sroa.5.0.i.i.i
  %xtraiter = and i64 %i.ju, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol

.lr.ph.i.i11.i.i.i.prol:                          ; preds = %.lr.ph.i.i11.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.prol = phi i64 [ %i.jw, %.lr.ph.i.i11.i.i.i.prol ], [ %i.jb, %.lr.ph.i.i11.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.preheader ]
  %i.jw = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol, 1 ; 2 uses
  %i.jx = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.jx)
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.sroa.0.06.i.i12.i.i.i.prol
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !430, !nonnull !3, !noundef !3 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 352
  store ptr %spec.select.i31.i.i, ptr %i.ka, align 8, !noalias !430
  %i.kb = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 624
  store i16 %i.kb, ptr %i.kc, align 8, !noalias !430
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !llvm.loop !448

.lr.ph.i.i11.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i11.i.i.i.prol, %.lr.ph.i.i11.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.unr = phi i64 [ %i.jb, %.lr.ph.i.i11.i.i.i.preheader ], [ %i.jw, %.lr.ph.i.i11.i.i.i.prol ]
  %i.kd = icmp ult i64 %i.jv, 3
  br i1 %i.kd, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i
  %.sroa.0.06.i.i12.i.i.i = phi i64 [ %i.kw, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.unr, %.lr.ph.i.i11.i.i.i.prol.loopexit ] ; 7 uses
  %i.ke = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 1 ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.sroa.0.06.i.i12.i.i.i
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !430, !nonnull !3, !noundef !3 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 352
  store ptr %spec.select.i31.i.i, ptr %i.kh, align 8, !noalias !430
  %i.ki = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i to i16
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 624
  store i16 %i.ki, ptr %i.kj, align 8, !noalias !430
  %i.kk = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 2 ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.ke
  %i.km = load ptr, ptr %i.kl, align 8, !noalias !430, !nonnull !3, !noundef !3 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 352
  store ptr %spec.select.i31.i.i, ptr %i.kn, align 8, !noalias !430
  %i.ko = trunc nuw nsw i64 %i.ke to i16
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 624
  store i16 %i.ko, ptr %i.kp, align 8, !noalias !430
  %i.kq = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 3 ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.kk
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !430, !nonnull !3, !noundef !3 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 352
  store ptr %spec.select.i31.i.i, ptr %i.kt, align 8, !noalias !430
  %i.ku = trunc nuw nsw i64 %i.kk to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 624
  store i16 %i.ku, ptr %i.kv, align 8, !noalias !430
  %i.kw = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 4 ; 2 uses
  %i.kx = icmp ult i64 %.sroa.0.06.i.i12.i.i.i, 9
  tail call void @llvm.assume(i1 %i.kx)
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.kq
  %i.kz = load ptr, ptr %i.ky, align 8, !noalias !430, !nonnull !3, !noundef !3 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 352
  store ptr %spec.select.i31.i.i, ptr %i.la, align 8, !noalias !430
  %i.lb = trunc nuw nsw i64 %i.kq to i16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 624
  store i16 %i.lb, ptr %i.lc, align 8, !noalias !430
  %exitcond.not.i.i13.i.i.i.3 = icmp eq i64 %i.kw, %i.jq
  br i1 %exitcond.not.i.i13.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

bb.ci:                                            ; preds = %bb.ck, %bb.cj
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21, !noalias !449
  unreachable

bb.cj:                                            ; preds = %bb.cd, %.loopexit45.i.i
  %.pn.ph.i27.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.cd ], [ %lpad.loopexit.i.i, %.loopexit45.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5value5ValueECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k) #23
          to label %bb.ck unwind label %bb.ci, !noalias !450

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #23
          to label %.thread unwind label %bb.ci, !noalias !449

.thread41.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !281
  br label %.loopexit46.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i, %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4.i.i, i64 48, i1 false), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !281
  %.not16.i.i = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i.i, -1
  br i1 %.not16.i.i, label %.loopexit46.i.i, label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7244.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.i.i, i64 48, i1 false), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  %i.le = getelementptr inbounds nuw i8, ptr %i.eo, i64 352
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !352, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.bf

.loopexit46.i.i:                                  ; preds = %.loopexit.i.i, %.thread41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7244.i.i)
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ay
  %i.lg = zext nneg i16 %i.eh to i64              ; 3 uses
  %i.lh = add nuw nsw i16 %i.eh, 1
  store i16 %i.lh, ptr %i.dv, align 2, !noalias !368
end_hunk_0
