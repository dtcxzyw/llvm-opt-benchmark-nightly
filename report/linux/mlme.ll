Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mlme?download=true
inline.NumInlined: 873
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@ieee80211_sta_rx_queued_frame:bb.a
  %i.p = getelementptr i8, ptr %1, i64 85
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = and i8 %i.q, 1
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %0, i64 4920
  %i.t = lshr i8 %i.q, 1
  %i.u = and i8 %i.t, 15
  %i.v = zext nneg i8 %i.u to i64
  %i.w = getelementptr [8 x i8], ptr %i.s, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not90 = icmp eq ptr %i.x, null
  br i1 %.not90, label %ieee80211_sta_rx_queued_ext.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.084 = phi ptr [ %i.x, %bb.e ], [ %i.n, %bb.d ] ; 8 uses
  %i.y = lshr i16 %i.e, 4
  %i.z = and i16 %i.y, 15
  switch i16 %i.z, label %ieee80211_sta_rx_queued_ext.exit [
    i16 8, label %bb.g
    i16 5, label %bb.h
    i16 11, label %bb.r
    i16 12, label %bb.as
    i16 10, label %bb.bb
    i16 1, label %bb.bh
    i16 3, label %bb.bh
    i16 13, label %bb.dc
  ]

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %1, i64 112
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64
  tail call fastcc void @ieee80211_rx_mgmt_beacon(ptr noundef %.084, ptr noundef %i.d, i64 noundef %i.ac, ptr noundef %i.o) #22, !srcloc !294
  br label %ieee80211_sta_rx_queued_ext.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %.084, align 8            ; 5 uses
  %i.ae = getelementptr i8, ptr %1, i64 112
  %i.af = load i32, ptr %i.ae, align 8            ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.ad, i64 1856
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %1, i64 68        ; 2 uses
  %.val34.i = load i16, ptr %i.al, align 4        ; 2 uses
  %i.am = and i16 %.val34.i, 8191
  %i.an = zext nneg i16 %i.am to i32
  %i.ao = mul nuw nsw i32 %i.an, 1000
  %i.ap = and i16 %.val34.i, 8192
  %.not.i.i = icmp eq i16 %i.ap, 0
  %i.aq = select i1 %.not.i.i, i32 0, i32 500
  %i.ar = add nuw nsw i32 %i.ao, %i.aq
  %i.as = tail call ptr @ieee80211_get_channel_khz(ptr noundef %i.ak, i32 noundef %i.ar) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %ieee80211_sta_rx_queued_ext.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr i8, ptr %i.d, i64 4
  %i.au = getelementptr i8, ptr %i.ad, i64 7202
  %.val30.i = load i32, ptr %i.at, align 4        ; 3 uses
  %i.av = getelementptr i8, ptr %i.d, i64 8
  %.val31.i = load i16, ptr %i.av, align 4        ; 2 uses
  %.val32.i = load i32, ptr %i.au, align 4
  %i.aw = getelementptr i8, ptr %i.ad, i64 7206
  %.val33.i = load i16, ptr %i.aw, align 2
  %i.ax = xor i32 %.val32.i, %.val30.i
  %i.ay = xor i16 %.val33.i, %.val31.i
  %i.az = zext i16 %i.ay to i32
  %i.ba = or i32 %i.ax, %i.az
  %i.bb = icmp eq i32 %i.ba, 0
  %i.bc = lshr i32 %.val30.i, 16
  br i1 %i.bb, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load i32, ptr %i.as, align 8
  %.not24.i = icmp eq i32 %i.bd, 3
  br i1 %.not24.i, label %bb.k, label %ieee80211_sta_rx_queued_ext.exit

bb.k:                                             ; preds = %bb.j
  %i.be = and i32 %i.bc, %.val30.i
  %i.bf = trunc nuw i32 %i.be to i16
  %i.bg = and i16 %.val31.i, %i.bf
  %i.bh = icmp ne i16 %i.bg, -1
  %i.bi = icmp ult i32 %i.af, 36
  %or.cond.i = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond.i, label %ieee80211_sta_rx_queued_ext.exit, label %bb.m

