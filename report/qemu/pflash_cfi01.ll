Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pflash_cfi01?download=true
inline.NumInlined: 111
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pflash_mem_read_with_attrs:bb.a
  br i1 %.not.i97.i, label %pflash_read.exit, label %bb.m, !prof !8

bb.m:                                             ; preds = %.loopexit.i
  %i.ao = load i16, ptr @_TRACE_PFLASH_READ_STATUS_DSTATE, align 2
  %.not1.i98.i = icmp eq i16 %i.ao, 0
  br i1 %.not1.i98.i, label %trace_pflash_read_status.exit.thread116.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr @qemu_loglevel, align 4
  %i.aq = and i32 %i.ap, 32768
  %.not2.i99.i = icmp eq i32 %i.aq, 0
  br i1 %.not2.i99.i, label %trace_pflash_read_status.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, ptr noundef %i.am, i32 noundef %.1.i) #14
  br label %trace_pflash_read_status.exit.i

bb.p:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 833 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1
  %.not93.i = icmp eq i8 %i.as, 0
  br i1 %.not93.i, label %bb.q, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p
  %i.at = icmp sgt i32 %3, 0
  br i1 %i.at, label %.lr.ph139.i, label %trace_pflash_read_status.exit.i

.lr.ph139.i:                                      ; preds = %.preheader.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 834
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 846
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 844
  %.pre154.i = load i8, ptr %i.au, align 16
  br label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.az = and i64 %1, 255                         ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.bb = load i8, ptr %i.ba, align 16
  switch i8 %i.bb, label %bb.t [
    i8 2, label %bb.r
    i8 4, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bc = lshr i64 %i.az, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bd = lshr i64 %i.az, 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.086.i = phi i64 [ %i.bc, %bb.r ], [ %i.bd, %bb.s ], [ %i.az, %bb.q ] ; 2 uses
  switch i64 %.086.i, label %bb.w [
    i64 0, label %bb.u
    i64 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bf = load i16, ptr %i.be, align 4
  %i.bg = zext i16 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 846
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = or i32 %i.bh, %i.bk                     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.bn = load ptr, ptr %i.bm, align 16
  %i.bo = trunc i32 %i.bl to i16
  tail call fastcc void @trace_pflash_manufacturer_id(ptr noundef %i.bn, i16 noundef zeroext %i.bo)
  br label %trace_pflash_read_status.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.bq = load i16, ptr %i.bp, align 16
  %i.br = zext i16 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 850
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = zext i16 %i.bu to i32
  %i.bw = or i32 %i.bs, %i.bv                     ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.by = load ptr, ptr %i.bx, align 16
  %i.bz = trunc i32 %i.bw to i16
  tail call fastcc void @trace_pflash_device_id(ptr noundef %i.by, i16 noundef zeroext %i.bz)
  br label %trace_pflash_read_status.exit.i

bb.w:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.cb = load ptr, ptr %i.ca, align 16
  tail call fastcc void @trace_pflash_device_info(ptr noundef %i.cb, i64 noundef %.086.i)
  br label %trace_pflash_read_status.exit.i

bb.x:                                             ; preds = %deposit32.exit.i, %.lr.ph139.i
  %i.cc = phi i8 [ %.pre154.i, %.lr.ph139.i ], [ %i.ep, %deposit32.exit.i ] ; 2 uses
  %.083138.i = phi i32 [ 0, %.lr.ph139.i ], [ %i.er, %deposit32.exit.i ] ; 3 uses
  %.2137.i = phi i32 [ -1, %.lr.ph139.i ], [ %i.eo, %deposit32.exit.i ]
  %i.cd = shl i32 %.083138.i, 3                   ; 4 uses
  %i.ce = zext i8 %i.cc to i32                    ; 3 uses
  %i.cf = shl nuw nsw i32 %i.ce, 3                ; 2 uses
  %i.cg = mul i32 %.083138.i, %i.ce
  %i.ch = sext i32 %i.cg to i64
  %i.ci = add i64 %1, %i.ch                       ; 2 uses
  %i.cj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ce, i1 false)
  %i.ck = load i8, ptr %i.av, align 2
  %i.cl = zext i8 %i.ck to i32
  %i.cm = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cl, i1 false)
  %i.cn = add nuw nsw i32 %i.cm, %i.cj
  %i.co = load i8, ptr %i.ar, align 1
  %i.cp = zext i8 %i.co to i32
  %i.cq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cp, i1 false)
  %i.cr = sub nsw i32 %i.cn, %i.cq
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = lshr i64 %i.ci, %i.cs
  %trunc.i.i = trunc i64 %i.ct to i8
  switch i8 %trunc.i.i, label %bb.ag [
    i8 0, label %bb.y
    i8 1, label %bb.ac
  ]

