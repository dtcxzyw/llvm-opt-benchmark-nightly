Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ppi-sensor?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@dissect_ppi_sensor:bb.a
  %i.an = lshr i32 %i.aj, 30                      ; 2 uses
  %.not315 = icmp eq i32 %i.an, 0
  %.not317.not = icmp eq i32 %i.an, 1
  %i.ao = select i1 %.not317.not, i32 2, i32 3
  %.not316 = icmp ne i32 %i.am, 1
  %i.ap = zext i1 %.not316 to i32
  %i.aq = select i1 %.not315, i32 %i.ap, i32 %i.ao
  %i.ar = or disjoint i32 %i.aq, 4
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.as = lshr i32 %i.aj, 26                      ; 2 uses
  %.not312 = icmp eq i32 %i.as, 0
  br i1 %.not312, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not314.not = icmp eq i32 %i.as, 1
  %i.at = select i1 %.not314.not, i32 2, i32 3
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %.not313 = icmp ne i32 %i.al, 1
  %i.au = zext i1 %.not313 to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %i.av = phi i32 [ %i.ar, %bb.k ], [ %i.at, %bb.m ], [ %i.au, %bb.n ]
  %i.aw = add nuw nsw i32 %i.av, 8
  br label %bb.u

bb.p:                                             ; preds = %bb.i
  %i.ax = lshr i32 %i.aj, 20                      ; 2 uses
  %.not304 = icmp eq i32 %i.ax, 0
  br i1 %.not304, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = lshr i32 %i.aj, 22                      ; 2 uses
  %.not308 = icmp eq i32 %i.ay, 0
  %.not310.not = icmp eq i32 %i.ay, 1
  %i.az = select i1 %.not310.not, i32 2, i32 3
  %.not309 = icmp ne i32 %i.ax, 1
  %i.ba = zext i1 %.not309 to i32
  %i.bb = select i1 %.not308, i32 %i.ba, i32 %i.az
  %i.bc = or disjoint i32 %i.bb, 4
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bd = lshr i32 %i.aj, 18                      ; 2 uses
  %.not305 = icmp eq i32 %i.bd, 0
  br i1 %.not305, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not307.not = icmp eq i32 %i.bd, 1
  %i.be = select i1 %.not307.not, i32 2, i32 3
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %.not306 = icmp ne i32 %i.ak, 1
  %i.bf = zext i1 %.not306 to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.s, %bb.o
  %i.bg = phi i32 [ %i.aw, %bb.o ], [ %i.bc, %bb.q ], [ %i.be, %bb.s ], [ %i.bf, %bb.t ]
  %i.bh = add nuw nsw i32 %i.bg, 16
  br label %bb.ag

bb.v:                                             ; preds = %bb.h
  %i.bi = lshr i32 %i.aj, 8                       ; 2 uses
  %.not288 = icmp eq i32 %i.bi, 0
  br i1 %.not288, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = lshr i32 %i.aj, 12                      ; 2 uses
  %.not296 = icmp eq i32 %i.bj, 0
  br i1 %.not296, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = lshr i32 %i.aj, 14                      ; 2 uses
  %.not300 = icmp eq i32 %i.bk, 0
  %.not302.not = icmp eq i32 %i.bk, 1
  %i.bl = select i1 %.not302.not, i32 2, i32 3
  %.not301 = icmp ne i32 %i.bj, 1
  %i.bm = zext i1 %.not301 to i32
  %i.bn = select i1 %.not300, i32 %i.bm, i32 %i.bl
  %i.bo = or disjoint i32 %i.bn, 4
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.bp = lshr i32 %i.aj, 10                      ; 2 uses
  %.not297 = icmp eq i32 %i.bp, 0
  br i1 %.not297, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not299.not = icmp eq i32 %i.bp, 1
  %i.bq = select i1 %.not299.not, i32 2, i32 3
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %.not298 = icmp ne i32 %i.bi, 1
  %i.br = zext i1 %.not298 to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.x
  %i.bs = phi i32 [ %i.bo, %bb.x ], [ %i.bq, %bb.z ], [ %i.br, %bb.aa ]
  %i.bt = add nuw nsw i32 %i.bs, 8
  br label %bb.ag

