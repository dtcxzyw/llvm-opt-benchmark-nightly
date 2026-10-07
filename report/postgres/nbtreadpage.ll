Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nbtreadpage?download=true
inline.NumInlined: 114
inline.NumDeleted: 42
begin_hunk_0_@_bt_advance_array_keys:bb.a
  %i.ck = and i32 %i.cf, 33554432
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = xor i1 %i.al, %i.cl
  br i1 %i.cm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cn = or disjoint i32 %i.cg, 65
  store i32 %i.cn, ptr %i.ap, align 8
  br label %bb.cf

bb.af:                                            ; preds = %bb.ad, %bb.ac
  br i1 %i.al, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.co = or disjoint i32 %i.cg, 524288
  store i32 %i.co, ptr %i.ap, align 8
  br label %bb.cf

bb.ah:                                            ; preds = %bb.af
  %i.cp = or disjoint i32 %i.cg, 1048576
  store i32 %i.cp, ptr %i.ap, align 8
  br label %bb.cf

bb.ai:                                            ; preds = %bb.v
  %i.cq = trunc nuw i8 %.0198378 to i1
  br i1 %i.cq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.cs = load i16, ptr %i.cr, align 4
  %i.ct = sext i16 %i.cs to i32                   ; 2 uses
  %i.cu = icmp slt i32 %3, %i.ct
  br i1 %i.cu, label %bb.ak, label %bb.aw

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %i.bl, label %bb.al, label %bb.cf

bb.al:                                            ; preds = %bb.ak
  %i.cv = getelementptr inbounds nuw i8, ptr %.0189, i64 4
  %i.cw = load i32, ptr %i.cv, align 4            ; 2 uses
  %.not.i233 = icmp eq i32 %i.cw, -1
  br i1 %.not.i233, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cx = add i32 %i.cw, -1
  %spec.select.i234 = select i1 %i.ak, i32 0, i32 %i.cx ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0189, i64 16
  store i32 %spec.select.i234, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.0189, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = sext i32 %spec.select.i234 to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i64 %i.dd, ptr %i.de, align 8
  br label %bb.cf

bb.an:                                            ; preds = %bb.al
  %i.df = getelementptr inbounds nuw i8, ptr %.0189, i64 22
  %i.dg = load i8, ptr %i.df, align 2, !range !6, !noundef !7
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.di = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.dj = load i64, ptr %i.di, align 8            ; 2 uses
  %.not21.i235 = icmp eq i64 %i.dj, 0
  br i1 %.not21.i235, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dk = inttoptr i64 %i.dj to ptr
  tail call void @pfree(ptr noundef nonnull %i.dk) #7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i64 0, ptr %i.dl, align 8
  %i.dm = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.dn = and i32 %i.dm, -7864386                 ; 4 uses
  store i32 %i.dn, ptr %i.ap, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.0189, i64 23
  %i.dp = load i8, ptr %i.do, align 1, !range !6, !noundef !7
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.dr = and i32 %i.dm, 33554432
  %i.ds = icmp eq i32 %i.dr, 0
  %i.dt = xor i1 %i.ak, %i.ds
  br i1 %i.dt, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.du = or disjoint i32 %i.dn, 65
  store i32 %i.du, ptr %i.ap, align 8
  br label %bb.cf

bb.at:                                            ; preds = %bb.ar, %bb.aq
  br i1 %i.ak, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dv = or disjoint i32 %i.dn, 524288
  store i32 %i.dv, ptr %i.ap, align 8
  br label %bb.cf

bb.av:                                            ; preds = %bb.at
  %i.dw = or disjoint i32 %i.dn, 1048576
  store i32 %i.dw, ptr %i.ap, align 8
  br label %bb.cf

