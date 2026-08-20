inline.NumInlined: 77
inline.NumDeleted: 37
begin_hunk_0_@vmstate_save_vmsd_v:bb.a
  br i1 %.not5.i.i, label %vmstate_field_exists.exit, label %.split207

.split207:                                        ; preds = %bb.w
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, ptr noundef %i.ak, ptr noundef %i.al, i32 noundef %i.an, i32 noundef %4, i32 noundef range(i32 0, 2) %i.ao) #11
  br i1 %i.aj, label %bb.x, label %bb.by

.split206:                                        ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %.0144242, i64 80
  %i.au = load i32, ptr %i.at, align 8
  %.not227 = icmp sgt i32 %i.au, %4
  br i1 %.not227, label %bb.by, label %bb.x

vmstate_field_exists.exit:                        ; preds = %bb.u, %bb.v, %bb.w
  br i1 %i.aj, label %bb.x, label %bb.by

bb.x:                                             ; preds = %.split207, %.split206, %vmstate_field_exists.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.0144242, i64 8
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0144242, i64 64 ; 6 uses
  %i.az = load i32, ptr %i.ay, align 8            ; 8 uses
  %i.ba = and i32 %i.az, 4
  %.not.i184 = icmp eq i32 %i.ba, 0
  br i1 %.not.i184, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %.0144242, i64 40
  %i.bc = load i32, ptr %i.bb, align 8
  br label %bb.ah

bb.z:                                             ; preds = %bb.x
  %i.bd = and i32 %i.az, 16
  %.not16.i = icmp eq i32 %i.bd, 0
  br i1 %.not16.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = getelementptr inbounds nuw i8, ptr %.0144242, i64 48
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4
  br label %bb.ah

bb.ab:                                            ; preds = %bb.z
  %i.bi = and i32 %i.az, 2048
  %.not17.i = icmp eq i32 %i.bi, 0
  br i1 %.not17.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bj = getelementptr inbounds nuw i8, ptr %.0144242, i64 48
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.bn = and i32 %i.az, 128
  %.not18.i = icmp eq i32 %i.bn, 0
  br i1 %.not18.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = getelementptr inbounds nuw i8, ptr %.0144242, i64 48
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = zext i16 %i.br to i32
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.bt = and i32 %i.az, 1024
  %.not19.i = icmp eq i32 %i.bt, 0
  br i1 %.not19.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bu = getelementptr inbounds nuw i8, ptr %.0144242, i64 48
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.aa, %bb.y
  %.0.i = phi i32 [ %i.bc, %bb.y ], [ %i.bh, %bb.aa ], [ %i.bm, %bb.ac ], [ %i.bs, %bb.ae ], [ %i.by, %bb.ag ], [ 1, %bb.af ] ; 7 uses
  %i.bz = load ptr, ptr %.0144242, align 8
  %i.ca = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i185 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i185, label %vmstate_n_elems.exit, label %bb.ai, !prof !7

bb.ai:                                            ; preds = %bb.ah
  %i.cb = load i16, ptr @_TRACE_VMSTATE_N_ELEMS_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not1.i.i, label %vmstate_n_elems.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cc = load i32, ptr @qemu_loglevel, align 4
  %i.cd = and i32 %i.cc, 32768
  %.not2.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not2.i.i, label %vmstate_n_elems.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16, ptr noundef %i.bz, i32 noundef %.0.i) #11
  %.pre = load i32, ptr %i.ay, align 8
  br label %vmstate_n_elems.exit

vmstate_n_elems.exit:                             ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %i.ce = phi i32 [ %i.az, %bb.ah ], [ %i.az, %bb.ai ], [ %i.az, %bb.aj ], [ %.pre, %bb.ak ] ; 7 uses
  %i.cf = and i32 %i.ce, 256
  %.not.i186 = icmp eq i32 %i.cf, 0
  br i1 %.not.i186, label %bb.an, label %bb.al

bb.al:                                            ; preds = %vmstate_n_elems.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %.0144242, i64 24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = and i32 %i.ce, 512
  %.not9.i = icmp eq i32 %i.ck, 0
  br i1 %.not9.i, label %vmstate_size.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cl = getelementptr inbounds nuw i8, ptr %.0144242, i64 16
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = trunc i64 %i.cm to i32
  %i.co = mul i32 %i.cj, %i.cn
  br label %vmstate_size.exit

