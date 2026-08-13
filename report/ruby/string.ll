inline.NumInlined: 2336
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@enc_str_scrub:bb.a
  %i.ax = getelementptr i8, ptr %.02639.i, i64 %i.aw
  %.pre460 = ptrtoint ptr %i.ad to i64
  br label %search_nonascii.exit

bb.p:                                             ; preds = %.lr.ph.i
  %i.ay = getelementptr i8, ptr %.02639.i, i64 8  ; 3 uses
  %i.az = icmp ult ptr %i.ay, %i.ar
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !37

._crit_edge.i:                                    ; preds = %bb.p, %bb.n
  %.026.lcssa.i = phi ptr [ %i.ac, %bb.n ], [ %i.ay, %bb.p ]
  %i.ba = ptrtoint ptr %i.ad to i64               ; 9 uses
  %i.bb = ptrtoint ptr %.026.lcssa.i to i64
  %i.bc = sub i64 %i.ba, %i.bb
  switch i64 %i.bc, label %bb.q [
    i64 7, label %bb.r
    i64 6, label %bb.s
    i64 5, label %bb.t
    i64 4, label %bb.u
    i64 3, label %bb.v
    i64 2, label %bb.w
    i64 1, label %bb.x
    i64 0, label %bb.y
  ]

bb.q:                                             ; preds = %._crit_edge.i
  unreachable

bb.r:                                             ; preds = %._crit_edge.i
  %i.bd = load i8, ptr %i.ar, align 1, !tbaa !20
  %.not.i312 = icmp sgt i8 %i.bd, -1
  br i1 %.not.i312, label %bb.s, label %search_nonascii.exit

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  %i.be = getelementptr i8, ptr %i.ad, i64 -6     ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !20
  %.not29.i = icmp sgt i8 %i.bf, -1
  br i1 %.not29.i, label %bb.t, label %search_nonascii.exit

bb.t:                                             ; preds = %bb.s, %._crit_edge.i
  %i.bg = getelementptr i8, ptr %i.ad, i64 -5     ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !20
  %.not30.i = icmp sgt i8 %i.bh, -1
  br i1 %.not30.i, label %bb.u, label %search_nonascii.exit

bb.u:                                             ; preds = %bb.t, %._crit_edge.i
  %i.bi = getelementptr i8, ptr %i.ad, i64 -4     ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !20
  %.not31.i = icmp sgt i8 %i.bj, -1
  br i1 %.not31.i, label %bb.v, label %search_nonascii.exit

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  %i.bk = getelementptr i8, ptr %i.ad, i64 -3     ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !20
  %.not32.i = icmp sgt i8 %i.bl, -1
  br i1 %.not32.i, label %bb.w, label %search_nonascii.exit

bb.w:                                             ; preds = %bb.v, %._crit_edge.i
  %i.bm = getelementptr i8, ptr %i.ad, i64 -2     ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20
  %.not33.i = icmp sgt i8 %i.bn, -1
  br i1 %.not33.i, label %bb.x, label %search_nonascii.exit

bb.x:                                             ; preds = %bb.w, %._crit_edge.i
  %i.bo = getelementptr i8, ptr %i.ad, i64 -1     ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !20
  %.not34.i = icmp sgt i8 %i.bp, -1
  br i1 %.not34.i, label %bb.y, label %search_nonascii.exit

bb.y:                                             ; preds = %bb.x, %._crit_edge.i
  br label %search_nonascii.exit

search_nonascii.exit:                             ; preds = %bb.o, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.pre-phi = phi i64 [ %.pre460, %bb.o ], [ %i.ba, %bb.r ], [ %i.ba, %bb.s ], [ %i.ba, %bb.t ], [ %i.ba, %bb.u ], [ %i.ba, %bb.v ], [ %i.ba, %bb.w ], [ %i.ba, %bb.x ], [ %i.ba, %bb.y ] ; 3 uses
  %.2.i = phi ptr [ %i.ax, %bb.o ], [ %i.ar, %bb.r ], [ %i.be, %bb.s ], [ %i.bg, %bb.t ], [ %i.bi, %bb.u ], [ %i.bk, %bb.v ], [ %i.bm, %bb.w ], [ %i.bo, %bb.x ], [ null, %bb.y ] ; 2 uses
  %.not290 = icmp eq ptr %.2.i, null
  %spec.select = select i1 %.not290, ptr %i.ad, ptr %.2.i
  %i.bq = getelementptr i8, ptr %0, i64 16
  %i.br = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 4 uses
  %.not291 = icmp eq ptr %.0249, null             ; 2 uses
  %i.bs = icmp eq i64 %.1247, 0                   ; 2 uses
  %i.bt = icmp slt i64 %.1247, 0                  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.ad, i64 -6     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ad, i64 -5     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ad, i64 -4     ; 2 uses
  %i.bx = getelementptr i8, ptr %i.ad, i64 -3     ; 2 uses
  %i.by = getelementptr i8, ptr %i.ad, i64 -2     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.ad, i64 -1     ; 2 uses
  br label %.outer

