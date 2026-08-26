Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vlv_dsi?download=true
inline.NumInlined: 269
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@vlv_dsi_init:bb.a
  br i1 %.not.i158, label %__drm_to_dev.exit159, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  br label %__drm_to_dev.exit159

__drm_to_dev.exit159:                             ; preds = %bb.s, %bb.t
  %i.cj = phi ptr [ %i.ci, %bb.t ], [ null, %bb.s ]
  %i.ck = call ptr @dev_driver_string(ptr noundef %i.cj) #9 ; 0 uses
  %i.cl = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.5, i32 1978, i32 2321, i64 16) #11, !srcloc !14
  %i.cm = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i166 = icmp eq ptr %i.cm, null
  br i1 %.not.i166, label %__drm_to_dev.exit167, label %bb.u

bb.u:                                             ; preds = %__drm_to_dev.exit159
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  br label %__drm_to_dev.exit167

__drm_to_dev.exit167:                             ; preds = %__drm_to_dev.exit159, %bb.u
  %i.cp = phi ptr [ %i.co, %bb.u ], [ null, %__drm_to_dev.exit159 ]
  %i.cq = call ptr @dev_driver_string(ptr noundef %i.cp) #9
  %i.cr = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i168 = icmp eq ptr %i.cr, null
  br i1 %.not.i168, label %__drm_to_dev.exit169, label %bb.v

bb.v:                                             ; preds = %__drm_to_dev.exit167
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  br label %__drm_to_dev.exit169

__drm_to_dev.exit169:                             ; preds = %__drm_to_dev.exit167, %bb.v
  %i.cu = phi ptr [ %i.ct, %bb.v ], [ null, %__drm_to_dev.exit167 ] ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 80
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not.i170 = icmp eq ptr %i.cw, null
  br i1 %.not.i170, label %bb.w, label %dev_name.exit173

bb.w:                                             ; preds = %__drm_to_dev.exit169
  %.val.i172 = load ptr, ptr %i.cu, align 8
  br label %dev_name.exit173

dev_name.exit173:                                 ; preds = %__drm_to_dev.exit169, %bb.w
  %.0.i171 = phi ptr [ %.val.i172, %bb.w ], [ %i.cw, %__drm_to_dev.exit169 ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cl, ptr noundef %i.cq, ptr noundef %.0.i171, ptr noundef nonnull @.str.6) #9
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !15
  %i.cx = load i16, ptr %i.bb, align 8
  %i.cy = load i16, ptr %i.cc, align 2
  %i.cz = and i16 %i.cy, %i.cx
  store i16 %i.cz, ptr %i.cc, align 2
  br label %.critedge144

.critedge144:                                     ; preds = %.critedge, %dev_name.exit173
  store i32 0, ptr %i.a, align 4
  %i.da = getelementptr i8, ptr %i.m, i64 504
  br label %bb.x

bb.x:                                             ; preds = %.critedge144, %bb.z
  %storemerge185 = phi i32 [ 0, %.critedge144 ], [ %i.dl, %bb.z ] ; 3 uses
  %i.db = load i16, ptr %i.bb, align 8
  %i.dc = zext i16 %i.db to i64
  %i.dd = zext nneg i32 %storemerge185 to i64
  %i.de = shl nuw i64 1, %i.dd
  %i.df = and i64 %i.de, %i.dc
  %.not139 = icmp eq i64 %i.df, 0
  br i1 %.not139, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = call ptr @intel_dsi_host_init(ptr noundef nonnull %i.m, ptr noundef nonnull @intel_dsi_host_ops, i32 noundef %storemerge185) #9 ; 2 uses
  %.not140 = icmp eq ptr %i.dg, null
  br i1 %.not140, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.y
  %i.dh = load i32, ptr %i.a, align 4             ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr [8 x i8], ptr %i.da, i64 %i.di
  store ptr %i.dg, ptr %i.dj, align 8
  br label %bb.z

