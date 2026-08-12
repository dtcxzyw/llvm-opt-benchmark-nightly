inline.NumInlined: 25
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_tibia:bb.a
  %i.bp = icmp ugt i16 %i.bo, 760
  br i1 %i.bp, label %bb.i, label %get_version_traits.exit

bb.i:                                             ; preds = %bb.h
  %i.bq = icmp ugt i16 %i.bo, 779
  br i1 %i.bq, label %bb.j, label %get_version_traits.exit

bb.j:                                             ; preds = %bb.i
  %i.br = icmp ugt i16 %i.bo, 829
  br i1 %i.br, label %bb.k, label %get_version_traits.exit

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp ugt i16 %i.bo, 840
  br i1 %i.bs, label %bb.l, label %get_version_traits.exit

bb.l:                                             ; preds = %bb.k
  %i.bt = icmp ugt i16 %i.bo, 952
  br i1 %i.bt, label %bb.m, label %get_version_traits.exit

bb.m:                                             ; preds = %bb.l
  %i.bu = icmp ugt i16 %i.bo, 979
  br i1 %i.bu, label %bb.n, label %get_version_traits.exit

bb.n:                                             ; preds = %bb.m
  %i.bv = icmp ugt i16 %i.bo, 1009
  br i1 %i.bv, label %bb.o, label %get_version_traits.exit

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp ugt i16 %i.bo, 1060
  br i1 %i.bw, label %bb.p, label %get_version_traits.exit

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp ugt i16 %i.bo, 1070
  br i1 %i.bx, label %bb.q, label %get_version_traits.exit

bb.q:                                             ; preds = %bb.p
  %.not.i422 = icmp eq i16 %i.bo, 1071
  br i1 %.not.i422, label %get_version_traits.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = icmp ugt i16 %i.bo, 1073
  br i1 %i.by, label %bb.s, label %get_version_traits.exit

bb.s:                                             ; preds = %bb.r
  %i.bz = icmp ugt i16 %i.bo, 1100
  br i1 %i.bz, label %bb.t, label %get_version_traits.exit

bb.t:                                             ; preds = %bb.s
  %i.ca = icmp ugt i16 %i.bo, 1110
  %i.cb = select i1 %i.ca, i32 1048574, i32 1048571
  br label %get_version_traits.exit

get_version_traits.exit:                          ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.sroa.0.0.i = phi i32 [ 851947, %bb.q ], [ 256, %bb.h ], [ %i.cb, %bb.t ], [ 1048555, %bb.s ], [ 917483, %bb.r ], [ 589803, %bb.p ], [ 589675, %bb.o ], [ 65387, %bb.n ], [ 16235, %bb.m ], [ 8043, %bb.l ], [ 7467, %bb.k ], [ 7434, %bb.j ], [ 266, %bb.i ] ; 6 uses
  switch i8 %i.bm, label %bb.ac [
    i8 1, label %bb.u
    i8 10, label %bb.y
  ]

bb.u:                                             ; preds = %get_version_traits.exit
  %i.cc = add i16 %i.bo, -700
  %or.cond = icmp ult i16 %i.cc, 61
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cd = load i32, ptr %i.ba, align 8
  %i.ce = and i32 %i.cd, 1
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = add i16 %i.n, -23
  %i.ch = icmp ult i16 %i.cg, 30
  %or.cond8 = select i1 %i.cf, i1 %i.ch, i1 false
  br i1 %or.cond8, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ci = and i32 %.sroa.0.0.i, 5
  %or.cond.i = icmp eq i32 %i.ci, 0
  %.0.i423 = select i1 %or.cond.i, i16 19, i16 23 ; 2 uses
  %i.cj = and i32 %.sroa.0.0.i, 128
  %.not9.i = icmp eq i32 %i.cj, 0
  %narrow.i = add nuw nsw i16 %.0.i423, 222
  %.1.i = select i1 %.not9.i, i16 %.0.i423, i16 %narrow.i
  %i.ck = trunc i32 %.sroa.0.0.i to i16
  %i.cl = shl i16 %i.ck, 6
  %i.cm = and i16 %i.cl, 128
  %.2.i = add nuw nsw i16 %.1.i, %i.cm
  %i.cn = icmp eq i16 %.2.i, %i.o
  br i1 %i.cn, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.co = getelementptr i8, ptr %.0.i, i64 66     ; 2 uses
  %i.cp = load i8, ptr %i.co, align 2
  %i.cq = or i8 %i.cp, 1
  store i8 %i.cq, ptr %i.co, align 2
  br label %bb.ad

