inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@PyUnicode_AsEncodedString:bb.a
bb.ac:                                            ; preds = %bb.aa
  %i.cb = getelementptr i8, ptr %0, i64 56
  %.val4.i.i = load ptr, ptr %i.cb, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.ac, %bb.ab
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.ab ], [ %.val4.i.i, %bb.ac ]
  %i.cc = getelementptr i8, ptr %0, i64 16
  %.val10.i = load i64, ptr %i.cc, align 8, !tbaa !207
  %i.cd = call ptr @PyBytes_FromStringAndSize(ptr noundef %.0.i.i, i64 noundef %.val10.i) #33
  br label %Py_DECREF.exit76

bb.ad:                                            ; preds = %bb.z
  %i.ce = call fastcc ptr @unicode_encode_ucs1(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 128)
  br label %Py_DECREF.exit76

bb.ae:                                            ; preds = %bb.w
  %i.cf = load i32, ptr %i.a, align 1
  %i.cg = xor i32 %i.cf, 1769234796
  %i.ch = getelementptr i8, ptr %i.a, i64 3
  %i.ci = load i32, ptr %i.ch, align 1
  %i.cj = xor i32 %i.ci, 3239529
  %i.ck = or i32 %i.cg, %i.cj
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = load i64, ptr %i.a, align 1
  %i.cp = icmp ne i64 %i.co, 13897201679098220
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cs = load i64, ptr %i.a, align 1
  %i.ct = xor i64 %i.cs, 4122262848698020713
  %i.cu = getelementptr i8, ptr %i.a, i64 3
  %i.cv = load i64, ptr %i.cu, align 1
  %i.cw = xor i64 %i.cv, 13896973169473631
  %i.cx = or i64 %i.ct, %i.cw
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = load i64, ptr %i.a, align 1
  %i.dc = xor i64 %i.db, 6861574022856930153
  %i.dd = getelementptr i8, ptr %i.a, i64 8
  %i.de = load i16, ptr %i.dd, align 1
  %i.df = zext i16 %i.de to i64
  %i.dg = xor i64 %i.df, 49
  %i.dh = or i64 %i.dc, %i.dg
  %i.di = icmp ne i64 %i.dh, 0
  %i.dj = zext i1 %i.di to i32
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ai, label %_PyUnicode_AsASCIIString.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.val.i88 = load ptr, ptr %i.b, align 8, !tbaa !197
  %i.dl = getelementptr i8, ptr %.val.i88, i64 168
  %.val7.i = load i64, ptr %i.dl, align 8, !tbaa !198
  %i.dm = and i64 %.val7.i, 268435456
  %.not.i89 = icmp eq i64 %i.dm, 0
  br i1 %.not.i89, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dn = call i32 @PyErr_BadArgument() #33       ; 0 uses
  br label %Py_DECREF.exit76

bb.ak:                                            ; preds = %bb.ai
  %i.do = getelementptr i8, ptr %0, i64 32
  %i.dp = load i32, ptr %i.do, align 8            ; 3 uses
  %i.dq = and i32 %i.dp, 28
  %i.dr = icmp eq i32 %i.dq, 4
  br i1 %i.dr, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.ds = and i32 %i.dp, 32
  %.not.i.i91 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i91, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dt = and i32 %i.dp, 64
  %.not.i.i.i = icmp eq i32 %i.dt, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i92 = getelementptr i8, ptr %0, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i93

bb.an:                                            ; preds = %bb.al
  %i.du = getelementptr i8, ptr %0, i64 56
  %.val4.i.i96 = load ptr, ptr %i.du, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i93

_PyUnicode_DATA.exit.i93:                         ; preds = %bb.an, %bb.am
  %.0.i.i94 = phi ptr [ %.0.i.i.i92, %bb.am ], [ %.val4.i.i96, %bb.an ]
  %i.dv = getelementptr i8, ptr %0, i64 16
  %.val8.i95 = load i64, ptr %i.dv, align 8, !tbaa !207
  %i.dw = call ptr @PyBytes_FromStringAndSize(ptr noundef %.0.i.i94, i64 noundef %.val8.i95) #33
  br label %Py_DECREF.exit76

bb.ao:                                            ; preds = %bb.ak
  %i.dx = call fastcc ptr @unicode_encode_ucs1(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 256)
  br label %Py_DECREF.exit76

_PyUnicode_AsASCIIString.exit:                    ; preds = %bb.h, %bb.j, %bb.m, %bb.n, %bb.p, %bb.q, %bb.ah, %bb.s, %bb.t
  %i.dy = call ptr @_PyCodec_EncodeText(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #33 ; 14 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %Py_DECREF.exit76, label %bb.ap

bb.ap:                                            ; preds = %_PyUnicode_AsASCIIString.exit
  %i.ea = getelementptr i8, ptr %i.dy, i64 8      ; 2 uses
  %.val79 = load ptr, ptr %i.ea, align 8, !tbaa !197 ; 3 uses
  %i.eb = getelementptr i8, ptr %.val79, i64 168
  %.val81 = load i64, ptr %i.eb, align 8, !tbaa !198
  %i.ec = and i64 %.val81, 134217728
  %.not65 = icmp eq i64 %i.ec, 0
  br i1 %.not65, label %bb.aq, label %Py_DECREF.exit76

bb.aq:                                            ; preds = %bb.ap
  %.not.i97 = icmp eq ptr %.val79, @PyByteArray_Type
  br i1 %.not.i97, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.aq
  %i.ed = call i32 @PyType_IsSubtype(ptr noundef %.val79, ptr noundef nonnull @PyByteArray_Type) #33
  %.not119 = icmp eq i32 %i.ed, 0
  br i1 %.not119, label %bb.ax, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.aq, %PyObject_TypeCheck.exit
  %i.ee = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !194
  %i.ef = call i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.ee, i64 noundef 1, ptr noundef nonnull @.str.51, ptr noundef nonnull %1) #33
  %.not67 = icmp eq i32 %i.ef, 0
  br i1 %.not67, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %PyObject_TypeCheck.exit.thread
  %i.eg = load i32, ptr %i.dy, align 8, !tbaa !205 ; 2 uses
  %.not.i75 = icmp sgt i32 %i.eg, -1
  br i1 %.not.i75, label %bb.as, label %Py_DECREF.exit76

bb.as:                                            ; preds = %bb.ar
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %i.dy, align 8, !tbaa !205
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.at, label %Py_DECREF.exit76

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %i.dy) #33
  br label %Py_DECREF.exit76

bb.au:                                            ; preds = %PyObject_TypeCheck.exit.thread
  %i.ej = getelementptr i8, ptr %i.dy, i64 40
  %.val84 = load ptr, ptr %i.ej, align 8, !tbaa !397
  %i.ek = getelementptr i8, ptr %i.dy, i64 16
  %.val85 = load i64, ptr %i.ek, align 8, !tbaa !380
  %i.el = call ptr @PyBytes_FromStringAndSize(ptr noundef %.val84, i64 noundef %.val85) #33 ; 3 uses
  %i.em = load i32, ptr %i.dy, align 8, !tbaa !205 ; 2 uses
  %.not.i73 = icmp sgt i32 %i.em, -1
  br i1 %.not.i73, label %bb.av, label %Py_DECREF.exit76

bb.av:                                            ; preds = %bb.au
  %i.en = add nsw i32 %i.em, -1                   ; 2 uses
  store i32 %i.en, ptr %i.dy, align 8, !tbaa !205
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.aw, label %Py_DECREF.exit76

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.dy) #33
  br label %Py_DECREF.exit76

bb.ax:                                            ; preds = %PyObject_TypeCheck.exit
  %i.ep = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %.val = load ptr, ptr %i.ea, align 8, !tbaa !197
  %i.eq = getelementptr i8, ptr %.val, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !378
  %i.es = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ep, ptr noundef nonnull @.str.52, ptr noundef nonnull %1, ptr noundef %i.er) #33 ; 0 uses
  %i.et = load i32, ptr %i.dy, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.et, -1
  br i1 %.not.i, label %bb.ay, label %Py_DECREF.exit76

bb.ay:                                            ; preds = %bb.ax
  %i.eu = add nsw i32 %i.et, -1                   ; 2 uses
  store i32 %i.eu, ptr %i.dy, align 8, !tbaa !205
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.az, label %Py_DECREF.exit76

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %i.dy) #33
  br label %Py_DECREF.exit76

Py_DECREF.exit76:                                 ; preds = %bb.ao, %_PyUnicode_DATA.exit.i93, %bb.aj, %_PyUnicode_DATA.exit.i, %bb.y, %bb.ad, %bb.u, %bb.r, %bb.o, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap, %_PyUnicode_AsASCIIString.exit, %bb.c, %bb.e, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ %i.i, %bb.e ], [ null, %bb.c ], [ null, %_PyUnicode_AsASCIIString.exit ], [ %i.dy, %bb.ap ], [ %i.el, %bb.aw ], [ null, %bb.az ], [ null, %bb.at ], [ null, %bb.ar ], [ null, %bb.as ], [ %i.el, %bb.au ], [ %i.el, %bb.av ], [ null, %bb.ax ], [ null, %bb.ay ], [ null, %bb.aj ], [ %i.dx, %bb.ao ], [ %i.dw, %_PyUnicode_DATA.exit.i93 ], [ %i.ce, %bb.ad ], [ %i.cd, %_PyUnicode_DATA.exit.i ], [ null, %bb.y ], [ %i.bb, %bb.u ], [ %i.aw, %bb.r ], [ %i.ar, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.2
}