bb.an:                                            ; preds = %vmstate_n_elems.exit
  %i.cp = and i32 %i.ce, 64
  %.not8.i = icmp eq i32 %i.cp, 0
  br i1 %.not8.i, label %bb.ao, label %vmstate_size.exit

bb.ao:                                            ; preds = %bb.an
  %i.cq = getelementptr inbounds nuw i8, ptr %.0144242, i64 16
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = trunc i64 %i.cr to i32
  br label %vmstate_size.exit

vmstate_size.exit:                                ; preds = %bb.al, %bb.am, %bb.an, %bb.ao
  %.0.i187 = phi i32 [ %i.co, %bb.am ], [ %i.cj, %bb.al ], [ %i.cs, %bb.ao ], [ 8, %bb.an ] ; 4 uses
  %i.ct = and i32 %i.ce, 65536
  %i.cu = icmp ne i32 %i.ct, 0                    ; 3 uses
  %i.cv = load ptr, ptr %1, align 8
  %i.cw = load ptr, ptr %.0144242, align 8
  %i.cx = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i188 = icmp eq i32 %i.cx, 0
  br i1 %.not.i188, label %trace_vmstate_save_state_loop.exit, label %bb.ap, !prof !7

bb.ap:                                            ; preds = %vmstate_size.exit
  %i.cy = load i16, ptr @_TRACE_VMSTATE_SAVE_STATE_LOOP_DSTATE, align 2
  %.not2.i189 = icmp eq i16 %i.cy, 0
  br i1 %.not2.i189, label %trace_vmstate_save_state_loop.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cz = load i32, ptr @qemu_loglevel, align 4
  %i.da = and i32 %i.cz, 32768
  %.not3.i = icmp eq i32 %i.da, 0
  br i1 %.not3.i, label %trace_vmstate_save_state_loop.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.38, ptr noundef %i.cv, ptr noundef %i.cw, i32 noundef %.0.i) #11
  %.pre259 = load i32, ptr %i.ay, align 8
  br label %trace_vmstate_save_state_loop.exit

trace_vmstate_save_state_loop.exit:               ; preds = %vmstate_size.exit, %bb.ap, %bb.aq, %bb.ar
  %i.db = phi i32 [ %i.ce, %vmstate_size.exit ], [ %i.ce, %bb.ap ], [ %i.ce, %bb.aq ], [ %.pre259, %bb.ar ]
  %i.dc = and i32 %i.db, 2
  %.not164 = icmp eq i32 %i.dc, 0
  br i1 %.not164, label %bb.au, label %bb.as

bb.as:                                            ; preds = %trace_vmstate_save_state_loop.exit
  %i.dd = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  %i.df = icmp ne i32 %.0.i, 0
  %or.cond4 = select i1 %i.de, i1 %i.df, i1 false
  %i.dg = icmp ne i32 %.0.i187, 0
  %or.cond6 = select i1 %or.cond4, i1 %i.dg, i1 false
  br i1 %or.cond6, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 667, ptr noundef nonnull @__PRETTY_FUNCTION__.vmstate_save_vmsd_v) #13
  unreachable

bb.au:                                            ; preds = %bb.as, %trace_vmstate_save_state_loop.exit
  %.0140 = phi ptr [ %i.dd, %bb.as ], [ %i.ax, %trace_vmstate_save_state_loop.exit ] ; 3 uses
  %i.dh = icmp sgt i32 %.0.i, 0
  br i1 %i.dh, label %.lr.ph, label %.thread224