bb.y:                                             ; preds = %get_version_traits.exit
  %i.cr = add i16 %i.bo, -700
  %or.cond11 = icmp ult i16 %i.cr, 61
  br i1 %or.cond11, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cs = load i32, ptr %i.ba, align 8
  %i.ct = and i32 %i.cs, 1
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = add i16 %i.n, -23
  %i.cw = icmp ult i16 %i.cv, 30
  %or.cond17 = select i1 %i.cu, i1 %i.cw, i1 false
  br i1 %or.cond17, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cx = and i32 %.sroa.0.0.i, 5
  %or.cond.i424 = icmp eq i32 %i.cx, 0
  %.0.i425 = select i1 %or.cond.i424, i16 7, i16 11
  %i.cy = trunc i32 %.sroa.0.0.i to i16           ; 3 uses
  %i.cz = lshr i16 %i.cy, 12
  %i.da = and i16 %i.cz, 4
  %i.db = lshr i32 %.sroa.0.0.i, 17
  %i.dc = trunc nuw nsw i32 %i.db to i16
  %i.dd = and i16 %i.dc, 2
  %i.de = lshr i16 %i.cy, 15
  %.1.i426 = or disjoint i16 %i.da, %i.de
  %.2.i427 = add nuw nsw i16 %.1.i426, %.0.i425
  %.3.i = add nuw nsw i16 %.2.i427, %i.dd
  %i.df = shl i16 %i.cy, 6
  %i.dg = and i16 %i.df, 128
  %.4.i = or disjoint i16 %.3.i, %i.dg
  %i.dh = icmp eq i16 %.4.i, %i.o
  br i1 %i.dh, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.z, %bb.aa
  br label %bb.ad

