inline.NumInlined: 86
inline.NumDeleted: 14
begin_hunk_0_@tok_get_normal_mode:bb.a

.preheader2869:                                   ; preds = %.critedge1249, %bb.co
  %i.io = phi ptr [ %i.iz, %bb.co ], [ %.pre39.i1291, %.critedge1249 ]
  %i.ip = phi ptr [ %i.iy, %bb.co ], [ %i.hv, %.critedge1249 ] ; 2 uses
  %.not.i1303 = icmp eq ptr %i.ip, %i.io
  br i1 %.not.i1303, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %.preheader2869
  %i.iq = load i32, ptr %i.i, align 4, !tbaa !28  ; 2 uses
  %i.ir = icmp ugt i32 %i.iq, 2147483646
  br i1 %i.ir, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 29, ptr %i.f, align 8, !tbaa !24
  br label %tok_nextc.exit1308

bb.ck:                                            ; preds = %bb.ci
  %i.is = add nuw nsw i32 %i.iq, 1
  store i32 %i.is, ptr %i.i, align 4, !tbaa !28
  %i.it = getelementptr i8, ptr %i.ip, i64 1
  store ptr %i.it, ptr %i.d, align 8, !tbaa !11
  br label %tok_nextc.exit1308

bb.cl:                                            ; preds = %.preheader2869
  %i.iu = load i32, ptr %i.f, align 8, !tbaa !24
  %.not21.i1305 = icmp eq i32 %i.iu, 10
  br i1 %.not21.i1305, label %bb.cm, label %tok_nextc.exit1308

bb.cm:                                            ; preds = %bb.cl
  %i.iv = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.iw = tail call i32 %i.iv(ptr noundef nonnull %0) #8, !inline_history !53
  %.not22.i1306 = icmp eq i32 %i.iw, 0
  br i1 %.not22.i1306, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ix = load ptr, ptr %i.e, align 8, !tbaa !30
  store ptr %i.ix, ptr %i.d, align 8, !tbaa !11
  br label %tok_nextc.exit1308

bb.co:                                            ; preds = %bb.cm
  %i.iy = load ptr, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  store ptr %i.iy, ptr %i.h, align 8, !tbaa !33
  %i.iz = load ptr, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.iy to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = tail call ptr @memchr(ptr noundef readonly %i.iy, i32 noundef 0, i64 noundef %i.jc) #7
  %.not24.i1307 = icmp eq ptr %i.jd, null
  br i1 %.not24.i1307, label %.preheader2869, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.je = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.jf = load ptr, ptr %i.e, align 8, !tbaa !30
  store ptr %i.jf, ptr %i.d, align 8, !tbaa !11
  br label %tok_nextc.exit1308

tok_nextc.exit1308:                               ; preds = %bb.cl, %bb.cj, %bb.ck, %bb.cn, %bb.cp
  store i32 1, ptr %i.c, align 8, !tbaa !52
  br label %bb.cq

bb.cq:                                            ; preds = %tok_nextc.exit1308, %.critedge1249
  %i.jg = load i32, ptr %i.i, align 4, !tbaa !28
  %i.jh = tail call i32 @_PyLexer_type_comment_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 56, i32 noundef %i.hn, i32 noundef %i.jg, ptr noundef %i.hm, ptr noundef nonnull %i.hv) #8
  br label %.thread1499

.critedge1247:                                    ; preds = %bb.ce, %tok_backup.exit1300, %bb.cg, %bb.ch
  %i.ji = load i32, ptr %i.i, align 4, !tbaa !28
  %i.jj = tail call i32 @_PyLexer_type_comment_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 57, i32 noundef %.11109.7, i32 noundef %i.ji, ptr noundef nonnull %.21097.7, ptr noundef nonnull %i.hv) #8
  br label %.thread1499

