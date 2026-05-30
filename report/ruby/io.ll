inline.NumInlined: 1500
inline.NumDeleted: 204
begin_hunk_0_@rb_io_getline_0
define internal fastcc i64 @rb_io_getline_0(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @rb_io_check_char_readable(ptr noundef %3)
  %i.b = icmp eq i64 %0, 4                        ; 2 uses
  %i.c = icmp slt i64 %1, 0                       ; 2 uses
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i64 @read_all(ptr noundef %3, i64 noundef 0, i64 noundef 4) ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !81
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.cj, label %bb.ch

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %1, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %3, i64 96
  %.val134 = load ptr, ptr %i.j, align 8, !tbaa !83 ; 2 uses
  %.not.i = icmp eq ptr %.val134, null
  br i1 %.not.i, label %bb.e, label %io_read_encoding.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @rb_default_external_encoding() #28
  br label %io_read_encoding.exit

io_read_encoding.exit:                            ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.k, %bb.e ], [ %.val134, %bb.d ]
  %i.l = tail call i64 @rb_enc_str_new_static(ptr noundef null, i64 noundef 0, ptr noundef %.0.i) #28
  br label %bb.cj

bb.f:                                             ; preds = %bb.c
  %i.m = load i64, ptr @rb_default_rs, align 8, !tbaa !13
  %i.n = icmp eq i64 %0, %i.m
  %or.cond3 = and i1 %i.c, %i.n
  br i1 %or.cond3, label %bb.g, label %rb_enc_asciicompat.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %3, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.h, label %rb_enc_asciicompat.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %3, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !39
  %i.s = and i32 %i.r, 4096
  %.not127 = icmp eq i32 %i.s, 0
  br i1 %.not127, label %bb.i, label %rb_enc_asciicompat.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %3, i64 96
  %.val133 = load ptr, ptr %i.t, align 8, !tbaa !83 ; 2 uses
  %.not.i138 = icmp eq ptr %.val133, null
  br i1 %.not.i138, label %bb.j, label %io_read_encoding.exit140

bb.j:                                             ; preds = %bb.i
  %i.u = tail call ptr @rb_default_external_encoding() #28
  br label %io_read_encoding.exit140

io_read_encoding.exit140:                         ; preds = %bb.i, %bb.j
  %.0.i139 = phi ptr [ %i.u, %bb.j ], [ %.val133, %bb.i ] ; 3 uses
  %i.v = getelementptr i8, ptr %.0.i139, i64 20
  %.val.i = load i32, ptr %i.v, align 4, !tbaa !84
  %.not.i141 = icmp eq i32 %.val.i, 1
  br i1 %.not.i141, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %io_read_encoding.exit140
  %i.w = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %.0.i139) #33
  %.not3.i = icmp eq i32 %i.w, 0
  br i1 %.not3.i, label %bb.k, label %rb_enc_asciicompat.exit.thread

bb.k:                                             ; preds = %rb_enc_asciicompat.exit
  %i.x = tail call fastcc i64 @rb_io_getline_fast(ptr noundef nonnull %3, ptr noundef nonnull %.0.i139, i32 noundef %2)
  br label %bb.cj

rb_enc_asciicompat.exit.thread:                   ; preds = %io_read_encoding.exit140, %rb_enc_asciicompat.exit, %bb.h, %bb.g, %bb.f
  %i.y = getelementptr i8, ptr %3, i64 96         ; 2 uses
  %.val = load ptr, ptr %i.y, align 8, !tbaa !83  ; 2 uses
  %.not.i143 = icmp eq ptr %.val, null
  br i1 %.not.i143, label %bb.l, label %io_read_encoding.exit145

bb.l:                                             ; preds = %rb_enc_asciicompat.exit.thread
  %i.z = tail call ptr @rb_default_external_encoding() #28
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
  %4 = trunc nuw i32 %2 to i1
  %i.bp = icmp eq i32 %.0119, 10
  %or.cond5 = select i1 %4, i1 %i.bp, i1 false
  br i1 %or.cond5, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr i8, ptr %.0.i144, i64 20
  %.val136 = load i32, ptr %i.bq, align 4, !tbaa !84
  %i.br = sext i32 %.val136 to i64
  %i.bs = icmp eq i64 %.1114, %i.br
  %i.bt = zext i1 %i.bs to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %io_read_encoding.exit145
  %.1120 = phi i32 [ -1, %io_read_encoding.exit145 ], [ 10, %bb.x ], [ %.0119, %bb.w ] ; 6 uses
  %.2118 = phi ptr [ null, %io_read_encoding.exit145 ], [ %.1117, %bb.x ], [ %.1117, %bb.w ] ; 2 uses
  %.2115 = phi i64 [ 0, %io_read_encoding.exit145 ], [ %.1114, %bb.x ], [ %.1114, %bb.w ] ; 4 uses
  %.1112 = phi i32 [ 0, %io_read_encoding.exit145 ], [ %.0111, %bb.x ], [ %.0111, %bb.w ] ; 2 uses
  %.0107 = phi i32 [ %2, %io_read_encoding.exit145 ], [ %i.bt, %bb.x ], [ 0, %bb.w ]
  %.2 = phi i64 [ 4, %io_read_encoding.exit145 ], [ %.1, %bb.x ], [ %.1, %bb.w ] ; 2 uses
  %i.bu = getelementptr i8, ptr %3, i64 104
  %i.bv = getelementptr i8, ptr %3, i64 20
  %i.bw = getelementptr i8, ptr %3, i64 148       ; 5 uses
  %i.bx = getelementptr i8, ptr %3, i64 136       ; 3 uses
  %i.by = getelementptr i8, ptr %3, i64 144       ; 5 uses
  %i.bz = getelementptr i8, ptr %.0.i144, i64 20  ; 4 uses
  %i.ca = getelementptr i8, ptr %.0.i144, i64 32  ; 2 uses
  %i.cb = getelementptr i8, ptr %3, i64 80        ; 4 uses
  %i.cc = getelementptr i8, ptr %3, i64 68        ; 2 uses
  %i.cd = getelementptr i8, ptr %3, i64 76        ; 4 uses
  %i.ce = getelementptr i8, ptr %3, i64 16
  %.not214 = icmp eq i32 %.1120, -1
  %i.cf = sub i64 0, %.2115
  %.not129 = icmp ne i32 %.1112, 0
  %.not.i161 = icmp eq i64 %.2, 0
  %or.cond213 = or i1 %.not129, %.not.i161
  %i.cg = inttoptr i64 %.2 to ptr                 ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 24     ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 16
  br label %.outer

.outer:                                           ; preds = %bb.cc, %bb.y
  %.0184.ph = phi i64 [ 1, %bb.cc ], [ %1, %bb.y ]
  %.0180.ph = phi i64 [ %.10200301308, %bb.cc ], [ 4, %bb.y ]
  %.0108.ph = phi i32 [ %i.iz, %bb.cc ], [ 16, %bb.y ] ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.backedge, %.outer
  %.0184 = phi i64 [ %.0184.ph, %.outer ], [ %.2186199304, %.backedge ] ; 2 uses
  %.0180 = phi i64 [ %.0180.ph, %.outer ], [ %.10200300, %.backedge ] ; 4 uses
  %i.cj = load ptr, ptr %i.bu, align 8, !tbaa !72
  %.not.i156 = icmp eq ptr %i.cj, null
  br i1 %.not.i156, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i32, ptr %i.bv, align 4, !tbaa !39
  %i.cl = and i32 %i.ck, 4096
  %.not131.i = icmp eq i32 %i.cl, 0
  br i1 %.not131.i, label %.preheader.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call fastcc void @make_readconv(ptr noundef nonnull %3, i32 noundef 0)
  br label %bb.ac

bb.ac:                                            ; preds = %more_char.exit.i, %bb.ab
  %.3183 = phi i64 [ %.0180, %bb.ab ], [ %.5, %more_char.exit.i ] ; 3 uses
  %.0118.i = phi i64 [ %.0184, %bb.ab ], [ %.2120.ph.i, %more_char.exit.i ] ; 6 uses
  %.0106.i = phi i64 [ %.0180, %bb.ab ], [ %.4110.ph.i, %more_char.exit.i ] ; 6 uses
  %i.cm = load i32, ptr %i.bw, align 4, !tbaa !45 ; 3 uses
  %.not134.i = icmp eq i32 %i.cm, 0
  br i1 %.not134.i, label %bb.as, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %i.bx, align 8, !tbaa !87
  %i.co = load i32, ptr %i.by, align 8, !tbaa !88
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr i8, ptr %i.cn, i64 %i.cp  ; 9 uses
  %i.cr = icmp sgt i64 %.0118.i, 0
  %i.cs = sext i32 %i.cm to i64
  %i.ct = icmp slt i64 %.0118.i, %i.cs
  %or.cond.i = and i1 %i.cr, %i.ct
  %i.cu = trunc nuw nsw i64 %.0118.i to i32
  %.0124.i = select i1 %or.cond.i, i32 %i.cu, i32 %i.cm ; 3 uses
  %i.cv = sext i32 %.0124.i to i64                ; 5 uses
  %.val36.i.i = load i32, ptr %i.bz, align 4, !tbaa !84
  %i.cw = icmp eq i32 %.val36.i.i, 1
  br i1 %i.cw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cx = call ptr @memchr(ptr noundef %i.cq, i32 noundef %.1120, i64 noundef range(i64 -2147483648, 2147483648) %i.cv) #33 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cx, null
  %i.cy = getelementptr i8, ptr %i.cx, i64 1
  br i1 %.not.i.i, label %search_delim.exit.thread.i, label %search_delim.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.cz = getelementptr i8, ptr %i.cq, i64 %i.cv  ; 4 uses
  %i.da = icmp ult ptr %i.cq, %i.cz
  br i1 %i.da, label %.lr.ph.i.i, label %search_delim.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.af, %bb.ai
  %.03043.i.i = phi ptr [ %.232.i.i, %bb.ai ], [ %i.cq, %bb.af ] ; 4 uses
  %i.db = call i32 @rb_enc_precise_mbclen(ptr noundef %.03043.i.i, ptr noundef nonnull %i.cz, ptr noundef nonnull %.0.i144) #28 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i
  %.val.i.i = load i32, ptr %i.bz, align 4, !tbaa !84
  %i.dd = sext i32 %.val.i.i to i64
  %i.de = getelementptr i8, ptr %.03043.i.i, i64 %i.dd
  br label %bb.ai, !llvm.loop !89

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.df = load ptr, ptr %i.ca, align 8, !tbaa !90
  %i.dg = call i32 %i.df(ptr noundef %.03043.i.i, ptr noundef nonnull %i.cz, ptr noundef nonnull %.0.i144) #28, !inline_history !91
  %i.dh = icmp eq i32 %i.dg, %.1120
  %i.di = zext nneg i32 %i.db to i64
  %i.dj = getelementptr i8, ptr %.03043.i.i, i64 %i.di ; 2 uses
  br i1 %i.dh, label %search_delim.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.232.i.i = phi ptr [ %i.dj, %bb.ah ], [ %i.de, %bb.ag ] ; 2 uses
  %i.dk = icmp ult ptr %.232.i.i, %i.cz
  br i1 %i.dk, label %.lr.ph.i.i, label %search_delim.exit.thread.i

