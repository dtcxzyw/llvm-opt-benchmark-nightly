Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/amd_iommu?download=true
inline.NumInlined: 393
inline.NumDeleted: 155
begin_hunk_0_@amdvi_mmio_write:bb.a
    i64 8192, label %bb.m
    i64 8200, label %bb.n
    i64 8208, label %bb.o
    i64 8216, label %bb.p
    i64 8224, label %bb.q
    i64 56, label %bb.r
    i64 8240, label %bb.s
    i64 8248, label %bb.t
    i64 368, label %bb.u
  ]

bb.g:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.h:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.i:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.j:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.k:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.l:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.m:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.n:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.o:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.p:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.q:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.r:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.s:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.t:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.u:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

bb.v:                                             ; preds = %bb.f
  br label %amdvi_mmio_get_name.exit

amdvi_mmio_get_name.exit:                         ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.i = phi ptr [ @.str.86, %bb.v ], [ @.str.85, %bb.u ], [ @.str.71, %bb.g ], [ @.str.72, %bb.h ], [ @.str.73, %bb.i ], [ @.str.74, %bb.j ], [ @.str.75, %bb.k ], [ @.str.76, %bb.l ], [ @.str.77, %bb.m ], [ @.str.78, %bb.n ], [ @.str.79, %bb.o ], [ @.str.80, %bb.p ], [ @.str.81, %bb.q ], [ @.str.82, %bb.r ], [ @.str.83, %bb.s ], [ @.str.84, %bb.t ], [ @.str.70, %bb.f ]
  %i.i = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i87 = icmp eq i32 %i.i, 0
  br i1 %.not.i87, label %trace_amdvi_mmio_write.exit90, label %bb.w, !prof !12

bb.w:                                             ; preds = %amdvi_mmio_get_name.exit
  %i.j = load i16, ptr @_TRACE_AMDVI_MMIO_WRITE_DSTATE, align 2
  %.not4.i88 = icmp eq i16 %i.j, 0
  br i1 %.not4.i88, label %trace_amdvi_mmio_write.exit90, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.k = load i32, ptr @qemu_loglevel, align 4
  %i.l = and i32 %i.k, 32768
  %.not5.i89 = icmp eq i32 %i.l, 0
  br i1 %.not5.i89, label %trace_amdvi_mmio_write.exit90, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.88, ptr noundef nonnull %.0.i, i64 noundef %1, i32 noundef %3, i64 noundef %2, i64 noundef range(i64 0, 8) %i.a) #12
  br label %trace_amdvi_mmio_write.exit90

trace_amdvi_mmio_write.exit90:                    ; preds = %amdvi_mmio_get_name.exit, %bb.w, %bb.x, %bb.y
  %i.m = and i64 %1, -8
  switch i64 %i.m, label %trace_amdvi_mmio_write.exit [
    i64 24, label %bb.z
    i64 0, label %bb.ak
    i64 8192, label %bb.ao
    i64 8, label %bb.as
    i64 8200, label %bb.aw
    i64 16, label %bb.ba
    i64 8208, label %bb.bf
    i64 8216, label %bb.bj
    i64 40, label %bb.bn
    i64 56, label %bb.br
    i64 8240, label %bb.bv
    i64 8248, label %bb.bz
    i64 8224, label %bb.cd
    i64 368, label %bb.ch
  ]