bb.ac:                                            ; preds = %bb.v
  %i.bu = lshr i32 %i.aj, 4                       ; 2 uses
  %.not289 = icmp eq i32 %i.bu, 0
  br i1 %.not289, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = lshr i32 %i.aj, 6                       ; 2 uses
  %.not293 = icmp eq i32 %i.bv, 0
  %.not295.not = icmp eq i32 %i.bv, 1
  %i.bw = select i1 %.not295.not, i32 2, i32 3
  %.not294 = icmp ne i32 %i.bu, 1
  %i.bx = zext i1 %.not294 to i32
  %i.by = select i1 %.not293, i32 %i.bx, i32 %i.bw
  %i.bz = or disjoint i32 %i.by, 4
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.ca = lshr i32 %i.aj, 2
  switch i32 %i.ca, label %.thread340 [
    i32 0, label %bb.af
    i32 1, label %.thread
  ]

bb.af:                                            ; preds = %bb.ae
  %.not291 = icmp ugt i32 %i.aj, 1
  %i.cb = zext i1 %.not291 to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %bb.af, %bb.ad, %bb.u
  %i.cc = phi i32 [ %i.bh, %bb.u ], [ %i.bt, %bb.ab ], [ %i.bz, %bb.ad ], [ %i.cb, %bb.af ] ; 2 uses
  switch i32 %i.cc, label %.thread369 [
    i32 0, label %bb.ah
    i32 1, label %bb.al
    i32 30, label %bb.cb
    i32 29, label %bb.bz
    i32 4, label %bb.bb
    i32 5, label %bb.bj
    i32 6, label %bb.br
    i32 28, label %bb.bv
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cd = icmp ult i32 %i.ag, 2
  br i1 %i.cd, label %bb.cd, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ce = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.af)
  %i.cf = zext i16 %i.ce to i32                   ; 3 uses
  %i.cg = tail call ptr @val_to_str_const(i32 noundef %i.cf, ptr noundef nonnull @sensor_type_str, ptr noundef nonnull @.str.89) ; 3 uses
  %i.ch = tail call ptr @val_to_str_const(i32 noundef %i.cf, ptr noundef nonnull @sensor_unit_str, ptr noundef nonnull @.str.90)
  br i1 %.not323, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ci = load i32, ptr @hf_ppi_sensor_sensortype, align 4
  %i.cj = tail call ptr @proto_tree_add_uint(ptr noundef %i.l, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.af, i32 noundef 2, i32 noundef %i.cf)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.cj, ptr noundef nonnull @.str.91, ptr noundef %i.cg)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.j, ptr noundef nonnull @.str.92, ptr noundef %i.cg)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ck = add <2 x i32> %i.ae, <i32 -2, i32 2>
  br label %bb.cd

bb.al:                                            ; preds = %bb.ag
  %i.cl = icmp eq i32 %i.ag, 0
  %i.cm = insertelement <2 x i32> %i.ae, i32 0, i64 0
  br i1 %i.cl, label %bb.cd, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cn = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.af) ; 2 uses
  %i.co = load i32, ptr @hf_ppi_sensor_scalefactor, align 4
  %i.cp = sext i8 %i.cn to i32
  %i.cq = tail call ptr @proto_tree_add_int(ptr noundef %i.l, i32 noundef %i.co, ptr noundef %0, i32 noundef %i.af, i32 noundef 1, i32 noundef %i.cp) ; 0 uses
  %i.cr = add <2 x i32> %i.ae, <i32 -1, i32 1>
  br label %bb.cd

.thread:                                          ; preds = %bb.ae
  %i.cs = icmp ult i32 %i.ag, 4
  br i1 %i.cs, label %bb.cd, label %bb.an