bb.z:                                             ; preds = %.thread, %bb.x
  %i.dk = phi i32 [ %i.dh, %.thread ], [ %storemerge185, %bb.x ]
  %i.dl = add i32 %i.dk, 1                        ; 3 uses
  store i32 %i.dl, ptr %i.a, align 4
  %i.dm = icmp slt i32 %i.dl, 9
  br i1 %i.dm, label %bb.x, label %bb.aa, !llvm.loop !16

bb.aa:                                            ; preds = %bb.z
  %i.dn = call zeroext i1 @intel_dsi_vbt_init(ptr noundef nonnull %i.m, i16 noundef zeroext 1) #9
  br i1 %i.dn, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i174 = icmp eq ptr %i.do, null
  br i1 %.not.i174, label %__drm_to_dev.exit175, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  br label %__drm_to_dev.exit175

__drm_to_dev.exit175:                             ; preds = %bb.ab, %bb.ac
  %i.dr = phi ptr [ %i.dq, %bb.ac ], [ null, %bb.ab ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dr, i32 noundef 2, ptr noundef nonnull @.str.7) #9
  br label %.loopexit

bb.ad:                                            ; preds = %bb.aa
  %i.ds = call ptr @intel_encoder_current_mode(ptr noundef nonnull %i.m) #9 ; 5 uses
  %.not136 = icmp eq ptr %i.ds, null
  br i1 %.not136, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i176 = icmp eq ptr %i.dt, null
  br i1 %.not.i176, label %__drm_to_dev.exit177, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = getelementptr i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  br label %__drm_to_dev.exit177

__drm_to_dev.exit177:                             ; preds = %bb.ae, %bb.af
  %i.dw = phi ptr [ %i.dv, %bb.af ], [ null, %bb.ae ]
  %i.dx = getelementptr i8, ptr %i.m, i64 744     ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = load i32, ptr %i.ds, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dw, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %i.dy, i32 noundef %i.dz) #9
  %i.ea = load i32, ptr %i.dx, align 8
  %i.eb = load i32, ptr %i.ds, align 8
  %i.ec = call zeroext i1 @intel_fuzzy_clock_check(i32 noundef %i.ea, i32 noundef %i.eb) #9
  br i1 %i.ec, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %__drm_to_dev.exit177
  %i.ed = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i178 = icmp eq ptr %i.ed, null
  br i1 %.not.i178, label %__drm_to_dev.exit179, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  br label %__drm_to_dev.exit179