.critedge21.thread:                               ; preds = %bb.bs, %bb.bt, %.loopexit1617, %.loopexit1617.1, %bb.bu, %.loopexit1617.2, %bb.bv, %.loopexit1617.3, %bb.bw, %.loopexit1617.4, %bb.bx, %.loopexit1617.5, %bb.by, %.loopexit1617.6, %bb.br
  %.41099 = phi ptr [ %.01095, %bb.br ], [ %i.ge, %bb.bt ], [ %i.ge, %bb.bs ], [ %i.gj, %.loopexit1617 ], [ %i.hg, %.loopexit1617.6 ], [ %.21097.1, %.loopexit1617.1 ], [ %.21097.1, %bb.bu ], [ %i.gq, %.loopexit1617.2 ], [ %i.gq, %bb.bv ], [ %i.gu, %.loopexit1617.3 ], [ %i.gu, %bb.bw ], [ %i.gy, %.loopexit1617.4 ], [ %i.gy, %bb.bx ], [ %i.hc, %.loopexit1617.5 ], [ %i.hc, %bb.by ]
  br i1 %.not1185, label %bb.cx, label %bb.cr

bb.cr:                                            ; preds = %.critedge21.thread
  %.not.i1309 = icmp eq i32 %.01020, -1
  br i1 %.not.i1309, label %tok_backup.exit1311, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jk = getelementptr i8, ptr %.pre.i1290, i64 -1 ; 4 uses
  store ptr %i.jk, ptr %i.d, align 8, !tbaa !11
  %i.jl = load ptr, ptr %0, align 8, !tbaa !35
  %i.jm = icmp ult ptr %i.jk, %i.jl
  br i1 %i.jm, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.jn = load i8, ptr %i.jk, align 1, !tbaa !34
  %i.jo = trunc nuw i32 %.01020 to i8
  %.not6.i1310 = icmp eq i8 %i.jn, %i.jo
  br i1 %.not6.i1310, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.jp = load i32, ptr %i.i, align 4, !tbaa !28
  %i.jq = add i32 %i.jp, -1
  store i32 %i.jq, ptr %i.i, align 4, !tbaa !28
  br label %tok_backup.exit1311

tok_backup.exit1311:                              ; preds = %bb.cr, %bb.cw
  %i.jr = phi ptr [ %.pre.i1290, %bb.cr ], [ %i.jk, %bb.cw ]
  %i.js = getelementptr i8, ptr %0, i64 18472
  store i32 %.21045, ptr %i.js, align 8, !tbaa !64
  %i.jt = tail call i32 @_PyLexer_token_setup(ptr noundef %0, ptr noundef %2, i32 noundef 65, ptr noundef %.41099, ptr noundef %i.jr) #8
  br label %.thread1499

bb.cx:                                            ; preds = %.critedge21.thread, %tok_nextc.exit1289.thread
  %.pre39.i1334 = phi ptr [ %.pre39.i13022337, %tok_nextc.exit1289.thread ], [ %.pre39.i1291, %.critedge21.thread ] ; 3 uses
  %.pre.i1333 = phi ptr [ %i.fd, %tok_nextc.exit1289.thread ], [ %.pre.i1290, %.critedge21.thread ] ; 3 uses
  %.11021 = phi i32 [ %.0.i12851506, %tok_nextc.exit1289.thread ], [ %.01020, %.critedge21.thread ] ; 8 uses
  %i.ju = load i32, ptr %i.f, align 8, !tbaa !24  ; 2 uses
  %i.jv = icmp eq i32 %i.ju, 28
  br i1 %i.jv, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jw = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

bb.cz:                                            ; preds = %bb.cx
  %i.jx = icmp eq i32 %.11021, -1
  br i1 %i.jx, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %i.jy = load i32, ptr %i.m, align 8, !tbaa !56
  %.not1243 = icmp eq i32 %i.jy, 0
  br i1 %.not1243, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jz = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

bb.dc:                                            ; preds = %bb.da
  %i.ka = icmp eq i32 %i.ju, 11
  %i.kb = select i1 %i.ka, i32 0, i32 67
  %i.kc = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.kb, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

bb.dd:                                            ; preds = %bb.cz
  %i.kd = add nsw i32 %.11021, -97
  %or.cond25 = icmp ult i32 %i.kd, 26
  br i1 %or.cond25, label %.preheader3334, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ke = add nsw i32 %.11021, -65
  %or.cond27 = icmp ult i32 %i.ke, 26
  %i.kf = icmp eq i32 %.11021, 95
  %or.cond29 = or i1 %i.kf, %or.cond27
  %i.kg = icmp sgt i32 %.11021, 127
  %or.cond31 = or i1 %i.kg, %or.cond29
  br i1 %or.cond31, label %.preheader3334, label %bb.fz