bb.an:                                            ; preds = %.thread
  %i.ct = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.af)
  %i.cu = tail call double @ppi_fixed6_4_to_double(i32 noundef %i.ct) ; 2 uses
  br i1 %.not323, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cv = load i32, ptr @hf_ppi_sensor_val_x, align 4
  %i.cw = tail call ptr @proto_tree_add_double(ptr noundef %i.l, i32 noundef %i.cv, ptr noundef %0, i32 noundef %i.af, i32 noundef 4, double noundef %i.cu)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.cw, ptr noundef nonnull @.str.91, ptr noundef %.0263347)
  %i.cx = icmp eq i8 %.0350, 0
  br i1 %i.cx, label %base_10_expt.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cy = tail call i8 @llvm.abs.i8(i8 %.0350, i1 false)
  %spec.select.i = zext i8 %i.cy to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.0914.i = phi double [ 1.000000e+00, %bb.ap ], [ %i.cz, %bb.aq ]
  %.113.i = phi i32 [ %spec.select.i, %bb.ap ], [ %i.da, %bb.aq ] ; 2 uses
  %i.cz = fmul double %.0914.i, 1.000000e+01      ; 3 uses
  %i.da = add nsw i32 %.113.i, -1
  %4 = icmp samesign ugt i32 %.113.i, 1
  br i1 %4, label %bb.aq, label %bb.ar, !llvm.loop !6

bb.ar:                                            ; preds = %bb.aq
  %i.db = icmp sgt i8 %.0350, -1
  br i1 %i.db, label %base_10_expt.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dc = fdiv double 1.000000e+00, %i.cz
  br label %base_10_expt.exit

base_10_expt.exit:                                ; preds = %bb.ao, %bb.ar, %bb.as
  %.011.i = phi double [ 1.000000e+00, %bb.ao ], [ %i.dc, %bb.as ], [ %i.cz, %bb.ar ]
  %i.dd = fmul double %i.cu, %.011.i
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.j, ptr noundef nonnull @.str.93, ptr noundef %.0265346, double noundef %i.dd, ptr noundef %.0263347)
  br label %bb.at

bb.at:                                            ; preds = %base_10_expt.exit, %bb.an
  %i.de = add <2 x i32> %i.ae, <i32 -4, i32 4>
  br label %bb.cd

.thread340:                                       ; preds = %bb.ae
  %i.df = icmp ult i32 %i.ag, 4
  br i1 %i.df, label %bb.cd, label %bb.au

bb.au:                                            ; preds = %.thread340
  %i.dg = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.af)
  %i.dh = tail call double @ppi_fixed6_4_to_double(i32 noundef %i.dg) ; 2 uses
  br i1 %.not323, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.di = load i32, ptr @hf_ppi_sensor_val_y, align 4
  %i.dj = tail call ptr @proto_tree_add_double(ptr noundef %i.l, i32 noundef %i.di, ptr noundef %0, i32 noundef %i.af, i32 noundef 4, double noundef %i.dh)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.dj, ptr noundef nonnull @.str.91, ptr noundef %.0263347)
  %i.dk = icmp eq i8 %.0350, 0
  br i1 %i.dk, label %base_10_expt.exit329, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dl = tail call i8 @llvm.abs.i8(i8 %.0350, i1 false)
  %spec.select.i325 = zext i8 %i.dl to i32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bb.aw
  %.0914.i326 = phi double [ 1.000000e+00, %bb.aw ], [ %i.dm, %bb.ax ]
  %.113.i327 = phi i32 [ %spec.select.i325, %bb.aw ], [ %i.dn, %bb.ax ] ; 2 uses
  %i.dm = fmul double %.0914.i326, 1.000000e+01   ; 3 uses
  %i.dn = add nsw i32 %.113.i327, -1
  %5 = icmp samesign ugt i32 %.113.i327, 1
  br i1 %5, label %bb.ax, label %bb.ay, !llvm.loop !6

bb.ay:                                            ; preds = %bb.ax
  %i.do = icmp sgt i8 %.0350, -1
  br i1 %i.do, label %base_10_expt.exit329, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dp = fdiv double 1.000000e+00, %i.dm
  br label %base_10_expt.exit329

base_10_expt.exit329:                             ; preds = %bb.av, %bb.ay, %bb.az
  %.011.i328 = phi double [ 1.000000e+00, %bb.av ], [ %i.dp, %bb.az ], [ %i.dm, %bb.ay ]
  %i.dq = fmul double %i.dh, %.011.i328
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.j, ptr noundef nonnull @.str.93, ptr noundef %.0265346, double noundef %i.dq, ptr noundef %.0263347)
  br label %bb.ba

