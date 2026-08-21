inline.NumInlined: 30
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ff_h2645_packet_split:bb.a
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cm = sext i32 %.0107254 to i64               ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %1, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0253, i64 3
  %.not.i140 = icmp ult ptr %i.co, %i.cn
  br i1 %.not.i140, label %.lr.ph.preheader.i, label %bb.w

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.cp = ptrtoaddr ptr %i.cn to i64
  %i.cq = ptrtoaddr ptr %.sroa.0.0253 to i64      ; 2 uses
  %reass.sub = sub i64 %i.cp, %i.cq
  %i.cr = add i64 %reass.sub, 4294967293
  %i.cs = add i64 %i.au, %i.cm
  %i.ct = sub i64 %i.cs, %i.cq
  br label %.lr.ph.i141

bb.w:                                             ; preds = %bb.v
  %i.cu = ptrtoint ptr %i.cn to i64
  %i.cv = sub i64 %i.cu, %i.ay
  br label %find_next_start_code.exit

.lr.ph.i141:                                      ; preds = %bb.z, %.lr.ph.preheader.i
  %indvars.iv.i142 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i143, %bb.z ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0253, i64 %indvars.iv.i142 ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.x, label %bb.z

bb.x:                                             ; preds = %.lr.ph.i141
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !15
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15
  %i.de = icmp eq i8 %i.dd, 1
  br i1 %i.de, label %._crit_edge.i145, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %.lr.ph.i141
  %indvars.iv.next.i143 = add i64 %indvars.iv.i142, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next.i143, %i.ct
  br i1 %exitcond, label %._crit_edge.i145, label %.lr.ph.i141, !llvm.loop !47

._crit_edge.i145:                                 ; preds = %bb.y, %bb.z
  %.0.lcssa.ph.i = phi i64 [ %i.cr, %bb.z ], [ %indvars.iv.i142, %bb.y ]
  %i.df = add i64 %.0.lcssa.ph.i, 3
  br label %find_next_start_code.exit

find_next_start_code.exit:                        ; preds = %bb.w, %._crit_edge.i145
  %.015.i = phi i64 [ %i.cv, %bb.w ], [ %i.df, %._crit_edge.i145 ]
  %i.dg = and i64 %.015.i, 4294967295
  %..i137 = call i64 @llvm.smin.i64(i64 %i.ax, i64 %i.dg)
  %i.dh = getelementptr inbounds i8, ptr %.sroa.0.0253, i64 %..i137 ; 3 uses
  %i.di = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dj = sub i64 %i.ak, %i.di                    ; 2 uses
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %.not128 = icmp eq i32 %i.dk, 0
  br i1 %.not128, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %find_next_start_code.exit
  %i.dl = load i32, ptr %i.aj, align 8, !tbaa !44
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.thread235, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.4) #9
  br label %.thread235

bb.ac:                                            ; preds = %find_next_start_code.exit
  %i.dn = sub i64 %i.di, %i.am
  %i.do = trunc i64 %i.dn to i32                  ; 2 uses
  %i.dp = sub nsw i32 %.0107254, %i.do            ; 2 uses
  %spec.select = call i32 @llvm.smin.i32(i32 %i.dp, i32 %i.dk)
  %.not129 = icmp sgt i32 %.0107254, %i.do
  br i1 %.not129, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = zext i32 %i.dp to i64
  %..i136 = call i64 @llvm.smin.i64(i64 %i.dj, i64 %i.dq)
  %i.dr = getelementptr inbounds i8, ptr %i.dh, i64 %..i136 ; 2 uses
  %.pre277 = ptrtoint ptr %i.dr to i64            ; 2 uses
  %.pre278.a = sub i64 %i.ak, %.pre277            ; 2 uses
  %.pre280 = trunc i64 %.pre278.a to i32
  br label %.thread211, !llvm.loop !48