.lr.ph:                                           ; preds = %bb.au
  %.not166 = icmp eq ptr %.0140, null
  %i.di = getelementptr inbounds nuw i8, ptr %.0144242, i64 80
  %i.dj = sext i32 %.0.i187 to i64                ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0144242, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %.0144242, i64 72 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0144242, i64 84
  %i.dn = getelementptr inbounds nuw i8, ptr %.0144242, i64 56
  %i.do = add nsw i32 %.0.i, -1
  %wide.trip.count257 = zext nneg i32 %.0.i to i64
  %wide.trip.count = zext nneg i32 %i.do to i64   ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph, %vmstate_save_field_with_vmdesc.exit191.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %vmstate_save_field_with_vmdesc.exit191.thread ] ; 4 uses
  %.0134240 = phi i1 [ false, %.lr.ph ], [ %.1135, %vmstate_save_field_with_vmdesc.exit191.thread ] ; 3 uses
  %.0136239 = phi ptr [ %3, %.lr.ph ], [ %spec.store.select, %vmstate_save_field_with_vmdesc.exit191.thread ] ; 2 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv to i32    ; 5 uses
  %i.dq = mul i32 %.0.i187, %i.dp
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %.0140, i64 %i.dr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, i8 0, i64 96, i1 false), !annotation !16
  %i.dt = call fastcc zeroext i1 @vmsd_can_compress(ptr noundef nonnull %.0144242)
  %i.du = sub i32 %.0.i, %i.dp                    ; 4 uses
  %i.dv = select i1 %i.dt, i32 %i.du, i32 1       ; 2 uses
  %i.dw = load i32, ptr %i.ay, align 8
  %i.dx = and i32 %i.dw, 64                       ; 2 uses
  %.not165 = icmp eq i32 %i.dx, 0
  br i1 %.not165, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %.not166, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str, i32 noundef 679, ptr noundef nonnull @__PRETTY_FUNCTION__.vmstate_save_vmsd_v) #13
  unreachable

bb.ay:                                            ; preds = %bb.av
  br i1 %i.cu, label %bb.az, label %bb.ba

.thread:                                          ; preds = %bb.aw
  %i.dy = load ptr, ptr %i.ds, align 8            ; 3 uses
  %.not167 = icmp eq ptr %i.dy, null              ; 2 uses
  %i.dz = select i1 %i.cu, i1 true, i1 %.not167
  br i1 %i.dz, label %vmsd_init_ptr_marker_field.exit, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @__assert_fail(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str, i32 noundef 66, ptr noundef nonnull @__PRETTY_FUNCTION__.vmsd_init_ptr_marker_field) #13
  unreachable

vmsd_init_ptr_marker_field.exit:                  ; preds = %.thread
  %i.ea = load ptr, ptr %.0144242, align 8
  %i.eb = load i32, ptr %i.di, align 8
  store ptr %i.ea, ptr %7, align 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i64 1, ptr %.sroa.3.0..sroa_idx.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, i8 0, i64 32, i1 false)
  store ptr @vmstate_info_ptr_marker, ptr %.sroa.9.0..sroa_idx.i, align 8
  store i32 1, ptr %.sroa.10.0..sroa_idx.i, align 8
  store i32 0, ptr %.sroa.11.0..sroa_idx.i, align 4
  store ptr null, ptr %.sroa.12.0..sroa_idx.i, align 8
  store i32 %i.eb, ptr %.sroa.13.0..sroa_idx.i, align 8
  store i32 0, ptr %.sroa.14.0..sroa_idx.i, align 4
  store ptr null, ptr %.sroa.15.0..sroa_idx.i, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %.thread, %bb.ay, %vmsd_init_ptr_marker_field.exit
  %.0130212 = phi i1 [ %.not167, %vmsd_init_ptr_marker_field.exit ], [ false, %bb.ay ], [ false, %.thread ] ; 5 uses
  %.0133210 = phi ptr [ %i.dy, %vmsd_init_ptr_marker_field.exit ], [ %i.ds, %bb.ay ], [ %i.dy, %.thread ] ; 9 uses
  %.0132 = phi ptr [ %7, %vmsd_init_ptr_marker_field.exit ], [ %.0144242, %bb.ay ], [ %.0144242, %.thread ] ; 9 uses
  %i.ec = icmp sgt i32 %i.dv, 1
  %or.cond8 = select i1 %i.ad, i1 %i.ec, i1 false
  br i1 %or.cond8, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %bb.ba
  %.not168 = icmp ne i32 %i.dx, 0
  %i.ed = xor i1 %.0134240, %.0130212
  %or.cond174 = select i1 %.not168, i1 %i.ed, i1 false
  br i1 %or.cond174, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.bb
  %exitcond.not276 = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not276, label %.loopexit, label %.lr.ph278

