inline.NumInlined: 579
inline.NumDeleted: 127
begin_hunk_0_@datetime_datetime_fromisoformat:bb.a
  br i1 %i.az, label %bb.p, label %bb.ay

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.au) #16, !inline_history !143
  br label %bb.ay

_sanitize_isoformat_str.exit.i:                   ; preds = %bb.m, %bb.l, %bb.k
  %.2.i.i = phi ptr [ %1, %bb.l ], [ %i.au, %bb.m ], [ %1, %bb.k ] ; 10 uses
  %i.ba = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %.2.i.i, ptr noundef nonnull %i.a) #16, !inline_history !143 ; 8 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_sanitize_isoformat_str.exit.i
  %i.bc = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !43
  %i.bd = call i32 @PyErr_ExceptionMatches(ptr noundef %i.bc) #16, !inline_history !143
  %.not54.i = icmp eq i32 %i.bd, 0
  br i1 %.not54.i, label %.thread81.i, label %.thread85.i

bb.r:                                             ; preds = %_sanitize_isoformat_str.exit.i
  %i.be = load i64, ptr %i.a, align 8, !tbaa !94  ; 8 uses
  %i.bf = icmp eq i64 %i.be, 7
  br i1 %i.bf, label %_find_isoformat_datetime_separator.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr i8, ptr %i.ba, i64 4
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !35
  switch i8 %i.bh, label %_find_isoformat_datetime_separator.exit.i [
    i8 45, label %bb.t
    i8 87, label %.preheader.i.i
  ]

.preheader.i.i:                                   ; preds = %bb.s
  %i.bi = icmp ugt i64 %i.be, 7
  br i1 %i.bi, label %.lr.ph.i.i, label %_find_isoformat_datetime_separator.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr i8, ptr %i.ba, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !35
  %i.bl = icmp eq i8 %i.bk, 87
  br i1 %i.bl, label %bb.u, label %_find_isoformat_datetime_separator.exit.i

bb.u:                                             ; preds = %bb.t
  %i.bm = icmp slt i64 %i.be, 8
  br i1 %i.bm, label %_find_isoformat_datetime_separator.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not21.i.i = icmp eq i64 %i.be, 8
  br i1 %.not21.i.i, label %_find_isoformat_datetime_separator.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr i8, ptr %i.ba, i64 8
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !35
  %i.bp = icmp eq i8 %i.bo, 45
  br i1 %i.bp, label %bb.x, label %_find_isoformat_datetime_separator.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bq = icmp eq i64 %i.be, 9
  br i1 %i.bq, label %_find_isoformat_datetime_separator.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = icmp samesign ugt i64 %i.be, 10
  br i1 %i.br, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr i8, ptr %i.ba, i64 10
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !35
  %i.bu = sext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -58
  %i.bw = icmp ult i32 %i.bv, -10
  br i1 %i.bw, label %bb.aa, label %_find_isoformat_datetime_separator.exit.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  br label %_find_isoformat_datetime_separator.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ab
  %.023.i.i = phi i64 [ %i.cc, %bb.ab ], [ 7, %.preheader.i.i ] ; 3 uses
  %i.bx = getelementptr i8, ptr %i.ba, i64 %.023.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !35
  %i.bz = sext i8 %i.by to i32
  %i.ca = add nsw i32 %i.bz, -58
  %i.cb = icmp ult i32 %i.ca, -10
  br i1 %i.cb, label %._crit_edge.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.cc = add nuw i64 %.023.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cc, %i.be
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !144

._crit_edge.i.i:                                  ; preds = %bb.ab, %.lr.ph.i.i
  %.0.lcssa.i.i = phi i64 [ %.023.i.i, %.lr.ph.i.i ], [ %i.be, %bb.ab ]
  %.0.lcssa.fr.i.i = freeze i64 %.0.lcssa.i.i     ; 3 uses
  %i.cd = icmp ult i64 %.0.lcssa.fr.i.i, 9
  %i.ce = and i64 %.0.lcssa.fr.i.i, 1
  %..i.i = add nuw nsw i64 %i.ce, 7
  %spec.select.i.i = select i1 %i.cd, i64 %.0.lcssa.fr.i.i, i64 %..i.i
  br label %_find_isoformat_datetime_separator.exit.i