bb.ac:                                            ; preds = %get_version_traits.exit
  %i.di = load i32, ptr %i.ba, align 8
  %i.dj = and i32 %i.di, 8
  %i.dk = icmp ne i32 %i.dj, 0
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x, %bb.w, %bb.ab, %bb.aa, %bb.g
  %i.dl = phi i1 [ false, %bb.g ], [ false, %bb.ac ], [ true, %bb.x ], [ false, %bb.w ], [ true, %bb.ab ], [ false, %bb.aa ]
  %i.dm = phi i1 [ true, %bb.g ], [ true, %bb.ac ], [ false, %bb.x ], [ true, %bb.w ], [ false, %bb.ab ], [ true, %bb.aa ]
  %.1368 = phi i1 [ false, %bb.g ], [ %i.dk, %bb.ac ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.ab ], [ false, %bb.aa ]
  %i.dn = getelementptr i8, ptr %1, i64 8         ; 12 uses
  %i.do = load ptr, ptr %i.dn, align 8
  call void @col_set_str(ptr noundef %i.do, i32 noundef 35, ptr noundef nonnull @.str.217)
  %i.dp = ptrtoint ptr %3 to i64
  %i.dq = and i64 %i.dp, 4294967295
  %i.dr = icmp eq i64 %i.dq, 1                    ; 4 uses
  br i1 %i.dr, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.dl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ds = load ptr, ptr %i.dn, align 8
  call void @col_set_str(ptr noundef %i.ds, i32 noundef 25, ptr noundef nonnull @.str.383)
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.dt = getelementptr i8, ptr %1, i64 288
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = getelementptr i8, ptr %.0.i, i64 70
  %i.dw = load i16, ptr %i.dv, align 2
  %i.dx = zext i16 %i.dw to i32
  %i.dy = icmp eq i32 %i.du, %i.dx
  %i.dz = load ptr, ptr %i.dn, align 8            ; 2 uses
  br i1 %i.dy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @col_set_str(ptr noundef %i.dz, i32 noundef 25, ptr noundef nonnull @.str.384)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @col_set_str(ptr noundef %i.dz, i32 noundef 25, ptr noundef nonnull @.str.385)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai, %bb.ah, %bb.ad
  %i.ea = load i32, ptr @proto_tibia, align 4
  %i.eb = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ea, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 4 uses
  %i.ec = load i32, ptr @ett_tibia, align 4
  %i.ed = call ptr @proto_item_add_subtree(ptr noundef %i.eb, i32 noundef %i.ec) ; 36 uses
  %i.ee = load i32, ptr @hf_tibia_len, align 4
  %i.ef = call ptr @proto_tree_add_item(ptr noundef %i.ed, i32 noundef %i.ee, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.eg = load i32, ptr %i.ba, align 8            ; 2 uses
  %i.eh = and i32 %i.eg, 1
  %.not388 = icmp eq i32 %i.eh, 0
  br i1 %.not388, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = load i32, ptr @hf_tibia_adler32, align 4
  %i.ej = load i32, ptr @hf_tibia_adler32_status, align 4
  %i.ek = call ptr @proto_tree_add_checksum(ptr noundef %i.ed, ptr noundef %0, i32 noundef 2, i32 noundef %i.ei, i32 noundef %i.ej, ptr noundef nonnull @ei_adler32_checksum_bad, ptr noundef %1, i32 noundef %i.ax, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.el = and i32 %i.eg, 4
  %spec.select418 = or disjoint i32 %i.el, 2
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1376 = phi i32 [ 6, %bb.ak ], [ %spec.select418, %bb.al ] ; 16 uses
  br i1 %i.dm, label %bb.an, label %bb.ej

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.em = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef range(i32 2, 7) %.1376)
  store i32 %i.em, ptr %i.c, align 4
  %i.en = load i8, ptr @show_acc_info, align 1, !range !6, !noundef !7
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.ao, label %proto_item_set_generated.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.ep = load i32, ptr %i.ba, align 8
  %i.eq = and i32 %i.ep, 131072
  %.not.i431 = icmp eq i32 %i.eq, 0
  br i1 %.not.i431, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.er = getelementptr i8, ptr %.0.i, i64 48
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %.not105.i = icmp eq ptr %i.es, null
  br i1 %.not105.i, label %proto_item_set_generated.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.et = load i32, ptr @hf_tibia_session_key_convo, align 4
  %i.eu = call ptr @proto_tree_add_string(ptr noundef %i.ed, i32 noundef %i.et, ptr noundef %0, i32 noundef range(i32 2, 7) %.1376, i32 noundef 0, ptr noundef nonnull %i.es) ; 2 uses
  %.not.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i, label %proto_item_set_generated.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ev = getelementptr i8, ptr %i.eu, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ew, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %proto_item_set_generated.exit.sink.split.i

bb.as:                                            ; preds = %bb.ao
  %i.ex = getelementptr i8, ptr %.0.i, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not103.i = icmp eq ptr %i.ey, null
  br i1 %.not103.i, label %proto_item_set_generated.exit113.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ez = load i32, ptr @hf_tibia_acc_name_convo, align 4
  %i.fa = call ptr @proto_tree_add_string(ptr noundef %i.ed, i32 noundef %i.ez, ptr noundef %0, i32 noundef range(i32 2, 7) %.1376, i32 noundef 0, ptr noundef nonnull %i.ey) ; 2 uses
  %.not.i111.i = icmp eq ptr %i.fa, null
  br i1 %.not.i111.i, label %proto_item_set_generated.exit113.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fb = getelementptr i8, ptr %i.fa, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %.not5.i112.i = icmp eq ptr %i.fc, null
  br i1 %.not5.i112.i, label %proto_item_set_generated.exit113.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fd = getelementptr i8, ptr %i.fc, i64 28     ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4
  %i.ff = or i32 %i.fe, 2
  store i32 %i.ff, ptr %i.fd, align 4
  br label %proto_item_set_generated.exit113.i

proto_item_set_generated.exit113.i:               ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %i.fg = getelementptr i8, ptr %.0.i, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8            ; 2 uses
  %.not104.i = icmp eq ptr %i.fh, null
  br i1 %.not104.i, label %proto_item_set_generated.exit.i, label %bb.aw

bb.aw:                                            ; preds = %proto_item_set_generated.exit113.i
  %i.fi = load i32, ptr @hf_tibia_acc_pass_convo, align 4
  %i.fj = call ptr @proto_tree_add_string(ptr noundef %i.ed, i32 noundef %i.fi, ptr noundef %0, i32 noundef range(i32 2, 7) %.1376, i32 noundef 0, ptr noundef nonnull %i.fh) ; 2 uses
  %.not.i114.i = icmp eq ptr %i.fj, null
  br i1 %.not.i114.i, label %proto_item_set_generated.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fk = getelementptr i8, ptr %i.fj, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  %.not5.i115.i = icmp eq ptr %i.fl, null
  br i1 %.not5.i115.i, label %proto_item_set_generated.exit.i, label %proto_item_set_generated.exit.sink.split.i

proto_item_set_generated.exit.sink.split.i:       ; preds = %bb.ax, %bb.ar
  %.sink155.i = phi ptr [ %i.ew, %bb.ar ], [ %i.fl, %bb.ax ]
  %i.fm = getelementptr i8, ptr %.sink155.i, i64 28 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = or i32 %i.fn, 2
  store i32 %i.fo, ptr %i.fm, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %proto_item_set_generated.exit.sink.split.i, %bb.ax, %bb.aw, %proto_item_set_generated.exit113.i, %bb.ar, %bb.aq, %bb.ap, %bb.an
  %i.fp = load i8, ptr @show_char_name, align 1, !range !6, !noundef !7
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.ay, label %proto_item_set_generated.exit119.i

bb.ay:                                            ; preds = %proto_item_set_generated.exit.i
  %i.fr = getelementptr i8, ptr %.0.i, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %.not106.i = icmp eq ptr %i.fs, null
  br i1 %.not106.i, label %proto_item_set_generated.exit119.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ft = load i32, ptr @hf_tibia_char_name_convo, align 4
  %i.fu = call ptr @proto_tree_add_string(ptr noundef %i.ed, i32 noundef %i.ft, ptr noundef %0, i32 noundef range(i32 2, 7) %.1376, i32 noundef 0, ptr noundef nonnull %i.fs) ; 2 uses
  %.not.i117.i = icmp eq ptr %i.fu, null
  br i1 %.not.i117.i, label %proto_item_set_generated.exit119.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fv = getelementptr i8, ptr %i.fu, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %.not5.i118.i = icmp eq ptr %i.fw, null
  br i1 %.not5.i118.i, label %proto_item_set_generated.exit119.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fx = getelementptr i8, ptr %i.fw, i64 28     ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = or i32 %i.fy, 2
  store i32 %i.fz, ptr %i.fx, align 4
  br label %proto_item_set_generated.exit119.i

proto_item_set_generated.exit119.i:               ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %proto_item_set_generated.exit.i
  br i1 %.1368, label %bb.bc, label %bb.bk

bb.bc:                                            ; preds = %proto_item_set_generated.exit119.i
  %i.ga = getelementptr i8, ptr %1, i64 20
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = load i32, ptr %i.ak, align 8
  %i.gd = icmp ugt i32 %i.gb, %i.gc
  br i1 %i.gd, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.ge = load i8, ptr @show_xtea_key, align 1, !range !6, !noundef !7
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.be, label %proto_item_set_generated.exit122.i

bb.be:                                            ; preds = %bb.bd
  %i.gg = load i32, ptr %i.ba, align 8
  %i.gh = and i32 %i.gg, 8
  %.not107.i = icmp eq i32 %i.gh, 0
  br i1 %.not107.i, label %proto_item_set_generated.exit122.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gi = load i32, ptr @hf_tibia_xtea_key, align 4
  %i.gj = call ptr @proto_tree_add_bytes_with_length(ptr noundef %i.ed, i32 noundef %i.gi, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %.0.i, i32 noundef 16) ; 2 uses
  %.not.i120.i = icmp eq ptr %i.gj, null
  br i1 %.not.i120.i, label %proto_item_set_generated.exit122.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gk = getelementptr i8, ptr %i.gj, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %.not5.i121.i = icmp eq ptr %i.gl, null
  br i1 %.not5.i121.i, label %proto_item_set_generated.exit122.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gm = getelementptr i8, ptr %i.gl, i64 28     ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = or i32 %i.gn, 2
  store i32 %i.go, ptr %i.gm, align 4
  br label %proto_item_set_generated.exit122.i

proto_item_set_generated.exit122.i:               ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd
  %i.gp = load i32, ptr %i.c, align 4             ; 5 uses
  %i.gq = add i32 %i.gp, %.1376                   ; 2 uses
  %i.gr = and i32 %i.gp, 7
  %.not108.i = icmp eq i32 %i.gr, 0
  br i1 %.not108.i, label %bb.bi, label %dissect_game_packet.exit

bb.bi:                                            ; preds = %proto_item_set_generated.exit122.i
  %i.gs = getelementptr i8, ptr %1, i64 416
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = zext i32 %i.gp to i64
  %i.gv = call noalias ptr @wmem_alloc(ptr noundef %i.gt, i64 noundef %i.gu) #19 ; 2 uses
  %5 = icmp ult i32 %.1376, %i.gq
  br i1 %5, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.bi
  %i.gw = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.gv, i32 noundef %i.gp, i32 noundef %i.gp) ; 2 uses
  %i.gx = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.gw, ptr noundef nonnull @.str.391) ; 0 uses
  br label %bb.bk

