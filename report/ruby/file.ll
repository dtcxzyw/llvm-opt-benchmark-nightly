inline.NumInlined: 520
inline.NumDeleted: 102
begin_hunk_0_@rb_file_expand_path_internal:bb.a
  %.not307 = icmp eq i64 %.0271, 0
  %i.aw = load i64, ptr @rb_eArgError, align 8, !tbaa !14 ; 2 uses
  br i1 %.not307, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = trunc i64 %.0271 to i32
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !14
  call void (ptr, i64, ptr, ...) @rb_enc_raise(ptr noundef %i.i, i64 noundef %i.aw, ptr noundef nonnull @.str.6, i32 noundef %i.ax, ptr noundef %.0247, i64 noundef %i.ay) #24
  unreachable

bb.m:                                             ; preds = %bb.k
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aw, ptr noundef nonnull @.str.7) #24
  unreachable

RSTRING_PTR.exit326:                              ; preds = %RSTRING_PTR.exit324.thread, %RSTRING_PTR.exit324
  %i.az = phi ptr [ %i.m, %RSTRING_PTR.exit324 ], [ %i.au, %RSTRING_PTR.exit324.thread ] ; 2 uses
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !90  ; 2 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 %i.ba
  br label %chompdirsep.exit

bb.n:                                             ; preds = %RSTRING_PTR.exit
  %.not = icmp eq i8 %i.r, 47
  br i1 %.not, label %.preheader389, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i64 %1, 4
  br i1 %i.bc, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call i64 @rb_file_expand_path_internal(i64 noundef %1, i64 noundef 4, i32 noundef %2, i32 noundef %3, i64 noundef %4) ; 0 uses
  %i.be = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.bf = call ptr @rb_enc_check(i64 noundef %4, i64 noundef %i.be) #22 ; 2 uses
  %i.bg = call i32 @rb_enc_to_index(ptr noundef %i.bf) #23
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %bb.q, label %fs_enc_check.exit

bb.q:                                             ; preds = %bb.p
  %i.bi = call i32 @rb_enc_get_index(i64 noundef %4) #22 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = call i32 @rb_enc_get_index(i64 noundef %i.be) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i328 = phi i32 [ %i.bk, %bb.r ], [ %i.bi, %bb.q ]
  %i.bl = call ptr @rb_enc_from_index(i32 noundef %.0.i328) #22
  br label %fs_enc_check.exit

fs_enc_check.exit:                                ; preds = %bb.p, %bb.s
  %.08.i = phi ptr [ %i.bl, %bb.s ], [ %i.bf, %bb.p ]
  %i.bm = call i64 @rb_enc_associate(i64 noundef %4, ptr noundef %.08.i) #22 ; 0 uses
  %i.bn = load i64, ptr %i.j, align 8, !tbaa !11
  %i.bo = and i64 %i.bn, 8192
  %.not.i329 = icmp eq i64 %i.bo, 0
  br i1 %.not.i329, label %RSTRING_PTR.exit330, label %bb.t

bb.t:                                             ; preds = %fs_enc_check.exit
  %i.bp = load ptr, ptr %i.m, align 8, !tbaa !36
  br label %RSTRING_PTR.exit330

RSTRING_PTR.exit330:                              ; preds = %fs_enc_check.exit, %bb.t
  %i.bq = phi ptr [ %i.bp, %bb.t ], [ %i.m, %fs_enc_check.exit ] ; 2 uses
  %i.br = load i64, ptr %i.p, align 8, !tbaa !90  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bq, i64 %i.br
  br label %bb.ak

bb.u:                                             ; preds = %bb.o
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  %i.bu = call noalias nonnull ptr @ruby_getcwd() #22 ; 6 uses
  %i.bv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bu) #23 ; 3 uses
  %i.bw = call i64 @rb_str_capacity(i64 noundef %4) #23
  %.not.i331 = icmp eq ptr %i.i, %i.b
  br i1 %.not.i331, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = call i64 @rb_enc_str_new(ptr noundef nonnull %i.bu, i64 noundef %i.bv, ptr noundef %i.b) #22 ; 6 uses
  %i.by = call ptr @rb_enc_compatible(i64 noundef %i.bt, i64 noundef %i.bx) #22
  %.not47.i = icmp eq ptr %i.by, null
  br i1 %.not47.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @ruby_xfree(ptr noundef nonnull %i.bu) #22
  %i.bz = call ptr @rb_enc_check(i64 noundef %i.bt, i64 noundef %i.bx) #22 ; 0 uses
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.123) #26
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ca = call ptr @rb_enc_check(i64 noundef %i.bt, i64 noundef %i.bx) #22 ; 2 uses
  %i.cb = call i32 @rb_enc_to_index(ptr noundef %i.ca) #23
  %i.cc = icmp eq i32 %i.cb, 2
  br i1 %i.cc, label %bb.y, label %fs_enc_check.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cd = call i32 @rb_enc_get_index(i64 noundef %i.bt) #22 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 2
  br i1 %i.ce, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cf = call i32 @rb_enc_get_index(i64 noundef %i.bx) #22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i.i = phi i32 [ %i.cf, %bb.z ], [ %i.cd, %bb.y ]
  %i.cg = call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #22
  br label %fs_enc_check.exit.i

fs_enc_check.exit.i:                              ; preds = %bb.aa, %bb.x
  %.08.i.i = phi ptr [ %i.cg, %bb.aa ], [ %i.ca, %bb.x ] ; 4 uses
  %.not48.i = icmp eq ptr %.08.i.i, %i.b
  br i1 %.not48.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %fs_enc_check.exit.i
  %i.ch = call i64 @rb_str_conv_enc(i64 noundef %i.bx, ptr noundef %i.b, ptr noundef %.08.i.i) #22 ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !11
  %i.ck = and i64 %i.cj, 8192
  %.not.i.i = icmp eq i64 %i.ck, 0
  %i.cl = getelementptr i8, ptr %i.ci, i64 24     ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !36
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.ac, %bb.ab
  %i.cn = phi ptr [ %i.cm, %bb.ac ], [ %i.cl, %bb.ab ]
  %i.co = getelementptr i8, ptr %i.ci, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !90
  br label %bb.ad

bb.ad:                                            ; preds = %fs_enc_check.exit.i, %RSTRING_PTR.exit.i, %bb.u
  %.2376 = phi ptr [ %i.i, %bb.u ], [ %.08.i.i, %RSTRING_PTR.exit.i ], [ %.08.i.i, %fs_enc_check.exit.i ] ; 2 uses
  %.143.i = phi i64 [ 4, %bb.u ], [ %i.ch, %RSTRING_PTR.exit.i ], [ %i.bx, %fs_enc_check.exit.i ] ; 2 uses
  %.141.i = phi i64 [ %i.bv, %bb.u ], [ %i.cp, %RSTRING_PTR.exit.i ], [ %i.bv, %fs_enc_check.exit.i ] ; 4 uses
  %.1.i = phi ptr [ %i.bu, %bb.u ], [ %i.cn, %RSTRING_PTR.exit.i ], [ %i.bu, %fs_enc_check.exit.i ]
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %.039.i = phi i64 [ %i.bw, %bb.ad ], [ %i.cq, %bb.ae ]
  %i.cq = shl i64 %.039.i, 1                      ; 3 uses
  %i.cr = icmp ugt i64 %.141.i, %i.cq
  br i1 %i.cr, label %bb.ae, label %bb.af, !llvm.loop !93

bb.af:                                            ; preds = %bb.ae
  %i.cs = call i64 @rb_str_resize(i64 noundef %4, i64 noundef %i.cq) #22 ; 0 uses
  %i.ct = load i64, ptr %i.j, align 8, !tbaa !11
  %i.cu = and i64 %i.ct, 8192
  %.not.i49.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i49.i, label %RSTRING_PTR.exit50.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = load ptr, ptr %i.m, align 8, !tbaa !36
  br label %RSTRING_PTR.exit50.i

RSTRING_PTR.exit50.i:                             ; preds = %bb.ag, %bb.af
  %i.cw = phi ptr [ %i.cv, %bb.ag ], [ %i.m, %bb.af ] ; 2 uses
  %.not.i51.i = icmp eq i64 %.141.i, 0
  br i1 %.not.i51.i, label %ruby_nonempty_memcpy.exit.i, label %bb.ah