bb.ba:                                            ; preds = %base_10_expt.exit329, %bb.au
  %i.dr = add <2 x i32> %i.ae, <i32 -4, i32 4>
  br label %bb.cd

bb.bb:                                            ; preds = %bb.ag
  %i.ds = icmp ult i32 %i.ag, 4
  br i1 %i.ds, label %bb.cd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dt = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.af)
  %i.du = tail call double @ppi_fixed6_4_to_double(i32 noundef %i.dt) ; 2 uses
  br i1 %.not323, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dv = load i32, ptr @hf_ppi_sensor_val_z, align 4
  %i.dw = tail call ptr @proto_tree_add_double(ptr noundef %i.l, i32 noundef %i.dv, ptr noundef %0, i32 noundef %i.af, i32 noundef 4, double noundef %i.du)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.dw, ptr noundef nonnull @.str.91, ptr noundef %.0263347)
  %i.dx = icmp eq i8 %.0350, 0
  br i1 %i.dx, label %base_10_expt.exit334, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dy = tail call i8 @llvm.abs.i8(i8 %.0350, i1 false)
  %spec.select.i330 = zext i8 %i.dy to i32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %bb.be
  %.0914.i331 = phi double [ 1.000000e+00, %bb.be ], [ %i.dz, %bb.bf ]
  %.113.i332 = phi i32 [ %spec.select.i330, %bb.be ], [ %i.ea, %bb.bf ] ; 2 uses
  %i.dz = fmul double %.0914.i331, 1.000000e+01   ; 3 uses
  %i.ea = add nsw i32 %.113.i332, -1
  %6 = icmp samesign ugt i32 %.113.i332, 1
  br i1 %6, label %bb.bf, label %bb.bg, !llvm.loop !6

bb.bg:                                            ; preds = %bb.bf
  %i.eb = icmp sgt i8 %.0350, -1
  br i1 %i.eb, label %base_10_expt.exit334, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ec = fdiv double 1.000000e+00, %i.dz
  br label %base_10_expt.exit334

base_10_expt.exit334:                             ; preds = %bb.bd, %bb.bg, %bb.bh
  %.011.i333 = phi double [ 1.000000e+00, %bb.bd ], [ %i.ec, %bb.bh ], [ %i.dz, %bb.bg ]
  %i.ed = fmul double %i.du, %.011.i333
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.j, ptr noundef nonnull @.str.93, ptr noundef %.0265346, double noundef %i.ed, ptr noundef %.0263347)
  br label %bb.bi

bb.bi:                                            ; preds = %base_10_expt.exit334, %bb.bc
  %i.ee = add <2 x i32> %i.ae, <i32 -4, i32 4>
  br label %bb.cd

bb.bj:                                            ; preds = %bb.ag
  %i.ef = icmp ult i32 %i.ag, 4
  br i1 %i.ef, label %bb.cd, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eg = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.af)
  %i.eh = tail call double @ppi_fixed6_4_to_double(i32 noundef %i.eg) ; 2 uses
  br i1 %.not323, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ei = load i32, ptr @hf_ppi_sensor_val_t, align 4
  %i.ej = tail call ptr @proto_tree_add_double(ptr noundef %i.l, i32 noundef %i.ei, ptr noundef %0, i32 noundef %i.af, i32 noundef 4, double noundef %i.eh)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ej, ptr noundef nonnull @.str.91, ptr noundef %.0263347)
  %i.ek = icmp eq i8 %.0350, 0
  br i1 %i.ek, label %base_10_expt.exit339, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.el = tail call i8 @llvm.abs.i8(i8 %.0350, i1 false)
  %spec.select.i335 = zext i8 %i.el to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %bb.bm
  %.0914.i336 = phi double [ 1.000000e+00, %bb.bm ], [ %i.em, %bb.bn ]
  %.113.i337 = phi i32 [ %spec.select.i335, %bb.bm ], [ %i.en, %bb.bn ] ; 2 uses
  %i.em = fmul double %.0914.i336, 1.000000e+01   ; 3 uses
  %i.en = add nsw i32 %.113.i337, -1
  %7 = icmp samesign ugt i32 %.113.i337, 1
  br i1 %7, label %bb.bn, label %bb.bo, !llvm.loop !6