declare ptr @_PyInterpreterState_GetConfig(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc range(i32 1, 9) i32 @get_error_handler_wide(ptr noundef readonly %0) unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.168) #34
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.169) #34
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.170) #34
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.171) #34
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.172) #34
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.173) #34
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.174) #34
  %i.o = icmp eq i32 %i.n, 0
  %. = select i1 %i.o, i32 7, i32 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 6, %bb.g ], [ 1, %bb.a ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ %., %bb.h ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_AsUTF8String(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @unicode_encode_utf8(ptr noundef %0, i32 noundef 0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_EncodeUTF16(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val129 = load ptr, ptr %i.d, align 8, !tbaa !197
  %i.e = getelementptr i8, ptr %.val129, i64 168
  %.val132 = load i64, ptr %i.e, align 8, !tbaa !198
  %i.f = and i64 %.val132, 268435456
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %ucs1lib_utf16_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = lshr i32 %i.i, 2
  %i.k = and i32 %i.j, 7                          ; 3 uses
  %i.l = and i32 %i.i, 32
  %.not.i137 = icmp eq i32 %i.l, 0
  br i1 %.not.i137, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %i.i, 64
  %.not.i.i = icmp eq i32 %i.m, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.n, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ] ; 18 uses
  %.0.i464 = ptrtoint ptr %.0.i to i64            ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val135 = load i64, ptr %i.o, align 8, !tbaa !207 ; 16 uses
  %i.p = icmp eq i32 %i.k, 4
  br i1 %i.p, label %bb.f, label %.loopexit243

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.q = getelementptr [4 x i8], ptr %.0.i, i64 %.val135 ; 2 uses
  %i.r = icmp ult ptr %.0.i, %i.q
  br i1 %i.r, label %.lr.ph.preheader, label %.loopexit243

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.s = shl i64 %.val135, 2
  %i.t = add i64 %i.s, %.0.i464
  %i.u = add i64 %.0.i464, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.v = xor i64 %.0.i464, -1
  %i.w = add i64 %umax, %i.v                      ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 12
  br i1 %min.iters.check, label %.lr.ph.preheader657, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.y, 9223372036854775804      ; 3 uses
  %i.z = shl i64 %n.vec, 2
  %i.aa = getelementptr i8, ptr %.0.i, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi465 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.i, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load466 = load <2 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.ad = icmp ugt <2 x i32> %wide.load, splat (i32 65535)
  %i.ae = icmp ugt <2 x i32> %wide.load466, splat (i32 65535)
  %i.af = zext <2 x i1> %i.ad to <2 x i64>
  %i.ag = zext <2 x i1> %i.ae to <2 x i64>
  %i.ah = add <2 x i64> %vec.phi, %i.af           ; 2 uses
  %i.ai = add <2 x i64> %vec.phi465, %i.ag        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit243, label %.lr.ph.preheader657

.lr.ph.preheader657:                              ; preds = %.lr.ph.preheader, %middle.block
  %.086277.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %.096276.ph = phi ptr [ %.0.i, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader657, %.lr.ph
  %.086277 = phi i64 [ %spec.select, %.lr.ph ], [ %.086277.ph, %.lr.ph.preheader657 ]
  %.096276 = phi ptr [ %i.al, %.lr.ph ], [ %.096276.ph, %.lr.ph.preheader657 ] ; 2 uses
  %i.al = getelementptr i8, ptr %.096276, i64 4   ; 2 uses
  %i.am = load i32, ptr %.096276, align 4, !tbaa !7
  %i.an = icmp ugt i32 %i.am, 65535
  %i.ao = zext i1 %i.an to i64
  %spec.select = add i64 %.086277, %i.ao          ; 2 uses
  %i.ap = icmp ult ptr %i.al, %i.q
  br i1 %i.ap, label %.lr.ph, label %.loopexit243, !llvm.loop !400

.loopexit243:                                     ; preds = %.lr.ph, %middle.block, %bb.f, %_PyUnicode_DATA.exit
  %.288 = phi i64 [ 0, %_PyUnicode_DATA.exit ], [ 0, %bb.f ], [ %i.ak, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.aq = icmp eq i32 %2, 0                       ; 5 uses
  %.neg235 = select i1 %i.aq, i64 4611686018427387902, i64 4611686018427387903
  %i.ar = sub i64 %.neg235, %.288
  %i.as = icmp sgt i64 %.val135, %i.ar
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit243
  %i.at = tail call ptr @PyErr_NoMemory() #33
  br label %ucs1lib_utf16_encode.exit

bb.h:                                             ; preds = %.loopexit243
  %i.au = zext i1 %i.aq to i64
  %i.av = add i64 %.val135, %i.au
  %i.aw = add i64 %i.av, %.288
  %i.ax = icmp sgt i32 %2, 0                      ; 4 uses
  %i.ay = icmp eq i32 %i.k, 1
  %i.az = shl i64 %i.aw, 1                        ; 2 uses
  br i1 %i.ay, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.az) #33 ; 12 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %ucs1lib_utf16_encode.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %i.ba, i64 32     ; 2 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr i8, ptr %i.ba, i64 34
  store i16 -257, ptr %i.bc, align 2, !tbaa !208
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0219 = phi ptr [ %i.bd, %bb.k ], [ %i.bc, %bb.j ] ; 4 uses
end_hunk_0
begin_hunk_1_@PyUnicode_Splitlines:bb.a
  %.not.i.i124 = icmp sgt i32 %i.hi, -1
  br i1 %.not.i.i124, label %bb.bw, label %asciilib_splitlines.exit

bb.bw:                                            ; preds = %.loopexit.i123
  %i.hj = add nsw i32 %i.hi, -1                   ; 2 uses
  store i32 %i.hj, ptr %i.fx, align 8, !tbaa !205
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.bx, label %asciilib_splitlines.exit

bb.bx:                                            ; preds = %bb.bw
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.fx) #33, !inline_history !566
  br label %asciilib_splitlines.exit

bb.by:                                            ; preds = %_PyUnicode_EnsureUnicode.exit
  unreachable

asciilib_splitlines.exit:                         ; preds = %bb.bl, %bb.av, %bb.f, %bb.y, %bb.bx, %bb.bw, %.loopexit.i123, %bb.br, %_PyUnicode_DATA.exit109, %bb.bh, %bb.bg, %.loopexit.i, %bb.bb, %_PyUnicode_DATA.exit80, %bb.ar, %bb.aq, %_PyUnicode_FromUCS1.exit.thread70.i, %bb.ae, %_PyUnicode_DATA.exit40, %bb.v, %bb.u, %_PyUnicode_FromASCII.exit.thread.i, %bb.l, %_PyUnicode_DATA.exit, %_PyUnicode_EnsureUnicode.exit.thread
  %.020 = phi ptr [ null, %_PyUnicode_EnsureUnicode.exit.thread ], [ %i.n, %bb.f ], [ %i.bq, %bb.y ], [ %i.ee, %bb.av ], [ %i.n, %bb.l ], [ null, %_PyUnicode_DATA.exit ], [ null, %bb.v ], [ null, %_PyUnicode_FromASCII.exit.thread.i ], [ null, %bb.u ], [ %i.bq, %bb.ae ], [ null, %_PyUnicode_DATA.exit40 ], [ null, %bb.ar ], [ null, %_PyUnicode_FromUCS1.exit.thread70.i ], [ null, %bb.aq ], [ %i.ee, %bb.bb ], [ null, %_PyUnicode_DATA.exit80 ], [ null, %bb.bh ], [ null, %.loopexit.i ], [ null, %bb.bg ], [ %i.fx, %bb.br ], [ null, %_PyUnicode_DATA.exit109 ], [ null, %bb.bx ], [ null, %.loopexit.i123 ], [ null, %bb.bw ], [ %i.fx, %bb.bl ]
  ret ptr %.020
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_PyUnicode_Equal(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %unicode_eq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val15.i = load i64, ptr %i.b, align 8, !tbaa !207 ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !207
  %.not.i = icmp eq i64 %.val.i, %.val15.i
  br i1 %.not.i, label %bb.c, label %unicode_eq.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i32 %i.e, 2
  %i.g = and i32 %i.f, 7                          ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = lshr i32 %i.i, 2
  %i.k = and i32 %i.j, 7
  %.not14.i = icmp eq i32 %i.k, %i.g
  br i1 %.not14.i, label %bb.d, label %unicode_eq.exit

bb.d:                                             ; preds = %bb.c
  %i.l = and i32 %i.e, 32
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %i.e, 64
  %.not.i.i.i = icmp eq i32 %i.m, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 56
  %.val4.i.i = load ptr, ptr %i.n, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.e ], [ %.val4.i.i, %bb.f ]
  %i.o = and i32 %i.i, 32
  %.not.i17.i = icmp eq i32 %i.o, 0
  br i1 %.not.i17.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.p = and i32 %i.i, 64
  %.not.i.i18.i = icmp eq i32 %i.p, 0
  %.0.v.i.i19.i = select i1 %.not.i.i18.i, i64 56, i64 40
  %.0.i.i20.i = getelementptr i8, ptr %1, i64 %.0.v.i.i19.i
  br label %_PyUnicode_DATA.exit23.i

bb.h:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.q = getelementptr i8, ptr %1, i64 56
  %.val4.i22.i = load ptr, ptr %i.q, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit23.i

_PyUnicode_DATA.exit23.i:                         ; preds = %bb.h, %bb.g
  %.0.i21.i = phi ptr [ %.0.i.i20.i, %bb.g ], [ %.val4.i22.i, %bb.h ]
  %i.r = zext nneg i32 %i.g to i64
  %i.s = mul i64 %.val15.i, %i.r
  %bcmp.i = tail call i32 @bcmp(ptr %.0.i.i, ptr %.0.i21.i, i64 %i.s)
  %i.t = icmp eq i32 %bcmp.i, 0
  %i.u = zext i1 %i.t to i32
  br label %unicode_eq.exit

unicode_eq.exit:                                  ; preds = %_PyUnicode_DATA.exit23.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ %i.u, %_PyUnicode_DATA.exit23.i ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @PyUnicode_Equal(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val7, i64 168
  %.val9 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val9, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.103, ptr noundef nonnull %0) #33 ; 0 uses
  br label %_PyUnicode_Equal.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !197
  %i.g = getelementptr i8, ptr %.val, i64 168
  %.val8 = load i64, ptr %i.g, align 8, !tbaa !198
  %i.h = and i64 %.val8, 268435456
  %.not6 = icmp eq i64 %i.h, 0
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.104, ptr noundef nonnull %1) #33 ; 0 uses
  br label %_PyUnicode_Equal.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp eq ptr %0, %1
  br i1 %i.k, label %_PyUnicode_Equal.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val15.i.i = load i64, ptr %i.l, align 8, !tbaa !207 ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 16
  %.val.i.i = load i64, ptr %i.m, align 8, !tbaa !207
  %.not.i.i = icmp eq i64 %.val.i.i, %.val15.i.i
  br i1 %.not.i.i, label %bb.g, label %_PyUnicode_Equal.exit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8              ; 3 uses
  %i.p = lshr i32 %i.o, 2
  %i.q = and i32 %i.p, 7                          ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 32
  %i.s = load i32, ptr %i.r, align 8              ; 3 uses
  %i.t = lshr i32 %i.s, 2
  %i.u = and i32 %i.t, 7
  %.not14.i.i = icmp eq i32 %i.u, %i.q
  br i1 %.not14.i.i, label %bb.h, label %_PyUnicode_Equal.exit

bb.h:                                             ; preds = %bb.g
  %i.v = and i32 %i.o, 32
  %.not.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = and i32 %i.o, 64
  %.not.i.i.i.i = icmp eq i32 %i.w, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %0, i64 56
  %.val4.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.i ], [ %.val4.i.i.i, %bb.j ]
  %i.y = and i32 %i.s, 32
  %.not.i17.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i17.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_PyUnicode_DATA.exit.i.i
  %i.z = and i32 %i.s, 64
  %.not.i.i18.i.i = icmp eq i32 %i.z, 0
  %.0.v.i.i19.i.i = select i1 %.not.i.i18.i.i, i64 56, i64 40
  %.0.i.i20.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i19.i.i
  br label %_PyUnicode_DATA.exit23.i.i

bb.l:                                             ; preds = %_PyUnicode_DATA.exit.i.i
  %i.aa = getelementptr i8, ptr %1, i64 56
  %.val4.i22.i.i = load ptr, ptr %i.aa, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit23.i.i

_PyUnicode_DATA.exit23.i.i:                       ; preds = %bb.l, %bb.k
  %.0.i21.i.i = phi ptr [ %.0.i.i20.i.i, %bb.k ], [ %.val4.i22.i.i, %bb.l ]
  %i.ab = zext nneg i32 %i.q to i64
  %i.ac = mul i64 %.val15.i.i, %i.ab
  %bcmp.i.i = tail call i32 @bcmp(ptr %.0.i.i.i, ptr %.0.i21.i.i, i64 %i.ac)
  %i.ad = icmp eq i32 %bcmp.i.i, 0
  %i.ae = zext i1 %i.ad to i32
  br label %_PyUnicode_Equal.exit

_PyUnicode_Equal.exit:                            ; preds = %_PyUnicode_DATA.exit23.i.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 1, %bb.e ], [ 0, %bb.f ], [ %i.ae, %_PyUnicode_DATA.exit23.i.i ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @PyUnicode_Compare(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.b = getelementptr i8, ptr %.val13, i64 168
  %.val15 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val15, 268435456
  %.not = icmp eq i64 %i.c, 0
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 8
  %.val.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !197 ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val.pre, i64 168
  %.val14 = load i64, ptr %i.d, align 8, !tbaa !198
  %i.e = and i64 %.val14, 268435456
  %.not10 = icmp eq i64 %i.e, 0
  br i1 %.not10, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc i32 @unicode_compare(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.e

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.i = getelementptr i8, ptr %.val13, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !378
  %i.k = getelementptr i8, ptr %.val.pre, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !378
  %i.m = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.105, ptr noundef %i.j, ptr noundef %i.l) #33 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %._crit_edge, %bb.d
  %.0 = phi i32 [ -1, %._crit_edge ], [ %i.g, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind memory(read) uwtable
define internal fastcc range(i32 -1, 2) i32 @unicode_compare(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i32 %i.f, 2
  %i.h = and i32 %i.g, 7                          ; 3 uses
  %i.i = and i32 %i.b, 32
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.j, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.k, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 14 uses
  %i.l = and i32 %i.f, 32
  %.not.i205 = icmp eq i32 %i.l, 0
  br i1 %.not.i205, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.m = and i32 %i.f, 64
  %.not.i.i206 = icmp eq i32 %i.m, 0
  %.0.v.i.i207 = select i1 %.not.i.i206, i64 56, i64 40
  %.0.i.i208 = getelementptr i8, ptr %1, i64 %.0.v.i.i207
  br label %_PyUnicode_DATA.exit211

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.n = getelementptr i8, ptr %1, i64 56
  %.val4.i210 = load ptr, ptr %i.n, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit211

_PyUnicode_DATA.exit211:                          ; preds = %bb.d, %bb.e
  %.0.i209 = phi ptr [ %.0.i.i208, %bb.d ], [ %.val4.i210, %bb.e ] ; 9 uses
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val203 = load i64, ptr %i.o, align 8, !tbaa !207 ; 3 uses
  %i.p = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.p, align 8, !tbaa !207 ; 3 uses
  %i.q = tail call i64 @llvm.smin.i64(i64 %.val203, i64 %.val) ; 9 uses
  switch i32 %i.d, label %bb.ai [
    i32 1, label %bb.f
    i32 2, label %bb.o
    i32 4, label %bb.z
  ]

bb.f:                                             ; preds = %_PyUnicode_DATA.exit211
  switch i32 %i.h, label %bb.n [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 4, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @memcmp(ptr noundef %.0.i, ptr noundef %.0.i209, i64 noundef %i.q) #34 ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  %.not198 = icmp eq i32 %i.r, 0
  %.0 = select i1 %i.s, i32 1, i32 -1
  br i1 %.not198, label %.thread, label %bb.ak

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %.0.i, i64 %i.q
  %.not196267 = icmp eq i64 %i.q, 0
  br i1 %.not196267, label %.thread, label %.lr.ph270

.lr.ph270:                                        ; preds = %bb.h, %bb.i
  %.0152269 = phi ptr [ %i.y, %bb.i ], [ %.0.i, %bb.h ] ; 2 uses
  %.0153268 = phi ptr [ %i.z, %bb.i ], [ %.0.i209, %bb.h ] ; 2 uses
  %i.u = load i8, ptr %.0152269, align 1, !tbaa !205
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = load i16, ptr %.0153268, align 2, !tbaa !208
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %.not197 = icmp eq i32 %i.v, %i.x
  br i1 %.not197, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph270
  %i.y = getelementptr i8, ptr %.0152269, i64 1   ; 2 uses
  %i.z = getelementptr i8, ptr %.0153268, i64 2
  %.not196 = icmp eq ptr %i.y, %i.t
  br i1 %.not196, label %.thread, label %.lr.ph270, !llvm.loop !568

bb.j:                                             ; preds = %.lr.ph270
  %i.aa = icmp samesign ult i32 %i.v, %i.x
  %i.ab = select i1 %i.aa, i32 -1, i32 1
  br label %bb.ak

bb.k:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %.0.i, i64 %i.q
  %.not194263 = icmp eq i64 %i.q, 0
  br i1 %.not194263, label %.thread, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.k, %bb.l
  %.0156265 = phi ptr [ %i.ag, %bb.l ], [ %.0.i, %bb.k ] ; 2 uses
  %.0157264 = phi ptr [ %i.ah, %bb.l ], [ %.0.i209, %bb.k ] ; 2 uses
  %i.ad = load i8, ptr %.0156265, align 1, !tbaa !205
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = load i32, ptr %.0157264, align 4, !tbaa !7 ; 2 uses
  %.not195 = icmp eq i32 %i.af, %i.ae
  br i1 %.not195, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph266
  %i.ag = getelementptr i8, ptr %.0156265, i64 1  ; 2 uses
  %i.ah = getelementptr i8, ptr %.0157264, i64 4
  %.not194 = icmp eq ptr %i.ag, %i.ac
  br i1 %.not194, label %.thread, label %.lr.ph266, !llvm.loop !569

bb.m:                                             ; preds = %.lr.ph266
  %i.ai = icmp ugt i32 %i.af, %i.ae
  %i.aj = select i1 %i.ai, i32 -1, i32 1
  br label %bb.ak

bb.n:                                             ; preds = %bb.f
  unreachable

bb.o:                                             ; preds = %_PyUnicode_DATA.exit211
  %.idx274 = shl i64 %i.q, 1                      ; 2 uses
  %i.ak = getelementptr i8, ptr %.0.i, i64 %.idx274 ; 3 uses
  %.not192259 = icmp eq i64 %.idx274, 0           ; 3 uses
  switch i32 %i.h, label %bb.y [
    i32 1, label %bb.p
    i32 2, label %bb.s
    i32 4, label %bb.v
  ]

bb.p:                                             ; preds = %bb.o
  br i1 %.not192259, label %.thread, label %.lr.ph262

.lr.ph262:                                        ; preds = %bb.p, %bb.q
  %.0158261 = phi ptr [ %i.ap, %bb.q ], [ %.0.i, %bb.p ] ; 2 uses
  %.0161260 = phi ptr [ %i.aq, %bb.q ], [ %.0.i209, %bb.p ] ; 2 uses
  %i.al = load i16, ptr %.0158261, align 2, !tbaa !208
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = load i8, ptr %.0161260, align 1, !tbaa !205
  %i.ao = zext i8 %i.an to i32                    ; 2 uses
  %.not193 = icmp eq i32 %i.am, %i.ao
  br i1 %.not193, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph262
  %i.ap = getelementptr i8, ptr %.0158261, i64 2  ; 2 uses
  %i.aq = getelementptr i8, ptr %.0161260, i64 1
  %.not192 = icmp eq ptr %i.ap, %i.ak
  br i1 %.not192, label %.thread, label %.lr.ph262, !llvm.loop !570

bb.r:                                             ; preds = %.lr.ph262
  %i.ar = icmp samesign ult i32 %i.am, %i.ao
  %i.as = select i1 %i.ar, i32 -1, i32 1
  br label %bb.ak

bb.s:                                             ; preds = %bb.o
  br i1 %.not192259, label %.thread, label %.lr.ph258

.lr.ph258:                                        ; preds = %bb.s, %bb.t
  %.0162257 = phi ptr [ %i.av, %bb.t ], [ %.0.i, %bb.s ] ; 2 uses
  %.0163256 = phi ptr [ %i.aw, %bb.t ], [ %.0.i209, %bb.s ] ; 2 uses
  %i.at = load i16, ptr %.0162257, align 2, !tbaa !208 ; 2 uses
  %i.au = load i16, ptr %.0163256, align 2, !tbaa !208 ; 2 uses
  %.not191 = icmp eq i16 %i.at, %i.au
  br i1 %.not191, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph258
  %i.av = getelementptr i8, ptr %.0162257, i64 2  ; 2 uses
  %i.aw = getelementptr i8, ptr %.0163256, i64 2
  %.not190 = icmp eq ptr %i.av, %i.ak
  br i1 %.not190, label %.thread, label %.lr.ph258, !llvm.loop !571

bb.u:                                             ; preds = %.lr.ph258
  %i.ax = icmp ult i16 %i.at, %i.au
  %i.ay = select i1 %i.ax, i32 -1, i32 1
  br label %bb.ak

bb.v:                                             ; preds = %bb.o
  br i1 %.not192259, label %.thread, label %.lr.ph254

.lr.ph254:                                        ; preds = %bb.v, %bb.w
  %.0164253 = phi ptr [ %i.bd, %bb.w ], [ %.0.i209, %bb.v ] ; 2 uses
  %.0165252 = phi ptr [ %i.bc, %bb.w ], [ %.0.i, %bb.v ] ; 2 uses
  %i.az = load i16, ptr %.0165252, align 2, !tbaa !208
  %i.ba = zext i16 %i.az to i32                   ; 2 uses
  %i.bb = load i32, ptr %.0164253, align 4, !tbaa !7 ; 2 uses
  %.not189 = icmp eq i32 %i.bb, %i.ba
  br i1 %.not189, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph254
  %i.bc = getelementptr i8, ptr %.0165252, i64 2  ; 2 uses
  %i.bd = getelementptr i8, ptr %.0164253, i64 4
  %.not188 = icmp eq ptr %i.bc, %i.ak
  br i1 %.not188, label %.thread, label %.lr.ph254, !llvm.loop !572

bb.x:                                             ; preds = %.lr.ph254
  %i.be = icmp ugt i32 %i.bb, %i.ba
end_hunk_1
begin_hunk_2_@unicode_compare:bb.a
bb.ai:                                            ; preds = %_PyUnicode_DATA.exit211
  unreachable

.thread:                                          ; preds = %bb.ae, %bb.ab, %bb.w, %bb.t, %bb.q, %bb.l, %bb.i, %bb.ad, %bb.aa, %bb.v, %bb.s, %bb.p, %bb.k, %bb.h, %bb.ag, %bb.g
  %i.by = icmp eq i64 %.val203, %.val
  br i1 %i.by, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.thread
  %i.bz = icmp slt i64 %.val203, %.val
  %.202 = select i1 %i.bz, i32 -1, i32 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.af, %bb.ac, %bb.x, %bb.u, %bb.r, %bb.m, %bb.j, %bb.aj, %.thread, %bb.g, %bb.ag
  %.9 = phi i32 [ %.8, %bb.ag ], [ %.202, %bb.aj ], [ 0, %.thread ], [ %.0, %bb.g ], [ %i.ab, %bb.j ], [ %i.aj, %bb.m ], [ %i.as, %bb.r ], [ %i.ay, %bb.u ], [ %i.bf, %bb.x ], [ %i.bn, %bb.ac ], [ %i.bv, %bb.af ]
  ret i32 %.9
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @PyUnicode_CompareWithASCIIString(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 1
  %i.f = and i32 %i.b, 32
  %.not.i = icmp eq i32 %i.f, 0                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.g, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.h, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %.0.i.i, %bb.c ], [ %.val4.i, %bb.d ]
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val49 = load i64, ptr %i.i, align 8, !tbaa !207 ; 3 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34 ; 3 uses
  %i.k = tail call i64 @llvm.umin.i64(i64 %.val49, i64 %i.j)
  %i.l = tail call i32 @memcmp(ptr noundef %.0.i, ptr noundef nonnull %1, i64 noundef %i.k) #34 ; 2 uses
  %.not46 = icmp eq i32 %i.l, 0
  br i1 %.not46, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %.inv = icmp sgt i32 %i.l, -1
  %. = select i1 %.inv, i32 1, i32 -1
  br label %.critedge.thread

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.m = icmp ugt i64 %.val49, %i.j
  br i1 %i.m, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ult i64 %.val49, %i.j
  %.47 = sext i1 %i.n to i32
  br label %.critedge.thread

bb.h:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = and i32 %i.b, 64
  %.not.i.i52 = icmp eq i32 %i.o, 0
  %.0.v.i.i53 = select i1 %.not.i.i52, i64 56, i64 40
  %.0.i.i54 = getelementptr i8, ptr %0, i64 %.0.v.i.i53
  br label %_PyUnicode_DATA.exit57

bb.j:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %0, i64 56
  %.val4.i56 = load ptr, ptr %i.p, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit57

_PyUnicode_DATA.exit57:                           ; preds = %bb.i, %bb.j
  %.0.i55 = phi ptr [ %.0.i.i54, %bb.i ], [ %.val4.i56, %bb.j ] ; 6 uses
  switch i32 %i.d, label %_PyUnicode_DATA.exit57.split [
    i32 1, label %_PyUnicode_DATA.exit57.split.us
    i32 2, label %_PyUnicode_DATA.exit57.split.us69
  ]

_PyUnicode_DATA.exit57.split.us:                  ; preds = %_PyUnicode_DATA.exit57
  %i.q = load i8, ptr %.0.i55, align 1, !tbaa !205 ; 2 uses
  %.not61.us84 = icmp eq i8 %i.q, 0
  br i1 %.not61.us84, label %.critedge, label %.lr.ph86

.lr.ph86:                                         ; preds = %_PyUnicode_DATA.exit57.split.us, %PyUnicode_READ.exit.us
  %.in92 = phi i8 [ %i.v, %PyUnicode_READ.exit.us ], [ %i.q, %_PyUnicode_DATA.exit57.split.us ] ; 2 uses
  %.037.us85 = phi i64 [ %i.t, %PyUnicode_READ.exit.us ], [ 0, %_PyUnicode_DATA.exit57.split.us ] ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 %.037.us85
  %i.s = load i8, ptr %i.r, align 1, !tbaa !205   ; 3 uses
  %.not.us = icmp eq i8 %i.s, 0
  br i1 %.not.us, label %.critedge.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph86
  %.not45.us = icmp eq i8 %.in92, %i.s
  br i1 %.not45.us, label %PyUnicode_READ.exit.us, label %.split.us.loopexit94

PyUnicode_READ.exit.us:                           ; preds = %bb.k
  %i.t = add i64 %.037.us85, 1                    ; 3 uses
  %i.u = getelementptr i8, ptr %.0.i55, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !205   ; 2 uses
  %.not61.us = icmp eq i8 %i.v, 0
  br i1 %.not61.us, label %.critedge, label %.lr.ph86, !llvm.loop !575

_PyUnicode_DATA.exit57.split.us69:                ; preds = %_PyUnicode_DATA.exit57
  %i.w = load i16, ptr %.0.i55, align 2, !tbaa !208 ; 2 uses
  %.not61.us7388 = icmp eq i16 %i.w, 0
  br i1 %.not61.us7388, label %.critedge, label %.lr.ph90

.lr.ph90:                                         ; preds = %_PyUnicode_DATA.exit57.split.us69, %PyUnicode_READ.exit.us71
  %.in = phi i16 [ %i.ad, %PyUnicode_READ.exit.us71 ], [ %i.w, %_PyUnicode_DATA.exit57.split.us69 ]
  %.037.us7089 = phi i64 [ %i.ab, %PyUnicode_READ.exit.us71 ], [ 0, %_PyUnicode_DATA.exit57.split.us69 ] ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 %.037.us7089
  %i.y = load i8, ptr %i.x, align 1, !tbaa !205   ; 2 uses
  %.not.us74 = icmp eq i8 %i.y, 0
  br i1 %.not.us74, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph90
  %i.z = zext i16 %.in to i32                     ; 2 uses
  %i.aa = zext i8 %i.y to i32                     ; 2 uses
  %.not45.us75 = icmp eq i32 %i.z, %i.aa
  br i1 %.not45.us75, label %PyUnicode_READ.exit.us71, label %.split.us

PyUnicode_READ.exit.us71:                         ; preds = %bb.l
  %i.ab = add i64 %.037.us7089, 1                 ; 3 uses
  %i.ac = getelementptr [2 x i8], ptr %.0.i55, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !208 ; 2 uses
  %.not61.us73 = icmp eq i16 %i.ad, 0
  br i1 %.not61.us73, label %.critedge, label %.lr.ph90, !llvm.loop !575

_PyUnicode_DATA.exit57.split:                     ; preds = %_PyUnicode_DATA.exit57
  %i.ae = load i32, ptr %.0.i55, align 4, !tbaa !7 ; 2 uses
  %.not6182 = icmp eq i32 %i.ae, 0
  br i1 %.not6182, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit57.split, %PyUnicode_READ.exit
  %i.af = phi i32 [ %i.ap, %PyUnicode_READ.exit ], [ %i.ae, %_PyUnicode_DATA.exit57.split ] ; 2 uses
  %.03783 = phi i64 [ %i.an, %PyUnicode_READ.exit ], [ 0, %_PyUnicode_DATA.exit57.split ] ; 2 uses
  %i.ag = getelementptr i8, ptr %1, i64 %.03783
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !205 ; 2 uses
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %.critedge.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %.not45 = icmp eq i32 %i.af, %i.ai
  br i1 %.not45, label %PyUnicode_READ.exit, label %.split.us

.split.us.loopexit94:                             ; preds = %bb.k
  %i.aj = zext i8 %i.s to i32
  %i.ak = zext i8 %.in92 to i32
  br label %.split.us

.split.us:                                        ; preds = %bb.l, %bb.m, %.split.us.loopexit94
  %.us-phi67 = phi i32 [ %i.ai, %bb.m ], [ %i.aj, %.split.us.loopexit94 ], [ %i.aa, %bb.l ]
  %.us-phi68 = phi i32 [ %i.af, %bb.m ], [ %i.ak, %.split.us.loopexit94 ], [ %i.z, %bb.l ]
  %i.al = icmp ult i32 %.us-phi68, %.us-phi67
  %i.am = select i1 %i.al, i32 -1, i32 1
  br label %.critedge.thread

PyUnicode_READ.exit:                              ; preds = %bb.m
  %i.an = add i64 %.03783, 1                      ; 3 uses
  %i.ao = getelementptr [4 x i8], ptr %.0.i55, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7  ; 2 uses
  %.not61 = icmp eq i32 %i.ap, 0
  br i1 %.not61, label %.critedge, label %.lr.ph, !llvm.loop !575

.critedge:                                        ; preds = %PyUnicode_READ.exit.us71, %PyUnicode_READ.exit.us, %PyUnicode_READ.exit, %_PyUnicode_DATA.exit57.split.us69, %_PyUnicode_DATA.exit57.split, %_PyUnicode_DATA.exit57.split.us
  %.us-phi = phi i64 [ %i.t, %PyUnicode_READ.exit.us ], [ 0, %_PyUnicode_DATA.exit57.split.us ], [ %i.an, %PyUnicode_READ.exit ], [ 0, %_PyUnicode_DATA.exit57.split.us69 ], [ 0, %_PyUnicode_DATA.exit57.split ], [ %i.ab, %PyUnicode_READ.exit.us71 ] ; 2 uses
  %i.aq = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.aq, align 8, !tbaa !207
  %.not62 = icmp eq i64 %.val, %.us-phi
  br i1 %.not62, label %bb.n, label %.critedge.thread

bb.n:                                             ; preds = %.critedge
  %i.ar = getelementptr i8, ptr %1, i64 %.us-phi
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !205
  %.not44 = icmp ne i8 %i.as, 0
  %.48 = sext i1 %.not44 to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph90, %.lr.ph86, %.lr.ph, %.split.us, %.critedge, %bb.n, %bb.e, %bb.f, %bb.g
  %.2 = phi i32 [ %.47, %bb.g ], [ %., %bb.e ], [ 1, %bb.f ], [ %i.am, %.split.us ], [ 1, %.critedge ], [ %.48, %bb.n ], [ 1, %.lr.ph ], [ 1, %.lr.ph86 ], [ 1, %.lr.ph90 ]
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @PyUnicode_EqualToUTF8(ptr noundef readonly captures(none) %0, ptr noundef readonly %1) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34
  %i.b = tail call i32 @PyUnicode_EqualToUTF8AndSize(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @PyUnicode_EqualToUTF8AndSize(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load i32, ptr %i.a, align 8             ; 4 uses
  %i.b = and i32 %.val, 64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %PyUnicode_UTF8.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val112 = load i64, ptr %i.c, align 8, !tbaa !207
  %i.d = icmp eq i64 %2, %.val112
  br i1 %i.d, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %.val, 32
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0.i.i = getelementptr i8, ptr %0, i64 40
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.f, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ]
  %bcmp98 = tail call i32 @bcmp(ptr %.0.i, ptr %1, i64 %2)
  %i.g = icmp eq i32 %bcmp98, 0
  br label %bb.ad

PyUnicode_UTF8.exit:                              ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 48
  %.val.i114 = load ptr, ptr %i.h, align 8, !tbaa !203 ; 2 uses
  %i.i = icmp eq ptr %.val.i114, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %PyUnicode_UTF8.exit
  %.0.in.i = getelementptr i8, ptr %0, i64 40
  %.0.i118 = load i64, ptr %.0.in.i, align 8, !tbaa !193
  %i.j = icmp eq i64 %2, %.0.i118
  br i1 %i.j, label %PyUnicode_UTF8.exit123, label %bb.ad

PyUnicode_UTF8.exit123:                           ; preds = %bb.f
  %bcmp = tail call i32 @bcmp(ptr nonnull %.val.i114, ptr %1, i64 %2)
  %i.k = icmp eq i32 %bcmp, 0
  br label %bb.ad

bb.g:                                             ; preds = %PyUnicode_UTF8.exit
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val111 = load i64, ptr %i.l, align 8, !tbaa !207 ; 4 uses
  %.not85 = icmp uge i64 %.val111, %2
  %i.m = lshr i64 %2, 2
  %i.n = icmp ult i64 %.val111, %i.m
  %or.cond = or i1 %.not85, %i.n
  br i1 %or.cond, label %bb.ad, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %1, i64 %2         ; 4 uses
  %i.p = lshr i32 %.val, 2
  %i.q = and i32 %i.p, 7
  %i.r = and i32 %.val, 32
  %.not.i125 = icmp eq i32 %i.r, 0
  %i.s = getelementptr i8, ptr %0, i64 56         ; 2 uses
  br i1 %.not.i125, label %bb.i, label %_PyUnicode_DATA.exit131

bb.i:                                             ; preds = %bb.h
  %.val4.i130 = load ptr, ptr %i.s, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit131

_PyUnicode_DATA.exit131:                          ; preds = %bb.h, %bb.i
  %.0.i129 = phi ptr [ %.val4.i130, %bb.i ], [ %i.s, %bb.h ] ; 3 uses
  %i.t = ptrtoint ptr %i.o to i64                 ; 3 uses
  %.not97136 = icmp slt i64 %.val111, 1
  br i1 %.not97136, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit131, %bb.ac
  %.071138 = phi i64 [ %i.cq, %bb.ac ], [ 0, %_PyUnicode_DATA.exit131 ] ; 4 uses
  %.074137 = phi ptr [ %.276135, %bb.ac ], [ %1, %_PyUnicode_DATA.exit131 ] ; 31 uses
  switch i32 %i.q, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %.0.i129, i64 %.071138
  %i.v = load i8, ptr %i.u, align 1, !tbaa !205
  %i.w = zext i8 %i.v to i32
  br label %PyUnicode_READ.exit

bb.k:                                             ; preds = %.lr.ph
  %i.x = getelementptr [2 x i8], ptr %.0.i129, i64 %.071138
  %i.y = load i16, ptr %i.x, align 2, !tbaa !208
  %i.z = zext i16 %i.y to i32
  br label %PyUnicode_READ.exit

bb.l:                                             ; preds = %.lr.ph
  %i.aa = getelementptr [4 x i8], ptr %.0.i129, i64 %.071138
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.j, %bb.k, %bb.l
  %.0.i132 = phi i32 [ %i.w, %bb.j ], [ %i.z, %bb.k ], [ %i.ab, %bb.l ] ; 14 uses
  %i.ac = icmp ult i32 %.0.i132, 128
  br i1 %i.ac, label %bb.m, label %bb.o

bb.m:                                             ; preds = %PyUnicode_READ.exit
  %i.ad = icmp eq ptr %i.o, %.074137
  br i1 %i.ad, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load i8, ptr %.074137, align 1, !tbaa !205
  %i.af = zext i8 %i.ae to i32
  %.not96 = icmp eq i32 %.0.i132, %i.af
  %i.ag = getelementptr i8, ptr %.074137, i64 1
  br i1 %.not96, label %bb.ac, label %.thread

bb.o:                                             ; preds = %PyUnicode_READ.exit
  %i.ah = icmp ult i32 %.0.i132, 2048
  br i1 %i.ah, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ai = ptrtoint ptr %.074137 to i64
  %i.aj = sub i64 %i.t, %i.ai
  %i.ak = icmp slt i64 %i.aj, 2
  br i1 %i.ak, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = load i8, ptr %.074137, align 1, !tbaa !205
  %i.am = zext i8 %i.al to i32
  %i.an = lshr i32 %.0.i132, 6
  %i.ao = or disjoint i32 %i.an, 192
  %.not94 = icmp eq i32 %i.ao, %i.am
  br i1 %.not94, label %bb.ab, label %.thread

bb.r:                                             ; preds = %bb.o
  %i.ap = icmp ult i32 %.0.i132, 65536
  br i1 %i.ap, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.aq = and i32 %.0.i132, 63488
  %i.ar = icmp eq i32 %i.aq, 55296
  %i.as = ptrtoint ptr %.074137 to i64
  %i.at = sub i64 %i.t, %i.as
  %i.au = icmp slt i64 %i.at, 3
  %or.cond103 = select i1 %i.ar, i1 true, i1 %i.au
  br i1 %or.cond103, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = load i8, ptr %.074137, align 1, !tbaa !205
  %i.aw = zext i8 %i.av to i32
  %i.ax = lshr i32 %.0.i132, 12
  %i.ay = or disjoint i32 %i.ax, 224
  %.not91 = icmp eq i32 %i.ay, %i.aw
  br i1 %.not91, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr i8, ptr %.074137, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !205
  %i.bb = zext i8 %i.ba to i32
  %i.bc = lshr i32 %.0.i132, 6
  %i.bd = and i32 %i.bc, 63
  %i.be = or disjoint i32 %i.bd, 128
  %.not92 = icmp eq i32 %i.be, %i.bb
  br i1 %.not92, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr i8, ptr %.074137, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !205
  %i.bh = zext i8 %i.bg to i32
  %i.bi = and i32 %.0.i132, 63
  %i.bj = or disjoint i32 %i.bi, 128
  %.not93 = icmp eq i32 %i.bj, %i.bh
  %i.bk = getelementptr i8, ptr %.074137, i64 3
  br i1 %.not93, label %bb.ac, label %.thread

bb.w:                                             ; preds = %bb.r
  %i.bl = ptrtoint ptr %.074137 to i64
  %i.bm = sub i64 %i.t, %i.bl
  %i.bn = icmp slt i64 %i.bm, 4
  br i1 %i.bn, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = load i8, ptr %.074137, align 1, !tbaa !205
  %i.bp = zext i8 %i.bo to i32
  %i.bq = lshr i32 %.0.i132, 18
  %i.br = or i32 %i.bq, 240
  %.not86 = icmp eq i32 %i.br, %i.bp
  br i1 %.not86, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr i8, ptr %.074137, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !205
  %i.bu = zext i8 %i.bt to i32
  %i.bv = lshr i32 %.0.i132, 12
  %i.bw = and i32 %i.bv, 63
  %i.bx = or disjoint i32 %i.bw, 128
  %.not87 = icmp eq i32 %i.bx, %i.bu
  br i1 %.not87, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr i8, ptr %.074137, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !205
  %i.ca = zext i8 %i.bz to i32
  %i.cb = lshr i32 %.0.i132, 6
  %i.cc = and i32 %i.cb, 63
  %i.cd = or disjoint i32 %i.cc, 128
  %.not88 = icmp eq i32 %i.cd, %i.ca
  br i1 %.not88, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.ce = getelementptr i8, ptr %.074137, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !205
  %i.cg = zext i8 %i.cf to i32
  %i.ch = and i32 %.0.i132, 63
  %i.ci = or disjoint i32 %i.ch, 128
  %.not89 = icmp eq i32 %i.ci, %i.cg
  %i.cj = getelementptr i8, ptr %.074137, i64 4
  br i1 %.not89, label %bb.ac, label %.thread

bb.ab:                                            ; preds = %bb.q
  %i.ck = getelementptr i8, ptr %.074137, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !205
  %i.cm = zext i8 %i.cl to i32
  %i.cn = and i32 %.0.i132, 63
  %i.co = or disjoint i32 %i.cn, 128
  %.not95 = icmp eq i32 %i.co, %i.cm
  %i.cp = getelementptr i8, ptr %.074137, i64 2
  br i1 %.not95, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.aa, %bb.v, %bb.n, %bb.ab
  %.276135 = phi ptr [ %i.ag, %bb.n ], [ %i.cp, %bb.ab ], [ %i.bk, %bb.v ], [ %i.cj, %bb.aa ] ; 2 uses
  %i.cq = add nuw nsw i64 %.071138, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cq, %.val111
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !576

.thread:                                          ; preds = %bb.ab, %bb.ac, %bb.n, %bb.v, %bb.aa, %bb.s, %bb.w, %bb.m, %bb.p, %bb.q, %bb.u, %bb.t, %bb.z, %bb.y, %bb.x, %_PyUnicode_DATA.exit131
  %.074.lcssa = phi ptr [ %1, %_PyUnicode_DATA.exit131 ], [ %.074137, %bb.x ], [ %.074137, %bb.y ], [ %.074137, %bb.z ], [ %.074137, %bb.t ], [ %.074137, %bb.u ], [ %.074137, %bb.q ], [ %.074137, %bb.p ], [ %i.o, %bb.m ], [ %.074137, %bb.w ], [ %.074137, %bb.s ], [ %.074137, %bb.aa ], [ %.074137, %bb.v ], [ %.074137, %bb.n ], [ %.276135, %bb.ac ], [ %.074137, %bb.ab ]
  %.not97.lcssa = phi i1 [ true, %_PyUnicode_DATA.exit131 ], [ false, %bb.x ], [ false, %bb.y ], [ false, %bb.z ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.m ], [ false, %bb.w ], [ false, %bb.s ], [ false, %bb.aa ], [ false, %bb.v ], [ false, %bb.n ], [ true, %bb.ac ], [ false, %bb.ab ]
  %i.cr = icmp eq ptr %.074.lcssa, %i.o
  %narrow = select i1 %.not97.lcssa, i1 %i.cr, i1 false
  br label %bb.ad

bb.ad:                                            ; preds = %.thread, %bb.g, %bb.f, %PyUnicode_UTF8.exit123, %bb.b, %_PyUnicode_DATA.exit
  %.5.shrunk = phi i1 [ %i.k, %PyUnicode_UTF8.exit123 ], [ %i.g, %_PyUnicode_DATA.exit ], [ false, %bb.b ], [ false, %bb.f ], [ %narrow, %.thread ], [ false, %bb.g ]
  %.5 = zext i1 %.5.shrunk to i32
  ret i32 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_PyUnicode_EqualToASCIIString(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load i32, ptr %i.a, align 8             ; 2 uses
  %i.b = and i32 %.val, 64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val8 = load i64, ptr %i.c, align 8, !tbaa !207 ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34
  %i.e = icmp eq i64 %i.d, %.val8
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %.val, 32
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0.i.i = getelementptr i8, ptr %0, i64 40
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ]
  %bcmp = tail call i32 @bcmp(ptr %.0.i, ptr nonnull %1, i64 %.val8)
  %i.h = icmp eq i32 %bcmp, 0
  %i.i = zext i1 %i.h to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_PyUnicode_DATA.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.i, %_PyUnicode_DATA.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_RichCompare(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val29 = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val29, i64 168
  %.val31 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val31, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !197
  %i.e = getelementptr i8, ptr %.val, i64 168
  %.val30 = load i64, ptr %i.e, align 8, !tbaa !198
  %i.f = and i64 %.val30, 268435456
  %.not25 = icmp eq i64 %i.f, 0
  br i1 %.not25, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %2, 6
  br i1 %i.h, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %bb.t

bb.f:                                             ; preds = %bb.c
  %i.j = and i32 %2, -2
  %or.cond = icmp eq i32 %i.j, 2
  br i1 %or.cond, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.k = icmp eq i32 %2, 3
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val15.i = load i64, ptr %i.l, align 8, !tbaa !207 ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.m, align 8, !tbaa !207
  %.not.i = icmp eq i64 %.val.i, %.val15.i
  br i1 %.not.i, label %bb.h, label %unicode_eq.exit

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8              ; 3 uses
  %i.p = lshr i32 %i.o, 2
  %i.q = and i32 %i.p, 7                          ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 32
  %i.s = load i32, ptr %i.r, align 8              ; 3 uses
  %i.t = lshr i32 %i.s, 2
  %i.u = and i32 %i.t, 7
  %.not14.i = icmp eq i32 %i.u, %i.q
  br i1 %.not14.i, label %bb.i, label %unicode_eq.exit

bb.i:                                             ; preds = %bb.h
  %i.v = and i32 %i.o, 32
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = and i32 %i.o, 64
  %.not.i.i.i = icmp eq i32 %i.w, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %0, i64 56
  %.val4.i.i = load ptr, ptr %i.x, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.j ], [ %.val4.i.i, %bb.k ]
  %i.y = and i32 %i.s, 32
  %.not.i17.i = icmp eq i32 %i.y, 0
  br i1 %.not.i17.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.z = and i32 %i.s, 64
  %.not.i.i18.i = icmp eq i32 %i.z, 0
  %.0.v.i.i19.i = select i1 %.not.i.i18.i, i64 56, i64 40
  %.0.i.i20.i = getelementptr i8, ptr %1, i64 %.0.v.i.i19.i
  br label %_PyUnicode_DATA.exit23.i

bb.m:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.aa = getelementptr i8, ptr %1, i64 56
  %.val4.i22.i = load ptr, ptr %i.aa, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit23.i

_PyUnicode_DATA.exit23.i:                         ; preds = %bb.m, %bb.l
  %.0.i21.i = phi ptr [ %.0.i.i20.i, %bb.l ], [ %.val4.i22.i, %bb.m ]
  %i.ab = zext nneg i32 %i.q to i64
  %i.ac = mul i64 %.val15.i, %i.ab
  %bcmp.i = tail call i32 @bcmp(ptr %.0.i.i, ptr %.0.i21.i, i64 %i.ac)
  %i.ad = icmp eq i32 %bcmp.i, 0
  %i.ae = zext i1 %i.ad to i64
  br label %unicode_eq.exit

unicode_eq.exit:                                  ; preds = %bb.g, %bb.h, %_PyUnicode_DATA.exit23.i
  %.1.i = phi i64 [ 0, %bb.g ], [ %i.ae, %_PyUnicode_DATA.exit23.i ], [ 0, %bb.h ]
  %i.af = zext i1 %i.k to i64
  %i.ag = xor i64 %.1.i, %i.af
  %i.ah = tail call ptr @PyBool_FromLong(i64 noundef %i.ag) #33
  br label %bb.t

bb.n:                                             ; preds = %bb.f
  %i.ai = tail call fastcc i32 @unicode_compare(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 4 uses
  switch i32 %2, label %bb.s [
    i32 5, label %bb.r
    i32 1, label %bb.q
    i32 0, label %bb.o
    i32 4, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp slt i32 %i.ai, 0
  %_Py_TrueStruct._Py_FalseStruct = select i1 %i.aj, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.ak = icmp sgt i32 %i.ai, 0
  %_Py_TrueStruct._Py_FalseStruct26 = select i1 %i.ak, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.al = icmp slt i32 %i.ai, 1
  %_Py_TrueStruct._Py_FalseStruct27 = select i1 %i.al, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  %i.am = icmp sgt i32 %i.ai, -1
  %_Py_TrueStruct._Py_FalseStruct28 = select i1 %i.am, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  unreachable

switch.lookup:                                    ; preds = %bb.d
  %i.an = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.PyUnicode_RichCompare, i64 %i.an
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.t

bb.t:                                             ; preds = %switch.lookup, %bb.r, %bb.q, %bb.p, %bb.o, %bb.a, %bb.b, %unicode_eq.exit, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ @_Py_NotImplementedStruct, %bb.a ], [ %_Py_TrueStruct._Py_FalseStruct26, %bb.p ], [ %i.ah, %unicode_eq.exit ], [ %_Py_TrueStruct._Py_FalseStruct27, %bb.q ], [ @_Py_NotImplementedStruct, %bb.b ], [ %_Py_TrueStruct._Py_FalseStruct28, %bb.r ], [ %switch.load, %switch.lookup ], [ %_Py_TrueStruct._Py_FalseStruct, %bb.o ]
  ret ptr %.0
}

declare ptr @PyBool_FromLong(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @PyUnicode_Contains(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val54 = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.b = getelementptr i8, ptr %.val54, i64 168
  %.val55 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val55, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.e = getelementptr i8, ptr %.val54, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !378
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.106, ptr noundef %i.f) #33 ; 0 uses
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.i = getelementptr i8, ptr %.val.i, i64 168
  %.val2.i = load i64, ptr %i.i, align 8, !tbaa !198
  %i.j = and i64 %.val2.i, 268435456
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_PyUnicode_EnsureUnicode.exit.thread, label %_PyUnicode_EnsureUnicode.exit

_PyUnicode_EnsureUnicode.exit.thread:             ; preds = %bb.c
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.193, ptr noundef nonnull %0) #33 ; 0 uses
  br label %bb.am

_PyUnicode_EnsureUnicode.exit:                    ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8              ; 3 uses
  %i.o = lshr i32 %i.n, 2
  %i.p = and i32 %i.o, 7                          ; 5 uses
  %i.q = getelementptr i8, ptr %1, i64 32
  %i.r = load i32, ptr %i.q, align 8              ; 3 uses
  %i.s = lshr i32 %i.r, 2
  %i.t = and i32 %i.s, 7                          ; 4 uses
  %i.u = icmp samesign ult i32 %i.p, %i.t
  br i1 %i.u, label %bb.am, label %bb.d

bb.d:                                             ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.v = getelementptr i8, ptr %0, i64 16
  %.val57 = load i64, ptr %i.v, align 8, !tbaa !207 ; 11 uses
  %i.w = getelementptr i8, ptr %1, i64 16
end_hunk_2
begin_hunk_3_@asciilib_rfind_slice:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %spec.select.lcssa.sink.i.i.i = phi i64 [ %spec.select.i.i.i.lcssa, %bb.g ], [ %i.ae, %bb.e ], [ %2, %bb.f ]
  %i.ap = sub nsw i64 %.15065.us.i.i.fr.i, %spec.select.lcssa.sink.i.i.i ; 2 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = icmp sgt i64 %i.ap, 0
  br i1 %i.ar, label %.lr.ph66.split.us.i.i.i, label %asciilib_rfind.exit, !llvm.loop !661

bb.i:                                             ; preds = %.preheader.us.i74.i.i
  %i.as = add nsw i64 %.04862.us.i.i.i, -1
  %i.at = icmp sgt i64 %.04862.us.i.i.i, 1
  br i1 %i.at, label %.preheader.us.i74.i.i, label %asciilib_fastsearch.exit.i, !llvm.loop !662

.lr.ph.i71.i.i:                                   ; preds = %.lr.ph.i71.i.i.prol.loopexit, %.lr.ph.i71.i.i
  %.04660.i.i.i = phi i64 [ %spec.select.i.i.i.1, %.lr.ph.i71.i.i ], [ %.04660.i.i.i.unr, %.lr.ph.i71.i.i.prol.loopexit ]
  %.04759.i.i.i = phi i64 [ %i.bh, %.lr.ph.i71.i.i ], [ %.04759.i.i.i.unr, %.lr.ph.i71.i.i.prol.loopexit ]
  %.04958.i.i.i = phi i64 [ %i.bj, %.lr.ph.i71.i.i ], [ %.04958.i.i.i.unr, %.lr.ph.i71.i.i.prol.loopexit ] ; 4 uses
  %i.au = getelementptr i8, ptr %1, i64 %.04958.i.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !205 ; 2 uses
  %i.aw = and i8 %i.av, 63
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = or i64 %i.ay, %.04759.i.i.i
  %i.ba = icmp eq i8 %i.av, %i.g
  %i.bb = add nsw i64 %.04958.i.i.i, -1           ; 2 uses
  %spec.select.i.i.i = select i1 %i.ba, i64 %i.bb, i64 %.04660.i.i.i
  %i.bc = getelementptr i8, ptr %1, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !205 ; 2 uses
  %i.be = and i8 %i.bd, 63
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = or i64 %i.bg, %i.az                     ; 2 uses
  %i.bi = icmp eq i8 %i.bd, %i.g
  %i.bj = add nsw i64 %.04958.i.i.i, -2           ; 2 uses
  %spec.select.i.i.i.1 = select i1 %i.bi, i64 %i.bj, i64 %spec.select.i.i.i ; 2 uses
  %i.bk = icmp sgt i64 %.04958.i.i.i, 2
  br i1 %i.bk, label %.lr.ph.i71.i.i, label %.preheader56.i.i.i, !llvm.loop !663

asciilib_fastsearch.exit.i:                       ; preds = %bb.i
  %i.bl = icmp slt i64 %.15065.us.i.i.fr.i, 0
  %i.bm = select i1 %i.bl, i64 0, i64 %3
  %spec.select.i = add i64 %i.bm, %.15065.us.i.i.fr.i
  br label %asciilib_rfind.exit

asciilib_rfind.exit:                              ; preds = %bb.d, %bb.h, %bb.a, %bb.b, %.preheader56.i.i.i, %asciilib_fastsearch.exit.i
  %.011.i = phi i64 [ %4, %bb.a ], [ -1, %bb.b ], [ %spec.select.i, %asciilib_fastsearch.exit.i ], [ -1, %.preheader56.i.i.i ], [ -1, %bb.h ], [ -1, %bb.d ]
  ret i64 %.011.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc noundef i64 @ucs1lib_rfind_slice(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef range(i64 2, 1) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 %3
  %i.b = sub i64 %4, %3                           ; 2 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %ucs1lib_rfind.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.b, %2
  %i.e = icmp slt i64 %2, 2
  %or.cond.i = or i1 %i.e, %i.d
  br i1 %or.cond.i, label %ucs1lib_rfind.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i64 %2, -1                       ; 6 uses
  %i.g = load i8, ptr %1, align 1, !tbaa !205     ; 5 uses
  %i.h = and i8 %i.g, 63
  %i.i = zext nneg i8 %i.h to i64
  %i.j = shl nuw i64 1, %i.i                      ; 2 uses
  %xtraiter = and i64 %i.f, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i76.i.i.prol.loopexit, label %.lr.ph.i76.i.i.prol

.lr.ph.i76.i.i.prol:                              ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 %i.f
  %i.l = load i8, ptr %i.k, align 1, !tbaa !205   ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = zext nneg i8 %i.m to i64
  %i.o = shl nuw i64 1, %i.n
  %i.p = or i64 %i.o, %i.j                        ; 2 uses
  %i.q = icmp eq i8 %i.l, %i.g
  %i.r = add nsw i64 %2, -2                       ; 2 uses
  %spec.select.i77.i.i.prol = select i1 %i.q, i64 %i.r, i64 %i.f ; 2 uses
  br label %.lr.ph.i76.i.i.prol.loopexit

.lr.ph.i76.i.i.prol.loopexit:                     ; preds = %.lr.ph.i76.i.i.prol, %bb.c
  %.04660.i.i.i.unr = phi i64 [ %i.f, %bb.c ], [ %spec.select.i77.i.i.prol, %.lr.ph.i76.i.i.prol ]
  %.04759.i.i.i.unr = phi i64 [ %i.j, %bb.c ], [ %i.p, %.lr.ph.i76.i.i.prol ]
  %.04958.i.i.i.unr = phi i64 [ %i.f, %bb.c ], [ %i.r, %.lr.ph.i76.i.i.prol ]
  %.lcssa.unr = phi i64 [ poison, %bb.c ], [ %i.p, %.lr.ph.i76.i.i.prol ]
  %spec.select.i77.i.i.lcssa.unr = phi i64 [ poison, %bb.c ], [ %spec.select.i77.i.i.prol, %.lr.ph.i76.i.i.prol ]
  %i.s = icmp eq i64 %2, 2
  br i1 %i.s, label %.preheader56.i.i.i, label %.lr.ph.i76.i.i

.preheader56.i.i.i:                               ; preds = %.lr.ph.i76.i.i, %.lr.ph.i76.i.i.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.i76.i.i.prol.loopexit ], [ %i.bh, %.lr.ph.i76.i.i ] ; 2 uses
  %spec.select.i77.i.i.lcssa = phi i64 [ %spec.select.i77.i.i.lcssa.unr, %.lr.ph.i76.i.i.prol.loopexit ], [ %spec.select.i77.i.i.1, %.lr.ph.i76.i.i ]
  %i.t = sub i64 %i.b, %2                         ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %.lr.ph66.split.us.i.i.i, label %ucs1lib_rfind.exit

.lr.ph66.split.us.i.i.i:                          ; preds = %.preheader56.i.i.i, %bb.h
  %.15065.us.i.i.i = phi i64 [ %i.aq, %bb.h ], [ %i.t, %.preheader56.i.i.i ]
  %.15065.us.i.i.fr.i = freeze i64 %.15065.us.i.i.i ; 6 uses
  %i.v = getelementptr i8, ptr %i.a, i64 %.15065.us.i.i.fr.i ; 4 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !205
  %i.x = icmp eq i8 %i.w, %i.g
  br i1 %i.x, label %.preheader.us.i80.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph66.split.us.i.i.i
  %.not.us.i79.i.i = icmp eq i64 %.15065.us.i.i.fr.i, 0
  br i1 %.not.us.i79.i.i, label %ucs1lib_rfind.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.v, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !205
  %i.aa = and i8 %i.z, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.ac, %.lcssa
  %.not51.us.i.i.i = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not51.us.i.i.i, i64 %2, i64 0
  br label %bb.h

.preheader.us.i80.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i, %bb.i
  %.04862.us.i.i.i = phi i64 [ %i.as, %bb.i ], [ %i.f, %.lr.ph66.split.us.i.i.i ] ; 4 uses
  %i.af = getelementptr i8, ptr %i.v, i64 %.04862.us.i.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !205
  %i.ah = getelementptr i8, ptr %1, i64 %.04862.us.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !205
  %.not52.us.i.i.i = icmp eq i8 %i.ag, %i.ai
  br i1 %.not52.us.i.i.i, label %bb.i, label %.thread.us.i.i.i

.thread.us.i.i.i:                                 ; preds = %.preheader.us.i80.i.i
  %.not53.us.i.i.i = icmp eq i64 %.15065.us.i.i.fr.i, 0
  br i1 %.not53.us.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.v, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !205
  %i.al = and i8 %i.ak, 63
  %i.am = zext nneg i8 %i.al to i64
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.an, %.lcssa
  %.not54.us.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not54.us.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.us.i.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %spec.select.lcssa.sink.i.i.i = phi i64 [ %spec.select.i77.i.i.lcssa, %bb.g ], [ %i.ae, %bb.e ], [ %2, %bb.f ]
  %i.ap = sub nsw i64 %.15065.us.i.i.fr.i, %spec.select.lcssa.sink.i.i.i ; 2 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = icmp sgt i64 %i.ap, 0
  br i1 %i.ar, label %.lr.ph66.split.us.i.i.i, label %ucs1lib_rfind.exit, !llvm.loop !666

bb.i:                                             ; preds = %.preheader.us.i80.i.i
  %i.as = add nsw i64 %.04862.us.i.i.i, -1
  %i.at = icmp sgt i64 %.04862.us.i.i.i, 1
  br i1 %i.at, label %.preheader.us.i80.i.i, label %ucs1lib_fastsearch.exit.i, !llvm.loop !667

.lr.ph.i76.i.i:                                   ; preds = %.lr.ph.i76.i.i.prol.loopexit, %.lr.ph.i76.i.i
  %.04660.i.i.i = phi i64 [ %spec.select.i77.i.i.1, %.lr.ph.i76.i.i ], [ %.04660.i.i.i.unr, %.lr.ph.i76.i.i.prol.loopexit ]
  %.04759.i.i.i = phi i64 [ %i.bh, %.lr.ph.i76.i.i ], [ %.04759.i.i.i.unr, %.lr.ph.i76.i.i.prol.loopexit ]
  %.04958.i.i.i = phi i64 [ %i.bj, %.lr.ph.i76.i.i ], [ %.04958.i.i.i.unr, %.lr.ph.i76.i.i.prol.loopexit ] ; 4 uses
  %i.au = getelementptr i8, ptr %1, i64 %.04958.i.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !205 ; 2 uses
  %i.aw = and i8 %i.av, 63
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = or i64 %i.ay, %.04759.i.i.i
  %i.ba = icmp eq i8 %i.av, %i.g
  %i.bb = add nsw i64 %.04958.i.i.i, -1           ; 2 uses
  %spec.select.i77.i.i = select i1 %i.ba, i64 %i.bb, i64 %.04660.i.i.i
  %i.bc = getelementptr i8, ptr %1, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !205 ; 2 uses
  %i.be = and i8 %i.bd, 63
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = or i64 %i.bg, %i.az                     ; 2 uses
  %i.bi = icmp eq i8 %i.bd, %i.g
  %i.bj = add nsw i64 %.04958.i.i.i, -2           ; 2 uses
  %spec.select.i77.i.i.1 = select i1 %i.bi, i64 %i.bj, i64 %spec.select.i77.i.i ; 2 uses
  %i.bk = icmp sgt i64 %.04958.i.i.i, 2
  br i1 %i.bk, label %.lr.ph.i76.i.i, label %.preheader56.i.i.i, !llvm.loop !668

ucs1lib_fastsearch.exit.i:                        ; preds = %bb.i
  %i.bl = icmp slt i64 %.15065.us.i.i.fr.i, 0
  %i.bm = select i1 %i.bl, i64 0, i64 %3
  %spec.select.i = add i64 %i.bm, %.15065.us.i.i.fr.i
  br label %ucs1lib_rfind.exit

ucs1lib_rfind.exit:                               ; preds = %bb.d, %bb.h, %bb.a, %bb.b, %.preheader56.i.i.i, %ucs1lib_fastsearch.exit.i
  %.011.i = phi i64 [ %4, %bb.a ], [ -1, %bb.b ], [ %spec.select.i, %ucs1lib_fastsearch.exit.i ], [ -1, %.preheader56.i.i.i ], [ -1, %bb.h ], [ -1, %bb.d ]
  ret i64 %.011.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @asciilib_fastsearch(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef range(i64 1, 0) %3, i32 noundef range(i32 1, 3) %4) unnamed_addr #23 {
bb.a:
  %i.a = icmp slt i64 %1, %3
  br i1 %i.a, label %asciilib_find_char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %3, 2
  br i1 %i.b, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %.not66 = icmp eq i64 %3, 1
  br i1 %.not66, label %bb.d, label %asciilib_find_char.exit

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i32 %4, 1
  %i.d = load i8, ptr %2, align 1, !tbaa !205     ; 4 uses
  br i1 %i.c, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.f = icmp sgt i64 %1, 15
  br i1 %i.f, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.g = icmp ult ptr %0, %i.e
  br i1 %i.g, label %.lr.ph.i, label %asciilib_find_char.exit

bb.f:                                             ; preds = %bb.e
  %i.h = zext i8 %i.d to i32
  %i.i = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.h, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %asciilib_find_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  br label %asciilib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.01721.i = phi ptr [ %i.r, %bb.i ], [ %0, %.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.01721.i, align 1, !tbaa !205
  %i.n = icmp eq i8 %i.m, %i.d
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.o = ptrtoint ptr %.01721.i to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p
  br label %asciilib_find_char.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr i8, ptr %.01721.i, i64 1   ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.r, %i.e
  br i1 %exitcond.not.i, label %asciilib_find_char.exit, label %.lr.ph.i, !llvm.loop !777

bb.j:                                             ; preds = %bb.d
  %i.s = icmp sgt i64 %1, 15
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = zext i8 %i.d to i32
  %i.u = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.t, i64 noundef %1) #34 ; 2 uses
  %.not.i68 = icmp eq ptr %i.u, null
  br i1 %.not.i68, label %asciilib_find_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  br label %asciilib_find_char.exit

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.z = icmp ugt ptr %i.y, %0
  br i1 %i.z, label %.lr.ph, label %asciilib_find_char.exit

bb.n:                                             ; preds = %.lr.ph
  %i.aa = icmp ugt ptr %i.ab, %0
  br i1 %i.aa, label %.lr.ph, label %asciilib_find_char.exit, !llvm.loop !660

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.0.i6712 = phi ptr [ %i.ab, %bb.n ], [ %i.y, %bb.m ]
  %i.ab = getelementptr i8, ptr %.0.i6712, i64 -1 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !205
  %i.ad = icmp eq i8 %i.ac, %i.d
  br i1 %i.ad, label %bb.o, label %bb.n, !llvm.loop !660

bb.o:                                             ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %asciilib_find_char.exit

bb.p:                                             ; preds = %bb.b
  %.not = icmp eq i32 %4, 2
  br i1 %.not, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = icmp slt i64 %1, 2500
  br i1 %i.ah, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = icmp samesign ult i64 %3, 100
  %i.aj = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.aj, %i.ai
  %i.ak = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.ak, %or.cond3
  br i1 %or.cond5, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.al = add nsw i64 %3, -1                      ; 12 uses
  %i.am = getelementptr i8, ptr %2, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !205 ; 5 uses
  %xtraiter = and i64 %i.al, 1
  %i.ao = icmp eq i64 %3, 2
  br i1 %i.ao, label %.lr.ph.i69.epil.preheader, label %.new

.new:                                             ; preds = %bb.s
  %unroll_iter = and i64 %i.al, -2
  br label %.lr.ph.i69

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i69
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i69.epil.preheader

.lr.ph.i69.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.s
  %.068100.i.epil.init = phi i64 [ 0, %bb.s ], [ %i.cx, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.s ], [ %i.ct, %._crit_edge.i.unr-lcssa ]
  %.07898.i.epil.init = phi i64 [ %i.al, %bb.s ], [ %.179.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.ap = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !205 ; 2 uses
  %i.ar = and i8 %i.aq, 63
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = or i64 %i.at, %.06999.i.epil.init
  %i.av = icmp eq i8 %i.aq, %i.an
  %i.aw = xor i64 %.068100.i.epil.init, -1
  %i.ax = add nsw i64 %i.al, %i.aw
  %.179.i.epil = select i1 %i.av, i64 %i.ax, i64 %.07898.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i69.epil.preheader
  %.lcssa24 = phi i64 [ %i.ct, %._crit_edge.i.unr-lcssa ], [ %i.au, %.lr.ph.i69.epil.preheader ]
  %.179.i.lcssa = phi i64 [ %.179.i.1, %._crit_edge.i.unr-lcssa ], [ %.179.i.epil, %.lr.ph.i69.epil.preheader ]
  %i.ay = sub i64 %1, %3                          ; 4 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.al     ; 3 uses
  %i.ba = and i8 %i.an, 63
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = or i64 %.lcssa24, %i.bc                 ; 2 uses
  %.not108.i = icmp slt i64 %i.ay, 0
  br i1 %.not108.i, label %asciilib_find_char.exit, label %.lr.ph111.split.us.i

.lr.ph111.split.us.i:                             ; preds = %._crit_edge.i, %bb.z
  %.066109.us.i = phi i64 [ %i.cb, %bb.z ], [ 0, %._crit_edge.i ] ; 9 uses
  %i.be = getelementptr i8, ptr %i.az, i64 %.066109.us.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !205
  %i.bg = icmp eq i8 %i.bf, %i.an
  br i1 %i.bg, label %.preheader.us.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph111.split.us.i
  %i.bh = add i64 %.066109.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.bh, %i.ay
  br i1 %.not88.us.i, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr i8, ptr %i.az, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bd
  %.not89.us.i = icmp eq i64 %i.bn, 0
  %i.bo = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.bo, %.066109.us.i
  br label %bb.z

bb.v:                                             ; preds = %.preheader.us.i, %bb.aa
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.cc, %bb.aa ] ; 4 uses
  %i.bp = getelementptr i8, ptr %i.cd, i64 %.0102.us.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !205
  %i.br = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !205
  %.not90.us.i = icmp eq i8 %i.bq, %i.bs
  br i1 %.not90.us.i, label %bb.aa, label %._crit_edge104.us.i

._crit_edge104.us.i:                              ; preds = %bb.v
  %i.bt = icmp eq i64 %.0102.us.i, %i.al
  br i1 %i.bt, label %asciilib_find_char.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge104.us.i
  %i.bu = add i64 %.066109.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.bu, %i.ay
  br i1 %.not91.us.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = getelementptr i8, ptr %i.az, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !205
end_hunk_3
begin_hunk_4_@ucs1lib_fastsearch:bb.a
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !802

bb.ag:                                            ; preds = %bb.y
  %i.dc = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.dc, %i.bi
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i, label %bb.y, !llvm.loop !803

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.dd = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.y

.lr.ph.i74:                                       ; preds = %.lr.ph.i74, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dx, %.lr.ph.i74 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.dt, %.lr.ph.i74 ]
  %.07898.i = phi i64 [ %i.bi, %.new ], [ %.179.i.1, %.lr.ph.i74 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i74 ]
  %i.de = getelementptr i8, ptr %2, i64 %.068100.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !205 ; 2 uses
  %i.dg = and i8 %i.df, 63
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = or i64 %i.di, %.06999.i
  %i.dk = icmp eq i8 %i.df, %i.bk
  %i.dl = xor i64 %.068100.i, -1
  %i.dm = add nsw i64 %i.bi, %i.dl
  %.179.i = select i1 %i.dk, i64 %i.dm, i64 %.07898.i
  %i.dn = getelementptr i8, ptr %2, i64 %.068100.i
  %i.do = getelementptr i8, ptr %i.dn, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !205 ; 2 uses
  %i.dq = and i8 %i.dp, 63
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = or i64 %i.ds, %i.dj                     ; 3 uses
  %i.du = icmp eq i8 %i.dp, %i.bk
  %i.dv = xor i64 %.068100.i, -2
  %i.dw = add nsw i64 %i.bi, %i.dv
  %.179.i.1 = select i1 %i.du, i64 %i.dw, i64 %.179.i ; 3 uses
  %i.dx = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i74, !llvm.loop !804

.loopexit.i:                                      ; preds = %bb.af, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.af ]
  %i.dy = icmp eq i32 %5, 0
  %i.dz = select i1 %i.dy, i64 %.377.ph.i, i64 -1
  br label %ucs1lib_find_char.exit

bb.ah:                                            ; preds = %bb.u
  %i.ea = lshr i64 %3, 2
  %i.eb = mul nuw nsw i64 %i.ea, 3
  %i.ec = lshr i64 %1, 2
  %i.ed = icmp samesign ult i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ee = icmp eq i32 %5, 1
  br i1 %i.ee, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ef = tail call fastcc i64 @ucs1lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs1lib_find_char.exit

bb.ak:                                            ; preds = %bb.ai
  %i.eg = tail call fastcc i64 @ucs1lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs1lib_find_char.exit

bb.al:                                            ; preds = %bb.ah
  %i.eh = tail call fastcc i64 @ucs1lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs1lib_find_char.exit

bb.am:                                            ; preds = %bb.s
  %i.ei = add nsw i64 %3, -1                      ; 6 uses
  %i.ej = load i8, ptr %2, align 1, !tbaa !205    ; 5 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el                    ; 2 uses
  %xtraiter171 = and i64 %i.ei, 1
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i76.prol.loopexit, label %.lr.ph.i76.prol

.lr.ph.i76.prol:                                  ; preds = %bb.am
  %i.en = getelementptr i8, ptr %2, i64 %i.ei
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !205 ; 2 uses
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = shl nuw i64 1, %i.eq
  %i.es = or i64 %i.er, %i.em                     ; 2 uses
  %i.et = icmp eq i8 %i.eo, %i.ej
  %i.eu = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i77.prol = select i1 %i.et, i64 %i.eu, i64 %i.ei ; 2 uses
  br label %.lr.ph.i76.prol.loopexit

.lr.ph.i76.prol.loopexit:                         ; preds = %.lr.ph.i76.prol, %bb.am
  %.04660.i.unr = phi i64 [ %i.ei, %bb.am ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %.04759.i.unr = phi i64 [ %i.em, %bb.am ], [ %i.es, %.lr.ph.i76.prol ]
  %.04958.i.unr = phi i64 [ %i.ei, %bb.am ], [ %i.eu, %.lr.ph.i76.prol ]
  %.lcssa162.unr = phi i64 [ poison, %bb.am ], [ %i.es, %.lr.ph.i76.prol ]
  %spec.select.i77.lcssa.unr = phi i64 [ poison, %bb.am ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %i.ev = icmp eq i64 %3, 2
  br i1 %i.ev, label %.preheader56.i, label %.lr.ph.i76

.preheader56.i:                                   ; preds = %.lr.ph.i76, %.lr.ph.i76.prol.loopexit
  %.lcssa162 = phi i64 [ %.lcssa162.unr, %.lr.ph.i76.prol.loopexit ], [ %i.gk, %.lr.ph.i76 ] ; 2 uses
  %spec.select.i77.lcssa = phi i64 [ %spec.select.i77.lcssa.unr, %.lr.ph.i76.prol.loopexit ], [ %spec.select.i77.1, %.lr.ph.i76 ]
  %i.ew = sub i64 %1, %3                          ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  br i1 %i.ex, label %.lr.ph66.split.us.i, label %ucs1lib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ar
  %.15065.us.i = phi i64 [ %i.ft, %bb.ar ], [ %i.ew, %.preheader56.i ] ; 5 uses
  %i.ey = getelementptr i8, ptr %0, i64 %.15065.us.i ; 4 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !205
  %i.fa = icmp eq i8 %i.ez, %i.ej
  br i1 %i.fa, label %.preheader.us.i80, label %bb.an

bb.an:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i79 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i79, label %ucs1lib_find_char.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fb = getelementptr i8, ptr %i.ey, i64 -1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !205
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %.lcssa162
  %.not51.us.i = icmp eq i64 %i.fg, 0
  %i.fh = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ar

.preheader.us.i80:                                ; preds = %.lr.ph66.split.us.i, %bb.as
  %.04862.us.i = phi i64 [ %i.fv, %bb.as ], [ %i.ei, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fi = getelementptr i8, ptr %i.ey, i64 %.04862.us.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !205
  %i.fk = getelementptr i8, ptr %2, i64 %.04862.us.i
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !205
  %.not52.us.i = icmp eq i8 %i.fj, %i.fl
  br i1 %.not52.us.i, label %bb.as, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i80
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.thread.us.i
  %i.fm = getelementptr i8, ptr %i.ey, i64 -1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !205
  %i.fo = and i8 %i.fn, 63
  %i.fp = zext nneg i8 %i.fo to i64
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = and i64 %i.fq, %.lcssa162
  %.not54.us.i = icmp eq i64 %i.fr, 0
  br i1 %.not54.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread.us.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i77.lcssa, %bb.aq ], [ %i.fh, %bb.ao ], [ %3, %bb.ap ]
  %i.fs = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.ft = add nsw i64 %i.fs, -1
  %i.fu = icmp sgt i64 %i.fs, 0
  br i1 %i.fu, label %.lr.ph66.split.us.i, label %ucs1lib_find_char.exit, !llvm.loop !666

bb.as:                                            ; preds = %.preheader.us.i80
  %i.fv = add nsw i64 %.04862.us.i, -1
  %i.fw = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.fw, label %.preheader.us.i80, label %ucs1lib_find_char.exit, !llvm.loop !667

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.prol.loopexit, %.lr.ph.i76
  %.04660.i = phi i64 [ %spec.select.i77.1, %.lr.ph.i76 ], [ %.04660.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gk, %.lr.ph.i76 ], [ %.04759.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04958.i = phi i64 [ %i.gm, %.lr.ph.i76 ], [ %.04958.i.unr, %.lr.ph.i76.prol.loopexit ] ; 4 uses
  %i.fx = getelementptr i8, ptr %2, i64 %.04958.i
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !205 ; 2 uses
  %i.fz = and i8 %i.fy, 63
  %i.ga = zext nneg i8 %i.fz to i64
  %i.gb = shl nuw i64 1, %i.ga
  %i.gc = or i64 %i.gb, %.04759.i
  %i.gd = icmp eq i8 %i.fy, %i.ej
  %i.ge = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i77 = select i1 %i.gd, i64 %i.ge, i64 %.04660.i
  %i.gf = getelementptr i8, ptr %2, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !205 ; 2 uses
  %i.gh = and i8 %i.gg, 63
  %i.gi = zext nneg i8 %i.gh to i64
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = or i64 %i.gj, %i.gc                     ; 2 uses
  %i.gl = icmp eq i8 %i.gg, %i.ej
  %i.gm = add nsw i64 %.04958.i, -2               ; 2 uses
  %spec.select.i77.1 = select i1 %i.gl, i64 %i.gm, i64 %spec.select.i77 ; 2 uses
  %i.gn = icmp sgt i64 %.04958.i, 2
  br i1 %i.gn, label %.lr.ph.i76, label %.preheader56.i, !llvm.loop !668

ucs1lib_find_char.exit:                           ; preds = %bb.ad, %._crit_edge104.us.thread.i, %bb.ar, %bb.an, %bb.as, %bb.n, %bb.i, %bb.r, %bb.q, %.lr.ph.i69, %bb.m, %middle.block, %.preheader56.i, %.loopexit.i, %bb.o, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.al, %bb.ak, %bb.aj
  %.0 = phi i64 [ -1, %.preheader56.i ], [ -1, %bb.a ], [ -1, %bb.c ], [ %4, %bb.q ], [ %.15065.us.i, %bb.as ], [ -1, %bb.m ], [ %spec.select.i, %.lr.ph.i69 ], [ %i.ef, %bb.aj ], [ %i.eg, %bb.ak ], [ %i.eh, %bb.al ], [ %i.k, %bb.g ], [ -1, %bb.f ], [ %i.p, %bb.h ], [ -1, %.preheader.i ], [ %i.x, %bb.l ], [ -1, %bb.k ], [ %i.ag, %bb.o ], [ -1, %bb.n ], [ -1, %bb.i ], [ %i.dz, %.loopexit.i ], [ %i.as, %middle.block ], [ -1, %bb.ar ], [ %.1.i, %bb.r ], [ -1, %bb.an ], [ %4, %bb.ad ], [ %.066110.us.i, %._crit_edge104.us.thread.i ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs1lib__two_way_find(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.ucs1lib__pre, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call fastcc void @ucs1lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @ucs1lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs1lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #25 {
bb.a:
  %5 = alloca %struct.ucs1lib__pre, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call fastcc void @ucs1lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @ucs1lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0193037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0193037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @ucs1lib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.1.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i64 %.1.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs1lib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 1, 0) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #25 {
.lr.ph.preheader:
  %6 = alloca %struct.ucs1lib__pre, align 8       ; 5 uses
  %7 = alloca %struct.ucs1lib__pre, align 8       ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205   ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i8> %broadcast.splatinsert252, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr i8, ptr %2, i64 %index     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 2
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !tbaa !205 ; 2 uses
  %wide.load257 = load <2 x i8>, ptr %i.g, align 1, !tbaa !205 ; 2 uses
  %i.h = and <2 x i8> %wide.load, splat (i8 63)
  %i.i = and <2 x i8> %wide.load257, splat (i8 63)
  %i.j = zext nneg <2 x i8> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i8> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i8> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i8> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !805

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bq, %.lr.ph ]
  %.1108.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1108, %.lr.ph ]
  %i.aa = and i8 %i.d, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %.lcssa, %i.ac                   ; 2 uses
  %.not145 = icmp slt i64 %i.a, 0
  br i1 %.not145, label %.loopexit, label %.lr.ph151.split.us.preheader

.lr.ph151.split.us.preheader:                     ; preds = %._crit_edge
  %i.ae = lshr i64 %3, 2
  %.not124 = icmp eq i32 %5, 0                    ; 2 uses
  br label %.lr.ph151.split.us

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.k
  %.092148.us = phi i64 [ %i.bi, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.0100147.us = phi i64 [ %.2102.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %.0104146.us = phi i64 [ %.2106.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !205
  %i.ah = icmp eq i8 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !205
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.k

bb.c:                                             ; preds = %.preheader.us, %bb.l
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.bj, %bb.l ] ; 5 uses
  %i.ap = getelementptr i8, ptr %i.bk, i64 %.0139.us
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !205
  %i.ar = getelementptr i8, ptr %2, i64 %.0139.us
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !205
  %.not120.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not120.us, label %bb.l, label %._crit_edge141.us

._crit_edge141.us:                                ; preds = %bb.c
  %i.at = icmp eq i64 %.0139.us, %i.b
  br i1 %i.at, label %._crit_edge141.us.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge141.us
  %i.au = add i64 %.0104146.us, 1
  %i.av = add i64 %i.au, %.0139.us                ; 2 uses
  %i.aw = icmp sgt i64 %i.av, %i.ae
  %i.ax = sub i64 %i.a, %.092148.us
  %i.ay = icmp sgt i64 %i.ax, 2000
  %or.cond.us = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr i8, ptr %i.af, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !205
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.ad
  %.not122.us = icmp eq i64 %i.be, 0
  br i1 %.not122.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0107.pn.us = phi i64 [ %.1108.lcssa, %bb.g ], [ %3, %bb.f ]
  %.193.us = add i64 %.0107.pn.us, %.092148.us
  br label %bb.k

._crit_edge141.us.thread:                         ; preds = %bb.l, %._crit_edge141.us
  br i1 %.not124, label %bb.i, label %.thread.thread

bb.i:                                             ; preds = %._crit_edge141.us.thread
  %i.bf = add i64 %.0100147.us, 1                 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %4
  br i1 %i.bg, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i64 %.092148.us, %i.b
  br label %bb.k
end_hunk_4
begin_hunk_5_@ucs2lib_fastsearch:bb.a
  %i.ee = add nsw i64 %i.bu, %i.ed
  %.179.i = select i1 %i.ec, i64 %i.ee, i64 %.07898.i ; 2 uses
  %i.ef = add nuw nsw i64 %.068100.i, 1           ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.ef, %i.bu
  br i1 %exitcond.not.i70, label %._crit_edge.i, label %.lr.ph.i69, !llvm.loop !829

.loopexit.i:                                      ; preds = %bb.al, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.al ]
  %i.eg = select i1 %i.b, i64 %.377.ph.i, i64 -1
  br label %ucs2lib_rfind_char.exit

bb.an:                                            ; preds = %bb.aa
  %i.eh = lshr i64 %3, 2
  %i.ei = mul nuw nsw i64 %i.eh, 3
  %i.ej = lshr i64 %1, 2
  %i.ek = icmp samesign ult i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.el = icmp eq i32 %5, 1
  br i1 %i.el, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.em = tail call fastcc i64 @ucs2lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs2lib_rfind_char.exit

bb.aq:                                            ; preds = %bb.ao
  %i.en = tail call fastcc i64 @ucs2lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs2lib_rfind_char.exit

bb.ar:                                            ; preds = %bb.an
  %i.eo = tail call fastcc i64 @ucs2lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs2lib_rfind_char.exit

bb.as:                                            ; preds = %bb.y
  %i.ep = add nsw i64 %3, -1                      ; 9 uses
  %i.eq = load i16, ptr %2, align 2, !tbaa !208   ; 4 uses
  %i.er = and i16 %i.eq, 63
  %i.es = zext nneg i16 %i.er to i64
  %i.et = shl nuw i64 1, %i.es                    ; 2 uses
  %min.iters.check154 = icmp ult i64 %3, 5
  br i1 %min.iters.check154, label %.lr.ph.i71.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %bb.as
  %n.vec157 = and i64 %i.ep, -4                   ; 2 uses
  %i.eu = and i64 %i.ep, 3
  %i.ev = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.et, i64 0
  %broadcast.splatinsert158 = insertelement <2 x i16> poison, i16 %i.eq, i64 0
  %broadcast.splat159 = shufflevector <2 x i16> %broadcast.splatinsert158, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert160 = insertelement <2 x i64> poison, i64 %i.ep, i64 0
  %broadcast.splat161 = shufflevector <2 x i64> %broadcast.splatinsert160, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ew = add nsw <2 x i64> %broadcast.splat161, <i64 0, i64 -1>
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph155
  %index163 = phi i64 [ 0, %vector.ph155 ], [ %index.next174, %vector.body162 ] ; 2 uses
  %vec.phi164 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph155 ], [ %i.fm, %vector.body162 ]
  %vec.phi165 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph155 ], [ %i.fn, %vector.body162 ]
  %vec.phi166 = phi <2 x i1> [ zeroinitializer, %vector.ph155 ], [ %i.fo, %vector.body162 ]
  %vec.phi167 = phi <2 x i1> [ zeroinitializer, %vector.ph155 ], [ %i.fp, %vector.body162 ]
  %vec.phi168 = phi <2 x i64> [ %i.ev, %vector.ph155 ], [ %i.fi, %vector.body162 ]
  %vec.phi169 = phi <2 x i64> [ zeroinitializer, %vector.ph155 ], [ %i.fj, %vector.body162 ]
  %vec.ind170 = phi <2 x i64> [ %i.ew, %vector.ph155 ], [ %i.fq, %vector.body162 ] ; 3 uses
  %i.ex = add <2 x i64> %vec.ind170, splat (i64 -2)
  %i.ey = sub i64 %i.ep, %index163
  %i.ez = getelementptr [2 x i8], ptr %2, i64 %i.ey ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 -2
  %i.fb = getelementptr i8, ptr %i.ez, i64 -6
  %wide.load171 = load <2 x i16>, ptr %i.fa, align 2, !tbaa !208
  %wide.load172 = load <2 x i16>, ptr %i.fb, align 2, !tbaa !208
  %reverse = shufflevector <2 x i16> %wide.load171, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %reverse173 = shufflevector <2 x i16> %wide.load172, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fc = and <2 x i16> %reverse, splat (i16 63)
  %i.fd = and <2 x i16> %reverse173, splat (i16 63)
  %i.fe = zext nneg <2 x i16> %i.fc to <2 x i64>
  %i.ff = zext nneg <2 x i16> %i.fd to <2 x i64>
  %i.fg = shl nuw <2 x i64> splat (i64 1), %i.fe
  %i.fh = shl nuw <2 x i64> splat (i64 1), %i.ff
  %i.fi = or <2 x i64> %i.fg, %vec.phi168         ; 2 uses
  %i.fj = or <2 x i64> %i.fh, %vec.phi169         ; 2 uses
  %i.fk = icmp eq <2 x i16> %reverse, %broadcast.splat159 ; 2 uses
  %i.fl = icmp eq <2 x i16> %reverse173, %broadcast.splat159 ; 2 uses
  %i.fm = select <2 x i1> %i.fk, <2 x i64> %vec.ind170, <2 x i64> %vec.phi164 ; 2 uses
  %i.fn = select <2 x i1> %i.fl, <2 x i64> %i.ex, <2 x i64> %vec.phi165 ; 2 uses
  %i.fo = or <2 x i1> %vec.phi166, %i.fk          ; 2 uses
  %i.fp = or <2 x i1> %vec.phi167, %i.fl          ; 2 uses
  %index.next174 = add nuw i64 %index163, 4       ; 2 uses
  %i.fq = add <2 x i64> %vec.ind170, splat (i64 -4)
  %i.fr = icmp eq i64 %index.next174, %n.vec157
  br i1 %i.fr, label %middle.block175, label %vector.body162, !llvm.loop !830

middle.block175:                                  ; preds = %vector.body162
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.fm, <2 x i64> %i.fn)
  %i.fs = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.ft = add nsw i64 %i.fs, -1
  %bin.rdx = or <2 x i1> %i.fp, %i.fo
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.fu = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not201 = icmp eq i2 %i.fu, 0
  %rdx.select = select i1 %.not201, i64 %i.ep, i64 %i.ft ; 2 uses
  %bin.rdx176 = or <2 x i64> %i.fj, %i.fi
  %i.fv = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx176) ; 2 uses
  %cmp.n177 = icmp eq i64 %i.ep, %n.vec157
  br i1 %cmp.n177, label %.preheader56.i, label %.lr.ph.i71.preheader

.lr.ph.i71.preheader:                             ; preds = %bb.as, %middle.block175
  %.04660.i.ph = phi i64 [ %i.ep, %bb.as ], [ %rdx.select, %middle.block175 ]
  %.04759.i.ph = phi i64 [ %i.et, %bb.as ], [ %i.fv, %middle.block175 ]
  %.04958.i.ph = phi i64 [ %i.ep, %bb.as ], [ %i.eu, %middle.block175 ]
  br label %.lr.ph.i71

.preheader56.i:                                   ; preds = %.lr.ph.i71, %middle.block175
  %.lcssa146 = phi i64 [ %i.fv, %middle.block175 ], [ %i.hc, %.lr.ph.i71 ] ; 2 uses
  %spec.select.i72.lcssa = phi i64 [ %rdx.select, %middle.block175 ], [ %spec.select.i72, %.lr.ph.i71 ]
  %i.fw = sub i64 %1, %3                          ; 2 uses
  %i.fx = icmp sgt i64 %i.fw, -1
  br i1 %i.fx, label %.lr.ph66.split.us.i, label %ucs2lib_rfind_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ax
  %.15065.us.i = phi i64 [ %i.gt, %bb.ax ], [ %i.fw, %.preheader56.i ] ; 5 uses
  %i.fy = getelementptr [2 x i8], ptr %0, i64 %.15065.us.i ; 4 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !208
  %i.ga = icmp eq i16 %i.fz, %i.eq
  br i1 %i.ga, label %.preheader.us.i74, label %bb.at

bb.at:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i73 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i73, label %ucs2lib_rfind_char.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gb = getelementptr i8, ptr %i.fy, i64 -2
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !208
  %i.gd = and i16 %i.gc, 63
  %i.ge = zext nneg i16 %i.gd to i64
  %i.gf = shl nuw i64 1, %i.ge
  %i.gg = and i64 %i.gf, %.lcssa146
  %.not51.us.i = icmp eq i64 %i.gg, 0
  %i.gh = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ax

.preheader.us.i74:                                ; preds = %.lr.ph66.split.us.i, %bb.ay
  %.04862.us.i = phi i64 [ %i.gv, %bb.ay ], [ %i.ep, %.lr.ph66.split.us.i ] ; 4 uses
  %i.gi = getelementptr [2 x i8], ptr %i.fy, i64 %.04862.us.i
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !208
  %i.gk = getelementptr [2 x i8], ptr %2, i64 %.04862.us.i
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !208
  %.not52.us.i = icmp eq i16 %i.gj, %i.gl
  br i1 %.not52.us.i, label %bb.ay, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i74
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.thread.us.i
  %i.gm = getelementptr i8, ptr %i.fy, i64 -2
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !208
  %i.go = and i16 %i.gn, 63
  %i.gp = zext nneg i16 %i.go to i64
  %i.gq = shl nuw i64 1, %i.gp
  %i.gr = and i64 %i.gq, %.lcssa146
  %.not54.us.i = icmp eq i64 %i.gr, 0
  br i1 %.not54.us.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread.us.i
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i72.lcssa, %bb.aw ], [ %i.gh, %bb.au ], [ %3, %bb.av ]
  %i.gs = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.gt = add nsw i64 %i.gs, -1
  %i.gu = icmp sgt i64 %i.gs, 0
  br i1 %i.gu, label %.lr.ph66.split.us.i, label %ucs2lib_rfind_char.exit, !llvm.loop !831

bb.ay:                                            ; preds = %.preheader.us.i74
  %i.gv = add nsw i64 %.04862.us.i, -1
  %i.gw = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.gw, label %.preheader.us.i74, label %ucs2lib_rfind_char.exit, !llvm.loop !832

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.preheader, %.lr.ph.i71
  %.04660.i = phi i64 [ %spec.select.i72, %.lr.ph.i71 ], [ %.04660.i.ph, %.lr.ph.i71.preheader ]
  %.04759.i = phi i64 [ %i.hc, %.lr.ph.i71 ], [ %.04759.i.ph, %.lr.ph.i71.preheader ]
  %.04958.i = phi i64 [ %i.he, %.lr.ph.i71 ], [ %.04958.i.ph, %.lr.ph.i71.preheader ] ; 3 uses
  %i.gx = getelementptr [2 x i8], ptr %2, i64 %.04958.i
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !208 ; 2 uses
  %i.gz = and i16 %i.gy, 63
  %i.ha = zext nneg i16 %i.gz to i64
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = or i64 %i.hb, %.04759.i                 ; 2 uses
  %i.hd = icmp eq i16 %i.gy, %i.eq
  %i.he = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i72 = select i1 %i.hd, i64 %i.he, i64 %.04660.i ; 2 uses
  %i.hf = icmp samesign ugt i64 %.04958.i, 1
  br i1 %i.hf, label %.lr.ph.i71, label %.preheader56.i, !llvm.loop !833

ucs2lib_rfind_char.exit:                          ; preds = %bb.aj, %._crit_edge104.us.thread.i, %bb.ax, %bb.at, %bb.ay, %bb.j, %bb.i, %bb.s, %bb.x, %bb.w, %.lr.ph.i, %middle.block195, %.preheader56.i, %.loopexit.i, %bb.u, %bb.p, %bb.d, %bb.a, %bb.b, %bb.ar, %bb.aq, %bb.ap, %bb.f
  %.0 = phi i64 [ %4, %bb.w ], [ -1, %bb.a ], [ %i.f, %bb.f ], [ -1, %bb.d ], [ -1, %bb.ax ], [ -1, %.preheader56.i ], [ %spec.select.i, %.lr.ph.i ], [ %i.em, %bb.ap ], [ %i.en, %bb.aq ], [ %i.eo, %bb.ar ], [ -1, %bb.b ], [ %i.as, %bb.u ], [ -1, %bb.s ], [ %i.af, %bb.p ], [ %.15065.us.i, %bb.ay ], [ %i.eg, %.loopexit.i ], [ -1, %bb.i ], [ %i.be, %middle.block195 ], [ %.1.i, %bb.x ], [ %i.s, %bb.j ], [ -1, %bb.at ], [ %4, %bb.aj ], [ %.066110.us.i, %._crit_edge104.us.thread.i ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @ucs2lib__two_way_find(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.ucs2lib__pre, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @ucs2lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs2lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #25 {
bb.a:
  %5 = alloca %struct.ucs2lib__pre, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @ucs2lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0193037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0193037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr [2 x i8], ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @ucs2lib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.1.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i64 %.1.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs2lib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #25 {
.lr.ph.preheader:
  %6 = alloca %struct.ucs2lib__pre, align 8       ; 5 uses
  %7 = alloca %struct.ucs2lib__pre, align 8       ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr [2 x i8], ptr %2, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !208  ; 4 uses
  %i.e = getelementptr [2 x i8], ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i16> poison, i16 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i16> %broadcast.splatinsert252, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %wide.load = load <2 x i16>, ptr %i.f, align 2, !tbaa !208 ; 2 uses
  %wide.load257 = load <2 x i16>, ptr %i.g, align 2, !tbaa !208 ; 2 uses
  %i.h = and <2 x i16> %wide.load, splat (i16 63)
  %i.i = and <2 x i16> %wide.load257, splat (i16 63)
  %i.j = zext nneg <2 x i16> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i16> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i16> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i16> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !834

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bq, %.lr.ph ]
  %.1108.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1108, %.lr.ph ]
  %i.aa = and i16 %i.d, 63
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %.lcssa, %i.ac                   ; 2 uses
  %.not145 = icmp slt i64 %i.a, 0
  br i1 %.not145, label %.loopexit, label %.lr.ph151.split.us.preheader

.lr.ph151.split.us.preheader:                     ; preds = %._crit_edge
  %i.ae = lshr i64 %3, 2
  %.not124 = icmp eq i32 %5, 0                    ; 2 uses
  br label %.lr.ph151.split.us

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.k
  %.092148.us = phi i64 [ %i.bi, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.0100147.us = phi i64 [ %.2102.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %.0104146.us = phi i64 [ %.2106.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %i.af = getelementptr [2 x i8], ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !208
  %i.ah = icmp eq i16 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !208
  %i.ak = and i16 %i.aj, 63
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.k

bb.c:                                             ; preds = %.preheader.us, %bb.l
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.bj, %bb.l ] ; 5 uses
  %i.ap = getelementptr [2 x i8], ptr %i.bk, i64 %.0139.us
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !208
  %i.ar = getelementptr [2 x i8], ptr %2, i64 %.0139.us
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !208
  %.not120.us = icmp eq i16 %i.aq, %i.as
  br i1 %.not120.us, label %bb.l, label %._crit_edge141.us

._crit_edge141.us:                                ; preds = %bb.c
  %i.at = icmp eq i64 %.0139.us, %i.b
  br i1 %i.at, label %._crit_edge141.us.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge141.us
  %i.au = add i64 %.0104146.us, 1
  %i.av = add i64 %i.au, %.0139.us                ; 2 uses
  %i.aw = icmp sgt i64 %i.av, %i.ae
  %i.ax = sub i64 %i.a, %.092148.us
  %i.ay = icmp sgt i64 %i.ax, 2000
  %or.cond.us = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr i8, ptr %i.af, i64 2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !208
  %i.bb = and i16 %i.ba, 63
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.ad
  %.not122.us = icmp eq i64 %i.be, 0
  br i1 %.not122.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0107.pn.us = phi i64 [ %.1108.lcssa, %bb.g ], [ %3, %bb.f ]
  %.193.us = add i64 %.0107.pn.us, %.092148.us
  br label %bb.k

._crit_edge141.us.thread:                         ; preds = %bb.l, %._crit_edge141.us
  br i1 %.not124, label %bb.i, label %.thread.thread

bb.i:                                             ; preds = %._crit_edge141.us.thread
  %i.bf = add i64 %.0100147.us, 1                 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %4
  br i1 %i.bg, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i64 %.092148.us, %i.b
  br label %bb.k
end_hunk_5
begin_hunk_6_@ucs4lib_fastsearch:bb.a
  %.179.i = select i1 %i.eo, i64 %i.eq, i64 %.07898.i ; 2 uses
  %i.er = add nuw nsw i64 %.068100.i, 1           ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.er, %i.cg
  br i1 %exitcond.not.i73, label %._crit_edge.i, label %.lr.ph.i72, !llvm.loop !859

.loopexit.i:                                      ; preds = %bb.ao, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.ao ]
  %i.es = icmp eq i32 %5, 0
  %i.et = select i1 %i.es, i64 %.377.ph.i, i64 -1
  br label %ucs4lib_find_char.exit

bb.aq:                                            ; preds = %bb.ad
  %i.eu = lshr i64 %3, 2
  %i.ev = mul nuw nsw i64 %i.eu, 3
  %i.ew = lshr i64 %1, 2
  %i.ex = icmp samesign ult i64 %i.ev, %i.ew
  br i1 %i.ex, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ey = icmp eq i32 %5, 1
  br i1 %i.ey, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ez = tail call fastcc i64 @ucs4lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs4lib_find_char.exit

bb.at:                                            ; preds = %bb.ar
  %i.fa = tail call fastcc i64 @ucs4lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs4lib_find_char.exit

bb.au:                                            ; preds = %bb.aq
  %i.fb = tail call fastcc i64 @ucs4lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs4lib_find_char.exit

bb.av:                                            ; preds = %bb.ab
  %i.fc = add nsw i64 %3, -1                      ; 9 uses
  %i.fd = load i32, ptr %2, align 4, !tbaa !7     ; 4 uses
  %i.fe = and i32 %i.fd, 63
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = shl nuw i64 1, %i.ff                    ; 2 uses
  %min.iters.check170 = icmp ult i64 %3, 5
  br i1 %min.iters.check170, label %.lr.ph.i74.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %bb.av
  %n.vec173 = and i64 %i.fc, -4                   ; 2 uses
  %i.fh = and i64 %i.fc, 3
  %i.fi = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.fg, i64 0
  %broadcast.splatinsert174 = insertelement <2 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat175 = shufflevector <2 x i32> %broadcast.splatinsert174, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert176 = insertelement <2 x i64> poison, i64 %i.fc, i64 0
  %broadcast.splat177 = shufflevector <2 x i64> %broadcast.splatinsert176, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fj = add nsw <2 x i64> %broadcast.splat177, <i64 0, i64 -1>
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph171
  %index179 = phi i64 [ 0, %vector.ph171 ], [ %index.next190, %vector.body178 ] ; 2 uses
  %vec.phi180 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph171 ], [ %i.fz, %vector.body178 ]
  %vec.phi181 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph171 ], [ %i.ga, %vector.body178 ]
  %vec.phi182 = phi <2 x i1> [ zeroinitializer, %vector.ph171 ], [ %i.gb, %vector.body178 ]
  %vec.phi183 = phi <2 x i1> [ zeroinitializer, %vector.ph171 ], [ %i.gc, %vector.body178 ]
  %vec.phi184 = phi <2 x i64> [ %i.fi, %vector.ph171 ], [ %i.fv, %vector.body178 ]
  %vec.phi185 = phi <2 x i64> [ zeroinitializer, %vector.ph171 ], [ %i.fw, %vector.body178 ]
  %vec.ind186 = phi <2 x i64> [ %i.fj, %vector.ph171 ], [ %i.gd, %vector.body178 ] ; 3 uses
  %i.fk = add <2 x i64> %vec.ind186, splat (i64 -2)
  %i.fl = sub i64 %i.fc, %index179
  %i.fm = getelementptr [4 x i8], ptr %2, i64 %i.fl ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 -4
  %i.fo = getelementptr i8, ptr %i.fm, i64 -12
  %wide.load187 = load <2 x i32>, ptr %i.fn, align 4, !tbaa !7
  %wide.load188 = load <2 x i32>, ptr %i.fo, align 4, !tbaa !7
  %reverse = shufflevector <2 x i32> %wide.load187, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %reverse189 = shufflevector <2 x i32> %wide.load188, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fp = and <2 x i32> %reverse, splat (i32 63)
  %i.fq = and <2 x i32> %reverse189, splat (i32 63)
  %i.fr = zext nneg <2 x i32> %i.fp to <2 x i64>
  %i.fs = zext nneg <2 x i32> %i.fq to <2 x i64>
  %i.ft = shl nuw <2 x i64> splat (i64 1), %i.fr
  %i.fu = shl nuw <2 x i64> splat (i64 1), %i.fs
  %i.fv = or <2 x i64> %i.ft, %vec.phi184         ; 2 uses
  %i.fw = or <2 x i64> %i.fu, %vec.phi185         ; 2 uses
  %i.fx = icmp eq <2 x i32> %reverse, %broadcast.splat175 ; 2 uses
  %i.fy = icmp eq <2 x i32> %reverse189, %broadcast.splat175 ; 2 uses
  %i.fz = select <2 x i1> %i.fx, <2 x i64> %vec.ind186, <2 x i64> %vec.phi180 ; 2 uses
  %i.ga = select <2 x i1> %i.fy, <2 x i64> %i.fk, <2 x i64> %vec.phi181 ; 2 uses
  %i.gb = or <2 x i1> %vec.phi182, %i.fx          ; 2 uses
  %i.gc = or <2 x i1> %vec.phi183, %i.fy          ; 2 uses
  %index.next190 = add nuw i64 %index179, 4       ; 2 uses
  %i.gd = add <2 x i64> %vec.ind186, splat (i64 -4)
  %i.ge = icmp eq i64 %index.next190, %n.vec173
  br i1 %i.ge, label %middle.block191, label %vector.body178, !llvm.loop !860

middle.block191:                                  ; preds = %vector.body178
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.fz, <2 x i64> %i.ga)
  %i.gf = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.gg = add nsw i64 %i.gf, -1
  %bin.rdx = or <2 x i1> %i.gc, %i.gb
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.gh = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not217 = icmp eq i2 %i.gh, 0
  %rdx.select = select i1 %.not217, i64 %i.fc, i64 %i.gg ; 2 uses
  %bin.rdx192 = or <2 x i64> %i.fw, %i.fv
  %i.gi = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx192) ; 2 uses
  %cmp.n193 = icmp eq i64 %i.fc, %n.vec173
  br i1 %cmp.n193, label %.preheader56.i, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %bb.av, %middle.block191
  %.04660.i.ph = phi i64 [ %i.fc, %bb.av ], [ %rdx.select, %middle.block191 ]
  %.04759.i.ph = phi i64 [ %i.fg, %bb.av ], [ %i.gi, %middle.block191 ]
  %.04958.i.ph = phi i64 [ %i.fc, %bb.av ], [ %i.fh, %middle.block191 ]
  br label %.lr.ph.i74