bb.l:                                             ; preds = %bb.i
  %.old.i = icmp ult i32 %i.af, 36
  br i1 %.old.i, label %ieee80211_sta_rx_queued_ext.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bj = load ptr, ptr %.084, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 1856
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8
  %.val.i.i = load i16, ptr %i.al, align 4        ; 2 uses
  %i.bo = and i16 %.val.i.i, 8191
  %i.bp = zext nneg i16 %i.bo to i32
  %i.bq = mul nuw nsw i32 %i.bp, 1000
  %i.br = and i16 %.val.i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.br, 0
  %i.bs = select i1 %.not.i.i.i, i32 0, i32 500
  %i.bt = add nuw nsw i32 %i.bq, %i.bs
  %i.bu = tail call ptr @ieee80211_get_channel_khz(ptr noundef %i.bn, i32 noundef %i.bt) #19 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.bu, null
  br i1 %.not.i35.i, label %ieee80211_rx_bss_info.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = tail call ptr @ieee80211_bss_info_update(ptr noundef %i.bl, ptr noundef %i.o, ptr noundef %i.d, i64 noundef range(i64 0, 4294967296) %i.ag, ptr noundef nonnull %i.bu) #19 ; 3 uses
  %.not15.i.i = icmp eq ptr %i.bv, null
  br i1 %.not15.i.i, label %ieee80211_rx_bss_info.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr i8, ptr %i.bv, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %.084, i64 1056
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 80
  store ptr %i.bx, ptr %i.ca, align 8
  tail call void @ieee80211_rx_bss_put(ptr noundef %i.bl, ptr noundef nonnull %i.bv) #19
  br label %ieee80211_rx_bss_info.exit.i

ieee80211_rx_bss_info.exit.i:                     ; preds = %bb.o, %bb.n, %bb.m
  %i.cb = getelementptr i8, ptr %i.ad, i64 2717
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = and i8 %i.cc, 8
  %.not25.i = icmp eq i8 %i.cd, 0
  br i1 %.not25.i, label %ieee80211_sta_rx_queued_ext.exit, label %bb.p

bb.p:                                             ; preds = %ieee80211_rx_bss_info.exit.i
  %i.ce = getelementptr i8, ptr %i.d, i64 16
  %i.cf = getelementptr i8, ptr %.084, i64 592
  %.val.i = load i32, ptr %i.ce, align 4
  %i.cg = getelementptr i8, ptr %i.d, i64 20
  %.val27.i = load i16, ptr %i.cg, align 4
  %.val28.i = load i32, ptr %i.cf, align 8
  %i.ch = getelementptr i8, ptr %.084, i64 596
  %.val29.i = load i16, ptr %i.ch, align 4
  %i.ci = xor i32 %.val28.i, %.val.i
  %i.cj = xor i16 %.val29.i, %.val27.i
  %i.ck = zext i16 %i.cj to i32
  %i.cl = or i32 %i.ci, %i.ck
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.q, label %ieee80211_sta_rx_queued_ext.exit

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @ieee80211_reset_ap_probe(ptr noundef %i.ad) #22, !srcloc !295
  br label %ieee80211_sta_rx_queued_ext.exit