search_delim.exit.i:                              ; preds = %bb.ah, %bb.ae
  %.4.i.i = phi ptr [ %i.cy, %bb.ae ], [ %i.dj, %bb.ah ] ; 2 uses
  %.not135.i = icmp eq ptr %.4.i.i, null
  br i1 %.not135.i, label %search_delim.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %search_delim.exit.i
  %i.dl = ptrtoint ptr %.4.i.i to i64
  %i.dm = ptrtoint ptr %i.cq to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 2 uses
  %i.do = trunc i64 %i.dn to i32                  ; 2 uses
  %i.dp = icmp eq i64 %.0106.i, 4
  %sext136.i = shl i64 %i.dn, 32
  %i.dq = ashr exact i64 %sext136.i, 32           ; 3 uses
  br i1 %i.dp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dr = call i64 @rb_str_new(ptr noundef %i.cq, i64 noundef %i.dq) #28
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ds = call i64 @rb_str_cat(i64 noundef %.0106.i, ptr noundef %i.cq, i64 noundef %i.dq) #28 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.6 = phi i64 [ %i.dr, %bb.ak ], [ %.3183, %bb.al ]
  %i.dt = load i32, ptr %i.by, align 8, !tbaa !88
  %i.du = add i32 %i.dt, %i.do
  store i32 %i.du, ptr %i.by, align 8, !tbaa !88
  %i.dv = load i32, ptr %i.bw, align 4, !tbaa !45
  %i.dw = sub i32 %i.dv, %i.do
  store i32 %i.dw, ptr %i.bw, align 4, !tbaa !45
  %i.dx = sub i64 %.0118.i, %i.dq
  br label %appendline.exit

search_delim.exit.thread.i:                       ; preds = %bb.ai, %search_delim.exit.i, %bb.af, %bb.ae
  %i.dy = icmp eq i64 %.0106.i, 4
  br i1 %i.dy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %search_delim.exit.thread.i
  %i.dz = call i64 @rb_str_new(ptr noundef %i.cq, i64 noundef %i.cv) #28 ; 2 uses
  br label %bb.ap

bb.ao:                                            ; preds = %search_delim.exit.thread.i
  %i.ea = call i64 @rb_str_cat(i64 noundef %.0106.i, ptr noundef %i.cq, i64 noundef %i.cv) #28 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.4 = phi i64 [ %i.dz, %bb.an ], [ %.3183, %bb.ao ] ; 3 uses
  %.2108.i = phi i64 [ %i.dz, %bb.an ], [ %.0106.i, %bb.ao ] ; 2 uses
  %i.eb = load i32, ptr %i.by, align 8, !tbaa !88
  %i.ec = add i32 %i.eb, %.0124.i
  store i32 %i.ec, ptr %i.by, align 8, !tbaa !88
  %i.ed = load i32, ptr %i.bw, align 4, !tbaa !45
  %i.ee = sub i32 %i.ed, %.0124.i
  store i32 %i.ee, ptr %i.bw, align 4, !tbaa !45
  %i.ef = sub i64 %.0118.i, %i.cv                 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.eh = inttoptr i64 %.2108.i to ptr            ; 4 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !16
  %i.ej = and i64 %i.ei, 8192
  %.not.i141.i = icmp eq i64 %i.ej, 0
  %i.ek = getelementptr i8, ptr %i.eh, i64 24     ; 2 uses
  br i1 %.not.i141.i, label %appendline.exit.thread195, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !86
  br label %appendline.exit.thread195

bb.as:                                            ; preds = %bb.ap, %bb.ac
  %.5 = phi i64 [ %.3183, %bb.ac ], [ %.4, %bb.ap ] ; 3 uses
  %.2120.ph.i = phi i64 [ %.0118.i, %bb.ac ], [ %i.ef, %bb.ap ]
  %.4110.ph.i = phi i64 [ %.0106.i, %bb.ac ], [ %.2108.i, %bb.ap ]
  %i.em = call fastcc i64 @fill_cbuf(ptr noundef nonnull %3, i32 noundef 262144) ; 3 uses
  %i.en = and i64 %i.em, -17
end_hunk_0
begin_hunk_1_@rb_io_getline_0:bb.a
  %i.fn = getelementptr i8, ptr %.03043.i146.i, i64 %i.fm ; 2 uses
  br i1 %i.fl, label %search_delim.exit151.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.232.i148.i = phi ptr [ %i.fn, %bb.bc ], [ %i.fi, %bb.bb ] ; 2 uses
  %i.fo = icmp ult ptr %.232.i148.i, %i.fd
  br i1 %i.fo, label %.lr.ph.i145.i, label %search_delim.exit151.i

search_delim.exit151.i:                           ; preds = %bb.bd, %bb.bc, %bb.ba, %bb.az
  %.4.i144.i = phi ptr [ %spec.select.i150.i, %bb.az ], [ null, %bb.ba ], [ %i.fn, %bb.bc ], [ null, %bb.bd ] ; 2 uses
  %.not132.i = icmp eq ptr %.4.i144.i, null       ; 2 uses
  %i.fp = ptrtoint ptr %.4.i144.i to i64
  %i.fq = ptrtoint ptr %i.ex to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %.1114.i = select i1 %.not132.i, i64 %.0113.i, i64 %i.fr ; 5 uses
  %i.fs = icmp eq i64 %.5111.i, 4
  br i1 %i.fs, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %search_delim.exit151.i
  %i.ft = inttoptr i64 %.5111.i to ptr            ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !81 ; 2 uses
  %i.fw = add i64 %i.fv, %.1114.i
  %i.fx = call i64 @rb_str_resize(i64 noundef %.5111.i, i64 noundef %i.fw) #28 ; 0 uses
  br label %bb.bg

bb.bf:                                            ; preds = %search_delim.exit151.i
  %i.fy = call i64 @rb_str_buf_new(i64 noundef %.1114.i) #28 ; 4 uses
  call void @rb_str_set_len(i64 noundef %i.fy, i64 noundef %.1114.i) #28
  %.pre.i = inttoptr i64 %i.fy to ptr
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.9 = phi i64 [ %i.fy, %bb.bf ], [ %.7, %bb.be ] ; 4 uses
  %.pre-phi.i = phi ptr [ %.pre.i, %bb.bf ], [ %i.ft, %bb.be ] ; 5 uses
  %.6112.i = phi i64 [ %i.fy, %bb.bf ], [ %.5111.i, %bb.be ]
  %.0.i157 = phi i64 [ 0, %bb.bf ], [ %i.fv, %bb.be ]
  %i.fz = load i64, ptr %.pre-phi.i, align 8, !tbaa !16
  %i.ga = and i64 %i.fz, 8192
  %.not.i152.i = icmp eq i64 %i.ga, 0
  %i.gb = getelementptr i8, ptr %.pre-phi.i, i64 24 ; 4 uses
  br i1 %.not.i152.i, label %RSTRING_PTR.exit153.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !86
  br label %RSTRING_PTR.exit153.i

RSTRING_PTR.exit153.i:                            ; preds = %bb.bh, %bb.bg
  %i.gd = phi ptr [ %i.gc, %bb.bh ], [ %i.gb, %bb.bg ]
  %i.ge = load i32, ptr %i.cb, align 8, !tbaa !46 ; 3 uses
  %i.gf = icmp slt i32 %i.ge, 1
  br i1 %i.gf, label %read_buffered_data.exit.i, label %bb.bi

bb.bi:                                            ; preds = %RSTRING_PTR.exit153.i
  %i.gg = getelementptr i8, ptr %i.gd, i64 %.0.i157
  %i.gh = zext nneg i32 %i.ge to i64
  %spec.select17.i.i = call i64 @llvm.smin.i64(i64 %.1114.i, i64 %i.gh) ; 2 uses
  %spec.select.i154.i = trunc i64 %spec.select17.i.i to i32 ; 2 uses
  %i.gi = load ptr, ptr %i.cc, align 4, !tbaa !71
  %i.gj = load i32, ptr %i.cd, align 4, !tbaa !47
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr i8, ptr %i.gi, i64 %i.gk
  %sext.i.i = shl i64 %spec.select17.i.i, 32
  %i.gm = ashr exact i64 %sext.i.i, 32
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.gg, ptr noundef nonnull align 1 %i.gl, i64 noundef %i.gm, i1 noundef false) #28
  %i.gn = load i32, ptr %i.cd, align 4, !tbaa !47
  %i.go = add i32 %i.gn, %spec.select.i154.i
  store i32 %i.go, ptr %i.cd, align 4, !tbaa !47
  %i.gp = load i32, ptr %i.cb, align 8, !tbaa !46
  %i.gq = sub i32 %i.gp, %spec.select.i154.i      ; 2 uses
  store i32 %i.gq, ptr %i.cb, align 8, !tbaa !46
  br label %read_buffered_data.exit.i