bb.ae:                                            ; preds = %bb.ac, %.thread
  %.sroa.0.3 = phi ptr [ %i.cg, %.thread ], [ %i.dh, %bb.ac ] ; 3 uses
  %.2109 = phi i32 [ %i.ck, %.thread ], [ %.0107254, %bb.ac ] ; 6 uses
  %.1 = phi i32 [ %.lcssa, %.thread ], [ %spec.select, %bb.ac ] ; 6 uses
  %i.ds = load i32, ptr %i.aq, align 4, !tbaa !49 ; 2 uses
  %i.dt = load i32, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %.not130 = icmp sgt i32 %i.ds, %i.dt
  br i1 %.not130, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = add nsw i32 %i.ds, 1                    ; 3 uses
  %i.dv = icmp ugt i32 %i.du, 24403222
  br i1 %i.dv, label %.thread235, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dw = load ptr, ptr %0, align 8, !tbaa !50
  %narrow = mul nuw nsw i32 %i.du, 88
  %i.dx = zext nneg i32 %narrow to i64
  %i.dy = call ptr @av_fast_realloc(ptr noundef %i.dw, ptr noundef nonnull %i.ar, i64 noundef %i.dx) #9 ; 3 uses
  %.not131 = icmp eq ptr %i.dy, null
  br i1 %.not131, label %.thread235, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.dy, ptr %0, align 8, !tbaa !50
  %i.dz = load i32, ptr %i.aq, align 4, !tbaa !49
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [88 x i8], ptr %i.dy, i64 %i.ea
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.eb, i8 0, i64 88, i1 false)
  %i.ec = load ptr, ptr %0, align 8, !tbaa !50
  %i.ed = load i32, ptr %i.aj, align 8, !tbaa !44
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [88 x i8], ptr %i.ec, i64 %i.ee ; 2 uses
  %i.eg = icmp slt i32 %.1, 3069
  br i1 %i.eg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eh = sdiv i32 %.1, 3
  %i.ei = add nsw i32 %i.eh, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ej = phi i32 [ %i.ei, %bb.ai ], [ 1024, %bb.ah ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 76
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !34
  %i.el = sext i32 %i.ej to i64
  %i.em = call ptr @av_malloc_array(i64 noundef %i.el, i64 noundef 4) #9 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 80
  store ptr %i.em, ptr %i.en, align 8, !tbaa !33
  %.not132 = icmp eq ptr %i.em, null
  br i1 %.not132, label %.thread235, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.du, ptr %i.aq, align 4, !tbaa !49
  %.pre = load i32, ptr %i.aj, align 8, !tbaa !44
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ae
  %i.eo = phi i32 [ %.pre, %bb.ak ], [ %i.dt, %bb.ae ]
  %i.ep = load ptr, ptr %0, align 8, !tbaa !50
  %i.eq = sext i32 %i.eo to i64
  %i.er = getelementptr inbounds [88 x i8], ptr %i.ep, i64 %i.eq ; 20 uses
  %i.es = call i32 @ff_h2645_extract_rbsp(ptr noundef %.sroa.0.3, i32 noundef %.1, ptr noundef nonnull %i.j, ptr noundef %i.er, i32 noundef %.lobit133) ; 5 uses
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %.thread235, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %.not, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eu = icmp ne i32 %.1, %i.es
  %i.ev = icmp ne i32 %.1, 0
  %or.cond = and i1 %i.ev, %i.eu
  br i1 %or.cond, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 48, ptr noundef nonnull @.str.5, i32 noundef %i.es, i32 noundef %.1) #9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.ew = ptrtoint ptr %.sroa.0.3 to i64
  %i.ex = sub i64 %i.ak, %i.ew
  %i.ey = zext nneg i32 %i.es to i64
  %..i = call i64 @llvm.smin.i64(i64 %i.ex, i64 %i.ey)
  %i.ez = getelementptr inbounds i8, ptr %.sroa.0.3, i64 %..i ; 8 uses
  %i.fa = ptrtoint ptr %i.ez to i64               ; 7 uses
  %i.fb = sub i64 %i.ak, %i.fa                    ; 8 uses
  %i.fc = trunc i64 %i.fb to i32                  ; 7 uses
  %i.fd = icmp slt i32 %i.fc, 4
  %i.fe = icmp slt i64 %i.fb, 4
  %or.cond244 = or i1 %i.fe, %i.fd
  br i1 %or.cond244, label %bytestream2_peek_be32.exit.thread, label %bytestream2_peek_be32.exit

bytestream2_peek_be32.exit:                       ; preds = %bb.ap
  %i.ff = load i32, ptr %i.ez, align 1, !tbaa !15
  %.fr = freeze i32 %i.ff
  %i.fg = icmp eq i32 %.fr, -536805376
  br i1 %i.fg, label %.thread223, label %bytestream2_peek_be32.exit.thread

.thread223:                                       ; preds = %bytestream2_peek_be32.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !21
  br label %.critedge.i

bytestream2_peek_be32.exit.thread:                ; preds = %bytestream2_peek_be32.exit, %bb.ap
  %i.fj = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !21 ; 4 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph.i147, label %.critedge.i