_find_isoformat_datetime_separator.exit.i:        ; preds = %._crit_edge.i.i, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %.preheader.i.i, %bb.s, %bb.r
  %.1.i.i = phi i64 [ 10, %bb.t ], [ 7, %bb.r ], [ -1, %bb.u ], [ -1, %bb.x ], [ 10, %bb.aa ], [ 8, %bb.z ], [ 8, %bb.v ], [ 8, %bb.s ], [ 8, %bb.w ], [ %spec.select.i.i, %._crit_edge.i.i ], [ 7, %.preheader.i.i ] ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !7
  store i32 0, ptr %i.c, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  store i32 0, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.f, align 4, !tbaa !7
  store i32 0, ptr %i.g, align 4, !tbaa !7
  store i32 0, ptr %i.h, align 4, !tbaa !7
  store i32 0, ptr %i.i, align 4, !tbaa !7
  store i32 0, ptr %i.j, align 4, !tbaa !7
  %i.cf = call fastcc i32 @parse_isoformat_date(ptr noundef %i.ba, i64 noundef %.1.i.i, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d), !inline_history !143
  %.not.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i, label %bb.ac, label %.thread85.i

bb.ac:                                            ; preds = %_find_isoformat_datetime_separator.exit.i
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !94  ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, %.1.i.i
  br i1 %i.ch, label %bb.ad, label %.thread75.i

bb.ad:                                            ; preds = %bb.ac
  %i.ci = getelementptr i8, ptr %i.ba, i64 %.1.i.i ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !35  ; 3 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = and i8 %i.cj, -16
  %switch.selectcmp.i = icmp samesign ugt i8 %i.cj, -17
  %switch.select.i = select i1 %switch.selectcmp.i, i64 4, i64 2
  %switch.selectcmp117.i = icmp eq i8 %i.cl, -32
  %switch.select118.i = select i1 %switch.selectcmp117.i, i64 3, i64 %switch.select.i
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink.i = phi i64 [ %switch.select118.i, %bb.ae ], [ 1, %bb.ad ] ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ci, i64 %.sink.i
  %i.cn = add nsw i64 %.1.i.i, %.sink.i
  %i.co = sub nsw i64 %i.cg, %i.cn                ; 2 uses
  store i64 %i.co, ptr %i.a, align 8, !tbaa !94
  %i.cp = call fastcc i32 @parse_isoformat_time(ptr noundef %i.cm, i64 noundef %i.co, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j), !inline_history !143 ; 3 uses
  %i.cq = icmp eq i32 %i.cp, -6
  br i1 %i.cq, label %.thread81.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cr = icmp slt i32 %i.cp, 0
  br i1 %i.cr, label %.thread85.i, label %..thread75_crit_edge.i

..thread75_crit_edge.i:                           ; preds = %bb.ag
  %.pre.i = load i32, ptr %i.i, align 4, !tbaa !7
  %.pre87.i = load i32, ptr %i.j, align 4, !tbaa !7
  br label %.thread75.i

.thread75.i:                                      ; preds = %..thread75_crit_edge.i, %bb.ac
  %i.cs = phi i32 [ %.pre87.i, %..thread75_crit_edge.i ], [ 0, %bb.ac ]
  %i.ct = phi i32 [ %.pre.i, %..thread75_crit_edge.i ], [ 0, %bb.ac ]
  %.04477.i = phi i32 [ %i.cp, %..thread75_crit_edge.i ], [ 0, %bb.ac ]
  %i.cu = call fastcc ptr @tzinfo_from_isoformat_results(i32 noundef %.04477.i, i32 noundef %i.ct, i32 noundef %i.cs), !inline_history !143 ; 9 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.thread81.i, label %bb.ah

bb.ah:                                            ; preds = %.thread75.i
  %i.cw = load i32, ptr %i.e, align 4, !tbaa !7   ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 24
  %i.cy = load i32, ptr %i.c, align 4             ; 8 uses
  %i.cz = icmp slt i32 %i.cy, 13
  %or.cond.i = select i1 %i.cx, i1 %i.cz, i1 false
  %.pre88.i = load i32, ptr %i.b, align 4, !tbaa !7 ; 7 uses
  br i1 %or.cond.i, label %bb.ai, label %..thread78_crit_edge.i

..thread78_crit_edge.i:                           ; preds = %bb.ah
  %.pre89.i = load i32, ptr %i.d, align 4, !tbaa !7
  %.pre90.i = load i32, ptr %i.f, align 4, !tbaa !7
  %.pre92.i = load i32, ptr %i.g, align 4, !tbaa !7
  %.pre94.i = load i32, ptr %i.h, align 4, !tbaa !7
  br label %.thread78.i