read_buffered_data.exit.i:                        ; preds = %bb.bi, %RSTRING_PTR.exit153.i
  %.pr.i = phi i32 [ %i.ge, %RSTRING_PTR.exit153.i ], [ %i.gq, %bb.bi ]
  %i.gr = sub i64 %.3121.i, %.1114.i              ; 3 uses
  br i1 %.not132.i, label %bb.bj, label %appendline.exit

bb.bj:                                            ; preds = %read_buffered_data.exit.i
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %bb.bk, label %thread-pre-split.i

bb.bk:                                            ; preds = %bb.bj
  %i.gt = load i64, ptr %.pre-phi.i, align 8, !tbaa !16
  %i.gu = and i64 %i.gt, 8192
  %.not.i155.i = icmp eq i64 %i.gu, 0
  br i1 %.not.i155.i, label %appendline.exit.thread195, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gv = load ptr, ptr %i.gb, align 8, !tbaa !86
  br label %appendline.exit.thread195

thread-pre-split.i:                               ; preds = %bb.bj, %.preheader.i
  %.8 = phi i64 [ %.9, %bb.bj ], [ %.7, %.preheader.i ] ; 2 uses
  %i.gw = phi i32 [ %.pr.i, %bb.bj ], [ %i.er, %.preheader.i ]
  %.4122.i = phi i64 [ %i.gr, %bb.bj ], [ %.3121.i, %.preheader.i ]
  %.7.i = phi i64 [ %.6112.i, %bb.bj ], [ %.5111.i, %.preheader.i ]
  %.not133.i = icmp eq i32 %i.gw, 0
  br i1 %.not133.i, label %rb_io_check_initialized.exit.i.i, label %bb.bn

rb_io_check_initialized.exit.i.i:                 ; preds = %thread-pre-split.i
  %i.gx = load i32, ptr %i.ce, align 8, !tbaa !20
  %i.gy = icmp slt i32 %i.gx, 0
  br i1 %i.gy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %rb_io_check_initialized.exit.i.i
  call void @rb_thread_check_ints() #28
  %i.gz = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gz, ptr noundef nonnull @closed_stream) #30
  unreachable

bb.bn:                                            ; preds = %rb_io_check_initialized.exit.i.i, %thread-pre-split.i
  %i.ha = call fastcc i32 @io_fillbuf(ptr noundef nonnull %3)
  %i.hb = icmp sgt i32 %i.ha, -1
  br i1 %i.hb, label %.preheader.i, label %.thread207, !llvm.loop !93

appendline.exit:                                  ; preds = %read_buffered_data.exit.i, %bb.am
  %.2186 = phi i64 [ %i.dx, %bb.am ], [ %i.gr, %read_buffered_data.exit.i ]
  %.10 = phi i64 [ %.6, %bb.am ], [ %.9, %read_buffered_data.exit.i ] ; 2 uses
  br i1 %.not214, label %.thread207, label %appendline.exit.thread195.thread

appendline.exit.thread195:                        ; preds = %bb.bk, %bb.bl, %bb.aq, %bb.ar
  %.pre-phi.i.lcssa326.sink = phi ptr [ %i.eh, %bb.aq ], [ %i.eh, %bb.ar ], [ %.pre-phi.i, %bb.bl ], [ %.pre-phi.i, %bb.bk ]
  %.sink337 = phi ptr [ %i.ek, %bb.aq ], [ %i.el, %bb.ar ], [ %i.gv, %bb.bl ], [ %i.gb, %bb.bk ]
  %.10200 = phi i64 [ %.4, %bb.aq ], [ %.4, %bb.ar ], [ %.9, %bb.bl ], [ %.9, %bb.bk ] ; 2 uses
  %i.hc = getelementptr i8, ptr %.pre-phi.i.lcssa326.sink, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !81
  %i.he = getelementptr i8, ptr %.sink337, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 -1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !86
  %i.hh = zext i8 %i.hg to i32
  %i.hi = icmp eq i32 %.1120, %i.hh
  br i1 %i.hi, label %appendline.exit.thread195.thread, label %.thread

appendline.exit.thread195.thread:                 ; preds = %appendline.exit, %appendline.exit.thread195
  %.2186199304 = phi i64 [ 0, %appendline.exit.thread195 ], [ %.2186, %appendline.exit ] ; 2 uses
  %.10200300 = phi i64 [ %.10200, %appendline.exit.thread195 ], [ %.10, %appendline.exit ] ; 6 uses
  %i.hj = inttoptr i64 %.10200300 to ptr          ; 3 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !81 ; 2 uses
  %i.hm = icmp slt i64 %i.hl, %.2115
  br i1 %i.hm, label %.backedge, label %bb.bo

bb.bo:                                            ; preds = %appendline.exit.thread195.thread
  %i.hn = load i64, ptr %i.hj, align 8, !tbaa !16
  %i.ho = and i64 %i.hn, 8192
  %.not.i158 = icmp eq i64 %i.ho, 0
  %i.hp = getelementptr i8, ptr %i.hj, i64 24     ; 2 uses
  br i1 %.not.i158, label %RSTRING_END.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !86
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.bo, %bb.bp
  %i.hr = phi ptr [ %i.hq, %bb.bp ], [ %i.hp, %bb.bo ] ; 4 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.hl  ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 %i.cf  ; 7 uses
  %i.hu = call ptr @onigenc_get_left_adjust_char_head(ptr noundef %.0.i144, ptr noundef %i.hr, ptr noundef %i.ht, ptr noundef %i.hs) #28
  %i.hv = icmp eq ptr %i.hu, %i.ht
  br i1 %i.hv, label %bb.bq, label %.backedge

bb.bq:                                            ; preds = %RSTRING_END.exit
  br i1 %or.cond213, label %rscheck.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hw = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.hx = and i64 %i.hw, 8192
  %.not.i.i162 = icmp eq i64 %i.hx, 0
  br i1 %.not.i.i162, label %RSTRING_PTR.exit.i163, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hy = load ptr, ptr %i.ch, align 8, !tbaa !86
  br label %RSTRING_PTR.exit.i163

RSTRING_PTR.exit.i163:                            ; preds = %bb.bs, %bb.br
  %i.hz = phi ptr [ %i.hy, %bb.bs ], [ %i.ch, %bb.br ]
  %.not4.i = icmp eq ptr %i.hz, %.2118
  br i1 %.not4.i, label %rscheck.exit, label %bb.bt

bb.bt:                                            ; preds = %RSTRING_PTR.exit.i163
  %i.ia = load i64, ptr %i.ci, align 8, !tbaa !81
  %.not5.i = icmp eq i64 %i.ia, %.2115
  br i1 %.not5.i, label %rscheck.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ib = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ib, ptr noundef nonnull @.str.197) #30
  unreachable

rscheck.exit:                                     ; preds = %bb.bt, %RSTRING_PTR.exit.i163, %bb.bq
  %bcmp = call i32 @bcmp(ptr %i.ht, ptr %.2118, i64 %.2115)
  %i.ic = icmp eq i32 %bcmp, 0
  br i1 %i.ic, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %rscheck.exit
  %.not130 = icmp eq i32 %2, 0
  br i1 %.not130, label %.loopexit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not131 = trunc nuw i32 %.0107 to i1
  %i.id = icmp ugt ptr %i.ht, %i.hr
  %or.cond132 = and i1 %i.id, %.not131
  br i1 %or.cond132, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ie = getelementptr i8, ptr %i.ht, i64 -1     ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !86
  %i.ig = icmp eq i8 %i.if, 13
  %spec.select = select i1 %i.ig, ptr %i.ie, ptr %i.ht
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.0103 = phi ptr [ %i.ht, %bb.bw ], [ %spec.select, %bb.bx ]
  %i.ih = ptrtoint ptr %.0103 to i64
  %i.ii = ptrtoint ptr %i.hr to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @rb_str_set_len(i64 noundef %.10200300, i64 noundef %i.ij) #28
  br label %.loopexit

bb.bz:                                            ; preds = %rscheck.exit
  %i.ik = icmp eq i64 %.2186199304, 0
  br i1 %i.ik, label %.thread, label %.backedge

.backedge:                                        ; preds = %bb.bz, %RSTRING_END.exit, %appendline.exit.thread195.thread
  br label %bb.z, !llvm.loop !94

.thread:                                          ; preds = %appendline.exit.thread195, %bb.bz
  %.10200301308 = phi i64 [ %.10200300, %bb.bz ], [ %.10200, %appendline.exit.thread195 ] ; 4 uses
  %i.il = inttoptr i64 %.10200301308 to ptr       ; 3 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !16
  %i.in = and i64 %i.im, 8192
  %.not.i164 = icmp eq i64 %i.in, 0
  %i.io = getelementptr i8, ptr %i.il, i64 24     ; 2 uses
  br i1 %.not.i164, label %RSTRING_END.exit167, label %bb.ca

bb.ca:                                            ; preds = %.thread
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !86
  br label %RSTRING_END.exit167

RSTRING_END.exit167:                              ; preds = %.thread, %bb.ca
  %i.iq = phi ptr [ %i.ip, %bb.ca ], [ %i.io, %.thread ] ; 2 uses
  %i.ir = getelementptr i8, ptr %i.il, i64 16
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !81
  %i.it = getelementptr i8, ptr %i.iq, i64 %i.is  ; 3 uses
  %i.iu = call ptr @onigenc_get_prev_char_head(ptr noundef %.0.i144, ptr noundef %i.iq, ptr noundef %i.it, ptr noundef %i.it) #28 ; 2 uses
  %i.iv = icmp ne i32 %.0108.ph, 0
  %i.iw = icmp ne ptr %i.iu, null
  %or.cond7 = select i1 %i.iv, i1 %i.iw, i1 false
  br i1 %or.cond7, label %bb.cb, label %.loopexit

bb.cb:                                            ; preds = %RSTRING_END.exit167
  %i.ix = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.iu, ptr noundef %i.it, ptr noundef %.0.i144) #28
  %i.iy = icmp slt i32 %i.ix, -1
  br i1 %i.iy, label %bb.cc, label %.loopexit

