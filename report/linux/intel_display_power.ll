Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_display_power?download=true
inline.NumInlined: 438
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@icl_display_core_init:bb.a
  %i.ar = getelementptr i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = and i64 %i.as, 72057594037927936
  %.not42 = icmp eq i64 %i.at, 0
  br i1 %.not42, label %gen12_dbuf_slices_config.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = getelementptr i8, ptr %0, i64 1160      ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 44
  %i.ax = load i8, ptr %i.aw, align 2
  %i.ay = zext i8 %i.ax to i64                    ; 2 uses
  %i.az = and i64 %i.ay, 1
  %.not.i45 = icmp eq i64 %i.az, 0
  br i1 %.not.i45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 282632) #7
  %.val.i.i46 = load ptr, ptr %0, align 8
  %i.ba = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i46) #7 ; 4 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 144
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call i32 %i.bc(ptr noundef %i.ba, i32 282632, i1 noundef zeroext true) #7, !inline_history !147
  %i.be = and i32 %i.bd, -16252929
  %i.bf = or disjoint i32 %i.be, 4194304
  %i.bg = getelementptr i8, ptr %i.ba, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef %i.ba, i32 282632, i32 noundef %i.bf, i1 noundef zeroext true) #7, !inline_history !148
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 282632) #7
  %.pre.i = load ptr, ptr %i.au, align 8
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 44
  %.pre7.i = load i8, ptr %.phi.trans.insert.i, align 2
  %.pre14.i = zext i8 %.pre7.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi.i = phi i64 [ %.pre14.i, %bb.j ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bi = and i64 %.pre-phi.i, 2
  %.not.1.i = icmp eq i64 %i.bi, 0
  br i1 %.not.1.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 282600) #7
  %.val.i.1.i = load ptr, ptr %0, align 8
  %i.bj = tail call ptr @to_intel_uncore(ptr noundef %.val.i.1.i) #7 ; 4 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call i32 %i.bl(ptr noundef %i.bj, i32 282600, i1 noundef zeroext true) #7, !inline_history !147
  %i.bn = and i32 %i.bm, -16252929
  %i.bo = or disjoint i32 %i.bn, 4194304
  %i.bp = getelementptr i8, ptr %i.bj, i64 176
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef %i.bj, i32 282600, i32 noundef %i.bo, i1 noundef zeroext true) #7, !inline_history !148
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 282600) #7
  %.pre8.i = load ptr, ptr %i.au, align 8
  %.phi.trans.insert9.i = getelementptr i8, ptr %.pre8.i, i64 44
  %.pre10.i = load i8, ptr %.phi.trans.insert9.i, align 2
  %.pre15.i = zext i8 %.pre10.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi16.i = phi i64 [ %.pre15.i, %bb.l ], [ %.pre-phi.i, %bb.k ] ; 2 uses
  %i.br = and i64 %.pre-phi16.i, 4
  %.not.2.i = icmp eq i64 %i.br, 0
  br i1 %.not.2.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 279296) #7
  %.val.i.2.i = load ptr, ptr %0, align 8
  %i.bs = tail call ptr @to_intel_uncore(ptr noundef %.val.i.2.i) #7 ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call i32 %i.bu(ptr noundef %i.bs, i32 279296, i1 noundef zeroext true) #7, !inline_history !147
  %i.bw = and i32 %i.bv, -16252929
  %i.bx = or disjoint i32 %i.bw, 4194304
  %i.by = getelementptr i8, ptr %i.bs, i64 176
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef %i.bs, i32 279296, i32 noundef %i.bx, i1 noundef zeroext true) #7, !inline_history !148
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 279296) #7
  %.pre11.i = load ptr, ptr %i.au, align 8
  %.phi.trans.insert12.i = getelementptr i8, ptr %.pre11.i, i64 44
  %.pre13.i = load i8, ptr %.phi.trans.insert12.i, align 2
  %.pre17.i = zext i8 %.pre13.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi18.i = phi i64 [ %.pre17.i, %bb.n ], [ %.pre-phi16.i, %bb.m ]
  %i.ca = and i64 %.pre-phi18.i, 8
  %.not.3.i = icmp eq i64 %i.ca, 0
  br i1 %.not.3.i, label %gen12_dbuf_slices_config.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 279300) #7
  %.val.i.3.i = load ptr, ptr %0, align 8
  %i.cb = tail call ptr @to_intel_uncore(ptr noundef %.val.i.3.i) #7 ; 4 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 144
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call i32 %i.cd(ptr noundef %i.cb, i32 279300, i1 noundef zeroext true) #7, !inline_history !147
  %i.cf = and i32 %i.ce, -16252929
  %i.cg = or disjoint i32 %i.cf, 4194304
  %i.ch = getelementptr i8, ptr %i.cb, i64 176
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef %i.cb, i32 279300, i32 noundef %i.cg, i1 noundef zeroext true) #7, !inline_history !148
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 279300) #7
  br label %gen12_dbuf_slices_config.exit

