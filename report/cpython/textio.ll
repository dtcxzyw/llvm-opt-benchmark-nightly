inline.NumInlined: 326
inline.NumDeleted: 79
begin_hunk_0
; Function Attrs: nounwind uwtable
define hidden ptr @_PyIncrementalNewlineDecoder_decode(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.1) #10
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.f, @_Py_NoneStruct
  br i1 %.not, label %bb.d, label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %1, align 8, !tbaa !19
  br label %_Py_NewRef.exit.thread

_Py_NewRef.exit:                                  ; preds = %bb.c
  %.not200 = icmp eq i32 %2, 0
  %i.j = select i1 %.not200, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  %i.k = tail call ptr (ptr, ptr, ...) @PyObject_CallMethodObjArgs(ptr noundef %i.f, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 80456), ptr noundef %1, ptr noundef nonnull %i.j, ptr noundef null) #10 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %Py_DECREF.exit, label %_Py_NewRef.exit.thread

_Py_NewRef.exit.thread:                           ; preds = %bb.e, %bb.d, %_Py_NewRef.exit
  %.0277 = phi ptr [ %i.k, %_Py_NewRef.exit ], [ %1, %bb.d ], [ %1, %bb.e ] ; 14 uses
  %i.m = getelementptr i8, ptr %.0277, i64 8
  %.val5.i = load ptr, ptr %i.m, align 8, !tbaa !20 ; 2 uses
  %i.n = getelementptr i8, ptr %.val5.i, i64 168
  %.val6.i = load i64, ptr %i.n, align 8, !tbaa !21
  %i.o = and i64 %.val6.i, 268435456
  %.not.i227 = icmp eq i64 %i.o, 0
  br i1 %.not.i227, label %bb.f, label %check_decoded.exit

bb.f:                                             ; preds = %_Py_NewRef.exit.thread
  %i.p = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !17
  %i.q = getelementptr i8, ptr %.val5.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.p, ptr noundef nonnull @.str.18, ptr noundef %i.r) #10 ; 0 uses
  %i.t = load i32, ptr %.0277, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %.0277, align 8, !tbaa !19
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0277) #10
  br label %Py_DECREF.exit

check_decoded.exit:                               ; preds = %_Py_NewRef.exit.thread
  %i.w = getelementptr i8, ptr %.0277, i64 16
  %.0.val = load i64, ptr %i.w, align 8, !tbaa !31 ; 4 uses
  %i.x = getelementptr i8, ptr %0, i64 32         ; 7 uses
  %i.y = load i8, ptr %i.x, align 8               ; 3 uses
  %i.z = and i8 %i.y, 1
  %.not201 = icmp eq i8 %i.z, 0
  br i1 %.not201, label %bb.v, label %bb.i

bb.i:                                             ; preds = %check_decoded.exit
  %i.aa = icmp ne i32 %2, 0
  %i.ab = icmp sgt i64 %.0.val, 0
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.j, label %.thread284

bb.j:                                             ; preds = %bb.i
  %i.ac = add i64 %.0.val, 1                      ; 2 uses
  %i.ad = getelementptr i8, ptr %.0277, i64 32    ; 2 uses
  %.0.val226 = load i32, ptr %i.ad, align 8       ; 2 uses
  %i.ae = and i32 %.0.val226, 64
  %.not.i228 = icmp eq i32 %i.ae, 0
  br i1 %.not.i228, label %bb.k, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.k:                                             ; preds = %bb.j
  %i.af = lshr i32 %.0.val226, 2
  %i.ag = and i32 %i.af, 7                        ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.ag, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.ag, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.j, %bb.k
  %.0.i229 = phi i32 [ %switch.select6.i, %bb.k ], [ 127, %bb.j ]
  %i.ah = tail call ptr @PyUnicode_New(i64 noundef %i.ac, i32 noundef %.0.i229) #10 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.bt, label %bb.l

bb.l:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.aj = getelementptr i8, ptr %i.ah, i64 32
  %i.ak = load i32, ptr %i.aj, align 8            ; 3 uses
  %i.al = lshr i32 %i.ak, 2
  %i.am = and i32 %i.al, 7                        ; 2 uses
  %i.an = and i32 %i.ak, 32
  %.not.i230 = icmp eq i32 %i.an, 0
  br i1 %.not.i230, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = and i32 %i.ak, 64
  %.not.i.i231 = icmp eq i32 %i.ao, 0
  %.0.v.i.i = select i1 %.not.i.i231, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.ah, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.ah, i64 56
  %.val4.i = load ptr, ptr %i.ap, align 8, !tbaa !19
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.m, %bb.n
  %.0.i232 = phi ptr [ %.0.i.i, %bb.m ], [ %.val4.i, %bb.n ] ; 4 uses
  switch i32 %i.am, label %bb.q [
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.o:                                             ; preds = %_PyUnicode_DATA.exit
  store i8 13, ptr %.0.i232, align 1, !tbaa !19
  br label %PyUnicode_WRITE.exit

bb.p:                                             ; preds = %_PyUnicode_DATA.exit
  store i16 13, ptr %.0.i232, align 2, !tbaa !34
  br label %PyUnicode_WRITE.exit

bb.q:                                             ; preds = %_PyUnicode_DATA.exit
  store i32 13, ptr %.0.i232, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit:                             ; preds = %bb.o, %bb.p, %bb.q
  %i.aq = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ar = getelementptr i8, ptr %.0.i232, i64 %i.aq
  %.val.i233 = load i32, ptr %i.ad, align 8       ; 2 uses
  %i.as = and i32 %.val.i233, 32
  %.not.i234 = icmp eq i32 %i.as, 0
  br i1 %.not.i234, label %bb.s, label %bb.r

bb.r:                                             ; preds = %PyUnicode_WRITE.exit
  %i.at = and i32 %.val.i233, 64
  %.not.i.i235 = icmp eq i32 %i.at, 0
  %.0.v.i.i236 = select i1 %.not.i.i235, i64 56, i64 40
  %.0.i.i237 = getelementptr i8, ptr %.0277, i64 %.0.v.i.i236
  br label %_PyUnicode_DATA.exit240

bb.s:                                             ; preds = %PyUnicode_WRITE.exit
  %i.au = getelementptr i8, ptr %.0277, i64 56
  %.val4.i239 = load ptr, ptr %i.au, align 8, !tbaa !19
  br label %_PyUnicode_DATA.exit240

_PyUnicode_DATA.exit240:                          ; preds = %bb.r, %bb.s
  %.0.i238 = phi ptr [ %.0.i.i237, %bb.r ], [ %.val4.i239, %bb.s ]
  %i.av = mul i64 %.0.val, %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %.0.i238, i64 %i.av, i1 false)
  %i.aw = load i32, ptr %.0277, align 8, !tbaa !19 ; 2 uses
  %.not.i221 = icmp sgt i32 %i.aw, -1
  br i1 %.not.i221, label %bb.t, label %.thread