bb.cc:                                            ; preds = %bb.cb
  %i.iz = add i32 %.0108.ph, -1
  br label %.outer

.loopexit:                                        ; preds = %RSTRING_END.exit167, %bb.cb, %bb.bv, %bb.by
  %.10200303 = phi i64 [ %.10200300, %bb.bv ], [ %.10200300, %bb.by ], [ %.10200301308, %bb.cb ], [ %.10200301308, %RSTRING_END.exit167 ] ; 2 uses
  %.1105.ph = phi i32 [ 0, %bb.bv ], [ 0, %bb.by ], [ 1, %bb.cb ], [ 1, %RSTRING_END.exit167 ] ; 2 uses
  %.not215 = icmp eq i32 %.1112, 0
  br i1 %.not215, label %.thread207, label %bb.cd

bb.cd:                                            ; preds = %.loopexit
  call fastcc void @swallow(ptr noundef nonnull %3)
  br label %.thread207

.thread207:                                       ; preds = %appendline.exit, %bb.bn, %bb.ax, %bb.aw, %bb.cd, %.loopexit
  %.2106212 = phi i32 [ %.1105.ph, %.loopexit ], [ %.1105.ph, %bb.cd ], [ 0, %bb.bn ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %appendline.exit ]
  %.10192211 = phi i64 [ %.10200303, %.loopexit ], [ %.10200303, %bb.cd ], [ %.8, %bb.bn ], [ %.5, %bb.aw ], [ %.5, %bb.ax ], [ %.10, %appendline.exit ] ; 3 uses
  %i.ja = icmp eq i64 %.10192211, 4
  br i1 %i.ja, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %.thread207
  %.val135 = load ptr, ptr %i.y, align 8, !tbaa !83 ; 2 uses
  %.not.i.i168 = icmp eq ptr %.val135, null
  br i1 %.not.i.i168, label %bb.cf, label %io_enc_str.exit

bb.cf:                                            ; preds = %bb.ce
  %i.jb = call ptr @rb_default_external_encoding() #28
  br label %io_enc_str.exit

io_enc_str.exit:                                  ; preds = %bb.ce, %bb.cf
  %.0.i.i = phi ptr [ %i.jb, %bb.cf ], [ %.val135, %bb.ce ]
  %i.jc = call i64 @rb_enc_associate(i64 noundef %.10192211, ptr noundef %.0.i.i) #28 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %io_enc_str.exit, %.thread207
  %i.jd = icmp ne i32 %.2106212, 0
  br label %bb.ch

bb.ch:                                            ; preds = %bb.b, %bb.cg
  %.2182 = phi i64 [ %i.d, %bb.b ], [ %.10192211, %bb.cg ] ; 3 uses
  %.3 = phi i1 [ false, %bb.b ], [ %i.jd, %bb.cg ]
  %i.je = icmp eq i64 %.2182, 4
  %or.cond11 = or i1 %i.je, %.3
  br i1 %or.cond11, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jf = getelementptr i8, ptr %3, i64 28        ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !74
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !74
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci, %bb.b, %bb.k, %io_read_encoding.exit
  %.0 = phi i64 [ %i.x, %bb.k ], [ 4, %bb.b ], [ %i.l, %io_read_encoding.exit ], [ %.2182, %bb.ci ], [ %.2182, %bb.ch ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_io_gets_internal(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_io_gets_limit_internal(i64 noundef %0, i64 noundef -1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 1, 512) i64 @rb_io_getbyte(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 9 uses
  %.not.i.i18 = icmp eq ptr %i.k, null
  br i1 %.not.i.i18, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16       ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.k)
  %i.q = getelementptr i8, ptr %i.k, i64 148
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %rb_io_check_byte_readable.exit, label %bb.e

bb.e:                                             ; preds = %rb_io_check_closed.exit
  %i.s = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.7) #30
  unreachable

rb_io_check_byte_readable.exit:                   ; preds = %rb_io_check_closed.exit
  %i.t = getelementptr i8, ptr %i.k, i64 68
  %i.u = getelementptr i8, ptr %i.k, i64 80
  %i.v = load i32, ptr %i.u, align 8, !tbaa !46
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %rb_io_check_initialized.exit.i20, label %rb_io_check_closed.exit21

rb_io_check_initialized.exit.i20:                 ; preds = %rb_io_check_byte_readable.exit
  %i.w = load i32, ptr %i.m, align 8, !tbaa !20
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %rb_io_check_closed.exit21

bb.f:                                             ; preds = %rb_io_check_initialized.exit.i20
  tail call void @rb_thread_check_ints() #28
  %i.y = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @closed_stream) #30
end_hunk_1
begin_hunk_2_@parse_mode_enc:bb.a
  %i.ao = and i32 %.050, 1048576
  %.not.i68 = icmp eq i32 %i.ao, 0
  %i.ap = icmp eq ptr %.019.i, %.018.i
  %or.cond.i = select i1 %.not.i68, i1 %i.ap, i1 false
  br i1 %or.cond.i, label %bb.ag, label %rb_io_ext_int_to_encs.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ae
  %.not25.i = icmp eq ptr %.019.i, %.018.i
  %or.cond26.i = select i1 %.not24.i, i1 true, i1 %.not25.i
  %i.aq = select i1 %or.cond26.i, ptr %.018.i, ptr null
  br label %rb_io_ext_int_to_encs.exit

rb_io_ext_int_to_encs.exit:                       ; preds = %bb.af, %bb.ag
  %storemerge22.i = phi ptr [ %i.aq, %bb.ag ], [ %.019.i, %bb.af ]
  %storemerge.i = phi ptr [ null, %bb.ag ], [ %.018.i, %bb.af ]
  store ptr %storemerge22.i, ptr %2, align 8, !tbaa !128
  store ptr %storemerge.i, ptr %3, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_io_extract_modeenc(ptr noundef captures(none) %0, ptr noundef captures(address_is_null) %1, i64 noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 15 uses
  %i.b = alloca i32, align 4                      ; 15 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.f = load i64, ptr %0, align 8, !tbaa !13     ; 3 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !13
  %i.g = tail call ptr @rb_default_external_encoding() #28 ; 5 uses
  %i.h = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @rb_default_internal_encoding() #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.019.i = phi ptr [ null, %bb.a ], [ %i.j, %bb.b ] ; 4 uses
  %magicptr.i = ptrtoint ptr %.019.i to i64
  switch i64 %magicptr.i, label %bb.d [
    i64 4, label %bb.e
    i64 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq ptr %.019.i, %i.g
  br i1 %i.k, label %bb.e, label %rb_io_ext_int_to_encs.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.c
  %.not25.i = icmp eq ptr %.019.i, %i.g
  %i.l = select i1 %.not25.i, ptr %i.g, ptr null
  br label %rb_io_ext_int_to_encs.exit

rb_io_ext_int_to_encs.exit:                       ; preds = %bb.d, %bb.e
  %storemerge22.i = phi ptr [ %i.l, %bb.e ], [ %.019.i, %bb.d ]
  %storemerge.i = phi ptr [ null, %bb.e ], [ %i.g, %bb.d ]
  store ptr %storemerge22.i, ptr %i.c, align 8, !tbaa !128
  store ptr %storemerge.i, ptr %i.d, align 8, !tbaa !128
  %i.m = icmp eq i64 %2, 4
  %i.n = icmp eq i64 %i.f, 4
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_io_ext_int_to_encs.exit
  store i32 1, ptr %i.b, align 4, !tbaa !7
  br label %bb.s

bb.g:                                             ; preds = %rb_io_ext_int_to_encs.exit
  %i.o = tail call i64 @rb_check_to_integer(i64 noundef %i.f, ptr noundef nonnull @.str.18) #28 ; 5 uses
  %i.p = icmp eq i64 %i.o, 4
  br i1 %i.p, label %switch.lookup, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.o, ptr %i.a, align 8, !tbaa !13
  %i.q = trunc i64 %i.o to i1
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i64 @rb_fix2int(i64 noundef %i.o) #28
  br label %rb_num2int_inline.exit

bb.j:                                             ; preds = %bb.h
  %i.s = tail call i64 @rb_num2int(i64 noundef %i.o) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.r, %bb.i ], [ %i.s, %bb.j ] ; 2 uses
  %i.t = trunc i64 %.0.i to i32                   ; 5 uses
  %i.u = and i64 %.0.i, 3
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.io_initialize, i64 %i.u
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.v = lshr i32 %i.t, 4
  %i.w = and i32 %i.v, 64
  %i.x = shl i32 %i.t, 2
  %i.y = and i32 %i.x, 2048
  %i.z = shl i32 %i.t, 1
  %i.aa = and i32 %i.z, 128
  %i.ab = shl i32 %i.t, 3
  %i.ac = and i32 %i.ab, 1024
  %spec.select.i = or disjoint i32 %i.y, %i.w
  %.2.i = or disjoint i32 %spec.select.i, %i.aa
  %.3.i = or disjoint i32 %.2.i, %i.ac
  %.4.i = or disjoint i32 %.3.i, %switch.load
  store i32 %.4.i, ptr %i.b, align 4, !tbaa !7
  br label %bb.s

switch.lookup:                                    ; preds = %bb.g
  %i.ad = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.ae = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #28 ; 2 uses
  %i.af = call i32 @rb_io_modestr_fmode(ptr noundef %i.ae) ; 8 uses
  store i32 %i.af, ptr %i.b, align 4, !tbaa !7
  %i.ag = and i32 %i.af, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %switch.gep152 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_io_reopen, i64 %i.ah
  %switch.load153 = load i32, ptr %switch.gep152, align 4
  %i.ai = shl i32 %i.af, 4
  %i.aj = and i32 %i.ai, 1024
  %i.ak = lshr i32 %i.af, 2
  %i.al = and i32 %i.ak, 512
  %i.am = lshr i32 %i.af, 1
  %i.an = and i32 %i.am, 64
  %i.ao = lshr i32 %i.af, 3
  %i.ap = and i32 %i.ao, 128
  %spec.select.i73 = or disjoint i32 %i.al, %i.aj
  %.2.i74 = or disjoint i32 %spec.select.i73, %i.an
  %.3.i75 = or disjoint i32 %.2.i74, %i.ap
  %.4.i76 = or disjoint i32 %.3.i75, %switch.load153 ; 2 uses
  %i.aq = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ae, i32 noundef 58) #33 ; 2 uses
  %.not62 = icmp eq ptr %i.aq, null
  br i1 %.not62, label %bb.l, label %bb.k