gen12_dbuf_slices_config.exit:                    ; preds = %bb.p, %bb.o, %bb.h
  %i.cj = tail call zeroext i8 @intel_enabled_dbuf_slices_mask(ptr noundef %0) #7 ; 2 uses
  %i.ck = getelementptr i8, ptr %0, i64 712
  store i8 %i.cj, ptr %i.ck, align 8
  %i.cl = or i8 %i.cj, 1                          ; 2 uses
  %i.cm = load i16, ptr %i.i, align 8
  %i.cn = icmp ugt i16 %i.cm, 13
  br i1 %i.cn, label %bb.q, label %gen9_dbuf_enable.exit

bb.q:                                             ; preds = %gen12_dbuf_slices_config.exit
  tail call void @intel_pmdemand_program_dbuf(ptr noundef %0, i8 noundef zeroext %i.cl) #7
  br label %gen9_dbuf_enable.exit

gen9_dbuf_enable.exit:                            ; preds = %gen12_dbuf_slices_config.exit, %bb.q
  tail call void @gen9_dbuf_slices_update(ptr noundef %0, i8 noundef zeroext %i.cl) #9
  %i.co = getelementptr i8, ptr %0, i64 1160      ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr i8, ptr %i.cp, i64 40
  %i.cr = load i8, ptr %i.cq, align 4
  %i.cs = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = and i64 %i.ct, 4503599627370496
  %.not.i47 = icmp eq i64 %i.cu, 0
  %.pr.pre63 = load i16, ptr %i.i, align 8        ; 3 uses
  br i1 %.not.i47, label %bb.r, label %icl_mbus_init.exit

bb.r:                                             ; preds = %gen9_dbuf_enable.exit
  %i.cv = icmp ugt i16 %.pr.pre63, 13
  br i1 %i.cv, label %icl_mbus_init.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = icmp eq i16 %.pr.pre63, 12
  %i.cx = zext i1 %i.cw to i8
  %spec.select16.i = or i8 %i.cr, %i.cx
  %spec.select.i = zext i8 %spec.select16.i to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.cy = phi i64 [ 0, %bb.s ], [ %i.ds, %bb.u ]
  %i.cz = shl nsw i64 -1, %i.cy
  %i.da = and i64 %i.cz, %spec.select.i           ; 2 uses
  %.not.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i, label %icl_mbus_init.exit.loopexit, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %bb.t
  %i.db = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.da) #11, !srcloc !158 ; 3 uses
  %i.dc = and i64 %i.db, 4294967232
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.u, label %icl_mbus_init.exit.loopexit

bb.u:                                             ; preds = %find_next_bit.exit.i
  %i.de = trunc i64 %i.db to i32                  ; 2 uses
  %i.df = icmp ult i32 %i.de, 2
  %i.dg = shl nuw nsw i32 %i.de, 4
  %i.dh = add nuw nsw i32 %i.dg, 282680
  %i.di = select i1 %i.df, i32 %i.dh, i32 282700  ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.di) #7
  %.val.i.i48 = load ptr, ptr %0, align 8
  %i.dj = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i48) #7 ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 144
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call i32 %i.dl(ptr noundef %i.dj, i32 %i.di, i1 noundef zeroext true) #7, !inline_history !149
  %i.dn = and i32 %i.dm, -4136736
  %i.do = or disjoint i32 %i.dn, 1118224
  %i.dp = getelementptr i8, ptr %i.dj, i64 176
  %i.dq = load ptr, ptr %i.dp, align 8
  tail call void %i.dq(ptr noundef %i.dj, i32 %i.di, i32 noundef %i.do, i1 noundef zeroext true) #7, !inline_history !150
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.di) #7
  %i.dr = add nuw nsw i64 %i.db, 1
  %i.ds = and i64 %i.dr, 127                      ; 2 uses
  %i.dt = icmp samesign ugt i64 %i.ds, 63
  br i1 %i.dt, label %icl_mbus_init.exit.loopexit, label %bb.t, !prof !159, !llvm.loop !151