bb.t:                                             ; preds = %_PyUnicode_DATA.exit240
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %.0277, align 8, !tbaa !19
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0277) #10
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.t, %_PyUnicode_DATA.exit240
  %i.az = load i8, ptr %i.x, align 8
  %i.ba = and i8 %i.az, -2                        ; 2 uses
  store i8 %i.ba, ptr %i.x, align 8
  br label %bb.v

bb.v:                                             ; preds = %.thread, %check_decoded.exit
  %i.bb = phi i8 [ %i.ba, %.thread ], [ %i.y, %check_decoded.exit ] ; 2 uses
  %.2175 = phi ptr [ %i.ah, %.thread ], [ %.0277, %check_decoded.exit ] ; 14 uses
  %.1140 = phi i64 [ %i.ac, %.thread ], [ %.0.val, %check_decoded.exit ] ; 2 uses
  %i.bc = icmp eq i32 %2, 0
  %i.bd = icmp sgt i64 %.1140, 0
  %or.cond5 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond5, label %bb.w, label %.thread284

bb.w:                                             ; preds = %bb.v
  %i.be = add nsw i64 %.1140, -1                  ; 4 uses
  %i.bf = getelementptr i8, ptr %.2175, i64 32
  %i.bg = load i32, ptr %i.bf, align 8            ; 5 uses
  %i.bh = and i32 %i.bg, 28
  %i.bi = and i32 %i.bg, 32
  %.not.i19.i = icmp eq i32 %i.bi, 0              ; 3 uses
  switch i32 %i.bh, label %bb.ad [
    i32 4, label %bb.x
    i32 8, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  br i1 %.not.i19.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = and i32 %i.bg, 64
  %.not.i.i.i = icmp eq i32 %i.bj, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %.2175, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.z:                                             ; preds = %bb.x
  %i.bk = getelementptr i8, ptr %.2175, i64 56
  %.val4.i.i = load ptr, ptr %i.bk, align 8, !tbaa !19
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.z, %bb.y
  %.0.i.i242 = phi ptr [ %.0.i.i.i, %bb.y ], [ %.val4.i.i, %bb.z ]
  %i.bl = getelementptr i8, ptr %.0.i.i242, i64 %i.be
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19
  %i.bn = zext i8 %i.bm to i32
  br label %PyUnicode_READ_CHAR.exit

bb.aa:                                            ; preds = %bb.w
  br i1 %.not.i19.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bo = and i32 %i.bg, 64
  %.not.i.i12.i = icmp eq i32 %i.bo, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %.2175, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.ac:                                            ; preds = %bb.aa
  %i.bp = getelementptr i8, ptr %.2175, i64 56
  %.val4.i16.i = load ptr, ptr %i.bp, align 8, !tbaa !19
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.ac, %bb.ab
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.ab ], [ %.val4.i16.i, %bb.ac ]
  %i.bq = getelementptr [2 x i8], ptr %.0.i15.i, i64 %i.be
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !34
  %i.bs = zext i16 %i.br to i32
  br label %PyUnicode_READ_CHAR.exit

bb.ad:                                            ; preds = %bb.w
  br i1 %.not.i19.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = and i32 %i.bg, 64
  %.not.i.i20.i = icmp eq i32 %i.bt, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %.2175, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.af:                                            ; preds = %bb.ad
  %i.bu = getelementptr i8, ptr %.2175, i64 56
  %.val4.i24.i = load ptr, ptr %i.bu, align 8, !tbaa !19
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.af, %bb.ae
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.ae ], [ %.val4.i24.i, %bb.af ]
  %i.bv = getelementptr [4 x i8], ptr %.0.i23.i, i64 %i.be
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i241 = phi i32 [ %i.bn, %_PyUnicode_DATA.exit.i ], [ %i.bs, %_PyUnicode_DATA.exit17.i ], [ %i.bw, %_PyUnicode_DATA.exit25.i ]
  %i.bx = icmp eq i32 %.0.i241, 13
  br i1 %i.bx, label %bb.ag, label %.thread284

bb.ag:                                            ; preds = %PyUnicode_READ_CHAR.exit
  %i.by = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %.2175, i64 noundef 0, i64 noundef %i.be) #10 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.bt, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ca = load i32, ptr %.2175, align 8, !tbaa !19 ; 2 uses
  %.not.i219 = icmp sgt i32 %i.ca, -1
  br i1 %.not.i219, label %bb.ai, label %.thread288

bb.ai:                                            ; preds = %bb.ah
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  store i32 %i.cb, ptr %.2175, align 8, !tbaa !19
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.aj, label %.thread288

bb.aj:                                            ; preds = %bb.ai
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2175) #10
  br label %.thread288

.thread288:                                       ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.cd = load i8, ptr %i.x, align 8
  %i.ce = or i8 %i.cd, 1                          ; 2 uses
  store i8 %i.ce, ptr %i.x, align 8
  br label %.thread284

.thread284:                                       ; preds = %bb.i, %.thread288, %PyUnicode_READ_CHAR.exit, %bb.v
  %i.cf = phi i8 [ %i.ce, %.thread288 ], [ %i.bb, %PyUnicode_READ_CHAR.exit ], [ %i.bb, %bb.v ], [ %i.y, %bb.i ] ; 9 uses
  %.4177 = phi ptr [ %i.by, %.thread288 ], [ %.2175, %PyUnicode_READ_CHAR.exit ], [ %.2175, %bb.v ], [ %.0277, %bb.i ] ; 18 uses
  %i.cg = lshr i8 %i.cf, 2
  %i.ch = and i8 %i.cg, 7                         ; 4 uses
  %i.ci = zext nneg i8 %i.ch to i32               ; 3 uses
  %i.cj = getelementptr i8, ptr %.4177, i64 32
  %.val.i243 = load i32, ptr %i.cj, align 8
  %.val.i243.fr = freeze i32 %.val.i243           ; 4 uses
  %i.ck = and i32 %.val.i243.fr, 32
  %.not.i244 = icmp eq i32 %i.ck, 0               ; 2 uses
  br i1 %.not.i244, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.thread284
  %i.cl = and i32 %.val.i243.fr, 64
  %.not.i.i245 = icmp eq i32 %i.cl, 0
  %.0.v.i.i246 = select i1 %.not.i.i245, i64 56, i64 40
  %.0.i.i247 = getelementptr i8, ptr %.4177, i64 %.0.v.i.i246
  br label %_PyUnicode_DATA.exit250