.preheader3334:                                   ; preds = %bb.de, %bb.dd
  br label %bb.df

bb.df:                                            ; preds = %.preheader3334, %tok_nextc.exit1319
  %.pre39.i1313 = phi ptr [ %.pre39.i13132370, %tok_nextc.exit1319 ], [ %.pre39.i1334, %.preheader3334 ] ; 2 uses
  %.pre.i1312 = phi ptr [ %i.la, %tok_nextc.exit1319 ], [ %.pre.i1333, %.preheader3334 ] ; 2 uses
  %.01122 = phi i32 [ %.11123, %tok_nextc.exit1319 ], [ 0, %.preheader3334 ] ; 5 uses
  %.01120 = phi i32 [ %.11121, %tok_nextc.exit1319 ], [ 0, %.preheader3334 ] ; 5 uses
  %.01118 = phi i32 [ %.11119, %tok_nextc.exit1319 ], [ 0, %.preheader3334 ] ; 5 uses
  %.01114 = phi i32 [ %.11115, %tok_nextc.exit1319 ], [ 0, %.preheader3334 ] ; 5 uses
  %.01112 = phi i32 [ %.11113, %tok_nextc.exit1319 ], [ 0, %.preheader3334 ] ; 5 uses
  %.21022 = phi i32 [ %.0.i1315, %tok_nextc.exit1319 ], [ %.11021, %.preheader3334 ] ; 2 uses
  %.not1220 = icmp eq i32 %.01112, 0
  %i.kh = and i32 %.21022, -33                    ; 5 uses
  %or.cond33 = icmp eq i32 %i.kh, 66
  %or.cond = and i1 %.not1220, %or.cond33
  br i1 %or.cond, label %bb.dk, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.not1221 = icmp eq i32 %.01118, 0
  %or.cond35 = icmp eq i32 %i.kh, 85
  %or.cond1250 = and i1 %.not1221, %or.cond35
  br i1 %or.cond1250, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %.not1222 = icmp eq i32 %.01114, 0
  %or.cond37 = icmp eq i32 %i.kh, 82
  %or.cond1251 = and i1 %.not1222, %or.cond37
  br i1 %or.cond1251, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.not1223 = icmp eq i32 %.01120, 0
  %or.cond39 = icmp eq i32 %i.kh, 70
  %or.cond1252 = and i1 %.not1223, %or.cond39
  br i1 %or.cond1252, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %.not1224 = icmp eq i32 %.01122, 0
  %or.cond41 = icmp eq i32 %i.kh, 84
  %or.cond1253 = and i1 %.not1224, %or.cond41
  br i1 %or.cond1253, label %bb.dk, label %.preheader

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df
  %.11123 = phi i32 [ %.01122, %bb.di ], [ %.01122, %bb.dh ], [ %.01122, %bb.dg ], [ %.01122, %bb.df ], [ 1, %bb.dj ] ; 5 uses
  %.11121 = phi i32 [ 1, %bb.di ], [ %.01120, %bb.dh ], [ %.01120, %bb.dg ], [ %.01120, %bb.df ], [ %.01120, %bb.dj ] ; 5 uses
  %.11119 = phi i32 [ %.01118, %bb.di ], [ %.01118, %bb.dh ], [ 1, %bb.dg ], [ %.01118, %bb.df ], [ %.01118, %bb.dj ] ; 5 uses
  %.11115 = phi i32 [ %.01114, %bb.di ], [ 1, %bb.dh ], [ %.01114, %bb.dg ], [ %.01114, %bb.df ], [ %.01114, %bb.dj ] ; 2 uses
  %.11113 = phi i32 [ %.01112, %bb.di ], [ %.01112, %bb.dh ], [ %.01112, %bb.dg ], [ 1, %bb.df ], [ %.01112, %bb.dj ] ; 4 uses
  br label %bb.dl