bb.k:                                             ; preds = %switch.lookup
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %i.as = load i64, ptr %i.a, align 8, !tbaa !13
  %i.at = call ptr @rb_enc_get(i64 noundef %i.as) #28
  call fastcc void @parse_mode_enc(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b)
  br label %bb.s

bb.l:                                             ; preds = %switch.lookup
  %i.au = and i32 %i.af, 4
  %.not63 = icmp ne i32 %i.au, 0                  ; 2 uses
  br i1 %.not63, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.av = call nonnull ptr @rb_ascii8bit_encoding() #28
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = call ptr @rb_default_external_encoding() #28
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.018.i = phi ptr [ %i.aw, %bb.m ], [ %i.av, %.thread ] ; 5 uses
  %i.ax = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.ay = icmp eq ptr %.018.i, %i.ax
  br i1 %i.ay, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = call ptr @rb_default_internal_encoding() #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.019.i77 = phi ptr [ null, %bb.n ], [ %i.az, %bb.o ] ; 4 uses
  %magicptr.i78 = ptrtoint ptr %.019.i77 to i64
  switch i64 %magicptr.i78, label %bb.q [
    i64 4, label %bb.r
    i64 0, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ba = and i32 %i.af, 1048576
  %.not.i = icmp eq i32 %i.ba, 0
  %i.bb = icmp eq ptr %.019.i77, %.018.i
  %or.cond.i = select i1 %.not.i, i1 %i.bb, i1 false
  br i1 %or.cond.i, label %bb.r, label %rb_io_ext_int_to_encs.exit82

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.p
  %.not25.i79 = icmp eq ptr %.019.i77, %.018.i
  %or.cond26.i = select i1 %.not63, i1 true, i1 %.not25.i79
  %i.bc = select i1 %or.cond26.i, ptr %.018.i, ptr null
  br label %rb_io_ext_int_to_encs.exit82

rb_io_ext_int_to_encs.exit82:                     ; preds = %bb.q, %bb.r
  %storemerge22.i80 = phi ptr [ %i.bc, %bb.r ], [ %.019.i77, %bb.q ]
  %storemerge.i81 = phi ptr [ null, %bb.r ], [ %.018.i, %bb.q ]
  store ptr %storemerge22.i80, ptr %i.c, align 8, !tbaa !128
  store ptr %storemerge.i81, ptr %i.d, align 8, !tbaa !128
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %rb_io_ext_int_to_encs.exit82, %rb_num2int_inline.exit, %bb.f
  %.259 = phi i32 [ 0, %bb.f ], [ 0, %rb_num2int_inline.exit ], [ 1, %bb.k ], [ 0, %rb_io_ext_int_to_encs.exit82 ] ; 4 uses
  %.051 = phi i32 [ 0, %bb.f ], [ %i.t, %rb_num2int_inline.exit ], [ %.4.i76, %bb.k ], [ %.4.i76, %rb_io_ext_int_to_encs.exit82 ] ; 3 uses
  br i1 %i.m, label %._crit_edge138, label %bb.y

._crit_edge138:                                   ; preds = %bb.s
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !7   ; 6 uses
  %.pre139 = and i32 %i.bd, 4
  %i.be = lshr i32 %i.bd, 4
  %i.bf = and i32 %i.be, 256
  %i.bg = and i32 %i.bd, 5
  %.not = icmp eq i32 %i.bg, 1
  %i.bh = select i1 %.not, i32 %i.bf, i32 0       ; 2 uses
  store i64 4, ptr %i.e, align 8, !tbaa !13
  %i.bi = icmp eq i32 %.pre139, 0
  %6 = trunc nuw i32 %.259 to i1
  %or.cond = or i1 %i.bi, %6
  br i1 %or.cond, label %thread-pre-split, label %bb.t

bb.t:                                             ; preds = %._crit_edge138
  %i.bj = call nonnull ptr @rb_ascii8bit_encoding() #28 ; 4 uses
  %i.bk = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = call ptr @rb_default_internal_encoding() #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.019.i85 = phi ptr [ null, %bb.t ], [ %i.bm, %bb.u ] ; 3 uses
  %magicptr.i86 = ptrtoint ptr %.019.i85 to i64
  switch i64 %magicptr.i86, label %bb.w [
    i64 4, label %bb.x
    i64 0, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.bn = and i32 %i.bd, 1048576
  %.not.i91 = icmp eq i32 %i.bn, 0
  %i.bo = icmp eq ptr %.019.i85, %i.bj
  %or.cond.i92 = select i1 %.not.i91, i1 %i.bo, i1 false
  br i1 %or.cond.i92, label %bb.x, label %rb_io_ext_int_to_encs.exit93

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.v
  br label %rb_io_ext_int_to_encs.exit93

rb_io_ext_int_to_encs.exit93:                     ; preds = %bb.w, %bb.x
  %storemerge22.i89 = phi ptr [ %i.bj, %bb.x ], [ %.019.i85, %bb.w ] ; 2 uses
  %storemerge.i90 = phi ptr [ null, %bb.x ], [ %i.bj, %bb.w ] ; 2 uses
  store ptr %storemerge22.i89, ptr %i.c, align 8, !tbaa !128
  store ptr %storemerge.i90, ptr %i.d, align 8, !tbaa !128
  br label %bb.bc

bb.y:                                             ; preds = %bb.s
  %i.bp = load i64, ptr @sym_mode, align 8, !tbaa !13
  %i.bq = call i64 @rb_hash_aref(i64 noundef %2, i64 noundef %i.bp) #28 ; 3 uses
  %i.br = icmp eq i64 %i.bq, 4
  br i1 %i.br, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bt = icmp eq i64 %i.bs, 4
  br i1 %i.bt, label %bb.aq, label %._crit_edge134

._crit_edge134:                                   ; preds = %bb.z
  %.pre = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %.pre, ptr noundef nonnull @.str.19) #30
  unreachable

bb.aa:                                            ; preds = %rb_io_ext_int_to_encs.exit82.1, %bb.au, %rb_num2int_inline.exit.1, %bb.y
  %.259.lcssa130 = phi i32 [ %.259, %bb.y ], [ %.259, %rb_io_ext_int_to_encs.exit82.1 ], [ %.259, %rb_num2int_inline.exit.1 ], [ 1, %bb.au ] ; 2 uses
  %.051.lcssa128 = phi i32 [ %.051, %bb.y ], [ %.4.i76.1, %rb_io_ext_int_to_encs.exit82.1 ], [ %i.ds, %rb_num2int_inline.exit.1 ], [ %.4.i76.1, %bb.au ] ; 2 uses
  %i.bu = load i64, ptr @sym_flags, align 8, !tbaa !13
  %i.bv = call i64 @rb_hash_aref(i64 noundef %2, i64 noundef %i.bu) #28 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4
  br i1 %i.bw, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = call i64 @rb_to_int(i64 noundef %i.bv) #28 ; 3 uses
  %i.by = trunc i64 %i.bx to i1
  br i1 %i.by, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bz = call i64 @rb_fix2int(i64 noundef %i.bx) #28
  br label %rb_num2int_inline.exit95

bb.ad:                                            ; preds = %bb.ab
  %i.ca = call i64 @rb_num2int(i64 noundef %i.bx) #28
  br label %rb_num2int_inline.exit95

rb_num2int_inline.exit95:                         ; preds = %bb.ac, %bb.ad
  %.0.i94 = phi i64 [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cb = trunc i64 %.0.i94 to i32
  %i.cc = or i32 %.051.lcssa128, %i.cb            ; 7 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = shl nsw i64 %i.cd, 1
  %i.cf = or disjoint i64 %i.ce, 1
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !13
  %i.cg = and i32 %i.cc, 3
  %i.ch = zext nneg i32 %i.cg to i64
  %switch.gep155 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.io_initialize, i64 %i.ch
  %switch.load156 = load i32, ptr %switch.gep155, align 4
  %i.ci = lshr i32 %i.cc, 4
  %i.cj = and i32 %i.ci, 64
  %i.ck = shl i32 %i.cc, 2
  %i.cl = and i32 %i.ck, 2048
  %i.cm = shl i32 %i.cc, 1
  %i.cn = and i32 %i.cm, 128
  %i.co = shl i32 %i.cc, 3
  %i.cp = and i32 %i.co, 1024
  %spec.select.i97 = or disjoint i32 %i.cl, %i.cj
  %.2.i98 = or disjoint i32 %spec.select.i97, %i.cn
  %.3.i99 = or disjoint i32 %.2.i98, %i.cp
  %.4.i100 = or disjoint i32 %.3.i99, %switch.load156
  store i32 %.4.i100, ptr %i.b, align 4, !tbaa !7
  br label %bb.ae

bb.ae:                                            ; preds = %rb_num2int_inline.exit95, %bb.aa
  %.1 = phi i32 [ %.051.lcssa128, %bb.aa ], [ %i.cc, %rb_num2int_inline.exit95 ]
  call fastcc void @extract_binmode(i64 noundef %2, ptr noundef %i.b)
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !7   ; 4 uses
  %i.cr = and i32 %i.cq, 4
  %i.cs = icmp eq i32 %i.cr, 0
  %7 = trunc nuw i32 %.259.lcssa130 to i1
  %or.cond3 = select i1 %i.cs, i1 true, i1 %7
  br i1 %or.cond3, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = call nonnull ptr @rb_ascii8bit_encoding() #28 ; 4 uses
  %i.cu = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = call ptr @rb_default_internal_encoding() #28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.019.i105 = phi ptr [ null, %bb.af ], [ %i.cw, %bb.ag ] ; 3 uses
  %magicptr.i106 = ptrtoint ptr %.019.i105 to i64
  switch i64 %magicptr.i106, label %bb.ai [
    i64 4, label %bb.aj
    i64 0, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cx = and i32 %i.cq, 1048576
  %.not.i111 = icmp eq i32 %i.cx, 0
  %i.cy = icmp eq ptr %.019.i105, %i.ct
  %or.cond.i112 = select i1 %.not.i111, i1 %i.cy, i1 false
  br i1 %or.cond.i112, label %bb.aj, label %rb_io_ext_int_to_encs.exit113

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ah
  br label %rb_io_ext_int_to_encs.exit113

rb_io_ext_int_to_encs.exit113:                    ; preds = %bb.ai, %bb.aj
  %storemerge22.i109 = phi ptr [ %i.ct, %bb.aj ], [ %.019.i105, %bb.ai ]
  %storemerge.i110 = phi ptr [ null, %bb.aj ], [ %i.ct, %bb.ai ]
  store ptr %storemerge22.i109, ptr %i.c, align 8, !tbaa !128
  store ptr %storemerge.i110, ptr %i.d, align 8, !tbaa !128
  br label %bb.ak

bb.ak:                                            ; preds = %rb_io_ext_int_to_encs.exit113, %bb.ae
  %i.cz = load i64, ptr @sym_perm, align 8, !tbaa !13
  %i.da = call i64 @rb_hash_aref(i64 noundef %2, i64 noundef %i.cz) #28 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4
  %i.dc = icmp eq ptr %1, null
  %or.cond5.not = or i1 %i.dc, %i.db
  br i1 %or.cond5.not, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dd = load i64, ptr %1, align 8, !tbaa !13
  %i.de = icmp eq i64 %i.dd, 4
  br i1 %i.de, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.df = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.df, ptr noundef nonnull @.str.20) #30
  unreachable

bb.an:                                            ; preds = %bb.al
  store i64 %i.da, ptr %1, align 8, !tbaa !13
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %i.dg = call i32 @rb_io_extract_encoding_option(i64 noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b)
  %8 = and i32 %i.dg, %.259.lcssa130
  %or.cond7.not = icmp eq i32 %8, 0
  br i1 %or.cond7.not, label %.thread117, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dh = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dh, ptr noundef nonnull @.str.21) #30
  unreachable

.thread117:                                       ; preds = %bb.ao
  %i.di = lshr i32 %i.cq, 4
  %i.dj = and i32 %i.di, 256
  %i.dk = and i32 %i.cq, 5
  %.not123 = icmp eq i32 %i.dk, 1
  %i.dl = select i1 %.not123, i32 %i.dj, i32 0
  %i.dm = call i32 @rb_econv_prepare_options(i64 noundef %2, ptr noundef nonnull %i.e, i32 noundef %i.dl) #28
  %.pre136.pre = load i32, ptr %i.b, align 4, !tbaa !7
  br label %thread-pre-split

bb.aq:                                            ; preds = %bb.z
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !13
  %i.dn = call i64 @rb_check_to_integer(i64 noundef %i.bq, ptr noundef nonnull @.str.18) #28 ; 5 uses
  %i.do = icmp eq i64 %i.dn, 4
  br i1 %i.do, label %switch.lookup160, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i64 %i.dn, ptr %i.a, align 8, !tbaa !13
  %i.dp = trunc i64 %i.dn to i1
  br i1 %i.dp, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dq = call i64 @rb_num2int(i64 noundef %i.dn) #28
  br label %rb_num2int_inline.exit.1

bb.at:                                            ; preds = %bb.ar
  %i.dr = call i64 @rb_fix2int(i64 noundef %i.dn) #28
  br label %rb_num2int_inline.exit.1

rb_num2int_inline.exit.1:                         ; preds = %bb.at, %bb.as
  %.0.i.1 = phi i64 [ %i.dr, %bb.at ], [ %i.dq, %bb.as ] ; 2 uses
  %i.ds = trunc i64 %.0.i.1 to i32                ; 5 uses
  %i.dt = and i64 %.0.i.1, 3
  %switch.gep158 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.io_initialize, i64 %i.dt
  %switch.load159 = load i32, ptr %switch.gep158, align 4
  %i.du = lshr i32 %i.ds, 4
  %i.dv = and i32 %i.du, 64
  %i.dw = shl i32 %i.ds, 2
  %i.dx = and i32 %i.dw, 2048
  %i.dy = shl i32 %i.ds, 1
  %i.dz = and i32 %i.dy, 128
  %i.ea = shl i32 %i.ds, 3
  %i.eb = and i32 %i.ea, 1024
  %spec.select.i.1 = or disjoint i32 %i.dx, %i.dv
  %.2.i.1 = or disjoint i32 %spec.select.i.1, %i.dz
  %.3.i.1 = or disjoint i32 %.2.i.1, %i.eb
  %.4.i.1 = or disjoint i32 %.3.i.1, %switch.load159
  store i32 %.4.i.1, ptr %i.b, align 4, !tbaa !7
  br label %bb.aa

switch.lookup160:                                 ; preds = %bb.aq
  %i.ec = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.ed = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #28 ; 2 uses
  %i.ee = call i32 @rb_io_modestr_fmode(ptr noundef %i.ed) ; 8 uses
  store i32 %i.ee, ptr %i.b, align 4, !tbaa !7
  %i.ef = and i32 %i.ee, 3
  %i.eg = zext nneg i32 %i.ef to i64
  %switch.gep161 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_io_reopen, i64 %i.eg
  %switch.load162 = load i32, ptr %switch.gep161, align 4
  %i.eh = shl i32 %i.ee, 4
  %i.ei = and i32 %i.eh, 1024
  %i.ej = lshr i32 %i.ee, 2
  %i.ek = and i32 %i.ej, 512
  %i.el = lshr i32 %i.ee, 1
  %i.em = and i32 %i.el, 64
  %i.en = lshr i32 %i.ee, 3
  %i.eo = and i32 %i.en, 128
  %spec.select.i73.1 = or disjoint i32 %i.ek, %i.ei
  %.2.i74.1 = or disjoint i32 %spec.select.i73.1, %i.em
  %.3.i75.1 = or disjoint i32 %.2.i74.1, %i.eo
  %.4.i76.1 = or disjoint i32 %.3.i75.1, %switch.load162 ; 2 uses
  %i.ep = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ed, i32 noundef 58) #33 ; 2 uses
  %.not62.1 = icmp eq ptr %i.ep, null
  br i1 %.not62.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %switch.lookup160
  %i.eq = getelementptr i8, ptr %i.ep, i64 1
  %i.er = load i64, ptr %i.a, align 8, !tbaa !13
  %i.es = call ptr @rb_enc_get(i64 noundef %i.er) #28
  call fastcc void @parse_mode_enc(ptr noundef %i.eq, ptr noundef %i.es, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b)
  br label %bb.aa