.outer:                                           ; preds = %search_nonascii.exit336, %search_nonascii.exit
  %.1260.ph = phi ptr [ %.2.i325, %search_nonascii.exit336 ], [ %spec.select, %search_nonascii.exit ] ; 6 uses
  %.0251.ph = phi ptr [ %i.es, %search_nonascii.exit336 ], [ %i.ac, %search_nonascii.exit ] ; 8 uses
  %.0237.ph = phi i64 [ %.1238, %search_nonascii.exit336 ], [ 4, %search_nonascii.exit ] ; 7 uses
  %.0225.ph = phi i32 [ %spec.select299, %search_nonascii.exit336 ], [ 1048576, %search_nonascii.exit ] ; 3 uses
  %i.ca = icmp ult ptr %.1260.ph, %i.ad
  br i1 %i.ca, label %.lr.ph564.peel, label %.thread381

.lr.ph564.peel:                                   ; preds = %.outer
  %i.cb = tail call i32 @rb_enc_precise_mbclen(ptr noundef %.1260.ph, ptr noundef nonnull %i.ad, ptr noundef %0) #28 ; 3 uses
  %i.cc = icmp slt i32 %i.cb, -1
  br i1 %i.cc, label %.thread381, label %bb.z

bb.z:                                             ; preds = %.lr.ph564.peel
  %i.cd = icmp sgt i32 %i.cb, 0
  br i1 %i.cd, label %select.unfold.peel, label %.loopexit604

select.unfold.peel:                               ; preds = %bb.z
  %i.ce = zext nneg i32 %i.cb to i64
  %i.cf = getelementptr i8, ptr %.1260.ph, i64 %i.ce ; 3 uses
  %i.cg = icmp ult ptr %i.cf, %i.ad
  br i1 %i.cg, label %.lr.ph564, label %.thread381

.lr.ph564:                                        ; preds = %select.unfold.peel, %select.unfold
  %.1260562 = phi ptr [ %i.fl, %select.unfold ], [ %i.cf, %select.unfold.peel ] ; 4 uses
  %i.ch = tail call i32 @rb_enc_precise_mbclen(ptr noundef %.1260562, ptr noundef nonnull %i.ad, ptr noundef %0) #28 ; 3 uses
  %i.ci = icmp slt i32 %i.ch, -1
  br i1 %i.ci, label %.thread381, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph564
  %i.cj = icmp sgt i32 %i.ch, 0
  br i1 %i.cj, label %select.unfold, label %.loopexit604

.loopexit604:                                     ; preds = %bb.aa, %bb.z
  %.0225563.lcssa583 = phi i32 [ %.0225.ph, %bb.z ], [ 2097152, %bb.aa ]
  %.1260562.lcssa582 = phi ptr [ %.1260.ph, %bb.z ], [ %.1260562, %bb.aa ] ; 6 uses
  %.val307 = load i32, ptr %i.bq, align 8, !tbaa !56
  %i.ck = sext i32 %.val307 to i64
  %i.cl = icmp eq i64 %.0237.ph, 4
  br i1 %i.cl, label %bb.ab, label %rb_str_buf_new.exit

bb.ab:                                            ; preds = %.loopexit604
  %i.cm = load i64, ptr %i.w, align 8, !tbaa !14  ; 3 uses
  %i.cn = add i64 %i.cm, 25
  %spec.store.select.i.i.i = tail call noundef range(i64 40, 0) i64 @llvm.umax.i64(i64 %i.cn, i64 40) ; 2 uses
  %i.co = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %spec.store.select.i.i.i) #28
  %i.cp = load i64, ptr @rb_cString, align 8, !tbaa !27 ; 2 uses
  br i1 %i.co, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cq = load ptr, ptr %i.br, align 8, !tbaa !40
  store volatile ptr %i.cq, ptr %i.h, align 8, !tbaa !40
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.h, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cr = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.cp, i64 noundef 5, i32 noundef 0, i64 noundef %spec.store.select.i.i.i) #28 ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  store i64 0, ptr %i.ct, align 8, !tbaa !14
  %i.cu = getelementptr i8, ptr %i.cs, i64 24
  store i8 0, ptr %i.cu, align 8, !tbaa !20
  br label %rb_str_buf_new.exit

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cv = load ptr, ptr %i.br, align 8, !tbaa !40
  store volatile ptr %i.cv, ptr %i.g, align 8, !tbaa !40
  %.0..0..0..0..0..0..0..0..0..0..i.i10.i = load volatile ptr, ptr %i.g, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cw = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i10.i, i64 noundef %i.cp, i64 noundef 8197, i32 noundef 0, i64 noundef 40) #28 ; 2 uses
  %i.cx = inttoptr i64 %i.cw to ptr               ; 3 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 16, i1 false)
  %i.cz = getelementptr i8, ptr %i.cx, i64 24
  %i.da = getelementptr i8, ptr %i.cx, i64 32
  store i64 %i.cm, ptr %i.da, align 8, !tbaa !20
  %i.db = add i64 %i.cm, 1
  %i.dc = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.db, i64 noundef 1) #33 ; 2 uses
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !20
  store i8 0, ptr %i.dc, align 1, !tbaa !20
  br label %rb_str_buf_new.exit