bb.al:                                            ; preds = %.thread284
  %i.cm = getelementptr i8, ptr %.4177, i64 56
  %.val4.i249 = load ptr, ptr %i.cm, align 8, !tbaa !19
  br label %_PyUnicode_DATA.exit250

_PyUnicode_DATA.exit250:                          ; preds = %bb.ak, %bb.al
  %.0.i248 = phi ptr [ %.0.i.i247, %bb.ak ], [ %.val4.i249, %bb.al ] ; 15 uses
  %i.cn = getelementptr i8, ptr %.4177, i64 16
  %.4177.val = load i64, ptr %i.cn, align 8, !tbaa !31 ; 7 uses
  %i.co = lshr i32 %.val.i243.fr, 2
  %i.cp = and i32 %i.co, 7                        ; 11 uses
  %i.cq = icmp eq i64 %.4177.val, 0
  br i1 %i.cq, label %Py_DECREF.exit, label %bb.am

bb.am:                                            ; preds = %_PyUnicode_DATA.exit250
  %i.cr = icmp eq i8 %i.ch, 0
  switch i8 %i.ch, label %.critedge [
    i8 2, label %bb.an
    i8 0, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.cs = zext nneg i32 %i.cp to i64
  %i.ct = mul i64 %.4177.val, %i.cs               ; 2 uses
  %i.cu = tail call ptr @memchr(ptr noundef %.0.i248, i32 noundef 13, i64 noundef %i.ct) #11
  %.not328 = icmp eq ptr %i.cu, null
  br i1 %.not328, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  br i1 %i.cr, label %bb.ap, label %.thread319

bb.ap:                                            ; preds = %bb.ao
  %i.cv = tail call ptr @memchr(ptr noundef %.0.i248, i32 noundef 10, i64 noundef %i.ct) #11
  %.not206 = icmp eq ptr %i.cv, null
  br i1 %.not206, label %.thread319, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  switch i32 %i.cp, label %.split [
    i32 1, label %.thread319
    i32 2, label %.split.us336.us
  ]

.split.us336.us:                                  ; preds = %bb.aq, %PyUnicode_READ.exit253.us347
  %.0156.us345 = phi i64 [ %i.db, %PyUnicode_READ.exit253.us347 ], [ 0, %bb.aq ]
  %.0145.us346 = phi i32 [ %.1146.us350, %PyUnicode_READ.exit253.us347 ], [ 0, %bb.aq ] ; 2 uses
  br label %PyUnicode_READ.exit.us338.us

PyUnicode_READ.exit253.us347:                     ; preds = %PyUnicode_READ.exit.us338.us
  %i.cw = icmp ne i16 %i.cz, 10                   ; 2 uses
  %i.cx = or i32 %.0145.us346, 2
  %.not207.us349 = icmp slt i64 %i.db, %.4177.val
  %.1146.us350 = select i1 %i.cw, i32 %.0145.us346, i32 %i.cx ; 2 uses
  %.not330.us351 = and i1 %i.cw, %.not207.us349
  br i1 %.not330.us351, label %.split.us336.us, label %.thread319

PyUnicode_READ.exit.us338.us:                     ; preds = %PyUnicode_READ.exit.us338.us, %.split.us336.us
  %.1157.us337.us = phi i64 [ %.0156.us345, %.split.us336.us ], [ %i.db, %PyUnicode_READ.exit.us338.us ] ; 2 uses
  %i.cy = getelementptr [2 x i8], ptr %.0.i248, i64 %.1157.us337.us
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !34 ; 2 uses
  %i.da = icmp ugt i16 %i.cz, 10
  %i.db = add i64 %.1157.us337.us, 1              ; 3 uses
  br i1 %i.da, label %PyUnicode_READ.exit.us338.us, label %PyUnicode_READ.exit253.us347, !llvm.loop !35

.split:                                           ; preds = %bb.aq, %PyUnicode_READ.exit253
  %.0156 = phi i64 [ %i.df, %PyUnicode_READ.exit253 ], [ 0, %bb.aq ]
  %.0145 = phi i32 [ %.1146, %PyUnicode_READ.exit253 ], [ 0, %bb.aq ] ; 2 uses
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %PyUnicode_READ.exit, %.split
  %.1157 = phi i64 [ %.0156, %.split ], [ %i.df, %PyUnicode_READ.exit ] ; 4 uses
  %i.dc = getelementptr [4 x i8], ptr %.0.i248, i64 %.1157
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7  ; 2 uses
  %i.de = icmp ugt i32 %i.dd, 10
  %i.df = add i64 %.1157, 1                       ; 3 uses
  br i1 %i.de, label %PyUnicode_READ.exit, label %.split335.split, !llvm.loop !35

.split335.split:                                  ; preds = %PyUnicode_READ.exit
  switch i32 %i.cp, label %PyUnicode_READ.exit253 [
    i32 1, label %bb.ar
    i32 2, label %bb.as
  ]

end_hunk_0
begin_hunk_1_@_io_IncrementalNewlineDecoder_getstate:bb.a
  br i1 %.not.i16.i, label %bb.k, label %_io_IncrementalNewlineDecoder_getstate_impl.exit

bb.k:                                             ; preds = %bb.j
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.j, align 8, !tbaa !19
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.l, label %_io_IncrementalNewlineDecoder_getstate_impl.exit

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #10
  br label %_io_IncrementalNewlineDecoder_getstate_impl.exit

bb.m:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !19   ; 2 uses
  %i.y = icmp ugt i32 %i.x, -1073741825
  br i1 %i.y, label %Py_INCREF.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = add nuw i32 %i.x, 1
  store i32 %i.z, ptr %i.w, align 8, !tbaa !19
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.n, %bb.m
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !19  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aa, -1
  br i1 %.not.i.i, label %bb.o, label %Py_DECREF.exit.i

bb.o:                                             ; preds = %Py_INCREF.exit.i
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.j, align 8, !tbaa !19
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %Py_DECREF.exit.i

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #10
  br label %Py_DECREF.exit.i

bb.q:                                             ; preds = %bb.c
  %i.ad = tail call ptr @Py_GetConstant(i32 noundef 8) #10
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !17
  store i64 0, ptr %i.c, align 8, !tbaa !72
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.q, %bb.p, %bb.o, %Py_INCREF.exit.i
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !72
  %i.af = shl i64 %i.ae, 1                        ; 3 uses
  store i64 %i.af, ptr %i.c, align 8, !tbaa !72
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load i8, ptr %i.ag, align 8
  %i.ai = and i8 %i.ah, 1
  %.not15.i = icmp eq i8 %i.ai, 0
  br i1 %.not15.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit.i
  %i.aj = or disjoint i64 %i.af, 1                ; 2 uses
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !72
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %Py_DECREF.exit.i
  %i.ak = phi i64 [ %i.aj, %bb.r ], [ %i.af, %Py_DECREF.exit.i ]
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.am = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.29, ptr noundef %i.al, i64 noundef %i.ak) #10
  br label %_io_IncrementalNewlineDecoder_getstate_impl.exit