bb.y:                                             ; preds = %bb.x
  %i.cu = load i16, ptr %i.ay, align 4            ; 5 uses
  %i.cv = load ptr, ptr %i.ax, align 16
  %i.cw = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i, label %trace_pflash_manufacturer_id.exit.i.i, label %bb.z, !prof !8

bb.z:                                             ; preds = %bb.y
  %i.cx = load i16, ptr @_TRACE_PFLASH_MANUFACTURER_ID_DSTATE, align 2
  %.not1.i.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not1.i.i.i, label %trace_pflash_manufacturer_id.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = load i32, ptr @qemu_loglevel, align 4
  %i.cz = and i32 %i.cy, 32768
  %.not2.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not2.i.i.i, label %trace_pflash_manufacturer_id.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = zext i16 %i.cu to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.27, ptr noundef %i.cv, i32 noundef %i.da) #14
  br label %trace_pflash_manufacturer_id.exit.i.i

bb.ac:                                            ; preds = %bb.x
  %i.db = load i16, ptr %i.aw, align 2            ; 5 uses
  %i.dc = load ptr, ptr %i.ax, align 16
  %i.dd = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i28.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i28.i.i, label %trace_pflash_manufacturer_id.exit.i.i, label %bb.ad, !prof !8

bb.ad:                                            ; preds = %bb.ac
  %i.de = load i16, ptr @_TRACE_PFLASH_DEVICE_ID_DSTATE, align 2
  %.not1.i29.i.i = icmp eq i16 %i.de, 0
  br i1 %.not1.i29.i.i, label %trace_pflash_manufacturer_id.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.df = load i32, ptr @qemu_loglevel, align 4
  %i.dg = and i32 %i.df, 32768
  %.not2.i30.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not2.i30.i.i, label %trace_pflash_manufacturer_id.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = zext i16 %i.db to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.28, ptr noundef %i.dc, i32 noundef %i.dh) #14
  br label %trace_pflash_manufacturer_id.exit.i.i

bb.ag:                                            ; preds = %bb.x
  %i.di = load ptr, ptr %i.ax, align 16
  %i.dj = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i31.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i31.i.i, label %pflash_devid_query.exit.i, label %bb.ah, !prof !8

bb.ah:                                            ; preds = %bb.ag
  %i.dk = load i16, ptr @_TRACE_PFLASH_DEVICE_INFO_DSTATE, align 2
  %.not1.i32.i.i = icmp eq i16 %i.dk, 0
  br i1 %.not1.i32.i.i, label %pflash_devid_query.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = load i32, ptr @qemu_loglevel, align 4
  %i.dm = and i32 %i.dl, 32768
  %.not2.i33.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not2.i33.i.i, label %pflash_devid_query.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef %i.di, i64 noundef %i.ci) #14
  br label %pflash_devid_query.exit.i

trace_pflash_manufacturer_id.exit.i.i:            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.0.in.i.i = phi i16 [ %i.cu, %bb.ab ], [ %i.cu, %bb.y ], [ %i.cu, %bb.z ], [ %i.cu, %bb.aa ], [ %i.db, %bb.ac ], [ %i.db, %bb.ad ], [ %i.db, %bb.ae ], [ %i.db, %bb.af ]
  %.0.i.i = zext i16 %.0.in.i.i to i32            ; 2 uses
  %i.dn = load i8, ptr %i.ar, align 1
  %.fr39.i.i = freeze i8 %i.dn                    ; 3 uses
  %i.do = load i8, ptr %i.au, align 16            ; 2 uses
  %i.dp = icmp ult i8 %.fr39.i.i, %i.do
  br i1 %i.dp, label %bb.ak, label %pflash_devid_query.exit.i

bb.ak:                                            ; preds = %trace_pflash_manufacturer_id.exit.i.i
  %i.dq = zext i8 %.fr39.i.i to i32               ; 3 uses
  %i.dr = zext i8 %i.do to i32
  %i.ds = shl nuw nsw i32 %i.dq, 3
  %i.dt = icmp eq i8 %.fr39.i.i, 0
  %invariant.op.i.i = sub nsw i32 32, %i.ds       ; 2 uses
  %i.du = lshr i32 -1, %invariant.op.i.i          ; 2 uses
  br i1 %i.dt, label %.split38.i.i, label %.split.i.i.a