.lr.ph.i:                                         ; preds = %bb.bi, %.lr.ph.i
  %.0130.i = phi ptr [ %i.gz, %.lr.ph.i ], [ %i.gv, %bb.bi ] ; 2 uses
  %.097129.i = phi i32 [ %i.ha, %.lr.ph.i ], [ %.1376, %bb.bi ] ; 2 uses
  %i.gy = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %.097129.i, i32 noundef 8)
  call void @decrypt_xtea_le_ecb(ptr noundef %.0130.i, ptr noundef %i.gy, ptr noundef %.0.i, i32 noundef 32)
  %i.gz = getelementptr i8, ptr %.0130.i, i64 8
  %i.ha = add i32 %.097129.i, 8                   ; 2 uses
  %i.hb = icmp ult i32 %i.ha, %i.gq
  br i1 %i.hb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

bb.bj:                                            ; preds = %bb.bc
  %i.hc = load i32, ptr @hf_tibia_undecoded_xtea_data, align 4
  %i.hd = load i32, ptr %i.c, align 4
  %i.he = call ptr @proto_tree_add_item(ptr noundef %i.ed, i32 noundef %i.hc, ptr noundef %0, i32 noundef range(i32 2, 7) %.1376, i32 noundef %i.hd, i32 noundef 0) ; 0 uses
  br label %dissect_game_packet.exit