bb.r:                                             ; preds = %bb.f
  %i.cn = getelementptr i8, ptr %1, i64 112
  %i.co = load i32, ptr %i.cn, align 8            ; 3 uses
  %i.cp = zext i32 %i.co to i64                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef align 8 dereferenceable(24) @__const.ieee80211_rx_mgmt_auth.event, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store i64 11534336, ptr %9, align 8
  %i.cq = icmp ult i32 %i.co, 30
  br i1 %i.cq, label %ieee80211_rx_mgmt_auth.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr i8, ptr %0, i64 2720      ; 8 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 8 uses
  %.not.i99 = icmp eq ptr %i.cs, null
  br i1 %.not.i99, label %ieee80211_rx_mgmt_auth.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr i8, ptr %i.cs, i64 55
  %i.cu = load i8, ptr %i.ct, align 1, !range !25, !noundef !26
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %ieee80211_rx_mgmt_auth.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = getelementptr i8, ptr %i.cs, i64 64
  %i.cx = getelementptr i8, ptr %i.d, i64 16
  %.val.i100 = load i32, ptr %i.cw, align 4
  %i.cy = getelementptr i8, ptr %i.cs, i64 68
  %.val129.i = load i16, ptr %i.cy, align 4
  %.val130.i = load i32, ptr %i.cx, align 4
  %i.cz = getelementptr i8, ptr %i.d, i64 20
  %.val131.i = load i16, ptr %i.cz, align 4
  %i.da = xor i32 %.val130.i, %.val.i100
  %i.db = xor i16 %.val131.i, %.val129.i
  %i.dc = zext i16 %i.db to i32
  %i.dd = or i32 %i.da, %i.dc
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.v, label %ieee80211_rx_mgmt_auth.exit

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr i8, ptr %i.d, i64 24
  %i.dg = load i16, ptr %i.df, align 4            ; 5 uses
  %i.dh = getelementptr i8, ptr %i.d, i64 26
  %i.di = load i16, ptr %i.dh, align 2            ; 8 uses
  %i.dj = getelementptr i8, ptr %i.d, i64 28
  %i.dk = load i16, ptr %i.dj, align 4            ; 9 uses
  %i.dl = zext i16 %i.dg to i32
  %i.dm = icmp eq i16 %i.dg, 8                    ; 2 uses
  %i.dn = icmp ult i32 %i.co, 32
  %or.cond.i101 = and i1 %i.dn, %i.dm
  br i1 %or.cond.i101, label %ieee80211_rx_mgmt_auth.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = getelementptr i8, ptr %i.cs, i64 60
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.dp, ptr %i.dq, align 8
  %i.dr = getelementptr i8, ptr %i.cs, i64 20
  %i.ds = load i16, ptr %i.dr, align 4            ; 2 uses
  %.not120.i = icmp eq i16 %i.dg, %i.ds
  br i1 %.not120.i, label %bb.x, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.w
  %.phi.trans.insert.i = getelementptr i8, ptr %i.cs, i64 22
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.not121.i = icmp eq i16 %i.dg, 3
  %i.dt = getelementptr i8, ptr %i.cs, i64 22
  %i.du = load i16, ptr %i.dt, align 2            ; 4 uses
  br i1 %.not121.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not122.i = icmp eq i16 %i.di, %i.du
  br i1 %.not122.i, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dv = icmp ult i16 %i.di, %i.du
  %i.dw = icmp ugt i16 %i.di, 2
  %or.cond5.i = or i1 %i.dw, %i.dv
  br i1 %or.cond5.i, label %bb.aa, label %.thread133.i

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i
  %i.dx = phi i16 [ %.pre.i, %._crit_edge.i ], [ %i.du, %bb.z ], [ %i.du, %bb.y ]
  %i.dy = getelementptr i8, ptr %0, i64 1880
  %i.dz = getelementptr i8, ptr %i.d, i64 10
  %i.ea = zext i16 %i.ds to i32
  %i.eb = zext i16 %i.di to i32
  %i.ec = zext i16 %i.dx to i32
  %i.ed = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.186, ptr noundef %i.dy, ptr noundef %i.dz, i32 noundef %i.dl, i32 noundef %i.ea, i32 noundef %i.eb, i32 noundef %i.ec) #21 ; 0 uses
  br label %.critedge.i

bb.ab:                                            ; preds = %bb.y
  br i1 %i.dm, label %bb.ac, label %.thread133.thread.i

bb.ac:                                            ; preds = %bb.ab
  switch i16 %i.dk, label %.sink.split.i [
    i16 153, label %.thread155.i
    i16 0, label %.thread155.i
  ]

.thread155.i:                                     ; preds = %bb.ac, %bb.ac
  %i.ee = getelementptr i8, ptr %i.d, i64 30
  %.val132.i = load i16, ptr %i.ee, align 2
  %i.ef = icmp eq i16 %.val132.i, 0
  br label %.thread

.thread133.i:                                     ; preds = %bb.z
  %.not123.not.i = icmp eq i16 %i.dk, 0
  br i1 %.not123.not.i, label %.thread, label %bb.ad

.thread133.thread.i:                              ; preds = %bb.ab
  %.not123.not154.i = icmp eq i16 %i.dk, 0
  br i1 %.not123.not154.i, label %bb.aj, label %.sink.split.i