bb.av:                                            ; preds = %switch.lookup160
  %i.et = and i32 %i.ee, 4
  %.not63.1 = icmp ne i32 %i.et, 0                ; 2 uses
  br i1 %.not63.1, label %.thread.1, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eu = call ptr @rb_default_external_encoding() #28
  br label %bb.ax

.thread.1:                                        ; preds = %bb.av
  %i.ev = call nonnull ptr @rb_ascii8bit_encoding() #28
  br label %bb.ax

bb.ax:                                            ; preds = %.thread.1, %bb.aw
  %.018.i.1 = phi ptr [ %i.eu, %bb.aw ], [ %i.ev, %.thread.1 ] ; 5 uses
  %i.ew = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.ex = icmp eq ptr %.018.i.1, %i.ew
  br i1 %i.ex, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ey = call ptr @rb_default_internal_encoding() #28
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.019.i77.1 = phi ptr [ null, %bb.ax ], [ %i.ey, %bb.ay ] ; 4 uses
  %magicptr.i78.1 = ptrtoint ptr %.019.i77.1 to i64
  switch i64 %magicptr.i78.1, label %bb.ba [
    i64 4, label %bb.bb
    i64 0, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.ez = and i32 %i.ee, 1048576
  %.not.i.1 = icmp eq i32 %i.ez, 0
  %i.fa = icmp eq ptr %.019.i77.1, %.018.i.1
  %or.cond.i.1 = select i1 %.not.i.1, i1 %i.fa, i1 false
  br i1 %or.cond.i.1, label %bb.bb, label %rb_io_ext_int_to_encs.exit82.1

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.az
  %.not25.i79.1 = icmp eq ptr %.019.i77.1, %.018.i.1
  %or.cond26.i.1 = select i1 %.not63.1, i1 true, i1 %.not25.i79.1
  %i.fb = select i1 %or.cond26.i.1, ptr %.018.i.1, ptr null
  br label %rb_io_ext_int_to_encs.exit82.1

rb_io_ext_int_to_encs.exit82.1:                   ; preds = %bb.bb, %bb.ba
  %storemerge22.i80.1 = phi ptr [ %i.fb, %bb.bb ], [ %.019.i77.1, %bb.ba ]
  %storemerge.i81.1 = phi ptr [ null, %bb.bb ], [ %.018.i.1, %bb.ba ]
  store ptr %storemerge22.i80.1, ptr %i.c, align 8, !tbaa !128
  store ptr %storemerge.i81.1, ptr %i.d, align 8, !tbaa !128
  br label %bb.aa

thread-pre-split:                                 ; preds = %._crit_edge138, %.thread117
  %.pre136 = phi i32 [ %.pre136.pre, %.thread117 ], [ %i.bd, %._crit_edge138 ]
  %.254.ph = phi i32 [ %i.dm, %.thread117 ], [ %i.bh, %._crit_edge138 ]
  %.3.ph = phi i32 [ %.1, %.thread117 ], [ %.051, %._crit_edge138 ]
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !128
  %.pre135 = load ptr, ptr %i.d, align 8, !tbaa !128
  br label %bb.bc

bb.bc:                                            ; preds = %thread-pre-split, %rb_io_ext_int_to_encs.exit93
  %i.fc = phi i32 [ %.pre136, %thread-pre-split ], [ %i.bd, %rb_io_ext_int_to_encs.exit93 ] ; 5 uses
  %i.fd = phi ptr [ %.pre135, %thread-pre-split ], [ %storemerge.i90, %rb_io_ext_int_to_encs.exit93 ] ; 2 uses
  %i.fe = phi ptr [ %.pr, %thread-pre-split ], [ %storemerge22.i89, %rb_io_ext_int_to_encs.exit93 ] ; 3 uses
  %.254 = phi i32 [ %.254.ph, %thread-pre-split ], [ %i.bh, %rb_io_ext_int_to_encs.exit93 ] ; 3 uses
  %.3 = phi i32 [ %.3.ph, %thread-pre-split ], [ %.051, %rb_io_ext_int_to_encs.exit93 ]
  %i.ff = icmp eq ptr %i.fd, null
  %i.fg = and i32 %i.fc, 4
  %.not.i114 = icmp eq i32 %i.fg, 0               ; 2 uses
  %i.fh = and i32 %i.fc, 5
  %i.fi = icmp eq i32 %i.fh, 1
  %or.cond22.i = and i1 %i.ff, %i.fi
  br i1 %or.cond22.i, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %.not17.i = icmp eq ptr %i.fe, null
  br i1 %.not17.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fj = call ptr @rb_default_external_encoding() #28
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fk = phi ptr [ %i.fj, %bb.be ], [ %i.fe, %bb.bd ] ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 20
  %.val.i.i = load i32, ptr %i.fl, align 4, !tbaa !84
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_asciicompat.exit.i, label %rb_enc_asciicompat.exit.thread.i

rb_enc_asciicompat.exit.i:                        ; preds = %bb.bf
  %i.fm = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.fk) #33
  %.not3.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not3.i.i, label %.thread.i, label %rb_enc_asciicompat.exit.thread.i