icl_mbus_init.exit.loopexit:                      ; preds = %bb.u, %find_next_bit.exit.i, %bb.t
  %.pr.pre = load i16, ptr %i.i, align 8
  br label %icl_mbus_init.exit

icl_mbus_init.exit:                               ; preds = %icl_mbus_init.exit.loopexit, %gen9_dbuf_enable.exit
  %.pr = phi i16 [ %.pr.pre, %icl_mbus_init.exit.loopexit ], [ %.pr.pre63, %gen9_dbuf_enable.exit ]
  %i.du = icmp ugt i16 %.pr, 11
  br i1 %i.du, label %icl_mbus_init.exit.thread, label %tgl_bw_buddy_init.exit

icl_mbus_init.exit.thread:                        ; preds = %bb.r, %icl_mbus_init.exit
  %i.dv = tail call ptr @intel_dram_info(ptr noundef %0) #7 ; 2 uses
  %i.dw = load ptr, ptr %i.co, align 8
  %i.dx = getelementptr i8, ptr %i.dw, i64 40
  %i.dy = load i8, ptr %i.dx, align 4
  %i.dz = zext i8 %i.dy to i64                    ; 2 uses
  %i.ea = load i64, ptr %i.cs, align 8
  %i.eb = and i64 %i.ea, 562949953421316
  %or.cond.i = icmp eq i64 %i.eb, 4
  br i1 %or.cond.i, label %tgl_bw_buddy_init.exit, label %bb.v

bb.v:                                             ; preds = %icl_mbus_init.exit.thread
  %i.ec = tail call zeroext i1 @__intel_display_wa(ptr noundef %0, i32 noundef 1, ptr noundef @.str.79) #7
  %wa_1409767108_buddy_page_masks.tgl_buddy_page_masks.i = select i1 %i.ec, ptr @wa_1409767108_buddy_page_masks, ptr @tgl_buddy_page_masks ; 3 uses
  %2 = load i32, ptr %wa_1409767108_buddy_page_masks.tgl_buddy_page_masks.i, align 16 ; 2 uses
  %.not3651.i = icmp eq i32 %2, 0
  br i1 %.not3651.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v
  %3 = getelementptr i8, ptr %i.dv, i64 12
  %4 = load i8, ptr %3, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.lr.ph.i
  %i.ed = phi i32 [ %2, %.lr.ph.i ], [ %i.eq, %bb.y ]
  %i.ee = phi ptr [ %wa_1409767108_buddy_page_masks.tgl_buddy_page_masks.i, %.lr.ph.i ], [ %i.ep, %bb.y ] ; 2 uses
  %.03352.i = phi i32 [ 0, %.lr.ph.i ], [ %i.en, %bb.y ]
  %i.ef = getelementptr i8, ptr %i.ee, i64 5
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = icmp eq i8 %i.eg, %4
  br i1 %i.eh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ei = getelementptr i8, ptr %i.ee, i64 4
  %i.ej = load i8, ptr %i.ei, align 4
  %i.ek = zext i8 %i.ej to i32
  %i.el = load i32, ptr %i.dv, align 4
  %i.em = icmp eq i32 %i.el, %i.ek
  br i1 %i.em, label %.preheader.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.en = add i32 %.03352.i, 1                    ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr [8 x i8], ptr %wa_1409767108_buddy_page_masks.tgl_buddy_page_masks.i, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8            ; 2 uses
  %.not36.i = icmp eq i32 %i.eq, 0
  br i1 %.not36.i, label %._crit_edge.i, label %bb.w, !llvm.loop !152

._crit_edge.i:                                    ; preds = %bb.y, %bb.v
  %i.er = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i43.i = icmp eq ptr %i.er, null
  br i1 %.not.i43.i, label %__drm_to_dev.exit.i, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  %i.es = getelementptr i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.z, %._crit_edge.i
  %i.eu = phi ptr [ %i.et, %bb.z ], [ null, %._crit_edge.i ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.eu, i32 noundef 2, ptr noundef @.str.80) #7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %__drm_to_dev.exit.i
  %i.ev = phi i64 [ 0, %__drm_to_dev.exit.i ], [ %sext38.i, %bb.ab ]
  %i.ew = shl nsw i64 -1, %i.ev
  %i.ex = and i64 %i.ew, %i.dz                    ; 2 uses
  %.not.i40.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i40.i, label %tgl_bw_buddy_init.exit, label %find_next_bit.exit42.i

