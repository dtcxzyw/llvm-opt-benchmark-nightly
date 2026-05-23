inline.NumInlined: 99
inline.NumDeleted: 26
begin_hunk_0_@_PyLong_FormatAdvancedWriter:bb.a
  br i1 %.not57, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @_PyLong_FormatWriter(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10, i32 noundef 0) #10
  br label %format_obj.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call ptr @PyObject_Str(ptr noundef nonnull %1) #10 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %format_obj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @_PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %i.e) #10 ; 3 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i.i, label %bb.f, label %format_obj.exit

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.e, align 8, !tbaa !15
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %format_obj.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #10
  br label %format_obj.exit

bb.h:                                             ; preds = %bb.a
  %i.k = call fastcc i32 @parse_internal_render_format_spec(ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %7, i8 noundef signext 100, i8 noundef signext 62)
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %format_obj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16   ; 7 uses
  switch i32 %i.m, label %bb.bk [
    i32 98, label %bb.j
    i32 99, label %bb.j
    i32 100, label %bb.j
    i32 111, label %bb.j
    i32 120, label %bb.j
    i32 88, label %bb.j
    i32 110, label %bb.j
    i32 101, label %bb.bj
    i32 69, label %bb.bj
    i32 102, label %bb.bj
    i32 70, label %bb.bj
    i32 103, label %bb.bj
    i32 71, label %bb.bj
    i32 37, label %bb.bj
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 127, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !29
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.13) #10
  br label %Py_XDECREF.exit.i

bb.l:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  %.not98.i = icmp eq i32 %i.r, 0
  br i1 %.not98.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.s, ptr noundef nonnull @.str.14) #10
  br label %Py_XDECREF.exit.i

bb.n:                                             ; preds = %bb.l
  switch i32 %i.m, label %bb.x [
    i32 99, label %bb.o
    i32 98, label %bb.y
    i32 111, label %bb.v
    i32 120, label %bb.w
    i32 88, label %bb.w
  ]

bb.o:                                             ; preds = %bb.n
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !22
  %.not106.i = icmp eq i32 %i.u, 0
  br i1 %.not106.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str.15) #10
  br label %Py_XDECREF.exit.i

bb.q:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !26
  %.not107.i = icmp eq i32 %i.x, 0
  br i1 %.not107.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.y, ptr noundef nonnull @.str.16) #10
  br label %Py_XDECREF.exit.i

bb.s:                                             ; preds = %bb.q
  %i.z = tail call i64 @PyLong_AsLong(ptr noundef %1) #10 ; 3 uses
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ab = tail call ptr @PyErr_Occurred() #10
  %.not108.i = icmp eq ptr %i.ab, null
  br i1 %.not108.i, label %.thread.i, label %Py_XDECREF.exit.i

bb.u:                                             ; preds = %bb.s
  %or.cond.i = icmp ugt i64 %i.z, 1114111
  br i1 %or.cond.i, label %.thread.i, label %.thread

.thread.i:                                        ; preds = %bb.u, %bb.t
  %i.ac = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.17) #10
  br label %Py_XDECREF.exit.i

.thread:                                          ; preds = %bb.u
  %i.ad = trunc nuw nsw i64 %i.z to i32           ; 2 uses
  %i.ae = tail call ptr @PyUnicode_FromOrdinal(i32 noundef %i.ad) #10
  %i.af = tail call i32 @llvm.umax.i32(i32 %i.ad, i32 127)
  store i32 %i.af, ptr %i.a, align 4, !tbaa !7
  br label %bb.ap

bb.v:                                             ; preds = %bb.n
  br label %bb.y

bb.w:                                             ; preds = %bb.n, %bb.n
  br label %bb.y

bb.x:                                             ; preds = %bb.n
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.n
  %.071.i = phi i32 [ 10, %bb.x ], [ 16, %bb.w ], [ 8, %bb.v ], [ 2, %bb.n ] ; 2 uses
  %.070.i = phi i32 [ 0, %bb.x ], [ 2, %bb.w ], [ 2, %bb.v ], [ 2, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !22
  switch i32 %i.ah, label %bb.z [
    i32 43, label %bb.ad
    i32 32, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !28
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  switch i32 %i.m, label %bb.ab [
    i32 88, label %bb.ad
    i32 110, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !45
  %.not103.i = icmp eq i32 %i.am, 0
  br i1 %.not103.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.an = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.an, align 8, !tbaa !11
  %.not137.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not137.i, label %.thread114.i, label %bb.ad

.thread114.i:                                     ; preds = %bb.ac
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !26
  %i.aq = tail call i32 @_PyLong_FormatWriter(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %.071.i, i32 noundef %i.ap) #10
  br label %format_long_internal.exit

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.aa, %bb.z, %bb.y, %bb.y
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !26
  %.not105.i = icmp eq i32 %i.as, 0
  %narrow.i = select i1 %.not105.i, i32 0, i32 %.070.i
  %spec.select.i = zext nneg i32 %narrow.i to i64 ; 2 uses
  %i.at = tail call ptr @_PyLong_Format(ptr noundef %1, i32 noundef %.071.i) #10 ; 11 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %Py_XDECREF.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.av = getelementptr i8, ptr %i.at, i64 16
  %.val110.i = load i64, ptr %i.av, align 8, !tbaa !19
  %i.aw = getelementptr i8, ptr %i.at, i64 32
  %i.ax = load i32, ptr %i.aw, align 8            ; 5 uses
  %i.ay = and i32 %i.ax, 28
  %i.az = and i32 %i.ax, 32
  %.not.i19.i.i = icmp eq i32 %i.az, 0            ; 3 uses
  switch i32 %i.ay, label %bb.al [
    i32 4, label %bb.af
    i32 8, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae
  br i1 %.not.i19.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ba = and i32 %i.ax, 64
  %.not.i.i.i.i = icmp eq i32 %i.ba, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.at, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.bb = getelementptr i8, ptr %i.at, i64 56
  %.val4.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.ah, %bb.ag
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.ag ], [ %.val4.i.i.i, %bb.ah ]
  %i.bc = load i8, ptr %.0.i.i.i, align 1, !tbaa !15
  %i.bd = zext i8 %i.bc to i32
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ae
  br i1 %.not.i19.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.be = and i32 %i.ax, 64
  %.not.i.i12.i.i = icmp eq i32 %i.be, 0
  %.0.v.i.i13.i.i = select i1 %.not.i.i12.i.i, i64 56, i64 40
  %.0.i.i14.i.i = getelementptr i8, ptr %i.at, i64 %.0.v.i.i13.i.i
  br label %_PyUnicode_DATA.exit17.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.bf = getelementptr i8, ptr %i.at, i64 56
  %.val4.i16.i.i = load ptr, ptr %i.bf, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit17.i.i

_PyUnicode_DATA.exit17.i.i:                       ; preds = %bb.ak, %bb.aj
  %.0.i15.i.i = phi ptr [ %.0.i.i14.i.i, %bb.aj ], [ %.val4.i16.i.i, %bb.ak ]
  %i.bg = load i16, ptr %.0.i15.i.i, align 2, !tbaa !47
  %i.bh = zext i16 %i.bg to i32
  br label %bb.ao

bb.al:                                            ; preds = %bb.ae
  br i1 %.not.i19.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bi = and i32 %i.ax, 64
  %.not.i.i20.i.i = icmp eq i32 %i.bi, 0
  %.0.v.i.i21.i.i = select i1 %.not.i.i20.i.i, i64 56, i64 40
  %.0.i.i22.i.i = getelementptr i8, ptr %i.at, i64 %.0.v.i.i21.i.i
  br label %_PyUnicode_DATA.exit25.i.i

bb.an:                                            ; preds = %bb.al
  %i.bj = getelementptr i8, ptr %i.at, i64 56
  %.val4.i24.i.i = load ptr, ptr %i.bj, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit25.i.i

_PyUnicode_DATA.exit25.i.i:                       ; preds = %bb.an, %bb.am
  %.0.i23.i.i = phi ptr [ %.0.i.i22.i.i, %bb.am ], [ %.val4.i24.i.i, %bb.an ]
  %i.bk = load i32, ptr %.0.i23.i.i, align 4, !tbaa !7
  br label %bb.ao

bb.ao:                                            ; preds = %_PyUnicode_DATA.exit.i.i, %_PyUnicode_DATA.exit17.i.i, %_PyUnicode_DATA.exit25.i.i
  %.0.i.i = phi i32 [ %i.bd, %_PyUnicode_DATA.exit.i.i ], [ %i.bh, %_PyUnicode_DATA.exit17.i.i ], [ %i.bk, %_PyUnicode_DATA.exit25.i.i ]
  %i.bl = icmp eq i32 %.0.i.i, 45                 ; 3 uses
  %.083.i = select i1 %i.bl, i32 45, i32 0        ; 2 uses
  %.074.i = zext i1 %i.bl to i64                  ; 2 uses
  %i.bm = zext i1 %i.bl to i32
  %.1.i = or disjoint i32 %.070.i, %i.bm
  %i.bn = zext nneg i32 %.1.i to i64              ; 3 uses
  %i.bo = sub i64 %.val110.i, %i.bn               ; 2 uses
  %i.bp = icmp eq i32 %i.m, 110
  br i1 %i.bp, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.thread, %bb.ao
  %.2.i50 = phi i64 [ 0, %.thread ], [ %.074.i, %bb.ao ]
  %.279.i48 = phi i64 [ 0, %.thread ], [ %spec.select.i, %bb.ao ]
  %.080.i46 = phi i64 [ 1, %.thread ], [ 0, %bb.ao ]
  %.182.i44 = phi i64 [ 1, %.thread ], [ %i.bo, %bb.ao ]
  %.285.i42 = phi i32 [ 0, %.thread ], [ %.083.i, %bb.ao ]
  %.187.i40 = phi i64 [ 0, %.thread ], [ %i.bn, %bb.ao ]
  %.189.i38 = phi ptr [ %i.ae, %.thread ], [ %i.at, %bb.ao ]
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !45
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.2.i51 = phi i64 [ %.2.i50, %bb.ap ], [ %.074.i, %bb.ao ]
  %.279.i49 = phi i64 [ %.279.i48, %bb.ap ], [ %spec.select.i, %bb.ao ]
  %.080.i47 = phi i64 [ %.080.i46, %bb.ap ], [ 0, %bb.ao ]
  %.182.i45 = phi i64 [ %.182.i44, %bb.ap ], [ %i.bo, %bb.ao ]
  %.285.i43 = phi i32 [ %.285.i42, %bb.ap ], [ %.083.i, %bb.ao ]
  %.187.i41 = phi i64 [ %.187.i40, %bb.ap ], [ %i.bn, %bb.ao ] ; 3 uses
  %.189.i39 = phi ptr [ %.189.i38, %bb.ap ], [ %i.at, %bb.ao ] ; 6 uses
  %i.bs = phi i32 [ %i.br, %bb.ap ], [ 97, %bb.ao ]
  %i.bt = call fastcc i32 @get_locale_info(i32 noundef %i.bs, i32 noundef 0, ptr noundef %6)
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bv = add i64 %.187.i41, %.182.i45
  %i.bw = call fastcc i64 @calc_number_widths(ptr noundef %5, i64 noundef %.279.i49, i32 noundef %.285.i43, i64 noundef %.187.i41, i64 noundef %i.bv, i64 noundef %.080.i47, i64 noundef 0, i32 noundef 0, ptr noundef %6, ptr noundef nonnull readonly %7, ptr noundef %i.a) ; 5 uses
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.by = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !30
  %.not109.i = icmp ugt i32 %i.by, %i.ca
  br i1 %.not109.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cb = getelementptr i8, ptr %0, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !32
  %i.cd = getelementptr i8, ptr %0, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !33
  %i.cf = sub i64 %i.cc, %i.ce
  %i.cg = icmp sle i64 %i.bw, %i.cf
  %i.ch = icmp eq i64 %i.bw, 0
  %or.cond3.i = or i1 %i.ch, %i.cg
  br i1 %or.cond3.i, label %.critedge.i, label %bb.av

bb.au:                                            ; preds = %bb.as
  %.old2.i = icmp eq i64 %i.bw, 0
  br i1 %.old2.i, label %.critedge.i, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ci = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %i.bw, i32 noundef %i.by) #10
  %i.cj = icmp eq i32 %i.ci, -1
  br i1 %i.cj, label %bb.aw, label %.critedge.i

.critedge.i:                                      ; preds = %bb.av, %bb.au, %bb.at
  %i.ck = load i32, ptr %7, align 8, !tbaa !44
  %i.cl = icmp eq i32 %i.m, 88
  %i.cm = zext i1 %i.cl to i32
  %i.cn = call fastcc i32 @fill_number(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %.189.i39, i64 noundef %.187.i41, ptr noundef %.189.i39, i64 noundef %.2.i51, i32 noundef %i.ck, ptr noundef %6, i32 noundef %i.cm)
  br label %bb.aw

bb.aw:                                            ; preds = %.critedge.i, %bb.av, %bb.ar, %bb.aq
  %.076.i = phi i32 [ -1, %bb.av ], [ %i.cn, %.critedge.i ], [ -1, %bb.aq ], [ -1, %bb.ar ] ; 4 uses
  %.not.i.i27 = icmp eq ptr %.189.i39, null
  br i1 %.not.i.i27, label %Py_XDECREF.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.co = load i32, ptr %.189.i39, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.co, -1
  br i1 %.not.i.i.i, label %bb.ay, label %Py_XDECREF.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr %.189.i39, align 8, !tbaa !15
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.az, label %Py_XDECREF.exit.i

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %.189.i39) #10
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.ad, %.thread.i, %bb.t, %bb.r, %bb.p, %bb.m, %bb.k
  %.076136.i = phi i32 [ %.076.i, %bb.az ], [ %.076.i, %bb.aw ], [ %.076.i, %bb.ax ], [ %.076.i, %bb.ay ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.p ], [ -1, %bb.r ], [ -1, %bb.t ], [ -1, %.thread.i ], [ -1, %bb.ad ]
  %i.cr = load ptr, ptr %6, align 8, !tbaa !48    ; 4 uses
  %.not.i.i111.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i111.i, label %Py_XDECREF.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %Py_XDECREF.exit.i
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.i112.i = icmp sgt i32 %i.cs, -1
  br i1 %.not.i.i.i112.i, label %bb.bb, label %Py_XDECREF.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ct = add nsw i32 %i.cs, -1                   ; 2 uses
  store i32 %i.ct, ptr %i.cr, align 8, !tbaa !15
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.bc, label %Py_XDECREF.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  call void @_Py_Dealloc(ptr noundef nonnull %i.cr) #10
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %bb.bc, %bb.bb, %bb.ba, %Py_XDECREF.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !50 ; 4 uses
  %.not.i4.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i4.i.i, label %Py_XDECREF.exit6.i.i, label %bb.bd

bb.bd:                                            ; preds = %Py_XDECREF.exit.i.i
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !15 ; 2 uses
  %.not.i.i5.i.i = icmp sgt i32 %i.cx, -1
  br i1 %.not.i.i5.i.i, label %bb.be, label %Py_XDECREF.exit6.i.i

bb.be:                                            ; preds = %bb.bd
  %i.cy = add nsw i32 %i.cx, -1                   ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 8, !tbaa !15
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.bf, label %Py_XDECREF.exit6.i.i

bb.bf:                                            ; preds = %bb.be
end_hunk_0
begin_hunk_1_@_PyLong_FormatAdvancedWriter:bb.a

bb.bg:                                            ; preds = %Py_XDECREF.exit6.i.i
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !15 ; 2 uses
  %.not.i.i8.i.i = icmp sgt i32 %i.dc, -1
  br i1 %.not.i.i8.i.i, label %bb.bh, label %free_locale_info.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !15
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.bi, label %free_locale_info.exit.i

bb.bi:                                            ; preds = %bb.bh
  call void @_Py_Dealloc(ptr noundef nonnull %i.db) #10
  br label %free_locale_info.exit.i

free_locale_info.exit.i:                          ; preds = %bb.bi, %bb.bh, %bb.bg, %Py_XDECREF.exit6.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !52
  call void @PyMem_Free(ptr noundef %i.dg) #10
  br label %format_long_internal.exit

format_long_internal.exit:                        ; preds = %.thread114.i, %free_locale_info.exit.i
  %.173.i = phi i32 [ %.076136.i, %free_locale_info.exit.i ], [ %i.aq, %.thread114.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %format_obj.exit

bb.bj:                                            ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.dh = tail call ptr @PyNumber_Float(ptr noundef %1) #10 ; 5 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %format_obj.exit, label %bb.bl

bb.bk:                                            ; preds = %bb.i
  %i.dj = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.dj, align 8, !tbaa !11
  %i.dk = getelementptr i8, ptr %.val, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !35
  %i.dm = add i32 %i.m, -33
  %or.cond.i28 = icmp ult i32 %i.dm, 95
  %i.dn = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  %.str.11..str.12.i = select i1 %or.cond.i28, ptr @.str.11, ptr @.str.12
  %i.do = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dn, ptr noundef nonnull %.str.11..str.12.i, i32 noundef %i.m, ptr noundef %i.dl) #10 ; 0 uses
  br label %format_obj.exit

bb.bl:                                            ; preds = %bb.bj
  %i.dp = call fastcc i32 @format_float_internal(ptr noundef nonnull %i.dh, ptr noundef %7, ptr noundef %0) ; 3 uses
  %i.dq = load i32, ptr %i.dh, align 8, !tbaa !15 ; 2 uses
  %.not.i.i30 = icmp sgt i32 %i.dq, -1
  br i1 %.not.i.i30, label %bb.bm, label %format_obj.exit

bb.bm:                                            ; preds = %bb.bl
  %i.dr = add nsw i32 %i.dq, -1                   ; 2 uses
  store i32 %i.dr, ptr %i.dh, align 8, !tbaa !15
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.bn, label %format_obj.exit

bb.bn:                                            ; preds = %bb.bm
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dh) #10
  br label %format_obj.exit