.thread.i:                                        ; preds = %rb_enc_asciicompat.exit.i
  %i.fn = and i32 %.254, 32512
  %.not1926.i = icmp eq i32 %i.fn, 0
  br label %validate_enc_binmode.exit

rb_enc_asciicompat.exit.thread.i:                 ; preds = %rb_enc_asciicompat.exit.i, %bb.bf
  %i.fo = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fo, ptr noundef nonnull @.str.205) #30
  unreachable

bb.bg:                                            ; preds = %bb.bc
  %i.fp = and i32 %.254, 32512
  %.not19.i = icmp eq i32 %i.fp, 0                ; 2 uses
  %or.cond23.i = or i1 %.not19.i, %.not.i114
  br i1 %or.cond23.i, label %validate_enc_binmode.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fq = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fq, ptr noundef nonnull @.str.206) #30
end_hunk_2
begin_hunk_3_@bufread_call:bb.a
.loopexit.i:                                      ; preds = %.loopexit21, %rb_io_check_closed.exit.i.peel, %rb_io_check_closed.exit.i, %bb.b
  %.1.i = phi i64 [ %i.d, %bb.b ], [ %.0.ph.i, %rb_io_check_closed.exit.i ], [ %.0.ph.i, %rb_io_check_closed.exit.i.peel ], [ %i.ah, %.loopexit21 ]
  %i.aj = sub i64 %i.d, %.1.i
  br label %io_bufread.exit

bb.g:                                             ; preds = %bb.a
  br i1 %.old1.i, label %.preheader.i, label %.loopexit56.i

.preheader.i:                                     ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %i.f, i64 68
  %i.al = getelementptr i8, ptr %i.f, i64 76      ; 3 uses
  %i.am = getelementptr i8, ptr %i.f, i64 16
  br label %bb.h

thread-pre-split.i:                               ; preds = %rb_io_check_closed.exit53.i
  %.pr.i = load i32, ptr %i.g, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %.preheader.i
  %i.an = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.h, %.preheader.i ] ; 2 uses
  %.138.i = phi i64 [ %.239.i, %thread-pre-split.i ], [ 0, %.preheader.i ] ; 3 uses
  %.2.i = phi i64 [ %.3.i, %thread-pre-split.i ], [ %i.d, %.preheader.i ] ; 3 uses
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %rb_io_check_initialized.exit.i52.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr i8, ptr %i.b, i64 %.138.i
  %i.aq = zext nneg i32 %i.an to i64
  %spec.select17.i.i = tail call i64 @llvm.smin.i64(i64 %.2.i, i64 %i.aq) ; 4 uses
  %spec.select.i.i = trunc nuw nsw i64 %spec.select17.i.i to i32 ; 2 uses
  %i.ar = load ptr, ptr %i.ak, align 4, !tbaa !71
  %i.as = load i32, ptr %i.al, align 4, !tbaa !47
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.at
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ap, ptr noundef nonnull align 1 %i.au, i64 noundef %spec.select17.i.i, i1 noundef false) #28
  %i.av = load i32, ptr %i.al, align 4, !tbaa !47
  %i.aw = add i32 %i.av, %spec.select.i.i
  store i32 %i.aw, ptr %i.al, align 4, !tbaa !47
  %i.ax = load i32, ptr %i.g, align 4, !tbaa !46
  %i.ay = sub i32 %i.ax, %spec.select.i.i
  store i32 %i.ay, ptr %i.g, align 4, !tbaa !46
  %i.az = add i64 %spec.select17.i.i, %.138.i
  %i.ba = sub nsw i64 %.2.i, %spec.select17.i.i   ; 3 uses
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %.loopexit56.i, label %rb_io_check_initialized.exit.i52.i

rb_io_check_initialized.exit.i52.i:               ; preds = %bb.i, %bb.h
  %.239.i = phi i64 [ %i.az, %bb.i ], [ %.138.i, %bb.h ]
  %.3.i = phi i64 [ %i.ba, %bb.i ], [ %.2.i, %bb.h ] ; 2 uses
  %i.bc = load i32, ptr %i.am, align 8, !tbaa !20
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.j, label %rb_io_check_closed.exit53.i

bb.j:                                             ; preds = %rb_io_check_initialized.exit.i52.i
  tail call void @rb_thread_check_ints() #28
  %i.be = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.be, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit53.i:                      ; preds = %rb_io_check_initialized.exit.i52.i
  %i.bf = tail call fastcc i32 @io_fillbuf(ptr noundef nonnull %i.f)
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %thread-pre-split.i, label %.loopexit56.i, !llvm.loop !333

.loopexit56.i:                                    ; preds = %rb_io_check_closed.exit53.i, %bb.i, %bb.g
  %.4.i = phi i64 [ %i.d, %bb.g ], [ %i.ba, %bb.i ], [ %.3.i, %rb_io_check_closed.exit53.i ]
  %i.bh = sub i64 %i.d, %.4.i
  br label %io_bufread.exit

io_bufread.exit:                                  ; preds = %bb.d, %bb.f, %.loopexit.i, %.loopexit56.i
  %.040.i = phi i64 [ %i.aj, %.loopexit.i ], [ %i.bh, %.loopexit56.i ], [ -1, %bb.f ], [ -1, %bb.d ]
  store i64 %.040.i, ptr %i.c, align 8, !tbaa !252
  ret i64 36
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

declare ptr @onigenc_get_prev_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_buf_new(i64 noundef) local_unnamed_addr #1

declare ptr @onigenc_get_left_adjust_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_fix2uint(i64 noundef) local_unnamed_addr #1

declare ptr @rb_default_external_encoding() local_unnamed_addr #1

declare i64 @rb_num2uint(i64 noundef) local_unnamed_addr #1