bb.ah:                                            ; preds = %RSTRING_PTR.exit50.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cw, ptr noundef nonnull readonly align 1 %.1.i, i64 noundef range(i64 1, 0) %.141.i, i1 noundef false) #22
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.ah, %RSTRING_PTR.exit50.i
  call void @ruby_xfree(ptr noundef nonnull %i.bu) #22
  %i.cx = icmp eq i64 %.143.i, 4
  br i1 %i.cx, label %append_fspath.exit, label %bb.ai

bb.ai:                                            ; preds = %ruby_nonempty_memcpy.exit.i
  %i.cy = call i64 @rb_str_resize(i64 noundef %.143.i, i64 noundef 0) #22 ; 0 uses
  br label %append_fspath.exit

append_fspath.exit:                               ; preds = %ruby_nonempty_memcpy.exit.i, %bb.ai
  %i.cz = call i64 @rb_enc_associate(i64 noundef %4, ptr noundef %.2376) #22 ; 0 uses
  %i.da = getelementptr i8, ptr %i.cw, i64 %.141.i
  %i.db = load i64, ptr %i.j, align 8, !tbaa !11
  %i.dc = and i64 %i.db, 8192
  %.not.i333 = icmp eq i64 %i.dc, 0
  br i1 %.not.i333, label %RSTRING_PTR.exit334, label %bb.aj

bb.aj:                                            ; preds = %append_fspath.exit
  %i.dd = load ptr, ptr %i.m, align 8, !tbaa !36
  br label %RSTRING_PTR.exit334

RSTRING_PTR.exit334:                              ; preds = %append_fspath.exit, %bb.aj
  %i.de = phi ptr [ %i.dd, %bb.aj ], [ %i.m, %append_fspath.exit ]
  %i.df = load i64, ptr %i.p, align 8, !tbaa !90
  br label %bb.ak

bb.ak:                                            ; preds = %RSTRING_PTR.exit334, %RSTRING_PTR.exit330
  %.0 = phi ptr [ %.2376, %RSTRING_PTR.exit334 ], [ %i.i, %RSTRING_PTR.exit330 ] ; 5 uses
  %.1273 = phi i64 [ %i.df, %RSTRING_PTR.exit334 ], [ %i.br, %RSTRING_PTR.exit330 ] ; 4 uses
  %.1257 = phi ptr [ %i.da, %RSTRING_PTR.exit334 ], [ %i.bs, %RSTRING_PTR.exit330 ] ; 8 uses
  %.0250 = phi ptr [ %i.de, %RSTRING_PTR.exit334 ], [ %i.bq, %RSTRING_PTR.exit330 ] ; 9 uses
  %i.dg = icmp ult ptr %.0250, %.1257
  br i1 %i.dg, label %.lr.ph.preheader.i, label %skiproot.exit

.lr.ph.preheader.i:                               ; preds = %bb.ak
  %5 = ptrtoaddr ptr %.1257 to i64
  %6 = ptrtoaddr ptr %.0250 to i64
  %i.dh = sub i64 %5, %6
  %scevgep.i = getelementptr i8, ptr %.0250, i64 %i.dh
  br label %.lr.ph.i336

.lr.ph.i336:                                      ; preds = %bb.al, %.lr.ph.preheader.i
  %.01.i = phi ptr [ %i.dk, %bb.al ], [ %.0250, %.lr.ph.preheader.i ] ; 3 uses
  %i.di = load i8, ptr %.01.i, align 1, !tbaa !36
  %i.dj = icmp eq i8 %i.di, 47
  br i1 %i.dj, label %bb.al, label %skiproot.exit

bb.al:                                            ; preds = %.lr.ph.i336
  %i.dk = getelementptr i8, ptr %.01.i, i64 1     ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.dk, %.1257
  br i1 %exitcond.not.i, label %skiproot.exit, label %.lr.ph.i336, !llvm.loop !94

skiproot.exit:                                    ; preds = %.lr.ph.i336, %bb.al, %bb.ak
  %.0.lcssa.i335 = phi ptr [ %.0250, %bb.ak ], [ %.01.i, %.lr.ph.i336 ], [ %scevgep.i, %bb.al ] ; 3 uses
  %i.dl = icmp ult ptr %.0.lcssa.i335, %.1257
  br i1 %i.dl, label %.lr.ph.i337, label %chompdirsep.exit

.lr.ph.i337:                                      ; preds = %skiproot.exit, %.critedge.thread.i
  %.01822.i = phi ptr [ %.220.i, %.critedge.thread.i ], [ %.0.lcssa.i335, %skiproot.exit ] ; 6 uses
  %i.dm = load i8, ptr %.01822.i, align 1, !tbaa !36
  %i.dn = icmp eq i8 %i.dm, 47
  br i1 %i.dn, label %.preheader.i.preheader, label %bb.am

.preheader.i.preheader:                           ; preds = %.lr.ph.i337
  %.119.i474 = getelementptr i8, ptr %.01822.i, i64 1 ; 2 uses
  %i.do = icmp ult ptr %.119.i474, %.1257
  br i1 %i.do, label %.lr.ph, label %chompdirsep.exit

.preheader.i:                                     ; preds = %.lr.ph
  %.119.i = getelementptr i8, ptr %.119.i475, i64 1 ; 2 uses
  %i.dp = icmp ult ptr %.119.i, %.1257
  br i1 %i.dp, label %.lr.ph, label %chompdirsep.exit, !llvm.loop !88

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.119.i475 = phi ptr [ %.119.i, %.preheader.i ], [ %.119.i474, %.preheader.i.preheader ] ; 3 uses
  %i.dq = load i8, ptr %.119.i475, align 1, !tbaa !36
  %i.dr = icmp eq i8 %i.dq, 47
  br i1 %i.dr, label %.preheader.i, label %.critedge.thread.i, !llvm.loop !88

bb.am:                                            ; preds = %.lr.ph.i337
  %i.ds = call i32 @rb_enc_mbclen(ptr noundef nonnull %.01822.i, ptr noundef nonnull %.1257, ptr noundef %.0) #22
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr i8, ptr %.01822.i, i64 %i.dt
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.lr.ph, %bb.am
  %.220.i = phi ptr [ %i.du, %bb.am ], [ %.119.i475, %.lr.ph ] ; 3 uses
  %i.dv = icmp ult ptr %.220.i, %.1257
  br i1 %i.dv, label %.lr.ph.i337, label %chompdirsep.exit, !llvm.loop !89

.preheader389:                                    ; preds = %bb.n, %.preheader389
  %.2 = phi ptr [ %i.dw, %.preheader389 ], [ %i.c, %bb.n ]
  %i.dw = getelementptr i8, ptr %.2, i64 1        ; 4 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !36
  %i.dy = icmp eq i8 %i.dx, 47
  br i1 %i.dy, label %.preheader389, label %bb.an, !llvm.loop !95

bb.an:                                            ; preds = %.preheader389
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = ptrtoint ptr %i.c to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 5 uses
  %.not301 = icmp ult i64 %i.eb, %i.q
  br i1 %.not301, label %RSTRING_PTR.exit339, label %.preheader388

.preheader388:                                    ; preds = %bb.an, %.preheader388
  %.2274 = phi i64 [ %i.ec, %.preheader388 ], [ %i.q, %bb.an ]
  %i.ec = shl i64 %.2274, 1                       ; 5 uses
  %.not302 = icmp ult i64 %i.eb, %i.ec
  br i1 %.not302, label %bb.ao, label %.preheader388, !llvm.loop !96

bb.ao:                                            ; preds = %.preheader388
  %i.ed = call i64 @rb_str_resize(i64 noundef %4, i64 noundef %i.ec) #22 ; 0 uses
  %i.ee = load i64, ptr %i.j, align 8, !tbaa !11
  %i.ef = and i64 %i.ee, 8192
  %.not.i338 = icmp eq i64 %i.ef, 0
  br i1 %.not.i338, label %RSTRING_PTR.exit339, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eg = load ptr, ptr %i.m, align 8, !tbaa !36
  br label %RSTRING_PTR.exit339