bb.bo:                                            ; preds = %bb.bn
  %i.eo = icmp sgt i8 %.0350, -1
  br i1 %i.eo, label %base_10_expt.exit339, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ep = fdiv double 1.000000e+00, %i.em
  br label %base_10_expt.exit339

base_10_expt.exit339:                             ; preds = %bb.bl, %bb.bo, %bb.bp
  %.011.i338 = phi double [ 1.000000e+00, %bb.bl ], [ %i.ep, %bb.bp ], [ %i.em, %bb.bo ]
  %i.eq = fmul double %i.eh, %.011.i338
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.j, ptr noundef nonnull @.str.93, ptr noundef %.0265346, double noundef %i.eq, ptr noundef %.0263347)
  br label %bb.bq

bb.bq:                                            ; preds = %base_10_expt.exit339, %bb.bk
  %i.er = add <2 x i32> %i.ae, <i32 -4, i32 4>
  br label %bb.cd

bb.br:                                            ; preds = %bb.ag
  %i.es = icmp ult i32 %i.ag, 4
  br i1 %i.es, label %bb.cd, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.et = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.af)
  %i.eu = tail call double @ppi_fixed6_4_to_double(i32 noundef %i.et)
  br i1 %.not323, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ev = load i32, ptr @hf_ppi_sensor_val_e, align 4
  %i.ew = tail call ptr @proto_tree_add_double(ptr noundef %i.l, i32 noundef %i.ev, ptr noundef %0, i32 noundef %i.af, i32 noundef 4, double noundef %i.eu)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ew, ptr noundef nonnull @.str.91, ptr noundef %.0263347)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ex = add <2 x i32> %i.ae, <i32 -4, i32 4>
  br label %bb.cd

bb.bv:                                            ; preds = %bb.ag
  %i.ey = icmp ult i32 %i.ag, 32
  br i1 %i.ey, label %bb.cd, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  br i1 %.not323, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ez = load ptr, ptr %i.ac, align 8
  %i.fa = tail call ptr @tvb_format_stringzpad(ptr noundef %i.ez, ptr noundef %0, i32 noundef %i.af, i32 noundef 32) ; 2 uses
  %i.fb = load i32, ptr @hf_ppi_sensor_descstr, align 4
  %i.fc = tail call ptr @proto_tree_add_string(ptr noundef %i.l, i32 noundef %i.fb, ptr noundef %0, i32 noundef %i.af, i32 noundef 32, ptr noundef %i.fa) ; 0 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.j, ptr noundef nonnull @.str.94, ptr noundef %i.fa)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.fd = add <2 x i32> %i.ae, <i32 -32, i32 32>
  br label %bb.cd

bb.bz:                                            ; preds = %bb.ag
  %i.fe = icmp ult i32 %i.ag, 4
  br i1 %i.fe, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ff = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.af)
  %i.fg = load i32, ptr @hf_ppi_sensor_appspecific_num, align 4
  %i.fh = tail call ptr @proto_tree_add_uint(ptr noundef %i.l, i32 noundef %i.fg, ptr noundef %0, i32 noundef %i.af, i32 noundef 4, i32 noundef %i.ff) ; 0 uses
  %i.fi = add <2 x i32> %i.ae, <i32 -4, i32 4>
  br label %bb.cd

bb.cb:                                            ; preds = %bb.ag
  %i.fj = icmp ult i32 %i.ag, 60
  br i1 %i.fj, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fk = load i32, ptr @hf_ppi_sensor_appspecific_data, align 4
  %i.fl = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.fk, ptr noundef %0, i32 noundef %i.af, i32 noundef 60, i32 noundef 0) ; 0 uses
  %i.fm = add <2 x i32> %i.ae, <i32 -60, i32 60>
  br label %bb.cd

.thread369:                                       ; preds = %bb.ag
  %i.fn = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aa, ptr noundef nonnull @ei_ppi_sensor_present_bit, ptr noundef nonnull @.str.95, i32 noundef %i.cc) ; 0 uses
  br label %._crit_edge

