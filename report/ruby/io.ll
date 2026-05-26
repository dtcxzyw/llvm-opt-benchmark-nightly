inline.NumInlined: 1500
inline.NumDeleted: 204
begin_hunk_0_@rb_io_getline_0:bb.a
  br label %io_read_encoding.exit145

io_read_encoding.exit145:                         ; preds = %rb_enc_asciicompat.exit.thread, %bb.l
  %.0.i144 = phi ptr [ %i.z, %bb.l ], [ %.val, %rb_enc_asciicompat.exit.thread ] ; 17 uses
  br i1 %i.b, label %bb.y, label %bb.m

bb.m:                                             ; preds = %io_read_encoding.exit145
  %i.aa = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !81 ; 5 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @swallow(ptr noundef nonnull %3)
  %i.ae = getelementptr i8, ptr %.0.i144, i64 20
  %.val.i146 = load i32, ptr %i.ae, align 4, !tbaa !84
  %.not.i147 = icmp eq i32 %.val.i146, 1
  br i1 %.not.i147, label %rb_enc_asciicompat.exit150, label %rb_enc_asciicompat.exit150.thread

rb_enc_asciicompat.exit150:                       ; preds = %bb.n
  %i.af = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %.0.i144) #33
  %.not3.i149 = icmp eq i32 %i.af, 0
  br i1 %.not3.i149, label %bb.w, label %rb_enc_asciicompat.exit150.thread

rb_enc_asciicompat.exit150.thread:                ; preds = %bb.n, %rb_enc_asciicompat.exit150
  %i.ag = tail call i64 @rb_usascii_str_new(ptr noundef nonnull @.str.195, i64 noundef 2) #28
  %i.ah = tail call i64 @rb_str_conv_enc(i64 noundef %i.ag, ptr noundef null, ptr noundef nonnull %.0.i144) #28 ; 3 uses
  tail call void @rb_obj_freeze_inline(i64 noundef %i.ah) #28
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.ak = and i64 %i.aj, 8192
  %.not.i151 = icmp eq i64 %i.ak, 0
  %i.al = getelementptr i8, ptr %i.ai, i64 24     ; 2 uses
  br i1 %.not.i151, label %RSTRING_PTR.exit, label %bb.o

bb.o:                                             ; preds = %rb_enc_asciicompat.exit150.thread
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_enc_asciicompat.exit150.thread, %bb.o
  %i.an = phi ptr [ %i.am, %bb.o ], [ %i.al, %rb_enc_asciicompat.exit150.thread ]
  %i.ao = getelementptr i8, ptr %i.ai, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !81
  br label %bb.w

bb.p:                                             ; preds = %bb.m
  %i.aq = getelementptr i8, ptr %.0.i144, i64 20
  %.val137 = load i32, ptr %i.aq, align 4, !tbaa !84
  %i.ar = icmp eq i32 %.val137, 1
  br i1 %i.ar, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.as = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.at = and i64 %i.as, 8192
  %.not.i152 = icmp eq i64 %i.at, 0
  %i.au = getelementptr i8, ptr %i.aa, i64 24     ; 2 uses
  br i1 %.not.i152, label %RSTRING_PTR.exit153, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !86
  br label %RSTRING_PTR.exit153

RSTRING_PTR.exit153:                              ; preds = %bb.q, %bb.r
  %i.aw = phi ptr [ %i.av, %bb.r ], [ %i.au, %bb.q ] ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.ac
  %i.ay = getelementptr i8, ptr %i.ax, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !86
  %i.ba = zext i8 %i.az to i32
  br label %bb.w

bb.s:                                             ; preds = %bb.p
  %i.bb = tail call i64 @rb_str_conv_enc(i64 noundef %0, ptr noundef null, ptr noundef nonnull %.0.i144) #28 ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !16
  %i.be = and i64 %i.bd, 8192
  %.not.i154 = icmp eq i64 %i.be, 0
  %i.bf = getelementptr i8, ptr %i.bc, i64 24     ; 2 uses
  br i1 %.not.i154, label %RSTRING_PTR.exit155, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !86
  br label %RSTRING_PTR.exit155

RSTRING_PTR.exit155:                              ; preds = %bb.s, %bb.t
  %i.bh = phi ptr [ %i.bg, %bb.t ], [ %i.bf, %bb.s ] ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.ac  ; 4 uses
  %i.bj = tail call ptr @onigenc_get_prev_char_head(ptr noundef nonnull %.0.i144, ptr noundef %i.bh, ptr noundef %i.bi, ptr noundef %i.bi) #28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bk = call i32 @rb_enc_codepoint_len(ptr noundef %i.bj, ptr noundef %i.bi, ptr noundef nonnull %i.a, ptr noundef nonnull %.0.i144) #28
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !7
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %i.bj, i64 %i.bm
  %.not128 = icmp eq ptr %i.bn, %i.bi
  br i1 %.not128, label %bb.v, label %bb.u

bb.u:                                             ; preds = %RSTRING_PTR.exit155
  %i.bo = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bo, ptr noundef nonnull @.str.196) #30
  unreachable

bb.v:                                             ; preds = %RSTRING_PTR.exit155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.w

bb.w:                                             ; preds = %rb_enc_asciicompat.exit150, %RSTRING_PTR.exit, %RSTRING_PTR.exit153, %bb.v
  %.0119 = phi i32 [ %i.bk, %bb.v ], [ %i.ba, %RSTRING_PTR.exit153 ], [ 10, %RSTRING_PTR.exit ], [ 10, %rb_enc_asciicompat.exit150 ] ; 2 uses
  %.1117 = phi ptr [ %i.bh, %bb.v ], [ %i.aw, %RSTRING_PTR.exit153 ], [ %i.an, %RSTRING_PTR.exit ], [ @.str.195, %rb_enc_asciicompat.exit150 ] ; 2 uses
  %.1114 = phi i64 [ %i.ac, %bb.v ], [ %i.ac, %RSTRING_PTR.exit153 ], [ %i.ap, %RSTRING_PTR.exit ], [ 2, %rb_enc_asciicompat.exit150 ] ; 3 uses
  %.0111 = phi i32 [ 0, %bb.v ], [ 0, %RSTRING_PTR.exit153 ], [ 1, %RSTRING_PTR.exit ], [ 1, %rb_enc_asciicompat.exit150 ] ; 2 uses
  %.1 = phi i64 [ %i.bb, %bb.v ], [ %0, %RSTRING_PTR.exit153 ], [ %i.ah, %RSTRING_PTR.exit ], [ 0, %rb_enc_asciicompat.exit150 ] ; 2 uses
  %i.bp = icmp ne i32 %2, 0
  %i.bq = icmp eq i32 %.0119, 10
  %or.cond5 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond5, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.br = getelementptr i8, ptr %.0.i144, i64 20
  %.val136 = load i32, ptr %i.br, align 4, !tbaa !84
  %i.bs = sext i32 %.val136 to i64
  %i.bt = icmp eq i64 %.1114, %i.bs
  %i.bu = zext i1 %i.bt to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %io_read_encoding.exit145
  %.1120 = phi i32 [ -1, %io_read_encoding.exit145 ], [ 10, %bb.x ], [ %.0119, %bb.w ] ; 6 uses
  %.2118 = phi ptr [ null, %io_read_encoding.exit145 ], [ %.1117, %bb.x ], [ %.1117, %bb.w ] ; 2 uses
  %.2115 = phi i64 [ 0, %io_read_encoding.exit145 ], [ %.1114, %bb.x ], [ %.1114, %bb.w ] ; 4 uses
  %.1112 = phi i32 [ 0, %io_read_encoding.exit145 ], [ %.0111, %bb.x ], [ %.0111, %bb.w ] ; 2 uses
  %.0107 = phi i32 [ %2, %io_read_encoding.exit145 ], [ %i.bu, %bb.x ], [ 0, %bb.w ]
  %.2 = phi i64 [ 4, %io_read_encoding.exit145 ], [ %.1, %bb.x ], [ %.1, %bb.w ] ; 2 uses
  %i.bv = getelementptr i8, ptr %3, i64 104
  %i.bw = getelementptr i8, ptr %3, i64 20
  %i.bx = getelementptr i8, ptr %3, i64 148       ; 5 uses
  %i.by = getelementptr i8, ptr %3, i64 136       ; 3 uses
  %i.bz = getelementptr i8, ptr %3, i64 144       ; 5 uses
  %i.ca = getelementptr i8, ptr %.0.i144, i64 20  ; 4 uses
  %i.cb = getelementptr i8, ptr %.0.i144, i64 32  ; 2 uses
  %i.cc = getelementptr i8, ptr %3, i64 80        ; 4 uses
  %i.cd = getelementptr i8, ptr %3, i64 68        ; 2 uses
  %i.ce = getelementptr i8, ptr %3, i64 76        ; 4 uses
  %i.cf = getelementptr i8, ptr %3, i64 16
  %.not214 = icmp eq i32 %.1120, -1
  %i.cg = sub i64 0, %.2115
  %.not129 = icmp ne i32 %.1112, 0
  %.not.i161 = icmp eq i64 %.2, 0
  %or.cond213 = or i1 %.not129, %.not.i161
  %i.ch = inttoptr i64 %.2 to ptr                 ; 3 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 24     ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 16
  br label %.outer

.outer:                                           ; preds = %bb.cc, %bb.y
  %.0184.ph = phi i64 [ 1, %bb.cc ], [ %1, %bb.y ]
  %.0180.ph = phi i64 [ %.10200301308, %bb.cc ], [ 4, %bb.y ]
  %.0108.ph = phi i32 [ %i.ja, %bb.cc ], [ 16, %bb.y ] ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.backedge, %.outer
  %.0184 = phi i64 [ %.0184.ph, %.outer ], [ %.2186199304, %.backedge ] ; 2 uses
  %.0180 = phi i64 [ %.0180.ph, %.outer ], [ %.10200300, %.backedge ] ; 4 uses
  %i.ck = load ptr, ptr %i.bv, align 8, !tbaa !72
  %.not.i156 = icmp eq ptr %i.ck, null
  br i1 %.not.i156, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cl = load i32, ptr %i.bw, align 4, !tbaa !39
  %i.cm = and i32 %i.cl, 4096
  %.not131.i = icmp eq i32 %i.cm, 0
  br i1 %.not131.i, label %.preheader.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call fastcc void @make_readconv(ptr noundef nonnull %3, i32 noundef 0)
  br label %bb.ac

bb.ac:                                            ; preds = %more_char.exit.i, %bb.ab
  %.3183 = phi i64 [ %.0180, %bb.ab ], [ %.5, %more_char.exit.i ] ; 3 uses
  %.0118.i = phi i64 [ %.0184, %bb.ab ], [ %.2120.ph.i, %more_char.exit.i ] ; 6 uses
  %.0106.i = phi i64 [ %.0180, %bb.ab ], [ %.4110.ph.i, %more_char.exit.i ] ; 6 uses
  %i.cn = load i32, ptr %i.bx, align 4, !tbaa !45 ; 3 uses
  %.not134.i = icmp eq i32 %i.cn, 0
  br i1 %.not134.i, label %bb.as, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !87
  %i.cp = load i32, ptr %i.bz, align 8, !tbaa !88
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr i8, ptr %i.co, i64 %i.cq  ; 9 uses
  %i.cs = icmp sgt i64 %.0118.i, 0
  %i.ct = sext i32 %i.cn to i64
  %i.cu = icmp slt i64 %.0118.i, %i.ct
  %or.cond.i = and i1 %i.cs, %i.cu
  %i.cv = trunc nuw nsw i64 %.0118.i to i32
  %.0124.i = select i1 %or.cond.i, i32 %i.cv, i32 %i.cn ; 3 uses
  %i.cw = sext i32 %.0124.i to i64                ; 5 uses
  %.val36.i.i = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.cx = icmp eq i32 %.val36.i.i, 1
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cy = call ptr @memchr(ptr noundef %i.cr, i32 noundef %.1120, i64 noundef range(i64 -2147483648, 2147483648) %i.cw) #33 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  br i1 %.not.i.i, label %search_delim.exit.thread.i, label %search_delim.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.da = getelementptr i8, ptr %i.cr, i64 %i.cw  ; 4 uses
  %i.db = icmp ult ptr %i.cr, %i.da
  br i1 %i.db, label %.lr.ph.i.i, label %search_delim.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.af, %bb.ai
  %.03043.i.i = phi ptr [ %.232.i.i, %bb.ai ], [ %i.cr, %bb.af ] ; 4 uses
  %i.dc = call i32 @rb_enc_precise_mbclen(ptr noundef %.03043.i.i, ptr noundef nonnull %i.da, ptr noundef nonnull %.0.i144) #28 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i
  %.val.i.i = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.de = sext i32 %.val.i.i to i64
  %i.df = getelementptr i8, ptr %.03043.i.i, i64 %i.de
  br label %bb.ai, !llvm.loop !89

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.dg = load ptr, ptr %i.cb, align 8, !tbaa !90
  %i.dh = call i32 %i.dg(ptr noundef %.03043.i.i, ptr noundef nonnull %i.da, ptr noundef nonnull %.0.i144) #28, !inline_history !91
  %i.di = icmp eq i32 %i.dh, %.1120
  %i.dj = zext nneg i32 %i.dc to i64
  %i.dk = getelementptr i8, ptr %.03043.i.i, i64 %i.dj ; 2 uses
  br i1 %i.di, label %search_delim.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.232.i.i = phi ptr [ %i.dk, %bb.ah ], [ %i.df, %bb.ag ] ; 2 uses
  %i.dl = icmp ult ptr %.232.i.i, %i.da
  br i1 %i.dl, label %.lr.ph.i.i, label %search_delim.exit.thread.i