_io_IncrementalNewlineDecoder_getstate_impl.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k, %bb.l, %bb.s
  %.1.i = phi ptr [ null, %bb.b ], [ %i.am, %bb.s ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_IncrementalNewlineDecoder_setstate(ptr noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.1) #10
  br label %_io_IncrementalNewlineDecoder_setstate_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr i8, ptr %.val.i, i64 168
  %.val10.i = load i64, ptr %i.h, align 8, !tbaa !21
  %i.i = and i64 %.val10.i, 67108864
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.30) #10
  br label %_io_IncrementalNewlineDecoder_setstate_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.k = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %_io_IncrementalNewlineDecoder_setstate_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.m = trunc i64 %i.l to i8
  %i.n = and i8 %i.m, 1
  %i.o = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, -2
  %i.r = or disjoint i8 %i.q, %i.n
  store i8 %i.r, ptr %i.o, align 8
  %i.s = lshr i64 %i.l, 1                         ; 2 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !72
  %i.t = getelementptr i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 2 uses
  %.not9.i = icmp eq ptr %i.u, @_Py_NoneStruct
  br i1 %.not9.i, label %_io_IncrementalNewlineDecoder_setstate_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.w = call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef %i.u, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 99432), ptr noundef nonnull @.str.32, ptr noundef %i.v, i64 noundef %i.s) #10
  br label %_io_IncrementalNewlineDecoder_setstate_impl.exit

_io_IncrementalNewlineDecoder_setstate_impl.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.b ], [ %i.w, %bb.g ], [ null, %bb.e ], [ null, %bb.d ], [ @_Py_NoneStruct, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_IncrementalNewlineDecoder_reset(ptr noundef captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.1) #10
  br label %_io_IncrementalNewlineDecoder_reset_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, -30
  store i8 %i.h, ptr %i.f, align 8
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.j, @_Py_NoneStruct
  br i1 %.not.i, label %_io_IncrementalNewlineDecoder_reset_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8, !tbaa !17
  %i.k = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 97896), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_io_IncrementalNewlineDecoder_reset_impl.exit

_io_IncrementalNewlineDecoder_reset_impl.exit:    ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ null, %bb.b ], [ %i.k, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  ret ptr %.0.i
}

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #2

declare i32 @PyArg_ParseTuple(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Py_GetConstant(i32 noundef) local_unnamed_addr #2

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyObject_CallMethod(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @incrementalnewlinedecoder_newlines_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.1) #10
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 8
  %2 = and i8 %i.f, 28
  %3 = sub i8 %2, 0                               ; 2 uses
  %4 = call i8 @llvm.fshl.i8(i8 %3, i8 %3, i8 6)
  switch i8 %4, label %default.unreachable4 [
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 4, label %bb.f
    i8 3, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 0, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.33) #10
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.34) #10
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.i = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.35) #10
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.j = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #10
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.k = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.35) #10
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.l = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.m = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #10
  br label %bb.k

default.unreachable4:                             ; preds = %bb.c
  unreachable

bb.k:                                             ; preds = %bb.c, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %i.k, %bb.h ], [ %i.l, %bb.i ], [ %i.m, %bb.j ], [ @_Py_NoneStruct, %bb.c ]
  ret ptr %.0
}

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Py_XDECREF(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %.not.i = icmp sgt i32 %i.a, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !19
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @textiowrapper_dealloc(ptr noundef initializes((96, 97)) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !20  ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 96
  store i8 1, ptr %i.b, align 8, !tbaa !74
  %i.c = tail call i32 @_PyIOBase_finalize(ptr noundef %0) #10
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !78
  %i.f = getelementptr i8, ptr %0, i64 -16        ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 -8         ; 3 uses
  %.val.i = load i64, ptr %i.g, align 8, !tbaa !58
  %i.h = and i64 %.val.i, -4                      ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.val12.i = load i64, ptr %i.f, align 8, !tbaa !60
  %i.j = and i64 %.val12.i, -4                    ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.i, align 8, !tbaa !60
  %i.m = and i64 %i.l, 3
  %i.n = or disjoint i64 %i.m, %i.j
  store i64 %i.n, ptr %i.i, align 8, !tbaa !60
  %i.o = getelementptr i8, ptr %i.k, i64 8        ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = and i64 %i.p, 3
  %i.r = or disjoint i64 %i.q, %i.h
  store i64 %i.r, ptr %i.o, align 8, !tbaa !58
  store i64 0, ptr %i.f, align 8, !tbaa !60
  %i.s = load i64, ptr %i.g, align 8, !tbaa !58
  %i.t = and i64 %i.s, 1
  store i64 %i.t, ptr %i.g, align 8, !tbaa !58
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !61   ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 7428     ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !63   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.c, label %_PyObject_GC_UNTRACK.exit

bb.c:                                             ; preds = %bb.b
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !63
  br label %_PyObject_GC_UNTRACK.exit

_PyObject_GC_UNTRACK.exit:                        ; preds = %bb.b, %bb.c
  %i.aa = getelementptr i8, ptr %i.v, i64 7656    ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !67
  %i.ac = add i64 %i.ab, -1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !67
  %i.ad = getelementptr i8, ptr %0, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !79
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_PyObject_GC_UNTRACK.exit
  tail call void @PyObject_ClearWeakRefs(ptr noundef nonnull %0) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_PyObject_GC_UNTRACK.exit
  %i.af = tail call i32 @textiowrapper_clear(ptr noundef nonnull %0) ; 0 uses
  %i.ag = getelementptr i8, ptr %.val, i64 320
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !68
  tail call void %i.ah(ptr noundef nonnull %0) #10
  %i.ai = load i32, ptr %.val, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %.val, align 8, !tbaa !19
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @textiowrapper_repr(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr i8, ptr %.val, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !78
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.42) #10
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.43, ptr noundef %i.f) #10 ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !17
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @Py_ReprEnter(ptr noundef nonnull %0) #10 ; 2 uses
  %.not = icmp eq i32 %i.m, 0                     ; 2 uses
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.x

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !17
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.44, ptr noundef %i.f) #10 ; 0 uses
  br label %bb.x