format_obj.exit:                                  ; preds = %bb.h, %bb.bj, %format_long_internal.exit, %bb.bk, %bb.bn, %bb.bm, %bb.bl, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.021 = phi i32 [ %i.d, %bb.c ], [ %i.g, %bb.g ], [ -1, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.dp, %bb.bm ], [ %i.dp, %bb.bn ], [ %i.dp, %bb.bl ], [ -1, %bb.h ], [ -1, %bb.bj ], [ %.173.i, %format_long_internal.exit ], [ -1, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  ret i32 %.021
}

declare i32 @_PyLong_FormatWriter(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @PyNumber_Float(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @format_float_internal(ptr noundef %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.NumberFieldWidths, align 8  ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %4 = alloca %struct.LocaleInfo, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.f = getelementptr i8, ptr %1, i64 52         ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 127, ptr %i.d, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.h = getelementptr i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 2147483647
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.21) #10
  br label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.l = trunc i64 %i.i to i32                    ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !26
  %.not = icmp eq i32 %i.n, 0
  %spec.select = select i1 %.not, i32 0, i32 4    ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25
  %.not97 = icmp eq i32 %i.p, 0
  %i.q = or disjoint i32 %spec.select, 8
  %.1 = select i1 %.not97, i32 %spec.select, i32 %i.q ; 2 uses
  %i.r = icmp eq i32 %i.g, 0                      ; 3 uses
  %i.s = or disjoint i32 %.1, 2
  %.083 = select i1 %i.r, i32 0, i32 6
  %.080 = select i1 %i.r, i32 114, i32 %i.g       ; 2 uses
  %.2 = select i1 %i.r, i32 %i.s, i32 %.1
  %i.t = icmp eq i32 %.080, 110
  %spec.store.select = select i1 %i.t, i32 103, i32 %.080 ; 2 uses
  %i.u = tail call double @PyFloat_AsDouble(ptr noundef %0) #10 ; 3 uses
  %i.v = fcmp oeq double %i.u, -1.000000e+00
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = tail call ptr @PyErr_Occurred() #10
  %.not98 = icmp eq ptr %i.w, null
  br i1 %.not98, label %bb.e, label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not100 = icmp eq i32 %spec.store.select, 37   ; 3 uses
  %i.x = fmul double %i.u, 1.000000e+02
  %.085 = select i1 %.not100, double %i.x, double %i.u
  %.181 = select i1 %.not100, i32 102, i32 %spec.store.select ; 2 uses
  %i.y = icmp slt i32 %i.l, 0                     ; 2 uses
  %i.z = icmp ne i32 %.181, 114
  %.084 = select i1 %i.y, i32 %.083, i32 %i.l
  %i.aa = select i1 %i.y, i1 true, i1 %i.z
  %i.ab = trunc i32 %.181 to i8
  %i.ac = select i1 %i.aa, i8 %i.ab, i8 103
  %i.ad = call ptr @PyOS_double_to_string(double noundef %.085, i8 noundef signext %i.ac, i32 noundef %.084, i32 noundef %.2, ptr noundef nonnull %i.e) #10 ; 7 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %Py_XDECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #11 ; 3 uses
  br i1 %.not100, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.ad, i64 %i.af
  store i8 37, ptr %i.ag, align 1, !tbaa !15
  %i.ah = add i64 %i.af, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.087 = phi i64 [ %i.ah, %bb.g ], [ %i.af, %bb.f ] ; 3 uses
  %i.ai = getelementptr i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !22
  switch i32 %i.aj, label %bb.i [
    i32 43, label %bb.n
    i32 32, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %1, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !28
  %i.am = icmp eq i64 %i.al, -1
  br i1 %i.am, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.f, align 4, !tbaa !16
  %.not103 = icmp eq i32 %i.an, 110
  br i1 %.not103, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %1, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !45
  %.not104 = icmp eq i32 %i.ap, 0
  br i1 %.not104, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr i8, ptr %1, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !46
  %.not105 = icmp eq i32 %i.ar, 0
  br i1 %.not105, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = call i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef %2, ptr noundef nonnull %i.ad, i64 noundef %.087) #10
  br label %bb.ar

bb.n:                                             ; preds = %bb.h, %bb.h, %bb.l, %bb.k, %bb.j, %bb.i
  %i.at = call ptr @_PyUnicode_FromASCII(ptr noundef nonnull %i.ad, i64 noundef %.087) #10 ; 13 uses
  call void @PyMem_Free(ptr noundef nonnull %i.ad) #10
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %Py_XDECREF.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr i8, ptr %i.at, i64 32
  %i.aw = load i32, ptr %i.av, align 8            ; 5 uses
  %i.ax = and i32 %i.aw, 28
  %i.ay = and i32 %i.aw, 32
  %.not.i19.i = icmp eq i32 %i.ay, 0              ; 3 uses
  switch i32 %i.ax, label %bb.v [
    i32 4, label %bb.p
    i32 8, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i19.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = and i32 %i.aw, 64
  %.not.i.i.i = icmp eq i32 %i.az, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.at, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ba = getelementptr i8, ptr %i.at, i64 56
  %.val4.i.i = load ptr, ptr %i.ba, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.r, %bb.q
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.q ], [ %.val4.i.i, %bb.r ]
  %i.bb = load i8, ptr %.0.i.i, align 1, !tbaa !15
  %i.bc = zext i8 %i.bb to i32
  br label %PyUnicode_READ_CHAR.exit

bb.s:                                             ; preds = %bb.o
  br i1 %.not.i19.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = and i32 %i.aw, 64
  %.not.i.i12.i = icmp eq i32 %i.bd, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.at, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.u:                                             ; preds = %bb.s
  %i.be = getelementptr i8, ptr %i.at, i64 56
  %.val4.i16.i = load ptr, ptr %i.be, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.u, %bb.t
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.t ], [ %.val4.i16.i, %bb.u ]
  %i.bf = load i16, ptr %.0.i15.i, align 2, !tbaa !47
  %i.bg = zext i16 %i.bf to i32
  br label %PyUnicode_READ_CHAR.exit

bb.v:                                             ; preds = %bb.o
  br i1 %.not.i19.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = and i32 %i.aw, 64
  %.not.i.i20.i = icmp eq i32 %i.bh, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.at, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.x:                                             ; preds = %bb.v
  %i.bi = getelementptr i8, ptr %i.at, i64 56
  %.val4.i24.i = load ptr, ptr %i.bi, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.x, %bb.w
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.w ], [ %.val4.i24.i, %bb.x ]
  %i.bj = load i32, ptr %.0.i23.i, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.bc, %_PyUnicode_DATA.exit.i ], [ %i.bg, %_PyUnicode_DATA.exit17.i ], [ %i.bj, %_PyUnicode_DATA.exit25.i ]
  %i.bk = icmp eq i32 %.0.i, 45                   ; 3 uses
  %i.bl = sext i1 %i.bk to i64
  %.188 = add i64 %.087, %i.bl
  %.078 = zext i1 %i.bk to i64                    ; 4 uses
  %.075 = select i1 %i.bk, i32 45, i32 0
  %i.bm = add i64 %.188, %.078                    ; 2 uses
  call fastcc void @parse_number(ptr noundef %i.at, i64 noundef %.078, i64 noundef %i.bm, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %i.bn = load i32, ptr %i.f, align 4, !tbaa !16
  %i.bo = icmp eq i32 %i.bn, 110
  br i1 %i.bo, label %bb.z, label %bb.y

bb.y:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.bp = getelementptr i8, ptr %1, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !45
  br label %bb.z

bb.z:                                             ; preds = %PyUnicode_READ_CHAR.exit, %bb.y
  %i.br = phi i32 [ %i.bq, %bb.y ], [ 97, %PyUnicode_READ_CHAR.exit ]
  %i.bs = getelementptr i8, ptr %1, i64 48
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !46
  %i.bu = call fastcc i32 @get_locale_info(i32 noundef %i.br, i32 noundef %i.bt, ptr noundef %4)
  %i.bv = icmp eq i32 %i.bu, -1
  br i1 %i.bv, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !43
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !43
  %i.by = load i32, ptr %i.c, align 4, !tbaa !7
  %i.bz = call fastcc i64 @calc_number_widths(ptr noundef %3, i64 noundef 0, i32 noundef %.075, i64 noundef %.078, i64 noundef %i.bm, i64 noundef %i.bw, i64 noundef %i.bx, i32 noundef %i.by, ptr noundef %4, ptr noundef %1, ptr noundef %i.d) ; 5 uses
  %i.ca = icmp eq i64 %i.bz, -1
  br i1 %i.ca, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = load i32, ptr %i.d, align 4, !tbaa !7   ; 2 uses
  %i.cc = getelementptr i8, ptr %2, i64 20
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !30
  %.not106 = icmp ugt i32 %i.cb, %i.cd
  br i1 %.not106, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = getelementptr i8, ptr %2, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !32
  %i.cg = getelementptr i8, ptr %2, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !33
  %i.ci = sub i64 %i.cf, %i.ch
  %i.cj = icmp sle i64 %i.bz, %i.ci
  %i.ck = icmp eq i64 %i.bz, 0
  %or.cond = or i1 %i.ck, %i.cj
  br i1 %or.cond, label %.critedge, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %.old2 = icmp eq i64 %i.bz, 0
  br i1 %.old2, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.cl = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %2, i64 noundef %i.bz, i32 noundef %i.cb) #10
  %i.cm = icmp eq i32 %i.cl, -1
  br i1 %i.cm, label %bb.af, label %.critedge