bb.ai:                                            ; preds = %bb.ah
  %i.da = icmp eq i32 %i.cy, 2
  %i.db = and i32 %.pre88.i, 3
  %i.dc = icmp eq i32 %i.db, 0
  %or.cond.i.i = and i1 %i.da, %i.dc
  br i1 %or.cond.i.i, label %bb.aj, label %is_leap.exit.thread.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.dd = urem i32 %.pre88.i, 100
  %.not.i.i66.i = icmp ne i32 %i.dd, 0
  %i.de = urem i32 %.pre88.i, 400
  %.not.i67.i = icmp eq i32 %i.de, 0
  %or.cond8.i.i = or i1 %.not.i.i66.i, %.not.i67.i
  br i1 %or.cond8.i.i, label %days_in_month.exit.i, label %is_leap.exit.thread.i.i

is_leap.exit.thread.i.i:                          ; preds = %bb.aj, %bb.ai
  %i.df = sext i32 %i.cy to i64
  %i.dg = getelementptr [4 x i8], ptr @_days_in_month, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !7
  br label %days_in_month.exit.i

days_in_month.exit.i:                             ; preds = %is_leap.exit.thread.i.i, %bb.aj
  %.0.i.i = phi i32 [ %i.dh, %is_leap.exit.thread.i.i ], [ 29, %bb.aj ] ; 2 uses
  %i.di = load i32, ptr %i.d, align 4, !tbaa !7   ; 3 uses
  %.not53.i = icmp sgt i32 %i.di, %.0.i.i
  %.pre91.i = load i32, ptr %i.f, align 4, !tbaa !7 ; 2 uses
  %.pre93.i = load i32, ptr %i.g, align 4         ; 2 uses
  %.pre95.i = load i32, ptr %i.h, align 4         ; 2 uses
  br i1 %.not53.i, label %.thread78.i, label %bb.ak

bb.ak:                                            ; preds = %days_in_month.exit.i
  %i.dj = icmp eq i32 %.pre91.i, 0
  %i.dk = icmp eq i32 %.pre93.i, 0
  %or.cond3.i = select i1 %i.dj, i1 %i.dk, i1 false
  %i.dl = icmp eq i32 %.pre95.i, 0
  %or.cond5.i = select i1 %or.cond3.i, i1 %i.dl, i1 false
  br i1 %or.cond5.i, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.dm = add i32 %i.di, 1                        ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, %.0.i.i
  br i1 %i.dn, label %bb.am, label %.thread78.i

bb.am:                                            ; preds = %bb.al
  %i.do = add nsw i32 %i.cy, 1
  %i.dp = icmp sgt i32 %i.cy, 11                  ; 2 uses
  %spec.select.i = select i1 %i.dp, i32 1, i32 %i.do
  %i.dq = zext i1 %i.dp to i32
  %spec.select116.i = add i32 %.pre88.i, %i.dq
  br label %.thread78.i