find_next_bit.exit42.i:                           ; preds = %bb.aa
  %i.ey = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.ex) #11, !srcloc !158 ; 3 uses
  %i.ez = and i64 %i.ey, 4294967232
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.ab, label %tgl_bw_buddy_init.exit

bb.ab:                                            ; preds = %find_next_bit.exit42.i
  %i.fb = trunc i64 %i.ey to i32
  %i.fc = shl nuw nsw i32 %i.fb, 4
  %i.fd = add nuw nsw i32 %i.fc, 282928           ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.fd) #7
  %.val.i.i49 = load ptr, ptr %0, align 8
  %i.fe = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i49) #7 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 176
  %i.fg = load ptr, ptr %i.ff, align 8
  tail call void %i.fg(ptr noundef %i.fe, i32 %i.fd, i32 noundef -2147483648, i1 noundef zeroext true) #7, !inline_history !153
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.fd) #7
  %i.fh = and i64 %i.ey, 63                       ; 2 uses
  %sext38.i = add nuw nsw i64 %i.fh, 1
  %i.fi = icmp eq i64 %i.fh, 63
  br i1 %i.fi, label %tgl_bw_buddy_init.exit, label %bb.aa, !prof !159, !llvm.loop !154

.preheader.i:                                     ; preds = %bb.x, %bb.ae
  %i.fj = phi i64 [ %sext.i, %bb.ae ], [ 0, %bb.x ]
  %i.fk = shl nsw i64 -1, %i.fj
  %i.fl = and i64 %i.fk, %i.dz                    ; 2 uses
  %.not.i.i50 = icmp eq i64 %i.fl, 0
  br i1 %.not.i.i50, label %tgl_bw_buddy_init.exit, label %find_next_bit.exit.i51

find_next_bit.exit.i51:                           ; preds = %.preheader.i
  %i.fm = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.fl) #11, !srcloc !158 ; 3 uses
  %i.fn = and i64 %i.fm, 4294967232
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.ac, label %tgl_bw_buddy_init.exit

bb.ac:                                            ; preds = %find_next_bit.exit.i51
  %i.fp = trunc i64 %i.fm to i32
  %i.fq = shl nuw nsw i32 %i.fp, 4                ; 2 uses
  %i.fr = add nuw nsw i32 %i.fq, 282932           ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.fr) #7
  %.val.i44.i = load ptr, ptr %0, align 8
  %i.fs = tail call ptr @to_intel_uncore(ptr noundef %.val.i44.i) #7 ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 176
  %i.fu = load ptr, ptr %i.ft, align 8
  tail call void %i.fu(ptr noundef %i.fs, i32 %i.fr, i32 noundef %i.ed, i1 noundef zeroext true) #7, !inline_history !153
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.fr) #7
  %i.fv = tail call zeroext i1 @__intel_display_wa(ptr noundef %0, i32 noundef 27, ptr noundef @.str.81) #7
  br i1 %i.fv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fw = add nuw nsw i32 %i.fq, 282928           ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.fw) #7
  %.val.i45.i = load ptr, ptr %0, align 8
  %i.fx = tail call ptr @to_intel_uncore(ptr noundef %.val.i45.i) #7 ; 4 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 144
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = tail call i32 %i.fz(ptr noundef %i.fx, i32 %i.fw, i1 noundef zeroext true) #7, !inline_history !155
  %i.gb = and i32 %i.ga, -4128769
  %i.gc = or disjoint i32 %i.gb, 524288
  %i.gd = getelementptr i8, ptr %i.fx, i64 176
  %i.ge = load ptr, ptr %i.gd, align 8
  tail call void %i.ge(ptr noundef %i.fx, i32 %i.fw, i32 noundef %i.gc, i1 noundef zeroext true) #7, !inline_history !156
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.fw) #7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gf = and i64 %i.fm, 63                       ; 2 uses
  %sext.i = add nuw nsw i64 %i.gf, 1
  %i.gg = icmp eq i64 %i.gf, 63
  br i1 %i.gg, label %tgl_bw_buddy_init.exit, label %.preheader.i, !prof !159, !llvm.loop !157