end_hunk_1
begin_hunk_2_@_io_TextIOWrapper_closed_get:bb.a
  br label %_io_TextIOWrapper_closed_get_impl.exit

_io_TextIOWrapper_closed_get_impl.exit:           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.j, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_TextIOWrapper_newlines_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !78
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.42) #10
  br label %_io_TextIOWrapper_newlines_get_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !91
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.48) #10
  br label %_io_TextIOWrapper_newlines_get_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_io_TextIOWrapper_newlines_get_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %i.j, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 93128), ptr noundef nonnull %i.a) #10
  %i.m = icmp eq i32 %i.l, 0
  %i.n = load ptr, ptr %i.a, align 8
  %spec.select.i = select i1 %i.m, ptr @_Py_NoneStruct, ptr %i.n
  br label %_io_TextIOWrapper_newlines_get_impl.exit

_io_TextIOWrapper_newlines_get_impl.exit:         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ @_Py_NoneStruct, %bb.e ], [ %spec.select.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_io_TextIOWrapper_errors_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.42) #10
  br label %_io_TextIOWrapper_errors_get_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_io_TextIOWrapper_errors_get_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %i.f, align 8, !tbaa !19
  br label %_io_TextIOWrapper_errors_get_impl.exit

_io_TextIOWrapper_errors_get_impl.exit:           ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ null, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_TextIOWrapper__CHUNK_SIZE_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.42) #10
  br label %_io_TextIOWrapper__CHUNK_SIZE_get_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !91
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.48) #10
  br label %_io_TextIOWrapper__CHUNK_SIZE_get_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !180
  %i.j = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.i) #10
  br label %_io_TextIOWrapper__CHUNK_SIZE_get_impl.exit

_io_TextIOWrapper__CHUNK_SIZE_get_impl.exit:      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.j, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_io_TextIOWrapper__CHUNK_SIZE_set(ptr noundef captures(none) %0, ptr noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.42) #10
  br label %_io_TextIOWrapper__CHUNK_SIZE_set_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !91
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.48) #10
  br label %_io_TextIOWrapper__CHUNK_SIZE_set_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.118) #10
  br label %_io_TextIOWrapper__CHUNK_SIZE_set_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  %i.k = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %1, ptr noundef %i.j) #10 ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @PyErr_Occurred() #10
  %.not10.i = icmp eq ptr %i.m, null
  br i1 %.not10.i, label %.thread.i, label %_io_TextIOWrapper__CHUNK_SIZE_set_impl.exit

bb.i:                                             ; preds = %bb.g
  %i.n = icmp slt i64 %i.k, 1
  br i1 %i.n, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i, %bb.h
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.119) #10
  br label %_io_TextIOWrapper__CHUNK_SIZE_set_impl.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr i8, ptr %0, i64 24
  store i64 %i.k, ptr %i.p, align 8, !tbaa !180
  br label %_io_TextIOWrapper__CHUNK_SIZE_set_impl.exit

_io_TextIOWrapper__CHUNK_SIZE_set_impl.exit:      ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %.thread.i, %bb.j
  %.0.i = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ 0, %bb.j ], [ -1, %.thread.i ], [ -1, %bb.h ]
  ret i32 %.0.i
}

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyInterpreterState_GetConfig(ptr noundef) local_unnamed_addr #2

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_PyUnicode_AsUTF8NoNUL(ptr noundef) local_unnamed_addr #2