.preheader56.i:                                   ; preds = %.lr.ph.i74, %middle.block191
  %.lcssa162 = phi i64 [ %i.gi, %middle.block191 ], [ %i.hp, %.lr.ph.i74 ] ; 2 uses
  %spec.select.i75.lcssa = phi i64 [ %rdx.select, %middle.block191 ], [ %spec.select.i75, %.lr.ph.i74 ]
  %i.gj = sub i64 %1, %3                          ; 2 uses
  %i.gk = icmp sgt i64 %i.gj, -1
  br i1 %i.gk, label %.lr.ph66.split.us.i, label %ucs4lib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ba
  %.15065.us.i = phi i64 [ %i.hg, %bb.ba ], [ %i.gj, %.preheader56.i ] ; 5 uses
  %i.gl = getelementptr [4 x i8], ptr %0, i64 %.15065.us.i ; 4 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !7
  %i.gn = icmp eq i32 %i.gm, %i.fd
  br i1 %i.gn, label %.preheader.us.i78, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i77 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i77, label %ucs4lib_find_char.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = getelementptr i8, ptr %i.gl, i64 -4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !7
  %i.gq = and i32 %i.gp, 63
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = shl nuw i64 1, %i.gr
  %i.gt = and i64 %i.gs, %.lcssa162
  %.not51.us.i = icmp eq i64 %i.gt, 0
  %i.gu = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ba