bb.dl:                                            ; preds = %bb.ds, %bb.dk
  %.pre39.i13132368 = phi ptr [ %i.kt, %bb.ds ], [ %.pre39.i1313, %bb.dk ] ; 4 uses
  %.pre.i13122365 = phi ptr [ %i.ks, %bb.ds ], [ %.pre.i1312, %bb.dk ] ; 5 uses
  %.not.i1314 = icmp eq ptr %.pre.i13122365, %.pre39.i13132368
  br i1 %.not.i1314, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ki = load i32, ptr %i.i, align 4, !tbaa !28  ; 2 uses
  %i.kj = icmp ugt i32 %i.ki, 2147483646
  br i1 %i.kj, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 29, ptr %i.f, align 8, !tbaa !24
  br label %tok_nextc.exit1319

bb.do:                                            ; preds = %bb.dm
  %i.kk = add nuw nsw i32 %i.ki, 1
  store i32 %i.kk, ptr %i.i, align 4, !tbaa !28
  %i.kl = getelementptr i8, ptr %.pre.i13122365, i64 1 ; 2 uses
  store ptr %i.kl, ptr %i.d, align 8, !tbaa !11
  %i.km = load i8, ptr %.pre.i13122365, align 1, !tbaa !34
  %i.kn = zext i8 %i.km to i32
  br label %tok_nextc.exit1319

bb.dp:                                            ; preds = %bb.dl
  %i.ko = load i32, ptr %i.f, align 8, !tbaa !24
  %.not21.i1316 = icmp eq i32 %i.ko, 10
  br i1 %.not21.i1316, label %bb.dq, label %tok_nextc.exit1319

bb.dq:                                            ; preds = %bb.dp
  %i.kp = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.kq = tail call i32 %i.kp(ptr noundef nonnull %0) #8, !inline_history !53
  %.not22.i1317 = icmp eq i32 %i.kq, 0
  br i1 %.not22.i1317, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.kr = load ptr, ptr %i.e, align 8, !tbaa !30  ; 3 uses
  store ptr %i.kr, ptr %i.d, align 8, !tbaa !11
  br label %tok_nextc.exit1319

bb.ds:                                            ; preds = %bb.dq
  %i.ks = load ptr, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  store ptr %i.ks, ptr %i.h, align 8, !tbaa !33
  %i.kt = load ptr, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.ks to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = tail call ptr @memchr(ptr noundef readonly %i.ks, i32 noundef 0, i64 noundef %i.kw) #7
  %.not24.i1318 = icmp eq ptr %i.kx, null
  br i1 %.not24.i1318, label %bb.dl, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ky = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.kz = load ptr, ptr %i.e, align 8, !tbaa !30  ; 3 uses
  store ptr %i.kz, ptr %i.d, align 8, !tbaa !11
  br label %tok_nextc.exit1319

tok_nextc.exit1319:                               ; preds = %bb.dp, %bb.dn, %bb.do, %bb.dr, %bb.dt
  %.pre39.i13132370 = phi ptr [ %.pre39.i13132368, %bb.dn ], [ %.pre39.i13132368, %bb.do ], [ %i.kr, %bb.dr ], [ %i.kz, %bb.dt ], [ %.pre39.i13132368, %bb.dp ] ; 3 uses
  %i.la = phi ptr [ %.pre.i13122365, %bb.dn ], [ %i.kl, %bb.do ], [ %i.kr, %bb.dr ], [ %i.kz, %bb.dt ], [ %.pre.i13122365, %bb.dp ] ; 4 uses
  %.0.i1315 = phi i32 [ -1, %bb.dn ], [ %i.kn, %bb.do ], [ -1, %bb.dr ], [ -1, %bb.dt ], [ -1, %bb.dp ] ; 4 uses
  switch i32 %.0.i1315, label %bb.df [
    i32 39, label %bb.du
    i32 34, label %bb.du
  ]

bb.du:                                            ; preds = %tok_nextc.exit1319, %tok_nextc.exit1319
  %3 = and i32 %.11113, %.11119
  %or.cond.not.i = icmp eq i32 %3, 0
  br i1 %or.cond.not.i, label %bb.dv, label %bb.eb