bb.ad:                                            ; preds = %.thread133.i
  %i.eg = getelementptr i8, ptr %0, i64 1848
  %i.eh = load ptr, ptr %i.eg, align 8
  tail call void @cfg80211_rx_mlme_mgmt(ptr noundef %i.eh, ptr noundef %i.d, i64 noundef range(i64 0, 4294967296) %i.cp) #19
  %i.ei = icmp eq i16 %i.dk, 76
  br i1 %i.ei, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ej = icmp eq i16 %i.di, 1
  %i.ek = and i16 %i.dk, -2
  %or.cond11.i = icmp eq i16 %i.ek, 126
  %or.cond126.i = select i1 %i.ej, i1 %or.cond11.i, i1 false
  br i1 %or.cond126.i, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.el = load ptr, ptr %i.cr, align 8
  %i.em = getelementptr i8, ptr %i.el, i64 56
  store i8 1, ptr %i.em, align 8
  %i.en = load volatile i64, ptr @jiffies, align 64
  %i.eo = add i64 %i.en, 2000
  %i.ep = load ptr, ptr %i.cr, align 8
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  store i64 %i.eo, ptr %i.eq, align 8
  %i.er = load ptr, ptr %i.cr, align 8
  %i.es = getelementptr i8, ptr %i.er, i64 58
  store i8 1, ptr %i.es, align 2
  %i.et = load ptr, ptr %i.cr, align 8
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8            ; 2 uses
  %i.ew = getelementptr i8, ptr %0, i64 2504
  %i.ex = getelementptr i8, ptr %0, i64 2512
  %i.ey = load volatile ptr, ptr %i.ex, align 8
  %.not.i.i.not.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.not.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ez = getelementptr i8, ptr %0, i64 2520
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = sub i64 %i.ev, %i.fa
  %i.fc = icmp slt i64 %i.fb, 0
  br i1 %i.fc, label %bb.ah, label %run_again.exit.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fd = tail call i32 @mod_timer(ptr noundef %i.ew, i64 noundef %i.ev) #19 ; 0 uses
  br label %run_again.exit.i

run_again.exit.i:                                 ; preds = %bb.ah, %bb.ag
  %i.fe = icmp eq i16 %i.di, 1
  br i1 %i.fe, label %ieee80211_rx_mgmt_auth.exit, label %.critedge.i

.sink.split.i:                                    ; preds = %.thread133.thread.i, %bb.ac
  %i.ff = getelementptr i8, ptr %0, i64 1848
  %i.fg = load ptr, ptr %i.ff, align 8
  tail call void @cfg80211_rx_mlme_mgmt(ptr noundef %i.fg, ptr noundef %i.d, i64 noundef range(i64 0, 4294967296) %i.cp) #19
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split.i, %bb.ae
  %i.fh = getelementptr i8, ptr %0, i64 1880
  %i.fi = getelementptr i8, ptr %i.d, i64 10
  %i.fj = zext i16 %i.dk to i32
  %i.fk = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.187, ptr noundef %i.fh, ptr noundef %i.fi, i32 noundef %i.fj) #21 ; 0 uses
  tail call fastcc void @ieee80211_destroy_auth_data(ptr noundef %0, i1 noundef zeroext false) #22, !srcloc !296
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 1, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i16 %i.dk, ptr %i.fm, align 8
  %i.fn = getelementptr i8, ptr %0, i64 1856
  %i.fo = load ptr, ptr %i.fn, align 8
  call fastcc void @drv_event_callback(ptr noundef %i.fo, ptr noundef %0, ptr noundef nonnull %8) #22, !srcloc !297
  br label %.critedge.i

bb.aj:                                            ; preds = %.thread133.thread.i
  switch i16 %i.dg, label %bb.am [
    i16 0, label %.thread
    i16 128, label %.thread
    i16 2, label %.thread
    i16 1, label %bb.ak
    i16 4, label %.thread
    i16 5, label %.thread
    i16 6, label %.thread
    i16 9, label %.thread
    i16 8, label %.thread
  ]

bb.ak:                                            ; preds = %bb.aj
  %.not124.i = icmp eq i16 %i.di, 4
  br i1 %.not124.i, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @ieee80211_auth_challenge(ptr noundef %0, ptr noundef %i.d, i64 noundef range(i64 0, 4294967296) %i.cp) #22, !srcloc !298
  br label %ieee80211_rx_mgmt_auth.exit

bb.am:                                            ; preds = %bb.aj
  %i.fp = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.188, ptr @.str.1, i32 5527, i32 2323, i64 16) #20, !srcloc !299
  %i.fq = load ptr, ptr %i.cr, align 8
  %i.fr = getelementptr i8, ptr %i.fq, i64 20
  %i.fs = load i16, ptr %i.fr, align 4
  %i.ft = zext i16 %i.fs to i32
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.fp, i32 noundef %i.ft) #19
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !300
  br label %.critedge.i