bb.z:                                             ; preds = %trace_amdvi_mmio_write.exit90
  switch i32 %3, label %amdvi_mmio_reg_write.exit [
    i32 2, label %bb.aa
    i32 4, label %bb.ab
    i32 8, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.n = trunc i64 %2 to i16                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 34848
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %1
  %.val18.i.i = load i16, ptr %i.p, align 1       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  %.val17.i.i = load i16, ptr %i.r, align 1       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %.val.i.i = load i16, ptr %i.t, align 1
  %i.u = or i16 %.val17.i.i, %.val18.i.i
  %i.v = and i16 %.val.i.i, %i.u
  %i.w = xor i16 %.val18.i.i, -1
  %i.x = and i16 %i.w, %i.n
  %i.y = or i16 %i.v, %i.x
  %i.z = and i16 %.val17.i.i, %i.n
  %i.aa = xor i16 %i.z, -1
  %i.ab = and i16 %i.y, %i.aa
  store i16 %i.ab, ptr %i.t, align 1
  br label %amdvi_mmio_reg_write.exit

bb.ab:                                            ; preds = %bb.z
  %i.ac = trunc i64 %2 to i32                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 34848
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %1
  %.val18.i11.i = load i32, ptr %i.ae, align 1    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %1
  %.val17.i12.i = load i32, ptr %i.ag, align 1    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %1 ; 2 uses
  %.val.i13.i = load i32, ptr %i.ai, align 1
  %i.aj = or i32 %.val17.i12.i, %.val18.i11.i
  %i.ak = and i32 %.val.i13.i, %i.aj
  %i.al = xor i32 %.val18.i11.i, -1
  %i.am = and i32 %i.al, %i.ac
  %i.an = and i32 %.val17.i12.i, %i.ac
  %i.ao = or i32 %i.ak, %i.am
  %i.ap = xor i32 %i.an, -1
  %i.aq = and i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %i.ai, align 1
  br label %amdvi_mmio_reg_write.exit

bb.ac:                                            ; preds = %bb.z
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 34848
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %1
  %.val18.i14.i = load i64, ptr %i.as, align 1    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %1
  %.val17.i15.i = load i64, ptr %i.au, align 1    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %1 ; 2 uses
  %.val.i16.i = load i64, ptr %i.aw, align 1
  %i.ax = or i64 %.val17.i15.i, %.val18.i14.i
  %i.ay = and i64 %.val.i16.i, %i.ax
  %i.az = xor i64 %.val18.i14.i, -1
  %i.ba = and i64 %2, %i.az
  %i.bb = and i64 %.val17.i15.i, %2
  %i.bc = or i64 %i.ay, %i.ba
  %i.bd = xor i64 %i.bb, -1
  %i.be = and i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.aw, align 1
  br label %amdvi_mmio_reg_write.exit

amdvi_mmio_reg_write.exit:                        ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2104
  %.val.i.i91 = load i64, ptr %i.bf, align 1      ; 7 uses
  %i.bg = trunc i64 %.val.i.i91 to i1             ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.bi = trunc i64 %.val.i.i91 to i8             ; 4 uses
  %i.bj = and i8 %i.bi, 1
  store i8 %i.bj, ptr %i.bh, align 8
  %i.bk = lshr i8 %i.bi, 2
  %i.bl = and i8 %i.bk, 1
  %i.bm = select i1 %i.bg, i8 %i.bl, i8 0         ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 858
  store i8 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.bp = lshr i8 %i.bi, 3
  %i.bq = and i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bo, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bs = lshr i8 %i.bi, 4
  %i.bt = and i8 %i.bs, 1
  store i8 %i.bt, ptr %i.br, align 8
  %i.bu = lshr i64 %.val.i.i91, 12
  %i.bv = trunc i64 %i.bu to i8
  %i.bw = and i8 %i.bv, 1
  %i.bx = select i1 %i.bg, i8 %i.bw, i8 0         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 857
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 51264
  %i.ca = lshr i64 %.val.i.i91, 17
  %i.cb = trunc i64 %i.ca to i8
  %i.cc = and i8 %i.cb, 1                         ; 2 uses
  store i8 %i.cc, ptr %i.bz, align 16
  %i.cd = and i64 %.val.i.i91, 1125899906842624
  %.not.i92 = icmp eq i64 %i.cd, 0
  br i1 %.not.i92, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %amdvi_mmio_reg_write.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 51265
  %i.cf = load i8, ptr %i.ce, align 1, !range !8, !noundef !9
  %4 = trunc nuw i8 %i.cf to i1
  %spec.select.i = select i1 %4, i8 %i.cc, i8 0
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %amdvi_mmio_reg_write.exit
  %i.cg = phi i8 [ %spec.select.i, %bb.ad ], [ 0, %amdvi_mmio_reg_write.exit ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 51266
  store i8 %i.cg, ptr %i.ch, align 2
  %i.ci = and i64 %.val.i.i91, 2251799813685248
  %.not30.i = icmp eq i64 %i.ci, 0
  br i1 %.not30.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 51265
  %i.ck = load i8, ptr %i.cj, align 1, !range !8, !noundef !9
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cl = phi i8 [ 0, %bb.ae ], [ %i.ck, %bb.af ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 51267
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 10304 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.cn, align 16
  %i.co = and i64 %.val.i.i.i, -25
  %i.cp = shl nuw nsw i8 %i.bx, 4
  %i.cq = shl nuw nsw i8 %i.bm, 3
  %.val.i.i32.i238 = or disjoint i8 %i.cq, %i.cp
  %.val.i.i32.i = zext nneg i8 %.val.i.i32.i238 to i64
  %.sink.i = or disjoint i64 %i.co, %.val.i.i32.i
  store i64 %.sink.i, ptr %i.cn, align 16
  %i.cr = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i, label %amdvi_handle_control_write.exit, label %bb.ah, !prof !12

bb.ah:                                            ; preds = %bb.ag
  %i.cs = load i16, ptr @_TRACE_AMDVI_CONTROL_STATUS_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.cs, 0
  br i1 %.not1.i.i, label %amdvi_handle_control_write.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ct = load i32, ptr @qemu_loglevel, align 4
  %i.cu = and i32 %i.ct, 32768
  %.not2.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not2.i.i, label %amdvi_handle_control_write.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.89, i64 noundef %.val.i.i91) #12
  br label %amdvi_handle_control_write.exit

amdvi_handle_control_write.exit:                  ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.aj
  tail call fastcc void @amdvi_cmdbuf_run(ptr noundef nonnull %0)
  br label %trace_amdvi_mmio_write.exit

bb.ak:                                            ; preds = %trace_amdvi_mmio_write.exit90
  switch i32 %3, label %amdvi_mmio_reg_write.exit102 [
    i32 2, label %bb.al
    i32 4, label %bb.am
    i32 8, label %amdvi_mmio_reg_write.exit102.thread
  ]

bb.al:                                            ; preds = %bb.ak
  %i.cv = trunc i64 %2 to i16                     ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 34848
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %1
  %.val18.i.i99 = load i16, ptr %i.cx, align 1    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %1
  %.val17.i.i100 = load i16, ptr %i.cz, align 1   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %1 ; 2 uses
  %.val.i.i101 = load i16, ptr %i.db, align 1
  %i.dc = or i16 %.val17.i.i100, %.val18.i.i99
  %i.dd = and i16 %.val.i.i101, %i.dc
  %i.de = xor i16 %.val18.i.i99, -1
  %i.df = and i16 %i.de, %i.cv
  %i.dg = or i16 %i.dd, %i.df
  %i.dh = and i16 %.val17.i.i100, %i.cv
  %i.di = xor i16 %i.dh, -1
  %i.dj = and i16 %i.dg, %i.di
  store i16 %i.dj, ptr %i.db, align 1
  br label %amdvi_mmio_reg_write.exit102

bb.am:                                            ; preds = %bb.ak
  %i.dk = trunc i64 %2 to i32                     ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 34848
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %1
  %.val18.i11.i96 = load i32, ptr %i.dm, align 1  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %1
  %.val17.i12.i97 = load i32, ptr %i.do, align 1  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %1 ; 2 uses
  %.val.i13.i98 = load i32, ptr %i.dq, align 1
  %i.dr = or i32 %.val17.i12.i97, %.val18.i11.i96
  %i.ds = and i32 %.val.i13.i98, %i.dr
  %i.dt = xor i32 %.val18.i11.i96, -1
  %i.du = and i32 %i.dt, %i.dk
  %i.dv = and i32 %.val17.i12.i97, %i.dk
  %i.dw = or i32 %i.ds, %i.du
  %i.dx = xor i32 %i.dv, -1
  %i.dy = and i32 %i.dw, %i.dx
  store i32 %i.dy, ptr %i.dq, align 1
  br label %amdvi_mmio_reg_write.exit102

amdvi_mmio_reg_write.exit102.thread:              ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 34848
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %1
  %.val18.i14.i93 = load i64, ptr %i.ea, align 1  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %1
  %.val17.i15.i94 = load i64, ptr %i.ec, align 1  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %1 ; 2 uses
  %.val.i16.i95 = load i64, ptr %i.ee, align 1
  %i.ef = or i64 %.val17.i15.i94, %.val18.i14.i93
  %i.eg = and i64 %.val.i16.i95, %i.ef
  %i.eh = xor i64 %.val18.i14.i93, -1
  %i.ei = and i64 %2, %i.eh
  %i.ej = and i64 %.val17.i15.i94, %2
  %i.ek = or i64 %i.eg, %i.ei
  %i.el = xor i64 %i.ej, -1
  %i.em = and i64 %i.ek, %i.el
  store i64 %i.em, ptr %i.ee, align 1
  br label %bb.an

amdvi_mmio_reg_write.exit102:                     ; preds = %bb.ak, %bb.al, %bb.am
  %.not237 = icmp eq i64 %i.a, 0
  br i1 %.not237, label %trace_amdvi_mmio_write.exit, label %bb.an

bb.an:                                            ; preds = %amdvi_mmio_reg_write.exit102.thread, %amdvi_mmio_reg_write.exit102
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %.val.i.i103 = load i64, ptr %i.en, align 1     ; 2 uses
  %i.eo = and i64 %.val.i.i103, 4503599627366400
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 864
  store i64 %i.eo, ptr %i.ep, align 16
  %i.eq = shl i64 %.val.i.i103, 7
  %i.er = and i64 %i.eq, 65408
  %i.es = add nuw nsw i64 %i.er, 128
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i64 %i.es, ptr %i.et, align 8
  br label %trace_amdvi_mmio_write.exit

bb.ao:                                            ; preds = %trace_amdvi_mmio_write.exit90
  switch i32 %3, label %amdvi_mmio_reg_write.exit113 [
    i32 2, label %bb.ap
    i32 4, label %bb.aq
    i32 8, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.eu = trunc i64 %2 to i16                     ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 34848
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %1
  %.val18.i.i110 = load i16, ptr %i.ew, align 1   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %1
  %.val17.i.i111 = load i16, ptr %i.ey, align 1   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %1 ; 2 uses
  %.val.i.i112 = load i16, ptr %i.fa, align 1
  %i.fb = or i16 %.val17.i.i111, %.val18.i.i110
  %i.fc = and i16 %.val.i.i112, %i.fb
  %i.fd = xor i16 %.val18.i.i110, -1
  %i.fe = and i16 %i.fd, %i.eu
  %i.ff = or i16 %i.fc, %i.fe
  %i.fg = and i16 %.val17.i.i111, %i.eu
  %i.fh = xor i16 %i.fg, -1
  %i.fi = and i16 %i.ff, %i.fh
  store i16 %i.fi, ptr %i.fa, align 1
  br label %amdvi_mmio_reg_write.exit113

bb.aq:                                            ; preds = %bb.ao
  %i.fj = trunc i64 %2 to i32                     ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 34848
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %1
  %.val18.i11.i107 = load i32, ptr %i.fl, align 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %1
  %.val17.i12.i108 = load i32, ptr %i.fn, align 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %1 ; 2 uses
  %.val.i13.i109 = load i32, ptr %i.fp, align 1
  %i.fq = or i32 %.val17.i12.i108, %.val18.i11.i107
  %i.fr = and i32 %.val.i13.i109, %i.fq
  %i.fs = xor i32 %.val18.i11.i107, -1
  %i.ft = and i32 %i.fs, %i.fj
  %i.fu = and i32 %.val17.i12.i108, %i.fj
  %i.fv = or i32 %i.fr, %i.ft
  %i.fw = xor i32 %i.fu, -1
  %i.fx = and i32 %i.fv, %i.fw
  store i32 %i.fx, ptr %i.fp, align 1
  br label %amdvi_mmio_reg_write.exit113

bb.ar:                                            ; preds = %bb.ao
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 34848
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %1
  %.val18.i14.i104 = load i64, ptr %i.fz, align 1 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %1
  %.val17.i15.i105 = load i64, ptr %i.gb, align 1 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %1 ; 2 uses
end_hunk_0