bb.cd:                                            ; preds = %bb.ak, %bb.am, %bb.at, %bb.ba, %bb.bi, %bb.bq, %bb.bu, %bb.by, %bb.ca, %bb.cc, %bb.ah, %bb.al, %.thread, %.thread340, %bb.bb, %bb.bj, %bb.br, %bb.bv, %bb.bz, %bb.cb
  %.1266 = phi ptr [ %.0265346, %bb.cc ], [ %.0265346, %bb.ah ], [ %i.cg, %bb.ak ], [ %.0265346, %bb.al ], [ %.0265346, %bb.am ], [ %.0265346, %.thread ], [ %.0265346, %bb.at ], [ %.0265346, %.thread340 ], [ %.0265346, %bb.ba ], [ %.0265346, %bb.bb ], [ %.0265346, %bb.bi ], [ %.0265346, %bb.bj ], [ %.0265346, %bb.bq ], [ %.0265346, %bb.br ], [ %.0265346, %bb.bu ], [ %.0265346, %bb.bv ], [ %.0265346, %bb.by ], [ %.0265346, %bb.bz ], [ %.0265346, %bb.ca ], [ %.0265346, %bb.cb ]
  %.1264 = phi ptr [ %.0263347, %bb.cc ], [ %.0263347, %bb.ah ], [ %i.ch, %bb.ak ], [ %.0263347, %bb.al ], [ %.0263347, %bb.am ], [ %.0263347, %.thread ], [ %.0263347, %bb.at ], [ %.0263347, %.thread340 ], [ %.0263347, %bb.ba ], [ %.0263347, %bb.bb ], [ %.0263347, %bb.bi ], [ %.0263347, %bb.bj ], [ %.0263347, %bb.bq ], [ %.0263347, %bb.br ], [ %.0263347, %bb.bu ], [ %.0263347, %bb.bv ], [ %.0263347, %bb.by ], [ %.0263347, %bb.bz ], [ %.0263347, %bb.ca ], [ %.0263347, %bb.cb ]
  %.1 = phi i8 [ %.0350, %bb.cc ], [ %.0350, %bb.ah ], [ %.0350, %bb.ak ], [ %.0350, %bb.al ], [ %i.cn, %bb.am ], [ %.0350, %.thread ], [ %.0350, %bb.at ], [ %.0350, %.thread340 ], [ %.0350, %bb.ba ], [ %.0350, %bb.bb ], [ %.0350, %bb.bi ], [ %.0350, %bb.bj ], [ %.0350, %bb.bq ], [ %.0350, %bb.br ], [ %.0350, %bb.bu ], [ %.0350, %bb.bv ], [ %.0350, %bb.by ], [ %.0350, %bb.bz ], [ %.0350, %bb.ca ], [ %.0350, %bb.cb ]
  %i.fo = phi <2 x i32> [ %i.fm, %bb.cc ], [ %i.ae, %bb.ah ], [ %i.ck, %bb.ak ], [ %i.cm, %bb.al ], [ %i.cr, %bb.am ], [ %i.ae, %.thread ], [ %i.de, %bb.at ], [ %i.ae, %.thread340 ], [ %i.dr, %bb.ba ], [ %i.ae, %bb.bb ], [ %i.ee, %bb.bi ], [ %i.ae, %bb.bj ], [ %i.er, %bb.bq ], [ %i.ae, %bb.br ], [ %i.ex, %bb.bu ], [ %i.ae, %bb.bv ], [ %i.fd, %bb.by ], [ %i.ae, %bb.bz ], [ %i.fi, %bb.ca ], [ %i.ae, %bb.cb ]
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.cd, %.thread369, %bb.g
  %i.fp = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.ce

bb.ce:                                            ; preds = %._crit_edge, %bb.f, %bb.d
  %.0269 = phi i32 [ 2, %bb.d ], [ 2, %bb.f ], [ %i.fp, %._crit_edge ]
  ret i32 %.0269
}

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare double @ppi_fixed6_4_to_double(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_double(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_format_stringzpad(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #2

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !8}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
end_hunk_0