bb.dv:                                            ; preds = %bb.du
  %4 = and i32 %.11115, %.11119
  %or.cond3.not.i = icmp eq i32 %4, 0
  br i1 %or.cond3.not.i, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %5 = and i32 %.11119, %.11121
  %or.cond5.not.i = icmp eq i32 %5, 0
  br i1 %or.cond5.not.i, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  %6 = and i32 %.11119, %.11123
  %or.cond7.not.i = icmp eq i32 %6, 0
  br i1 %or.cond7.not.i, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %7 = and i32 %.11113, %.11121
  %or.cond9.not.i = icmp eq i32 %7, 0
  br i1 %or.cond9.not.i, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %8 = and i32 %.11113, %.11123
  %or.cond11.not.i = icmp eq i32 %8, 0
  br i1 %or.cond11.not.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %9 = and i32 %.11121, %.11123
  %or.cond13.not.i = icmp eq i32 %9, 0
  br i1 %or.cond13.not.i, label %maybe_raise_syntax_error_for_string_prefixes.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz, %bb.ea
  %.str.35.sink.i = phi ptr [ @.str.34, %bb.dz ], [ @.str.33, %bb.dy ], [ @.str.32, %bb.dx ], [ @.str.31, %bb.dw ], [ @.str.30, %bb.dv ], [ @.str.29, %bb.du ], [ @.str.35, %bb.ea ]
  %i.lb = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.lc = getelementptr i8, ptr %i.lb, i64 1
  %i.ld = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = ptrtoint ptr %i.ld to i64               ; 2 uses
  %i.lg = sub i64 %i.le, %i.lf
  %i.lh = trunc i64 %i.lg to i32
  %i.li = ptrtoint ptr %i.la to i64
  %i.lj = sub i64 %i.li, %i.lf
  %i.lk = trunc i64 %i.lj to i32
  %i.ll = tail call i32 (ptr, i32, i32, ptr, ...) @_PyTokenizer_syntaxerror_known_range(ptr noundef nonnull %0, i32 noundef %i.lh, i32 noundef %i.lk, ptr noundef nonnull %.str.35.sink.i) #8 ; 0 uses
  %i.lm = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

maybe_raise_syntax_error_for_string_prefixes.exit: ; preds = %bb.ea
  %10 = trunc nuw i32 %.11121 to i1
  %11 = trunc nuw i32 %.11123 to i1
  %or.cond45 = select i1 %10, i1 true, i1 %11
  br i1 %or.cond45, label %.thread1523, label %bb.mz

.preheader:                                       ; preds = %bb.dj, %.preheader.backedge
  %.pre39.i1322 = phi ptr [ %.pre39.i1322.be, %.preheader.backedge ], [ %.pre39.i1313, %bb.dj ]
  %.pre.i1321 = phi ptr [ %.pre.i1321.be, %.preheader.backedge ], [ %.pre.i1312, %bb.dj ] ; 3 uses
  %.01046 = phi i32 [ %spec.select1255, %.preheader.backedge ], [ 0, %bb.dj ] ; 2 uses
  %.31023 = phi i32 [ %.31023.be, %.preheader.backedge ], [ %.21022, %bb.dj ] ; 7 uses
  %i.ln = and i32 %.31023, -33
  %i.lo = add i32 %i.ln, -65
  %or.cond1254 = icmp ult i32 %i.lo, 26
  br i1 %or.cond1254, label %.critedge55, label %bb.ec

bb.ec:                                            ; preds = %.preheader
  %i.lp = add nsw i32 %.31023, -48
  %or.cond51 = icmp ult i32 %i.lp, 10
  %i.lq = icmp eq i32 %.31023, 95
  %or.cond53 = or i1 %i.lq, %or.cond51
  %i.lr = icmp sgt i32 %.31023, 127
  %or.cond103 = or i1 %i.lr, %or.cond53
  br i1 %or.cond103, label %.critedge55, label %bb.em