.lr.ph.i147:                                      ; preds = %bytestream2_peek_be32.exit.thread
  %i.fm = load ptr, ptr %i.er, align 8, !tbaa !19
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %.lr.ph.i147
  %.02136.i = phi i32 [ %i.fk, %.lr.ph.i147 ], [ %8, %bb.ar ] ; 4 uses
  %7 = zext nneg i32 %.02136.i to i64
  %i.fn = getelementptr i8, ptr %i.fm, i64 %7
  %i.fo = getelementptr i8, ptr %i.fn, i64 -1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !15
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.ar, label %.critedge.thread.i

bb.ar:                                            ; preds = %bb.aq
  %8 = add nsw i32 %.02136.i, -1
  %i.fr = icmp sgt i32 %.02136.i, 1
  br i1 %i.fr, label %bb.aq, label %get_bit_length.exit.thread, !llvm.loop !51

.critedge.i:                                      ; preds = %.thread223, %bytestream2_peek_be32.exit.thread
  %i.fs = phi i32 [ %i.fi, %.thread223 ], [ %i.fk, %bytestream2_peek_be32.exit.thread ] ; 3 uses
  %.not.i146 = icmp eq i32 %i.fs, 0
  br i1 %.not.i146, label %get_bit_length.exit.thread, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.aq, %.critedge.i
  %i.ft = phi i32 [ %i.fs, %.critedge.i ], [ %i.fk, %bb.aq ] ; 2 uses
  %.02134.i = phi i32 [ %i.fs, %.critedge.i ], [ %.02136.i, %bb.aq ] ; 4 uses
  %.not26.i = icmp sgt i32 %.02134.i, %i.at
  br i1 %.not26.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.critedge.thread.i
  %i.fu = icmp slt i32 %i.ft, %i.at
  br i1 %i.fu, label %get_bit_length.exit.thread, label %get_bit_length.exit

bb.at:                                            ; preds = %.critedge.thread.i
  %i.fv = load ptr, ptr %i.er, align 8, !tbaa !19
  %i.fw = zext nneg i32 %.02134.i to i64
  %i.fx = getelementptr i8, ptr %i.fv, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 -1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !15  ; 2 uses
  %.not27.i = icmp eq i8 %i.fz, 0
  %i.ga = call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.fz, i1 true)
  %i.gb = xor i8 %i.ga, -1
  %narrow.i = select i1 %.not27.i, i8 0, i8 %i.gb
  %.1.neg.i = sext i8 %narrow.i to i32
  %i.gc = icmp sgt i32 %.02134.i, 268435455
  br i1 %i.gc, label %get_bit_length.exit.thread, label %get_bit_length.exit