.split.i.i.a:                                     ; preds = %bb.ak, %deposit32.exit.i.i
  %.137.i.i = phi i32 [ %i.eb, %deposit32.exit.i.i ], [ %.0.i.i, %bb.ak ] ; 2 uses
  %.02536.i.i = phi i32 [ %i.ec, %deposit32.exit.i.i ], [ %i.dq, %bb.ak ] ; 2 uses
  %i.dv = shl nuw nsw i32 %.02536.i.i, 3          ; 3 uses
  %.not.i34.i.i = icmp sgt i32 %i.dv, %invariant.op.i.i
  br i1 %.not.i34.i.i, label %.split38.i.i, label %deposit32.exit.i.i

.split38.i.i:                                     ; preds = %bb.ak, %.split.i.i.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 649, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit32) #15
  unreachable

deposit32.exit.i.i:                               ; preds = %.split.i.i.a
  %i.dw = shl i32 %i.du, %i.dv
  %i.dx = xor i32 %i.dw, -1
  %i.dy = and i32 %.137.i.i, %i.dx
  %i.dz = and i32 %.137.i.i, %i.du
  %i.ea = shl i32 %i.dz, %i.dv
  %i.eb = or i32 %i.dy, %i.ea                     ; 2 uses
  %i.ec = add nuw nsw i32 %.02536.i.i, %i.dq      ; 2 uses
  %i.ed = icmp samesign ult i32 %i.ec, %i.dr
  br i1 %i.ed, label %.split.i.i.a, label %pflash_devid_query.exit.i, !llvm.loop !11

pflash_devid_query.exit.i:                        ; preds = %deposit32.exit.i.i, %trace_pflash_manufacturer_id.exit.i.i, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.026.i.i = phi i32 [ %.0.i.i, %trace_pflash_manufacturer_id.exit.i.i ], [ 0, %bb.aj ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ %i.eb, %deposit32.exit.i.i ]
  %i.ee = icmp slt i32 %i.cd, 0
  %i.ef = icmp eq i8 %i.cc, 0
  %or.cond.not16.i.i = or i1 %i.ef, %i.ee
  %i.eg = sub nsw i32 32, %i.cd
  %.not.i100.i.a = icmp sgt i32 %i.cf, %i.eg
  %or.cond13.i.i = select i1 %or.cond.not16.i.i, i1 true, i1 %.not.i100.i.a
  br i1 %or.cond13.i.i, label %bb.al, label %deposit32.exit.i

bb.al:                                            ; preds = %pflash_devid_query.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 649, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit32) #15
  unreachable

deposit32.exit.i:                                 ; preds = %pflash_devid_query.exit.i
  %i.eh = sub nuw nsw i32 32, %i.cf
  %i.ei = lshr i32 -1, %i.eh                      ; 2 uses
  %i.ej = shl i32 %i.ei, %i.cd
  %i.ek = xor i32 %i.ej, -1
  %i.el = and i32 %.2137.i, %i.ek
  %i.em = and i32 %.026.i.i, %i.ei
  %i.en = shl i32 %i.em, %i.cd
  %i.eo = or i32 %i.en, %i.el                     ; 2 uses
  %i.ep = load i8, ptr %i.au, align 16            ; 2 uses
  %i.eq = zext i8 %i.ep to i32
  %i.er = add i32 %.083138.i, %i.eq               ; 2 uses
  %i.es = icmp slt i32 %i.er, %3
  br i1 %i.es, label %bb.x, label %trace_pflash_read_status.exit.i, !llvm.loop !12

bb.am:                                            ; preds = %bb.c
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 833 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1
  %.not.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i, label %bb.an, label %.preheader123.i

.preheader123.i:                                  ; preds = %bb.am
  %i.ev = icmp sgt i32 %3, 0
  br i1 %i.ev, label %.lr.ph.i, label %trace_pflash_read_status.exit.i

.lr.ph.i:                                         ; preds = %.preheader123.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 834
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %.pre.i = load i8, ptr %i.ew, align 16
  br label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.fa = and i64 %1, 255                         ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.fc = load i8, ptr %i.fb, align 16
  switch i8 %i.fc, label %bb.ap [
    i8 2, label %bb.ao
    i8 4, label %.thread.i
  ]

bb.ao:                                            ; preds = %bb.an
  %i.fd = lshr i64 %i.fa, 1
  br label %bb.ap

.thread.i:                                        ; preds = %bb.an
  %i.fe = lshr i64 %i.fa, 2
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.187.i = phi i64 [ %i.fd, %bb.ao ], [ %i.fa, %bb.an ] ; 2 uses
  %i.ff = icmp samesign ult i64 %.187.i, 82
  br i1 %i.ff, label %bb.aq, label %trace_pflash_read_status.exit.i