RSTRING_PTR.exit339:                              ; preds = %bb.ap, %bb.ao, %bb.an
  %.3275 = phi i64 [ %i.q, %bb.an ], [ %i.ec, %bb.ao ], [ %i.ec, %bb.ap ]
  %.1251 = phi ptr [ %i.o, %bb.an ], [ %i.m, %bb.ao ], [ %i.eg, %bb.ap ] ; 3 uses
  %.2258 = getelementptr i8, ptr %.1251, i64 %i.eb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.1251, i8 noundef 47, i64 noundef %i.eb, i1 noundef false) #22
  call void @rb_str_set_len(i64 noundef %4, i64 noundef %i.eb) #22
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.ei = call ptr @rb_enc_check(i64 noundef %4, i64 noundef %i.eh) #22 ; 2 uses
  %i.ej = call i32 @rb_enc_to_index(ptr noundef %i.ei) #23
  %i.ek = icmp eq i32 %i.ej, 2
  br i1 %i.ek, label %bb.aq, label %fs_enc_check.exit342

bb.aq:                                            ; preds = %RSTRING_PTR.exit339
  %i.el = call i32 @rb_enc_get_index(i64 noundef %4) #22 ; 2 uses
  %i.em = icmp eq i32 %i.el, 2
  br i1 %i.em, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.en = call i32 @rb_enc_get_index(i64 noundef %i.eh) #22
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0.i341 = phi i32 [ %i.en, %bb.ar ], [ %i.el, %bb.aq ]
  %i.eo = call ptr @rb_enc_from_index(i32 noundef %.0.i341) #22
  br label %fs_enc_check.exit342

fs_enc_check.exit342:                             ; preds = %RSTRING_PTR.exit339, %bb.as
  %.08.i340 = phi ptr [ %i.eo, %bb.as ], [ %i.ei, %RSTRING_PTR.exit339 ]
  %i.ep = call i64 @rb_enc_associate(i64 noundef %4, ptr noundef %.08.i340) #22 ; 0 uses
  br label %chompdirsep.exit

chompdirsep.exit:                                 ; preds = %.critedge.thread.i, %.preheader.i.preheader, %.preheader.i, %skiproot.exit, %fs_enc_check.exit342, %RSTRING_PTR.exit326
  %.1375 = phi ptr [ %i.i, %RSTRING_PTR.exit326 ], [ %i.i, %fs_enc_check.exit342 ], [ %.0, %skiproot.exit ], [ %.0, %.preheader.i ], [ %.0, %.preheader.i.preheader ], [ %.0, %.critedge.thread.i ] ; 2 uses
  %.4276 = phi i64 [ %i.ba, %RSTRING_PTR.exit326 ], [ %.3275, %fs_enc_check.exit342 ], [ %.1273, %skiproot.exit ], [ %.1273, %.preheader.i ], [ %.1273, %.preheader.i.preheader ], [ %.1273, %.critedge.thread.i ] ; 4 uses
  %.3259 = phi ptr [ %i.bb, %RSTRING_PTR.exit326 ], [ %.2258, %fs_enc_check.exit342 ], [ %.0.lcssa.i335, %skiproot.exit ], [ %.01822.i, %.preheader.i ], [ %.220.i, %.critedge.thread.i ], [ %.01822.i, %.preheader.i.preheader ] ; 4 uses
  %.2252 = phi ptr [ %i.az, %RSTRING_PTR.exit326 ], [ %.1251, %fs_enc_check.exit342 ], [ %.0250, %skiproot.exit ], [ %.0250, %.preheader.i ], [ %.0250, %.preheader.i.preheader ], [ %.0250, %.critedge.thread.i ] ; 4 uses
  %.3 = phi ptr [ %.1, %RSTRING_PTR.exit326 ], [ %i.dw, %fs_enc_check.exit342 ], [ %i.c, %skiproot.exit ], [ %i.c, %.preheader.i ], [ %i.c, %.preheader.i.preheader ], [ %i.c, %.critedge.thread.i ] ; 2 uses
  %i.eq = icmp ugt ptr %.3259, %.2252
  br i1 %i.eq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %chompdirsep.exit
  %i.er = getelementptr i8, ptr %.3259, i64 -1    ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !36
  %i.et = icmp eq i8 %i.es, 47
  br i1 %i.et, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at, %chompdirsep.exit
  %i.eu = ptrtoint ptr %.3259 to i64
  %i.ev = ptrtoint ptr %.2252 to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 3 uses
  call void @rb_str_set_len(i64 noundef %4, i64 noundef %i.ew) #22
  %i.ex = add i64 %i.ew, 1                        ; 2 uses
  %.not308 = icmp ult i64 %i.ex, %.4276
  br i1 %.not308, label %bb.ax, label %.preheader386

.preheader386:                                    ; preds = %bb.au, %.preheader386
  %.5277 = phi i64 [ %i.ey, %.preheader386 ], [ %.4276, %bb.au ]
  %i.ey = shl i64 %.5277, 1                       ; 4 uses
  %.not309 = icmp ult i64 %i.ex, %i.ey
  br i1 %.not309, label %bb.av, label %.preheader386, !llvm.loop !97

bb.av:                                            ; preds = %.preheader386
  %i.ez = call i64 @rb_str_resize(i64 noundef %4, i64 noundef %i.ey) #22 ; 0 uses
  %i.fa = load i64, ptr %i.j, align 8, !tbaa !11
  %i.fb = and i64 %i.fa, 8192
  %.not.i343 = icmp eq i64 %i.fb, 0
  br i1 %.not.i343, label %RSTRING_PTR.exit344, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fc = load ptr, ptr %i.m, align 8, !tbaa !36
  br label %RSTRING_PTR.exit344

RSTRING_PTR.exit344:                              ; preds = %bb.av, %bb.aw
  %i.fd = phi ptr [ %i.fc, %bb.aw ], [ %i.m, %bb.av ] ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ew
  br label %bb.ax

bb.ax:                                            ; preds = %RSTRING_PTR.exit344, %bb.au
  %.6278 = phi i64 [ %i.ey, %RSTRING_PTR.exit344 ], [ %.4276, %bb.au ]
  %.4260 = phi ptr [ %i.fe, %RSTRING_PTR.exit344 ], [ %.3259, %bb.au ] ; 2 uses
  %.3253 = phi ptr [ %i.fd, %RSTRING_PTR.exit344 ], [ %.2252, %bb.au ]
  store i8 47, ptr %.4260, align 1, !tbaa !36
  br label %bb.ay

bb.ay:                                            ; preds = %bb.at, %bb.ax
  %.7279 = phi i64 [ %.6278, %bb.ax ], [ %.4276, %bb.at ] ; 3 uses
  %.5261 = phi ptr [ %.4260, %bb.ax ], [ %i.er, %bb.at ] ; 2 uses
  %.4254 = phi ptr [ %.3253, %bb.ax ], [ %.2252, %bb.at ] ; 2 uses
  %i.ff = ptrtoint ptr %.5261 to i64
  %i.fg = ptrtoint ptr %.4254 to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 2 uses
  %i.fi = add i64 %i.fh, 1                        ; 3 uses
  call void @rb_str_set_len(i64 noundef %4, i64 noundef %i.fi) #22
  %.not310 = icmp ult i64 %i.fi, %.7279
  br i1 %.not310, label %bb.bb, label %.preheader385

.preheader385:                                    ; preds = %bb.ay, %.preheader385
  %.8280 = phi i64 [ %i.fj, %.preheader385 ], [ %.7279, %bb.ay ]
  %i.fj = shl i64 %.8280, 1                       ; 4 uses
  %.not311 = icmp ult i64 %i.fi, %i.fj
  br i1 %.not311, label %bb.az, label %.preheader385, !llvm.loop !98

bb.az:                                            ; preds = %.preheader385
  %i.fk = call i64 @rb_str_resize(i64 noundef %4, i64 noundef %i.fj) #22 ; 0 uses
  %i.fl = load i64, ptr %i.j, align 8, !tbaa !11
  %i.fm = and i64 %i.fl, 8192
  %.not.i345 = icmp eq i64 %i.fm, 0
  br i1 %.not.i345, label %RSTRING_PTR.exit346, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fn = load ptr, ptr %i.m, align 8, !tbaa !36
  br label %RSTRING_PTR.exit346