bb.bk:                                            ; preds = %._crit_edge.i, %proto_item_set_generated.exit119.i
  %.2.i428 = phi i32 [ 0, %._crit_edge.i ], [ %.1376, %proto_item_set_generated.exit119.i ] ; 3 uses
  %.196.i = phi ptr [ %i.gw, %._crit_edge.i ], [ %0, %proto_item_set_generated.exit119.i ] ; 19 uses
  %i.hf = load i32, ptr %i.ba, align 8
  %i.hg = and i32 %i.hf, 8
  %.not109.i = icmp eq i32 %i.hg, 0
  br i1 %.not109.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hh = load i32, ptr @hf_tibia_payload_len, align 4
  %i.hi = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ed, i32 noundef %i.hh, ptr noundef %.196.i, i32 noundef %.2.i428, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c)
  %i.hj = add nuw nsw i32 %.2.i428, 2             ; 3 uses
  %i.hk = load i32, ptr %i.c, align 4
  %i.hl = call i32 @tvb_captured_length_remaining(ptr noundef %.196.i, i32 noundef %i.hj)
  %i.hm = icmp ugt i32 %i.hk, %i.hl
  br i1 %i.hm, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hn = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.hi, ptr noundef nonnull @ei_xtea_len_toobig) ; 0 uses
  br label %dissect_game_packet.exit

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %.3.i429 = phi i32 [ %i.hj, %bb.bl ], [ %.2.i428, %bb.bk ] ; 8 uses
  %i.ho = getelementptr i8, ptr %1, i64 288
  %i.hp = load i32, ptr %i.ho, align 8
  %i.hq = getelementptr i8, ptr %.0.i, i64 70
  %i.hr = load i16, ptr %i.hq, align 2
  %i.hs = zext i16 %i.hr to i32
  %i.ht = icmp eq i32 %i.hp, %i.hs
  br i1 %i.ht, label %bb.bo, label %.thread.i