.preheader:                                       ; preds = %.lr.ph278
  %exitcond.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph278, !llvm.loop !25

.lr.ph278:                                        ; preds = %.preheader.preheader, %.preheader
  %indvars.iv254277 = phi i64 [ %indvars.iv.next255, %.preheader ], [ %indvars.iv, %.preheader.preheader ]
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254277, 1 ; 3 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv.next255 to i32 ; 2 uses
  %i.ef = mul i32 %.0.i187, %i.ee
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %.0140, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = icmp ne ptr %i.ei, null
  %.not171 = xor i1 %.0130212, %i.ej
  br i1 %.not171, label %.preheader, label %.loopexit.split.loop.exit235, !llvm.loop !25

.loopexit.split.loop.exit235:                     ; preds = %.lr.ph278
  %i.ek = sub nuw nsw i32 %i.ee, %i.dp
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %.loopexit.split.loop.exit235, %bb.bb, %bb.ba
  %.1137 = phi ptr [ %.0136239, %bb.bb ], [ %.0136239, %bb.ba ], [ %3, %.loopexit.split.loop.exit235 ], [ %3, %.preheader.preheader ], [ %3, %.preheader ] ; 18 uses
  %.1135 = phi i1 [ %.0134240, %bb.bb ], [ %.0134240, %bb.ba ], [ %.0130212, %.loopexit.split.loop.exit235 ], [ %.0130212, %.preheader.preheader ], [ %.0130212, %.preheader ]
  %.3 = phi i32 [ %i.du, %bb.bb ], [ %i.dv, %bb.ba ], [ %i.ek, %.loopexit.split.loop.exit235 ], [ %i.du, %.preheader.preheader ], [ %i.du, %.preheader ] ; 3 uses
  call fastcc void @vmsd_desc_field_start(ptr noundef nonnull %1, ptr noundef %.1137, ptr noundef nonnull %.0132, i32 noundef %i.dp, i32 noundef %.3), !inline_history !26
  %i.el = call i64 @qemu_file_transferred(ptr noundef %0) #11, !inline_history !26
  %i.em = getelementptr inbounds nuw i8, ptr %.0132, i64 64 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8            ; 2 uses
  %i.eo = and i32 %i.en, 8
  %.not.i193 = icmp eq i32 %i.eo, 0
  br i1 %.not.i193, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.loopexit
  %i.ep = getelementptr inbounds nuw i8, ptr %.0132, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.es = load i32, ptr %i.er, align 4
  %i.et = call fastcc zeroext i1 @vmstate_save_vmsd_v(ptr noundef %0, ptr noundef %i.eq, ptr noundef %.0133210, ptr noundef %.1137, i32 noundef %i.es, ptr noundef nonnull %spec.select), !inline_history !27
  br label %vmstate_save_field.exit

bb.bd:                                            ; preds = %.loopexit
  %i.eu = and i32 %i.en, 32768
  %.not28.i = icmp eq i32 %i.eu, 0
  br i1 %.not28.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %.0132, i64 72
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.0132, i64 84
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = call fastcc zeroext i1 @vmstate_save_vmsd_v(ptr noundef %0, ptr noundef %i.ew, ptr noundef %.0133210, ptr noundef %.1137, i32 noundef %i.ey, ptr noundef nonnull %spec.select), !inline_history !28
  br label %vmstate_save_field.exit

bb.bf:                                            ; preds = %bb.bd
  %i.fa = getelementptr inbounds nuw i8, ptr %.0132, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32 ; 2 uses
  %i.fd = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.fc, ptr nonnull @.str.20, ptr nonnull @.str.21, i32 56, ptr null)
  %i.fe = load ptr, ptr %i.fd, align 8
  %.not29.i = icmp eq ptr %i.fe, null
  br i1 %.not29.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ff = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.fc, ptr nonnull @.str.20, ptr nonnull @.str.21, i32 56, ptr null)
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = call zeroext i1 %i.fg(ptr noundef %0, ptr noundef %.0133210, i64 noundef %i.dj, ptr noundef nonnull %.0132, ptr noundef %.1137, ptr noundef nonnull %spec.select) #11, !inline_history !28
  br label %vmstate_save_field.exit