.thread:                                          ; preds = %.thread133.i, %bb.ak, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %.thread155.i
  %.0140157.i = phi i1 [ %i.ef, %.thread155.i ], [ true, %bb.ak ], [ true, %.thread133.i ], [ true, %bb.aj ], [ true, %bb.aj ], [ true, %bb.aj ], [ true, %bb.aj ], [ true, %bb.aj ], [ true, %bb.aj ], [ true, %bb.aj ], [ true, %bb.aj ]
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 1, ptr %i.fv, align 4
  %i.fw = getelementptr i8, ptr %0, i64 1856
  %i.fx = load ptr, ptr %i.fw, align 8
  call fastcc void @drv_event_callback(ptr noundef %i.fx, ptr noundef %0, ptr noundef nonnull %8) #22, !srcloc !301
  %i.fy = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 20
  %i.ga = load i16, ptr %i.fz, align 4            ; 2 uses
  %.not125.i = icmp eq i16 %i.ga, 3
  br i1 %.not125.i, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.thread
  switch i16 %i.di, label %.thread144.i [
    i16 2, label %bb.ao
    i16 1, label %bb.ar
  ]

bb.ao:                                            ; preds = %bb.an
  %i.gb = getelementptr i8, ptr %i.fy, i64 22
  %i.gc = load i16, ptr %i.gb, align 2
  %i.gd = icmp eq i16 %i.gc, 2
  br i1 %i.gd, label %.thread158.i, label %bb.aq

bb.ap:                                            ; preds = %.thread
  %cond1.i = icmp ne i16 %i.ga, 8
  %i.ge = icmp eq i16 %i.dk, 153
  %or.cond23.not147.i = select i1 %cond1.i, i1 true, i1 %i.ge
  %i.gf = icmp eq i16 %i.dk, 0
  %or.cond14.i = select i1 %i.gf, i1 %.0140157.i, i1 false
  %or.cond128.i = select i1 %or.cond23.not147.i, i1 true, i1 %or.cond14.i
  br i1 %or.cond128.i, label %.thread158.i, label %.thread144.i

.thread158.i:                                     ; preds = %bb.ap, %bb.ao
  %i.gg = call fastcc zeroext i1 @ieee80211_mark_sta_auth(ptr noundef %0) #22, !srcloc !302
  br i1 %i.gg, label %.thread144.i, label %ieee80211_rx_mgmt_auth.exit

bb.aq:                                            ; preds = %bb.ao
  %i.gh = getelementptr i8, ptr %0, i64 1880
  %i.gi = call i32 (ptr, ...) @_printk(ptr noundef @.str.189, ptr noundef %i.gh) #21 ; 0 uses
  %i.gj = load ptr, ptr %i.cr, align 8
  %i.gk = getelementptr i8, ptr %i.gj, i64 57
  store i8 1, ptr %i.gk, align 1
  br label %.thread144.i

.thread144.i:                                     ; preds = %bb.aq, %.thread158.i, %bb.ap, %bb.an
  %i.gl = getelementptr i8, ptr %0, i64 1848
  %i.gm = load ptr, ptr %i.gl, align 8
  call void @cfg80211_rx_mlme_mgmt(ptr noundef %i.gm, ptr noundef %i.d, i64 noundef range(i64 0, 4294967296) %i.cp) #19
  br label %.critedge.i

bb.ar:                                            ; preds = %bb.an
  %i.gn = getelementptr i8, ptr %0, i64 1848
  %i.go = load ptr, ptr %i.gn, align 8
  call void @cfg80211_rx_mlme_mgmt(ptr noundef %i.go, ptr noundef %i.d, i64 noundef range(i64 0, 4294967296) %i.cp) #19
  br label %ieee80211_rx_mgmt_auth.exit

.critedge.i:                                      ; preds = %.thread144.i, %bb.am, %bb.ai, %run_again.exit.i, %bb.aa
  %i.gp = getelementptr i8, ptr %0, i64 1856
  %i.gq = load ptr, ptr %i.gp, align 8
  call fastcc void @drv_mgd_complete_tx(ptr noundef %i.gq, ptr noundef %0, ptr noundef nonnull %9) #22, !srcloc !303
  br label %ieee80211_rx_mgmt_auth.exit

ieee80211_rx_mgmt_auth.exit:                      ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %run_again.exit.i, %bb.al, %.thread158.i, %bb.ar, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %ieee80211_sta_rx_queued_ext.exit