bb.bo:                                            ; preds = %bb.bn
  %i.hu = getelementptr i8, ptr %.0.i, i64 66
  %i.hv = load i8, ptr %i.hu, align 2
  %i.hw = and i8 %i.hv, 1
  %.not110.i = icmp eq i8 %i.hw, 0
  br i1 %.not110.i, label %bb.cl, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hx = load i32, ptr %i.c, align 4
  %i.hy = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = call ptr @ptvcursor_new(ptr noundef %i.hz, ptr noundef %i.ed, ptr noundef %.196.i, i32 noundef range(i32 0, 9) %.3.i429) ; 48 uses
  %i.ib = load ptr, ptr %i.dn, align 8
  %i.ic = select i1 %i.dr, ptr @.str.392, ptr @.str.393
  call void @col_append_str(ptr noundef %i.ib, i32 noundef 25, ptr noundef nonnull %i.ic)
  %i.id = add i32 %i.hx, %.3.i429                 ; 3 uses
  %i.ie = call i32 @ptvcursor_current_offset(ptr noundef %i.ia)
  %i.if = icmp ult i32 %i.ie, %i.id
  br i1 %i.if, label %.preheader.i.i, label %dissect_loginserv_packet.exit.i

.preheader.i.i:                                   ; preds = %bb.bp
  %i.ig = getelementptr i8, ptr %.0.i, i64 60     ; 9 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  br label %bb.bq

bb.bq:                                            ; preds = %bb.ck, %.preheader.i.i
  %i.ik = call i32 @ptvcursor_current_offset(ptr noundef %i.ia)
  %i.il = call zeroext i8 @tvb_get_uint8(ptr noundef %.196.i, i32 noundef %i.ik) ; 2 uses
  %i.im = zext i8 %i.il to i32                    ; 2 uses
  %i.in = load i32, ptr @hf_tibia_loginserv_command, align 4
  %i.io = load i32, ptr @ett_command, align 4
  %i.ip = call ptr @ptvcursor_add_with_subtree(ptr noundef %i.ia, i32 noundef %i.in, i32 noundef 1, i32 noundef 0, i32 noundef %i.io) ; 0 uses
  call void @ptvcursor_advance(ptr noundef %i.ia, i32 noundef 1)
  switch i8 %i.il, label %bb.ci [
    i8 10, label %bb.br
    i8 11, label %bb.br
    i8 20, label %bb.bs
    i8 40, label %bb.bt
    i8 100, label %bb.bu
  ]