get_bit_length.exit.thread:                       ; preds = %bb.ar, %.critedge.i, %bb.as, %bb.at
  %.023.i.ph = phi i32 [ 0, %.critedge.i ], [ -34, %bb.at ], [ -1094995529, %bb.as ], [ 0, %bb.ar ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i32 %.023.i.ph, ptr %i.gd, align 4, !tbaa !52
  br label %.thread211

get_bit_length.exit:                              ; preds = %bb.as, %bb.at
  %.1.neg32.i = phi i32 [ %.1.neg.i, %bb.at ], [ 0, %bb.as ]
  %.12231.i = phi i32 [ %.02134.i, %bb.at ], [ %i.at, %bb.as ]
  %i.ge = shl nuw nsw i32 %.12231.i, 3
  %i.gf = add nsw i32 %i.ge, %.1.neg32.i          ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !52
  %i.gh = icmp slt i32 %i.ft, 1
  %i.gi = icmp slt i32 %i.gf, 1
  %or.cond135 = select i1 %i.gh, i1 true, i1 %i.gi
  br i1 %or.cond135, label %.thread211, label %bb.au, !llvm.loop !48

bb.au:                                            ; preds = %get_bit_length.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.gk = load ptr, ptr %i.er, align 8, !tbaa !19 ; 13 uses
  %i.gl = icmp samesign ult i32 %i.gf, 2147483135 ; 2 uses
  %i.gm = icmp ne ptr %i.gk, null
  %or.cond3.i = and i1 %i.gl, %i.gm               ; 2 uses
  %.014.i = select i1 %i.gl, ptr %i.gk, ptr null
  %.013.i = select i1 %or.cond3.i, i32 %i.gf, i32 0 ; 2 uses
  store ptr %.014.i, ptr %i.gj, align 8, !tbaa !53
  %i.gn = getelementptr inbounds nuw i8, ptr %i.er, i64 44
  store i32 %.013.i, ptr %i.gn, align 4, !tbaa !54
  %i.go = add nuw nsw i32 %.013.i, 8              ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  store i32 %i.go, ptr %i.gp, align 8, !tbaa !55
  %i.gq = getelementptr inbounds nuw i8, ptr %i.er, i64 40 ; 13 uses
  store i32 0, ptr %i.gq, align 8, !tbaa !56
  br i1 %or.cond3.i, label %bb.av, label %.thread235

bb.av:                                            ; preds = %bb.au
  %i.gr = getelementptr inbounds nuw i8, ptr %i.er, i64 56 ; 6 uses
  store i32 0, ptr %i.gr, align 8, !tbaa !57
  %i.gs = load i8, ptr %i.gk, align 1, !tbaa !15
  store i32 1, ptr %i.gq, align 8, !tbaa !56
  %.not.i156 = icmp sgt i8 %i.gs, -1              ; 4 uses
  switch i32 %5, label %bb.bc [
    i32 195, label %bb.aw
    i32 98316, label %bb.az
  ]

bb.aw:                                            ; preds = %bb.av
  br i1 %.not.i156, label %bb.ax, label %vvc_parse_nal_header.exit.thread

bb.ax:                                            ; preds = %bb.aw
  store i32 2, ptr %i.gq, align 8, !tbaa !56
  %i.gt = load i32, ptr %i.gk, align 1, !tbaa !15
  %i.gu = and i32 %i.gt, 63                       ; 2 uses
  store i32 8, ptr %i.gq, align 8, !tbaa !56
  %i.gv = getelementptr inbounds nuw i8, ptr %i.er, i64 68
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !58
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gx = load i32, ptr %i.gw, align 1, !tbaa !15
  %i.gy = call i32 @llvm.bswap.i32(i32 %i.gx)     ; 2 uses
  %i.gz = lshr i32 %i.gy, 27                      ; 5 uses
  %i.ha = call i32 @llvm.umin.i32(i32 %i.go, i32 13) ; 3 uses
  store i32 %i.ha, ptr %i.gq, align 8, !tbaa !56
  store i32 %i.gz, ptr %i.gr, align 8, !tbaa !57
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.hc = load i32, ptr %i.hb, align 1, !tbaa !15
  %i.hd = call i32 @llvm.bswap.i32(i32 %i.hc)
  %i.he = and i32 %i.ha, 7
  %i.hf = shl i32 %i.hd, %i.he
  %i.hg = lshr i32 %i.hf, 29                      ; 2 uses
  %i.hh = add nuw nsw i32 %i.ha, 3
  %i.hi = call i32 @llvm.umin.i32(i32 %i.go, i32 %i.hh)
  store i32 %i.hi, ptr %i.gq, align 8, !tbaa !56
  %i.hj = add nsw i32 %i.hg, -1                   ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  store i32 %i.hj, ptr %i.hk, align 8, !tbaa !59
  %i.hl = icmp eq i32 %i.hg, 0
  br i1 %i.hl, label %vvc_parse_nal_header.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hm = add i32 %i.gy, -1610612736
  %or.cond.i151 = icmp ult i32 %i.hm, -671088640
  %.not20.i = icmp eq i32 %i.hj, 0
  %or.cond21.i = select i1 %or.cond.i151, i1 true, i1 %.not20.i
  br i1 %or.cond21.i, label %vvc_nal_unit_name.exit.i, label %vvc_parse_nal_header.exit.thread

vvc_nal_unit_name.exit.i:                         ; preds = %bb.ay
  %i.hn = zext nneg i32 %i.gz to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr @vvc_nal_type_name, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !60
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 48, ptr noundef nonnull @.str.11, i32 noundef %i.gz, ptr noundef %i.hp, i32 noundef %i.gu, i32 noundef %i.hj) #9
  br label %vvc_parse_nal_header.exit.thread232

bb.az:                                            ; preds = %bb.av
  br i1 %.not.i156, label %bb.ba, label %vvc_parse_nal_header.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.hq = load i8, ptr %i.gk, align 1, !tbaa !15
  store i32 2, ptr %i.gq, align 8, !tbaa !56
  %i.hr = and i8 %i.hq, 64
  %.not8.not.i = icmp eq i8 %i.hr, 0
  br i1 %.not8.not.i, label %vvc_parse_nal_header.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hs = load i32, ptr %i.gk, align 1, !tbaa !15
  %i.ht = lshr i32 %i.hs, 1
  %i.hu = and i32 %i.ht, 31                       ; 3 uses
  store i32 7, ptr %i.gq, align 8, !tbaa !56
  store i32 %i.hu, ptr %i.gr, align 8, !tbaa !57
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr @lcevc_nal_type_name, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !60
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 48, ptr noundef nonnull @.str.45, i32 noundef %i.hu, ptr noundef %i.hx) #9
  br label %vvc_parse_nal_header.exit.thread232