rb_str_buf_new.exit:                              ; preds = %bb.ad, %bb.ac, %.loopexit604
  %.1238 = phi i64 [ %.0237.ph, %.loopexit604 ], [ %i.cr, %bb.ac ], [ %i.cw, %bb.ad ] ; 7 uses
  %i.dd = icmp ugt ptr %.1260562.lcssa582, %.0251.ph
  %i.de = ptrtoint ptr %.1260562.lcssa582 to i64  ; 2 uses
  br i1 %i.dd, label %bb.ae, label %rb_str_cat.exit

bb.ae:                                            ; preds = %rb_str_buf_new.exit
  %i.df = ptrtoint ptr %.0251.ph to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = icmp slt i64 %i.dg, 0
  br i1 %i.dh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.di = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.di, ptr noundef nonnull @.str.17) #30
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dj = tail call fastcc i64 @str_buf_cat4(i64 noundef %.1238, ptr noundef %.0251.ph, i64 noundef %i.dg, i1 noundef zeroext false) ; 0 uses
  br label %rb_str_cat.exit

rb_str_cat.exit:                                  ; preds = %rb_str_buf_new.exit, %bb.ag
  %i.dk = sub i64 %.pre-phi, %i.de
  %spec.select297 = tail call i64 @llvm.smin.i64(i64 %i.dk, i64 %i.ck) ; 2 uses
  %i.dl = icmp slt i64 %spec.select297, 3
  br i1 %i.dl, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %rb_str_cat.exit, %bb.ah
  %.1229452.in = phi i64 [ %.1229452, %bb.ah ], [ %spec.select297, %rb_str_cat.exit ] ; 2 uses
  %.1229452 = add nsw i64 %.1229452.in, -1        ; 3 uses
  %i.dm = getelementptr i8, ptr %.1260562.lcssa582, i64 %.1229452
  %i.dn = tail call i32 @rb_enc_precise_mbclen(ptr noundef %.1260562.lcssa582, ptr noundef %i.dm, ptr noundef %0) #28 ; 2 uses
  %i.do = icmp slt i32 %i.dn, -1
  br i1 %i.do, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %.preheader
  %i.dp = icmp eq i32 %i.dn, -1
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = icmp samesign ugt i64 %.1229452.in, 3
  br i1 %i.dq, label %.preheader, label %.loopexit, !llvm.loop !169

.loopexit:                                        ; preds = %bb.ah, %.preheader, %rb_str_cat.exit
  %.2230 = phi i64 [ 1, %rb_str_cat.exit ], [ %.1229452, %.preheader ], [ 1, %bb.ah ] ; 2 uses
  br i1 %.not291, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  br i1 %i.bs, label %rb_str_cat.exit316, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.bt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dr = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dr, ptr noundef nonnull @.str.17) #30
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.ds = tail call fastcc i64 @str_buf_cat4(i64 noundef %.1238, ptr noundef nonnull %.0249, i64 noundef %.1247, i1 noundef zeroext false) ; 0 uses
  br label %rb_str_cat.exit316

bb.am:                                            ; preds = %.loopexit
  %i.dt = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.du = tail call fastcc noundef i64 @str_enc_new(i64 noundef %i.dt, ptr noundef readonly %.1260562.lcssa582, i64 noundef %.2230, ptr noundef %0)
  %i.dv = tail call i64 @rb_yield(i64 noundef %i.du) #28
  %i.dw = load i64, ptr %i.v, align 8, !tbaa !11
  %i.dx = and i64 %i.dw, 8192
  %.not.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dy = load ptr, ptr %i.aa, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.an, %bb.am
  %i.dz = phi ptr [ %i.dy, %bb.an ], [ %i.aa, %bb.am ]
  %.not.i317 = icmp eq ptr %i.dz, %i.ac
  br i1 %.not.i317, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %RSTRING_PTR.exit.i
  %i.ea = load i64, ptr %i.w, align 8, !tbaa !14
  %.not3.i318 = icmp eq i64 %i.ea, %i.x
  br i1 %.not3.i318, label %str_mod_check.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %RSTRING_PTR.exit.i
  %i.eb = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.eb, ptr noundef nonnull @.str.206) #30
  unreachable