tgl_bw_buddy_init.exit:                           ; preds = %bb.ae, %find_next_bit.exit.i51, %.preheader.i, %bb.ab, %find_next_bit.exit42.i, %bb.aa, %icl_mbus_init.exit.thread, %icl_mbus_init.exit
  %i.gh = load i64, ptr %i.cs, align 8
  %i.gi = and i64 %i.gh, 72057594037927936
  %.not43 = icmp eq i64 %i.gi, 0
  br i1 %.not43, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %tgl_bw_buddy_init.exit
  tail call void @intel_snps_phy_wait_for_calibration(ptr noundef %0) #7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %tgl_bw_buddy_init.exit
  %i.gj = load i16, ptr %i.i, align 8
  %i.gk = zext i16 %i.gj to i32
  %i.gl = mul nuw nsw i32 %i.gk, 100
  %i.gm = getelementptr i8, ptr %0, i64 1170
  %i.gn = load i16, ptr %i.gm, align 2
  %i.go = zext i16 %i.gn to i32
  %i.gp = add nuw nsw i32 %i.gl, %i.go
  %i.gq = icmp eq i32 %i.gp, 1401
  br i1 %i.gq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 270468) #7
  %.val.i53 = load ptr, ptr %0, align 8
  %i.gr = tail call ptr @to_intel_uncore(ptr noundef %.val.i53) #7 ; 4 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 144
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = tail call i32 %i.gt(ptr noundef %i.gr, i32 270468, i1 noundef zeroext true) #7, !inline_history !2
  %i.gv = and i32 %i.gu, -134217730
  %i.gw = or disjoint i32 %i.gv, 1
  %i.gx = getelementptr i8, ptr %i.gr, i64 176
  %i.gy = load ptr, ptr %i.gx, align 8
  tail call void %i.gy(ptr noundef %i.gr, i32 270468, i32 noundef %i.gw, i1 noundef zeroext true) #7, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 270468) #7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %1, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @intel_dmc_load_program(ptr noundef %0) #7
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gz = tail call zeroext i1 @__intel_display_wa(ptr noundef %0, i32 noundef 10, ptr noundef @.str.76) #7
  br i1 %i.gz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 287796) #7
  %.val.i54 = load ptr, ptr %0, align 8
  %i.ha = tail call ptr @to_intel_uncore(ptr noundef %.val.i54) #7 ; 4 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 144
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = tail call i32 %i.hc(ptr noundef %i.ha, i32 287796, i1 noundef zeroext true) #7, !inline_history !2
  %i.he = or i32 %i.hd, 251658240
  %i.hf = getelementptr i8, ptr %i.ha, i64 176
  %i.hg = load ptr, ptr %i.hf, align 8
  tail call void %i.hg(ptr noundef %i.ha, i32 287796, i32 noundef %i.he, i1 noundef zeroext true) #7, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 287796) #7
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.hh = tail call zeroext i1 @__intel_display_wa(ptr noundef %0, i32 noundef 8, ptr noundef @.str.77) #7
  br i1 %i.hh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 279068) #7
  %.val.i55 = load ptr, ptr %0, align 8
  %i.hi = tail call ptr @to_intel_uncore(ptr noundef %.val.i55) #7 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 176
  %i.hk = load ptr, ptr %i.hj, align 8
  tail call void %i.hk(ptr noundef %i.hi, i32 279068, i32 noundef -1, i1 noundef zeroext true) #7, !inline_history !6
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 279068) #7
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.hl = tail call zeroext i1 @__intel_display_wa(ptr noundef %0, i32 noundef 16, ptr noundef @.str.78) #7
  br i1 %i.hl, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 794656) #7
  %.val.i56 = load ptr, ptr %0, align 8
  %i.hm = tail call ptr @to_intel_uncore(ptr noundef %.val.i56) #7 ; 4 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 144
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = tail call i32 %i.ho(ptr noundef %i.hm, i32 794656, i1 noundef zeroext true) #7, !inline_history !2
  %i.hq = or i32 %i.hp, -2147483648
  %i.hr = getelementptr i8, ptr %i.hm, i64 176
  %i.hs = load ptr, ptr %i.hr, align 8
  tail call void %i.hs(ptr noundef %i.hm, i32 794656, i32 noundef %i.hq, i1 noundef zeroext true) #7, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 794656) #7
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 794656) #7
  %.val.i57 = load ptr, ptr %0, align 8
  %i.ht = tail call ptr @to_intel_uncore(ptr noundef %.val.i57) #7 ; 4 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 144
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = tail call i32 %i.hv(ptr noundef %i.ht, i32 794656, i1 noundef zeroext true) #7, !inline_history !2
  %i.hx = and i32 %i.hw, 2147483647
  %i.hy = getelementptr i8, ptr %i.ht, i64 176
  %i.hz = load ptr, ptr %i.hy, align 8
  tail call void %i.hz(ptr noundef %i.ht, i32 794656, i32 noundef %i.hx, i1 noundef zeroext true) #7, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 794656) #7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %intel_pch_reset_handshake.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_dmc_has_payload(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @skl_enable_dc6(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @gen9_enable_dc5(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @bxt_display_core_init(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @gen9_set_dc_state(ptr noundef %0, i32 noundef 0) #7
  %i.a = getelementptr i8, ptr %0, i64 1168       ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ugt i16 %i.b, 34
  br i1 %i.c, label %intel_pch_reset_handshake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 524288
  %.not.i = icmp eq i64 %i.f, 0                   ; 2 uses
  %..i = select i1 %.not.i, i32 16, i32 3         ; 2 uses
  %.9.i = select i1 %.not.i, i32 287752, i32 282640 ; 4 uses
  %i.g = icmp samesign ugt i16 %i.b, 13
  %i.h = or disjoint i32 %..i, 64
  %.1.i = select i1 %i.g, i32 %i.h, i32 %..i
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %.9.i) #7
  %.val.i.i = load ptr, ptr %0, align 8
  %i.i = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #7 ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 %i.k(ptr noundef %i.i, i32 %.9.i, i1 noundef zeroext true) #7, !inline_history !4
  %i.m = xor i32 %.1.i, -1
  %i.n = and i32 %i.l, %i.m
  %i.o = getelementptr i8, ptr %i.i, i64 176
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef %i.i, i32 %.9.i, i32 noundef %i.n, i1 noundef zeroext true) #7, !inline_history !5
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %.9.i) #7
  br label %intel_pch_reset_handshake.exit