bb.bc:                                            ; preds = %bb.av
  br i1 %i.as, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not.i156, label %bb.be, label %hevc_parse_nal_header.exit

bb.be:                                            ; preds = %bb.bd
  %i.hy = load i32, ptr %i.gk, align 1, !tbaa !15
  %i.hz = lshr i32 %i.hy, 1
  %i.ia = and i32 %i.hz, 63                       ; 3 uses
  store i32 7, ptr %i.gq, align 8, !tbaa !56
  store i32 %i.ia, ptr %i.gr, align 8, !tbaa !57
  %i.ib = load i32, ptr %i.gk, align 1, !tbaa !15
  %i.ic = call i32 @llvm.bswap.i32(i32 %i.ib)
  %i.id = lshr i32 %i.ic, 19
  %i.ie = and i32 %i.id, 63                       ; 2 uses
  %i.if = call i32 @llvm.umin.i32(i32 %i.go, i32 13) ; 3 uses
  store i32 %i.if, ptr %i.gq, align 8, !tbaa !56
  %i.ig = getelementptr inbounds nuw i8, ptr %i.er, i64 68
  store i32 %i.ie, ptr %i.ig, align 4, !tbaa !58
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.ii = load i32, ptr %i.ih, align 1, !tbaa !15
  %i.ij = call i32 @llvm.bswap.i32(i32 %i.ii)
  %i.ik = and i32 %i.if, 7
  %i.il = shl i32 %i.ij, %i.ik
  %i.im = lshr i32 %i.il, 29                      ; 2 uses
  %i.in = add nuw nsw i32 %i.if, 3
  %i.io = call i32 @llvm.umin.i32(i32 %i.go, i32 %i.in)
  store i32 %i.io, ptr %i.gq, align 8, !tbaa !56
  %i.ip = add nsw i32 %i.im, -1                   ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  store i32 %i.ip, ptr %i.iq, align 8, !tbaa !59
  %i.ir = icmp eq i32 %i.im, 0
  br i1 %i.ir, label %hevc_parse_nal_header.exit, label %hevc_parse_nal_header.exit.thread

hevc_parse_nal_header.exit:                       ; preds = %bb.bd, %bb.be
  %i.is = getelementptr inbounds nuw i8, ptr %i.er, i64 68
  %i.it = load i32, ptr %i.is, align 4, !tbaa !58
  %i.iu = icmp eq i32 %i.it, 63
  br i1 %i.iu, label %.thread211, label %vvc_parse_nal_header.exit.vvc_parse_nal_header.exit.thread_crit_edge, !llvm.loop !48

hevc_parse_nal_header.exit.thread:                ; preds = %bb.be
  %i.iv = zext nneg i32 %i.ia to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr @hevc_nal_type_name, i64 %i.iv
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !60
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 48, ptr noundef nonnull @.str.11, i32 noundef %i.ia, ptr noundef %i.ix, i32 noundef %i.ie, i32 noundef %i.ip) #9
  %i.iy = getelementptr inbounds nuw i8, ptr %i.er, i64 68
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !58
  %i.ja = icmp eq i32 %i.iz, 63
  br i1 %i.ja, label %.thread211, label %vvc_parse_nal_header.exit.thread232, !llvm.loop !48

bb.bf:                                            ; preds = %bb.bc
  br i1 %.not.i156, label %bb.bg, label %vvc_parse_nal_header.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.jb = load i32, ptr %i.gk, align 1, !tbaa !15
  %i.jc = lshr i32 %i.jb, 5
  %i.jd = and i32 %i.jc, 3                        ; 2 uses
  store i32 3, ptr %i.gq, align 8, !tbaa !56
  %i.je = getelementptr inbounds nuw i8, ptr %i.er, i64 60
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !61
  %i.jf = load i32, ptr %i.gk, align 1, !tbaa !15
  %i.jg = and i32 %i.jf, 31                       ; 3 uses
  store i32 8, ptr %i.gq, align 8, !tbaa !56
end_hunk_0