str_mod_check.exit:                               ; preds = %bb.ao
  %i.ec = tail call fastcc i64 @str_compat_and_valid(i64 noundef %i.dv, ptr noundef %0)
  %i.ed = inttoptr i64 %i.ec to ptr               ; 4 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !11 ; 2 uses
  %i.ef = and i64 %i.ee, 8192
  %.not.i319 = icmp eq i64 %i.ef, 0
  %i.eg = getelementptr i8, ptr %i.ed, i64 24     ; 2 uses
  br i1 %.not.i319, label %RSTRING_PTR.exit320, label %bb.aq

bb.aq:                                            ; preds = %str_mod_check.exit
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !20
  br label %RSTRING_PTR.exit320

RSTRING_PTR.exit320:                              ; preds = %str_mod_check.exit, %bb.aq
  %i.ei = phi ptr [ %i.eh, %bb.aq ], [ %i.eg, %str_mod_check.exit ]
  %i.ej = getelementptr i8, ptr %i.ed, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !14 ; 3 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %rb_str_cat.exit322, label %bb.ar

bb.ar:                                            ; preds = %RSTRING_PTR.exit320
  %i.em = icmp slt i64 %i.ek, 0
  br i1 %i.em, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.en = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.en, ptr noundef nonnull @.str.17) #30
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.eo = tail call fastcc i64 @str_buf_cat4(i64 noundef %.1238, ptr noundef %i.ei, i64 noundef %i.ek, i1 noundef zeroext false) ; 0 uses
  %.pre = load i64, ptr %i.ed, align 8, !tbaa !11
  br label %rb_str_cat.exit322

rb_str_cat.exit322:                               ; preds = %RSTRING_PTR.exit320, %bb.at
  %i.ep = phi i64 [ %i.ee, %RSTRING_PTR.exit320 ], [ %.pre, %bb.at ]
  %i.eq = and i64 %i.ep, 3145728
  %i.er = icmp eq i64 %i.eq, 2097152
  br label %rb_str_cat.exit316

rb_str_cat.exit316:                               ; preds = %bb.al, %bb.ai, %rb_str_cat.exit322
  %.sink = phi i1 [ %i.er, %rb_str_cat.exit322 ], [ %.0231, %bb.ai ], [ %.0231, %bb.al ]
  %spec.select299 = select i1 %.sink, i32 2097152, i32 %.0225563.lcssa583 ; 4 uses
  %i.es = getelementptr i8, ptr %.1260562.lcssa582, i64 %.2230 ; 7 uses
  %i.et = icmp ult ptr %i.es, %i.ar
  br i1 %i.et, label %.lr.ph.i333, label %._crit_edge.i323

.lr.ph.i333:                                      ; preds = %rb_str_cat.exit316, %bb.av
  %.02639.i334 = phi ptr [ %i.ez, %bb.av ], [ %i.es, %rb_str_cat.exit316 ] ; 3 uses
  %i.eu = load i64, ptr %.02639.i334, align 1
  %i.ev = and i64 %i.eu, -9187201950435737472     ; 2 uses
  %.not35.i335 = icmp eq i64 %i.ev, 0
  br i1 %.not35.i335, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i333
  %i.ew = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, -9187201950435737471) %i.ev, i1 true)
  %i.ex = lshr i64 %i.ew, 3
  %i.ey = getelementptr i8, ptr %.02639.i334, i64 %i.ex
  br label %search_nonascii.exit336

bb.av:                                            ; preds = %.lr.ph.i333
  %i.ez = getelementptr i8, ptr %.02639.i334, i64 8 ; 3 uses
  %i.fa = icmp ult ptr %i.ez, %i.ar
  br i1 %i.fa, label %.lr.ph.i333, label %._crit_edge.i323, !llvm.loop !37

._crit_edge.i323:                                 ; preds = %bb.av, %rb_str_cat.exit316
  %.026.lcssa.i324 = phi ptr [ %i.es, %rb_str_cat.exit316 ], [ %i.ez, %bb.av ]
  %i.fb = ptrtoint ptr %.026.lcssa.i324 to i64
  %i.fc = sub i64 %.pre-phi, %i.fb
  switch i64 %i.fc, label %bb.aw [
    i64 7, label %bb.ax
    i64 6, label %bb.ay
    i64 5, label %bb.az
    i64 4, label %bb.ba
    i64 3, label %bb.bb
    i64 2, label %bb.bc
    i64 1, label %bb.bd
    i64 0, label %.thread381
  ]