search_delim.exit.i:                              ; preds = %bb.ah, %bb.ae
  %.4.i.i = phi ptr [ %i.cz, %bb.ae ], [ %i.dk, %bb.ah ] ; 2 uses
  %.not135.i = icmp eq ptr %.4.i.i, null
  br i1 %.not135.i, label %search_delim.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %search_delim.exit.i
  %i.dm = ptrtoint ptr %.4.i.i to i64
  %i.dn = ptrtoint ptr %i.cr to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 2 uses
  %i.dp = trunc i64 %i.do to i32                  ; 2 uses
  %i.dq = icmp eq i64 %.0106.i, 4
  %sext136.i = shl i64 %i.do, 32
  %i.dr = ashr exact i64 %sext136.i, 32           ; 3 uses
  br i1 %i.dq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ds = call i64 @rb_str_new(ptr noundef %i.cr, i64 noundef %i.dr) #28
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.dt = call i64 @rb_str_cat(i64 noundef %.0106.i, ptr noundef %i.cr, i64 noundef %i.dr) #28 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.6 = phi i64 [ %i.ds, %bb.ak ], [ %.3183, %bb.al ]
  %i.du = load i32, ptr %i.bz, align 8, !tbaa !88
  %i.dv = add i32 %i.du, %i.dp
  store i32 %i.dv, ptr %i.bz, align 8, !tbaa !88
  %i.dw = load i32, ptr %i.bx, align 4, !tbaa !45
  %i.dx = sub i32 %i.dw, %i.dp
  store i32 %i.dx, ptr %i.bx, align 4, !tbaa !45
  %i.dy = sub i64 %.0118.i, %i.dr
  br label %appendline.exit

search_delim.exit.thread.i:                       ; preds = %bb.ai, %search_delim.exit.i, %bb.af, %bb.ae
  %i.dz = icmp eq i64 %.0106.i, 4
  br i1 %i.dz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %search_delim.exit.thread.i
  %i.ea = call i64 @rb_str_new(ptr noundef %i.cr, i64 noundef %i.cw) #28 ; 2 uses
  br label %bb.ap

bb.ao:                                            ; preds = %search_delim.exit.thread.i
  %i.eb = call i64 @rb_str_cat(i64 noundef %.0106.i, ptr noundef %i.cr, i64 noundef %i.cw) #28 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.4 = phi i64 [ %i.ea, %bb.an ], [ %.3183, %bb.ao ] ; 3 uses
  %.2108.i = phi i64 [ %i.ea, %bb.an ], [ %.0106.i, %bb.ao ] ; 2 uses
  %i.ec = load i32, ptr %i.bz, align 8, !tbaa !88
  %i.ed = add i32 %i.ec, %.0124.i
  store i32 %i.ed, ptr %i.bz, align 8, !tbaa !88
  %i.ee = load i32, ptr %i.bx, align 4, !tbaa !45
  %i.ef = sub i32 %i.ee, %.0124.i
  store i32 %i.ef, ptr %i.bx, align 4, !tbaa !45
  %i.eg = sub i64 %.0118.i, %i.cw                 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ei = inttoptr i64 %.2108.i to ptr            ; 4 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !16
  %i.ek = and i64 %i.ej, 8192
  %.not.i141.i = icmp eq i64 %i.ek, 0
  %i.el = getelementptr i8, ptr %i.ei, i64 24     ; 2 uses
  br i1 %.not.i141.i, label %appendline.exit.thread195, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !86
  br label %appendline.exit.thread195

bb.as:                                            ; preds = %bb.ap, %bb.ac
  %.5 = phi i64 [ %.3183, %bb.ac ], [ %.4, %bb.ap ] ; 3 uses
  %.2120.ph.i = phi i64 [ %.0118.i, %bb.ac ], [ %i.eg, %bb.ap ]
  %.4110.ph.i = phi i64 [ %.0106.i, %bb.ac ], [ %.2108.i, %bb.ap ]
  %i.en = call fastcc i64 @fill_cbuf(ptr noundef nonnull %3, i32 noundef 262144) ; 3 uses
  %i.eo = and i64 %i.en, -17
  %or.cond.not.i.i = icmp eq i64 %i.eo, 4
  br i1 %or.cond.not.i.i, label %more_char.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @rb_exc_raise(i64 noundef %i.en) #30
  unreachable

more_char.exit.i:                                 ; preds = %bb.as
  %.not138.i = icmp eq i64 %i.en, 4
  br i1 %.not138.i, label %bb.au, label %bb.ac, !llvm.loop !92

bb.au:                                            ; preds = %more_char.exit.i
  %i.ep = getelementptr i8, ptr %3, i64 128       ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !48 ; 2 uses
  %.not.i142.i = icmp eq ptr %i.eq, null
  br i1 %.not.i142.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @rb_econv_close(ptr noundef nonnull %i.eq) #28
  store ptr null, ptr %i.ep, align 8, !tbaa !48
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.er = load ptr, ptr %i.by, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i, label %.thread207, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @ruby_xfree(ptr noundef nonnull %i.er) #28
  store ptr null, ptr %i.by, align 8, !tbaa !49
  br label %.thread207

.preheader.i:                                     ; preds = %bb.aa, %bb.bn
  %.7 = phi i64 [ %.8, %bb.bn ], [ %.0180, %bb.aa ] ; 2 uses
  %.3121.i = phi i64 [ %.4122.i, %bb.bn ], [ %.0184, %bb.aa ] ; 4 uses
  %.5111.i = phi i64 [ %.7.i, %bb.bn ], [ %.0180, %bb.aa ] ; 5 uses
  %i.es = load i32, ptr %i.cc, align 8, !tbaa !46 ; 3 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %bb.ay, label %thread-pre-split.i

bb.ay:                                            ; preds = %.preheader.i
  %i.eu = zext nneg i32 %i.es to i64              ; 2 uses
  %i.ev = load ptr, ptr %i.cd, align 4, !tbaa !71
  %i.ew = load i32, ptr %i.ce, align 4, !tbaa !47
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr i8, ptr %i.ev, i64 %i.ex  ; 5 uses
  %i.ez = icmp sgt i64 %.3121.i, 0
  %i.fa = call i64 @llvm.smin.i64(i64 %.3121.i, i64 %i.eu)
  %.0113.i = select i1 %i.ez, i64 %i.fa, i64 %i.eu ; 3 uses
  %.val36.i143.i = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.fb = icmp eq i32 %.val36.i143.i, 1
  br i1 %i.fb, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fc = call ptr @memchr(ptr noundef %i.ey, i32 noundef %.1120, i64 noundef range(i64 -2147483648, 2147483648) %.0113.i) #33 ; 2 uses
  %.not.i150.i = icmp eq ptr %i.fc, null
  %i.fd = getelementptr i8, ptr %i.fc, i64 1
  %spec.select.i151.i = select i1 %.not.i150.i, ptr null, ptr %i.fd
  br label %search_delim.exit152.i

bb.ba:                                            ; preds = %bb.ay
  %i.fe = getelementptr i8, ptr %i.ey, i64 %.0113.i ; 4 uses
  %i.ff = icmp ult ptr %i.ey, %i.fe
  br i1 %i.ff, label %.lr.ph.i145.i, label %search_delim.exit152.i

.lr.ph.i145.i:                                    ; preds = %bb.ba, %bb.bd
  %.03043.i146.i = phi ptr [ %.232.i148.i, %bb.bd ], [ %i.ey, %bb.ba ] ; 4 uses
  %i.fg = call i32 @rb_enc_precise_mbclen(ptr noundef %.03043.i146.i, ptr noundef nonnull %i.fe, ptr noundef nonnull %.0.i144) #28 ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i145.i
  %.val.i147.i = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.fi = sext i32 %.val.i147.i to i64
  %i.fj = getelementptr i8, ptr %.03043.i146.i, i64 %i.fi
  br label %bb.bd, !llvm.loop !89

bb.bc:                                            ; preds = %.lr.ph.i145.i
  %i.fk = load ptr, ptr %i.cb, align 8, !tbaa !90
  %i.fl = call i32 %i.fk(ptr noundef %.03043.i146.i, ptr noundef nonnull %i.fe, ptr noundef nonnull %.0.i144) #28, !inline_history !91
  %i.fm = icmp eq i32 %i.fl, %.1120
  %i.fn = zext nneg i32 %i.fg to i64
  %i.fo = getelementptr i8, ptr %.03043.i146.i, i64 %i.fn ; 2 uses
  br i1 %i.fm, label %search_delim.exit152.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.232.i148.i = phi ptr [ %i.fo, %bb.bc ], [ %i.fj, %bb.bb ] ; 2 uses
  %i.fp = icmp ult ptr %.232.i148.i, %i.fe
  br i1 %i.fp, label %.lr.ph.i145.i, label %search_delim.exit152.i

search_delim.exit152.i:                           ; preds = %bb.bd, %bb.bc, %bb.ba, %bb.az
  %.4.i144.i = phi ptr [ %spec.select.i151.i, %bb.az ], [ null, %bb.ba ], [ %i.fo, %bb.bc ], [ null, %bb.bd ] ; 2 uses
  %.not132.i = icmp eq ptr %.4.i144.i, null       ; 2 uses
  %i.fq = ptrtoint ptr %.4.i144.i to i64
  %i.fr = ptrtoint ptr %i.ey to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %.1114.i = select i1 %.not132.i, i64 %.0113.i, i64 %i.fs ; 5 uses
  %i.ft = icmp eq i64 %.5111.i, 4
  br i1 %i.ft, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %search_delim.exit152.i
  %i.fu = inttoptr i64 %.5111.i to ptr            ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !81 ; 2 uses
  %i.fx = add i64 %i.fw, %.1114.i
  %i.fy = call i64 @rb_str_resize(i64 noundef %.5111.i, i64 noundef %i.fx) #28 ; 0 uses
  br label %bb.bg

bb.bf:                                            ; preds = %search_delim.exit152.i
  %i.fz = call i64 @rb_str_buf_new(i64 noundef %.1114.i) #28 ; 4 uses
  call void @rb_str_set_len(i64 noundef %i.fz, i64 noundef %.1114.i) #28
  %.pre.i = inttoptr i64 %i.fz to ptr
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.9 = phi i64 [ %i.fz, %bb.bf ], [ %.7, %bb.be ] ; 4 uses
  %.pre-phi.i = phi ptr [ %.pre.i, %bb.bf ], [ %i.fu, %bb.be ] ; 5 uses
  %.6112.i = phi i64 [ %i.fz, %bb.bf ], [ %.5111.i, %bb.be ]
  %.0.i157 = phi i64 [ 0, %bb.bf ], [ %i.fw, %bb.be ]
  %i.ga = load i64, ptr %.pre-phi.i, align 8, !tbaa !16
  %i.gb = and i64 %i.ga, 8192
  %.not.i153.i = icmp eq i64 %i.gb, 0
  %i.gc = getelementptr i8, ptr %.pre-phi.i, i64 24 ; 4 uses
  br i1 %.not.i153.i, label %RSTRING_PTR.exit154.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !86
  br label %RSTRING_PTR.exit154.i

RSTRING_PTR.exit154.i:                            ; preds = %bb.bh, %bb.bg
  %i.ge = phi ptr [ %i.gd, %bb.bh ], [ %i.gc, %bb.bg ]
  %i.gf = load i32, ptr %i.cc, align 8, !tbaa !46 ; 3 uses
  %i.gg = icmp slt i32 %i.gf, 1
  br i1 %i.gg, label %read_buffered_data.exit.i, label %bb.bi

bb.bi:                                            ; preds = %RSTRING_PTR.exit154.i
  %i.gh = getelementptr i8, ptr %i.ge, i64 %.0.i157
  %i.gi = zext nneg i32 %i.gf to i64
  %spec.select17.i.i = call i64 @llvm.smin.i64(i64 %.1114.i, i64 %i.gi) ; 2 uses
  %spec.select.i155.i = trunc i64 %spec.select17.i.i to i32 ; 2 uses
  %i.gj = load ptr, ptr %i.cd, align 4, !tbaa !71
  %i.gk = load i32, ptr %i.ce, align 4, !tbaa !47
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr i8, ptr %i.gj, i64 %i.gl
  %sext.i.i = shl i64 %spec.select17.i.i, 32
  %i.gn = ashr exact i64 %sext.i.i, 32
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.gh, ptr noundef nonnull align 1 %i.gm, i64 noundef %i.gn, i1 noundef false) #28
  %i.go = load i32, ptr %i.ce, align 4, !tbaa !47
  %i.gp = add i32 %i.go, %spec.select.i155.i
  store i32 %i.gp, ptr %i.ce, align 4, !tbaa !47
  %i.gq = load i32, ptr %i.cc, align 8, !tbaa !46
  %i.gr = sub i32 %i.gq, %spec.select.i155.i      ; 2 uses
  store i32 %i.gr, ptr %i.cc, align 8, !tbaa !46
  br label %read_buffered_data.exit.i

read_buffered_data.exit.i:                        ; preds = %bb.bi, %RSTRING_PTR.exit154.i
  %.pr.i = phi i32 [ %i.gf, %RSTRING_PTR.exit154.i ], [ %i.gr, %bb.bi ]
  %i.gs = sub i64 %.3121.i, %.1114.i              ; 3 uses
  br i1 %.not132.i, label %bb.bj, label %appendline.exit