.preheader.us.i78:                                ; preds = %.lr.ph66.split.us.i, %bb.bb
  %.04862.us.i = phi i64 [ %i.hi, %bb.bb ], [ %i.fc, %.lr.ph66.split.us.i ] ; 4 uses
  %i.gv = getelementptr [4 x i8], ptr %i.gl, i64 %.04862.us.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !7
  %i.gx = getelementptr [4 x i8], ptr %2, i64 %.04862.us.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !7
  %.not52.us.i = icmp eq i32 %i.gw, %i.gy
  br i1 %.not52.us.i, label %bb.bb, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i78
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.thread.us.i
  %i.gz = getelementptr i8, ptr %i.gl, i64 -4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !7
  %i.hb = and i32 %i.ha, 63
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = shl nuw i64 1, %i.hc
  %i.he = and i64 %i.hd, %.lcssa162
  %.not54.us.i = icmp eq i64 %i.he, 0
  br i1 %.not54.us.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread.us.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i75.lcssa, %bb.az ], [ %i.gu, %bb.ax ], [ %3, %bb.ay ]
  %i.hf = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.hg = add nsw i64 %i.hf, -1
  %i.hh = icmp sgt i64 %i.hf, 0
  br i1 %i.hh, label %.lr.ph66.split.us.i, label %ucs4lib_find_char.exit, !llvm.loop !861