bb.aw:                                            ; preds = %bb.aj
  %i.dx = call fastcc i64 @index_getattr(ptr noundef %2, i32 noundef %i.ct, ptr noundef %4, ptr noundef %i.g) ; 4 uses
  br i1 %i.bl, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %.not444 = xor i1 %i.bk, true
  %i.dy = and i1 %6, %.not444                     ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0189, i64 4
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = icmp eq i32 %i.ea, -1
  br i1 %i.eb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ec = load i8, ptr %i.g, align 1, !range !6, !noundef !7 ; 2 uses
  %i.ed = trunc nuw i8 %i.ec to i1
  call fastcc void @_bt_binsrch_skiparray_skey(i1 noundef zeroext %i.dy, i32 noundef %i.p, i64 noundef %i.dx, i1 noundef zeroext %i.ed, ptr noundef nonnull %.0189, ptr noundef nonnull %i.ap, ptr noundef %i.h)
  br label %bb.bh

bb.az:                                            ; preds = %bb.ax
  %i.ee = load ptr, ptr %i.aj, align 8
  %i.ef = getelementptr inbounds nuw [48 x i8], ptr %i.ee, i64 %indvars.iv
  %i.eg = load i8, ptr %i.g, align 1, !range !6, !noundef !7 ; 2 uses
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = call i32 @_bt_binsrch_array_skey(ptr noundef %i.ef, i1 noundef zeroext %i.dy, i32 noundef %i.p, i64 noundef %i.dx, i1 noundef zeroext %i.eh, ptr noundef nonnull %.0189, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.h)
  br label %bb.bh

bb.ba:                                            ; preds = %bb.aw
  %i.ej = load ptr, ptr %i.aj, align 8
  %i.ek = getelementptr inbounds nuw [48 x i8], ptr %i.ej, i64 %indvars.iv
  %i.el = load i8, ptr %i.g, align 1, !range !6, !noundef !7 ; 2 uses
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = load i32, ptr %i.ap, align 8            ; 3 uses
  %i.eq = and i32 %i.ep, 1
  %.not14.i = icmp eq i32 %i.eq, 0                ; 2 uses
  br i1 %i.em, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not14.i, label %bb.bc, label %_bt_compare_array_skey.exit

bb.bc:                                            ; preds = %bb.bb
  %i.er = and i32 %i.ep, 33554432
  %.not15.i = icmp eq i32 %i.er, 0
  %..i = select i1 %.not15.i, i32 1, i32 -1
  br label %_bt_compare_array_skey.exit

bb.bd:                                            ; preds = %bb.ba
  br i1 %.not14.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.es = and i32 %i.ep, 33554432
  %.not13.i = icmp eq i32 %i.es, 0
  %.16.i = select i1 %.not13.i, i32 -1, i32 1
  br label %_bt_compare_array_skey.exit

bb.bf:                                            ; preds = %bb.bd
  %i.et = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = tail call i64 @FunctionCall2Coll(ptr noundef %i.ek, i32 noundef %i.eu, i64 noundef %i.dx, i64 noundef %i.eo) #7
  %i.ew = trunc i64 %i.ev to i32                  ; 3 uses
  %i.ex = load i32, ptr %i.ap, align 8
  %i.ey = and i32 %i.ex, 16777216
  %.not12.i = icmp eq i32 %i.ey, 0
  br i1 %.not12.i, label %_bt_compare_array_skey.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ez = icmp slt i32 %i.ew, 0
  %i.fa = sub i32 0, %i.ew
  %i.fb = select i1 %i.ez, i32 1, i32 %i.fa
  br label %_bt_compare_array_skey.exit

_bt_compare_array_skey.exit:                      ; preds = %bb.bb, %bb.bc, %bb.be, %bb.bf, %bb.bg
  %.0.i = phi i32 [ %i.ew, %bb.bf ], [ %..i, %bb.bc ], [ 0, %bb.bb ], [ %.16.i, %bb.be ], [ %i.fb, %bb.bg ]
  store i32 %.0.i, ptr %i.h, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.ay, %bb.az, %_bt_compare_array_skey.exit
  %i.fc = phi i8 [ %i.el, %_bt_compare_array_skey.exit ], [ %i.ec, %bb.ay ], [ %i.eg, %bb.az ]
  %.1187 = phi i32 [ 0, %_bt_compare_array_skey.exit ], [ 0, %bb.ay ], [ %i.ei, %bb.az ] ; 3 uses
  %or.cond6 = and i1 %6, %.not221
  %i.fd = load i32, ptr %i.h, align 4             ; 4 uses
  br i1 %or.cond6, label %.thread, label %bb.bi