RSTRING_PTR.exit346:                              ; preds = %bb.az, %bb.ba
  %i.fo = phi ptr [ %i.fn, %bb.ba ], [ %i.m, %bb.az ] ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fh
end_hunk_0
begin_hunk_1_@rb_file_expand_path_internal:bb.a

bb.bf:                                            ; preds = %bb.be
  br label %.backedge

bb.bg:                                            ; preds = %bb.be
  %i.fv = getelementptr i8, ptr %.4, i64 2        ; 5 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !36
  switch i8 %i.fw, label %.backedge [
    i8 0, label %bb.bh
    i8 47, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  store i8 0, ptr %.7263, align 1, !tbaa !36
  %i.fx = icmp ult ptr %.0268, %.7263
  br i1 %i.fx, label %.lr.ph.i347, label %rb_enc_path_last_separator.exit.thread

.lr.ph.i347:                                      ; preds = %bb.bh, %.critedge.thread.i348
  %.01627.i = phi ptr [ %.2.i, %.critedge.thread.i348 ], [ %.0268, %bb.bh ] ; 5 uses
  %.01726.i = phi ptr [ %.219.i, %.critedge.thread.i348 ], [ null, %bb.bh ] ; 3 uses
  %i.fy = load i8, ptr %.01627.i, align 1, !tbaa !36
  %i.fz = icmp eq i8 %i.fy, 47
  br i1 %i.fz, label %.preheader.i349.preheader, label %bb.bi

.preheader.i349.preheader:                        ; preds = %.lr.ph.i347
  %.1.i350477 = getelementptr i8, ptr %.01627.i, i64 1 ; 2 uses
  %i.ga = icmp ult ptr %.1.i350477, %.7263
  br i1 %i.ga, label %.lr.ph479, label %rb_enc_path_last_separator.exit

.preheader.i349:                                  ; preds = %.lr.ph479
  %.1.i350 = getelementptr i8, ptr %.1.i350478, i64 1 ; 2 uses
  %i.gb = icmp ult ptr %.1.i350, %.7263
  br i1 %i.gb, label %.lr.ph479, label %rb_enc_path_last_separator.exit, !llvm.loop !86

.lr.ph479:                                        ; preds = %.preheader.i349.preheader, %.preheader.i349
  %.1.i350478 = phi ptr [ %.1.i350, %.preheader.i349 ], [ %.1.i350477, %.preheader.i349.preheader ] ; 3 uses
  %i.gc = load i8, ptr %.1.i350478, align 1, !tbaa !36
  %i.gd = icmp eq i8 %i.gc, 47
  br i1 %i.gd, label %.preheader.i349, label %.critedge.thread.i348, !llvm.loop !86

bb.bi:                                            ; preds = %.lr.ph.i347
  %i.ge = call i32 @rb_enc_mbclen(ptr noundef nonnull %.01627.i, ptr noundef nonnull %.7263, ptr noundef nonnull %.1375) #22
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr i8, ptr %.01627.i, i64 %i.gf
  br label %.critedge.thread.i348

.critedge.thread.i348:                            ; preds = %.lr.ph479, %bb.bi
  %.219.i = phi ptr [ %.01726.i, %bb.bi ], [ %.01627.i, %.lr.ph479 ] ; 2 uses
  %.2.i = phi ptr [ %i.gg, %bb.bi ], [ %.1.i350478, %.lr.ph479 ] ; 2 uses
  %i.gh = icmp ult ptr %.2.i, %.7263
  br i1 %i.gh, label %.lr.ph.i347, label %rb_enc_path_last_separator.exit, !llvm.loop !87

rb_enc_path_last_separator.exit:                  ; preds = %.critedge.thread.i348, %.preheader.i349.preheader, %.preheader.i349
  %.01725.i = phi ptr [ %.01726.i, %.preheader.i349 ], [ %.219.i, %.critedge.thread.i348 ], [ %.01726.i, %.preheader.i349.preheader ] ; 2 uses
  %.not317 = icmp eq ptr %.01725.i, null
  br i1 %.not317, label %rb_enc_path_last_separator.exit.thread, label %.backedge

rb_enc_path_last_separator.exit.thread:           ; preds = %bb.bh, %rb_enc_path_last_separator.exit
  store i8 47, ptr %.7263, align 1, !tbaa !36
  br label %.backedge

.backedge:                                        ; preds = %rb_enc_path_last_separator.exit.thread, %rb_enc_path_last_separator.exit, %bb.bg, %bb.bd, %bb.be, %bb.bj, %bb.bf, %bb.bp, %bb.bo
  %.10282.be = phi i64 [ %.10282, %bb.bp ], [ %.10282, %bb.be ], [ %.10282, %bb.bf ], [ %.13285, %bb.bo ], [ %.10282, %bb.bg ], [ %.10282, %bb.bj ], [ %.10282, %bb.bd ], [ %.10282, %rb_enc_path_last_separator.exit ], [ %.10282, %rb_enc_path_last_separator.exit.thread ]
  %.0268.be = phi ptr [ %.0268, %bb.bp ], [ %.0268, %bb.be ], [ %.0268, %bb.bf ], [ %.1269, %bb.bo ], [ %.0268, %bb.bg ], [ %.0268, %bb.bj ], [ %.0268, %bb.bd ], [ %.0268, %rb_enc_path_last_separator.exit ], [ %.0268, %rb_enc_path_last_separator.exit.thread ]
  %.7263.be = phi ptr [ %.7263, %bb.bp ], [ %.7263, %bb.be ], [ %.7263, %bb.bf ], [ %.10266, %bb.bo ], [ %.7263, %bb.bg ], [ %.7263, %bb.bj ], [ %.7263, %bb.bd ], [ %.01725.i, %rb_enc_path_last_separator.exit ], [ %.7263, %rb_enc_path_last_separator.exit.thread ]
  %.6.be = phi ptr [ %.6, %bb.bp ], [ %.6, %bb.be ], [ %.6, %bb.bf ], [ %.8, %bb.bo ], [ %.6, %bb.bg ], [ %.6, %bb.bj ], [ %.6, %bb.bd ], [ %.6, %rb_enc_path_last_separator.exit ], [ %.6, %rb_enc_path_last_separator.exit.thread ]
  %.1248.be = phi ptr [ %.1248, %bb.bp ], [ %.1248, %bb.be ], [ %i.fs, %bb.bf ], [ %i.he, %bb.bo ], [ %.1248, %bb.bg ], [ %i.gi, %bb.bj ], [ %.1248, %bb.bd ], [ %i.fv, %rb_enc_path_last_separator.exit ], [ %i.fv, %rb_enc_path_last_separator.exit.thread ]
  %.4.be = phi ptr [ %i.hh, %bb.bp ], [ %i.fs, %bb.be ], [ %i.fs, %bb.bf ], [ %i.he, %bb.bo ], [ %i.fs, %bb.bg ], [ %i.gi, %bb.bj ], [ %i.fs, %bb.bd ], [ %i.fv, %rb_enc_path_last_separator.exit ], [ %i.fv, %rb_enc_path_last_separator.exit.thread ]
  br label %bb.bc, !llvm.loop !99

bb.bj:                                            ; preds = %bb.be
  %i.gi = getelementptr i8, ptr %.4, i64 2        ; 2 uses
  br label %.backedge

bb.bk:                                            ; preds = %bb.bc
  %i.gj = icmp ugt ptr %.4, %.1248
  br i1 %i.gj, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.gk = ptrtoint ptr %.0268 to i64
  %i.gl = ptrtoint ptr %.6 to i64                 ; 2 uses
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = ptrtoint ptr %.7263 to i64
  %i.go = sub i64 %i.gn, %i.gl                    ; 2 uses
  %i.gp = add i64 %i.go, 1                        ; 2 uses
  call void @rb_str_set_len(i64 noundef %4, i64 noundef %i.gp) #22
  %i.gq = ptrtoint ptr %.4 to i64
  %i.gr = ptrtoint ptr %.1248 to i64
  %i.gs = sub i64 %i.gq, %i.gr                    ; 3 uses
  %i.gt = add i64 %i.gp, %i.gs                    ; 2 uses
  %.not315 = icmp ult i64 %i.gt, %.10282
  br i1 %.not315, label %ruby_nonempty_memcpy.exit355, label %.preheader384

.preheader384:                                    ; preds = %bb.bl, %.preheader384
  %.11283 = phi i64 [ %i.gu, %.preheader384 ], [ %.10282, %bb.bl ]
  %i.gu = shl i64 %.11283, 1                      ; 4 uses
  %.not316 = icmp ult i64 %i.gt, %i.gu
  br i1 %.not316, label %bb.bm, label %.preheader384, !llvm.loop !100

bb.bm:                                            ; preds = %.preheader384
  %i.gv = call i64 @rb_str_resize(i64 noundef %4, i64 noundef %i.gu) #22 ; 0 uses
  %i.gw = load i64, ptr %i.j, align 8, !tbaa !11
  %i.gx = and i64 %i.gw, 8192
  %.not.i351 = icmp eq i64 %i.gx, 0
  br i1 %.not.i351, label %RSTRING_PTR.exit352, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gy = load ptr, ptr %i.m, align 8, !tbaa !36
  br label %RSTRING_PTR.exit352

RSTRING_PTR.exit352:                              ; preds = %bb.bm, %bb.bn
  %i.gz = phi ptr [ %i.gy, %bb.bn ], [ %i.m, %bb.bm ] ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.go
  br label %ruby_nonempty_memcpy.exit355

ruby_nonempty_memcpy.exit355:                     ; preds = %RSTRING_PTR.exit352, %bb.bl
  %.12284 = phi i64 [ %i.gu, %RSTRING_PTR.exit352 ], [ %.10282, %bb.bl ]
  %.9265 = phi ptr [ %i.ha, %RSTRING_PTR.exit352 ], [ %.7263, %bb.bl ]
  %.7 = phi ptr [ %i.gz, %RSTRING_PTR.exit352 ], [ %.6, %bb.bl ] ; 2 uses
  %i.hb = getelementptr i8, ptr %.9265, i64 1     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.hb, ptr noundef nonnull readonly align 1 %.1248, i64 noundef range(i64 1, 0) %i.gs, i1 noundef false) #22
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.gs  ; 2 uses
  %i.hd = getelementptr i8, ptr %.7, i64 %i.gm
  store i8 47, ptr %i.hc, align 1, !tbaa !36
  br label %bb.bo