declare i32 @PyObject_HasAttrWithError(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyCodec_LookupError(ptr noundef) local_unnamed_addr #2

declare ptr @PyType_GetModuleByDef(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !16, i64 24}
!12 = !{!"nldecoder_object", !13, i64 0, !16, i64 16, !16, i64 24, !8, i64 32, !8, i64 32, !8, i64 32}
!13 = !{!"_object", !9, i64 0, !14, i64 8}
!14 = !{!"p1 _ZTS11_typeobject", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTS7_object", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!12, !16, i64 16}
!19 = !{!9, !9, i64 0}
!20 = !{!13, !14, i64 8}
!21 = !{!22, !24, i64 168}
!22 = !{!"_typeobject", !23, i64 0, !25, i64 24, !24, i64 32, !24, i64 40, !15, i64 48, !24, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !24, i64 168, !25, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !24, i64 208, !15, i64 216, !15, i64 224, !26, i64 232, !27, i64 240, !28, i64 248, !14, i64 256, !16, i64 264, !15, i64 272, !15, i64 280, !24, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !16, i64 336, !16, i64 344, !16, i64 352, !15, i64 360, !16, i64 368, !15, i64 376, !8, i64 384, !15, i64 392, !15, i64 400, !9, i64 408, !29, i64 410}
!23 = !{!"PyVarObject", !13, i64 0, !24, i64 16}
!24 = !{!"long", !9, i64 0}
!25 = !{!"p1 omnipotent char", !15, i64 0}
!26 = !{!"p1 _ZTS11PyMethodDef", !15, i64 0}
!27 = !{!"p1 _ZTS11PyMemberDef", !15, i64 0}
!28 = !{!"p1 _ZTS11PyGetSetDef", !15, i64 0}
!29 = !{!"short", !9, i64 0}
!30 = !{!22, !25, i64 24}
!31 = !{!32, !24, i64 16}
!32 = !{!"", !13, i64 0, !24, i64 16, !24, i64 24, !33, i64 32}
!33 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!34 = !{!29, !29, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !36}
!40 = !{!24, !24, i64 0}
!41 = distinct !{!41, !36}
!42 = distinct !{!42, !36}
!43 = !{!23, !24, i64 16}
!44 = !{!45, !16, i64 888}
!45 = !{!"_heaptypeobject", !22, i64 0, !46, i64 416, !47, i64 448, !48, i64 736, !49, i64 760, !50, i64 840, !16, i64 856, !16, i64 864, !16, i64 872, !51, i64 880, !16, i64 888, !25, i64 896, !15, i64 904, !52, i64 912}
!46 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!47 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280}
!48 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16}
!49 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72}
!50 = !{!"", !15, i64 0, !15, i64 8}
!51 = !{!"p1 _ZTS15_dictkeysobject", !15, i64 0}
!52 = !{!"_specialization_cache", !16, i64 0, !8, i64 8, !16, i64 16}
!53 = !{!54, !15, i64 24}
!54 = !{!"", !13, i64 0, !16, i64 16, !15, i64 24, !16, i64 32, !16, i64 40, !55, i64 48, !24, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96}
!55 = !{!"_Bool", !9, i64 0}
!56 = !{!57, !16, i64 8}
!57 = !{!"_io_state", !8, i64 0, !16, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120}
!58 = !{!59, !24, i64 8}
!59 = !{!"", !24, i64 0, !24, i64 8}
!60 = !{!59, !24, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"p1 _ZTS3_is", !15, i64 0}
!63 = !{!64, !8, i64 28}
!64 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !65, i64 8, !9, i64 32, !65, i64 80, !9, i64 104, !8, i64 224, !66, i64 232, !16, i64 240, !16, i64 248, !24, i64 256, !24, i64 264, !8, i64 272, !8, i64 276}
!65 = !{!"gc_generation", !59, i64 0, !8, i64 16, !8, i64 20}
!66 = !{!"p1 _ZTS19_PyInterpreterFrame", !15, i64 0}
!67 = !{!64, !24, i64 256}
!68 = !{!22, !15, i64 320}
!69 = !{!70, !24, i64 16}
!70 = !{!"", !13, i64 0, !24, i64 16, !24, i64 24, !51, i64 32, !71, i64 40}
!71 = !{!"p1 _ZTS11_dictvalues", !15, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"long long", !9, i64 0}
!74 = !{!75, !9, i64 96}
!75 = !{!"textio", !13, i64 0, !8, i64 16, !8, i64 20, !24, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !25, i64 80, !9, i64 88, !9, i64 89, !9, i64 90, !9, i64 91, !9, i64 92, !9, i64 93, !9, i64 94, !9, i64 95, !9, i64 96, !15, i64 104, !9, i64 112, !16, i64 120, !24, i64 128, !16, i64 136, !24, i64 144, !16, i64 152, !76, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !77, i64 192}
!76 = !{!"double", !9, i64 0}
!77 = !{!"p1 _ZTS9_io_state", !15, i64 0}
!78 = !{!75, !8, i64 16}
!79 = !{!75, !16, i64 176}
!80 = !{!75, !16, i64 40}
!81 = !{!75, !16, i64 32}
!82 = !{!75, !16, i64 48}
!83 = !{!75, !16, i64 56}
!84 = !{!75, !16, i64 64}
!85 = !{!75, !16, i64 120}
!86 = !{!75, !16, i64 136}
!87 = !{!75, !16, i64 152}
!88 = !{!75, !16, i64 72}
!89 = !{!75, !16, i64 168}
!90 = !{!75, !16, i64 184}
!91 = !{!75, !8, i64 20}
!92 = !{!75, !9, i64 95}
!93 = !{!75, !77, i64 192}
!94 = !{!57, !14, i64 120}
!95 = !{!75, !9, i64 93}
!96 = !{!97, !8, i64 184}
!97 = !{!"PyConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !24, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !98, i64 64, !8, i64 72, !8, i64 76, !98, i64 80, !98, i64 88, !98, i64 96, !8, i64 104, !99, i64 112, !99, i64 128, !99, i64 144, !99, i64 160, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !98, i64 232, !98, i64 240, !98, i64 248, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !98, i64 288, !98, i64 296, !98, i64 304, !98, i64 312, !8, i64 320, !99, i64 328, !98, i64 344, !98, i64 352, !98, i64 360, !98, i64 368, !98, i64 376, !98, i64 384, !98, i64 392, !8, i64 400, !98, i64 408, !98, i64 416, !98, i64 424, !98, i64 432, !8, i64 440, !8, i64 444, !8, i64 448}
!98 = !{!"p1 int", !15, i64 0}
!99 = !{!"", !24, i64 0, !100, i64 8}
!100 = !{!"p2 int", !101, i64 0}
!101 = !{!"any p2 pointer", !15, i64 0}
!102 = !{!97, !8, i64 12}
!103 = !{!104, !25, i64 11832}
!104 = !{!"_is", !105, i64 0, !62, i64 7264, !24, i64 7272, !24, i64 7280, !8, i64 7288, !24, i64 7296, !8, i64 7304, !8, i64 7308, !8, i64 7312, !24, i64 7320, !110, i64 7328, !112, i64 7376, !108, i64 7384, !24, i64 7392, !64, i64 7400, !16, i64 7680, !16, i64 7688, !113, i64 7696, !116, i64 7832, !24, i64 8040, !117, i64 8048, !97, i64 8080, !24, i64 8536, !16, i64 8544, !16, i64 8552, !16, i64 8560, !15, i64 8568, !9, i64 8576, !9, i64 8640, !24, i64 8648, !9, i64 8656, !118, i64 10696, !16, i64 10744, !16, i64 10752, !16, i64 10760, !123, i64 10768, !124, i64 10832, !126, i64 10848, !128, i64 10872, !131, i64 10928, !109, i64 10944, !133, i64 10952, !16, i64 10960, !9, i64 10968, !9, i64 11032, !9, i64 11096, !9, i64 11160, !9, i64 11161, !134, i64 11168, !137, i64 11832, !141, i64 11888, !142, i64 11896, !144, i64 14336, !145, i64 79880, !147, i64 79896, !148, i64 79968, !149, i64 80000, !150, i64 80024, !151, i64 82008, !155, i64 223296, !9, i64 223328, !55, i64 223384, !55, i64 223385, !156, i64 223386, !157, i64 223400, !157, i64 223408, !157, i64 223416, !157, i64 223424, !24, i64 223432, !158, i64 223440, !15, i64 223448, !159, i64 223456, !127, i64 223472, !127, i64 223473, !24, i64 223480, !24, i64 223488, !9, i64 223496, !9, i64 224712, !9, i64 224776, !160, i64 224840, !161, i64 224928, !24, i64 225064, !165, i64 225072}
!105 = !{!"_ceval_state", !24, i64 0, !8, i64 8, !106, i64 16, !8, i64 24, !107, i64 32}
!106 = !{!"p1 _ZTS18_gil_runtime_state", !15, i64 0}
!107 = !{!"_pending_calls", !108, i64 0, !109, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !8, i64 7224, !8, i64 7228}
!108 = !{!"p1 _ZTS3_ts", !15, i64 0}
!109 = !{!"PyMutex", !9, i64 0}
!110 = !{!"pythreads", !24, i64 0, !108, i64 8, !111, i64 16, !108, i64 24, !24, i64 32, !24, i64 40}
!111 = !{!"p1 _ZTS18_PyThreadStateImpl", !15, i64 0}
!112 = !{!"p1 _ZTS14pyruntimestate", !15, i64 0}
!113 = !{!"_import_state", !16, i64 0, !16, i64 8, !16, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !16, i64 40, !16, i64 48, !8, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !114, i64 88, !115, i64 112}
!114 = !{!"", !109, i64 0, !73, i64 8, !24, i64 16}
!115 = !{!"", !8, i64 0, !24, i64 8, !8, i64 16}
!116 = !{!"_gil_runtime_state", !24, i64 0, !108, i64 8, !8, i64 16, !24, i64 24, !9, i64 32, !9, i64 80, !9, i64 120, !9, i64 168}
!117 = !{!"codecs_state", !16, i64 0, !16, i64 8, !16, i64 16, !8, i64 24}
!118 = !{!"", !119, i64 0, !122, i64 24}
!119 = !{!"_xid_lookup_state", !120, i64 0}
!120 = !{!"", !8, i64 0, !8, i64 4, !109, i64 8, !121, i64 16}
!121 = !{!"p1 _ZTS12_xid_regitem", !15, i64 0}
!122 = !{!"xi_exceptions", !16, i64 0, !16, i64 8, !16, i64 16}
!123 = !{!"_warnings_runtime_state", !16, i64 0, !16, i64 8, !16, i64 16, !114, i64 24, !24, i64 48, !16, i64 56}
!124 = !{!"atexit_state", !125, i64 0, !16, i64 8}
!125 = !{!"p1 _ZTS15atexit_callback", !15, i64 0}
!126 = !{!"_stoptheworld_state", !109, i64 0, !55, i64 1, !55, i64 2, !55, i64 3, !127, i64 4, !24, i64 8, !108, i64 16}
!127 = !{!"", !9, i64 0}
!128 = !{!"_qsbr_shared", !24, i64 0, !24, i64 8, !129, i64 16, !15, i64 24, !24, i64 32, !109, i64 40, !130, i64 48}
!129 = !{!"p1 _ZTS9_qsbr_pad", !15, i64 0}
!130 = !{!"p1 _ZTS18_qsbr_thread_state", !15, i64 0}
!131 = !{!"llist_node", !132, i64 0, !132, i64 8}
!132 = !{!"p1 _ZTS10llist_node", !15, i64 0}
!133 = !{!"p1 _ZTS15_obmalloc_state", !15, i64 0}
!134 = !{!"_py_object_state", !135, i64 0, !8, i64 656}
!135 = !{!"_Py_freelists", !136, i64 0, !136, i64 16, !136, i64 32, !9, i64 48, !136, i64 368, !136, i64 384, !136, i64 400, !136, i64 416, !136, i64 432, !136, i64 448, !136, i64 464, !136, i64 480, !136, i64 496, !136, i64 512, !136, i64 528, !136, i64 544, !136, i64 560, !136, i64 576, !136, i64 592, !136, i64 608, !136, i64 624, !136, i64 640}
!136 = !{!"_Py_freelist", !15, i64 0, !24, i64 8}
!137 = !{!"_Py_unicode_state", !138, i64 0, !15, i64 32, !139, i64 40}
!138 = !{!"_Py_unicode_fs_codec", !25, i64 0, !8, i64 8, !25, i64 16, !8, i64 24}
!139 = !{!"_Py_unicode_ids", !24, i64 0, !140, i64 8}
!140 = !{!"p2 _ZTS7_object", !101, i64 0}
!141 = !{!"_Py_long_state", !8, i64 0}
!142 = !{!"_dtoa_state", !9, i64 0, !9, i64 64, !9, i64 128, !143, i64 2432}
!143 = !{!"p1 double", !15, i64 0}
!144 = !{!"_py_func_state", !8, i64 0, !9, i64 8}
!145 = !{!"_py_code_state", !109, i64 0, !146, i64 8}
!146 = !{!"p1 _ZTS15_Py_hashtable_t", !15, i64 0}
!147 = !{!"_Py_dict_state", !8, i64 0, !9, i64 8}
!148 = !{!"_Py_exc_state", !16, i64 0, !15, i64 8, !8, i64 16, !16, i64 24}
!149 = !{!"_Py_mem_interp_free_queue", !8, i64 0, !109, i64 4, !131, i64 8}
!150 = !{!"ast_state", !127, i64 0, !8, i64 4, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !16, i64 336, !16, i64 344, !16, i64 352, !16, i64 360, !16, i64 368, !16, i64 376, !16, i64 384, !16, i64 392, !16, i64 400, !16, i64 408, !16, i64 416, !16, i64 424, !16, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !16, i64 480, !16, i64 488, !16, i64 496, !16, i64 504, !16, i64 512, !16, i64 520, !16, i64 528, !16, i64 536, !16, i64 544, !16, i64 552, !16, i64 560, !16, i64 568, !16, i64 576, !16, i64 584, !16, i64 592, !16, i64 600, !16, i64 608, !16, i64 616, !16, i64 624, !16, i64 632, !16, i64 640, !16, i64 648, !16, i64 656, !16, i64 664, !16, i64 672, !16, i64 680, !16, i64 688, !16, i64 696, !16, i64 704, !16, i64 712, !16, i64 720, !16, i64 728, !16, i64 736, !16, i64 744, !16, i64 752, !16, i64 760, !16, i64 768, !16, i64 776, !16, i64 784, !16, i64 792, !16, i64 800, !16, i64 808, !16, i64 816, !16, i64 824, !16, i64 832, !16, i64 840, !16, i64 848, !16, i64 856, !16, i64 864, !16, i64 872, !16, i64 880, !16, i64 888, !16, i64 896, !16, i64 904, !16, i64 912, !16, i64 920, !16, i64 928, !16, i64 936, !16, i64 944, !16, i64 952, !16, i64 960, !16, i64 968, !16, i64 976, !16, i64 984, !16, i64 992, !16, i64 1000, !16, i64 1008, !16, i64 1016, !16, i64 1024, !16, i64 1032, !16, i64 1040, !16, i64 1048, !16, i64 1056, !16, i64 1064, !16, i64 1072, !16, i64 1080, !16, i64 1088, !16, i64 1096, !16, i64 1104, !16, i64 1112, !16, i64 1120, !16, i64 1128, !16, i64 1136, !16, i64 1144, !16, i64 1152, !16, i64 1160, !16, i64 1168, !16, i64 1176, !16, i64 1184, !16, i64 1192, !16, i64 1200, !16, i64 1208, !16, i64 1216, !16, i64 1224, !16, i64 1232, !16, i64 1240, !16, i64 1248, !16, i64 1256, !16, i64 1264, !16, i64 1272, !16, i64 1280, !16, i64 1288, !16, i64 1296, !16, i64 1304, !16, i64 1312, !16, i64 1320, !16, i64 1328, !16, i64 1336, !16, i64 1344, !16, i64 1352, !16, i64 1360, !16, i64 1368, !16, i64 1376, !16, i64 1384, !16, i64 1392, !16, i64 1400, !16, i64 1408, !16, i64 1416, !16, i64 1424, !16, i64 1432, !16, i64 1440, !16, i64 1448, !16, i64 1456, !16, i64 1464, !16, i64 1472, !16, i64 1480, !16, i64 1488, !16, i64 1496, !16, i64 1504, !16, i64 1512, !16, i64 1520, !16, i64 1528, !16, i64 1536, !16, i64 1544, !16, i64 1552, !16, i64 1560, !16, i64 1568, !16, i64 1576, !16, i64 1584, !16, i64 1592, !16, i64 1600, !16, i64 1608, !16, i64 1616, !16, i64 1624, !16, i64 1632, !16, i64 1640, !16, i64 1648, !16, i64 1656, !16, i64 1664, !16, i64 1672, !16, i64 1680, !16, i64 1688, !16, i64 1696, !16, i64 1704, !16, i64 1712, !16, i64 1720, !16, i64 1728, !16, i64 1736, !16, i64 1744, !16, i64 1752, !16, i64 1760, !16, i64 1768, !16, i64 1776, !16, i64 1784, !16, i64 1792, !16, i64 1800, !16, i64 1808, !16, i64 1816, !16, i64 1824, !16, i64 1832, !16, i64 1840, !16, i64 1848, !16, i64 1856, !16, i64 1864, !16, i64 1872, !16, i64 1880, !16, i64 1888, !16, i64 1896, !16, i64 1904, !16, i64 1912, !16, i64 1920, !16, i64 1928, !16, i64 1936, !16, i64 1944, !16, i64 1952, !16, i64 1960, !16, i64 1968, !16, i64 1976}
!151 = !{!"types_state", !8, i64 0, !152, i64 8, !153, i64 98312, !154, i64 108016, !109, i64 108512, !9, i64 108520}
!152 = !{!"type_cache", !9, i64 0}
!153 = !{!"", !24, i64 0, !9, i64 8}
!154 = !{!"", !24, i64 0, !24, i64 8, !9, i64 16}
!155 = !{!"callable_cache", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!156 = !{!"_PyOptimizationConfig", !29, i64 0, !29, i64 2, !29, i64 4, !29, i64 6, !55, i64 8, !55, i64 9}
!157 = !{!"p1 _ZTS17_PyExecutorObject", !15, i64 0}
!158 = !{!"_rare_events", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4}
!159 = !{!"_Py_GlobalMonitors", !9, i64 0}
!160 = !{!"_Py_interp_cached_objects", !16, i64 0, !16, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !16, i64 72, !16, i64 80}
!161 = !{!"_Py_interp_static_objects", !162, i64 0}
!162 = !{!"", !8, i64 0, !59, i64 8, !163, i64 24, !164, i64 64}
!163 = !{!"", !13, i64 0, !15, i64 16, !16, i64 24, !24, i64 32}
!164 = !{!"", !13, i64 0, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !9, i64 64}
!165 = !{!"_PyThreadStateImpl", !166, i64 0, !173, i64 848, !24, i64 936, !24, i64 944, !24, i64 952, !24, i64 960, !24, i64 968, !24, i64 976, !16, i64 984, !16, i64 992, !8, i64 1000, !131, i64 1008, !130, i64 1024, !131, i64 1032}
!166 = !{!"_ts", !108, i64 0, !108, i64 8, !62, i64 16, !24, i64 24, !167, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !66, i64 72, !66, i64 80, !66, i64 88, !15, i64 96, !15, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !168, i64 136, !16, i64 144, !8, i64 152, !16, i64 160, !24, i64 168, !24, i64 176, !16, i64 184, !24, i64 192, !8, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !24, i64 232, !24, i64 240, !169, i64 248, !140, i64 256, !140, i64 264, !170, i64 272, !16, i64 288, !171, i64 296, !24, i64 304, !16, i64 312, !16, i64 320, !172, i64 328}
!167 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!168 = !{!"p1 _ZTS14_err_stackitem", !15, i64 0}
!169 = !{!"p1 _ZTS12_stack_chunk", !15, i64 0}
!170 = !{!"_err_stackitem", !16, i64 0, !168, i64 8}
!171 = !{!"p1 _ZTS11_PyExitData", !15, i64 0}
!172 = !{!"", !8, i64 0, !9, i64 4}
!173 = !{!"_PyInterpreterFrame", !9, i64 0, !66, i64 8, !9, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !174, i64 48, !15, i64 56, !175, i64 64, !29, i64 72, !9, i64 74, !9, i64 75, !9, i64 80}
!174 = !{!"p1 _ZTS6_frame", !15, i64 0}
!175 = !{!"p1 _ZTS11_PyStackRef", !15, i64 0}
!176 = !{!75, !24, i64 128}
!177 = !{!75, !24, i64 144}
!178 = !{!75, !15, i64 104}
!179 = !{!75, !76, i64 160}
!180 = !{!75, !24, i64 24}
!181 = !{!75, !9, i64 88}
!182 = !{!75, !9, i64 89}
end_hunk_2