declare ptr @rb_econv_open_opts(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_econv_open_exc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_io_fptr_cleanup(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(ptr noundef nonnull %0, i32 noundef %1) #28
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @fptr_finalize_flush(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1)
  %i.c = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 4, !tbaa !49   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %free_io_buffer.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_xfree(ptr noundef nonnull %i.d) #28
  store ptr null, ptr %i.c, align 4, !tbaa !49
  br label %free_io_buffer.exit.i

free_io_buffer.exit.i:                            ; preds = %bb.d, %bb.c
  %i.e = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %.not.i4.i = icmp eq ptr %i.f, null
  br i1 %.not.i4.i, label %free_io_buffer.exit5.i, label %bb.e

bb.e:                                             ; preds = %free_io_buffer.exit.i
  tail call void @ruby_xfree(ptr noundef nonnull %i.f) #28
  store ptr null, ptr %i.e, align 8, !tbaa !49
  br label %free_io_buffer.exit5.i

free_io_buffer.exit5.i:                           ; preds = %bb.e, %free_io_buffer.exit.i
  %i.g = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %free_io_buffer.exit5.i
  tail call void @rb_econv_close(ptr noundef nonnull %i.h) #28
  store ptr null, ptr %i.g, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %free_io_buffer.exit5.i
  %i.i = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %clear_readconv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ruby_xfree(ptr noundef nonnull %i.j) #28
  store ptr null, ptr %i.i, align 8, !tbaa !49
  br label %clear_readconv.exit.i.i

clear_readconv.exit.i.i:                          ; preds = %bb.h, %bb.g
  %i.k = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i2.i.i, label %fptr_finalize.exit, label %bb.i

bb.i:                                             ; preds = %clear_readconv.exit.i.i
  tail call void @rb_econv_close(ptr noundef nonnull %i.l) #28
  store ptr null, ptr %i.k, align 8, !tbaa !50
  br label %fptr_finalize.exit

fptr_finalize.exit:                               ; preds = %clear_readconv.exit.i.i, %bb.i
  %i.m = getelementptr i8, ptr %0, i64 176
  store i32 0, ptr %i.m, align 8, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %fptr_finalize.exit, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @fptr_finalize_flush(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.finish_writeconv_arg, align 8 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20   ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = getelementptr i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not77 = icmp eq ptr %i.i, null
  br i1 %.not77, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 192
  %i.k = load i64, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = icmp eq i64 %i.k, 4
  %3 = trunc nuw i32 %1 to i1
  %or.cond = or i1 %i.l, %3
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc i64 @finish_writeconv(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i64 [ %i.m, %bb.c ], [ 4, %bb.a ]     ; 5 uses
  %i.n = getelementptr i8, ptr %0, i64 60         ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40   ; 2 uses
  %.not78 = icmp eq i32 %i.o, 0
  br i1 %.not78, label %io_flush_buffer_sync.exit, label %bb.e

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %0, ptr %2, align 8, !tbaa !334
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !336
  %i.q = ptrtoint ptr %2 to i64
  %i.r = call i64 @rb_mutex_synchronize(i64 noundef %i.k, ptr noundef nonnull @finish_writeconv_sync, i64 noundef %i.q) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.s = getelementptr i8, ptr %0, i64 60
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40
  %.not7889 = icmp eq i32 %i.t, 0
  br i1 %.not7889, label %io_flush_buffer_sync.exit, label %.thread91

bb.e:                                             ; preds = %bb.d
  %.not79 = icmp eq i32 %1, 0
  br i1 %.not79, label %.thread91, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %0, i64 48
  %i.v = sext i32 %i.o to i64
  %i.w = load i32, ptr %i.b, align 8, !tbaa !20
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.y = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !65
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %i.x, i64 %i.aa
  %i.ac = tail call i64 @write(i32 noundef %i.w, ptr noundef %i.ab, i64 noundef %i.v) #28 ; 3 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !40  ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %.not.i = icmp slt i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.y, align 8, !tbaa !65
  store i32 0, ptr %i.n, align 4, !tbaa !40
  br label %io_flush_buffer_sync.exit

bb.h:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, -1
  br i1 %i.af, label %bb.i, label %io_flush_buffer_sync.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = trunc nuw nsw i64 %i.ac to i32          ; 2 uses
  %i.ah = load i32, ptr %i.y, align 8, !tbaa !65
  %i.ai = add i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %i.y, align 8, !tbaa !65
  %i.aj = sub i32 %i.ad, %i.ag
  store i32 %i.aj, ptr %i.n, align 4, !tbaa !40
  %i.ak = tail call ptr @rb_errno_ptr() #28
  store i32 11, ptr %i.ak, align 4, !tbaa !7
  br label %io_flush_buffer_sync.exit

.thread91:                                        ; preds = %.thread, %bb.e
  %.09094 = phi i64 [ %.0, %bb.e ], [ %i.r, %.thread ] ; 2 uses
  %i.al = call fastcc i32 @io_fflush(ptr noundef nonnull %0)
  %i.am = icmp slt i32 %i.al, 0
  %i.an = icmp eq i64 %.09094, 4
  %or.cond98 = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond98, label %bb.j, label %io_flush_buffer_sync.exit

bb.j:                                             ; preds = %.thread91
  %i.ao = call ptr @rb_errno_ptr() #28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %io_flush_buffer_sync.exit

io_flush_buffer_sync.exit:                        ; preds = %bb.i, %bb.h, %bb.g, %.thread, %bb.j, %.thread91, %bb.d
  %.1 = phi i64 [ %i.r, %.thread ], [ %i.as, %bb.j ], [ %.0, %bb.i ], [ %.09094, %.thread91 ], [ %.0, %bb.d ], [ %.0, %bb.g ], [ %.0, %bb.h ] ; 4 uses
  %i.at = load i32, ptr %i.f, align 4, !tbaa !39  ; 2 uses
  %i.au = and i32 %i.at, 65536
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = icmp sgt i32 %i.c, 2
  %or.cond3.not = select i1 %i.av, i1 %i.aw, i1 false ; 2 uses
  %not.or.cond3.not = xor i1 %or.cond3.not, true
  %spec.select = zext i1 %not.or.cond3.not to i32
  store i32 -1, ptr %i.b, align 8, !tbaa !20
  store ptr null, ptr %i.d, align 8, !tbaa !151
  %i.ax = and i32 %i.at, -4
  store i32 %i.ax, ptr %i.f, align 4, !tbaa !39
  call void @rb_thread_io_close_wait(ptr noundef nonnull %0) #28
  %i.ay = icmp ne ptr %i.e, null
  %or.cond5 = select i1 %or.cond3.not, i1 %i.ay, i1 false
  br i1 %or.cond5, label %bb.k, label %bb.m

bb.k:                                             ; preds = %io_flush_buffer_sync.exit
  %.not.i83 = icmp eq i32 %1, 0
  br i1 %.not.i83, label %maygvl_fclose.exit, label %maygvl_fclose.exit.thread

maygvl_fclose.exit.thread:                        ; preds = %bb.k
  %i.az = call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  br label %bb.m

maygvl_fclose.exit:                               ; preds = %bb.k
  %i.ba = call ptr @rb_nogvl(ptr noundef nonnull @nogvl_fclose, ptr noundef nonnull %i.e, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #28
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.bb, 2147483648
  %4 = icmp eq i64 %i.bc, 0
  %5 = icmp ne i64 %.1, 4
  %or.cond99 = select i1 %4, i1 true, i1 %5
  br i1 %or.cond99, label %bb.m, label %bb.l

bb.l:                                             ; preds = %maygvl_fclose.exit
  %i.bd = call ptr @rb_errno_ptr() #28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 1
  %i.bh = or disjoint i64 %i.bg, 1
  br label %bb.m

bb.m:                                             ; preds = %maygvl_fclose.exit.thread, %maygvl_fclose.exit, %bb.l, %io_flush_buffer_sync.exit
  %.169 = phi i32 [ %spec.select, %io_flush_buffer_sync.exit ], [ 1, %bb.l ], [ 1, %maygvl_fclose.exit ], [ 1, %maygvl_fclose.exit.thread ] ; 2 uses
  %.3 = phi i64 [ %.1, %io_flush_buffer_sync.exit ], [ %i.bh, %bb.l ], [ %.1, %maygvl_fclose.exit ], [ %.1, %maygvl_fclose.exit.thread ] ; 3 uses
  %i.bi = call i64 @rb_fiber_scheduler_current() #28 ; 2 uses
  %i.bj = icmp eq i32 %.169, 0
  %i.bk = icmp sgt i32 %i.c, -1                   ; 2 uses
  %or.cond7 = select i1 %i.bj, i1 %i.bk, i1 false
  %i.bl = icmp ne i64 %i.bi, 4
  %or.cond9 = select i1 %or.cond7, i1 %i.bl, i1 false
  br i1 %or.cond9, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bm = shl nuw i32 %i.c, 1
  %i.bn = or disjoint i32 %i.bm, 1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = call i64 @rb_fiber_scheduler_io_close(i64 noundef %i.bi, i64 noundef %i.bo) #28 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 36
  br i1 %i.bq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = and i64 %i.bp, -5
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.371 = phi i32 [ %.169, %bb.m ], [ 0, %bb.n ], [ %i.bt, %bb.o ]
  %i.bu = icmp eq i32 %.371, 0
  %or.cond11 = select i1 %i.bu, i1 %i.bk, i1 false
  br i1 %or.cond11, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %.pre = trunc nuw i32 %1 to i1
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bv = lshr i32 %i.g, 1
  %.lobit = and i32 %i.bv, 1
  %i.bw = xor i32 %.lobit, 1
  %i.bx = or i32 %i.bw, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.c, ptr %i.a, align 4, !tbaa !7
  %.not.i85 = icmp eq i32 %i.bx, 0
  br i1 %.not.i85, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = call i32 @close(i32 noundef %i.c) #28
  br label %maygvl_close.exit

bb.s:                                             ; preds = %bb.q
  %i.bz = call ptr @rb_nogvl(ptr noundef nonnull @nogvl_close, ptr noundef nonnull %i.a, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #28
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = trunc i64 %i.ca to i32
  br label %maygvl_close.exit

maygvl_close.exit:                                ; preds = %bb.r, %bb.s
  %.0.i86 = phi i32 [ %i.by, %bb.r ], [ %i.cb, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %6 = icmp sgt i32 %.0.i86, -1
  %7 = icmp ne i64 %.3, 4
  %8 = trunc nuw i32 %1 to i1                     ; 2 uses
  %or.cond18 = or i1 %7, %8
  %or.cond102 = select i1 %6, i1 true, i1 %or.cond18
  br i1 %or.cond102, label %bb.u, label %bb.t

bb.t:                                             ; preds = %maygvl_close.exit
  %i.cc = call ptr @rb_errno_ptr() #28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.ce = sext i32 %i.cd to i64
  %i.cf = shl nsw i64 %i.ce, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %maygvl_close.exit, %bb.t
  %.pre-phi = phi i1 [ %.pre, %._crit_edge ], [ %8, %maygvl_close.exit ], [ false, %bb.t ]
  %.5 = phi i64 [ %.3, %._crit_edge ], [ %.3, %maygvl_close.exit ], [ %i.cg, %bb.t ] ; 7 uses
  %9 = icmp eq i64 %.5, 4
  %or.cond13 = or i1 %9, %.pre-phi
  br i1 %or.cond13, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = trunc i64 %.5 to i1
  br i1 %i.ch, label %rb_integer_type_p.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = icmp eq i64 %.5, 0
  %i.cj = and i64 %.5, 6
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = or i1 %i.ci, %i.ck
  br i1 %i.cl, label %rb_integer_type_p.exit.thread96, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.w
  %i.cm = inttoptr i64 %.5 to ptr
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !16
  %i.co = and i64 %i.cn, 31
  %i.cp = icmp eq i64 %i.co, 10
  br i1 %i.cp, label %rb_integer_type_p.exit.thread, label %rb_integer_type_p.exit.thread96

rb_integer_type_p.exit.thread:                    ; preds = %bb.v, %rb_integer_type_p.exit
  %i.cq = call fastcc i32 @rb_num2int_inline(i64 noundef %.5)
  %i.cr = getelementptr i8, ptr %0, i64 32
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.fptr_finalize_flush, i32 noundef %i.cq, i64 noundef %i.cs) #30
  unreachable

rb_integer_type_p.exit.thread96:                  ; preds = %bb.w, %rb_integer_type_p.exit
  call void @rb_exc_raise(i64 noundef %.5) #30
  unreachable

bb.x:                                             ; preds = %bb.u
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

end_hunk_3