bb.bo:                                            ; preds = %ruby_nonempty_memcpy.exit355, %bb.bk
  %.13285 = phi i64 [ %.12284, %ruby_nonempty_memcpy.exit355 ], [ %.10282, %bb.bk ]
  %.1269 = phi ptr [ %i.hd, %ruby_nonempty_memcpy.exit355 ], [ %.0268, %bb.bk ]
  %.10266 = phi ptr [ %i.hc, %ruby_nonempty_memcpy.exit355 ], [ %.7263, %bb.bk ]
  %.8 = phi ptr [ %.7, %ruby_nonempty_memcpy.exit355 ], [ %.6, %bb.bk ]
  %i.he = getelementptr i8, ptr %.4, i64 1        ; 2 uses
  br label %.backedge

bb.bp:                                            ; preds = %bb.bc
  %i.hf = call i32 @rb_enc_mbclen(ptr noundef nonnull %.4, ptr noundef %i.h, ptr noundef %.1375) #22
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr i8, ptr %.4, i64 %i.hg
  br label %.backedge

bb.bq:                                            ; preds = %bb.bc
  %i.hi = icmp ugt ptr %.4, %.1248
  br i1 %i.hi, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.hj = ptrtoint ptr %.7263 to i64
  %i.hk = ptrtoint ptr %.6 to i64                 ; 2 uses
  %i.hl = sub i64 %i.hj, %i.hk                    ; 2 uses
  %i.hm = add i64 %i.hl, 1                        ; 2 uses
  call void @rb_str_set_len(i64 noundef %4, i64 noundef %i.hm) #22
  %i.hn = ptrtoint ptr %.4 to i64
  %i.ho = ptrtoint ptr %.1248 to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 3 uses
  %i.hq = add i64 %i.hm, %i.hp                    ; 2 uses
  %.not313 = icmp ult i64 %i.hq, %.10282
  br i1 %.not313, label %ruby_nonempty_memcpy.exit360, label %.preheader

.preheader:                                       ; preds = %bb.br, %.preheader
  %.15 = phi i64 [ %i.hr, %.preheader ], [ %.10282, %bb.br ]
  %i.hr = shl i64 %.15, 1                         ; 3 uses
  %.not314 = icmp ult i64 %i.hq, %i.hr
  br i1 %.not314, label %bb.bs, label %.preheader, !llvm.loop !101

bb.bs:                                            ; preds = %.preheader
  %i.hs = call i64 @rb_str_resize(i64 noundef %4, i64 noundef %i.hr) #22 ; 0 uses
  %i.ht = load i64, ptr %i.j, align 8, !tbaa !11
  %i.hu = and i64 %i.ht, 8192
  %.not.i356 = icmp eq i64 %i.hu, 0
  br i1 %.not.i356, label %RSTRING_PTR.exit357, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hv = load ptr, ptr %i.m, align 8, !tbaa !36
  br label %RSTRING_PTR.exit357

RSTRING_PTR.exit357:                              ; preds = %bb.bs, %bb.bt
  %i.hw = phi ptr [ %i.hv, %bb.bt ], [ %i.m, %bb.bs ] ; 3 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.hl
  %.pre = ptrtoint ptr %i.hw to i64
  br label %ruby_nonempty_memcpy.exit360

ruby_nonempty_memcpy.exit360:                     ; preds = %RSTRING_PTR.exit357, %bb.br
  %.pre-phi = phi i64 [ %.pre, %RSTRING_PTR.exit357 ], [ %i.hk, %bb.br ]
  %.12 = phi ptr [ %i.hx, %RSTRING_PTR.exit357 ], [ %.7263, %bb.br ]
  %.10 = phi ptr [ %i.hw, %RSTRING_PTR.exit357 ], [ %.6, %bb.br ]
  %i.hy = getelementptr i8, ptr %.12, i64 1       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.hy, ptr noundef nonnull readonly align 1 %.1248, i64 noundef range(i64 1, 0) %i.hp, i1 noundef false) #22
  %i.hz = getelementptr i8, ptr %i.hy, i64 %i.hp  ; 2 uses
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = sub i64 %i.ia, %.pre-phi
  call void @rb_str_set_len(i64 noundef %4, i64 noundef %i.ib) #22
  br label %bb.bu

bb.bu:                                            ; preds = %ruby_nonempty_memcpy.exit360, %bb.bq
  %.13 = phi ptr [ %i.hz, %ruby_nonempty_memcpy.exit360 ], [ %.7263, %bb.bq ] ; 4 uses
  %.11 = phi ptr [ %.10, %ruby_nonempty_memcpy.exit360 ], [ %.6, %bb.bq ] ; 6 uses
  %i.ic = load i8, ptr %.13, align 1, !tbaa !36
  %i.id = icmp ne i8 %i.ic, 0
  %i.ie = zext i1 %i.id to i64
  %i.if = getelementptr i8, ptr %.13, i64 %i.ie   ; 3 uses
  %i.ig = icmp ult ptr %.11, %i.if
  br i1 %i.ig, label %.lr.ph.preheader.i362, label %skiproot.exit367

.lr.ph.preheader.i362:                            ; preds = %bb.bu
  %7 = ptrtoaddr ptr %i.if to i64
  %8 = ptrtoaddr ptr %.11 to i64
  %i.ih = sub i64 %7, %8
  %scevgep.i363 = getelementptr i8, ptr %.11, i64 %i.ih
  br label %.lr.ph.i364

.lr.ph.i364:                                      ; preds = %bb.bv, %.lr.ph.preheader.i362
  %.01.i365 = phi ptr [ %i.ik, %bb.bv ], [ %.11, %.lr.ph.preheader.i362 ] ; 3 uses
  %i.ii = load i8, ptr %.01.i365, align 1, !tbaa !36
  %i.ij = icmp eq i8 %i.ii, 47
  br i1 %i.ij, label %bb.bv, label %skiproot.exit367

bb.bv:                                            ; preds = %.lr.ph.i364
  %i.ik = getelementptr i8, ptr %.01.i365, i64 1  ; 2 uses
  %exitcond.not.i366 = icmp eq ptr %i.ik, %i.if
  br i1 %exitcond.not.i366, label %skiproot.exit367, label %.lr.ph.i364, !llvm.loop !94