.thread:                                          ; preds = %bb.bh
  %i.fe = icmp sgt i32 %i.fd, 0
  %or.cond8 = select i1 %i.ak, i1 %i.fe, i1 false
  %i.ff = icmp slt i32 %i.fd, 0                   ; 2 uses
  %or.cond10 = select i1 %i.al, i1 %i.ff, i1 false
  %or.cond394 = select i1 %or.cond8, i1 true, i1 %or.cond10
  %.1206.ph = zext i1 %or.cond394 to i8
  %.not223252 = icmp eq i32 %i.fd, 0              ; 2 uses
  %.0194.mux255 = select i1 %.not223252, i1 %.0194379, i1 false
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %.not223 = icmp eq i32 %i.fd, 0
  br i1 %.not223, label %bb.bj, label %.thread269

bb.bj:                                            ; preds = %.thread, %bb.bi
  %.0194.mux259 = phi i1 [ %.0194.mux255, %.thread ], [ %.0194379, %bb.bi ] ; 8 uses
  %.0198.mux258.in = phi i1 [ %.not223252, %.thread ], [ true, %bb.bi ] ; 2 uses
  %i.fg = phi i1 [ %i.ff, %.thread ], [ false, %bb.bi ] ; 2 uses
  %.1206256 = phi i8 [ %.1206.ph, %.thread ], [ 0, %bb.bi ] ; 8 uses
  %.0198.mux258 = zext i1 %.0198.mux258.in to i8  ; 8 uses
  br i1 %i.bl, label %bb.bk, label %bb.cf

bb.bk:                                            ; preds = %bb.bj
  %i.fh = getelementptr inbounds nuw i8, ptr %.0189, i64 4
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = icmp eq i32 %i.fi, -1
  br i1 %i.fj, label %bb.bl, label %bb.cd

bb.bl:                                            ; preds = %bb.bk
  br i1 %.0198.mux258.in, label %bb.bv, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fk = getelementptr inbounds nuw i8, ptr %.0189, i64 22
  %i.fl = load i8, ptr %i.fk, align 2, !range !6, !noundef !7
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.fo = load i64, ptr %i.fn, align 8            ; 2 uses
  %.not21.i.i = icmp eq i64 %i.fo, 0
  br i1 %.not21.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fp = inttoptr i64 %i.fo to ptr
  tail call void @pfree(ptr noundef nonnull %i.fp) #7
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i64 0, ptr %i.fq, align 8
  %i.fr = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.fs = and i32 %i.fr, -7864386                 ; 4 uses
  store i32 %i.fs, ptr %i.ap, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.0189, i64 23
  %i.fu = load i8, ptr %i.ft, align 1, !range !6, !noundef !7
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.fw = and i32 %i.fr, 33554432
  %i.fx = icmp eq i32 %i.fw, 0
  %i.fy = xor i1 %i.fg, %i.fx
  br i1 %i.fy, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.fz = or disjoint i32 %i.fs, 65
  store i32 %i.fz, ptr %i.ap, align 8
  br label %bb.cf

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.fg, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ga = or disjoint i32 %i.fs, 524288
  store i32 %i.ga, ptr %i.ap, align 8
  br label %bb.cf

bb.bu:                                            ; preds = %bb.bs
  %i.gb = or disjoint i32 %i.fs, 1048576
  store i32 %i.gb, ptr %i.ap, align 8
  br label %bb.cf

bb.bv:                                            ; preds = %bb.bl
  %i.gc = trunc nuw i8 %i.fc to i1
  %i.gd = getelementptr i8, ptr %.0189, i64 22    ; 2 uses
  %.val.i = load i8, ptr %i.gd, align 2, !range !6, !noundef !7
  %i.ge = trunc nuw i8 %.val.i to i1              ; 2 uses
  br i1 %i.gc, label %bb.bw, label %bb.bz, !prof !8

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.ge, label %_bt_skiparray_set_isnull.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.gg = load i64, ptr %i.gf, align 8            ; 2 uses
  %.not.i18.i = icmp eq i64 %i.gg, 0
  br i1 %.not.i18.i, label %_bt_skiparray_set_isnull.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gh = inttoptr i64 %i.gg to ptr
  tail call void @pfree(ptr noundef nonnull %i.gh) #7
  br label %_bt_skiparray_set_isnull.exit.i