bb.aw:                                            ; preds = %._crit_edge.i323
  unreachable

bb.ax:                                            ; preds = %._crit_edge.i323
  %i.fd = load i8, ptr %i.ar, align 1, !tbaa !20
  %.not.i332 = icmp sgt i8 %i.fd, -1
  br i1 %.not.i332, label %bb.ay, label %search_nonascii.exit336

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i323
  %i.fe = load i8, ptr %i.bu, align 1, !tbaa !20
  %.not29.i331 = icmp sgt i8 %i.fe, -1
  br i1 %.not29.i331, label %bb.az, label %search_nonascii.exit336

bb.az:                                            ; preds = %bb.ay, %._crit_edge.i323
  %i.ff = load i8, ptr %i.bv, align 1, !tbaa !20
  %.not30.i330 = icmp sgt i8 %i.ff, -1
  br i1 %.not30.i330, label %bb.ba, label %search_nonascii.exit336

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i323
  %i.fg = load i8, ptr %i.bw, align 1, !tbaa !20
  %.not31.i329 = icmp sgt i8 %i.fg, -1
  br i1 %.not31.i329, label %bb.bb, label %search_nonascii.exit336

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.i323
  %i.fh = load i8, ptr %i.bx, align 1, !tbaa !20
  %.not32.i328 = icmp sgt i8 %i.fh, -1
  br i1 %.not32.i328, label %bb.bc, label %search_nonascii.exit336

bb.bc:                                            ; preds = %bb.bb, %._crit_edge.i323
  %i.fi = load i8, ptr %i.by, align 1, !tbaa !20
  %.not33.i327 = icmp sgt i8 %i.fi, -1
  br i1 %.not33.i327, label %bb.bd, label %search_nonascii.exit336

bb.bd:                                            ; preds = %bb.bc, %._crit_edge.i323
  %i.fj = load i8, ptr %i.bz, align 1, !tbaa !20
  %.not34.i326 = icmp sgt i8 %i.fj, -1
  br i1 %.not34.i326, label %.thread381, label %search_nonascii.exit336

search_nonascii.exit336:                          ; preds = %bb.au, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd
  %.2.i325 = phi ptr [ %i.ey, %bb.au ], [ %i.bz, %bb.bd ], [ %i.ar, %bb.ax ], [ %i.bu, %bb.ay ], [ %i.bv, %bb.az ], [ %i.bw, %bb.ba ], [ %i.bx, %bb.bb ], [ %i.by, %bb.bc ] ; 2 uses
  %.not293.not.not = icmp eq ptr %.2.i325, null
  br i1 %.not293.not.not, label %.thread381, label %.outer

select.unfold:                                    ; preds = %bb.aa
  %i.fk = zext nneg i32 %i.ch to i64
  %i.fl = getelementptr i8, ptr %.1260562, i64 %i.fk ; 3 uses
  %i.fm = icmp ult ptr %i.fl, %i.ad
  br i1 %i.fm, label %.lr.ph564, label %.thread381, !llvm.loop !170

.thread381:                                       ; preds = %search_nonascii.exit336, %._crit_edge.i323, %bb.bd, %.outer, %select.unfold, %.lr.ph564, %.lr.ph564.peel, %select.unfold.peel
  %.5264 = phi ptr [ %.1260.ph, %.lr.ph564.peel ], [ %i.fl, %select.unfold ], [ %.1260562, %.lr.ph564 ], [ %i.cf, %select.unfold.peel ], [ %i.ad, %bb.bd ], [ %i.ad, %search_nonascii.exit336 ], [ %.1260.ph, %.outer ], [ %i.ad, %._crit_edge.i323 ] ; 6 uses
  %.3254 = phi ptr [ %.0251.ph, %select.unfold ], [ %.0251.ph, %select.unfold.peel ], [ %.0251.ph, %.lr.ph564.peel ], [ %.0251.ph, %.lr.ph564 ], [ %i.es, %bb.bd ], [ %i.es, %search_nonascii.exit336 ], [ %.0251.ph, %.outer ], [ %i.es, %._crit_edge.i323 ] ; 3 uses
  %.4241 = phi i64 [ %.0237.ph, %select.unfold ], [ %.0237.ph, %select.unfold.peel ], [ %.0237.ph, %.lr.ph564.peel ], [ %.0237.ph, %.lr.ph564 ], [ %.1238, %bb.bd ], [ %.1238, %search_nonascii.exit336 ], [ %.0237.ph, %.outer ], [ %.1238, %._crit_edge.i323 ] ; 2 uses
  %.4 = phi i32 [ %.0225.ph, %.lr.ph564.peel ], [ 2097152, %.lr.ph564 ], [ 2097152, %select.unfold ], [ 2097152, %select.unfold.peel ], [ %spec.select299, %bb.bd ], [ %spec.select299, %search_nonascii.exit336 ], [ %.0225.ph, %.outer ], [ %spec.select299, %._crit_edge.i323 ] ; 4 uses
  %i.fn = icmp eq i64 %.4241, 4
  br i1 %i.fn, label %bb.be, label %rb_str_buf_new.exit341