bb.bb:                                            ; preds = %.preheader.us.i78
  %i.hi = add nsw i64 %.04862.us.i, -1
  %i.hj = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.hj, label %.preheader.us.i78, label %ucs4lib_find_char.exit, !llvm.loop !862

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %.lr.ph.i74
  %.04660.i = phi i64 [ %spec.select.i75, %.lr.ph.i74 ], [ %.04660.i.ph, %.lr.ph.i74.preheader ]
  %.04759.i = phi i64 [ %i.hp, %.lr.ph.i74 ], [ %.04759.i.ph, %.lr.ph.i74.preheader ]
  %.04958.i = phi i64 [ %i.hr, %.lr.ph.i74 ], [ %.04958.i.ph, %.lr.ph.i74.preheader ] ; 3 uses
  %i.hk = getelementptr [4 x i8], ptr %2, i64 %.04958.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !7  ; 2 uses
  %i.hm = and i32 %i.hl, 63
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = shl nuw i64 1, %i.hn
  %i.hp = or i64 %i.ho, %.04759.i                 ; 2 uses
  %i.hq = icmp eq i32 %i.hl, %i.fd
  %i.hr = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i75 = select i1 %i.hq, i64 %i.hr, i64 %.04660.i ; 2 uses
  %i.hs = icmp samesign ugt i64 %.04958.i, 1
  br i1 %i.hs, label %.lr.ph.i74, label %.preheader56.i, !llvm.loop !863