bb.aq:                                            ; preds = %bb.ap, %.thread.i
  %.187112.i = phi i64 [ %i.fe, %.thread.i ], [ %.187.i, %bb.ap ]
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.187112.i
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = zext i8 %i.fi to i32
  br label %trace_pflash_read_status.exit.i

bb.ar:                                            ; preds = %deposit32.exit109.i, %.lr.ph.i
  %i.fk = phi i8 [ %.pre.i, %.lr.ph.i ], [ %i.hs, %deposit32.exit109.i ] ; 4 uses
  %.0136.i = phi i32 [ 0, %.lr.ph.i ], [ %i.hu, %deposit32.exit109.i ] ; 3 uses
  %.3135.i = phi i32 [ -1, %.lr.ph.i ], [ %i.hr, %deposit32.exit109.i ]
  %i.fl = shl i32 %.0136.i, 3                     ; 4 uses
  %i.fm = zext i8 %i.fk to i32                    ; 4 uses
  %i.fn = shl nuw nsw i32 %i.fm, 3                ; 2 uses
  %i.fo = mul i32 %.0136.i, %i.fm
  %i.fp = sext i32 %i.fo to i64
  %i.fq = add i64 %1, %i.fp
  %i.fr = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fm, i1 false)
  %i.fs = load i8, ptr %i.ex, align 2             ; 6 uses
  %i.ft = zext i8 %i.fs to i32                    ; 2 uses
  %i.fu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ft, i1 false)
  %i.fv = add nuw nsw i32 %i.fu, %i.fr
  %i.fw = load i8, ptr %i.et, align 1
  %.fr51.i.i = freeze i8 %i.fw                    ; 5 uses
  %i.fx = zext i8 %.fr51.i.i to i32               ; 5 uses
  %i.fy = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fx, i1 false)
  %i.fz = sub nsw i32 %i.fv, %i.fy
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = lshr i64 %i.fq, %i.ga                   ; 2 uses
  %i.gc = icmp ugt i64 %i.gb, 81
  br i1 %i.gc, label %pflash_cfi_query.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.gb
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = zext i8 %i.ge to i32                    ; 6 uses
  %.not.i101.i = icmp eq i8 %.fr51.i.i, %i.fs
  br i1 %.not.i101.i, label %.loopexit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not39.i.i = icmp ne i8 %.fr51.i.i, 1
  %i.gg = icmp ugt i8 %i.fk, 4
  %or.cond.i.i = or i1 %i.gg, %.not39.i.i
  br i1 %or.cond.i.i, label %bb.au, label %.preheader44.i.i

.preheader44.i.i:                                 ; preds = %bb.at
  %i.gh = icmp ugt i8 %i.fs, 1
  br i1 %i.gh, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader44.i.i
  %i.gi = icmp ugt i8 %i.fs, 4
  br i1 %i.gi, label %bb.ay, label %.lr.ph.i.i

bb.au:                                            ; preds = %bb.at
  %i.gj = load ptr, ptr %i.ez, align 16
  %i.gk = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i104.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i.i104.i, label %pflash_cfi_query.exit.i, label %bb.av, !prof !8

bb.av:                                            ; preds = %bb.au
  %i.gl = load i16, ptr @_TRACE_PFLASH_UNSUPPORTED_DEVICE_CONFIGURATION_DSTATE, align 2
  %.not2.i.i105.i = icmp eq i16 %i.gl, 0
  br i1 %.not2.i.i105.i, label %pflash_cfi_query.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gm = load i32, ptr @qemu_loglevel, align 4
  %i.gn = and i32 %i.gm, 32768
  %.not3.i.i.i = icmp eq i32 %i.gn, 0
  br i1 %.not3.i.i.i, label %pflash_cfi_query.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.32, ptr noundef %i.gj, i32 noundef %i.fx, i32 noundef %i.ft) #14
  br label %pflash_cfi_query.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i
  %i.go = shl nuw nsw i32 %i.gf, 8
  %i.gp = or disjoint i32 %i.go, %i.gf            ; 2 uses
  %exitcond.not.i.i = icmp eq i8 %i.fs, 2
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.gq = shl nuw nsw i32 %i.gf, 16
  %i.gr = or disjoint i32 %i.gp, %i.gq            ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i8 %i.fs, 3
  br i1 %exitcond.not.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.gs = shl nuw i32 %i.gf, 24
  %i.gt = or disjoint i32 %i.gr, %i.gs
  br label %.loopexit.i.i