.critedge:                                        ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.cn = load i32, ptr %1, align 8, !tbaa !44
  %i.co = call fastcc i32 @fill_number(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %i.at, i64 noundef %.078, ptr noundef null, i64 noundef 0, i32 noundef %i.cn, ptr noundef %4, i32 noundef 0)
  br label %bb.af

bb.af:                                            ; preds = %.critedge, %bb.z, %bb.aa, %bb.ae
  %.076 = phi i32 [ -1, %bb.z ], [ -1, %bb.aa ], [ -1, %bb.ae ], [ %i.co, %.critedge ] ; 3 uses
  %i.cp = load i32, ptr %i.at, align 8, !tbaa !15 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cp, -1
  br i1 %.not.i.i, label %bb.ag, label %Py_XDECREF.exit

bb.ag:                                            ; preds = %bb.af
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  store i32 %i.cq, ptr %i.at, align 8, !tbaa !15
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.ah, label %Py_XDECREF.exit

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.at) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.n, %bb.e, %bb.d, %bb.b, %bb.af, %bb.ag, %bb.ah
  %.076112 = phi i32 [ %.076, %bb.ag ], [ %.076, %bb.ah ], [ %.076, %bb.af ], [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.n ]
  %i.cs = load ptr, ptr %4, align 8, !tbaa !48    ; 4 uses
  %.not.i.i107 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i107, label %Py_XDECREF.exit.i, label %bb.ai

bb.ai:                                            ; preds = %Py_XDECREF.exit
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.i108 = icmp sgt i32 %i.ct, -1
  br i1 %.not.i.i.i108, label %bb.aj, label %Py_XDECREF.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !15
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.ak, label %Py_XDECREF.exit.i

bb.ak:                                            ; preds = %bb.aj
  call void @_Py_Dealloc(ptr noundef nonnull %i.cs) #10
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.ak, %bb.aj, %bb.ai, %Py_XDECREF.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !50 ; 4 uses
  %.not.i4.i = icmp eq ptr %i.cx, null
  br i1 %.not.i4.i, label %Py_XDECREF.exit6.i, label %bb.al

bb.al:                                            ; preds = %Py_XDECREF.exit.i
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !15 ; 2 uses
  %.not.i.i5.i = icmp sgt i32 %i.cy, -1
  br i1 %.not.i.i5.i, label %bb.am, label %Py_XDECREF.exit6.i

bb.am:                                            ; preds = %bb.al
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  store i32 %i.cz, ptr %i.cx, align 8, !tbaa !15
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.an, label %Py_XDECREF.exit6.i

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.cx) #10
  br label %Py_XDECREF.exit6.i

Py_XDECREF.exit6.i:                               ; preds = %bb.an, %bb.am, %bb.al, %Py_XDECREF.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !51 ; 4 uses
  %.not.i7.i = icmp eq ptr %i.dc, null
  br i1 %.not.i7.i, label %free_locale_info.exit, label %bb.ao

bb.ao:                                            ; preds = %Py_XDECREF.exit6.i
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !15 ; 2 uses
  %.not.i.i8.i = icmp sgt i32 %i.dd, -1
  br i1 %.not.i.i8.i, label %bb.ap, label %free_locale_info.exit

bb.ap:                                            ; preds = %bb.ao
end_hunk_1
begin_hunk_2_@_PyComplex_FormatAdvancedWriter:bb.a
  br label %PyUnicode_WRITE.exit169.i

bb.as:                                            ; preds = %bb.ap
  %i.ed = getelementptr [4 x i8], ptr %i.dn, i64 %i.ea
  store i32 106, ptr %i.ed, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit169.i