.critedge55:                                      ; preds = %bb.ec, %.preheader
  %i.ls = icmp samesign ugt i32 %.31023, 127
  %spec.select1255 = select i1 %i.ls, i32 1, i32 %.01046
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ek, %.critedge55
  %.pre39.i13222361 = phi ptr [ %i.me, %bb.ek ], [ %.pre39.i1322, %.critedge55 ] ; 4 uses
  %.pre.i13212358 = phi ptr [ %i.md, %bb.ek ], [ %.pre.i1321, %.critedge55 ] ; 5 uses
  %.not.i1323 = icmp eq ptr %.pre.i13212358, %.pre39.i13222361
  br i1 %.not.i1323, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.lt = load i32, ptr %i.i, align 4, !tbaa !28  ; 2 uses
  %i.lu = icmp ugt i32 %i.lt, 2147483646
  br i1 %i.lu, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 29, ptr %i.f, align 8, !tbaa !24
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.eh, %bb.ef, %bb.eg, %bb.ej, %bb.el
  %.pre39.i1322.be = phi ptr [ %i.mk, %bb.el ], [ %.pre39.i13222361, %bb.ef ], [ %.pre39.i13222361, %bb.eg ], [ %i.mc, %bb.ej ], [ %.pre39.i13222361, %bb.eh ]
  %.pre.i1321.be = phi ptr [ %i.mk, %bb.el ], [ %.pre.i13212358, %bb.ef ], [ %i.lw, %bb.eg ], [ %i.mc, %bb.ej ], [ %.pre.i13212358, %bb.eh ]
  %.31023.be = phi i32 [ -1, %bb.el ], [ -1, %bb.ef ], [ %i.ly, %bb.eg ], [ -1, %bb.ej ], [ -1, %bb.eh ]
  br label %.preheader, !llvm.loop !65

bb.eg:                                            ; preds = %bb.ee
  %i.lv = add nuw nsw i32 %i.lt, 1
  store i32 %i.lv, ptr %i.i, align 4, !tbaa !28
  %i.lw = getelementptr i8, ptr %.pre.i13212358, i64 1 ; 2 uses
  store ptr %i.lw, ptr %i.d, align 8, !tbaa !11
  %i.lx = load i8, ptr %.pre.i13212358, align 1, !tbaa !34
  %i.ly = zext i8 %i.lx to i32
  br label %.preheader.backedge

bb.eh:                                            ; preds = %bb.ed
  %i.lz = load i32, ptr %i.f, align 8, !tbaa !24
  %.not21.i1325 = icmp eq i32 %i.lz, 10
  br i1 %.not21.i1325, label %bb.ei, label %.preheader.backedge, !llvm.loop !65

bb.ei:                                            ; preds = %bb.eh
  %i.ma = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.mb = tail call i32 %i.ma(ptr noundef nonnull %0) #8, !inline_history !53
  %.not22.i1326 = icmp eq i32 %i.mb, 0
  br i1 %.not22.i1326, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.mc = load ptr, ptr %i.e, align 8, !tbaa !30  ; 3 uses
  store ptr %i.mc, ptr %i.d, align 8, !tbaa !11
  br label %.preheader.backedge

bb.ek:                                            ; preds = %bb.ei
  %i.md = load ptr, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  store ptr %i.md, ptr %i.h, align 8, !tbaa !33
  %i.me = load ptr, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.md to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = tail call ptr @memchr(ptr noundef readonly %i.md, i32 noundef 0, i64 noundef %i.mh) #7
  %.not24.i1327 = icmp eq ptr %i.mi, null
  br i1 %.not24.i1327, label %bb.ed, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.mj = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.mk = load ptr, ptr %i.e, align 8, !tbaa !30  ; 3 uses
  store ptr %i.mk, ptr %i.d, align 8, !tbaa !11
  br label %.preheader.backedge

bb.em:                                            ; preds = %bb.ec
  %.not.i1329 = icmp eq i32 %.31023, -1
  br i1 %.not.i1329, label %tok_backup.exit1331, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ml = getelementptr i8, ptr %.pre.i1321, i64 -1 ; 4 uses
  store ptr %i.ml, ptr %i.d, align 8, !tbaa !11
  %i.mm = load ptr, ptr %0, align 8, !tbaa !35
  %i.mn = icmp ult ptr %i.ml, %i.mm
  br i1 %i.mn, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.ep:                                            ; preds = %bb.en
  %i.mo = load i8, ptr %i.ml, align 1, !tbaa !34
  %i.mp = trunc nuw nsw i32 %.31023 to i8
  %.not6.i1330 = icmp eq i8 %i.mo, %i.mp
  br i1 %.not6.i1330, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