bb.as:                                            ; preds = %bb.f
  %i.gr = getelementptr i8, ptr %1, i64 112
  %i.gs = load i32, ptr %i.gr, align 8            ; 2 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = icmp ult i32 %i.gs, 26
  br i1 %i.gu, label %ieee80211_sta_rx_queued_ext.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gv = getelementptr i8, ptr %i.d, i64 24
  %i.gw = load i16, ptr %i.gv, align 2            ; 6 uses
  %i.gx = getelementptr i8, ptr %i.d, i64 16
  %i.gy = getelementptr i8, ptr %i.d, i64 10      ; 2 uses
  %.val39.i = load i32, ptr %i.gx, align 4        ; 3 uses
  %i.gz = getelementptr i8, ptr %i.d, i64 20
  %.val40.i = load i16, ptr %i.gz, align 4        ; 3 uses
  %.val41.i = load i32, ptr %i.gy, align 4
  %i.ha = getelementptr i8, ptr %i.d, i64 14
  %.val42.i = load i16, ptr %i.ha, align 2
  %i.hb = xor i32 %.val41.i, %.val39.i
  %i.hc = xor i16 %.val42.i, %.val40.i
  %i.hd = zext i16 %i.hc to i32
  %i.he = or i32 %i.hb, %i.hd
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @ieee80211_tdls_handle_disconnect(ptr noundef %0, ptr noundef %i.gy, i16 noundef zeroext %i.gw) #19
  br label %ieee80211_sta_rx_queued_ext.exit

bb.av:                                            ; preds = %bb.at
  %i.hg = getelementptr i8, ptr %0, i64 2717
  %i.hh = load i8, ptr %i.hg, align 1
  %i.hi = and i8 %i.hh, 8
  %.not.i102 = icmp eq i8 %i.hi, 0
  br i1 %.not.i102, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hj = getelementptr i8, ptr %0, i64 5154      ; 2 uses
  %.val37.i = load i32, ptr %i.hj, align 4
  %i.hk = getelementptr i8, ptr %0, i64 5158
  %.val38.i = load i16, ptr %i.hk, align 2
  %i.hl = xor i32 %.val37.i, %.val39.i
  %i.hm = xor i16 %.val38.i, %.val40.i
  %i.hn = zext i16 %i.hm to i32
  %i.ho = or i32 %i.hl, %i.hn
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hq = getelementptr i8, ptr %0, i64 1880
  %i.hr = zext i16 %i.gw to i32
  %i.hs = tail call ptr @ieee80211_get_reason_code_string(i16 noundef zeroext %i.gw) #22
  %i.ht = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.190, ptr noundef %i.hq, ptr noundef %i.hj, i32 noundef %i.hr, ptr noundef nonnull %i.hs) #21 ; 0 uses
  tail call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext false, ptr noundef null) #22, !srcloc !304
  tail call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef %i.d, i64 noundef range(i64 0, 4294967296) %i.gt, i1 noundef zeroext false, i16 noundef zeroext %i.gw, i1 noundef zeroext false) #22, !srcloc !305
  br label %ieee80211_sta_rx_queued_ext.exit

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %i.hu = getelementptr i8, ptr %0, i64 2728
  %i.hv = load ptr, ptr %i.hu, align 8            ; 3 uses
  %.not31.i = icmp eq ptr %i.hv, null
  br i1 %.not31.i, label %ieee80211_sta_rx_queued_ext.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hw = getelementptr i8, ptr %i.hv, i64 960    ; 2 uses
  %.val33.i103 = load i32, ptr %i.hw, align 4
  %i.hx = getelementptr i8, ptr %i.hv, i64 964
  %.val34.i104 = load i16, ptr %i.hx, align 4
  %i.hy = xor i32 %.val33.i103, %.val39.i
  %i.hz = xor i16 %.val34.i104, %.val40.i
  %i.ia = zext i16 %i.hz to i32
  %i.ib = or i32 %i.hy, %i.ia
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.ba, label %ieee80211_sta_rx_queued_ext.exit