.thread78.i:                                      ; preds = %bb.am, %bb.al, %days_in_month.exit.i, %..thread78_crit_edge.i
  %i.dr = phi i32 [ %.pre95.i, %days_in_month.exit.i ], [ 0, %bb.al ], [ %.pre94.i, %..thread78_crit_edge.i ], [ 0, %bb.am ] ; 2 uses
  %i.ds = phi i32 [ %.pre93.i, %days_in_month.exit.i ], [ 0, %bb.al ], [ %.pre92.i, %..thread78_crit_edge.i ], [ 0, %bb.am ] ; 2 uses
  %i.dt = phi i32 [ %.pre91.i, %days_in_month.exit.i ], [ 0, %bb.al ], [ %.pre90.i, %..thread78_crit_edge.i ], [ 0, %bb.am ] ; 2 uses
  %i.du = phi i32 [ 24, %days_in_month.exit.i ], [ 0, %bb.al ], [ %i.cw, %..thread78_crit_edge.i ], [ 0, %bb.am ] ; 2 uses
  %i.dv = phi i32 [ %i.di, %days_in_month.exit.i ], [ %i.dm, %bb.al ], [ %.pre89.i, %..thread78_crit_edge.i ], [ 1, %bb.am ] ; 2 uses
  %i.dw = phi i32 [ %i.cy, %days_in_month.exit.i ], [ %i.cy, %bb.al ], [ %i.cy, %..thread78_crit_edge.i ], [ %spec.select.i, %bb.am ] ; 2 uses
  %i.dx = phi i32 [ %.pre88.i, %days_in_month.exit.i ], [ %.pre88.i, %bb.al ], [ %.pre88.i, %..thread78_crit_edge.i ], [ %spec.select116.i, %bb.am ] ; 2 uses
  %i.dy = icmp eq ptr %0, @PyDateTime_DateTimeType
  br i1 %i.dy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread78.i
  %i.dz = call ptr @new_datetime_ex2(i32 noundef %i.dx, i32 noundef %i.dw, i32 noundef %i.dv, i32 noundef %i.du, i32 noundef %i.dt, i32 noundef %i.ds, i32 noundef %i.dr, ptr noundef nonnull %i.cu, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !145
  br label %new_datetime_subclass_ex.exit.i

bb.ao:                                            ; preds = %.thread78.i
  %i.ea = call ptr (ptr, i32, ptr, ...) @call_subclass_fold(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef %i.dx, i32 noundef %i.dw, i32 noundef %i.dv, i32 noundef %i.du, i32 noundef %i.dt, i32 noundef %i.ds, i32 noundef %i.dr, ptr noundef nonnull %i.cu), !inline_history !145
  br label %new_datetime_subclass_ex.exit.i

new_datetime_subclass_ex.exit.i:                  ; preds = %bb.ao, %bb.an
  %.0.i.i68.i = phi ptr [ %i.dz, %bb.an ], [ %i.ea, %bb.ao ] ; 3 uses
  %i.eb = load i32, ptr %i.cu, align 8, !tbaa !35 ; 2 uses
  %.not.i60.i = icmp sgt i32 %i.eb, -1
  br i1 %.not.i60.i, label %bb.ap, label %Py_DECREF.exit61.i

bb.ap:                                            ; preds = %new_datetime_subclass_ex.exit.i
  %i.ec = add nsw i32 %i.eb, -1                   ; 2 uses
  store i32 %i.ec, ptr %i.cu, align 8, !tbaa !35
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.aq, label %Py_DECREF.exit61.i

bb.aq:                                            ; preds = %bb.ap
  call void @_Py_Dealloc(ptr noundef nonnull %i.cu) #16, !inline_history !143
  br label %Py_DECREF.exit61.i

Py_DECREF.exit61.i:                               ; preds = %bb.aq, %bb.ap, %new_datetime_subclass_ex.exit.i
  %i.ee = load i32, ptr %.2.i.i, align 8, !tbaa !35 ; 2 uses
  %.not.i58.i = icmp sgt i32 %i.ee, -1
  br i1 %.not.i58.i, label %bb.ar, label %datetime_datetime_fromisoformat_impl.exit

bb.ar:                                            ; preds = %Py_DECREF.exit61.i
  %i.ef = add nsw i32 %i.ee, -1                   ; 2 uses
  store i32 %i.ef, ptr %.2.i.i, align 8, !tbaa !35
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.as, label %datetime_datetime_fromisoformat_impl.exit

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %.2.i.i) #16, !inline_history !143
  br label %datetime_datetime_fromisoformat_impl.exit

bb.at:                                            ; preds = %bb.ak
  %i.eh = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  call void @PyErr_SetString(ptr noundef %i.eh, ptr noundef nonnull @.str.176) #16, !inline_history !143
  %i.ei = load i32, ptr %i.cu, align 8, !tbaa !35 ; 2 uses
  %.not.i56.i = icmp sgt i32 %i.ei, -1
  br i1 %.not.i56.i, label %bb.au, label %Py_DECREF.exit57.i

bb.au:                                            ; preds = %bb.at
  %i.ej = add nsw i32 %i.ei, -1                   ; 2 uses
  store i32 %i.ej, ptr %i.cu, align 8, !tbaa !35
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.av, label %Py_DECREF.exit57.i

bb.av:                                            ; preds = %bb.au
  call void @_Py_Dealloc(ptr noundef nonnull %i.cu) #16, !inline_history !143
  br label %Py_DECREF.exit57.i

Py_DECREF.exit57.i:                               ; preds = %bb.av, %bb.au, %bb.at
  %i.el = load i32, ptr %.2.i.i, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.el, -1
  br i1 %.not.i.i, label %bb.aw, label %datetime_datetime_fromisoformat_impl.exit