PyUnicode_WRITE.exit169.i:                        ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ee = phi i64 [ %.pre217.i, %bb.aq ], [ %i.ea, %bb.ar ], [ %i.ea, %bb.as ]
  %i.ef = add i64 %i.ee, 1                        ; 7 uses
  store i64 %i.ef, ptr %i.dz, align 8, !tbaa !33
  br i1 %.not164190204.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %PyUnicode_WRITE.exit169.i
  switch i32 %i.dl, label %bb.aw [
    i32 1, label %bb.au
    i32 2, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.eg = getelementptr i8, ptr %i.dn, i64 %i.ef
  store i8 41, ptr %i.eg, align 1, !tbaa !15
  %.pre218.i = load i64, ptr %i.dz, align 8, !tbaa !33
  br label %PyUnicode_WRITE.exit170.i

bb.av:                                            ; preds = %bb.at
  %i.eh = getelementptr [2 x i8], ptr %i.dn, i64 %i.ef
  store i16 41, ptr %i.eh, align 2, !tbaa !47
  br label %PyUnicode_WRITE.exit170.i

bb.aw:                                            ; preds = %bb.at
  %i.ei = getelementptr [4 x i8], ptr %i.dn, i64 %i.ef
  store i32 41, ptr %i.ei, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit170.i

PyUnicode_WRITE.exit170.i:                        ; preds = %bb.aw, %bb.av, %bb.au
  %i.ej = phi i64 [ %.pre218.i, %bb.au ], [ %i.ef, %bb.av ], [ %i.ef, %bb.aw ]
  %i.ek = add i64 %i.ej, 1
  br label %bb.ax

bb.ax:                                            ; preds = %PyUnicode_WRITE.exit170.i, %PyUnicode_WRITE.exit169.i
  %i.el = phi i64 [ %i.ek, %PyUnicode_WRITE.exit170.i ], [ %i.ef, %PyUnicode_WRITE.exit169.i ]
  %i.em = add i64 %i.el, %i.cv
  store i64 %i.em, ptr %i.dz, align 8, !tbaa !33
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ao, %bb.an, %bb.ah, %bb.aa, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %.thread208.i, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i
  %.0128.i = phi i32 [ -1, %bb.i ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.o ], [ -1, %bb.q ], [ -1, %.thread208.i ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %bb.v ], [ -1, %bb.w ], [ -1, %bb.x ], [ -1, %bb.aa ], [ -1, %bb.ah ], [ -1, %bb.an ], [ -1, %bb.ao ], [ 0, %bb.ax ]
  %.0127.i = phi ptr [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.q ], [ null, %.thread208.i ], [ null, %bb.t ], [ %i.ba, %bb.u ], [ %i.ba, %bb.v ], [ %i.ba, %bb.w ], [ %i.ba, %bb.x ], [ %i.ba, %bb.aa ], [ %i.ba, %bb.ah ], [ %i.ba, %bb.an ], [ %i.ba, %bb.ao ], [ %i.ba, %bb.ax ]
  %.0126.i = phi ptr [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.q ], [ null, %.thread208.i ], [ %i.ay, %bb.t ], [ %i.ay, %bb.u ], [ %i.ay, %bb.v ], [ %i.ay, %bb.w ], [ %i.ay, %bb.x ], [ %i.ay, %bb.aa ], [ %i.ay, %bb.ah ], [ %i.ay, %bb.an ], [ %i.ay, %bb.ao ], [ %i.ay, %bb.ax ]
  %.0121.i = phi ptr [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.q ], [ null, %.thread208.i ], [ null, %bb.t ], [ null, %bb.u ], [ %i.be, %bb.v ], [ %i.be, %bb.w ], [ %i.be, %bb.x ], [ %i.be, %bb.aa ], [ %i.be, %bb.ah ], [ %i.be, %bb.an ], [ %i.be, %bb.ao ], [ %i.be, %bb.ax ] ; 4 uses
  %.0.i13 = phi ptr [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.q ], [ null, %.thread208.i ], [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.v ], [ %i.bg, %bb.w ], [ %i.bg, %bb.x ], [ %i.bg, %bb.aa ], [ %i.bg, %bb.ah ], [ %i.bg, %bb.an ], [ %i.bg, %bb.ao ], [ %i.bg, %bb.ax ] ; 4 uses
  call void @PyMem_Free(ptr noundef %.0126.i) #10
  call void @PyMem_Free(ptr noundef %.0127.i) #10
  %.not.i.i14 = icmp eq ptr %.0121.i, null
  br i1 %.not.i.i14, label %Py_XDECREF.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.en = load i32, ptr %.0121.i, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.en, -1
  br i1 %.not.i.i.i, label %bb.ba, label %Py_XDECREF.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %.0121.i, align 8, !tbaa !15
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.bb, label %Py_XDECREF.exit.i

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %.0121.i) #10
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.not.i171.i = icmp eq ptr %.0.i13, null
  br i1 %.not.i171.i, label %Py_XDECREF.exit173.i, label %bb.bc

bb.bc:                                            ; preds = %Py_XDECREF.exit.i
  %i.eq = load i32, ptr %.0.i13, align 8, !tbaa !15 ; 2 uses
  %.not.i.i172.i = icmp sgt i32 %i.eq, -1
  br i1 %.not.i.i172.i, label %bb.bd, label %Py_XDECREF.exit173.i

bb.bd:                                            ; preds = %bb.bc
  %i.er = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.er, ptr %.0.i13, align 8, !tbaa !15
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.be, label %Py_XDECREF.exit173.i

bb.be:                                            ; preds = %bb.bd
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i13) #10
  br label %Py_XDECREF.exit173.i

Py_XDECREF.exit173.i:                             ; preds = %bb.be, %bb.bd, %bb.bc, %Py_XDECREF.exit.i
  %i.et = load ptr, ptr %8, align 8, !tbaa !48    ; 4 uses
  %.not.i.i174.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i174.i, label %Py_XDECREF.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %Py_XDECREF.exit173.i
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.eu, -1
  br i1 %.not.i.i.i.i, label %bb.bg, label %Py_XDECREF.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.ev = add nsw i32 %i.eu, -1                   ; 2 uses
  store i32 %i.ev, ptr %i.et, align 8, !tbaa !15
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.bh, label %Py_XDECREF.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  call void @_Py_Dealloc(ptr noundef nonnull %i.et) #10
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %bb.bh, %bb.bg, %bb.bf, %Py_XDECREF.exit173.i
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !50 ; 4 uses
  %.not.i4.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i4.i.i, label %Py_XDECREF.exit6.i.i, label %bb.bi

bb.bi:                                            ; preds = %Py_XDECREF.exit.i.i
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !15 ; 2 uses
  %.not.i.i5.i.i = icmp sgt i32 %i.ez, -1
  br i1 %.not.i.i5.i.i, label %bb.bj, label %Py_XDECREF.exit6.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.fa = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fa, ptr %i.ey, align 8, !tbaa !15
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.bk, label %Py_XDECREF.exit6.i.i

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %i.ey) #10
  br label %Py_XDECREF.exit6.i.i

Py_XDECREF.exit6.i.i:                             ; preds = %bb.bk, %bb.bj, %bb.bi, %Py_XDECREF.exit.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !51 ; 4 uses
  %.not.i7.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i7.i.i, label %format_complex_internal.exit, label %bb.bl

bb.bl:                                            ; preds = %Py_XDECREF.exit6.i.i
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !15 ; 2 uses
  %.not.i.i8.i.i = icmp sgt i32 %i.fe, -1
  br i1 %.not.i.i8.i.i, label %bb.bm, label %format_complex_internal.exit

bb.bm:                                            ; preds = %bb.bl
  %i.ff = add nsw i32 %i.fe, -1                   ; 2 uses
  store i32 %i.ff, ptr %i.fd, align 8, !tbaa !15
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.bn, label %format_complex_internal.exit

bb.bn:                                            ; preds = %bb.bm
  call void @_Py_Dealloc(ptr noundef nonnull %i.fd) #10
  br label %format_complex_internal.exit

format_complex_internal.exit:                     ; preds = %Py_XDECREF.exit6.i.i, %bb.bl, %bb.bm, %bb.bn
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !52
  call void @PyMem_Free(ptr noundef %i.fi) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %format_obj.exit

bb.bo:                                            ; preds = %bb.g
  %i.fj = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.fj, align 8, !tbaa !11
  %i.fk = getelementptr i8, ptr %.val, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !35
  %i.fm = add i32 %i.s, -33
  %or.cond.i15 = icmp ult i32 %i.fm, 95
  %i.fn = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  %.str.11..str.12.i = select i1 %or.cond.i15, ptr @.str.11, ptr @.str.12
  %i.fo = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fn, ptr noundef nonnull %.str.11..str.12.i, i32 noundef %i.s, ptr noundef %i.fl) #10 ; 0 uses
  br label %format_obj.exit

format_obj.exit:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f, %bb.bo, %format_complex_internal.exit
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.bo ], [ %.0128.i, %format_complex_internal.exit ], [ -1, %bb.b ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  ret i32 %.0
}

declare ptr @PyObject_Str(ptr noundef) local_unnamed_addr #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_integer(ptr noundef readonly captures(none) %0, ptr noundef nonnull captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !43     ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = and i32 %i.c, 32
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 64
  %.not.i.i = icmp eq i32 %i.e, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.f, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 3 uses
  %i.g = icmp slt i64 %i.a, %2
  br i1 %i.g, label %.lr.ph, label %PyUnicode_READ.exit._crit_edge

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit
  %4 = and i32 %i.c, 28
  %i.h = trunc i64 %2 to i32
  %i.i = trunc i64 %i.a to i32
  %i.j = sub i32 %i.h, %i.i                       ; 3 uses
  switch i32 %4, label %PyUnicode_READ.exit [
    i32 4, label %PyUnicode_READ.exit.us
    i32 8, label %PyUnicode_READ.exit.us48
  ]

PyUnicode_READ.exit.us:                           ; preds = %.lr.ph, %bb.e
  %.02232.us = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %.02331.us = phi i32 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %.02430.us = phi i64 [ %i.v, %bb.e ], [ %i.a, %.lr.ph ] ; 4 uses
  %i.k = getelementptr i8, ptr %.0.i, i64 %.02430.us
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = zext i8 %i.l to i32
  %i.n = tail call i32 @_PyUnicode_ToDecimalDigit(i32 noundef %i.m) #10 ; 2 uses
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp slt i32 %i.n, 0
  br i1 %i.p, label %PyUnicode_READ.exit._crit_edge, label %bb.d

bb.d:                                             ; preds = %PyUnicode_READ.exit.us
  %i.q = sub nuw nsw i64 9223372036854775807, %i.o
  %i.r = udiv i64 %i.q, 10
  %i.s = icmp sgt i64 %.02232.us, %i.r
  br i1 %i.s, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = mul i64 %.02232.us, 10
  %i.u = add i64 %i.t, %i.o                       ; 2 uses
  %i.v = add i64 %.02430.us, 1                    ; 2 uses
  %i.w = add i32 %.02331.us, 1
  %exitcond77.not = icmp eq i64 %i.v, %2
  br i1 %exitcond77.not, label %PyUnicode_READ.exit._crit_edge, label %PyUnicode_READ.exit.us, !llvm.loop !56