bb.ay:                                            ; preds = %.lr.ph.preheader.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 649, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit32) #15
  unreachable

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.preheader44.i.i, %bb.as
  %.1.i.i = phi i32 [ %i.gf, %bb.as ], [ %i.gf, %.preheader44.i.i ], [ %i.gp, %.lr.ph.i.i ], [ %i.gr, %.lr.ph.i.i.1 ], [ %i.gt, %.lr.ph.i.i.2 ] ; 2 uses
  %i.gu = icmp ult i8 %.fr51.i.i, %i.fk
  br i1 %i.gu, label %.preheader.i.i, label %pflash_cfi_query.exit.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i
  %i.gv = shl nuw nsw i32 %i.fx, 3
  %i.gw = icmp eq i8 %.fr51.i.i, 0
  %invariant.op.i102.i = sub nsw i32 32, %i.gv    ; 2 uses
  %i.gx = lshr i32 -1, %invariant.op.i102.i       ; 2 uses
  br i1 %i.gw, label %.split.i103.i, label %.preheader.split.i.i.a

.preheader.split.i.i.a:                           ; preds = %.preheader.i.i, %deposit32.exit43.i.i
  %.250.i.i = phi i32 [ %i.he, %deposit32.exit43.i.i ], [ %.1.i.i, %.preheader.i.i ] ; 2 uses
  %.13449.i.i = phi i32 [ %i.hf, %deposit32.exit43.i.i ], [ %i.fx, %.preheader.i.i ] ; 2 uses
  %i.gy = shl nuw nsw i32 %.13449.i.i, 3          ; 3 uses
  %.not.i41.i.i = icmp sgt i32 %i.gy, %invariant.op.i102.i
  br i1 %.not.i41.i.i, label %.split.i103.i, label %deposit32.exit43.i.i

.split.i103.i:                                    ; preds = %.preheader.i.i, %.preheader.split.i.i.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 649, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit32) #15
  unreachable

deposit32.exit43.i.i:                             ; preds = %.preheader.split.i.i.a
  %i.gz = shl i32 %i.gx, %i.gy
  %i.ha = xor i32 %i.gz, -1
  %i.hb = and i32 %.250.i.i, %i.ha
  %i.hc = and i32 %.250.i.i, %i.gx
  %i.hd = shl i32 %i.hc, %i.gy
  %i.he = or i32 %i.hb, %i.hd                     ; 2 uses
  %i.hf = add nuw nsw i32 %.13449.i.i, %i.fx      ; 2 uses
  %i.hg = icmp samesign ult i32 %i.hf, %i.fm
  br i1 %i.hg, label %.preheader.split.i.i.a, label %pflash_cfi_query.exit.i, !llvm.loop !13

pflash_cfi_query.exit.i:                          ; preds = %deposit32.exit43.i.i, %.loopexit.i.i, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.ar
  %.035.i.i = phi i32 [ 0, %bb.ar ], [ %.1.i.i, %.loopexit.i.i ], [ 0, %bb.ax ], [ 0, %bb.au ], [ 0, %bb.av ], [ 0, %bb.aw ], [ %i.he, %deposit32.exit43.i.i ]
  %i.hh = icmp slt i32 %i.fl, 0
  %i.hi = icmp eq i8 %i.fk, 0
  %or.cond.not16.i106.i = or i1 %i.hi, %i.hh
  %i.hj = sub nsw i32 32, %i.fl
  %.not.i107.i = icmp sgt i32 %i.fn, %i.hj
  %or.cond13.i108.i = select i1 %or.cond.not16.i106.i, i1 true, i1 %.not.i107.i
  br i1 %or.cond13.i108.i, label %bb.az, label %deposit32.exit109.i

bb.az:                                            ; preds = %pflash_cfi_query.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 649, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit32) #15
  unreachable

deposit32.exit109.i:                              ; preds = %pflash_cfi_query.exit.i
  %i.hk = sub nuw nsw i32 32, %i.fn
  %i.hl = lshr i32 -1, %i.hk                      ; 2 uses
  %i.hm = shl i32 %i.hl, %i.fl
  %i.hn = xor i32 %i.hm, -1
  %i.ho = and i32 %.3135.i, %i.hn
  %i.hp = and i32 %.035.i.i, %i.hl
  %i.hq = shl i32 %i.hp, %i.fl
  %i.hr = or i32 %i.hq, %i.ho                     ; 2 uses
  %i.hs = load i8, ptr %i.ew, align 16            ; 2 uses
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add i32 %.0136.i, %i.ht                 ; 2 uses
  %i.hv = icmp slt i32 %i.hu, %3
  br i1 %i.hv, label %bb.ar, label %trace_pflash_read_status.exit.i, !llvm.loop !14