_bt_skiparray_set_isnull.exit.i:                  ; preds = %bb.by, %bb.bx, %bb.bw
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i64 0, ptr %i.gi, align 8
  %i.gj = load i32, ptr %i.ap, align 8
  %i.gk = and i32 %i.gj, -7864386
  %i.gl = or disjoint i32 %i.gk, 65
  store i32 %i.gl, ptr %i.ap, align 8
  br label %bb.cf

bb.bz:                                            ; preds = %bb.bv
  br i1 %i.ge, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.gn = load i64, ptr %i.gm, align 8            ; 2 uses
  %.not17.i = icmp eq i64 %i.gn, 0
  br i1 %.not17.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.go = inttoptr i64 %i.gn to ptr
  tail call void @pfree(ptr noundef nonnull %i.go) #7
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz
  %i.gp = load i32, ptr %i.ap, align 8
  %i.gq = and i32 %i.gp, -7864386
  store i32 %i.gq, ptr %i.ap, align 8
  %i.gr = load i8, ptr %i.gd, align 2, !range !6, !noundef !7
  %i.gs = trunc nuw i8 %i.gr to i1
  %i.gt = getelementptr inbounds nuw i8, ptr %.0189, i64 20
  %i.gu = load i16, ptr %i.gt, align 4
  %i.gv = sext i16 %i.gu to i32
  %i.gw = tail call i64 @datumCopy(i64 noundef %i.dx, i1 noundef zeroext %i.gs, i32 noundef %i.gv) #7
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i64 %i.gw, ptr %i.gx, align 8
  br label %bb.cf

bb.cd:                                            ; preds = %bb.bk
  %i.gy = getelementptr inbounds nuw i8, ptr %.0189, i64 16 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8
  %.not224 = icmp eq i32 %i.gz, %.1187
  br i1 %.not224, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store i32 %.1187, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %.0189, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = sext i32 %.1187 to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i64 %i.he, ptr %i.hf, align 8
  br label %bb.cf

.thread269:                                       ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  br label %_bt_advance_array_keys_increment.exit.thread