bb.be:                                            ; preds = %.thread381
  %i.fo = icmp eq ptr %.5264, %i.ad
  br i1 %i.fo, label %bb.bs, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fp = load i64, ptr %i.w, align 8, !tbaa !14  ; 3 uses
end_hunk_0
begin_hunk_1_@check_case_options:bb.a
  br i1 %i.r, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27
  %i.u = icmp eq i64 %i.t, %i.e
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = or disjoint i32 %2, 3145728
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.w = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.243) #30
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.x = icmp eq i32 %0, 2
  br i1 %i.x, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.y = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.242) #30
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.z = load i64, ptr @sym_ascii, align 8, !tbaa !27
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ab = or disjoint i32 %2, 4194304
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.ac = load i64, ptr @sym_fold, align 8, !tbaa !27
  %i.ad = icmp eq i64 %i.d, %i.ac
  br i1 %i.ad, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ae = and i32 %2, 24576
  %i.af = icmp eq i32 %i.ae, 16384
  br i1 %i.af, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ag = xor i32 %2, 540672
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ah = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.244) #30
  unreachable

bb.v:                                             ; preds = %bb.r
  %i.ai = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ai, ptr noundef nonnull @.str.245) #30
  unreachable

bb.w:                                             ; preds = %bb.g, %bb.e, %bb.t, %bb.q, %bb.j, %bb.l, %bb.a
  %.020 = phi i32 [ %2, %bb.a ], [ %i.m, %bb.g ], [ %i.g, %bb.e ], [ %i.v, %bb.l ], [ %i.q, %bb.j ], [ %i.ab, %bb.q ], [ %i.ag, %bb.t ]
  ret i32 %.020
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_str_ascii_casemap(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !11
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !45
  %i.k = getelementptr i8, ptr %i.j, i64 %i.d     ; 2 uses
  %i.l = icmp eq i64 %0, %1
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %RSTRING_END.exit
  %i.m = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11
  %i.o = and i64 %i.n, 8192
  %.not.i22 = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  br i1 %.not.i22, label %RSTRING_END.exit25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  br label %RSTRING_END.exit25

RSTRING_END.exit25:                               ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.q, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %i.s = getelementptr i8, ptr %i.m, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr i8, ptr %i.r, i64 %i.t
  br label %bb.f

bb.f:                                             ; preds = %RSTRING_END.exit, %RSTRING_END.exit25
  %.019 = phi ptr [ %i.u, %RSTRING_END.exit25 ], [ %i.k, %RSTRING_END.exit ]
  %.018 = phi ptr [ %i.r, %RSTRING_END.exit25 ], [ %i.j, %RSTRING_END.exit ]
  %i.v = call i32 @onigenc_ascii_only_case_map(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %i.k, ptr noundef %.018, ptr noundef %.019, ptr noundef %3) #28
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.247) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = load i64, ptr %i.b, align 8, !tbaa !11
  %i.z = trunc i64 %i.y to i32
  %i.aa = lshr i32 %i.z, 22
  %i.ab = and i32 %i.aa, 127                      ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 127
  br i1 %i.ac, label %bb.i, label %str_enc_copy.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %str_enc_copy.exit