trace_pflash_read_status.exit.i:                  ; preds = %deposit32.exit109.i, %deposit32.exit.i, %bb.aq, %bb.ap, %.preheader123.i, %bb.w, %bb.v, %bb.u, %.preheader.i, %bb.o, %bb.n, %bb.h
  %.4.ph.i = phi i32 [ %.1.i, %bb.o ], [ %.1.i, %bb.n ], [ %i.fj, %bb.aq ], [ 0, %bb.ap ], [ %i.bw, %bb.v ], [ %i.bl, %bb.u ], [ 0, %bb.w ], [ %i.s, %bb.h ], [ %i.eo, %deposit32.exit.i ], [ -1, %.preheader.i ], [ -1, %.preheader123.i ], [ %i.hr, %deposit32.exit109.i ] ; 2 uses
  %.pr.i = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i110.i = icmp eq i32 %.pr.i, 0
  br i1 %.not.i110.i, label %pflash_read.exit, label %trace_pflash_read_status.exit.trace_pflash_read_status.exit.thread116_crit_edge.i, !prof !15

trace_pflash_read_status.exit.trace_pflash_read_status.exit.thread116_crit_edge.i: ; preds = %trace_pflash_read_status.exit.i
  %.in120.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %.pre155.i = load ptr, ptr %.in120.phi.trans.insert.i, align 16
  %.pre156.i = load i8, ptr %i.g, align 2
  br label %trace_pflash_read_status.exit.thread116.i

trace_pflash_read_status.exit.thread116.i:        ; preds = %trace_pflash_read_status.exit.trace_pflash_read_status.exit.thread116_crit_edge.i, %bb.m
  %i.hw = phi i8 [ %.pre156.i, %trace_pflash_read_status.exit.trace_pflash_read_status.exit.thread116_crit_edge.i ], [ %i.h, %bb.m ]
  %i.hx = phi ptr [ %.pre155.i, %trace_pflash_read_status.exit.trace_pflash_read_status.exit.thread116_crit_edge.i ], [ %i.am, %bb.m ]
  %.4119.i = phi i32 [ %.4.ph.i, %trace_pflash_read_status.exit.trace_pflash_read_status.exit.thread116_crit_edge.i ], [ %.1.i, %bb.m ] ; 4 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.hy = load i8, ptr %.in.i, align 8
  %i.hz = load i16, ptr @_TRACE_PFLASH_IO_READ_DSTATE, align 2
  %.not5.i.i = icmp eq i16 %i.hz, 0
  br i1 %.not5.i.i, label %pflash_read.exit, label %bb.ba

bb.ba:                                            ; preds = %trace_pflash_read_status.exit.thread116.i
  %i.ia = load i32, ptr @qemu_loglevel, align 4
  %i.ib = and i32 %i.ia, 32768
  %.not6.i.i = icmp eq i32 %i.ib, 0
  br i1 %.not6.i.i, label %pflash_read.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ic = zext i8 %i.hw to i32
  %i.id = zext i8 %i.hy to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.33, ptr noundef %i.hx, i64 noundef %1, i32 noundef %3, i32 noundef %.4119.i, i32 noundef %i.ic, i32 noundef %i.id) #14
  br label %pflash_read.exit

pflash_read.exit:                                 ; preds = %bb.bb, %bb.ba, %trace_pflash_read_status.exit.thread116.i, %trace_pflash_read_status.exit.i, %.loopexit.i, %bb.b
  %storemerge.in = phi i32 [ %i.f, %bb.b ], [ %.4119.i, %bb.bb ], [ %.4.ph.i, %trace_pflash_read_status.exit.i ], [ %.4119.i, %trace_pflash_read_status.exit.thread116.i ], [ %.4119.i, %bb.ba ], [ %.1.i, %.loopexit.i ]
  %storemerge = zext i32 %storemerge.in to i64
  store i64 %storemerge, ptr %2, align 8
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @pflash_mem_write_with_attrs(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 836
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 2
  %.not = icmp ne i32 %i.c, 0
  %i.d = and i64 %4, 1
  %.not8 = icmp eq i64 %i.d, 0
  %or.cond = select i1 %.not, i1 %.not8, i1 false
  br i1 %or.cond, label %pflash_write.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %2 to i32                      ; 7 uses
  %i.f = and i32 %i.b, 1                          ; 2 uses
  %i.g = trunc i64 %2 to i8                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 21 uses
  %i.i = load ptr, ptr %i.h, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 15 uses
  %i.k = load i8, ptr %i.j, align 8               ; 4 uses
  %i.l = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %trace_pflash_io_write.exit.i, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.m = load i16, ptr @_TRACE_PFLASH_IO_WRITE_DSTATE, align 2
  %.not4.i.i = icmp eq i16 %i.m, 0
  br i1 %.not4.i.i, label %trace_pflash_io_write.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 32768
  %.not5.i.i = icmp eq i32 %i.o, 0
  br i1 %.not5.i.i, label %trace_pflash_io_write.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = zext i8 %i.k to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.49, ptr noundef %i.i, i64 noundef %1, i32 noundef %3, i32 noundef %i.e, i32 noundef %i.p) #14
  %.pr.pre.i = load i8, ptr %i.j, align 8
  br label %trace_pflash_io_write.exit.i