intel_pch_reset_handshake.exit:                   ; preds = %bb.a, %bb.b
  %i.q = getelementptr i8, ptr %0, i64 1188
  %i.r = load i8, ptr %i.q, align 4
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %intel_pch_reset_handshake.exit
  %i.s = getelementptr i8, ptr %0, i64 1456       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.s) #7
  %i.t = tail call ptr @lookup_power_well(ptr noundef %0, i32 noundef 8) #7
  tail call void @intel_power_well_enable(ptr noundef %0, ptr noundef %i.t) #7
  tail call void @mutex_unlock(ptr noundef %i.s) #7
  tail call void @intel_cdclk_init_hw(ptr noundef %0) #7
  %i.u = tail call zeroext i8 @intel_enabled_dbuf_slices_mask(ptr noundef %0) #7 ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 712
  store i8 %i.u, ptr %i.v, align 8
  %i.w = or i8 %i.u, 1                            ; 2 uses
  %i.x = load i16, ptr %i.a, align 8
  %i.y = icmp ugt i16 %i.x, 13
  br i1 %i.y, label %bb.d, label %gen9_dbuf_enable.exit

bb.d:                                             ; preds = %bb.c
  tail call void @intel_pmdemand_program_dbuf(ptr noundef %0, i8 noundef zeroext %i.w) #7
  br label %gen9_dbuf_enable.exit

gen9_dbuf_enable.exit:                            ; preds = %bb.c, %bb.d
  tail call void @gen9_dbuf_slices_update(ptr noundef %0, i8 noundef zeroext %i.w) #9
  br i1 %1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %gen9_dbuf_enable.exit
  tail call void @intel_dmc_load_program(ptr noundef %0) #7
  br label %bb.f

bb.f:                                             ; preds = %gen9_dbuf_enable.exit, %bb.e, %intel_pch_reset_handshake.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_display_power_debug(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1456       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.a) #7
  %i.b = getelementptr i8, ptr %0, i64 1440
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  %i.d = select i1 %.not, ptr @.str.84, ptr @.str.85
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef @.str.13, ptr noundef nonnull %i.d) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef @.str.14, ptr noundef @.str.15, ptr noundef @.str.16) #7
  %i.e = getelementptr i8, ptr %0, i64 1420       ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp sgt i32 %i.f, 0
end_hunk_0