PyUnicode_READ.exit.us48:                         ; preds = %.lr.ph, %bb.g
  %.02232.us45 = phi i64 [ %i.ah, %bb.g ], [ 0, %.lr.ph ] ; 3 uses
  %.02331.us46 = phi i32 [ %i.aj, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %.02430.us47 = phi i64 [ %i.ai, %bb.g ], [ %i.a, %.lr.ph ] ; 4 uses
  %i.x = getelementptr [2 x i8], ptr %.0.i, i64 %.02430.us47
  %i.y = load i16, ptr %i.x, align 2, !tbaa !47
  %i.z = zext i16 %i.y to i32
  %i.aa = tail call i32 @_PyUnicode_ToDecimalDigit(i32 noundef %i.z) #10 ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = icmp slt i32 %i.aa, 0
  br i1 %i.ac, label %PyUnicode_READ.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %PyUnicode_READ.exit.us48
  %i.ad = sub nuw nsw i64 9223372036854775807, %i.ab
  %i.ae = udiv i64 %i.ad, 10
  %i.af = icmp sgt i64 %.02232.us45, %i.ae
  br i1 %i.af, label %.split.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = mul i64 %.02232.us45, 10
  %i.ah = add i64 %i.ag, %i.ab                    ; 2 uses
  %i.ai = add i64 %.02430.us47, 1                 ; 2 uses
  %i.aj = add i32 %.02331.us46, 1
  %exitcond.not = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not, label %PyUnicode_READ.exit._crit_edge, label %PyUnicode_READ.exit.us48, !llvm.loop !56

PyUnicode_READ.exit:                              ; preds = %.lr.ph, %bb.i
  %.02232 = phi i64 [ %i.av, %bb.i ], [ 0, %.lr.ph ] ; 3 uses
  %.02331 = phi i32 [ %i.ax, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %.02430 = phi i64 [ %i.aw, %bb.i ], [ %i.a, %.lr.ph ] ; 4 uses
  %i.ak = getelementptr [4 x i8], ptr %.0.i, i64 %.02430
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = tail call i32 @_PyUnicode_ToDecimalDigit(i32 noundef %i.al) #10 ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = icmp slt i32 %i.am, 0
  br i1 %i.ao, label %PyUnicode_READ.exit._crit_edge, label %bb.h

bb.h:                                             ; preds = %PyUnicode_READ.exit
  %i.ap = sub nuw nsw i64 9223372036854775807, %i.an
  %i.aq = udiv i64 %i.ap, 10
  %i.ar = icmp sgt i64 %.02232, %i.aq
  br i1 %i.ar, label %.split.us, label %bb.i

.split.us:                                        ; preds = %bb.f, %bb.d, %bb.h
  %.us-phi40 = phi i64 [ %.02430.us, %bb.d ], [ %.02430, %bb.h ], [ %.02430.us47, %bb.f ]
  %i.as = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  %i.at = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.as, ptr noundef nonnull @.str.2) #10 ; 0 uses
  store i64 %.us-phi40, ptr %1, align 8, !tbaa !43
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = mul i64 %.02232, 10
  %i.av = add i64 %i.au, %i.an                    ; 2 uses
  %i.aw = add i64 %.02430, 1                      ; 2 uses
  %i.ax = add i32 %.02331, 1
  %exitcond78.not = icmp eq i64 %i.aw, %2
  br i1 %exitcond78.not, label %PyUnicode_READ.exit._crit_edge, label %PyUnicode_READ.exit, !llvm.loop !56

PyUnicode_READ.exit._crit_edge:                   ; preds = %bb.g, %PyUnicode_READ.exit.us48, %bb.e, %PyUnicode_READ.exit.us, %bb.i, %PyUnicode_READ.exit, %_PyUnicode_DATA.exit
  %.024.lcssa = phi i64 [ %i.a, %_PyUnicode_DATA.exit ], [ %.02430, %PyUnicode_READ.exit ], [ %.02430.us, %PyUnicode_READ.exit.us ], [ %2, %bb.i ], [ %2, %bb.e ], [ %2, %bb.g ], [ %.02430.us47, %PyUnicode_READ.exit.us48 ]
  %.023.lcssa = phi i32 [ 0, %_PyUnicode_DATA.exit ], [ %.02331, %PyUnicode_READ.exit ], [ %.02331.us, %PyUnicode_READ.exit.us ], [ %i.j, %bb.i ], [ %i.j, %bb.e ], [ %i.j, %bb.g ], [ %.02331.us46, %PyUnicode_READ.exit.us48 ]
  %.022.lcssa = phi i64 [ 0, %_PyUnicode_DATA.exit ], [ %.02232, %PyUnicode_READ.exit ], [ %.02232.us, %PyUnicode_READ.exit.us ], [ %i.av, %bb.i ], [ %i.u, %bb.e ], [ %i.ah, %bb.g ], [ %.02232.us45, %PyUnicode_READ.exit.us48 ]
  store i64 %.024.lcssa, ptr %1, align 8, !tbaa !43
  store i64 %.022.lcssa, ptr %3, align 8, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %PyUnicode_READ.exit._crit_edge, %.split.us
  %.0 = phi i32 [ %.023.lcssa, %PyUnicode_READ.exit._crit_edge ], [ -1, %.split.us ]
  ret i32 %.0
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyUnicode_FromKindAndData(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @_PyUnicode_ToDecimalDigit(i32 noundef) local_unnamed_addr #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyUnicode_FindMaxChar(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_padding(ptr noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33
  %i.c = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @_PyUnicode_FastFill(ptr noundef %i.c, i64 noundef %i.b, i64 noundef %3, i32 noundef %2) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not16 = icmp eq i64 %4, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = add i64 %3, %1
  %i.g = add i64 %i.f, %i.e
  %i.h = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @_PyUnicode_FastFill(ptr noundef %i.h, i64 noundef %i.g, i64 noundef %4, i32 noundef %2) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !33
  %i.k = add i64 %i.j, %3
  store i64 %i.k, ptr %i.i, align 8, !tbaa !33
  ret void
}

declare void @_PyUnicode_FastCopyCharacters(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_PyUnicode_FastFill(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare ptr @PyUnicode_FromOrdinal(i32 noundef) local_unnamed_addr #2

declare ptr @_PyLong_Format(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @PyUnicode_READ_CHAR(ptr noundef nonnull readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = and i32 %i.b, 28
  %i.d = and i32 %i.b, 32
  %.not.i19 = icmp eq i32 %i.d, 0                 ; 3 uses
  switch i32 %i.c, label %bb.h [
    i32 4, label %bb.b
    i32 8, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.e, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.f, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %.0.i.i, %bb.c ], [ %.val4.i, %bb.d ]
  %i.g = load i8, ptr %.0.i, align 1, !tbaa !15
  %i.h = zext i8 %i.g to i32
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = and i32 %i.b, 64
  %.not.i.i12 = icmp eq i32 %i.i, 0
  %.0.v.i.i13 = select i1 %.not.i.i12, i64 56, i64 40
  %.0.i.i14 = getelementptr i8, ptr %0, i64 %.0.v.i.i13
  br label %_PyUnicode_DATA.exit17

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %0, i64 56
  %.val4.i16 = load ptr, ptr %i.j, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit17

_PyUnicode_DATA.exit17:                           ; preds = %bb.f, %bb.g
  %.0.i15 = phi ptr [ %.0.i.i14, %bb.f ], [ %.val4.i16, %bb.g ]
  %i.k = load i16, ptr %.0.i15, align 2, !tbaa !47
  %i.l = zext i16 %i.k to i32
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  br i1 %.not.i19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = and i32 %i.b, 64
  %.not.i.i20 = icmp eq i32 %i.m, 0
  %.0.v.i.i21 = select i1 %.not.i.i20, i64 56, i64 40
  %.0.i.i22 = getelementptr i8, ptr %0, i64 %.0.v.i.i21
  br label %_PyUnicode_DATA.exit25

bb.j:                                             ; preds = %bb.h
  %i.n = getelementptr i8, ptr %0, i64 56
  %.val4.i24 = load ptr, ptr %i.n, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit25

_PyUnicode_DATA.exit25:                           ; preds = %bb.i, %bb.j
  %.0.i23 = phi ptr [ %.0.i.i22, %bb.i ], [ %.val4.i24, %bb.j ]
  %i.o = load i32, ptr %.0.i23, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %_PyUnicode_DATA.exit25, %_PyUnicode_DATA.exit17, %_PyUnicode_DATA.exit
  %.0 = phi i32 [ %i.h, %_PyUnicode_DATA.exit ], [ %i.l, %_PyUnicode_DATA.exit17 ], [ %i.o, %_PyUnicode_DATA.exit25 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @get_locale_info(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.l [
    i32 97, label %bb.b
    i32 44, label %bb.f
    i32 95, label %bb.f
    i32 96, label %bb.f
    i32 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @localeconv() #10          ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 8
  %i.c = tail call i32 @_Py_GetLocaleconvNumeric(ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef %i.b) #10
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = tail call ptr @_PyMem_Strdup(ptr noundef %i.f) #10 ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 32
  store ptr %i.g, ptr %i.h, align 8, !tbaa !52
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @PyErr_NoMemory() #10      ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %2, i64 24
  store ptr %i.g, ptr %i.k, align 8, !tbaa !60
  br label %bb.l

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.l = tail call ptr @PyUnicode_FromOrdinal(i32 noundef 46) #10
  store ptr %i.l, ptr %2, align 8, !tbaa !48
  %i.m = icmp eq i32 %0, 44
  %i.n = select i1 %i.m, i32 44, i32 95
  %i.o = tail call ptr @PyUnicode_FromOrdinal(i32 noundef %i.n) #10 ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !50
  %i.q = load ptr, ptr %2, align 8, !tbaa !48
  %.not34 = icmp eq ptr %i.q, null
  %.not35 = icmp eq ptr %i.o, null
  %or.cond = select i1 %.not34, i1 true, i1 %.not35
  br i1 %or.cond, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not36 = icmp eq i32 %0, 96
  %i.r = getelementptr i8, ptr %2, i64 24         ; 2 uses
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @.str.18, ptr %i.r, align 8, !tbaa !60
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  store ptr @.str.19, ptr %i.r, align 8, !tbaa !60
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.s = tail call ptr @PyUnicode_FromOrdinal(i32 noundef 46) #10
  store ptr %i.s, ptr %2, align 8, !tbaa !48
  %i.t = tail call ptr @Py_GetConstant(i32 noundef 7) #10 ; 2 uses
  %i.u = getelementptr i8, ptr %2, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !50
  %i.v = load ptr, ptr %2, align 8, !tbaa !48
  %.not = icmp eq ptr %i.v, null
  %.not33 = icmp eq ptr %i.t, null
  %or.cond39 = select i1 %.not, i1 true, i1 %.not33
  br i1 %or.cond39, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr i8, ptr %2, i64 24
  store ptr @no_grouping, ptr %i.w, align 8, !tbaa !60
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.h, %bb.i, %bb.k, %bb.a
  %.not37 = icmp eq i32 %1, 0
  br i1 %.not37, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = icmp eq i32 %1, 44
  %i.y = select i1 %i.x, i32 44, i32 95
  %i.z = tail call ptr @PyUnicode_FromOrdinal(i32 noundef %i.y) #10 ; 2 uses
  %i.aa = getelementptr i8, ptr %2, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !51
  %.not38 = icmp eq ptr %i.z, null
  br i1 %.not38, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !60
  %i.ad = icmp eq ptr %i.ac, @no_grouping
  br i1 %i.ad, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  store ptr @.str.18, ptr %i.ab, align 8, !tbaa !60
  br label %.thread

bb.p:                                             ; preds = %bb.l
  %i.ae = tail call ptr @Py_GetConstant(i32 noundef 7) #10
  %i.af = getelementptr i8, ptr %2, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !51
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d, %bb.p, %bb.o, %bb.n, %bb.m, %bb.j, %bb.f
  %.1 = phi i32 [ -1, %bb.m ], [ -1, %bb.j ], [ 0, %bb.p ], [ -1, %bb.f ], [ 0, %bb.n ], [ 0, %bb.o ], [ -1, %bb.d ], [ -1, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @calc_number_widths(ptr noundef nonnull captures(none) initializes((0, 33), (40, 48), (56, 96)) %0, i64 noundef range(i64 0, 3) %1, i32 noundef range(i32 0, 46) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7, ptr noundef nonnull readonly captures(none) %8, ptr noundef nonnull readonly captures(none) %9, ptr noundef nonnull captures(none) %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.not = icmp ne i32 %7, 0                       ; 2 uses
  %.neg = sext i1 %.not to i64
  %i.c = add i64 %3, %5
  %i.d = add i64 %i.c, %6
  %i.e = sub i64 %4, %i.d
  %i.f = add i64 %i.e, %.neg
  %i.g = getelementptr i8, ptr %0, i64 88         ; 2 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !61
  store i64 0, ptr %0, align 8, !tbaa !63
  %i.h = getelementptr i8, ptr %0, i64 8          ; 3 uses
  store i64 %1, ptr %i.h, align 8, !tbaa !64
  br i1 %.not, label %bb.b, label %bb.c
end_hunk_2
begin_hunk_3_@_PyUnicode_InsertThousandsGrouping:bb.a

.peel.begin:                                      ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.k, %bb.c ], [ %i.j, %bb.b ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !43
  %i.l = load i8, ptr %6, align 1, !tbaa !15      ; 4 uses
  switch i8 %i.l, label %GroupGenerator_next.exit.peel [
    i8 0, label %GroupGenerator_next.exit.thread
    i8 127, label %GroupGenerator_next.exit.thread
  ]

GroupGenerator_next.exit.peel:                    ; preds = %.peel.begin
  %i.m = icmp slt i8 %i.l, 1
  br i1 %i.m, label %GroupGenerator_next.exit.thread, label %bb.d

bb.d:                                             ; preds = %GroupGenerator_next.exit.peel
  %.0.i.peel = zext nneg i8 %i.l to i64
  %i.n = tail call i64 @llvm.smax.i64(i64 %4, i64 %i.c)
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.0.i.peel) ; 3 uses
  %i.q = sub i64 %i.p, %4
  %i.r = tail call i64 @llvm.smax.i64(i64 %i.q, i64 0) ; 2 uses
  %i.s = icmp slt i64 %4, 0
  %i.t = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.p)
  %i.u = select i1 %i.s, i64 0, i64 %i.t          ; 3 uses
  %i.v = add nuw i64 %i.r, %i.u                   ; 2 uses
  call fastcc void @InsertThousandsGrouping_fill(ptr noundef %0, ptr noundef %i.a, ptr noundef %2, ptr noundef %i.b, i64 noundef %i.u, i64 noundef %i.r, ptr noundef null, i64 noundef %.val, ptr noundef %8, i32 noundef %9)
  %i.w = sub i64 %4, %i.u                         ; 2 uses
  %i.x = sub nsw i64 %i.c, %i.p                   ; 2 uses
  %i.y = icmp slt i64 %i.w, 1
  %i.z = icmp slt i64 %i.x, 1
  %or.cond.peel = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.d, %GroupGenerator_next.exit.thread153
  %.sroa.4.0 = phi i8 [ %.sroa.4.1156, %GroupGenerator_next.exit.thread153 ], [ %i.l, %bb.d ]
  %.sroa.7127.0 = phi i64 [ %.sroa.7127.1157, %GroupGenerator_next.exit.thread153 ], [ 1, %bb.d ] ; 3 uses
  %.0110 = phi i64 [ %i.an, %GroupGenerator_next.exit.thread153 ], [ %i.v, %bb.d ] ; 3 uses
  %.0105 = phi i64 [ %i.ao, %GroupGenerator_next.exit.thread153 ], [ %i.w, %bb.d ] ; 7 uses
  %.pn = phi i64 [ %i.ap, %GroupGenerator_next.exit.thread153 ], [ %i.x, %bb.d ]
  %.0 = sub i64 %.pn, %.val                       ; 4 uses
  %i.aa = getelementptr i8, ptr %6, i64 %.sroa.7127.0
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15  ; 3 uses
  switch i8 %i.ab, label %GroupGenerator_next.exit [
    i8 0, label %GroupGenerator_next.exit.thread153
    i8 127, label %GroupGenerator_next.exit.thread
  ]

GroupGenerator_next.exit:                         ; preds = %.peel.next
  %i.ac = add i64 %.sroa.7127.0, 1
  %i.ad = icmp slt i8 %i.ab, 1
  br i1 %i.ad, label %GroupGenerator_next.exit.thread, label %GroupGenerator_next.exit.thread153

GroupGenerator_next.exit.thread153:               ; preds = %.peel.next, %GroupGenerator_next.exit
  %.sroa.7127.1157 = phi i64 [ %i.ac, %GroupGenerator_next.exit ], [ %.sroa.7127.0, %.peel.next ]
  %.sroa.4.1156 = phi i8 [ %i.ab, %GroupGenerator_next.exit ], [ %.sroa.4.0, %.peel.next ] ; 2 uses
  %.0.i = zext nneg i8 %.sroa.4.1156 to i64
  %i.ae = tail call i64 @llvm.smax.i64(i64 %.0105, i64 %.0)
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 1)
  %i.af = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %.0.i) ; 3 uses
  %i.ag = sub i64 %i.af, %.0105
  %i.ah = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 0) ; 2 uses
  %i.ai = icmp slt i64 %.0105, 0
  %i.aj = tail call i64 @llvm.smin.i64(i64 %.0105, i64 %i.af)
  %i.ak = select i1 %i.ai, i64 0, i64 %i.aj       ; 3 uses
  %i.al = add i64 %.val, %.0110
  %i.am = add i64 %i.al, %i.ah
  %i.an = add i64 %i.am, %i.ak                    ; 2 uses
  call fastcc void @InsertThousandsGrouping_fill(ptr noundef %0, ptr noundef %i.a, ptr noundef %2, ptr noundef %i.b, i64 noundef %i.ak, i64 noundef %i.ah, ptr noundef %7, i64 noundef %.val, ptr noundef %8, i32 noundef %9)
  %i.ao = sub i64 %.0105, %i.ak                   ; 2 uses
  %i.ap = sub i64 %.0, %i.af                      ; 2 uses
  %i.aq = icmp slt i64 %i.ao, 1
  %i.ar = icmp slt i64 %i.ap, 1
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %.loopexit, label %.peel.next, !llvm.loop !77

GroupGenerator_next.exit.thread:                  ; preds = %.peel.next, %GroupGenerator_next.exit, %.peel.begin, %GroupGenerator_next.exit.peel, %.peel.begin
  %.0110.lcssa = phi i64 [ 0, %.peel.begin ], [ 0, %GroupGenerator_next.exit.peel ], [ 0, %.peel.begin ], [ %.0110, %GroupGenerator_next.exit ], [ %.0110, %.peel.next ]
  %.not122.lcssa = phi i1 [ true, %.peel.begin ], [ true, %GroupGenerator_next.exit.peel ], [ true, %.peel.begin ], [ false, %GroupGenerator_next.exit ], [ false, %.peel.next ] ; 2 uses
  %.0105.lcssa = phi i64 [ %4, %.peel.begin ], [ %4, %GroupGenerator_next.exit.peel ], [ %4, %.peel.begin ], [ %.0105, %GroupGenerator_next.exit ], [ %.0105, %.peel.next ] ; 3 uses
  %.0.lcssa = phi i64 [ %i.c, %.peel.begin ], [ %i.c, %GroupGenerator_next.exit.peel ], [ %i.c, %.peel.begin ], [ %.0, %GroupGenerator_next.exit ], [ %.0, %.peel.next ]
  %i.as = tail call i64 @llvm.smax.i64(i64 %.0105.lcssa, i64 %.0.lcssa)
  %spec.select126 = tail call i64 @llvm.smax.i64(i64 %i.as, i64 1)
  %i.at = sub i64 %spec.select126, %.0105.lcssa
  %i.au = tail call i64 @llvm.smax.i64(i64 %i.at, i64 0) ; 2 uses
  %i.av = tail call i64 @llvm.smax.i64(i64 %.0105.lcssa, i64 0) ; 2 uses
  %spec.select164 = select i1 %.not122.lcssa, i64 0, i64 %.val
  %i.aw = add i64 %spec.select164, %.0110.lcssa
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %i.ax, %i.av
  %i.az = select i1 %.not122.lcssa, ptr null, ptr %7
  call fastcc void @InsertThousandsGrouping_fill(ptr noundef %0, ptr noundef %i.a, ptr noundef %2, ptr noundef %i.b, i64 noundef %i.av, i64 noundef %i.au, ptr noundef %i.az, i64 noundef %.val, ptr noundef %8, i32 noundef %9)
  br label %.loopexit

.loopexit:                                        ; preds = %GroupGenerator_next.exit.thread153, %bb.d, %GroupGenerator_next.exit.thread
  %.2 = phi i64 [ %i.ay, %GroupGenerator_next.exit.thread ], [ %i.v, %bb.d ], [ %i.an, %GroupGenerator_next.exit.thread153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @InsertThousandsGrouping_fill(ptr noundef readonly captures(address_is_null) %0, ptr noundef nonnull captures(none) %1, ptr noundef %2, ptr noundef nonnull captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef captures(none) %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %8, align 4, !tbaa !7
  %i.b = icmp eq i32 %i.a, 127
  %i.c = icmp ne ptr %6, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %_PyUnicode_Fill.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %6, i64 32
  %.val = load i32, ptr %i.d, align 8             ; 2 uses
  %i.e = and i32 %.val, 64
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.d:                                             ; preds = %bb.c
  %i.f = lshr i32 %.val, 2
  %i.g = and i32 %i.f, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.g, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.g, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %switch.select6.i, %bb.d ], [ 127, %bb.c ]
  store i32 %.0.i, ptr %8, align 4, !tbaa !7
  br label %_PyUnicode_Fill.exit

bb.e:                                             ; preds = %bb.a
  %.not52 = icmp eq ptr %6, null
  %.not54 = icmp eq i32 %9, 0                     ; 2 uses
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not54, label %.thread, label %.thread78

.thread:                                          ; preds = %bb.f
  %i.h = load i64, ptr %1, align 8, !tbaa !43
  %i.i = sub i64 %i.h, %7                         ; 2 uses
  store i64 %i.i, ptr %1, align 8, !tbaa !43
  %i.j = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.j, i64 noundef %i.i, ptr noundef nonnull %6, i64 noundef 0, i64 noundef %7) #10
  br label %bb.h

.thread78:                                        ; preds = %bb.f
  %i.k = load ptr, ptr %0, align 8, !tbaa !34
  %i.l = load i64, ptr %1, align 8, !tbaa !43
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.k, i64 noundef %i.l, ptr noundef nonnull %6, i64 noundef 0, i64 noundef %7) #10
  %i.m = load i64, ptr %1, align 8, !tbaa !43
  %i.n = add i64 %i.m, %7                         ; 2 uses
  store i64 %i.n, ptr %1, align 8, !tbaa !43
  br label %.thread96

bb.g:                                             ; preds = %bb.e
  br i1 %.not54, label %bb.h, label %..critedge57_crit_edge

..critedge57_crit_edge:                           ; preds = %bb.g
  %.pre = load i64, ptr %1, align 8, !tbaa !43
  br label %.thread96

bb.h:                                             ; preds = %bb.g, %.thread
  %i.o = load i64, ptr %1, align 8, !tbaa !43
  %i.p = sub i64 %i.o, %4
  store i64 %i.p, ptr %1, align 8, !tbaa !43
  %i.q = load i64, ptr %3, align 8, !tbaa !43
  %i.r = sub i64 %i.q, %4                         ; 2 uses
  store i64 %i.r, ptr %3, align 8, !tbaa !43
  %i.s = load ptr, ptr %0, align 8, !tbaa !34
  %i.t = load i64, ptr %1, align 8, !tbaa !43
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.s, i64 noundef %i.t, ptr noundef %2, i64 noundef %i.r, i64 noundef %4) #10
  %.not55 = icmp eq i64 %5, 0
  br i1 %.not55, label %_PyUnicode_Fill.exit, label %bb.i

.thread96:                                        ; preds = %.thread78, %..critedge57_crit_edge
  %i.u = phi i64 [ %.pre, %..critedge57_crit_edge ], [ %i.n, %.thread78 ]
  %i.v = load ptr, ptr %0, align 8, !tbaa !34
  %i.w = load i64, ptr %3, align 8, !tbaa !43
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.v, i64 noundef %i.u, ptr noundef %2, i64 noundef %i.w, i64 noundef %4) #10
  %i.x = load i64, ptr %1, align 8, !tbaa !43
  %i.y = add i64 %i.x, %4
  store i64 %i.y, ptr %1, align 8, !tbaa !43
  %i.z = load i64, ptr %3, align 8, !tbaa !43
  %i.aa = add i64 %i.z, %4
  store i64 %i.aa, ptr %3, align 8, !tbaa !43
  %.not5598 = icmp eq i64 %5, 0
  br i1 %.not5598, label %_PyUnicode_Fill.exit, label %.critedge59

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %1, align 8, !tbaa !43    ; 5 uses
  %i.ac = sub i64 %i.ab, %5                       ; 4 uses
  store i64 %i.ac, ptr %1, align 8, !tbaa !43
  %i.ad = load ptr, ptr %0, align 8, !tbaa !34    ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8            ; 3 uses
  %i.ag = and i32 %i.af, 32
  %.not.i60 = icmp eq i32 %i.ag, 0
  br i1 %.not.i60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = and i32 %i.af, 64
  %.not.i.i = icmp eq i32 %i.ah, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.ad, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr i8, ptr %i.ad, i64 56
  %.val4.i = load ptr, ptr %i.ai, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.j, %bb.k
  %.0.i61 = phi ptr [ %.0.i.i, %bb.j ], [ %.val4.i, %bb.k ] ; 6 uses
  %.0.i61128 = ptrtoint ptr %.0.i61 to i64        ; 4 uses
  %10 = and i32 %i.af, 28
  switch i32 %10, label %bb.o [
    i32 4, label %bb.l
    i32 8, label %bb.m
    i32 16, label %bb.n
  ]

bb.l:                                             ; preds = %_PyUnicode_DATA.exit
  %i.aj = getelementptr i8, ptr %.0.i61, i64 %i.ac
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, i8 48, i64 range(i64 1, 0) %5, i1 false)
  br label %_PyUnicode_Fill.exit

bb.m:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ak = getelementptr [2 x i8], ptr %.0.i61, i64 %i.ac ; 6 uses
  %i.al = getelementptr [2 x i8], ptr %.0.i61, i64 %i.ab ; 2 uses
  %i.am = icmp ult ptr %i.ak, %i.al
  br i1 %i.am, label %iter.check158, label %_PyUnicode_Fill.exit

iter.check158:                                    ; preds = %bb.m
  %i.an = shl i64 %i.ab, 1                        ; 2 uses
  %i.ao = add i64 %i.an, %.0.i61128               ; 2 uses
  %i.ap = add i64 %i.ao, 2
  %i.aq = shl i64 %5, 1                           ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %umax142 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.ao)
  %i.as = add i64 %umax142, %i.aq
  %i.at = xor i64 %.0.i61128, -1
  %i.au = add i64 %i.as, %i.at
  %i.av = sub i64 %i.au, %i.an                    ; 3 uses
  %i.aw = lshr i64 %i.av, 1
  %i.ax = add nuw i64 %i.aw, 1                    ; 5 uses
  %min.iters.check144 = icmp ult i64 %i.av, 6
  br i1 %min.iters.check144, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check145