bb.aw:                                            ; preds = %Py_DECREF.exit57.i
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %.2.i.i, align 8, !tbaa !35
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ax, label %datetime_datetime_fromisoformat_impl.exit

bb.ax:                                            ; preds = %bb.aw
  call void @_Py_Dealloc(ptr noundef nonnull %.2.i.i) #16, !inline_history !143
  br label %datetime_datetime_fromisoformat_impl.exit

.thread85.i:                                      ; preds = %bb.ag, %_find_isoformat_datetime_separator.exit.i, %bb.q
  %i.eo = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.ep = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.eo, ptr noundef nonnull @.str.105, ptr noundef nonnull %1) #16, !inline_history !143 ; 0 uses
  br label %.thread81.i

bb.ay:                                            ; preds = %bb.p, %bb.o, %bb.n, %.thread.i.i, %bb.c
  %i.eq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.er = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.eq, ptr noundef nonnull @.str.105, ptr noundef nonnull %1) #16, !inline_history !143 ; 0 uses
  br label %datetime_datetime_fromisoformat_impl.exit

.thread81.i:                                      ; preds = %.thread85.i, %.thread75.i, %bb.af, %bb.q
  %i.es = load i32, ptr %.2.i.i, align 8, !tbaa !35 ; 2 uses
  %.not.i.i70.i = icmp sgt i32 %i.es, -1
  br i1 %.not.i.i70.i, label %bb.az, label %datetime_datetime_fromisoformat_impl.exit

bb.az:                                            ; preds = %.thread81.i
  %i.et = add nsw i32 %i.es, -1                   ; 2 uses
  store i32 %i.et, ptr %.2.i.i, align 8, !tbaa !35
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ba, label %datetime_datetime_fromisoformat_impl.exit

bb.ba:                                            ; preds = %bb.az
  call void @_Py_Dealloc(ptr noundef nonnull %.2.i.i) #16, !inline_history !143
  br label %datetime_datetime_fromisoformat_impl.exit

datetime_datetime_fromisoformat_impl.exit:        ; preds = %Py_DECREF.exit61.i, %bb.ar, %bb.as, %Py_DECREF.exit57.i, %bb.aw, %bb.ax, %bb.ay, %.thread81.i, %bb.az, %bb.ba
  %.0.i = phi ptr [ null, %bb.ax ], [ %.0.i.i68.i, %bb.as ], [ %.0.i.i68.i, %Py_DECREF.exit61.i ], [ %.0.i.i68.i, %bb.ar ], [ null, %Py_DECREF.exit57.i ], [ null, %bb.aw ], [ null, %bb.ay ], [ null, %.thread81.i ], [ null, %bb.az ], [ null, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bb

bb.bb:                                            ; preds = %datetime_datetime_fromisoformat_impl.exit, %bb.b
  %.0 = phi ptr [ %.0.i, %datetime_datetime_fromisoformat_impl.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_getdate(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 25
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8
  %i.e = getelementptr i8, ptr %0, i64 26
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.d, %i.g
  %i.i = getelementptr i8, ptr %0, i64 27
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr i8, ptr %0, i64 28
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = zext i8 %i.m to i32
  %i.o = tail call ptr @new_date_ex(i32 noundef %i.h, i32 noundef %i.k, i32 noundef %i.n, ptr noundef nonnull @PyDateTime_DateType)
  ret ptr %i.o
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_gettime(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 29
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr i8, ptr %0, i64 30
  %i.e = load i8, ptr %i.d, align 1, !tbaa !35
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr i8, ptr %0, i64 31
  %i.h = load i8, ptr %i.g, align 1, !tbaa !35
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load i8, ptr %i.j, align 1, !tbaa !35
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = getelementptr i8, ptr %0, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = or disjoint i32 %i.q, %i.m
  %i.s = getelementptr i8, ptr %0, i64 34
  %i.t = load i8, ptr %i.s, align 1, !tbaa !35
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u
  %i.w = getelementptr i8, ptr %0, i64 35
  %i.x = load i8, ptr %i.w, align 1, !tbaa !52
  %i.y = zext i8 %i.x to i32
  %i.z = tail call ptr @new_time_ex2(i32 noundef %i.c, i32 noundef %i.f, i32 noundef %i.i, i32 noundef %i.v, ptr noundef nonnull @_Py_NoneStruct, i32 noundef %i.y, ptr noundef nonnull @PyDateTime_TimeType)
  ret ptr %i.z
end_hunk_0