bb.bj:                                            ; preds = %read_buffered_data.exit.i
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %bb.bk, label %thread-pre-split.i

bb.bk:                                            ; preds = %bb.bj
  %i.gu = load i64, ptr %.pre-phi.i, align 8, !tbaa !16
  %i.gv = and i64 %i.gu, 8192
  %.not.i156.i = icmp eq i64 %i.gv, 0
  br i1 %.not.i156.i, label %appendline.exit.thread195, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gw = load ptr, ptr %i.gc, align 8, !tbaa !86
  br label %appendline.exit.thread195

thread-pre-split.i:                               ; preds = %bb.bj, %.preheader.i
  %.8 = phi i64 [ %.9, %bb.bj ], [ %.7, %.preheader.i ] ; 2 uses
  %i.gx = phi i32 [ %.pr.i, %bb.bj ], [ %i.es, %.preheader.i ]
  %.4122.i = phi i64 [ %i.gs, %bb.bj ], [ %.3121.i, %.preheader.i ]
  %.7.i = phi i64 [ %.6112.i, %bb.bj ], [ %.5111.i, %.preheader.i ]
  %.not133.i = icmp eq i32 %i.gx, 0
  br i1 %.not133.i, label %rb_io_check_initialized.exit.i.i, label %bb.bn

rb_io_check_initialized.exit.i.i:                 ; preds = %thread-pre-split.i
  %i.gy = load i32, ptr %i.cf, align 8, !tbaa !20
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %rb_io_check_initialized.exit.i.i
  call void @rb_thread_check_ints() #28
  %i.ha = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ha, ptr noundef nonnull @closed_stream) #30
  unreachable

bb.bn:                                            ; preds = %rb_io_check_initialized.exit.i.i, %thread-pre-split.i
  %i.hb = call fastcc i32 @io_fillbuf(ptr noundef nonnull %3)
  %i.hc = icmp sgt i32 %i.hb, -1
  br i1 %i.hc, label %.preheader.i, label %.thread207, !llvm.loop !93

appendline.exit:                                  ; preds = %read_buffered_data.exit.i, %bb.am
  %.2186 = phi i64 [ %i.dy, %bb.am ], [ %i.gs, %read_buffered_data.exit.i ]
  %.10 = phi i64 [ %.6, %bb.am ], [ %.9, %read_buffered_data.exit.i ] ; 2 uses
  br i1 %.not214, label %.thread207, label %appendline.exit.thread195.thread

appendline.exit.thread195:                        ; preds = %bb.bk, %bb.bl, %bb.aq, %bb.ar
  %.pre-phi.i.lcssa326.sink = phi ptr [ %i.ei, %bb.aq ], [ %i.ei, %bb.ar ], [ %.pre-phi.i, %bb.bl ], [ %.pre-phi.i, %bb.bk ]
  %.sink337 = phi ptr [ %i.el, %bb.aq ], [ %i.em, %bb.ar ], [ %i.gw, %bb.bl ], [ %i.gc, %bb.bk ]
  %.10200 = phi i64 [ %.4, %bb.aq ], [ %.4, %bb.ar ], [ %.9, %bb.bl ], [ %.9, %bb.bk ] ; 2 uses
  %i.hd = getelementptr i8, ptr %.pre-phi.i.lcssa326.sink, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !81
  %i.hf = getelementptr i8, ptr %.sink337, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.hf, i64 -1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !86
  %i.hi = zext i8 %i.hh to i32
  %i.hj = icmp eq i32 %.1120, %i.hi
  br i1 %i.hj, label %appendline.exit.thread195.thread, label %.thread

appendline.exit.thread195.thread:                 ; preds = %appendline.exit, %appendline.exit.thread195
  %.2186199304 = phi i64 [ 0, %appendline.exit.thread195 ], [ %.2186, %appendline.exit ] ; 2 uses
  %.10200300 = phi i64 [ %.10200, %appendline.exit.thread195 ], [ %.10, %appendline.exit ] ; 6 uses
  %i.hk = inttoptr i64 %.10200300 to ptr          ; 3 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !81 ; 2 uses
  %i.hn = icmp slt i64 %i.hm, %.2115
  br i1 %i.hn, label %.backedge, label %bb.bo

bb.bo:                                            ; preds = %appendline.exit.thread195.thread
  %i.ho = load i64, ptr %i.hk, align 8, !tbaa !16
  %i.hp = and i64 %i.ho, 8192
  %.not.i158 = icmp eq i64 %i.hp, 0
  %i.hq = getelementptr i8, ptr %i.hk, i64 24     ; 2 uses
  br i1 %.not.i158, label %RSTRING_END.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !86
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.bo, %bb.bp
  %i.hs = phi ptr [ %i.hr, %bb.bp ], [ %i.hq, %bb.bo ] ; 4 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 %i.hm  ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 %i.cg  ; 7 uses
  %i.hv = call ptr @onigenc_get_left_adjust_char_head(ptr noundef %.0.i144, ptr noundef %i.hs, ptr noundef %i.hu, ptr noundef %i.ht) #28
  %i.hw = icmp eq ptr %i.hv, %i.hu
  br i1 %i.hw, label %bb.bq, label %.backedge

bb.bq:                                            ; preds = %RSTRING_END.exit
  br i1 %or.cond213, label %rscheck.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hx = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.hy = and i64 %i.hx, 8192
  %.not.i.i162 = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i162, label %RSTRING_PTR.exit.i163, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hz = load ptr, ptr %i.ci, align 8, !tbaa !86
  br label %RSTRING_PTR.exit.i163

RSTRING_PTR.exit.i163:                            ; preds = %bb.bs, %bb.br
  %i.ia = phi ptr [ %i.hz, %bb.bs ], [ %i.ci, %bb.br ]
  %.not4.i = icmp eq ptr %i.ia, %.2118
  br i1 %.not4.i, label %rscheck.exit, label %bb.bt

bb.bt:                                            ; preds = %RSTRING_PTR.exit.i163
  %i.ib = load i64, ptr %i.cj, align 8, !tbaa !81
  %.not5.i = icmp eq i64 %i.ib, %.2115
  br i1 %.not5.i, label %rscheck.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ic = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ic, ptr noundef nonnull @.str.197) #30
  unreachable

rscheck.exit:                                     ; preds = %bb.bt, %RSTRING_PTR.exit.i163, %bb.bq
  %bcmp = call i32 @bcmp(ptr %i.hu, ptr %.2118, i64 %.2115)
  %i.id = icmp eq i32 %bcmp, 0
  br i1 %i.id, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %rscheck.exit
  %.not130 = icmp eq i32 %2, 0
  br i1 %.not130, label %.loopexit, label %bb.bw

end_hunk_0
begin_hunk_1_@io_ascii8bit_binmode:bb.a

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, -4) i32 @rb_io_modestr_fmode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1          ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !86      ; 2 uses
  switch i8 %i.b, label %.loopexit33 [
    i8 114, label %bb.c
    i8 119, label %.thread
    i8 97, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.022 = phi i32 [ 194, %bb.b ], [ 1, %bb.a ]    ; 3 uses
  %i.c = load i8, ptr %i.a, align 1, !tbaa !86    ; 3 uses
  %.not37 = icmp eq i8 %i.c, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph

.thread:                                          ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !86    ; 2 uses
  %.not3757 = icmp eq i8 %i.d, 0
  br i1 %.not3757, label %.loopexit.thread, label %.lr.ph.split.us.preheader

.lr.ph:                                           ; preds = %bb.c
  %.not29 = icmp eq i8 %i.b, 119
  br i1 %.not29, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.thread, %.lr.ph
  %.ph = phi i8 [ %i.d, %.thread ], [ %i.c, %.lr.ph ]
  %.138.us.ph = phi i32 [ 2178, %.thread ], [ %.022, %.lr.ph ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.g
  %i.e = phi i8 [ %i.h, %bb.g ], [ %.ph, %.lr.ph.split.us.preheader ]
  %.039.us = phi ptr [ %i.f, %bb.g ], [ %i.a, %.lr.ph.split.us.preheader ]
  %.138.us = phi i32 [ %i.g, %bb.g ], [ %.138.us.ph, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.f = getelementptr i8, ptr %.039.us, i64 1    ; 3 uses
  switch i8 %i.e, label %.loopexit33 [
    i8 98, label %bb.f
    i8 116, label %bb.e
    i8 43, label %bb.d
    i8 120, label %bb.g
    i8 58, label %.split.us
  ]

bb.d:                                             ; preds = %.lr.ph.split.us
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.split.us
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us, %bb.f, %bb.e, %bb.d
  %.sink = phi i32 [ 4, %bb.f ], [ 4096, %bb.e ], [ 3, %bb.d ], [ 1024, %.lr.ph.split.us ]
  %i.g = or i32 %.138.us, %.sink                  ; 2 uses
  %i.h = load i8, ptr %i.f, align 1, !tbaa !86    ; 2 uses
  %.not.us = icmp eq i8 %i.h, 0
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !127

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %i.i = phi i8 [ %i.u, %bb.m ], [ %i.c, %.lr.ph ]
  %.039 = phi ptr [ %i.j, %bb.m ], [ %i.a, %.lr.ph ]
  %.138 = phi i32 [ %i.t, %bb.m ], [ %.022, %.lr.ph ] ; 2 uses
  %i.j = getelementptr i8, ptr %.039, i64 1       ; 3 uses
  switch i8 %i.i, label %.loopexit33 [
    i8 98, label %bb.m
    i8 116, label %bb.h
    i8 43, label %bb.i
    i8 58, label %.split.us
  ]

bb.h:                                             ; preds = %.lr.ph.split
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph.split
  br label %bb.m

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %i.f, %.lr.ph.split.us ], [ %i.j, %.lr.ph.split ] ; 4 uses
  %.us-phi40 = phi i32 [ %.138.us, %.lr.ph.split.us ], [ %.138, %.lr.ph.split ] ; 2 uses
  %i.k = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.us-phi, i32 noundef 58) #33 ; 2 uses
  %.not25 = icmp eq ptr %i.k, null
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split.us
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %.us-phi to i64
  %i.n = sub i64 %i.l, %i.m
  br label %bb.l

bb.k:                                             ; preds = %.split.us
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.us-phi) #33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.p = phi i64 [ %i.n, %bb.j ], [ %i.o, %bb.k ]
  %i.q = icmp sgt i64 %i.p, 4
  br i1 %i.q, label %io_encname_bom_p.exit, label %io_encname_bom_p.exit.thread

io_encname_bom_p.exit:                            ; preds = %bb.l
  %i.r = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull readonly %.us-phi, ptr noundef nonnull @bom_prefix, i64 noundef 4) #33
  %.fr = freeze i32 %i.r
  %.not32 = icmp eq i32 %.fr, 0
  %i.s = or i32 %.us-phi40, 1048576
  br i1 %.not32, label %.loopexit, label %io_encname_bom_p.exit.thread

io_encname_bom_p.exit.thread:                     ; preds = %bb.l, %io_encname_bom_p.exit
  br label %.loopexit

bb.m:                                             ; preds = %.lr.ph.split, %bb.i, %bb.h
  %.sink76 = phi i32 [ 3, %bb.i ], [ 4096, %bb.h ], [ 4, %.lr.ph.split ]
  %i.t = or i32 %.138, %.sink76                   ; 2 uses
  %i.u = load i8, ptr %i.j, align 1, !tbaa !86    ; 2 uses
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !127

.loopexit:                                        ; preds = %bb.m, %bb.g, %bb.c, %io_encname_bom_p.exit.thread, %io_encname_bom_p.exit
  %.3 = phi i32 [ %i.s, %io_encname_bom_p.exit ], [ %.us-phi40, %io_encname_bom_p.exit.thread ], [ %.022, %bb.c ], [ %i.g, %bb.g ], [ %i.t, %bb.m ] ; 2 uses
  %i.v = and i32 %.3, 4100
  %or.cond.not = icmp eq i32 %i.v, 4100
  br i1 %or.cond.not, label %.loopexit33, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.thread, %.loopexit
  %.364 = phi i32 [ %.3, %.loopexit ], [ 2178, %.thread ]
  ret i32 %.364