skiproot.exit367:                                 ; preds = %.lr.ph.i364, %bb.bv, %bb.bu
  %.0.lcssa.i361 = phi ptr [ %.11, %bb.bu ], [ %.01.i365, %.lr.ph.i364 ], [ %scevgep.i363, %bb.bv ]
  %i.il = getelementptr i8, ptr %.0.lcssa.i361, i64 -1
  %i.im = icmp eq ptr %.13, %i.il
  %spec.select318.idx = zext i1 %i.im to i64
  %spec.select318 = getelementptr i8, ptr %.13, i64 %spec.select318.idx
  %9 = ptrtoint ptr %spec.select318 to i64
  %i.in = ptrtoint ptr %.11 to i64
  %i.io = sub i64 %9, %i.in
  call void @rb_str_set_len(i64 noundef %4, i64 noundef %i.io) #22
  %i.ip = load i64, ptr %i.a, align 8, !tbaa !14
  %i.iq = call ptr @rb_enc_check(i64 noundef %i.ip, i64 noundef %4) #22 ; 0 uses
  %i.ir = load i64, ptr %i.j, align 8, !tbaa !11
  %i.is = and i64 %i.ir, -3145729
  store i64 %i.is, ptr %i.j, align 8, !tbaa !11
  ret i64 %4
}

declare ptr @rb_filesystem_encoding() local_unnamed_addr #2

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #2

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #2