__drm_to_dev.exit179:                             ; preds = %bb.ag, %bb.ah
  %i.eg = phi ptr [ %i.ef, %bb.ah ], [ null, %bb.ag ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.eg, i32 noundef 2, ptr noundef nonnull @.str.9) #9
  %i.eh = load i32, ptr %i.ds, align 8
  store i32 %i.eh, ptr %i.dx, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %__drm_to_dev.exit179, %__drm_to_dev.exit177
  call void @kfree(ptr noundef nonnull %i.ds) #9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad
  %i.ei = load ptr, ptr %i.m, align 8             ; 2 uses
  %.not.i180 = icmp eq ptr %i.ei, null
  br i1 %.not.i180, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ej = call ptr @__drm_to_display(ptr noundef nonnull %i.ei) #9
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ek = phi ptr [ %i.ej, %bb.ak ], [ null, %bb.aj ] ; 5 uses
  %i.el = load ptr, ptr %i.o, align 8
  %i.em = getelementptr i8, ptr %i.el, i64 2544
  %i.en = load ptr, ptr %i.em, align 8            ; 6 uses
  %i.eo = call i32 @intel_dsi_tlpx_ns(ptr noundef nonnull %i.m) #9
  %i.ep = getelementptr i8, ptr %i.m, i64 684
  %i.eq = load i32, ptr %i.ep, align 4
  switch i32 %i.eq, label %bb.an [
    i32 1, label %bb.ao
    i32 2, label %bb.ao
    i32 3, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.al
  %.0.i181 = phi i32 [ 3, %bb.an ], [ 4, %bb.am ], [ 2, %bb.al ], [ 2, %bb.al ] ; 3 uses
  %i.er = call i32 @intel_dsi_bitrate(ptr noundef nonnull %i.m) #9 ; 6 uses
  %i.es = getelementptr i8, ptr %i.en, i64 98
  %i.et = load i16, ptr %i.es, align 1
  %i.eu = zext i16 %i.et to i32
  %i.ev = getelementptr i8, ptr %i.en, i64 105
  %i.ew = load i16, ptr %i.ev, align 1
  %i.ex = zext i16 %i.ew to i32
  %i.ey = mul i32 %i.er, %i.eo                    ; 2 uses
  %i.ez = add i32 %i.ey, 7999999
  %i.fa = udiv i32 %i.ez, 8000000
  %i.fb = trunc nuw nsw i32 %i.fa to i16
  %i.fc = getelementptr i8, ptr %i.m, i64 724
  store i16 %i.fb, ptr %i.fc, align 4
  %i.fd = getelementptr i8, ptr %i.ek, i64 8
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = and i64 %i.fe, 34359738368
  %.not123.i = icmp eq i64 %i.ff, 0               ; 6 uses
  %i.fg = getelementptr i8, ptr %i.en, i64 104
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = getelementptr i8, ptr %i.en, i64 94
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = call i8 @llvm.umax.i8(i8 %i.fh, i8 %i.fj)
  %i.fl = zext i8 %i.fk to i32                    ; 3 uses
  %i.fm = mul i32 %i.er, %i.fl
  %i.fn = select i1 %.not123.i, i32 1999999, i32 7999999 ; 4 uses
  %i.fo = add i32 %i.fm, %i.fn                    ; 2 uses
  %1 = udiv i32 %i.fo, 2000000
  %i.fp = udiv i32 %i.fo, 8000000
  %2 = select i1 %.not123.i, i32 %1, i32 %i.fp    ; 3 uses
  %i.fq = icmp samesign ugt i32 %2, 63
  br i1 %i.fq, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fr = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fs = getelementptr i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.aq, %bb.ap
  %i.fu = phi ptr [ %i.ft, %bb.aq ], [ null, %bb.ap ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.fu, i32 noundef 2, ptr noundef nonnull @.str.32, i32 noundef %2) #9
  br label %bb.ar

bb.ar:                                            ; preds = %__drm_to_dev.exit.i, %bb.ao
  %.0110.i = phi i32 [ 63, %__drm_to_dev.exit.i ], [ %2, %bb.ao ] ; 3 uses
  %i.fv = sub nsw i32 %i.ex, %i.fl
  %i.fw = mul i32 %i.fv, %i.er
  %i.fx = add i32 %i.fw, %i.fn                    ; 2 uses
  %3 = udiv i32 %i.fx, 2000000
  %i.fy = udiv i32 %i.fx, 8000000
  %4 = select i1 %.not123.i, i32 %3, i32 %i.fy    ; 2 uses
  %i.fz = mul i32 %i.er, 55                       ; 2 uses
  %i.ga = udiv i32 %i.fz, 1000000
  %i.gb = icmp samesign ult i32 %4, %i.ga
  %i.gc = urem i32 %i.fz, 1000000
  %.not124.i = icmp ne i32 %i.gc, 0
  %or.cond.not.i = and i1 %.not124.i, %i.gb
  %i.gd = zext i1 %or.cond.not.i to i32
  %.0111.i = add nuw nsw i32 %4, %i.gd            ; 3 uses
  %i.ge = icmp samesign ugt i32 %.0111.i, 63
  br i1 %i.ge, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.gf = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not.i125.i = icmp eq ptr %i.gf, null
  br i1 %.not.i125.i, label %__drm_to_dev.exit126.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  br label %__drm_to_dev.exit126.i

__drm_to_dev.exit126.i:                           ; preds = %bb.at, %bb.as
  %i.gi = phi ptr [ %i.gh, %bb.at ], [ null, %bb.as ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gi, i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %.0111.i) #9
  br label %bb.au

bb.au:                                            ; preds = %__drm_to_dev.exit126.i, %bb.ar
  %.1.i = phi i32 [ 63, %__drm_to_dev.exit126.i ], [ %.0111.i, %bb.ar ] ; 2 uses
  %i.gj = sub nsw i32 %i.eu, %i.fl
  %i.gk = mul i32 %i.gj, %i.er
  %i.gl = add i32 %i.gk, %i.fn                    ; 2 uses
  %5 = udiv i32 %i.gl, 2000000
  %i.gm = udiv i32 %i.gl, 8000000
  %6 = select i1 %.not123.i, i32 %5, i32 %i.gm    ; 3 uses
  %i.gn = icmp samesign ugt i32 %6, 255
  br i1 %i.gn, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.go = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not.i127.i = icmp eq ptr %i.go, null
  br i1 %.not.i127.i, label %__drm_to_dev.exit128.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  br label %__drm_to_dev.exit128.i

__drm_to_dev.exit128.i:                           ; preds = %bb.aw, %bb.av
  %i.gr = phi ptr [ %i.gq, %bb.aw ], [ null, %bb.av ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gr, i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %6) #9
  br label %bb.ax

bb.ax:                                            ; preds = %__drm_to_dev.exit128.i, %bb.au
  %.0112.i = phi i32 [ 255, %__drm_to_dev.exit128.i ], [ %6, %bb.au ] ; 2 uses
  %i.gs = getelementptr i8, ptr %i.en, i64 97
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = getelementptr i8, ptr %i.en, i64 110    ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1
  %i.gw = call i8 @llvm.umax.i8(i8 %i.gt, i8 %i.gv)
  %i.gx = zext i8 %i.gw to i32
  %i.gy = mul i32 %i.er, %i.gx
  %i.gz = add i32 %i.gy, %i.fn                    ; 2 uses
  %7 = udiv i32 %i.gz, 2000000
  %i.ha = udiv i32 %i.gz, 8000000
  %8 = select i1 %.not123.i, i32 %7, i32 %i.ha    ; 3 uses
  %i.hb = icmp samesign ugt i32 %8, 31
  br i1 %i.hb, label %bb.ay, label %vlv_dphy_param_init.exit

bb.ay:                                            ; preds = %bb.ax
  %i.hc = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not.i129.i = icmp eq ptr %i.hc, null
  br i1 %.not.i129.i, label %__drm_to_dev.exit130.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hd = getelementptr i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  br label %__drm_to_dev.exit130.i

__drm_to_dev.exit130.i:                           ; preds = %bb.az, %bb.ay
  %i.hf = phi ptr [ %i.he, %bb.az ], [ null, %bb.ay ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.hf, i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef %8) #9
  br label %vlv_dphy_param_init.exit

vlv_dphy_param_init.exit:                         ; preds = %bb.ax, %__drm_to_dev.exit130.i
  %.0113.i = phi i32 [ 31, %__drm_to_dev.exit130.i ], [ %8, %bb.ax ] ; 2 uses
  %i.hg = shl nuw nsw i32 %.1.i, 24
  %i.hh = shl nuw nsw i32 %.0113.i, 16
  %i.hi = or disjoint i32 %i.hh, %i.hg
  %i.hj = shl nuw nsw i32 %.0112.i, 8
  %i.hk = or disjoint i32 %i.hi, %i.hj
  %i.hl = or disjoint i32 %i.hk, %.0110.i
  %i.hm = getelementptr i8, ptr %i.m, i64 712
  store i32 %i.hl, ptr %i.hm, align 8
  %i.hn = add i32 %i.ey, 999999
  %i.ho = udiv i32 %i.hn, 1000000                 ; 3 uses
  %i.hp = shl nuw nsw i32 %i.ho, 2                ; 2 uses
  %i.hq = select i1 %.not123.i, i32 1, i32 3
  %i.hr = add nuw nsw i32 %.1.i, %.0110.i
  %i.hs = shl nuw nsw i32 %i.hr, %i.hq
  %i.ht = add nuw nsw i32 %i.hp, 16
  %i.hu = add nuw nsw i32 %i.ht, %i.hs
  %i.hv = lshr i32 %i.hu, 3
  %i.hw = load i8, ptr %i.gu, align 1
  %i.hx = zext i8 %i.hw to i32
  %i.hy = shl nuw nsw i32 %i.ho, 1
  %i.hz = add nuw nsw i32 %i.hy, 7
  %i.ia = add nuw nsw i32 %i.hz, %i.hx
  %i.ib = lshr i32 %i.ia, 3
  %i.ic = call i32 @llvm.umax.i32(i32 %i.hv, i32 %i.ib)
  %i.id = getelementptr i8, ptr %i.m, i64 734
  %i.ie = add nuw nsw i32 %i.ic, %.0.i181
  %i.if = trunc nuw nsw i32 %i.ie to i16
  store i16 %i.if, ptr %i.id, align 2
  %i.ig = add nuw nsw i32 %.0112.i, %.0110.i
  %i.ih = shl nuw nsw i32 %i.ig, 1
  %i.ii = add nuw nsw i32 %i.hp, 6
  %i.ij = add nuw nsw i32 %i.ii, %i.ih
  %i.ik = lshr i32 %i.ij, 3
  %i.il = getelementptr i8, ptr %i.m, i64 736
  %i.im = add nuw nsw i32 %i.ik, %.0.i181
  %i.in = trunc nuw nsw i32 %i.im to i16
  store i16 %i.in, ptr %i.il, align 8
  %i.io = add nuw nsw i32 %.0113.i, %i.ho
  %i.ip = shl nuw nsw i32 %i.io, 1
  %i.iq = add nuw nsw i32 %i.ip, 14
  %i.ir = lshr i32 %i.iq, 3
  %i.is = getelementptr i8, ptr %i.m, i64 738
  %i.it = add nuw nsw i32 %i.ir, %.0.i181
  %i.iu = trunc nuw nsw i32 %i.it to i16
  store i16 %i.iu, ptr %i.is, align 2
  call void @intel_dsi_log_params(ptr noundef nonnull %i.m) #9
  %i.iv = call zeroext i1 @intel_dsi_get_hw_state(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b) #13, !srcloc !18
  call void @intel_dsi_vbt_gpio_init(ptr noundef nonnull %i.m, i1 noundef zeroext %i.iv) #9
  %i.iw = load ptr, ptr %0, align 8
  %i.ix = call i32 @drm_connector_init(ptr noundef %i.iw, ptr noundef nonnull %i.n, ptr noundef nonnull @intel_dsi_connector_funcs, i32 noundef 16) #9 ; 0 uses
  %i.iy = getelementptr i8, ptr %i.n, i64 1584
  store ptr @intel_dsi_connector_helper_funcs, ptr %i.iy, align 8
  %i.iz = getelementptr i8, ptr %i.n, i64 204
  store i32 1, ptr %i.iz, align 4
  call void @intel_connector_attach_encoder(ptr noundef nonnull %i.n, ptr noundef nonnull %i.m) #9
  %i.ja = load ptr, ptr %0, align 8
  %i.jb = getelementptr i8, ptr %i.ja, i64 336
  call void @mutex_lock(ptr noundef %i.jb) #9
  call void @intel_panel_add_vbt_lfp_fixed_mode(ptr noundef nonnull %i.n) #9
  %i.jc = load ptr, ptr %0, align 8
  %i.jd = getelementptr i8, ptr %i.jc, i64 336
  call void @mutex_unlock(ptr noundef %i.jd) #9
  %i.je = call ptr @intel_panel_preferred_fixed_mode(ptr noundef nonnull %i.n) #9
  %.not137 = icmp eq ptr %i.je, null
  br i1 %.not137, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %vlv_dphy_param_init.exit
  %i.jf = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i182 = icmp eq ptr %i.jf, null
  br i1 %.not.i182, label %__drm_to_dev.exit183, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jg = getelementptr i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  br label %__drm_to_dev.exit183

__drm_to_dev.exit183:                             ; preds = %bb.ba, %bb.bb
  %i.ji = phi ptr [ %i.jh, %bb.bb ], [ null, %bb.ba ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ji, i32 noundef 2, ptr noundef nonnull @.str.10) #9
  call void @drm_connector_cleanup(ptr noundef nonnull %i.n) #9
  br label %.loopexit

bb.bc:                                            ; preds = %vlv_dphy_param_init.exit
  %i.jj = call ptr @dmi_first_match(ptr noundef nonnull @vlv_dsi_dmi_quirk_table) #9 ; 2 uses
  %.not138 = icmp eq ptr %i.jj, null
  br i1 %.not138, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jk = getelementptr i8, ptr %i.jj, i64 336
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull %i.m) #9
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.jm = call i32 @intel_panel_init(ptr noundef nonnull %i.n, ptr noundef null) #9 ; 0 uses
  %i.jn = call i32 @intel_backlight_setup(ptr noundef nonnull %i.n, i32 noundef -1) #9 ; 0 uses
  %i.jo = call ptr @intel_panel_preferred_fixed_mode(ptr noundef nonnull %i.n) #9 ; 2 uses
  call void @intel_attach_scaling_mode_property(ptr noundef nonnull %i.n) #9
  %i.jp = call i32 @intel_dsi_get_panel_orientation(ptr noundef nonnull %i.n) #9
  %i.jq = getelementptr i8, ptr %i.jo, i64 4
  %i.jr = load i16, ptr %i.jq, align 4
  %i.js = zext i16 %i.jr to i32
  %i.jt = getelementptr i8, ptr %i.jo, i64 14
  %i.ju = load i16, ptr %i.jt, align 2
  %i.jv = zext i16 %i.ju to i32
  %i.jw = call i32 @drm_connector_set_panel_orientation_with_quirk(ptr noundef nonnull %i.n, i32 noundef %i.jp, i32 noundef %i.js, i32 noundef %i.jv) #9 ; 0 uses
  br label %bb.bf