str_enc_copy.exit:                                ; preds = %bb.h, %bb.i
  %.0.i.i = phi i32 [ %i.ad, %bb.i ], [ %i.ab, %bb.h ]
  call void @rb_enc_set_index(i64 noundef %1, i32 noundef %.0.i.i) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %str_enc_copy.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_str_casemap(i64 noundef %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.d = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.i = tail call fastcc i64 @str_duplicate(i64 noundef %i.h, i64 noundef %0)
  br label %str_enc_copy_direct.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.d, align 8, !tbaa !11
  %i.k = and i64 %i.j, 8192
  %.not.i = icmp eq i64 %i.k, 0
  %i.l = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 4 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !45
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f     ; 4 uses
  %i.p = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef null, ptr noundef nonnull @mapping_buffer_type) #28 ; 4 uses
  store i64 %i.p, ptr %i.b, align 8, !tbaa !27
  %i.q = icmp ult ptr %i.n, %i.o
  br i1 %i.q, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %RSTRING_END.exit
  %i.r = inttoptr i64 %i.p to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 32       ; 3 uses
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = getelementptr i8, ptr %2, i64 120
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.v = phi ptr [ %i.n, %.lr.ph ], [ %i.ao, %bb.g ]
  %.04562 = phi i32 [ 0, %.lr.ph ], [ %i.an, %bb.g ]
  %.04661 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.g ] ; 2 uses
  %.04760 = phi ptr [ %i.s, %.lr.ph ], [ %i.ad, %bb.g ]
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.t, %i.w
  %i.y = add i64 %.04661, 1                       ; 2 uses
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = add i64 %i.z, 20                        ; 2 uses
  %i.ab = add i64 %i.z, 44
  %i.ac = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.ab) #38 ; 6 uses
  store ptr %i.ac, ptr %.04760, align 8, !tbaa !238
  %i.ad = getelementptr i8, ptr %i.ac, i64 16     ; 2 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !238
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !27
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !240
  %i.af = getelementptr i8, ptr %i.ac, i64 24     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.aa
  %i.ah = call i32 %i.ae(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.o, ptr noundef %i.af, ptr noundef %i.ag, ptr noundef %2) #28 ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !43
  store ptr null, ptr %i.s, align 8, !tbaa !43
  call void @mapping_buffer_free(ptr noundef %i.aj)
  %i.ak = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ak, ptr noundef nonnull @.str.247) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = getelementptr i8, ptr %i.ac, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !27
  %i.an = add i32 %i.ah, %.04562                  ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.ap = icmp ult ptr %i.ao, %i.o
  br i1 %i.ap, label %bb.e, label %._crit_edge, !llvm.loop !241

._crit_edge:                                      ; preds = %bb.g
  %i.aq = icmp eq i64 %.04661, 0
  %i.ar = sext i32 %i.an to i64                   ; 2 uses
  br i1 %i.aq, label %bb.h, label %._crit_edge.thread

bb.h:                                             ; preds = %._crit_edge
  %i.as = getelementptr i8, ptr %i.ac, i64 24
  %i.at = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.au = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.av = call fastcc noundef i64 @str_enc_new(i64 noundef %i.at, ptr noundef readonly %i.as, i64 noundef %i.ar, ptr noundef nonnull %i.au)
  %.pre74 = inttoptr i64 %i.p to ptr
  br label %.loopexit

._crit_edge.thread:                               ; preds = %RSTRING_END.exit, %._crit_edge
  %.045.lcssa86 = phi i64 [ %i.ar, %._crit_edge ], [ 0, %RSTRING_END.exit ]
  %i.aw = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.ax = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.ay = call fastcc noundef i64 @str_enc_new(i64 noundef %i.aw, ptr noundef readonly null, i64 noundef %.045.lcssa86, ptr noundef nonnull %i.ax) ; 3 uses
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11
  %i.bb = and i64 %i.ba, 8192
  %.not.i53 = icmp eq i64 %i.bb, 0
  %i.bc = getelementptr i8, ptr %i.az, i64 24     ; 2 uses
  br i1 %.not.i53, label %RSTRING_PTR.exit54, label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !20
  br label %RSTRING_PTR.exit54

RSTRING_PTR.exit54:                               ; preds = %._crit_edge.thread, %bb.i
  %i.be = phi ptr [ %i.bd, %bb.i ], [ %i.bc, %._crit_edge.thread ]
  %i.bf = inttoptr i64 %i.p to ptr                ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %.165 = load ptr, ptr %i.bg, align 8, !tbaa !242 ; 2 uses
  %.not66 = icmp eq ptr %.165, null
  br i1 %.not66, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %RSTRING_PTR.exit54, %ruby_nonempty_memcpy.exit
  %.168 = phi ptr [ %.1, %ruby_nonempty_memcpy.exit ], [ %.165, %RSTRING_PTR.exit54 ] ; 3 uses
  %.04367 = phi ptr [ %i.bl, %ruby_nonempty_memcpy.exit ], [ %i.be, %RSTRING_PTR.exit54 ] ; 2 uses
  %i.bh = getelementptr i8, ptr %.168, i64 8      ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !27 ; 2 uses
  %.not.i55 = icmp eq i64 %i.bi, 0
  br i1 %.not.i55, label %ruby_nonempty_memcpy.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph69
  %i.bj = getelementptr i8, ptr %.168, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.04367, ptr noundef nonnull readonly align 1 %i.bj, i64 noundef range(i64 1, 0) %i.bi, i1 noundef false) #28
  %.pre = load i64, ptr %i.bh, align 8, !tbaa !27
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %.lr.ph69, %bb.j
  %i.bk = phi i64 [ 0, %.lr.ph69 ], [ %.pre, %bb.j ]
  %i.bl = getelementptr i8, ptr %.04367, i64 %i.bk
  %i.bm = getelementptr i8, ptr %.168, i64 16
  %.1 = load ptr, ptr %i.bm, align 8, !tbaa !242  ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %.loopexit, label %.lr.ph69, !llvm.loop !243