trace_pflash_io_write.exit.i:                     ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.q = phi i8 [ %i.k, %bb.b ], [ %.pr.pre.i, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %trace_pflash_io_write.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 960
  tail call void @memory_region_rom_device_set_romd(ptr noundef nonnull %i.r, i1 noundef zeroext false) #14
  %.pre.i = load i8, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %trace_pflash_io_write.exit.i
  %i.s = phi i8 [ %.pre.i, %bb.f ], [ %i.q, %trace_pflash_io_write.exit.i ]
  switch i8 %i.s, label %bb.ce [
    i8 0, label %bb.h
    i8 1, label %bb.y
    i8 2, label %bb.au
    i8 3, label %bb.bl
  ]

bb.h:                                             ; preds = %bb.g
  switch i8 %i.g, label %bb.ci [
    i8 0, label %trace_pflash_write.exit150.i
    i8 16, label %bb.i
    i8 64, label %bb.i
    i8 32, label %bb.m
    i8 80, label %bb.q
    i8 96, label %bb.r
    i8 112, label %bb.s
    i8 -112, label %bb.t
    i8 -104, label %bb.u
    i8 -24, label %bb.v
    i8 -16, label %bb.w
    i8 -1, label %bb.x
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.t = load ptr, ptr %i.h, align 16
  %i.u = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i123.i = icmp eq i32 %i.u, 0
  br i1 %.not.i123.i, label %trace_pflash_write.exit.i, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.v = load i16, ptr @_TRACE_PFLASH_WRITE_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.v, 0
  br i1 %.not2.i.i, label %trace_pflash_write.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load i32, ptr @qemu_loglevel, align 4
  %i.x = and i32 %i.w, 32768
  %.not3.i.i = icmp eq i32 %i.x, 0
  br i1 %.not3.i.i, label %trace_pflash_write.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.50, ptr noundef %i.t, ptr noundef nonnull @.str.34) #14
  br label %trace_pflash_write.exit.i

bb.m:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %1, %i.ac                       ; 3 uses
  %i.ae = load ptr, ptr %i.h, align 16
  tail call fastcc void @trace_pflash_write_block_erase(ptr noundef %i.ae, i64 noundef %i.ad, i64 noundef %i.ab)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 841
  %i.ag = load i8, ptr %i.af, align 1, !range !16, !noundef !17
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.aj = load i64, ptr %i.aa, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ai, i8 noundef -1, i64 noundef %i.aj, i1 noundef false) #14
  %i.ak = trunc i64 %i.ad to i32
  %i.al = load i64, ptr %i.aa, align 8
  %i.am = trunc i64 %i.al to i32
  tail call fastcc void @pflash_update(ptr noundef nonnull %0, i32 noundef %i.ak, i32 noundef %i.am)
  %.phi.trans.insert163.i = getelementptr inbounds nuw i8, ptr %0, i64 843
  %.pre164.i = load i8, ptr %.phi.trans.insert163.i, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 843
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = or i8 %i.ao, 32
  br label %bb.p
end_hunk_0
begin_hunk_1_@pflash_data_write:bb.a

trace_pflash_data_write.exit:                     ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %1
  br label %bb.m

bb.m:                                             ; preds = %trace_pflash_data_write.exit, %trace_pflash_data_write_block.exit
  %.0 = phi ptr [ %i.z, %trace_pflash_data_write_block.exit ], [ %i.ai, %trace_pflash_data_write.exit ] ; 8 uses
  %.not30 = icmp eq i32 %4, 0
  %i.aj = zext i32 %2 to i64                      ; 2 uses
  %i.ak = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %3)
  %i.al = icmp eq i32 %i.ak, 1                    ; 2 uses
  br i1 %.not30, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.al, label %.split.i, label %bb.s