bb.bh:                                            ; preds = %bb.bf
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fj = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.fi, ptr nonnull @.str.20, ptr nonnull @.str.21, i32 50, ptr null)
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = call i32 %i.fk(ptr noundef %0, ptr noundef %.0133210, i64 noundef %i.dj, ptr noundef nonnull %.0132, ptr noundef %.1137) #11, !inline_history !28
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %bb.bi, label %vmstate_save_field.exit

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str, i32 noundef 591, ptr noundef nonnull @__func__.vmstate_save_field, ptr noundef nonnull @.str.49) #11, !inline_history !28
  br label %vmstate_save_field.exit

vmstate_save_field.exit:                          ; preds = %bb.bc, %bb.be, %bb.bg, %bb.bh, %bb.bi
  %.0.i194 = phi i1 [ %i.et, %bb.bc ], [ %i.ez, %bb.be ], [ %i.fh, %bb.bg ], [ false, %bb.bi ], [ true, %bb.bh ]
  %i.fn = call i64 @qemu_file_transferred(ptr noundef %0) #11, !inline_history !26
  %i.fo = sub i64 %i.fn, %i.el
  %.not.i192 = icmp eq ptr %.1137, null           ; 2 uses
  br i1 %.not.i192, label %vmsd_desc_field_end.exit, label %bb.bj

bb.bj:                                            ; preds = %vmstate_save_field.exit
  %i.fp = load i32, ptr %i.em, align 8
  %i.fq = and i32 %i.fp, 8
  %.not5.i = icmp eq i32 %i.fq, 0
  br i1 %.not5.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @json_writer_end_object(ptr noundef nonnull %.1137) #11
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @json_writer_int64(ptr noundef nonnull %.1137, ptr noundef nonnull @.str.50, i64 noundef %i.fo) #11
  call void @json_writer_end_object(ptr noundef nonnull %.1137) #11
  br label %vmsd_desc_field_end.exit

vmsd_desc_field_end.exit:                         ; preds = %vmstate_save_field.exit, %bb.bl
  br i1 %.0.i194, label %bb.bm, label %vmstate_save_field_with_vmdesc.exit

bb.bm:                                            ; preds = %vmsd_desc_field_end.exit
  %i.fr = icmp ne ptr %.0133210, null
  %or.cond10 = select i1 %i.cu, i1 %i.fr, i1 false
  br i1 %or.cond10, label %bb.bn, label %vmstate_save_field_with_vmdesc.exit191.thread

bb.bn:                                            ; preds = %bb.bm
  %i.fs = load i64, ptr %i.dk, align 8            ; 2 uses
  call fastcc void @vmsd_desc_field_start(ptr noundef nonnull %1, ptr noundef %.1137, ptr noundef nonnull %.0144242, i32 noundef %i.dp, i32 noundef %.3), !inline_history !26
  %i.ft = call i64 @qemu_file_transferred(ptr noundef %0) #11, !inline_history !26
  %i.fu = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.fv = and i32 %i.fu, 8
  %.not.i198 = icmp eq i32 %i.fv, 0
  br i1 %.not.i198, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fw = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = call fastcc zeroext i1 @vmstate_save_vmsd_v(ptr noundef %0, ptr noundef %i.fw, ptr noundef nonnull %.0133210, ptr noundef %.1137, i32 noundef %i.fy, ptr noundef nonnull %spec.select), !inline_history !27
  br label %vmstate_save_field.exit202

bb.bp:                                            ; preds = %bb.bn
  %i.ga = and i32 %i.fu, 32768
  %.not28.i200 = icmp eq i32 %i.ga, 0
  br i1 %.not28.i200, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gb = load ptr, ptr %i.dl, align 8
  %i.gc = load i32, ptr %i.dm, align 4
  %i.gd = call fastcc zeroext i1 @vmstate_save_vmsd_v(ptr noundef %0, ptr noundef %i.gb, ptr noundef nonnull %.0133210, ptr noundef %.1137, i32 noundef %i.gc, ptr noundef nonnull %spec.select), !inline_history !28
  br label %vmstate_save_field.exit202

bb.br:                                            ; preds = %bb.bp
  %i.ge = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32 ; 2 uses
end_hunk_0