vector.main.loop.iter.check145:                   ; preds = %iter.check158
  %min.iters.check146 = icmp ult i64 %i.av, 30
  br i1 %min.iters.check146, label %vec.epilog.ph162, label %vector.ph147

vector.ph147:                                     ; preds = %vector.main.loop.iter.check145
  %n.mod.vf148 = and i64 %i.ax, 12
  %n.vec149 = and i64 %i.ax, -16                  ; 4 uses
  %i.ay = shl i64 %n.vec149, 1
  %i.az = getelementptr i8, ptr %i.ak, i64 %i.ay
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph147
  %index151 = phi i64 [ 0, %vector.ph147 ], [ %index.next153, %vector.body150 ] ; 2 uses
  %i.ba = shl i64 %index151, 1
  %next.gep152 = getelementptr i8, ptr %i.ak, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep152, i64 16
  store <8 x i16> splat (i16 48), ptr %next.gep152, align 2, !tbaa !47
  store <8 x i16> splat (i16 48), ptr %i.bb, align 2, !tbaa !47
  %index.next153 = add nuw i64 %index151, 16      ; 2 uses
  %i.bc = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.bc, label %middle.block154, label %vector.body150, !llvm.loop !79

middle.block154:                                  ; preds = %vector.body150
  %cmp.n155 = icmp eq i64 %i.ax, %n.vec149
  br i1 %cmp.n155, label %_PyUnicode_Fill.exit, label %vec.epilog.iter.check160