declare i64 @rb_enc_associate(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @rb_is_absolute_path(ptr nofree noundef nonnull readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !36
  %i.b = icmp eq i8 %i.a, 47
  %. = zext i1 %i.b to i32
  ret i32 %.
}

; Function Attrs: noreturn
declare void @rb_enc_raise(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare noalias nonnull ptr @ruby_getcwd() local_unnamed_addr #2

declare ptr @rb_enc_check(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_file_expand_path(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 5
  br i1 %i.j, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.k = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.k, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !15

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.k, %.lr.ph.i.i.i ]
  %i.l = tail call i64 @rb_check_funcall_default(i64 noundef %0, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %0) #22
  store i64 %i.l, ptr %i.b, align 8, !tbaa !14
  %i.m = call i64 @rb_string_value(ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !14
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i = phi i64 [ %i.n, %rbimpl_intern_const.exit.i.i ], [ %0, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.o = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i)
  %i.p = icmp eq i64 %1, 4
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rb_get_path.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.q = icmp eq i64 %1, 0
  %i.r = and i64 %1, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i6, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5

rbimpl_RB_TYPE_P_fastpath.exit.i.i5:              ; preds = %bb.b
  %i.u = inttoptr i64 %1 to ptr
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11
  %i.w = and i64 %i.v, 31
  %i.x = icmp eq i64 %i.w, 5
  br i1 %i.x, label %rb_get_path.exit14, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i6

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i6:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i5, %bb.b
  %.pr.i.i.i7 = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i8 = icmp eq i64 %.pr.i.i.i7, 0
  br i1 %.not4.i.i.i8, label %.lr.ph.i.i.i12, label %rbimpl_intern_const.exit.i.i9

.lr.ph.i.i.i12:                                   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i6, %.lr.ph.i.i.i12
  %i.y = call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.y, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14
  %.not.i.i.i13 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i13, label %.lr.ph.i.i.i12, label %rbimpl_intern_const.exit.i.i9, !llvm.loop !15

rbimpl_intern_const.exit.i.i9:                    ; preds = %.lr.ph.i.i.i12, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i6
  %.lcssa.i.i.i10 = phi i64 [ %.pr.i.i.i7, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i6 ], [ %i.y, %.lr.ph.i.i.i12 ]
  %i.z = call i64 @rb_check_funcall_default(i64 noundef %1, i64 noundef %.lcssa.i.i.i10, i32 noundef 0, ptr noundef null, i64 noundef %1) #22
  store i64 %i.z, ptr %i.a, align 8, !tbaa !14
  %i.aa = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !14
  br label %rb_get_path.exit14

rb_get_path.exit14:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i5, %rbimpl_intern_const.exit.i.i9
  %.0.i.i11 = phi i64 [ %i.ab, %rbimpl_intern_const.exit.i.i9 ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit.i.i5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ac = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i11)
  br label %bb.c

bb.c:                                             ; preds = %rb_get_path.exit, %rb_get_path.exit14
  %.0 = phi i64 [ 4, %rb_get_path.exit ], [ %i.ac, %rb_get_path.exit14 ]
  %i.ad = call i64 @rb_usascii_str_new_static(ptr noundef null, i64 noundef 1) #22 ; 4 uses
  %i.ae = call i64 @rb_file_expand_path_internal(i64 noundef %i.o, i64 noundef %.0, i32 noundef 0, i32 noundef 1, i64 noundef %i.ad) ; 0 uses
  %i.af = inttoptr i64 %i.ad to ptr
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !90
  %i.ai = call i64 @rb_str_resize(i64 noundef %i.ad, i64 noundef %i.ah) #22 ; 0 uses
  ret i64 %i.ad
}

declare i64 @rb_usascii_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_file_expand_path_fast(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_usascii_str_new_static(ptr noundef null, i64 noundef 1) #22 ; 4 uses
  %i.b = tail call i64 @rb_file_expand_path_internal(i64 noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 0, i64 noundef %i.a) ; 0 uses
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !90
  %i.f = tail call i64 @rb_str_resize(i64 noundef %i.a, i64 noundef %i.e) #22 ; 0 uses
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_file_s_expand_path(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -3
  %or.cond = icmp ult i32 %i.a, -2
  br i1 %or.cond, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #24
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !14
  %i.c = icmp samesign ugt i32 %0, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %rb_check_arity.exit, %bb.c
  %i.f = phi i64 [ %i.e, %bb.c ], [ 4, %rb_check_arity.exit ]
  %i.g = tail call i64 @rb_file_expand_path(i64 noundef %i.b, i64 noundef %i.f)
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_file_absolute_path(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 5
  br i1 %i.j, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.k = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.k, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !15

end_hunk_1
begin_hunk_2_@rb_file_join:bb.a
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bv = call i64 @rb_exec_recursive(ptr noundef nonnull @file_inspect_join, i64 noundef %0, i64 noundef %i.bd) #22
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !14
  br label %bb.q

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bw = and i64 %i.bj, 31
  %i.bx = icmp eq i64 %i.bw, 5
  br i1 %i.bx, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %.thread83, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.by = call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.by, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !15

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.by, %.lr.ph.i.i.i ]
  %i.bz = call i64 @rb_check_funcall_default(i64 noundef %i.bd, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %i.bd) #22
  store i64 %i.bz, ptr %i.a, align 8, !tbaa !14
  %i.ca = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !14
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i70 = phi i64 [ %i.cb, %rbimpl_intern_const.exit.i.i ], [ %i.bd, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.cc = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i70)
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %rb_get_path.exit, %bb.p, %check_path_encoding.exit69
  %.146 = phi i32 [ 0, %rb_get_path.exit ], [ %.045, %check_path_encoding.exit69 ], [ %.045, %bb.p ]
  %i.cd = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.ce = and i64 %i.cd, 8192
  %.not.i71 = icmp eq i64 %i.ce, 0
  br i1 %.not.i71, label %RSTRING_PTR.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %i.as, align 8, !tbaa !36
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.q, %bb.r
  %i.cg = phi ptr [ %i.cf, %bb.r ], [ %i.as, %bb.q ] ; 5 uses
  %i.ch = icmp eq i64 %.144, 0
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %RSTRING_PTR.exit
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !14
  call void @rb_enc_copy(i64 noundef %i.ap, i64 noundef %i.ci) #22
  br label %bb.y

bb.t:                                             ; preds = %RSTRING_PTR.exit
  %i.cj = load i64, ptr %i.at, align 8, !tbaa !90
  %i.ck = getelementptr i8, ptr %i.cg, i64 %i.cj  ; 5 uses
  %i.cl = call ptr @rb_enc_get(i64 noundef %i.ap) #22
  %i.cm = icmp ult ptr %i.cg, %i.ck
  br i1 %i.cm, label %.lr.ph.i, label %chompdirsep.exit

.lr.ph.i:                                         ; preds = %bb.t, %.critedge.thread.i
  %.01822.i = phi ptr [ %.220.i, %.critedge.thread.i ], [ %i.cg, %bb.t ] ; 6 uses
  %i.cn = load i8, ptr %.01822.i, align 1, !tbaa !36
  %i.co = icmp eq i8 %i.cn, 47
  br i1 %i.co, label %.preheader.i.preheader, label %bb.u

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %.119.i136 = getelementptr i8, ptr %.01822.i, i64 1 ; 2 uses
  %i.cp = icmp ult ptr %.119.i136, %i.ck
  br i1 %i.cp, label %.lr.ph, label %chompdirsep.exit

.preheader.i:                                     ; preds = %.lr.ph
  %.119.i = getelementptr i8, ptr %.119.i137, i64 1 ; 2 uses
  %i.cq = icmp ult ptr %.119.i, %i.ck
  br i1 %i.cq, label %.lr.ph, label %chompdirsep.exit, !llvm.loop !88

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.119.i137 = phi ptr [ %.119.i, %.preheader.i ], [ %.119.i136, %.preheader.i.preheader ] ; 3 uses
  %i.cr = load i8, ptr %.119.i137, align 1, !tbaa !36
  %i.cs = icmp eq i8 %i.cr, 47
  br i1 %i.cs, label %.preheader.i, label %.critedge.thread.i, !llvm.loop !88

bb.u:                                             ; preds = %.lr.ph.i
  %i.ct = call i32 @rb_enc_mbclen(ptr noundef nonnull %.01822.i, ptr noundef nonnull %i.ck, ptr noundef %i.cl) #22
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr i8, ptr %.01822.i, i64 %i.cu
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.lr.ph, %bb.u
  %.220.i = phi ptr [ %i.cv, %bb.u ], [ %.119.i137, %.lr.ph ] ; 3 uses
  %i.cw = icmp ult ptr %.220.i, %i.ck
  br i1 %i.cw, label %.lr.ph.i, label %chompdirsep.exit, !llvm.loop !89

chompdirsep.exit:                                 ; preds = %.critedge.thread.i, %.preheader.i.preheader, %.preheader.i, %bb.t
  %.018.lcssa.i = phi ptr [ %i.cg, %bb.t ], [ %.01822.i, %.preheader.i ], [ %.220.i, %.critedge.thread.i ], [ %.01822.i, %.preheader.i.preheader ] ; 2 uses
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !14
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !11
  %i.da = and i64 %i.cz, 8192
  %.not.i72 = icmp eq i64 %i.da, 0
  %i.db = getelementptr i8, ptr %i.cy, i64 24     ; 3 uses
  br i1 %.not.i72, label %RSTRING_PTR.exit73, label %RSTRING_PTR.exit73.thread

RSTRING_PTR.exit73:                               ; preds = %chompdirsep.exit
  %.not50 = icmp eq ptr %i.db, null
  br i1 %.not50, label %bb.w, label %RSTRING_PTR.exit75

RSTRING_PTR.exit73.thread:                        ; preds = %chompdirsep.exit
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !36 ; 2 uses
  %.not5084 = icmp eq ptr %i.dc, null
  br i1 %.not5084, label %bb.w, label %RSTRING_PTR.exit75

RSTRING_PTR.exit75:                               ; preds = %RSTRING_PTR.exit73.thread, %RSTRING_PTR.exit73
  %i.dd = phi ptr [ %i.db, %RSTRING_PTR.exit73 ], [ %i.dc, %RSTRING_PTR.exit73.thread ]
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !36
  %i.df = icmp eq i8 %i.de, 47
  br i1 %i.df, label %bb.v, label %bb.w

bb.v:                                             ; preds = %RSTRING_PTR.exit75
  %i.dg = ptrtoint ptr %.018.lcssa.i to i64
  %i.dh = ptrtoint ptr %i.cg to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @rb_str_set_len(i64 noundef %i.ap, i64 noundef %i.di) #22
  br label %bb.y

bb.w:                                             ; preds = %RSTRING_PTR.exit73.thread, %RSTRING_PTR.exit75, %RSTRING_PTR.exit73
  %i.dj = load i8, ptr %.018.lcssa.i, align 1, !tbaa !36
  %.not51 = icmp eq i8 %i.dj, 0
  br i1 %.not51, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dk = call i64 @rb_str_cat(i64 noundef %i.ap, ptr noundef nonnull @.str.67, i64 noundef 1) #22 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w, %bb.s
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.dm = call ptr @rb_enc_check(i64 noundef %i.ap, i64 noundef %i.dl) #22 ; 2 uses
  %i.dn = call i32 @rb_enc_to_index(ptr noundef %i.dm) #23
  %i.do = icmp eq i32 %i.dn, 2
  br i1 %i.do, label %bb.z, label %fs_enc_check.exit

bb.z:                                             ; preds = %bb.y
  %i.dp = call i32 @rb_enc_get_index(i64 noundef %i.ap) #22 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 2
  br i1 %i.dq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dr = call i32 @rb_enc_get_index(i64 noundef %i.dl) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i76 = phi i32 [ %i.dr, %bb.aa ], [ %i.dp, %bb.z ]
  %i.ds = call ptr @rb_enc_from_index(i32 noundef %.0.i76) #22
  br label %fs_enc_check.exit

fs_enc_check.exit:                                ; preds = %bb.y, %bb.ab
  %.08.i = phi ptr [ %i.ds, %bb.ab ], [ %i.dm, %bb.y ]
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !14
  %i.du = call i64 @rb_str_buf_append(i64 noundef %i.ap, i64 noundef %i.dt) #22 ; 0 uses
  %i.dv = call i64 @rb_enc_associate(i64 noundef %i.ap, ptr noundef %.08.i) #22 ; 0 uses
  %i.dw = add i64 %.144, 1
  br label %bb.i, !llvm.loop !217

bb.ac:                                            ; preds = %rb_array_len.exit59.thread, %rb_array_len.exit59
  %i.dx = load i64, ptr @rb_cString, align 8, !tbaa !14
  store i64 %i.dx, ptr %i.ar, align 8, !tbaa !14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.d
  %.0 = phi i64 [ %i.m, %bb.d ], [ %i.ap, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret i64 %.0
}

declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

declare nonnull ptr @rb_ascii8bit_encoding() local_unnamed_addr #2

declare i64 @rb_str_subseq(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_dir_getwd_ospath() local_unnamed_addr #2

declare i64 @rb_hash_new() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @realpath_rec(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 0, 3) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %7 = ptrtoaddr ptr %2 to i64
  %8 = alloca %struct.no_gvl_stat_data, align 8   ; 5 uses
  %9 = alloca %struct.no_gvl_stat_data, align 8   ; 5 uses
  %10 = alloca %struct.stat, align 8              ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #23 ; 2 uses
  %i.d = getelementptr i8, ptr %2, i64 %i.c       ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !14
  %i.f = tail call ptr @rb_enc_get(i64 noundef %i.e) #22 ; 3 uses
  %.pr.i = load i64, ptr @realpath_rec.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.g = tail call i64 @rb_intern2(ptr noundef nonnull @.str.124, i64 noundef 9) #22 ; 3 uses
  store i64 %i.g, ptr @realpath_rec.rbimpl_id, align 8, !tbaa !14
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !15

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %i.h = icmp eq i32 %5, 0                        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.k = icmp eq i64 %3, 4
  %i.l = inttoptr i64 %3 to ptr                   ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 24       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = icmp ne i32 %5, 2
  %i.p = icmp ne i32 %6, 0
  %or.cond = and i1 %i.o, %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.at, %rbimpl_intern_const.exit
  %.0123 = phi ptr [ %2, %rbimpl_intern_const.exit ], [ %.0124.lcssa, %bb.at ] ; 7 uses
  %.0 = phi i32 [ undef, %rbimpl_intern_const.exit ], [ %.8, %bb.at ] ; 7 uses
  %i.q = icmp ult ptr %.0123, %i.d
  br i1 %i.q, label %.lr.ph.i145, label %.loopexit

.lr.ph.i145:                                      ; preds = %bb.b, %bb.c
  %.09.i = phi ptr [ %i.u, %bb.c ], [ %.0123, %bb.b ] ; 4 uses
  %i.r = load i8, ptr %.09.i, align 1, !tbaa !36
  %.not.i146 = icmp eq i8 %i.r, 47
  br i1 %.not.i146, label %rb_enc_path_next.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i145
  %i.s = call i32 @rb_enc_mbclen(ptr noundef nonnull %.09.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f) #22
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %.09.i, i64 %i.t   ; 3 uses
  %i.v = icmp ult ptr %i.u, %i.d
  br i1 %i.v, label %.lr.ph.i145, label %rb_enc_path_next.exit, !llvm.loop !85

rb_enc_path_next.exit:                            ; preds = %.lr.ph.i145, %bb.c
  %.0.lcssa.i = phi ptr [ %.09.i, %.lr.ph.i145 ], [ %i.u, %bb.c ] ; 7 uses
  %i.w = ptrtoint ptr %.0.lcssa.i to i64          ; 2 uses
  %i.x = ptrtoint ptr %.0123 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp ult ptr %.0.lcssa.i, %i.d
  br i1 %i.z, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %rb_enc_path_next.exit
  %i.aa = getelementptr i8, ptr %.0.lcssa.i, i64 %i.c
  %scevgep = getelementptr i8, ptr %i.aa, i64 %7
  %i.ab = sub i64 0, %i.w
  %scevgep176 = getelementptr i8, ptr %scevgep, i64 %i.ab ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.0124164 = phi ptr [ %i.ae, %bb.d ], [ %.0.lcssa.i, %.lr.ph.preheader ] ; 3 uses
  %i.ac = load i8, ptr %.0124164, align 1, !tbaa !36
  %i.ad = icmp eq i8 %i.ac, 47
  br i1 %i.ad, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.ae = getelementptr i8, ptr %.0124164, i64 1  ; 2 uses
  %exitcond.not = icmp eq ptr %i.ae, %scevgep176
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !218

.critedge:                                        ; preds = %.lr.ph, %bb.d, %rb_enc_path_next.exit
  %.0124.lcssa = phi ptr [ %.0.lcssa.i, %rb_enc_path_next.exit ], [ %scevgep176, %bb.d ], [ %.0124164, %.lr.ph ]
  switch i64 %i.y, label %bb.l [
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.e:                                             ; preds = %.critedge
  %i.af = load i8, ptr %.0123, align 1, !tbaa !36
  %i.ag = icmp eq i8 %i.af, 46
  br i1 %i.ag, label %bb.at, label %bb.l

bb.f:                                             ; preds = %.critedge
  %i.ah = load i8, ptr %.0123, align 1, !tbaa !36
  %i.ai = icmp eq i8 %i.ah, 46
  br i1 %i.ai, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr i8, ptr %.0123, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !36
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.am = load i64, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.an = load i64, ptr %1, align 8, !tbaa !14
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !90 ; 2 uses
  %i.ar = icmp slt i64 %i.am, %i.aq
  br i1 %i.ar, label %bb.i, label %bb.at

bb.i:                                             ; preds = %bb.h
  %i.as = load i64, ptr %i.ao, align 8, !tbaa !11
  %i.at = and i64 %i.as, 8192
  %.not.i147 = icmp eq i64 %i.at, 0
  %i.au = getelementptr i8, ptr %i.ao, i64 24     ; 2 uses
  br i1 %.not.i147, label %RSTRING_PTR.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !36
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.i, %bb.j
  %i.aw = phi ptr [ %i.av, %bb.j ], [ %i.au, %bb.i ] ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.am  ; 3 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.aq  ; 5 uses
  %i.az = icmp ult ptr %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.i148, label %rb_enc_path_last_separator.exit

.lr.ph.i148:                                      ; preds = %RSTRING_PTR.exit, %.critedge.thread.i
  %.01627.i = phi ptr [ %.2.i, %.critedge.thread.i ], [ %i.ax, %RSTRING_PTR.exit ] ; 5 uses
  %.01726.i = phi ptr [ %.219.i, %.critedge.thread.i ], [ null, %RSTRING_PTR.exit ] ; 3 uses
  %i.ba = load i8, ptr %.01627.i, align 1, !tbaa !36
  %i.bb = icmp eq i8 %i.ba, 47
  br i1 %i.bb, label %.preheader.i.preheader, label %bb.k

.preheader.i.preheader:                           ; preds = %.lr.ph.i148
  %.1.i216 = getelementptr i8, ptr %.01627.i, i64 1 ; 2 uses
  %i.bc = icmp ult ptr %.1.i216, %i.ay
  br i1 %i.bc, label %.lr.ph218, label %rb_enc_path_last_separator.exit

.preheader.i:                                     ; preds = %.lr.ph218
  %.1.i = getelementptr i8, ptr %.1.i217, i64 1   ; 2 uses
  %i.bd = icmp ult ptr %.1.i, %i.ay
  br i1 %i.bd, label %.lr.ph218, label %rb_enc_path_last_separator.exit, !llvm.loop !86

.lr.ph218:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i217 = phi ptr [ %.1.i, %.preheader.i ], [ %.1.i216, %.preheader.i.preheader ] ; 3 uses
  %i.be = load i8, ptr %.1.i217, align 1, !tbaa !36
  %i.bf = icmp eq i8 %i.be, 47
  br i1 %i.bf, label %.preheader.i, label %.critedge.thread.i, !llvm.loop !86

bb.k:                                             ; preds = %.lr.ph.i148
  %i.bg = call i32 @rb_enc_mbclen(ptr noundef nonnull %.01627.i, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.f) #22
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr i8, ptr %.01627.i, i64 %i.bh
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.lr.ph218, %bb.k
  %.219.i = phi ptr [ %.01726.i, %bb.k ], [ %.01627.i, %.lr.ph218 ] ; 2 uses
  %.2.i = phi ptr [ %i.bi, %bb.k ], [ %.1.i217, %.lr.ph218 ] ; 2 uses
  %i.bj = icmp ult ptr %.2.i, %i.ay
  br i1 %i.bj, label %.lr.ph.i148, label %rb_enc_path_last_separator.exit, !llvm.loop !87

rb_enc_path_last_separator.exit:                  ; preds = %.critedge.thread.i, %.preheader.i.preheader, %.preheader.i, %RSTRING_PTR.exit
  %.01725.i = phi ptr [ %.01726.i, %.preheader.i ], [ null, %RSTRING_PTR.exit ], [ %.219.i, %.critedge.thread.i ], [ %.01726.i, %.preheader.i.preheader ] ; 2 uses
  %.not142 = icmp eq ptr %.01725.i, null
  %i.bk = ptrtoint ptr %.01725.i to i64
  %i.bl = ptrtoint ptr %i.ax to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = select i1 %.not142, i64 0, i64 %i.bm
  %i.bo = load i64, ptr %1, align 8, !tbaa !14
  %i.bp = load i64, ptr %0, align 8, !tbaa !14
  %i.bq = add i64 %i.bn, %i.bp
  %i.br = call i64 @rb_str_resize(i64 noundef %i.bo, i64 noundef %i.bq) #22 ; 0 uses
  br label %bb.at

bb.l:                                             ; preds = %bb.e, %.critedge, %bb.g, %bb.f
  %i.bs = load i64, ptr %1, align 8, !tbaa !14
  %i.bt = call i64 @rb_str_dup(i64 noundef %i.bs) #22 ; 14 uses
  %i.bu = load i64, ptr %0, align 8, !tbaa !14
  %i.bv = inttoptr i64 %i.bt to ptr               ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !90
  %i.by = icmp slt i64 %i.bu, %i.bx
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = call i64 @rb_str_cat(i64 noundef %i.bt, ptr noundef nonnull @.str.67, i64 noundef 1) #22 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = call i64 @rb_str_cat(i64 noundef %i.bt, ptr noundef nonnull %.0123, i64 noundef %i.y) #22 ; 0 uses
  %i.cb = call i64 @rb_hash_aref(i64 noundef %4, i64 noundef %i.bt) #22 ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 4
  br i1 %i.cc, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = call i64 @rb_id2sym(i64 noundef %.lcssa.i) #22
  %i.ce = icmp eq i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.p, label %bb.r
end_hunk_2