bb.br:                                            ; preds = %bb.bq, %bb.bq
  %i.iq = load i32, ptr @hf_tibia_dlg_error, align 4
  %i.ir = load i32, ptr %i.ig, align 4
  %i.is = or i32 %i.ir, -2147483648
  %i.it = call ptr @ptvcursor_add(ptr noundef %i.ia, i32 noundef %i.iq, i32 noundef 2, i32 noundef %i.is) ; 0 uses
  br label %bb.cj

bb.bs:                                            ; preds = %bb.bq
  %i.iu = load i32, ptr @hf_tibia_motd, align 4
  %i.iv = load i32, ptr %i.ig, align 4
  %i.iw = or i32 %i.iv, -2147483648
  %i.ix = call ptr @ptvcursor_add(ptr noundef %i.ia, i32 noundef %i.iu, i32 noundef 2, i32 noundef %i.iw) ; 0 uses
  br label %bb.cj

bb.bt:                                            ; preds = %bb.bq
  %i.iy = load i32, ptr @hf_tibia_session_key, align 4
  %i.iz = load i32, ptr %i.ig, align 4
  %i.ja = or i32 %i.iz, -2147483648
  %i.jb = call ptr @ptvcursor_add(ptr noundef %i.ia, i32 noundef %i.iy, i32 noundef 2, i32 noundef %i.ja) ; 0 uses
  br label %bb.cj