vec.epilog.iter.check160:                         ; preds = %middle.block154
  %min.epilog.iters.check161 = icmp eq i64 %n.mod.vf148, 0
  br i1 %min.epilog.iters.check161, label %.lr.ph30.i.preheader, label %vec.epilog.ph162, !prof !82

vec.epilog.ph162:                                 ; preds = %vector.main.loop.iter.check145, %vec.epilog.iter.check160
  %vec.epilog.resume.val156 = phi i64 [ %n.vec149, %vec.epilog.iter.check160 ], [ 0, %vector.main.loop.iter.check145 ]
  %n.vec164 = and i64 %i.ax, -4                   ; 3 uses
  %i.bd = shl i64 %n.vec164, 1
  %i.be = getelementptr i8, ptr %i.ak, i64 %i.bd
  br label %vec.epilog.vector.body165

vec.epilog.vector.body165:                        ; preds = %vec.epilog.vector.body165, %vec.epilog.ph162
  %index166 = phi i64 [ %vec.epilog.resume.val156, %vec.epilog.ph162 ], [ %index.next168, %vec.epilog.vector.body165 ] ; 2 uses
  %i.bf = shl i64 %index166, 1
  %next.gep167 = getelementptr i8, ptr %i.ak, i64 %i.bf
  store <4 x i16> splat (i16 48), ptr %next.gep167, align 2, !tbaa !47
  %index.next168 = add nuw i64 %index166, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next168, %n.vec164
  br i1 %i.bg, label %vec.epilog.middle.block169, label %vec.epilog.vector.body165, !llvm.loop !83

vec.epilog.middle.block169:                       ; preds = %vec.epilog.vector.body165
  %cmp.n170 = icmp eq i64 %i.ax, %n.vec164
  br i1 %cmp.n170, label %_PyUnicode_Fill.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check158, %vec.epilog.iter.check160, %vec.epilog.middle.block169
  %.029.i.ph = phi ptr [ %i.ak, %iter.check158 ], [ %i.az, %vec.epilog.iter.check160 ], [ %i.be, %vec.epilog.middle.block169 ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.029.i = phi ptr [ %i.bh, %.lr.ph30.i ], [ %.029.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  store i16 48, ptr %.029.i, align 2, !tbaa !47
  %i.bh = getelementptr i8, ptr %.029.i, i64 2    ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %i.al
  br i1 %i.bi, label %.lr.ph30.i, label %_PyUnicode_Fill.exit, !llvm.loop !84

bb.n:                                             ; preds = %_PyUnicode_DATA.exit
  %i.bj = getelementptr [4 x i8], ptr %.0.i61, i64 %i.ac ; 4 uses
  %i.bk = getelementptr [4 x i8], ptr %.0.i61, i64 %i.ab ; 2 uses
  %i.bl = icmp ult ptr %i.bj, %i.bk
  br i1 %i.bl, label %.lr.ph.i.preheader, label %_PyUnicode_Fill.exit

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.bm = shl i64 %i.ab, 2                        ; 2 uses
  %i.bn = add i64 %i.bm, %.0.i61128               ; 2 uses
  %i.bo = add i64 %i.bn, 4
  %i.bp = shl i64 %5, 2                           ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp
  %umax129 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 %i.bn)
  %i.br = add i64 %umax129, %i.bp
  %i.bs = xor i64 %.0.i61128, -1
  %i.bt = add i64 %i.br, %i.bs
  %i.bu = sub i64 %i.bt, %i.bm                    ; 2 uses
  %i.bv = lshr i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check131 = icmp ult i64 %i.bu, 28
  br i1 %min.iters.check131, label %.lr.ph.i.preheader172, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph.i.preheader
  %n.vec134 = and i64 %i.bw, 9223372036854775800  ; 3 uses
  %i.bx = shl i64 %n.vec134, 2
  %i.by = getelementptr i8, ptr %i.bj, i64 %i.bx
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph132
  %index136 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body135 ] ; 2 uses
  %i.bz = shl i64 %index136, 2
  %next.gep137 = getelementptr i8, ptr %i.bj, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep137, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep137, align 4, !tbaa !7
  store <4 x i32> splat (i32 48), ptr %i.ca, align 4, !tbaa !7
  %index.next138 = add nuw i64 %index136, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next138, %n.vec134
  br i1 %i.cb, label %middle.block139, label %vector.body135, !llvm.loop !85

middle.block139:                                  ; preds = %vector.body135
  %cmp.n140 = icmp eq i64 %i.bw, %n.vec134
  br i1 %cmp.n140, label %_PyUnicode_Fill.exit, label %.lr.ph.i.preheader172