.split.i:                                         ; preds = %bb.n
  %i.am = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 true)
  switch i32 %i.am, label %bb.s [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.o:                                             ; preds = %.split.i
  %i.an = trunc i32 %2 to i8
  store i8 %i.an, ptr %.0, align 1
  br label %stn_be_p.exit

bb.p:                                             ; preds = %.split.i
  %i.ao = trunc i32 %2 to i16
  %i.ap = tail call i16 @llvm.bswap.i16(i16 %i.ao)
  store i16 %i.ap, ptr %.0, align 1
  br label %stn_be_p.exit

bb.q:                                             ; preds = %.split.i
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %i.aq, ptr %.0, align 1
  br label %stn_be_p.exit

bb.r:                                             ; preds = %.split.i
  %i.ar = tail call i64 @llvm.bswap.i64(i64 range(i64 0, 4294967296) %i.aj)
  store i64 %i.ar, ptr %.0, align 1
  br label %stn_be_p.exit

bb.s:                                             ; preds = %.split.i, %bb.n
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 489, ptr noundef nonnull @__func__.stn_be_p, ptr noundef null) #15
  unreachable

bb.t:                                             ; preds = %bb.m
  br i1 %i.al, label %.split.i33, label %bb.y

.split.i33:                                       ; preds = %bb.t
  %i.as = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 true)
  switch i32 %i.as, label %bb.y [
    i32 0, label %bb.u
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.u:                                             ; preds = %.split.i33
  %i.at = trunc i32 %2 to i8
  store i8 %i.at, ptr %.0, align 1
  br label %stn_be_p.exit

bb.v:                                             ; preds = %.split.i33
  %i.au = trunc i32 %2 to i16
  store i16 %i.au, ptr %.0, align 1
  br label %stn_be_p.exit

bb.w:                                             ; preds = %.split.i33
  store i32 %2, ptr %.0, align 1
  br label %stn_be_p.exit

bb.x:                                             ; preds = %.split.i33
  store i64 %i.aj, ptr %.0, align 1
  br label %stn_be_p.exit

bb.y:                                             ; preds = %.split.i33, %bb.t
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 488, ptr noundef nonnull @__func__.stn_le_p, ptr noundef null) #15
  unreachable

stn_be_p.exit:                                    ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.r, %bb.q, %bb.p, %bb.o, %bb.d
  ret void
}

declare i32 @blk_pwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @pflash_post_load(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 841
  %i.b = load i8, ptr %i.a, align 1, !range !16, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @qemu_add_vm_change_state_handler(ptr noundef nonnull @postload_update_cb, ptr noundef nonnull %0) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store ptr %i.d, ptr %i.e, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare ptr @qemu_add_vm_change_state_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @postload_update_cb(ptr nofree noundef captures(none) %0, i1 zeroext %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16
  tail call void @qemu_del_vm_change_state_handler(ptr noundef %i.b) #14
  store ptr null, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_pflash_postload_cb.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_PFLASH_POSTLOAD_CB_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.f, 0
  br i1 %.not1.i, label %trace_pflash_postload_cb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not2.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i, label %trace_pflash_postload_cb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.71, ptr noundef %i.d) #14
  br label %trace_pflash_postload_cb.exit

trace_pflash_postload_cb.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i7 = icmp eq ptr %i.j, null
  br i1 %.not.i7, label %pflash_update.exit, label %bb.e

bb.e:                                             ; preds = %trace_pflash_postload_cb.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.l = load i32, ptr %i.k, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.n = load i64, ptr %i.m, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = mul i32 %i.l, %i.o
  %i.q = add i32 %i.p, 511
  %i.r = and i32 %i.q, -512
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 @blk_pwrite(ptr noundef nonnull %i.j, i64 noundef 0, i64 noundef %i.s, ptr noundef %i.u, i32 noundef 0) #14 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %pflash_update.exit

bb.f:                                             ; preds = %bb.e
  %i.x = sub i32 0, %i.v
  %i.y = tail call ptr @strerror(i32 noundef %i.x) #14
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.52, ptr noundef %i.y) #14
  br label %pflash_update.exit

pflash_update.exit:                               ; preds = %trace_pflash_postload_cb.exit, %bb.e, %bb.f
  ret void
}

declare void @qemu_del_vm_change_state_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @pflash_blk_write_state_needed(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.b = load i32, ptr %i.a, align 16
  %i.c = icmp ne i32 %i.b, -1
  ret i1 %i.c
}

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"auto-init"}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = !{!"branch_weights", !"expected", i32 2145070326, i32 2413322}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"branch_weights", !"expected", i32 2146102431, i32 1381217}
end_hunk_1