.loopexit33:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %.loopexit, %bb.a
  %i.w = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.14, ptr noundef nonnull %0) #30
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 4096) i32 @rb_io_oflags_fmode(i32 noundef %0) local_unnamed_addr #11 {
switch.lookup:
  %i.a = and i32 %0, 3
  %i.b = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.io_initialize, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.c = lshr i32 %0, 4
  %i.d = and i32 %i.c, 64
  %i.e = shl i32 %0, 2
  %i.f = and i32 %i.e, 2048
  %i.g = shl i32 %0, 1
  %i.h = and i32 %i.g, 128
  %i.i = shl i32 %0, 3
  %i.j = and i32 %i.i, 1024
  %spec.select = or disjoint i32 %i.f, %i.d
  %.2 = or disjoint i32 %spec.select, %i.h
  %.3 = or disjoint i32 %.2, %i.j
  %.4 = or disjoint i32 %.3, %switch.load
  ret i32 %.4
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2048) i32 @rb_io_modestr_oflags(ptr noundef %0) local_unnamed_addr #0 {
switch.lookup:
  %i.a = tail call i32 @rb_io_modestr_fmode(ptr noundef %0) ; 5 uses
  %i.b = and i32 %i.a, 3
  %i.c = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_io_reopen, i64 %i.c
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.d = shl i32 %i.a, 4
  %i.e = and i32 %i.d, 1024
  %i.f = lshr i32 %i.a, 2
  %i.g = and i32 %i.f, 512
  %i.h = lshr i32 %i.a, 1
  %i.i = and i32 %i.h, 64
  %i.j = lshr i32 %i.a, 3
  %i.k = and i32 %i.j, 128
  %spec.select.i = or disjoint i32 %i.g, %i.e
  %.2.i = or disjoint i32 %spec.select.i, %i.i
  %.3.i = or disjoint i32 %.2.i, %i.k
  %.4.i = or disjoint i32 %.3.i, %switch.load
  ret i32 %.4.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_io_extract_encoding_option(i64 noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = icmp eq i64 %0, 4
  br i1 %i.b, label %.thread101, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @sym_encoding, align 8, !tbaa !13
  %i.d = tail call i64 @rb_hash_lookup2(i64 noundef %0, i64 noundef %i.c, i64 noundef 4) #28 ; 6 uses
  %i.e = load i64, ptr @sym_extenc, align 8, !tbaa !13
  %i.f = tail call i64 @rb_hash_lookup2(i64 noundef %0, i64 noundef %i.e, i64 noundef 36) #28 ; 2 uses
  %i.g = load i64, ptr @sym_intenc, align 8, !tbaa !13
  %i.h = tail call i64 @rb_hash_lookup2(i64 noundef %0, i64 noundef %i.g, i64 noundef 36) #28 ; 5 uses
  switch i64 %i.f, label %bb.c [
    i64 4, label %.thread
    i64 36, label %.thread
  ]

.thread:                                          ; preds = %bb.b, %bb.b
  %i.i = icmp eq i64 %i.h, 36
  br i1 %i.i, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %4 = phi i1 [ true, %.thread ], [ false, %bb.b ] ; 3 uses
  %.14575 = phi i64 [ 36, %.thread ], [ %i.f, %bb.b ]
  %i.j = icmp eq i64 %i.d, 4
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @rb_ruby_verbose_ptr() #28
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @rb_to_encoding_index(i64 noundef %i.d) #28 ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @rb_enc_from_index(i32 noundef %i.n) #28
  %i.q = tail call i64 @rb_enc_from_encoding(ptr noundef %i.p) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i64 [ %i.q, %bb.f ], [ %i.d, %bb.e ]
  %i.r = select i1 %4, ptr @.str.16, ptr @.str.17
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.15, i64 noundef %.2, ptr noundef nonnull %i.r) #34
  br i1 %4, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  br i1 %4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = tail call ptr @rb_to_encoding(i64 noundef %.14575) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.not57 = phi i1 [ false, %bb.h ], [ false, %bb.g ], [ true, %bb.i ]
  %.049 = phi ptr [ null, %bb.h ], [ null, %bb.g ], [ %i.s, %bb.i ] ; 3 uses
  switch i64 %i.h, label %bb.k [
    i64 36, label %.thread95
    i64 4, label %.thread95.thread
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = tail call i64 @rb_check_string_type(i64 noundef %i.h) #28 ; 2 uses
  store i64 %i.t, ptr %i.a, align 8, !tbaa !13
  %i.u = icmp eq i64 %i.t, 4
  br i1 %i.u, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #28 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !86
  %i.x = icmp eq i8 %i.w, 45
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %i.v, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !86
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %.thread95.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ab = call ptr @rb_to_encoding(i64 noundef %i.h) #28
  br label %.thread95.thread

bb.o:                                             ; preds = %bb.k
  %i.ac = tail call ptr @rb_to_encoding(i64 noundef %i.h) #28
  br label %.thread95.thread

.thread95.thread:                                 ; preds = %bb.j, %bb.o, %bb.m, %bb.n
  %.147 = phi ptr [ inttoptr (i64 4 to ptr), %bb.j ], [ %i.ac, %bb.o ], [ %i.ab, %bb.n ], [ inttoptr (i64 4 to ptr), %bb.m ] ; 2 uses
  %i.ad = icmp eq ptr %.049, %.147
  %spec.store.select = select i1 %i.ad, ptr inttoptr (i64 4 to ptr), ptr %.147
  br label %bb.z

bb.p:                                             ; preds = %.thread
  %i.ae = icmp eq i64 %i.d, 4
  br i1 %i.ae, label %.thread101, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call i64 @rb_check_string_type(i64 noundef %i.d) #28 ; 2 uses
  store i64 %i.af, ptr %i.a, align 8, !tbaa !13
  %i.ag = icmp eq i64 %i.af, 4
  br i1 %i.ag, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #28
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !13
  %i.aj = call ptr @rb_enc_get(i64 noundef %i.ai) #28
  call fastcc void @parse_mode_enc(ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %.thread101

bb.s:                                             ; preds = %bb.q
  %i.ak = tail call ptr @rb_to_encoding(i64 noundef %i.d) #28 ; 2 uses
  %.not24.i = icmp ne ptr %i.ak, null             ; 2 uses
  br i1 %.not24.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = tail call ptr @rb_default_external_encoding() #28
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.018.i = phi ptr [ %i.al, %bb.t ], [ %i.ak, %bb.s ] ; 5 uses
  %i.am = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.an = icmp eq ptr %.018.i, %i.am
  br i1 %i.an, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = tail call ptr @rb_default_internal_encoding() #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.019.i = phi ptr [ null, %bb.u ], [ %i.ao, %bb.v ] ; 4 uses
  %magicptr.i = ptrtoint ptr %.019.i to i64
  switch i64 %magicptr.i, label %bb.x [
    i64 4, label %bb.y
    i64 0, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.ap = icmp eq ptr %.019.i, %.018.i
  br i1 %i.ap, label %bb.y, label %rb_io_ext_int_to_encs.exit

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.w
  %.not25.i = icmp eq ptr %.019.i, %.018.i
  %or.cond26.i = select i1 %.not24.i, i1 true, i1 %.not25.i
  %i.aq = select i1 %or.cond26.i, ptr %.018.i, ptr null
  br label %rb_io_ext_int_to_encs.exit

rb_io_ext_int_to_encs.exit:                       ; preds = %bb.x, %bb.y
  %storemerge22.i = phi ptr [ %i.aq, %bb.y ], [ %.019.i, %bb.x ]
  %storemerge.i = phi ptr [ null, %bb.y ], [ %.018.i, %bb.x ]
  store ptr %storemerge22.i, ptr %1, align 8, !tbaa !128
  store ptr %storemerge.i, ptr %2, align 8, !tbaa !128
  br label %.thread101

.thread95:                                        ; preds = %bb.j
  br i1 %.not57, label %bb.z, label %.thread101

bb.z:                                             ; preds = %.thread95.thread, %.thread95
  %.248100107 = phi ptr [ null, %.thread95 ], [ %spec.store.select, %.thread95.thread ] ; 2 uses
  %.not24.i59.not = icmp ne ptr %.049, null       ; 2 uses
  br i1 %.not24.i59.not, label %bb.aa, label %.thread109

.thread109:                                       ; preds = %bb.z
  %i.ar = call ptr @rb_default_external_encoding() #28
  br label %bb.aa

bb.aa:                                            ; preds = %.thread109, %bb.z
  %.018.i60 = phi ptr [ %i.ar, %.thread109 ], [ %.049, %bb.z ] ; 5 uses
  %i.as = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.at = icmp eq ptr %.018.i60, %i.as
  br i1 %i.at, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.au = icmp eq ptr %.248100107, null
  br i1 %i.au, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.av = call ptr @rb_default_internal_encoding() #28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.019.i61 = phi ptr [ %.248100107, %bb.ab ], [ %i.av, %bb.ac ], [ null, %bb.aa ] ; 4 uses
  %magicptr.i62 = ptrtoint ptr %.019.i61 to i64
  switch i64 %magicptr.i62, label %bb.ae [
    i64 4, label %bb.af
    i64 0, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.aw = icmp eq ptr %.019.i61, %.018.i60
  br i1 %i.aw, label %bb.af, label %rb_io_ext_int_to_encs.exit67

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ad
  %.not25.i63 = icmp eq ptr %.019.i61, %.018.i60
  %or.cond26.i64 = select i1 %.not24.i59.not, i1 true, i1 %.not25.i63
  %i.ax = select i1 %or.cond26.i64, ptr %.018.i60, ptr null
  br label %rb_io_ext_int_to_encs.exit67

rb_io_ext_int_to_encs.exit67:                     ; preds = %bb.ae, %bb.af
  %storemerge22.i65 = phi ptr [ %i.ax, %bb.af ], [ %.019.i61, %bb.ae ]
  %storemerge.i66 = phi ptr [ null, %bb.af ], [ %.018.i60, %bb.ae ]
  store ptr %storemerge22.i65, ptr %1, align 8, !tbaa !128
  store ptr %storemerge.i66, ptr %2, align 8, !tbaa !128
  br label %.thread101

.thread101:                                       ; preds = %bb.p, %bb.a, %.thread95, %rb_io_ext_int_to_encs.exit67, %bb.r, %rb_io_ext_int_to_encs.exit
  %.050 = phi i32 [ 0, %.thread95 ], [ 1, %rb_io_ext_int_to_encs.exit67 ], [ 1, %rb_io_ext_int_to_encs.exit ], [ 1, %bb.r ], [ 0, %bb.a ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.050
}

declare i64 @rb_hash_lookup2(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @rb_ruby_verbose_ptr() local_unnamed_addr #1

declare i32 @rb_to_encoding_index(i64 noundef) local_unnamed_addr #1

declare i64 @rb_enc_from_encoding(ptr noundef) local_unnamed_addr #1

declare ptr @rb_enc_from_index(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #12

declare ptr @rb_to_encoding(i64 noundef) local_unnamed_addr #1

declare i64 @rb_check_string_type(i64 noundef) local_unnamed_addr #1

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parse_mode_enc(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) initializes((0, 8)) %2, ptr noundef writeonly captures(none) initializes((0, 8)) %3, ptr noundef captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [43 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]    ; 5 uses
  %i.d = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #33 ; 3 uses
  %.not59 = icmp eq ptr %i.d, null
  br i1 %.not59, label %bb.e, label %bb.d

end_hunk_1
begin_hunk_2_@rb_io_s_open:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 4294967296) i64 @rb_io_s_sysopen(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.e = icmp slt i32 %0, 1
  br i1 %i.e, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !13     ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !13
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 4, %.preheader ]
  %.286.i = phi i32 [ 2, %bb.b ], [ 1, %.preheader ] ; 4 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !13
  %i.i = icmp samesign ult i32 %.286.i, %0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %.286.i to i64
  %i.k = getelementptr [8 x i8], ptr %1, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %i.m = add nuw nsw i32 %.286.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %i.l, %bb.d ], [ 4, %bb.c ]    ; 2 uses
  %.286.i.1 = phi i32 [ %i.m, %bb.d ], [ %.286.i, %bb.c ]
  %i.o = icmp eq i32 %.286.i.1, %0
  br i1 %i.o, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 3) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.p = tail call i64 @rb_get_path(i64 noundef %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %i.a, ptr %i.c, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #28, !srcloc !199
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  store volatile i64 %i.p, ptr %i.q, align 8, !tbaa !13
  %i.r = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %bb.k, label %bb.g

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.t = call i64 @rb_check_to_integer(i64 noundef %i.r, ptr noundef nonnull @.str.18) #28 ; 4 uses
  %i.u = icmp eq i64 %i.t, 4
  br i1 %i.u, label %switch.lookup, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = trunc i64 %i.t to i1
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = call i64 @rb_fix2int(i64 noundef %i.t) #28
  br label %rb_num2int_inline.exit

bb.j:                                             ; preds = %bb.h
  %i.x = call i64 @rb_num2int(i64 noundef %i.t) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  %i.y = trunc i64 %.0.i to i32
  br label %bb.k

switch.lookup:                                    ; preds = %bb.g
  %i.z = call i64 @rb_string_value(ptr noundef nonnull %i.b) #28 ; 0 uses
  %i.aa = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #28
  %i.ab = call i32 @rb_io_modestr_fmode(ptr noundef %i.aa) ; 5 uses
  %i.ac = and i32 %i.ab, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_io_reopen, i64 %i.ad
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.ae = shl i32 %i.ab, 4
  %i.af = and i32 %i.ae, 1024
  %i.ag = lshr i32 %i.ab, 2
  %i.ah = and i32 %i.ag, 512
  %i.ai = lshr i32 %i.ab, 1
  %i.aj = and i32 %i.ai, 64
  %i.ak = lshr i32 %i.ab, 3
  %i.al = and i32 %i.ak, 128
  %spec.select.i.i = or disjoint i32 %i.ah, %i.af
  %.2.i.i = or disjoint i32 %spec.select.i.i, %i.aj
  %.3.i.i = or disjoint i32 %.2.i.i, %i.al
  %.4.i.i = or disjoint i32 %.3.i.i, %switch.load
  br label %bb.k

bb.k:                                             ; preds = %rb_scan_args_set.exit, %rb_num2int_inline.exit, %switch.lookup
  %.0 = phi i32 [ %i.y, %rb_num2int_inline.exit ], [ %.4.i.i, %switch.lookup ], [ 0, %rb_scan_args_set.exit ]
  %i.am = icmp eq i64 %i.n, 4
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = call i64 @rb_num2uint(i64 noundef %i.n) #28
  %i.ao = trunc i64 %i.an to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.07 = phi i32 [ %i.ao, %bb.l ], [ 438, %bb.k ]
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !13
  %i.aq = call i64 @rb_str_new_frozen(i64 noundef %i.ap) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store ptr %i.a, ptr %i.d, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #28, !srcloc !200
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  store volatile i64 %i.aq, ptr %i.ar, align 8, !tbaa !13
  %i.as = load i64, ptr %i.a, align 8, !tbaa !13
  %i.at = call fastcc i32 @rb_sysopen(i64 noundef %i.as, i32 noundef %.0, i32 noundef %.07)
  %i.au = shl nuw i32 %i.at, 1
  %i.av = or disjoint i32 %i.au, 1
  %i.aw = zext i32 %i.av to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %i.aw
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_s_for_fd(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_obj_alloc(i64 noundef %2) #28 ; 2 uses
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = tail call i32 @rb_keyword_given_p() #28
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @rb_hash_dup(i64 noundef %i.f) #28
  %i.i = add nsw i32 %0, -1                       ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.b
  %.1.i16.i = phi i32 [ %i.i, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.188.i15.i = phi i64 [ %i.h, %bb.c ], [ 4, %bb.b ]
  %i.k = load i64, ptr %1, align 8, !tbaa !13
  %i.l = icmp samesign ugt i32 %.1.i16.i, 1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.i
  %i.o = phi i64 [ %i.n, %bb.d ], [ 4, %.preheader.i ]
  %.185.i.lcssa.i = phi i32 [ 2, %bb.d ], [ 1, %.preheader.i ]
  %i.p = icmp eq i32 %.185.i.lcssa.i, %.1.i16.i
  br i1 %i.p, label %rb_io_initialize.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.c, %bb.a
  %.1.i4.i = phi i32 [ 0, %bb.c ], [ %.1.i16.i, %bb.e ], [ %0, %bb.a ]
  tail call void @rb_error_arity(i32 noundef %.1.i4.i, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_io_initialize.exit:                            ; preds = %bb.e
  %i.q = tail call fastcc i64 @io_initialize(i64 noundef %i.a, i64 noundef %i.k, i64 noundef %i.o, i64 noundef %.188.i15.i) ; 0 uses
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_s_popen(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %bb.b, label %.thread31

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [8 x i8], ptr %1, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = tail call i64 @rb_check_hash_type(i64 noundef %i.e) #28 ; 4 uses
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %0, -1
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %.thread34, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.030 = phi i32 [ %i.h, %bb.c ], [ %0, %bb.b ]  ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !13
  %i.j = tail call i64 @rb_check_hash_type(i64 noundef %i.i) #28 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %.thread31, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.l = add nsw i32 %.030, -1
  %i.m = getelementptr i8, ptr %1, i64 8
  br label %.thread31

.thread31:                                        ; preds = %bb.a, %bb.d, %.thread
  %.02128 = phi i64 [ %i.f, %.thread ], [ %i.f, %bb.d ], [ 4, %bb.a ] ; 3 uses
  %.023 = phi ptr [ %1, %.thread ], [ %i.m, %bb.d ], [ %1, %bb.a ] ; 3 uses
  %.020 = phi i64 [ 4, %.thread ], [ %i.j, %bb.d ], [ 4, %bb.a ] ; 2 uses
  %.1 = phi i32 [ %.030, %.thread ], [ %i.l, %bb.d ], [ %0, %bb.a ] ; 2 uses
  switch i32 %.1, label %bb.k [
    i32 2, label %bb.e
    i32 1, label %.thread34
  ]

bb.e:                                             ; preds = %.thread31
  %i.n = getelementptr i8, ptr %.023, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  br label %.thread34

.thread34:                                        ; preds = %bb.c, %bb.e, %.thread31
  %.02041 = phi i64 [ %.020, %bb.e ], [ %.020, %.thread31 ], [ 4, %bb.c ]
  %.02340 = phi ptr [ %.023, %bb.e ], [ %.023, %.thread31 ], [ %1, %bb.c ]
  %.0212839 = phi i64 [ %.02128, %bb.e ], [ %.02128, %.thread31 ], [ %i.f, %bb.c ]
  %.022 = phi i64 [ %i.o, %bb.e ], [ 4, %.thread31 ], [ 4, %bb.c ]
  %i.p = load i64, ptr %.02340, align 8, !tbaa !13
  %i.q = tail call i64 @rb_io_popen(i64 noundef %i.p, i64 noundef %.022, i64 noundef %.02041, i64 noundef %.0212839) ; 6 uses
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.thread34
  %i.s = tail call i32 @rb_block_given_p() #28
  %.not7.i = icmp eq i32 %i.s, 0
  br i1 %.not7.i, label %popen_finish.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i64 @rb_protect(ptr noundef nonnull @rb_yield, i64 noundef 4, ptr noundef null) #28 ; 0 uses
  %i.u = tail call i64 @rb_ractor_stdout() #28
  %i.v = tail call i64 @rb_io_flush(i64 noundef %i.u) ; 0 uses
  %i.w = tail call i64 @rb_ractor_stderr() #28
  %i.x = tail call i64 @rb_io_flush(i64 noundef %i.w) ; 0 uses
  tail call void @_exit(i32 noundef 0) #30
  unreachable

bb.h:                                             ; preds = %.thread34
  %i.y = inttoptr i64 %i.q to ptr
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store i64 %2, ptr %i.z, align 8, !tbaa !13
  %i.aa = icmp eq i64 %2, 0
  %i.ab = and i64 %2, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %RBASIC_SET_CLASS.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @rb_gc_writebarrier(i64 noundef %i.q, i64 noundef %2) #28
  br label %RBASIC_SET_CLASS.exit.i

RBASIC_SET_CLASS.exit.i:                          ; preds = %bb.i, %bb.h
  %i.ae = tail call i32 @rb_block_given_p() #28
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %popen_finish.exit, label %bb.j

bb.j:                                             ; preds = %RBASIC_SET_CLASS.exit.i
  %i.af = tail call i64 @rb_ensure(ptr noundef nonnull @rb_yield, i64 noundef %i.q, ptr noundef nonnull @pipe_close, i64 noundef %i.q) #28
  br label %popen_finish.exit

popen_finish.exit:                                ; preds = %bb.f, %RBASIC_SET_CLASS.exit.i, %bb.j
  %.0.i = phi i64 [ 4, %bb.f ], [ %i.af, %bb.j ], [ %i.q, %RBASIC_SET_CLASS.exit.i ]
  ret i64 %.0.i

bb.k:                                             ; preds = %.thread31
  %i.ag = icmp ne i64 %.02128, 4                  ; 3 uses
  %i.ah = zext i1 %i.ag to i32
  %i.ai = add i32 %.1, %i.ah
  %i.aj = select i1 %i.ag, i32 2, i32 1
  %i.ak = select i1 %i.ag, i32 3, i32 2
  tail call void @rb_error_arity(i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak) #30
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_s_foreach(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.foreach_arg, align 8        ; 4 uses
  %4 = alloca %struct.getline_arg, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %bb.a, label %.thread

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call i32 @rb_keyword_given_p() #28
  %.not16 = icmp eq i32 %i.h, 0
  br i1 %.not16, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @rb_hash_dup(i64 noundef %i.g) #28
  %i.j = add nsw i32 %0, -1                       ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.1.i34 = phi i32 [ %i.j, %bb.b ], [ %0, %bb.a ] ; 7 uses
  %.188.i33 = phi i64 [ %i.i, %bb.b ], [ 4, %bb.a ] ; 3 uses
  %i.l = icmp samesign ugt i32 %.1.i34, 1
  %spec.select = select i1 %i.l, i32 2, i32 1     ; 2 uses
  %i.m = icmp samesign ult i32 %spec.select, %.1.i34
  %i.n = zext i1 %i.m to i32
  %.286.i.1 = add nuw nsw i32 %spec.select, %i.n
  %i.o = icmp eq i32 %.286.i.1, %.1.i34
  br i1 %i.o, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %.preheader, %bb.b
  %.1.i15 = phi i32 [ 0, %bb.b ], [ %.1.i34, %.preheader ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.1.i15, i32 noundef 1, i32 noundef 3) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader
  %i.p = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_scan_args_set.exit
  %i.q = tail call i64 @rb_frame_this_func() #28
  %i.r = tail call i64 @rb_id2sym(i64 noundef %i.q) #28
  %i.s = tail call i64 @rb_enumeratorize_with_size(i64 noundef %2, i64 noundef %i.r, i32 noundef %0, ptr noundef nonnull %1, ptr noundef null) #28
  br label %bb.s

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.t = getelementptr i8, ptr %1, i64 8          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.u = load i64, ptr @rb_rs, align 8, !tbaa !13 ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !tbaa !13
  %i.v = icmp eq i32 %.1.i34, 2
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.t, align 8, !tbaa !13   ; 2 uses
  %i.x = icmp eq i64 %i.w, 4
  br i1 %i.x, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call i64 @rb_check_string_type(i64 noundef %i.w) #28 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4
  br i1 %i.z, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.t, align 8, !tbaa !13
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.ab = icmp samesign ugt i32 %.1.i34, 2
  br i1 %i.ab, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.t, align 8, !tbaa !13  ; 2 uses
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !13
  %i.ad = getelementptr i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = icmp eq i64 %i.ac, 4
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = call i64 @rb_string_value(ptr noundef nonnull %i.b) #28 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !13
  br label %bb.k

.thread.i:                                        ; preds = %bb.h, %bb.f, %bb.e
  %i.ah = phi i64 [ %i.u, %bb.h ], [ 4, %bb.e ], [ %i.y, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !201
  br label %extract_getline_args.exit

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.aj = phi i64 [ %i.u, %bb.g ], [ 4, %bb.i ], [ %.pre.i, %bb.j ]
  %.1.i11 = phi i64 [ %i.aa, %bb.g ], [ %i.ae, %bb.i ], [ %i.ae, %bb.j ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !201
  %i.al = icmp eq i64 %.1.i11, 4
  br i1 %i.al, label %extract_getline_args.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = trunc i64 %.1.i11 to i1
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = ashr i64 %.1.i11, 1
  br label %extract_getline_args.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = call i64 @rb_num2long(i64 noundef %.1.i11) #28
  br label %extract_getline_args.exit

extract_getline_args.exit:                        ; preds = %.thread.i, %bb.k, %bb.m, %bb.n
  %i.ap = phi i64 [ -1, %.thread.i ], [ -1, %bb.k ], [ %i.an, %bb.m ], [ %i.ao, %bb.n ]
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call fastcc void @open_key_args(i64 noundef %2, i32 noundef %.1.i34, ptr noundef nonnull %1, i64 noundef %.188.i33, ptr noundef %3)
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !204 ; 4 uses
  %i.at = icmp eq i64 %i.as, 4
  br i1 %i.at, label %bb.s, label %bb.o

bb.o:                                             ; preds = %extract_getline_args.exit
  %i.au = icmp eq i64 %.188.i33, 4
  br i1 %i.au, label %extract_getline_opts.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.av = load i64, ptr @extract_getline_opts.kwds, align 8, !tbaa !13
  %.not.i12 = icmp eq i64 %i.av, 0
  br i1 %.not.i12, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = call i64 @rb_intern2(ptr noundef nonnull @.str.238, i64 noundef 5) #28
  store i64 %i.aw, ptr @extract_getline_opts.kwds, align 8, !tbaa !13
end_hunk_2
begin_hunk_3_@rb_io_advise:bb.a
  %i.f = icmp samesign ult i32 %.286.i, %0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %.286.i to i64
  %i.h = getelementptr [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = add nuw nsw i32 %.286.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi i64 [ %i.i, %bb.d ], [ 4, %bb.c ]    ; 4 uses
  %.286.i.1 = phi i32 [ %i.j, %bb.d ], [ %.286.i, %bb.c ]
  %i.l = icmp eq i32 %.286.i.1, %0
  br i1 %i.l, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 3) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.m = and i64 %i.b, 255
  %i.n = icmp eq i64 %i.m, 12
  br i1 %i.n, label %RB_SYMBOL_P.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.o = icmp eq i64 %i.b, 0
  %i.p = and i64 %i.b, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %RB_SYMBOL_P.exit.thread17.i, label %RB_SYMBOL_P.exit.i

RB_SYMBOL_P.exit.i:                               ; preds = %bb.g
  %i.s = inttoptr i64 %i.b to ptr
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16
  %i.u = and i64 %i.t, 31
  %i.v = icmp eq i64 %i.u, 20
  br i1 %i.v, label %RB_SYMBOL_P.exit.thread.i, label %RB_SYMBOL_P.exit.thread17.i

RB_SYMBOL_P.exit.thread17.i:                      ; preds = %RB_SYMBOL_P.exit.i, %bb.g
  %i.w = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.290) #30
  unreachable

RB_SYMBOL_P.exit.thread.i:                        ; preds = %RB_SYMBOL_P.exit.i, %rb_scan_args_set.exit
  %i.x = load i64, ptr @sym_normal, align 8, !tbaa !13
  %.not.i6 = icmp eq i64 %i.b, %i.x
  %i.y = load i64, ptr @sym_sequential, align 8
  %.not8.i = icmp eq i64 %i.b, %i.y
  %or.cond.i7 = select i1 %.not.i6, i1 true, i1 %.not8.i
  %i.z = load i64, ptr @sym_random, align 8
  %.not9.i = icmp eq i64 %i.b, %i.z
  %or.cond13.i = select i1 %or.cond.i7, i1 true, i1 %.not9.i
  %i.aa = load i64, ptr @sym_willneed, align 8
  %.not10.i = icmp eq i64 %i.b, %i.aa
  %or.cond14.i = select i1 %or.cond13.i, i1 true, i1 %.not10.i
  %i.ab = load i64, ptr @sym_dontneed, align 8
  %.not11.i = icmp eq i64 %i.b, %i.ab
  %or.cond15.i = select i1 %or.cond14.i, i1 true, i1 %.not11.i
  %i.ac = load i64, ptr @sym_noreuse, align 8
  %.not12.i = icmp eq i64 %i.b, %i.ac
  %or.cond16.i = select i1 %or.cond15.i, i1 true, i1 %.not12.i
  br i1 %or.cond16.i, label %advice_arg_check.exit, label %bb.h

bb.h:                                             ; preds = %RB_SYMBOL_P.exit.thread.i
  %i.ad = load i64, ptr @rb_eNotImpError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.291, i64 noundef %i.b) #30
  unreachable

advice_arg_check.exit:                            ; preds = %RB_SYMBOL_P.exit.thread.i
  %i.ae = inttoptr i64 %2 to ptr
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.i, label %rb_io_get_write_io.exit

bb.i:                                             ; preds = %advice_arg_check.exit
  %i.ah = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit:                          ; preds = %advice_arg_check.exit
  %i.ai = getelementptr i8, ptr %i.ag, i64 88
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !37 ; 2 uses
  %.not.i8 = icmp eq i64 %i.aj, 0
  %..i = select i1 %.not.i8, i64 %2, i64 %i.aj    ; 5 uses
  %i.ak = icmp ne i64 %..i, 0
  %i.al = and i64 %..i, 7
  %i.am = icmp eq i64 %i.al, 0
  %.not3.i.i.i = and i1 %i.ak, %i.am
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %rb_io_get_write_io.exit
  %i.an = inttoptr i64 %..i to ptr                ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !16 ; 3 uses
  %i.ap = and i64 %i.ao, 2048
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %rb_io_get_write_io.exit
  tail call void @rb_error_frozen_object(i64 noundef %..i) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.aq = and i64 %i.ao, 31
  %i.ar = icmp ne i64 %i.aq, 5
  %i.as = and i64 %i.ao, 49152
  %.not8.i.i = icmp eq i64 %i.as, 0
  %or.cond.i.i = or i1 %i.ar, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.j, !prof !19

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %..i) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.j
  %i.at = getelementptr i8, ptr %i.an, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !34 ; 4 uses
  %.not.i.i9 = icmp eq ptr %i.au, null
  br i1 %.not.i.i9, label %bb.k, label %rb_io_check_initialized.exit.i

bb.k:                                             ; preds = %rb_io_taint_check.exit
  %i.av = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.av, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.aw = getelementptr i8, ptr %i.au, i64 16     ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !20
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %rb_io_check_closed.exit

bb.l:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.az = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.az, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.ba = icmp eq i64 %i.e, 4
  br i1 %i.ba, label %rb_num2long_inline.exit, label %bb.m

bb.m:                                             ; preds = %rb_io_check_closed.exit
  %i.bb = trunc i64 %i.e to i1
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = ashr i64 %i.e, 1
  br label %rb_num2long_inline.exit

bb.o:                                             ; preds = %bb.m
  %i.bd = tail call i64 @rb_num2long(i64 noundef %i.e) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.o, %bb.n, %rb_io_check_closed.exit
  %i.be = phi i64 [ 0, %rb_io_check_closed.exit ], [ %i.bc, %bb.n ], [ %i.bd, %bb.o ] ; 2 uses
  %i.bf = icmp eq i64 %i.k, 4
  br i1 %i.bf, label %rb_num2long_inline.exit11, label %bb.p

bb.p:                                             ; preds = %rb_num2long_inline.exit
  %i.bg = trunc i64 %i.k to i1
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = ashr i64 %i.k, 1
  br label %rb_num2long_inline.exit11

bb.r:                                             ; preds = %bb.p
  %i.bi = tail call i64 @rb_num2long(i64 noundef %i.k) #28
  br label %rb_num2long_inline.exit11

rb_num2long_inline.exit11:                        ; preds = %bb.r, %bb.q, %rb_num2long_inline.exit
  %i.bj = phi i64 [ 0, %rb_num2long_inline.exit ], [ %i.bh, %bb.q ], [ %i.bi, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bk = load i64, ptr @sym_normal, align 8, !tbaa !13
  %i.bl = icmp eq i64 %i.b, %i.bk
  br i1 %i.bl, label %rb_num2int_inline.exit.i, label %bb.s

bb.s:                                             ; preds = %rb_num2long_inline.exit11
  %i.bm = load i64, ptr @sym_random, align 8, !tbaa !13
  %i.bn = icmp eq i64 %i.b, %i.bm
  br i1 %i.bn, label %rb_num2int_inline.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = load i64, ptr @sym_sequential, align 8, !tbaa !13
  %i.bp = icmp eq i64 %i.b, %i.bo
  br i1 %i.bp, label %rb_num2int_inline.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = load i64, ptr @sym_willneed, align 8, !tbaa !13
  %i.br = icmp eq i64 %i.b, %i.bq
  br i1 %i.br, label %rb_num2int_inline.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = load i64, ptr @sym_dontneed, align 8, !tbaa !13
  %i.bt = icmp eq i64 %i.b, %i.bs
  br i1 %i.bt, label %rb_num2int_inline.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = load i64, ptr @sym_noreuse, align 8, !tbaa !13
  %i.bv = icmp eq i64 %i.b, %i.bu
  br i1 %i.bv, label %rb_num2int_inline.exit.i, label %do_io_advise.exit

rb_num2int_inline.exit.i:                         ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %rb_num2long_inline.exit11
  %.0.i.ph.i = phi i64 [ 1, %rb_num2long_inline.exit11 ], [ 9, %bb.v ], [ 7, %bb.u ], [ 5, %bb.t ], [ 3, %bb.s ], [ 11, %bb.w ]
  %i.bw = load i32, ptr %i.aw, align 8, !tbaa !20
  store i32 %i.bw, ptr %3, align 8, !tbaa !254
  %i.bx = tail call i64 @rb_fix2int(i64 noundef %.0.i.ph.i) #28
  %i.by = trunc i64 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !256
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.be, ptr %i.ca, align 8, !tbaa !257
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.bj, ptr %i.cb, align 8, !tbaa !258
  %i.cc = call i64 @rb_thread_io_blocking_call(ptr noundef nonnull %i.au, ptr noundef nonnull @io_advise_internal, ptr noundef nonnull %3, i32 noundef 0) #28
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  switch i32 %i.cd, label %bb.x [
    i32 38, label %do_io_advise.exit
    i32 0, label %do_io_advise.exit
  ]

bb.x:                                             ; preds = %rb_num2int_inline.exit.i
  %i.ce = getelementptr i8, ptr %i.au, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !44
  %i.cg = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.292, i64 noundef %i.cf, i64 noundef %i.be, i64 noundef %i.bj, i64 noundef %i.b) #28
  call void @rb_syserr_fail_str(i32 noundef %i.cd, i64 noundef %i.cg) #30
  unreachable

do_io_advise.exit:                                ; preds = %bb.w, %rb_num2int_inline.exit.i, %rb_num2int_inline.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 4294967296) i64 @rb_io_ioctl(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.ioctl_arg, align 8          ; 6 uses
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !13     ; 3 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = icmp eq i32 %0, 2
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.f = phi i64 [ %i.d, %bb.b ], [ 4, %.preheader ] ; 9 uses
  %.185.i.lcssa = phi i1 [ %i.e, %bb.b ], [ true, %.preheader ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  %i.g = trunc i64 %i.b to i1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.h = ashr i64 %i.b, 1
  br label %rb_num2ulong_inline.exit.i

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.i = tail call i64 @rb_num2ulong(i64 noundef %i.b) #28
  br label %rb_num2ulong_inline.exit.i

rb_num2ulong_inline.exit.i:                       ; preds = %bb.f, %bb.e
  %.0.i.i = phi i64 [ %i.h, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.j = and i64 %i.f, -5
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %setup_narg.exit.i, label %bb.g

bb.g:                                             ; preds = %rb_num2ulong_inline.exit.i
  %i.k = trunc i64 %i.f to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = ashr i64 %i.f, 1
  br label %setup_narg.exit.i

bb.i:                                             ; preds = %bb.g
  %i.m = icmp eq i64 %i.f, 20
  br i1 %i.m, label %setup_narg.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = tail call i64 @rb_check_string_type(i64 noundef %i.f) #28 ; 5 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %rb_num2long_inline.exit.i.i, label %bb.k

rb_num2long_inline.exit.i.i:                      ; preds = %bb.j
  %i.p = tail call i64 @rb_num2long(i64 noundef %i.f) #28
  br label %setup_narg.exit.i

bb.k:                                             ; preds = %bb.j
  %i.q = and i64 %.0.i.i, 4294901760
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %ioctl_narg_len.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = lshr i64 %.0.i.i, 16
  %i.t = and i64 %i.s, 16383
  %spec.store.select.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 256)
  br label %ioctl_narg_len.exit.i

ioctl_narg_len.exit.i:                            ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ %spec.store.select.i.i.i, %bb.l ], [ 256, %bb.k ] ; 3 uses
  tail call void @rb_str_modify(i64 noundef %i.n) #28
  %i.u = inttoptr i64 %i.n to ptr                 ; 5 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !81   ; 4 uses
  %i.x = add nuw nsw i64 %.0.i.i.i, 1             ; 2 uses
  %.not.i2 = icmp sgt i64 %i.w, %.0.i.i.i
  br i1 %.not.i2, label %bb.o, label %bb.m

bb.m:                                             ; preds = %ioctl_narg_len.exit.i
  %i.y = tail call i64 @rb_str_resize(i64 noundef %i.n, i64 noundef %i.x) #28 ; 0 uses
  %i.z = load i64, ptr %i.u, align 8, !tbaa !16
  %i.aa = and i64 %i.z, 8192
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = getelementptr i8, ptr %i.u, i64 24      ; 2 uses
  br i1 %.not.i.i.i, label %RSTRING_PTR.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !86
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.n, %bb.m
  %i.ad = phi ptr [ %i.ac, %bb.n ], [ %i.ab, %bb.m ]
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.w
  %i.af = sub i64 %.0.i.i.i, %i.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ae, i8 noundef 0, i64 noundef %i.af, i1 noundef false) #28
  br label %bb.o

bb.o:                                             ; preds = %RSTRING_PTR.exit.i.i, %ioctl_narg_len.exit.i
  %.0.i7.i = phi i64 [ %i.x, %RSTRING_PTR.exit.i.i ], [ %i.w, %ioctl_narg_len.exit.i ]
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !16
  %i.ah = and i64 %i.ag, 8192
  %.not.i32.i.i = icmp eq i64 %i.ah, 0
  %i.ai = getelementptr i8, ptr %i.u, i64 24      ; 2 uses
  br i1 %.not.i32.i.i, label %RSTRING_PTR.exit33.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86
  br label %RSTRING_PTR.exit33.i.i

RSTRING_PTR.exit33.i.i:                           ; preds = %bb.p, %bb.o
  %i.ak = phi ptr [ %i.aj, %bb.p ], [ %i.ai, %bb.o ] ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 %.0.i7.i
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  store i8 17, ptr %i.am, align 1, !tbaa !86
  %i.an = ptrtoint ptr %i.ak to i64
  br label %setup_narg.exit.i

setup_narg.exit.i:                                ; preds = %RSTRING_PTR.exit33.i.i, %rb_num2long_inline.exit.i.i, %bb.i, %bb.h, %rb_num2ulong_inline.exit.i
  %.0.i = phi i64 [ %i.f, %rb_num2ulong_inline.exit.i ], [ %i.f, %bb.h ], [ 20, %bb.i ], [ %i.f, %rb_num2long_inline.exit.i.i ], [ %i.n, %RSTRING_PTR.exit33.i.i ] ; 3 uses
  %.1.i.i = phi i64 [ 0, %rb_num2ulong_inline.exit.i ], [ %i.l, %bb.h ], [ 1, %bb.i ], [ %i.p, %rb_num2long_inline.exit.i.i ], [ %i.an, %RSTRING_PTR.exit33.i.i ]
  %i.ao = icmp ne i64 %2, 0
  %i.ap = and i64 %2, 7
  %i.aq = icmp eq i64 %i.ap, 0
  %.not3.i.i.i.i = and i1 %i.ao, %i.aq
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %setup_narg.exit.i
  %i.ar = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !16 ; 3 uses
  %i.at = and i64 %i.as, 2048
  %.not.i.i8.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i8.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %setup_narg.exit.i
  tail call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.au = and i64 %i.as, 31
  %i.av = icmp ne i64 %i.au, 5
  %i.aw = and i64 %i.as, 49152
  %.not8.i.i.i = icmp eq i64 %i.aw, 0
  %or.cond.i.i.i = or i1 %i.av, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_io_taint_check.exit.i, label %bb.q, !prof !19

bb.q:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit.i

rb_io_taint_check.exit.i:                         ; preds = %bb.q, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.ax = getelementptr i8, ptr %i.ar, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34 ; 4 uses
  %.not.i.i9.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i9.i, label %bb.r, label %rb_io_check_initialized.exit.i.i

bb.r:                                             ; preds = %rb_io_taint_check.exit.i
  %i.az = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.az, ptr noundef nonnull @.str.4) #30
end_hunk_3
begin_hunk_4_@io_internal_wait:bb.a
bb.f:                                             ; preds = %.split12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %i.aa, ptr %5, align 8, !tbaa !312
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !315
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %i.z, ptr %i.ac, align 8, !tbaa !316
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ad, i8 0, i64 14, i1 false)
  %i.af = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @fiber_scheduler_wait_for, ptr noundef nonnull %5) #28 ; 0 uses
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !317
  %i.ah = and i64 %i.ag, -5
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %nogvl_wait_for.exit

bb.g:                                             ; preds = %.split12
  %i.ak = getelementptr i8, ptr %1, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !20 ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i32 %i.al, ptr %6, align 4, !tbaa !318
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %i.z, ptr %i.an, align 4, !tbaa !320
  %i.ao = call i32 @poll(ptr noundef nonnull %6, i64 noundef 1, i32 noundef -1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %nogvl_wait_for.exit

nogvl_wait_for.exit:                              ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  %phi.call = phi i32 [ %i.ao, %bb.h ], [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aj, %bb.f ] ; 4 uses
  %i.ap = icmp sgt i32 %phi.call, 0
  br i1 %i.ap, label %bb.k, label %bb.i

bb.i:                                             ; preds = %nogvl_wait_for.exit
  %i.aq = icmp eq i32 %phi.call, 0
  br i1 %i.aq, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not15 = icmp eq i32 %2, 0
  br i1 %.not15, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.i, %bb.g, %bb.c
  %.sink = phi i32 [ 110, %bb.i ], [ 110, %bb.c ], [ 110, %bb.g ], [ %2, %bb.j ]
  %i.ar = call ptr @rb_errno_ptr() #28
  store i32 %.sink, ptr %i.ar, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %nogvl_wait_for.exit, %bb.j, %bb.e
  %.1 = phi i32 [ -1, %bb.e ], [ %phi.call, %nogvl_wait_for.exit ], [ %phi.call, %bb.j ], [ -1, %.sink.split ]
  ret i32 %.1
}

declare i64 @writev(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @rb_thread_mn_schedulable(i64 noundef) local_unnamed_addr #1

declare i64 @rb_fiber_scheduler_current_for_thread(i64 noundef) local_unnamed_addr #1

declare ptr @rb_thread_call_with_gvl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noalias noundef ptr @fiber_scheduler_wait_for(ptr noundef captures(none) initializes((24, 32)) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !312
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i16, ptr %i.e, align 8, !tbaa !316
  %i.g = sext i16 %i.f to i64
  %i.h = shl nsw i64 %i.g, 1
  %i.i = or disjoint i64 %i.h, 1
  %i.j = tail call i64 @rb_fiber_scheduler_io_wait(i64 noundef %i.a, i64 noundef %i.d, i64 noundef %i.i, i64 noundef 4) #28
  %i.k = getelementptr i8, ptr %0, i64 24
  store i64 %i.j, ptr %i.k, align 8, !tbaa !317
  ret ptr null
}

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @internal_write_func(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.fiber_scheduler_wait_for_arguments, align 8 ; 8 uses
  %2 = alloca %struct.pollfd, align 4             ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !311  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %io_internal_wait.exit.thread22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !307
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %.split.i, label %io_internal_wait.exit.thread22

.split.i:                                         ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !tbaa !304
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !306  ; 2 uses
  %i.h = tail call i64 @rb_fiber_scheduler_current_for_thread(i64 noundef %i.e) #28 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 4
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i64 %i.h, ptr %1, align 8, !tbaa !312
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.g, ptr %i.i, align 8, !tbaa !315
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 4, ptr %i.j, align 8, !tbaa !316
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.k, i8 0, i64 14, i1 false)
  %i.m = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @fiber_scheduler_wait_for, ptr noundef nonnull %1) #28 ; 0 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !317
  %i.o = and i64 %i.n, -5
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %nogvl_wait_for.exit.i

bb.d:                                             ; preds = %.split.i
  %i.r = getelementptr i8, ptr %i.g, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %io_internal_wait.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i32 %i.s, ptr %2, align 4, !tbaa !318
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 4, ptr %i.u, align 4, !tbaa !320
  %i.v = load i64, ptr %i.b, align 8, !tbaa !321
  %i.w = trunc i64 %i.v to i32
  %i.x = mul i32 %i.w, 1000
  %i.y = getelementptr i8, ptr %i.b, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !323
  %i.aa = sdiv i64 %i.z, 1000
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = add i32 %i.x, %i.ab
  %i.ad = call i32 @poll(ptr noundef nonnull %2, i64 noundef 1, i32 noundef %i.ac) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %nogvl_wait_for.exit.i

nogvl_wait_for.exit.i:                            ; preds = %bb.e, %bb.c
  %phi.call.i = phi i32 [ %i.ad, %bb.e ], [ %i.q, %bb.c ] ; 2 uses
  %i.ae = icmp sgt i32 %phi.call.i, 0
  br i1 %i.ae, label %io_internal_wait.exit.thread22, label %bb.f

bb.f:                                             ; preds = %nogvl_wait_for.exit.i
  switch i32 %phi.call.i, label %io_internal_wait.exit.thread22 [
    i32 0, label %io_internal_wait.exit.thread
    i32 -1, label %.thread25
  ]

io_internal_wait.exit.thread:                     ; preds = %bb.f, %bb.d
  %i.af = call ptr @rb_errno_ptr() #28
  store i32 110, ptr %i.af, align 4, !tbaa !7
  br label %.thread25

io_internal_wait.exit.thread22:                   ; preds = %bb.f, %nogvl_wait_for.exit.i, %bb.b, %bb.a
  %i.ag = getelementptr i8, ptr %0, i64 16
  %i.ah = getelementptr i8, ptr %0, i64 20
  %i.ai = getelementptr i8, ptr %0, i64 24
  %i.aj = getelementptr i8, ptr %0, i64 32
  %i.ak = getelementptr i8, ptr %0, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %io_internal_wait.exit.thread22
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !308
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !309
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !310
  %i.ao = call i64 @write(i32 noundef %i.al, ptr noundef %i.am, i64 noundef %i.an) #28 ; 4 uses
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %.thread25

bb.h:                                             ; preds = %bb.g
  %i.aq = load i32, ptr %i.ag, align 8, !tbaa !307
  %.not20 = icmp eq i32 %i.aq, 0
  br i1 %.not20, label %bb.i, label %.thread25

bb.i:                                             ; preds = %bb.h
  %i.ar = call ptr @rb_errno_ptr() #28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = icmp eq i32 %i.as, 11
  br i1 %i.at, label %bb.j, label %.thread25

bb.j:                                             ; preds = %bb.i
  %i.au = load i64, ptr %0, align 8, !tbaa !304
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !306
  %i.aw = call ptr @rb_errno_ptr() #28
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !311
  %i.az = call fastcc i32 @io_internal_wait(i64 noundef %i.au, ptr noundef %i.av, i32 noundef %i.ax, i32 noundef 4, ptr noundef %i.ay)
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %.thread25, label %bb.g

.thread25:                                        ; preds = %bb.j, %bb.i, %bb.g, %bb.h, %bb.f, %io_internal_wait.exit.thread
  %.2 = phi i64 [ -1, %io_internal_wait.exit.thread ], [ -1, %bb.f ], [ -1, %bb.j ], [ %i.ao, %bb.h ], [ %i.ao, %bb.g ], [ %i.ao, %bb.i ]
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_io_read_memory(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.io_internal_read_struct, align 8 ; 10 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !52
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !53 ; 2 uses
  %i.e = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef %.val.i) #28 ; 2 uses
  %.not = icmp eq i64 %i.e, 4
  br i1 %.not, label %rb_fiber_scheduler_io_result_apply.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !42
  %i.g = tail call i64 @rb_fiber_scheduler_io_read_memory(i64 noundef %i.e, i64 noundef %i.f, ptr noundef %1, i64 noundef %2, i64 noundef 0) #28 ; 6 uses
  %i.h = icmp eq i64 %i.g, 36
  br i1 %i.h, label %rb_fiber_scheduler_io_result_apply.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.g to i1
  br i1 %i.i, label %rb_num2int_inline.exit.i, label %bb.e

rb_num2int_inline.exit.i:                         ; preds = %bb.c
  %i.j = tail call i64 @rb_fix2int(i64 noundef %i.g) #28
  %i.k = and i64 %i.j, 2147483648
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.d, label %rb_num2int_inline.exit6.i

rb_num2int_inline.exit6.i:                        ; preds = %rb_num2int_inline.exit.i
  %i.l = tail call i64 @rb_fix2int(i64 noundef %i.g) #28
  %i.m = trunc i64 %i.l to i32
  %i.n = sub i32 0, %i.m
  %i.o = tail call ptr @rb_errno_ptr() #28
  store i32 %i.n, ptr %i.o, align 4, !tbaa !7
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

bb.d:                                             ; preds = %rb_num2int_inline.exit.i
  %i.p = ashr i64 %i.g, 1
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.q = tail call i64 @rb_num2ull(i64 noundef %i.g) #28
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

rb_fiber_scheduler_io_result_apply.exit:          ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.r = getelementptr i8, ptr %.val.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !282
  store i64 %i.s, ptr %3, align 8, !tbaa !234
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.t, align 8, !tbaa !236
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !237
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !20
  store i32 %i.x, ptr %i.v, align 4, !tbaa !238
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %i.y, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %2, ptr %i.z, align 8, !tbaa !240
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ab = getelementptr i8, ptr %0, i64 200
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %.not20 = icmp eq i64 %i.ac, 4
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_fiber_scheduler_io_result_apply.exit
  %i.ad = tail call { i64, i64 } @rb_time_interval(i64 noundef %i.ac) #28 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = extractvalue { i64, i64 } %i.ad, 1
  store i64 %i.ae, ptr %4, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13
  store ptr %4, ptr %i.aa, align 8, !tbaa !241
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %rb_fiber_scheduler_io_result_apply.exit
  %i.ag = call i64 @rb_thread_io_blocking_call(ptr noundef nonnull %0, ptr noundef nonnull @internal_read_func, ptr noundef nonnull %3, i32 noundef 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

rb_fiber_scheduler_io_result_apply.exit.thread:   ; preds = %rb_num2int_inline.exit6.i, %bb.d, %bb.e, %bb.g
  %.1 = phi i64 [ %i.ag, %bb.g ], [ %i.q, %bb.e ], [ %i.p, %bb.d ], [ -1, %rb_num2int_inline.exit6.i ]
  ret i64 %.1
}

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #1

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_fiber_scheduler_io_read_memory(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @internal_read_func(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.fiber_scheduler_wait_for_arguments, align 8 ; 8 uses
  %2 = alloca %struct.pollfd, align 4             ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %io_internal_wait.exit.thread19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !237
  %.not16 = icmp eq i32 %i.d, 0
  br i1 %.not16, label %.split.i, label %io_internal_wait.exit.thread19

.split.i:                                         ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !tbaa !234
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !236  ; 2 uses
  %i.h = tail call i64 @rb_fiber_scheduler_current_for_thread(i64 noundef %i.e) #28 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 4
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i64 %i.h, ptr %1, align 8, !tbaa !312
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.g, ptr %i.i, align 8, !tbaa !315
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 1, ptr %i.j, align 8, !tbaa !316
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.k, i8 0, i64 14, i1 false)
  %i.m = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @fiber_scheduler_wait_for, ptr noundef nonnull %1) #28 ; 0 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !317
  %i.o = and i64 %i.n, -5
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %nogvl_wait_for.exit.i

bb.d:                                             ; preds = %.split.i
  %i.r = getelementptr i8, ptr %i.g, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %io_internal_wait.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i32 %i.s, ptr %2, align 4, !tbaa !318
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 1, ptr %i.u, align 4, !tbaa !320
  %i.v = load i64, ptr %i.b, align 8, !tbaa !321
  %i.w = trunc i64 %i.v to i32
  %i.x = mul i32 %i.w, 1000
  %i.y = getelementptr i8, ptr %i.b, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !323
  %i.aa = sdiv i64 %i.z, 1000
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = add i32 %i.x, %i.ab
  %i.ad = call i32 @poll(ptr noundef nonnull %2, i64 noundef 1, i32 noundef %i.ac) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %nogvl_wait_for.exit.i

nogvl_wait_for.exit.i:                            ; preds = %bb.e, %bb.c
  %phi.call.i = phi i32 [ %i.ad, %bb.e ], [ %i.q, %bb.c ] ; 2 uses
  %i.ae = icmp sgt i32 %phi.call.i, 0
  br i1 %i.ae, label %io_internal_wait.exit.thread19, label %bb.f

bb.f:                                             ; preds = %nogvl_wait_for.exit.i
  switch i32 %phi.call.i, label %io_internal_wait.exit.thread19 [
    i32 0, label %io_internal_wait.exit.thread
    i32 -1, label %.loopexit
  ]

io_internal_wait.exit.thread:                     ; preds = %bb.f, %bb.d
  %i.af = call ptr @rb_errno_ptr() #28
  store i32 110, ptr %i.af, align 4, !tbaa !7
  br label %.loopexit

io_internal_wait.exit.thread19:                   ; preds = %bb.f, %nogvl_wait_for.exit.i, %bb.b, %bb.a
  %i.ag = getelementptr i8, ptr %0, i64 16
  %i.ah = getelementptr i8, ptr %0, i64 20
  %i.ai = getelementptr i8, ptr %0, i64 24
  %i.aj = getelementptr i8, ptr %0, i64 32
  %i.ak = getelementptr i8, ptr %0, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %io_internal_wait.exit.thread19
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !238
end_hunk_4
begin_hunk_5_@fptr_finalize_flush:bb.a
  store i32 %i.ay, ptr %i.f, align 4, !tbaa !39
  call void @rb_thread_io_close_wait(ptr noundef nonnull %0) #28
  %i.az = icmp ne ptr %i.e, null
  %or.cond5 = select i1 %or.cond3.not, i1 %i.az, i1 false
  br i1 %or.cond5, label %bb.k, label %bb.m

bb.k:                                             ; preds = %io_flush_buffer_sync.exit
  %.not.i83 = icmp eq i32 %1, 0
  br i1 %.not.i83, label %maygvl_fclose.exit, label %maygvl_fclose.exit.thread

maygvl_fclose.exit.thread:                        ; preds = %bb.k
  %i.ba = call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  br label %bb.m

maygvl_fclose.exit:                               ; preds = %bb.k
  %i.bb = call ptr @rb_nogvl(ptr noundef nonnull @nogvl_fclose, ptr noundef nonnull %i.e, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #28
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, 2147483648
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = icmp eq i64 %.1, 4
  %or.cond99 = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond99, label %bb.l, label %bb.m

bb.l:                                             ; preds = %maygvl_fclose.exit
  %i.bg = call ptr @rb_errno_ptr() #28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 1
  %i.bk = or disjoint i64 %i.bj, 1
  br label %bb.m

bb.m:                                             ; preds = %maygvl_fclose.exit.thread, %maygvl_fclose.exit, %bb.l, %io_flush_buffer_sync.exit
  %.169 = phi i32 [ %spec.select, %io_flush_buffer_sync.exit ], [ 1, %bb.l ], [ 1, %maygvl_fclose.exit ], [ 1, %maygvl_fclose.exit.thread ] ; 2 uses
  %.3 = phi i64 [ %.1, %io_flush_buffer_sync.exit ], [ %i.bk, %bb.l ], [ %.1, %maygvl_fclose.exit ], [ %.1, %maygvl_fclose.exit.thread ] ; 4 uses
  %i.bl = call i64 @rb_fiber_scheduler_current() #28 ; 2 uses
  %i.bm = icmp eq i32 %.169, 0
  %i.bn = icmp sgt i32 %i.c, -1                   ; 2 uses
  %or.cond7 = select i1 %i.bm, i1 %i.bn, i1 false
  %i.bo = icmp ne i64 %i.bl, 4
  %or.cond9 = select i1 %or.cond7, i1 %i.bo, i1 false
  br i1 %or.cond9, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bp = shl nuw i32 %i.c, 1
  %i.bq = or disjoint i32 %i.bp, 1
  %i.br = zext i32 %i.bq to i64
  %i.bs = call i64 @rb_fiber_scheduler_io_close(i64 noundef %i.bl, i64 noundef %i.br) #28 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 36
  br i1 %i.bt, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = and i64 %i.bs, -5
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.371 = phi i32 [ %.169, %bb.m ], [ 0, %bb.n ], [ %i.bw, %bb.o ]
  %i.bx = icmp eq i32 %.371, 0
  %or.cond11 = select i1 %i.bx, i1 %i.bn, i1 false
  br i1 %or.cond11, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.by = lshr i32 %i.g, 1
  %.lobit = and i32 %i.by, 1
  %i.bz = xor i32 %.lobit, 1
  %i.ca = or i32 %i.bz, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.c, ptr %i.a, align 4, !tbaa !7
  %.not.i85 = icmp eq i32 %i.ca, 0
  br i1 %.not.i85, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = call i32 @close(i32 noundef %i.c) #28
  br label %maygvl_close.exit

bb.s:                                             ; preds = %bb.q
  %i.cc = call ptr @rb_nogvl(ptr noundef nonnull @nogvl_close, ptr noundef nonnull %i.a, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #28
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = trunc i64 %i.cd to i32
  br label %maygvl_close.exit

maygvl_close.exit:                                ; preds = %bb.r, %bb.s
  %.0.i86 = phi i32 [ %i.cb, %bb.r ], [ %i.ce, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = icmp slt i32 %.0.i86, 0
  br i1 %i.cf, label %bb.t, label %bb.v

bb.t:                                             ; preds = %maygvl_close.exit
  %i.cg = icmp eq i64 %.3, 4
  %i.ch = icmp eq i32 %1, 0
  %or.cond18.not = and i1 %i.ch, %i.cg
  br i1 %or.cond18.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ci = call ptr @rb_errno_ptr() #28
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !7
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 1
  %i.cm = or disjoint i64 %i.cl, 1
  br label %bb.v

bb.v:                                             ; preds = %maygvl_close.exit, %bb.t, %bb.u, %bb.p
  %.5 = phi i64 [ %.3, %bb.p ], [ %.3, %bb.t ], [ %i.cm, %bb.u ], [ %.3, %maygvl_close.exit ] ; 7 uses
  %i.cn = icmp eq i64 %.5, 4
  %i.co = icmp ne i32 %1, 0
  %or.cond13 = or i1 %i.co, %i.cn
  br i1 %or.cond13, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = trunc i64 %.5 to i1
  br i1 %i.cp, label %rb_integer_type_p.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = icmp eq i64 %.5, 0
  %i.cr = and i64 %.5, 6
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = or i1 %i.cq, %i.cs
  br i1 %i.ct, label %rb_integer_type_p.exit.thread96, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.x
  %i.cu = inttoptr i64 %.5 to ptr
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !16
  %i.cw = and i64 %i.cv, 31
  %i.cx = icmp eq i64 %i.cw, 10
  br i1 %i.cx, label %rb_integer_type_p.exit.thread, label %rb_integer_type_p.exit.thread96

rb_integer_type_p.exit.thread:                    ; preds = %bb.w, %rb_integer_type_p.exit
  %i.cy = call fastcc i32 @rb_num2int_inline(i64 noundef %.5)
  %i.cz = getelementptr i8, ptr %0, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.fptr_finalize_flush, i32 noundef %i.cy, i64 noundef %i.da) #30
  unreachable

rb_integer_type_p.exit.thread96:                  ; preds = %bb.x, %rb_integer_type_p.exit
  call void @rb_exc_raise(i64 noundef %.5) #30
  unreachable

bb.y:                                             ; preds = %bb.v
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @finish_writeconv_sync(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !334
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !336
  %i.e = tail call fastcc i64 @finish_writeconv(ptr noundef %i.b, i32 noundef %i.d)
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @finish_writeconv(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca [1024 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 60         ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = getelementptr i8, ptr %0, i64 160        ; 2 uses
  br label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  %i.j = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = getelementptr i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.thread70, %bb.b
  %.054 = phi i32 [ 2, %bb.b ], [ %i.o, %.thread70 ]
  %i.m = icmp eq i32 %.054, 2
  br i1 %i.m, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.a, align 8, !tbaa !159
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.o = call i32 @rb_econv_convert(ptr noundef %i.n, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, i32 noundef 0) #28 ; 2 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !159  ; 2 uses
  %.not6076 = icmp eq ptr %i.p, %i.b
  br i1 %.not6076, label %.thread70, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.k
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %i.s = phi i64 [ %i.ao, %bb.l ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %.05177 = phi ptr [ %.253, %bb.l ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.t = call fastcc i64 @rb_io_write_memory(ptr noundef %0, ptr noundef %.05177, i64 noundef %i.s) ; 3 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %.05177, i64 %i.t
  %i.w = icmp eq i64 %i.t, %i.s
  br i1 %i.w, label %.thread70, label %bb.l

bb.f:                                             ; preds = %.lr.ph
  %i.x = call ptr @rb_errno_ptr() #28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = load i64, ptr %0, align 8, !tbaa !42
  %i.aa = call i32 @rb_io_maybe_wait_writable(i32 noundef %i.y, i64 noundef %i.z, i64 noundef 4)
  %.not61 = icmp eq i32 %i.aa, 0
  br i1 %.not61, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !20
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not63 = icmp eq i32 %1, 0
  br i1 %.not63, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  %i.ae = call i64 @rb_str_new_cstr(ptr noundef nonnull @closed_stream) #28
  %i.af = call i64 @rb_exc_new_str(i64 noundef %i.ad, i64 noundef %i.ae) #28
  br label %.thread

bb.j:                                             ; preds = %bb.f
  %.not62 = icmp eq i32 %1, 0
  br i1 %.not62, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ag = call ptr @rb_errno_ptr() #28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 1
  %i.ak = or disjoint i64 %i.aj, 1
  br label %.thread

bb.l:                                             ; preds = %bb.e, %bb.g
  %.253 = phi ptr [ %.05177, %bb.g ], [ %i.v, %bb.e ] ; 3 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !159 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %.253 to i64
  %i.ao = sub i64 %i.am, %i.an
  %.not60 = icmp eq ptr %i.al, %.253
  br i1 %.not60, label %.thread70, label %.lr.ph

.thread70:                                        ; preds = %bb.l, %bb.e, %bb.d
  switch i32 %i.o, label %bb.c [
    i32 6, label %bb.m
    i32 1, label %bb.m
    i32 0, label %bb.m
  ]

bb.m:                                             ; preds = %.thread70, %.thread70, %.thread70
  %.not64 = icmp eq i32 %1, 0
  br i1 %.not64, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.aq = call i64 @rb_econv_make_exception(ptr noundef %i.ap) #28
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.j, %bb.h, %bb.k, %bb.i, %bb.n, %bb.m
  %.4 = phi i64 [ 20, %bb.h ], [ 20, %bb.m ], [ %i.aq, %bb.n ], [ %i.ak, %bb.k ], [ %i.af, %bb.i ], [ 20, %bb.j ], [ 4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.loopexit

bb.o:                                             ; preds = %.preheader, %bb.t
  %.155 = phi i32 [ %i.bn, %bb.t ], [ 2, %.preheader ]
  %i.ar = icmp eq i32 %.155, 2
  br i1 %i.ar, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.as = load i32, ptr %i.e, align 4, !tbaa !40  ; 2 uses
  %i.at = load i32, ptr %i.f, align 8, !tbaa !66  ; 2 uses
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.av = call fastcc i32 @io_fflush(ptr noundef nonnull %0)
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q
  %.pre = load i32, ptr %i.e, align 4, !tbaa !40
  %.pre79 = load i32, ptr %i.f, align 8, !tbaa !66
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not66 = icmp eq i32 %1, 0
  br i1 %.not66, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.ax = call ptr @rb_errno_ptr() #28
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 1
  %i.bb = or disjoint i64 %i.ba, 1
  br label %.loopexit

bb.t:                                             ; preds = %._crit_edge, %bb.p
  %i.bc = phi i32 [ %.pre79, %._crit_edge ], [ %i.at, %bb.p ]
  %i.bd = phi i32 [ %.pre, %._crit_edge ], [ %i.as, %bb.p ]
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !64  ; 2 uses
  %i.bf = load i32, ptr %i.g, align 8, !tbaa !65
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr %i.be, i64 %i.bg
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr i8, ptr %i.bh, i64 %i.bi  ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !159
  %i.bk = sext i32 %i.bc to i64
  %i.bl = getelementptr i8, ptr %i.be, i64 %i.bk
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.bn = call i32 @rb_econv_convert(ptr noundef %i.bm, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %i.bl, i32 noundef 0) #28 ; 2 uses
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  %i.bt = load i32, ptr %i.e, align 4, !tbaa !40
  %i.bu = add i32 %i.bt, %i.bs
  store i32 %i.bu, ptr %i.e, align 4, !tbaa !40
  switch i32 %i.bn, label %bb.o [
    i32 6, label %bb.u
    i32 1, label %bb.u
    i32 0, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t
  %.not65 = icmp eq i32 %1, 0
  br i1 %.not65, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.bw = call i64 @rb_econv_make_exception(ptr noundef %i.bv) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.v, %bb.u, %bb.s, %bb.r, %.thread
  %.5 = phi i64 [ %.4, %.thread ], [ 20, %bb.r ], [ 20, %bb.u ], [ %i.bb, %bb.s ], [ %i.bw, %bb.v ], [ 4, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.5
}

declare void @rb_thread_io_close_wait(ptr noundef) local_unnamed_addr #1

declare i64 @rb_fiber_scheduler_io_close(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_exc_new_str(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #14

declare ptr @rb_nogvl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind sspstrong uwtable
define internal noundef ptr @nogvl_fclose(ptr noundef captures(none) %0) #21 {
bb.a:
  %i.a = tail call i32 @fclose(ptr noundef %0)
  %i.b = sext i32 %i.a to i64
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

declare i64 @rb_thread_io_close_interrupt(ptr noundef) local_unnamed_addr #1

declare void @rb_last_status_clear() local_unnamed_addr #1

declare i32 @rb_waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @rb_enc_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @rb_enc_find_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #22

declare ptr @rb_default_internal_encoding() local_unnamed_addr #1

declare nonnull ptr @rb_usascii_encoding() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @rb_file_open_generic(i64 noundef returned %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull readonly captures(none) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %.0.sroa.gep23 = getelementptr i8, ptr %4, i64 8
  %.0.sroa.gep = getelementptr i8, ptr %4, i64 16
  %i.a = load i32, ptr %.0.sroa.gep, align 8, !tbaa !135 ; 2 uses
  %i.b = load ptr, ptr %.0.sroa.gep23, align 8, !tbaa !134
  %i.c = icmp eq ptr %i.b, null
  %i.d = and i32 %3, 4
  %.not.i = icmp eq i32 %i.d, 0                   ; 2 uses
  %i.e = and i32 %3, 5
  %i.f = icmp eq i32 %i.e, 1
  %or.cond22.i = and i1 %i.f, %i.c
  br i1 %or.cond22.i, label %bb.b, label %bb.e
end_hunk_5