.lr.ph.i.preheader172:                            ; preds = %.lr.ph.i.preheader, %middle.block139
  %.02628.i.ph = phi ptr [ %i.bj, %.lr.ph.i.preheader ], [ %i.by, %middle.block139 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader172, %.lr.ph.i
  %.02628.i = phi ptr [ %i.cc, %.lr.ph.i ], [ %.02628.i.ph, %.lr.ph.i.preheader172 ] ; 2 uses
  store i32 48, ptr %.02628.i, align 4, !tbaa !7
  %i.cc = getelementptr i8, ptr %.02628.i, i64 4  ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.bk
  br i1 %i.cd, label %.lr.ph.i, label %_PyUnicode_Fill.exit, !llvm.loop !86

bb.o:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

.critedge59:                                      ; preds = %.thread96
  %i.ce = load ptr, ptr %0, align 8, !tbaa !34    ; 3 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 32
  %i.cg = load i32, ptr %i.cf, align 8            ; 3 uses
  %i.ch = and i32 %i.cg, 32
  %.not.i63 = icmp eq i32 %i.ch, 0
  br i1 %.not.i63, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge59
  %i.ci = and i32 %i.cg, 64
  %.not.i.i64 = icmp eq i32 %i.ci, 0
  %.0.v.i.i65 = select i1 %.not.i.i64, i64 56, i64 40
  %.0.i.i66 = getelementptr i8, ptr %i.ce, i64 %.0.v.i.i65
  br label %_PyUnicode_DATA.exit69

bb.q:                                             ; preds = %.critedge59
  %i.cj = getelementptr i8, ptr %i.ce, i64 56
  %.val4.i68 = load ptr, ptr %i.cj, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit69

_PyUnicode_DATA.exit69:                           ; preds = %bb.p, %bb.q
  %.0.i67 = phi ptr [ %.0.i.i66, %bb.p ], [ %.val4.i68, %bb.q ] ; 4 uses
  %.0.i67106 = ptrtoint ptr %.0.i67 to i64        ; 4 uses
  %i.ck = load i64, ptr %1, align 8, !tbaa !43    ; 12 uses
  %11 = and i32 %i.cg, 28
  switch i32 %11, label %bb.u [
    i32 4, label %bb.r
    i32 8, label %bb.s
    i32 16, label %bb.t
  ]

bb.r:                                             ; preds = %_PyUnicode_DATA.exit69
  %i.cl = getelementptr i8, ptr %.0.i67, i64 %i.ck
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cl, i8 48, i64 range(i64 1, 0) %5, i1 false)
  %.pre85 = load i64, ptr %1, align 8, !tbaa !43
  br label %_PyUnicode_Fill.exit74

bb.s:                                             ; preds = %_PyUnicode_DATA.exit69
  %i.cm = getelementptr [2 x i8], ptr %.0.i67, i64 %i.ck ; 7 uses
  %i.cn = getelementptr [2 x i8], ptr %i.cm, i64 %5 ; 2 uses
  %i.co = icmp ult ptr %i.cm, %i.cn
  br i1 %i.co, label %iter.check, label %_PyUnicode_Fill.exit74

iter.check:                                       ; preds = %bb.s
  %i.cp = shl i64 %i.ck, 1                        ; 2 uses
  %i.cq = add i64 %i.cp, %.0.i67106               ; 2 uses
  %i.cr = shl i64 %5, 1
  %i.cs = add i64 %i.cq, %i.cr
  %i.ct = add i64 %i.cq, 2
  %umax107 = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.ct)
  %i.cu = xor i64 %.0.i67106, -1
  %i.cv = add i64 %umax107, %i.cu
  %i.cw = sub i64 %i.cv, %i.cp                    ; 3 uses
  %i.cx = lshr i64 %i.cw, 1
  %i.cy = add nuw i64 %i.cx, 1                    ; 5 uses
  %min.iters.check109 = icmp ult i64 %i.cw, 6
  br i1 %min.iters.check109, label %.lr.ph30.i72.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check110 = icmp ult i64 %i.cw, 30
  br i1 %min.iters.check110, label %vec.epilog.ph, label %vector.ph111

vector.ph111:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf112 = and i64 %i.cy, 12
  %n.vec113 = and i64 %i.cy, -16                  ; 4 uses
  %i.cz = shl i64 %n.vec113, 1
  %i.da = getelementptr i8, ptr %i.cm, i64 %i.cz
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph111
  %index115 = phi i64 [ 0, %vector.ph111 ], [ %index.next117, %vector.body114 ] ; 2 uses
  %i.db = shl i64 %index115, 1
  %next.gep116 = getelementptr i8, ptr %i.cm, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep116, i64 16
  store <8 x i16> splat (i16 48), ptr %next.gep116, align 2, !tbaa !47
  store <8 x i16> splat (i16 48), ptr %i.dc, align 2, !tbaa !47
  %index.next117 = add nuw i64 %index115, 16      ; 2 uses
  %i.dd = icmp eq i64 %index.next117, %n.vec113
  br i1 %i.dd, label %middle.block118, label %vector.body114, !llvm.loop !87

middle.block118:                                  ; preds = %vector.body114
  %cmp.n119 = icmp eq i64 %i.cy, %n.vec113
  br i1 %cmp.n119, label %_PyUnicode_Fill.exit74, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block118
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf112, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i72.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec113, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %i.cy, -4                   ; 3 uses
  %i.de = shl i64 %n.vec122, 1
  %i.df = getelementptr i8, ptr %i.cm, i64 %i.de
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.dg = shl i64 %index123, 1
  %next.gep124 = getelementptr i8, ptr %i.cm, i64 %i.dg
  store <4 x i16> splat (i16 48), ptr %next.gep124, align 2, !tbaa !47
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next125, %n.vec122
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %i.cy, %n.vec122
  br i1 %cmp.n126, label %_PyUnicode_Fill.exit74, label %.lr.ph30.i72.preheader

.lr.ph30.i72.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i73.ph = phi ptr [ %i.cm, %iter.check ], [ %i.da, %vec.epilog.iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %.lr.ph30.i72

.lr.ph30.i72:                                     ; preds = %.lr.ph30.i72.preheader, %.lr.ph30.i72
  %.029.i73 = phi ptr [ %i.di, %.lr.ph30.i72 ], [ %.029.i73.ph, %.lr.ph30.i72.preheader ] ; 2 uses
  store i16 48, ptr %.029.i73, align 2, !tbaa !47
  %i.di = getelementptr i8, ptr %.029.i73, i64 2  ; 2 uses
  %i.dj = icmp ult ptr %i.di, %i.cn
  br i1 %i.dj, label %.lr.ph30.i72, label %_PyUnicode_Fill.exit74, !llvm.loop !89

bb.t:                                             ; preds = %_PyUnicode_DATA.exit69
  %i.dk = getelementptr [4 x i8], ptr %.0.i67, i64 %i.ck ; 5 uses
  %i.dl = getelementptr [4 x i8], ptr %i.dk, i64 %5 ; 2 uses
  %i.dm = icmp ult ptr %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph.i70.preheader, label %_PyUnicode_Fill.exit74

.lr.ph.i70.preheader:                             ; preds = %bb.t
  %i.dn = shl i64 %i.ck, 2                        ; 2 uses
  %i.do = add i64 %i.dn, %.0.i67106               ; 2 uses
  %i.dp = shl i64 %5, 2
  %i.dq = add i64 %i.do, %i.dp
  %i.dr = add i64 %i.do, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.dr)
  %i.ds = xor i64 %.0.i67106, -1
  %i.dt = add i64 %umax, %i.ds
  %i.du = sub i64 %i.dt, %i.dn                    ; 2 uses
  %i.dv = lshr i64 %i.du, 2
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.du, 28
  br i1 %min.iters.check, label %.lr.ph.i70.preheader174, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i70.preheader
  %n.vec = and i64 %i.dw, 9223372036854775800     ; 3 uses
  %i.dx = shl i64 %n.vec, 2
  %i.dy = getelementptr i8, ptr %i.dk, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dk, i64 %i.dz ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> splat (i32 48), ptr %i.ea, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit74, label %.lr.ph.i70.preheader174

.lr.ph.i70.preheader174:                          ; preds = %.lr.ph.i70.preheader, %middle.block
  %.02628.i71.ph = phi ptr [ %i.dk, %.lr.ph.i70.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %.lr.ph.i70.preheader174, %.lr.ph.i70
  %.02628.i71 = phi ptr [ %i.ec, %.lr.ph.i70 ], [ %.02628.i71.ph, %.lr.ph.i70.preheader174 ] ; 2 uses
  store i32 48, ptr %.02628.i71, align 4, !tbaa !7
  %i.ec = getelementptr i8, ptr %.02628.i71, i64 4 ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %i.dl
  br i1 %i.ed, label %.lr.ph.i70, label %_PyUnicode_Fill.exit74, !llvm.loop !91

bb.u:                                             ; preds = %_PyUnicode_DATA.exit69
  unreachable

_PyUnicode_Fill.exit74:                           ; preds = %.lr.ph.i70, %.lr.ph30.i72, %middle.block, %middle.block118, %vec.epilog.middle.block, %bb.r, %bb.s, %bb.t
  %i.ee = phi i64 [ %i.ck, %middle.block118 ], [ %i.ck, %bb.t ], [ %.pre85, %bb.r ], [ %i.ck, %bb.s ], [ %i.ck, %middle.block ], [ %i.ck, %vec.epilog.middle.block ], [ %i.ck, %.lr.ph30.i72 ], [ %i.ck, %.lr.ph.i70 ]
  %i.ef = add i64 %i.ee, %5
  store i64 %i.ef, ptr %1, align 8, !tbaa !43
  br label %_PyUnicode_Fill.exit

_PyUnicode_Fill.exit:                             ; preds = %.lr.ph.i, %.lr.ph30.i, %middle.block139, %middle.block154, %vec.epilog.middle.block169, %.thread96, %bb.n, %bb.m, %bb.l, %_PyUnicode_Fill.exit74, %bb.b, %PyUnicode_MAX_CHAR_VALUE.exit, %bb.h
  ret void
}

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

declare double @PyFloat_AsDouble(ptr noundef) local_unnamed_addr #2

declare ptr @PyOS_double_to_string(double noundef, i8 noundef signext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_PyUnicode_FromASCII(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @parse_number(ptr noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, 2) %1, i64 noundef %2, ptr noundef nonnull writeonly captures(none) %3, ptr noundef nonnull writeonly captures(none) %4, ptr noundef nonnull writeonly captures(none) %5) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7                          ; 3 uses
  %i.e = and i32 %i.b, 32
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 9 uses
  %i.h = icmp slt i64 %1, %2
  br i1 %i.h, label %.lr.ph, label %.critedge33.thread

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit
  switch i32 %i.d, label %PyUnicode_READ.exit [
    i32 1, label %PyUnicode_READ.exit.us
end_hunk_3