bb.cf:                                            ; preds = %bb.p, %bb.t, %bb.bj, %bb.w, %bb.ak, %bb.u, %bb.cd, %bb.ah, %bb.av, %bb.ce, %bb.y, %bb.ae, %bb.ag, %bb.am, %bb.as, %bb.au, %bb.br, %bb.bt, %bb.bu, %_bt_skiparray_set_isnull.exit.i, %bb.cc
  %.1.ph = phi i1 [ true, %bb.cc ], [ true, %_bt_skiparray_set_isnull.exit.i ], [ true, %bb.bu ], [ true, %bb.bt ], [ true, %bb.br ], [ %.0374, %bb.au ], [ %.0374, %bb.as ], [ %.0374, %bb.am ], [ %.0374, %bb.ag ], [ %.0374, %bb.ae ], [ %.0374, %bb.y ], [ %.0374, %bb.u ], [ %.0374, %bb.bj ], [ %.0374, %bb.ce ], [ %.0374, %bb.cd ], [ %.0374, %bb.av ], [ %.0374, %bb.ak ], [ %.0374, %bb.ah ], [ %.0374, %bb.w ], [ %.0374, %bb.t ], [ %.0374, %bb.p ] ; 3 uses
  %.2207.ph = phi i8 [ %.1206256, %bb.cc ], [ %.1206256, %_bt_skiparray_set_isnull.exit.i ], [ %.1206256, %bb.bu ], [ %.1206256, %bb.bt ], [ %.1206256, %bb.br ], [ 0, %bb.au ], [ 0, %bb.as ], [ 0, %bb.am ], [ 1, %bb.ag ], [ 1, %bb.ae ], [ 1, %bb.y ], [ %.0205376, %bb.u ], [ %.1206256, %bb.bj ], [ %.1206256, %bb.ce ], [ %.1206256, %bb.cd ], [ 0, %bb.av ], [ 0, %bb.ak ], [ 1, %bb.ah ], [ 1, %bb.w ], [ 1, %bb.t ], [ %.0205376, %bb.p ] ; 2 uses
  %.2200.ph = phi i8 [ %.0198.mux258, %bb.cc ], [ %.0198.mux258, %_bt_skiparray_set_isnull.exit.i ], [ %.0198.mux258, %bb.bu ], [ %.0198.mux258, %bb.bt ], [ %.0198.mux258, %bb.br ], [ %.0198378, %bb.au ], [ %.0198378, %bb.as ], [ %.0198378, %bb.am ], [ %.0198378, %bb.ag ], [ %.0198378, %bb.ae ], [ %.0198378, %bb.y ], [ %.0198378, %bb.u ], [ %.0198.mux258, %bb.bj ], [ %.0198.mux258, %bb.ce ], [ %.0198.mux258, %bb.cd ], [ %.0198378, %bb.av ], [ %.0198378, %bb.ak ], [ %.0198378, %bb.ah ], [ %.0198378, %bb.w ], [ 0, %bb.t ], [ %.0198378, %bb.p ] ; 4 uses
  %.2196.ph = phi i1 [ %.0194.mux259, %bb.cc ], [ %.0194.mux259, %_bt_skiparray_set_isnull.exit.i ], [ %.0194.mux259, %bb.bu ], [ %.0194.mux259, %bb.bt ], [ %.0194.mux259, %bb.br ], [ %.0194379, %bb.au ], [ %.0194379, %bb.as ], [ %.0194379, %bb.am ], [ %.0194379, %bb.ag ], [ %.0194379, %bb.ae ], [ %.0194379, %bb.y ], [ %.0194379, %bb.u ], [ %.0194.mux259, %bb.bj ], [ %.0194.mux259, %bb.ce ], [ %.0194.mux259, %bb.cd ], [ %.0194379, %bb.av ], [ %.0194379, %bb.ak ], [ %.0194379, %bb.ah ], [ %.0194379, %bb.w ], [ false, %bb.t ], [ %.0194379, %bb.p ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hg = load i32, ptr %i.ad, align 4
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp slt i64 %indvars.iv.next, %i.hh
  br i1 %i.hi, label %bb.i, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.cf
  %i.hj = trunc nuw i8 %.2207.ph to i1
  br i1 %i.hj, label %bb.cg, label %_bt_advance_array_keys_increment.exit.thread

bb.cg:                                            ; preds = %._crit_edge
  %i.hk = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.hl = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load i32, ptr %i.hm, align 8
  %.027112.i = add i32 %i.hn, -1                  ; 2 uses
  %i.ho = icmp sgt i32 %.027112.i, -1
  br i1 %i.ho, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.cg
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hr = icmp eq i32 %i.p, 1                     ; 5 uses
  %i.hs = zext nneg i32 %.027112.i to i64
  br label %bb.ch

bb.ch:                                            ; preds = %_bt_array_set_low_or_high.exit.i, %.lr.ph.i
  %.5 = phi i1 [ %.1.ph, %.lr.ph.i ], [ %.6281, %_bt_array_set_low_or_high.exit.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %i.hs, %.lr.ph.i ], [ %indvars.iv.next.i, %_bt_array_set_low_or_high.exit.i ] ; 3 uses
  %i.ht = load ptr, ptr %i.hp, align 8
  %i.hu = getelementptr inbounds nuw [48 x i8], ptr %i.ht, i64 %indvars.iv.i ; 29 uses
  %i.hv = load ptr, ptr %i.hq, align 8
  %i.hw = load i32, ptr %i.hu, align 8
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [72 x i8], ptr %i.hv, i64 %i.hx ; 30 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4            ; 2 uses
  %i.ib = icmp eq i32 %i.ia, -1
  br i1 %i.ib, label %bb.ci, label %.thread279

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.hr, label %bb.cl, label %bb.dh

.thread279:                                       ; preds = %bb.ch
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 2 uses
  br i1 %i.hr, label %bb.cj, label %bb.df

bb.cj:                                            ; preds = %.thread279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.id = load i32, ptr %i.ic, align 8            ; 2 uses
end_hunk_0