.loopexit:                                        ; preds = %ruby_nonempty_memcpy.exit, %RSTRING_PTR.exit54, %bb.h
  %.pre-phi = phi ptr [ %.pre74, %bb.h ], [ %i.bf, %RSTRING_PTR.exit54 ], [ %i.bf, %ruby_nonempty_memcpy.exit ]
  %.044 = phi i64 [ %i.av, %bb.h ], [ %i.ay, %RSTRING_PTR.exit54 ], [ %i.ay, %ruby_nonempty_memcpy.exit ] ; 4 uses
  %i.bn = getelementptr i8, ptr %.pre-phi, i64 32 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !43 ; 2 uses
  store ptr null, ptr %i.bn, align 8, !tbaa !43
  %.not6.i = icmp eq ptr %i.bo, null
  br i1 %.not6.i, label %mapping_buffer_free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %i.bo, %.loopexit ] ; 2 uses
  %i.bp = getelementptr i8, ptr %.07.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !238 ; 2 uses
  call void @ruby_xfree(ptr noundef nonnull %.07.i) #28
  %.not.i56 = icmp eq ptr %i.bq, null
  br i1 %.not.i56, label %mapping_buffer_free.exit, label %.lr.ph.i, !llvm.loop !244

mapping_buffer_free.exit:                         ; preds = %.lr.ph.i, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %i.b, ptr %i.c, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #28, !srcloc !245
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.bs = load volatile i64, ptr %i.br, align 8, !tbaa !27 ; 0 uses
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !11
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = lshr i32 %i.bu, 22
  %i.bw = and i32 %i.bv, 127                      ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 127
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %mapping_buffer_free.exit
  %i.by = call i32 @rb_enc_get_index(i64 noundef %0) #28
  call void @rb_enc_set_index(i64 noundef %.044, i32 noundef %i.by) #28
  br label %str_enc_copy_direct.exit

bb.l:                                             ; preds = %mapping_buffer_free.exit
  %i.bz = shl nuw nsw i32 %i.bw, 22
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = inttoptr i64 %.044 to ptr               ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !11
  %i.cd = and i64 %i.cc, -532676609
  %i.ce = or disjoint i64 %i.cd, %i.ca
  store i64 %i.ce, ptr %i.cb, align 8, !tbaa !11
  br label %str_enc_copy_direct.exit

str_enc_copy_direct.exit:                         ; preds = %bb.l, %bb.k, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ %.044, %bb.k ], [ %.044, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

declare i32 @onigenc_ascii_only_case_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define internal void @mapping_buffer_free(ptr noundef %0) #1 {
bb.a:
  %.not6 = icmp eq ptr %0, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.b, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %.07, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 2 uses
  tail call void @ruby_xfree(ptr noundef nonnull %.07) #28
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !244

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @rb_str_enumerate_lines(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 0, ptr %i.c, align 8, !tbaa !27
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.g = zext nneg i32 %0 to i64
  %i.h = getelementptr [8 x i8], ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call i32 @rb_keyword_given_p() #28
  %.not214 = icmp eq i32 %i.k, 0
  br i1 %.not214, label %.preheader217.thread271, label %.preheader217

bb.b:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.l = icmp slt i32 %0, 0
  br i1 %i.l, label %bb.c, label %.preheader217.thread

.preheader217:                                    ; preds = %bb.a
  %i.m = tail call i64 @rb_hash_dup(i64 noundef %i.j) #28 ; 2 uses
  %i.n = add nsw i32 %0, -1                       ; 2 uses
  %.not227 = icmp eq i32 %i.n, 0
  br i1 %.not227, label %.preheader217.thread, label %.preheader217.thread271

.preheader217.thread271:                          ; preds = %bb.a, %.preheader217
  %.1.i.ph276 = phi i32 [ %i.n, %.preheader217 ], [ %0, %bb.a ] ; 2 uses
  %.188.i.ph275 = phi i64 [ %i.m, %.preheader217 ], [ 4, %bb.a ]
  %i.o = load i64, ptr %1, align 8, !tbaa !27
  %i.p = icmp eq i32 %.1.i.ph276, 1
  br label %.preheader217.thread

.preheader217.thread:                             ; preds = %.preheader217, %bb.b, %.preheader217.thread271
  %.sink = phi i64 [ %i.o, %.preheader217.thread271 ], [ 4, %bb.b ], [ 4, %.preheader217 ] ; 2 uses
end_hunk_1