ucs4lib_find_char.exit:                           ; preds = %bb.am, %._crit_edge104.us.thread.i, %bb.ba, %bb.aw, %bb.bb, %bb.m, %bb.l, %bb.v, %bb.i, %bb.aa, %bb.z, %.lr.ph.i69, %middle.block211, %.preheader56.i, %.loopexit.i, %bb.x, %bb.s, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.au, %bb.at, %bb.as
  %.0 = phi i64 [ -1, %bb.i ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.ba ], [ %spec.select.i, %.lr.ph.i69 ], [ -1, %.preheader56.i ], [ -1, %bb.v ], [ %i.ez, %bb.as ], [ %i.fa, %bb.at ], [ %i.fb, %bb.au ], [ %i.k, %bb.g ], [ -1, %bb.f ], [ %i.q, %bb.h ], [ -1, %.preheader.i ], [ %i.be, %bb.x ], [ %.15065.us.i, %bb.bb ], [ %i.ar, %bb.s ], [ %4, %bb.z ], [ %i.et, %.loopexit.i ], [ -1, %bb.l ], [ %i.bq, %middle.block211 ], [ %.1.i, %bb.aa ], [ %i.ae, %bb.m ], [ -1, %bb.aw ], [ %.066110.us.i, %._crit_edge104.us.thread.i ], [ %4, %bb.am ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -2305843009213693952, 2305843009213693952) i64 @ucs4lib__two_way_find(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.ucs4lib__pre, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @ucs4lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs4lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #25 {
bb.a:
  %5 = alloca %struct.ucs4lib__pre, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @ucs4lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0193037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0193037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr [4 x i8], ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @ucs4lib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.1.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i64 %.1.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs4lib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 1, 0) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #25 {