.loopexit:                                        ; preds = %bb.y, %__drm_to_dev.exit183, %__drm_to_dev.exit175
  call void @drm_encoder_cleanup(ptr noundef nonnull %i.m) #9
  call void @kfree(ptr noundef nonnull %i.m) #9
  call void @kfree(ptr noundef nonnull %i.n) #9
  br label %bb.bf

bb.bf:                                            ; preds = %bb.c, %__drm_to_dev.exit, %.loopexit, %bb.be, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_bios_is_dsi_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_connector_alloc() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @intel_dsi_compute_config(ptr noundef %0, ptr noundef initializes((4392, 4400)) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 664
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %1, i64 616
  %i.g = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.j, i32 noundef 2, ptr noundef nonnull @.str.1) #9
  %i.k = getelementptr i8, ptr %1, i64 4396
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %1, i64 4392
  store i32 0, ptr %i.l, align 8
  %i.m = tail call i32 @intel_panel_compute_config(ptr noundef %i.e, ptr noundef %i.f) #9 ; 2 uses
  %.not37 = icmp eq i32 %i.m, 0
  br i1 %.not37, label %bb.e, label %bb.k

bb.e:                                             ; preds = %__drm_to_dev.exit
  %i.n = tail call i32 @intel_pfit_compute_config(ptr noundef %1, ptr noundef %2) #9 ; 2 uses
  %.not38 = icmp eq i32 %i.n, 0
  br i1 %.not38, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %1, i64 640        ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 32
  %.not39 = icmp eq i32 %i.q, 0
  br i1 %.not39, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8
  %i.r = getelementptr i8, ptr %0, i64 692
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 0
  %spec.select = select i1 %i.t, i32 24, i32 18
  %i.u = getelementptr i8, ptr %1, i64 1240
  store i32 %spec.select, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.c, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 36507222016
  %or.cond = icmp eq i64 %i.x, 0
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %1, i64 1328       ; 2 uses
  %i.z = load i8, ptr %i.y, align 8
end_hunk_0