bb.ba:                                            ; preds = %bb.az
  %i.id = getelementptr i8, ptr %0, i64 1880
  %i.ie = zext i16 %i.gw to i32
  %i.if = tail call ptr @ieee80211_get_reason_code_string(i16 noundef zeroext %i.gw) #22
  %i.ig = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.191, ptr noundef %i.id, ptr noundef %i.hw, i32 noundef %i.ie, ptr noundef nonnull %i.if) #21 ; 0 uses
  tail call fastcc void @ieee80211_destroy_assoc_data(ptr noundef %0, i32 noundef 3) #22, !srcloc !306
  %i.ih = getelementptr i8, ptr %0, i64 1848
  %i.ii = load ptr, ptr %i.ih, align 8
  tail call void @cfg80211_rx_mlme_mgmt(ptr noundef %i.ii, ptr noundef %i.d, i64 noundef range(i64 0, 4294967296) %i.gt) #19
  br label %ieee80211_sta_rx_queued_ext.exit

bb.bb:                                            ; preds = %bb.f
  %i.ij = getelementptr i8, ptr %1, i64 112
  %i.ik = load i32, ptr %i.ij, align 8            ; 2 uses
  %i.il = zext i32 %i.ik to i64
  %i.im = icmp ult i32 %i.ik, 26
  br i1 %i.im, label %ieee80211_sta_rx_queued_ext.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.in = getelementptr i8, ptr %0, i64 2717
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = and i8 %i.io, 8
  %.not.i105 = icmp eq i8 %i.ip, 0
  br i1 %.not.i105, label %ieee80211_sta_rx_queued_ext.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iq = getelementptr i8, ptr %i.d, i64 16
  %i.ir = getelementptr i8, ptr %0, i64 5154      ; 2 uses
  %.val22.i = load i32, ptr %i.iq, align 4        ; 2 uses
  %i.is = getelementptr i8, ptr %i.d, i64 20
  %.val23.i = load i16, ptr %i.is, align 4        ; 2 uses
  %.val24.i = load i32, ptr %i.ir, align 4
  %i.it = getelementptr i8, ptr %0, i64 5158
  %.val25.i = load i16, ptr %i.it, align 2
  %i.iu = xor i32 %.val24.i, %.val22.i
  %i.iv = xor i16 %.val25.i, %.val23.i
  %i.iw = zext i16 %i.iv to i32
  %i.ix = or i32 %i.iu, %i.iw
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %bb.be, label %ieee80211_sta_rx_queued_ext.exit

bb.be:                                            ; preds = %bb.bd
  %i.iz = getelementptr i8, ptr %i.d, i64 24
  %i.ja = load i16, ptr %i.iz, align 4            ; 4 uses
  %i.jb = getelementptr i8, ptr %i.d, i64 10      ; 2 uses
  %.val20.i = load i32, ptr %i.jb, align 4
  %i.jc = getelementptr i8, ptr %i.d, i64 14
  %.val21.i = load i16, ptr %i.jc, align 2
  %i.jd = xor i32 %.val20.i, %.val22.i
  %i.je = xor i16 %.val21.i, %.val23.i
  %i.jf = zext i16 %i.je to i32
  %i.jg = or i32 %i.jd, %i.jf
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @ieee80211_tdls_handle_disconnect(ptr noundef %0, ptr noundef %i.jb, i16 noundef zeroext %i.ja) #19
  br label %ieee80211_sta_rx_queued_ext.exit

bb.bg:                                            ; preds = %bb.be
  %i.ji = getelementptr i8, ptr %0, i64 1880
  %i.jj = zext i16 %i.ja to i32
  %i.jk = tail call ptr @ieee80211_get_reason_code_string(i16 noundef zeroext %i.ja) #22
  %i.jl = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.192, ptr noundef %i.ji, ptr noundef %i.ir, i32 noundef %i.jj, ptr noundef nonnull %i.jk) #21 ; 0 uses
  tail call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext false, ptr noundef null) #22, !srcloc !307
  tail call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef %i.d, i64 noundef range(i64 0, 4294967296) %i.il, i1 noundef zeroext false, i16 noundef zeroext %i.ja, i1 noundef zeroext false) #22, !srcloc !308
  br label %ieee80211_sta_rx_queued_ext.exit

bb.bh:                                            ; preds = %bb.f, %bb.f
  %i.jm = getelementptr i8, ptr %1, i64 112
  %i.jn = load i32, ptr %i.jm, align 8            ; 2 uses
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.jo, ptr %i.a, align 8
  %i.jp = getelementptr i8, ptr %0, i64 2728
  %i.jq = load ptr, ptr %i.jp, align 8            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %i.js = trunc i16 %i.e to i8
  %i.jt = and i8 %i.js, -4
  store i8 %i.jt, ptr %i.jr, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 -1, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i8 1, ptr %i.jv, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
end_hunk_0