.lr.ph.preheader:
  %6 = alloca %struct.ucs4lib__pre, align 8       ; 5 uses
  %7 = alloca %struct.ucs4lib__pre, align 8       ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr [4 x i8], ptr %2, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7    ; 4 uses
  %i.e = getelementptr [4 x i8], ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i32> %broadcast.splatinsert252, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %wide.load = load <2 x i32>, ptr %i.f, align 4, !tbaa !7 ; 2 uses
  %wide.load257 = load <2 x i32>, ptr %i.g, align 4, !tbaa !7 ; 2 uses
  %i.h = and <2 x i32> %wide.load, splat (i32 63)
  %i.i = and <2 x i32> %wide.load257, splat (i32 63)
  %i.j = zext nneg <2 x i32> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i32> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i32> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i32> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !864

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bq, %.lr.ph ]
  %.1108.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1108, %.lr.ph ]
  %i.aa = and i32 %i.d, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %.lcssa, %i.ac                   ; 2 uses
  %.not145 = icmp slt i64 %i.a, 0
  br i1 %.not145, label %.loopexit, label %.lr.ph151.split.us.preheader

.lr.ph151.split.us.preheader:                     ; preds = %._crit_edge
  %i.ae = lshr i64 %3, 2
  %.not124 = icmp eq i32 %5, 0                    ; 2 uses
  br label %.lr.ph151.split.us

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.k
  %.092148.us = phi i64 [ %i.bi, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.0100147.us = phi i64 [ %.2102.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %.0104146.us = phi i64 [ %.2106.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %i.af = getelementptr [4 x i8], ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = icmp eq i32 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = and i32 %i.aj, 63
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.k

bb.c:                                             ; preds = %.preheader.us, %bb.l
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.bj, %bb.l ] ; 5 uses
  %i.ap = getelementptr [4 x i8], ptr %i.bk, i64 %.0139.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = getelementptr [4 x i8], ptr %2, i64 %.0139.us
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %.not120.us = icmp eq i32 %i.aq, %i.as
  br i1 %.not120.us, label %bb.l, label %._crit_edge141.us

._crit_edge141.us:                                ; preds = %bb.c
  %i.at = icmp eq i64 %.0139.us, %i.b
  br i1 %i.at, label %._crit_edge141.us.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge141.us
  %i.au = add i64 %.0104146.us, 1
  %i.av = add i64 %i.au, %.0139.us                ; 2 uses
  %i.aw = icmp sgt i64 %i.av, %i.ae
  %i.ax = sub i64 %i.a, %.092148.us
  %i.ay = icmp sgt i64 %i.ax, 2000
  %or.cond.us = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr i8, ptr %i.af, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = and i32 %i.ba, 63
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.ad
  %.not122.us = icmp eq i64 %i.be, 0
  br i1 %.not122.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0107.pn.us = phi i64 [ %.1108.lcssa, %bb.g ], [ %3, %bb.f ]
  %.193.us = add i64 %.0107.pn.us, %.092148.us
  br label %bb.k

._crit_edge141.us.thread:                         ; preds = %bb.l, %._crit_edge141.us
  br i1 %.not124, label %bb.i, label %.thread.thread

bb.i:                                             ; preds = %._crit_edge141.us.thread
  %i.bf = add i64 %.0100147.us, 1                 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %4
  br i1 %i.bg, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i64 %.092148.us, %i.b
  br label %bb.k
end_hunk_6