bb.er:                                            ; preds = %bb.ep
  %i.mq = load i32, ptr %i.i, align 4, !tbaa !28
  %i.mr = add i32 %i.mq, -1
  store i32 %i.mr, ptr %i.i, align 4, !tbaa !28
  br label %tok_backup.exit1331

tok_backup.exit1331:                              ; preds = %bb.em, %bb.er
  %i.ms = phi ptr [ %.pre.i1321, %bb.em ], [ %i.ml, %bb.er ]
  %.not1225 = icmp eq i32 %.01046, 0
  br i1 %.not1225, label %verify_identifier.exit, label %bb.es

bb.es:                                            ; preds = %tok_backup.exit1331
  %i.mt = load i32, ptr %i.r, align 4, !tbaa !60
  %.not.i1332 = icmp eq i32 %i.mt, 0
  br i1 %.not.i1332, label %bb.et, label %verify_identifier.exit

bb.et:                                            ; preds = %bb.es
  %i.mu = getelementptr i8, ptr %0, i64 2756
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !44
  %.not45.i = icmp eq i32 %i.mv, 0
  br i1 %.not45.i, label %bb.eu, label %bb.fy

bb.eu:                                            ; preds = %bb.et
  %i.mw = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.mx = ptrtoint ptr %i.ms to i64
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef %i.mw, i64 noundef %i.mz, ptr noundef null) #8 ; 18 uses
  %i.nb = icmp eq ptr %i.na, null
  br i1 %i.nb, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.nc = load ptr, ptr @PyExc_UnicodeDecodeError, align 8, !tbaa !66
  %i.nd = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.nc) #8
  %.not48.i = icmp eq i32 %i.nd, 0
  br i1 %.not48.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  store i32 22, ptr %i.f, align 8, !tbaa !24
  br label %bb.fy

bb.ex:                                            ; preds = %bb.ev
  store i32 17, ptr %i.f, align 8, !tbaa !24
  br label %bb.fy

bb.ey:                                            ; preds = %bb.eu
  %i.ne = tail call i64 @_PyUnicode_ScanIdentifier(ptr noundef nonnull %i.na) #8 ; 5 uses
  %i.nf = getelementptr i8, ptr %i.na, i64 16
  %.val58.i = load i64, ptr %i.nf, align 8, !tbaa !67 ; 2 uses
  %i.ng = icmp slt i64 %i.ne, %.val58.i
  br i1 %i.ng, label %bb.ez, label %bb.fv

bb.ez:                                            ; preds = %bb.ey
  %i.nh = getelementptr i8, ptr %i.na, i64 32
  %i.ni = load i32, ptr %i.nh, align 8            ; 5 uses
  %i.nj = lshr i32 %i.ni, 2
  %i.nk = and i32 %i.nj, 7
  %i.nl = and i32 %i.ni, 32
  %.not.i19.i.i = icmp eq i32 %i.nl, 0            ; 3 uses
  switch i32 %i.nk, label %bb.fg [
    i32 1, label %bb.fa
    i32 2, label %bb.fd
  ]

bb.fa:                                            ; preds = %bb.ez
  br i1 %.not.i19.i.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.nm = and i32 %i.ni, 64
  %.not.i.i.i.i = icmp eq i32 %i.nm, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.na, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.fc:                                            ; preds = %bb.fa
  %i.nn = getelementptr i8, ptr %i.na, i64 56
  %.val4.i.i.i = load ptr, ptr %i.nn, align 8, !tbaa !34
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.fc, %bb.fb
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.fb ], [ %.val4.i.i.i, %bb.fc ]
  %i.no = getelementptr i8, ptr %.0.i.i.i, i64 %i.ne
  %i.np = load i8, ptr %i.no, align 1, !tbaa !34
  %i.nq = zext i8 %i.np to i32
  br label %PyUnicode_READ_CHAR.exit.i

bb.fd:                                            ; preds = %bb.ez
end_hunk_0