bb.bu:                                            ; preds = %bb.bq
  %i.jc = load i32, ptr %i.ba, align 8
  %i.jd = and i32 %i.jc, 524288
  %.not.i123.i = icmp eq i32 %i.jd, 0
  %i.je = call i32 @ptvcursor_current_offset(ptr noundef %i.ia)
  %i.jf = call zeroext i8 @tvb_get_uint8(ptr noundef %.196.i, i32 noundef %i.je) ; 3 uses
  %.not115.i.i = icmp eq i8 %i.jf, 0              ; 2 uses
  br i1 %.not.i123.i, label %bb.cd, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jg = load i32, ptr @hf_tibia_worldlist_length, align 4
  %i.jh = call ptr @ptvcursor_add(ptr noundef %i.ia, i32 noundef %i.jg, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %.not115.i.i, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ji = load i32, ptr @hf_tibia_worldlist, align 4
  %i.jj = load i32, ptr @ett_worldlist, align 4
  %i.jk = call ptr @ptvcursor_add_with_subtree(ptr noundef %i.ia, i32 noundef %i.ji, i32 noundef -1, i32 noundef 0, i32 noundef %i.jj) ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %bb.bw
  %.0109123.i.i = phi i8 [ %i.jf, %bb.bw ], [ %i.jl, %bb.bx ]
  %i.jl = add i8 %.0109123.i.i, -1                ; 2 uses
  %i.jm = load i32, ptr @hf_tibia_worldlist_entry_id, align 4
  %i.jn = call ptr @ptvcursor_add(ptr noundef %i.ia, i32 noundef %i.jm, i32 noundef 1, i32 noundef 0)
  %i.jo = load i32, ptr @ett_world, align 4
  %i.jp = call ptr @ptvcursor_push_subtree(ptr noundef %i.ia, ptr noundef %i.jn, i32 noundef %i.jo) ; 0 uses
  %i.jq = load i32, ptr @hf_tibia_worldlist_entry_name, align 4
  %i.jr = load i32, ptr %i.ig, align 4
  %i.js = or i32 %i.jr, -2147483648
  %i.jt = call ptr @ptvcursor_add(ptr noundef %i.ia, i32 noundef %i.jq, i32 noundef 2, i32 noundef %i.js) ; 0 uses
  %i.ju = call i32 @ptvcursor_current_offset(ptr noundef %i.ia)
  %i.jv = call zeroext i16 @tvb_get_letohs(ptr noundef %.196.i, i32 noundef %i.ju)
  %i.jw = zext i16 %i.jv to i32
  %i.jx = load ptr, ptr %i.hy, align 8
  %i.jy = call i32 @ptvcursor_current_offset(ptr noundef %i.ia)
  %i.jz = add i32 %i.jy, 2
  %i.ka = load i32, ptr %i.ig, align 4
  %i.kb = or i32 %i.ka, -2147483648
  %i.kc = call ptr @tvb_get_string_enc(ptr noundef %i.jx, ptr noundef %.196.i, i32 noundef %i.jz, i32 noundef %i.jw, i32 noundef %i.kb) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.kc, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4
  %i.kd = call zeroext i1 @ws_strtou8(ptr noundef %i.kc, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.ke = load ptr, ptr %i.a, align 8
  %i.kf = getelementptr i8, ptr %i.ke, i64 1      ; 2 uses
  store ptr %i.kf, ptr %i.a, align 8
  %i.kg = call zeroext i1 @ws_strtou8(ptr noundef %i.kf, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ih) ; 0 uses
  %i.kh = load ptr, ptr %i.a, align 8
  %i.ki = getelementptr i8, ptr %i.kh, i64 1      ; 2 uses
  store ptr %i.ki, ptr %i.a, align 8
  %i.kj = call zeroext i1 @ws_strtou8(ptr noundef %i.ki, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ii) ; 0 uses
  %i.kk = load ptr, ptr %i.a, align 8
  %i.kl = getelementptr i8, ptr %i.kk, i64 1      ; 2 uses
  store ptr %i.kl, ptr %i.a, align 8
  %i.km = call zeroext i1 @ws_strtou8(ptr noundef %i.kl, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ij) ; 0 uses
  %i.kn = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ko = load i32, ptr @hf_tibia_worldlist_entry_ip, align 4
  %i.kp = load i32, ptr %i.ig, align 4
  %i.kq = or i32 %i.kp, -2147483648
  %i.kr = call ptr @ptvcursor_add(ptr noundef %i.ia, i32 noundef %i.ko, i32 noundef 2, i32 noundef %i.kq) ; 0 uses
  %i.ks = call i32 @ptvcursor_current_offset(ptr noundef %i.ia)
  %i.kt = call zeroext i16 @tvb_get_letohs(ptr noundef %.196.i, i32 noundef %i.ks)
  %i.ku = load i32, ptr @hf_tibia_worldlist_entry_port, align 4
  %i.kv = call ptr @ptvcursor_add(ptr noundef %i.ia, i32 noundef %i.ku, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.kw = load i32, ptr @hf_tibia_worldlist_entry_preview, align 4
  %i.kx = call ptr @ptvcursor_add(ptr noundef %i.ia, i32 noundef %i.kw, i32 noundef 1, i32 noundef 0) ; 0 uses
  call void @ptvcursor_pop_subtree(ptr noundef %i.ia)
  call fastcc void @register_gameserv_addr(ptr noundef readonly %.0.i, i32 noundef %i.kn, i16 noundef zeroext %i.kt)
  %.not118.i.i = icmp eq i8 %i.jl, 0
  br i1 %.not118.i.i, label %bb.by, label %bb.bx, !llvm.loop !17

bb.by:                                            ; preds = %bb.bx
  call void @ptvcursor_pop_subtree(ptr noundef %i.ia)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %i.ky = call i32 @ptvcursor_current_offset(ptr noundef %i.ia)
  %i.kz = call zeroext i8 @tvb_get_uint8(ptr noundef %.196.i, i32 noundef %i.ky) ; 2 uses
  %i.la = load i32, ptr @hf_tibia_charlist_length, align 4
end_hunk_0
