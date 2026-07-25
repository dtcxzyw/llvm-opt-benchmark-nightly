inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 52
begin_hunk_0_@long_to_decimal_string_internal:bb.a
bb.cs:                                            ; preds = %bb.cr
  %i.uu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !53
  %i.uv = tail call i32 %i.ut(ptr noundef nonnull %i.id, i32 noundef 1, ptr noundef %i.uu) #16, !inline_history !54 ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.uw = getelementptr i8, ptr %i.id, i64 16
  %.val6.i.i.i = load i64, ptr %i.uw, align 8, !tbaa !25 ; 2 uses
  %i.ux = and i64 %.val6.i.i.i, 4
  %.not.i.i.i338 = icmp eq i64 %i.ux, 0
  br i1 %.not.i.i.i338, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call void @_Py_SetImmortal(ptr noundef nonnull %i.id) #16
  br label %_Py_DECREF_INT.exit

bb.cv:                                            ; preds = %bb.ct
  %i.uy = icmp ugt i64 %.val6.i.i.i, 15
  br i1 %i.uy, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.uz = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !14 ; 2 uses
  %i.vb = getelementptr i8, ptr %i.va, i64 11208  ; 2 uses
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !20 ; 2 uses
  %or.cond.i.i.i.i.i = icmp ult i64 %i.vc, 100
  br i1 %or.cond.i.i.i.i.i, label %_PyFreeList_Push.exit.i.i.i.i, label %bb.cx

_PyFreeList_Push.exit.i.i.i.i:                    ; preds = %bb.cw
  %i.vd = getelementptr i8, ptr %i.va, i64 11200  ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !16
  store ptr %i.ve, ptr %i.id, align 8, !tbaa !19
  store ptr %i.id, ptr %i.vd, align 8, !tbaa !16
  %i.vf = add nuw nsw i64 %i.vc, 1
  store i64 %i.vf, ptr %i.vb, align 8, !tbaa !20
  br label %_Py_DECREF_INT.exit

bb.cx:                                            ; preds = %bb.cw
  tail call void @PyObject_Free(ptr noundef nonnull %i.id) #16
  br label %_Py_DECREF_INT.exit

bb.cy:                                            ; preds = %bb.cv
  tail call void @PyObject_Free(ptr noundef nonnull %i.id) #16
  br label %_Py_DECREF_INT.exit

_Py_DECREF_INT.exit:                              ; preds = %bb.cp, %bb.cq, %bb.cu, %_PyFreeList_Push.exit.i.i.i.i, %bb.cx, %bb.cy
  br i1 %.not258, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_Py_DECREF_INT.exit
  %i.vg = getelementptr i8, ptr %2, i64 32        ; 2 uses
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !157
  %i.vi = add i64 %i.vh, %.0217.lcssa
  store i64 %i.vi, ptr %i.vg, align 8, !tbaa !157
  br label %pylong_int_to_decimal_string.exit

bb.da:                                            ; preds = %_Py_DECREF_INT.exit
  br i1 %.not260343, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.vj = load ptr, ptr %4, align 8, !tbaa !158
  %i.vk = getelementptr i8, ptr %i.vj, i64 %.0217.lcssa
  store ptr %i.vk, ptr %4, align 8, !tbaa !158
  br label %pylong_int_to_decimal_string.exit

bb.dc:                                            ; preds = %bb.da
  store ptr %.0213341, ptr %1, align 8, !tbaa !11
  br label %pylong_int_to_decimal_string.exit

pylong_int_to_decimal_string.exit:                ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.at, %bb.ah, %bb.ag, %bb.af, %Py_XDECREF.exit.sink.split.i, %bb.ad, %Py_DECREF.exit58.i, %bb.z, %bb.y, %Py_DECREF.exit60.i, %bb.h, %bb.cz, %bb.dc, %bb.db, %Py_DECREF.exit281, %.thread, %.critedge, %bb.c
  %.5 = phi i32 [ -1, %bb.c ], [ 0, %bb.cz ], [ -1, %.critedge ], [ %.0.ph.i, %Py_XDECREF.exit.sink.split.i ], [ -1, %bb.ah ], [ -1, %.thread ], [ -1, %bb.av ], [ -1, %bb.ba ], [ -1, %Py_DECREF.exit281 ], [ 0, %bb.db ], [ 0, %bb.dc ], [ 0, %bb.ad ], [ -1, %bb.h ], [ -1, %Py_DECREF.exit60.i ], [ -1, %bb.y ], [ -1, %bb.z ], [ 0, %Py_DECREF.exit58.i ], [ -1, %bb.af ], [ -1, %bb.ag ], [ -1, %bb.at ], [ -1, %bb.au ], [ -1, %bb.ay ], [ -1, %bb.az ], [ -1, %bb.bc ], [ -1, %bb.bd ], [ -1, %bb.be ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @long_format_binary(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 11, 10) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val276 = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr i8, ptr %.val276, i64 168
  %.val277 = load i64, ptr %i.c, align 8, !tbaa !35
  %i.d = and i64 %.val277, 16777216
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %switch.lookup

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 2342) #16
  br label %bb.bs

switch.lookup:                                    ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !25  ; 3 uses
  %i.f = lshr i64 %.val, 3                        ; 10 uses
  %i.g = and i64 %.val, 3
  %i.h = icmp eq i64 %i.g, 2                      ; 5 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr i8, ptr @switch.table.long_format_binary, i64 %i.i
  %switch.gep = getelementptr i8, ptr %i.j, i64 -2
  %switch.load = load i8, ptr %switch.gep, align 1 ; 6 uses
  %switch.ext = zext i8 %switch.load to i32       ; 9 uses
  %i.k = icmp eq i64 %i.f, 0                      ; 5 uses
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %switch.lookup
  %i.l = icmp ult i64 %.val, 2459565876494606888
  br i1 %i.l, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.m = add nsw i64 %i.f, -1                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 30
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = getelementptr [4 x i8], ptr %i.o, i64 %i.m
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.q, i1 false)
  %i.s = sub nuw nsw i32 32, %i.r
  %i.t = zext nneg i32 %i.s to i64
  %i.u = zext i1 %i.h to i64
  %i.v = add nsw i32 %switch.ext, -1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.n, %i.w
  %i.y = add nuw nsw i64 %i.x, %i.t
  %i.z = zext i8 %switch.load to i64
  %i.aa = udiv i64 %i.y, %i.z
  %i.ab = add nuw nsw i64 %i.aa, %i.u
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.42) #16
  br label %bb.bs

bb.f:                                             ; preds = %.thread, %switch.lookup
  %.1226 = phi i64 [ %i.ab, %.thread ], [ 1, %switch.lookup ] ; 2 uses
  %.not267 = icmp eq i32 %2, 0                    ; 5 uses
  %i.ad = add nuw i64 %.1226, 2
  %spec.select = select i1 %.not267, i64 %.1226, i64 %i.ad ; 12 uses
  %.not268 = icmp eq ptr %4, null                 ; 5 uses
  br i1 %.not268, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %4, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !154
  %i.ag = icmp ugt i32 %i.af, 119
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %4, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !156
  %i.aj = getelementptr i8, ptr %4, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !157
  %i.al = sub i64 %i.ai, %i.ak
  %i.am = icmp sle i64 %spec.select, %i.al
  %i.an = icmp eq i64 %spec.select, 0
  %or.cond = or i1 %i.an, %i.am
  br i1 %or.cond, label %.critedge, label %bb.j

bb.i:                                             ; preds = %bb.g
  %.old1 = icmp eq i64 %spec.select, 0
  br i1 %.old1, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ao = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef %spec.select, i32 noundef 120) #16
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.bs, label %.critedge

bb.k:                                             ; preds = %bb.f
  %.not269 = icmp eq ptr %5, null
  br i1 %.not269, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %6, align 8, !tbaa !158
  %i.ar = tail call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %5, i64 noundef %spec.select, ptr noundef %i.aq) #16 ; 3 uses
  store ptr %i.ar, ptr %6, align 8, !tbaa !158
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.bs, label %.critedge.thread326

bb.m:                                             ; preds = %bb.k
  %i.at = tail call ptr @PyUnicode_New(i64 noundef %spec.select, i32 noundef 120) #16 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.bs, label %bb.v

.critedge:                                        ; preds = %bb.h, %bb.i, %bb.j
  %.not270 = icmp eq ptr %5, null
  br i1 %.not270, label %bb.u, label %.critedge..critedge.thread326_crit_edge

.critedge..critedge.thread326_crit_edge:          ; preds = %.critedge
  %.pre = load ptr, ptr %6, align 8, !tbaa !158
  br label %.critedge.thread326

.critedge.thread326:                              ; preds = %.critedge..critedge.thread326_crit_edge, %bb.l
  %i.av = phi ptr [ %.pre, %.critedge..critedge.thread326_crit_edge ], [ %i.ar, %bb.l ]
  %i.aw = getelementptr i8, ptr %i.av, i64 %spec.select ; 2 uses
  br i1 %i.k, label %bb.n, label %.preheader342

.preheader342:                                    ; preds = %.critedge.thread326
  %i.ax = getelementptr i8, ptr %0, i64 24
  %i.ay = add nuw nsw i32 %1, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = zext nneg i8 %switch.load to i64
  %i.bb = add nsw i64 %i.f, -1
  br label %bb.o

bb.n:                                             ; preds = %.critedge.thread326
  %i.bc = getelementptr i8, ptr %i.aw, i64 -1     ; 2 uses
  store i8 48, ptr %i.bc, align 1, !tbaa !24
  br label %.loopexit343

bb.o:                                             ; preds = %.preheader342, %bb.q
  %.0241358 = phi i64 [ 0, %.preheader342 ], [ %i.bv, %bb.q ] ; 3 uses
  %.0242357 = phi i32 [ 0, %.preheader342 ], [ %i.br, %bb.q ] ; 2 uses
  %.0244356 = phi i64 [ 0, %.preheader342 ], [ %i.bs, %bb.q ]
  %.0246355 = phi ptr [ %i.aw, %.preheader342 ], [ %i.bq, %bb.q ]
  %i.bd = getelementptr [4 x i8], ptr %i.ax, i64 %.0241358
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = zext i32 %i.be to i64
  %i.bg = zext nneg i32 %.0242357 to i64
  %i.bh = shl i64 %i.bf, %i.bg
  %i.bi = or i64 %i.bh, %.0244356
  %i.bj = add i32 %.0242357, 30
  %i.bk = icmp slt i64 %.0241358, %i.bb
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.1247 = phi ptr [ %.0246355, %bb.o ], [ %i.bq, %bb.p ]
  %.1245 = phi i64 [ %i.bi, %bb.o ], [ %i.bs, %bb.p ] ; 2 uses
  %.1243 = phi i32 [ %i.bj, %bb.o ], [ %i.br, %bb.p ]
  %i.bl = and i64 %.1245, %i.az
  %i.bm = trunc i64 %i.bl to i8                   ; 2 uses
  %i.bn = icmp slt i8 %i.bm, 10
  %i.bo = select i1 %i.bn, i8 48, i8 87
  %i.bp = add i8 %i.bo, %i.bm
  %i.bq = getelementptr i8, ptr %.1247, i64 -1    ; 4 uses
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !24
  %i.br = sub i32 %.1243, %switch.ext             ; 3 uses
  %i.bs = lshr i64 %.1245, %i.ba                  ; 3 uses
  %i.bt = icmp sge i32 %i.br, %switch.ext
  %i.bu = icmp ne i64 %i.bs, 0
  %.in275 = select i1 %i.bk, i1 %i.bt, i1 %i.bu
  br i1 %.in275, label %bb.p, label %bb.q, !llvm.loop !199

bb.q:                                             ; preds = %bb.p
  %i.bv = add nuw nsw i64 %.0241358, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %i.f
  br i1 %exitcond.not, label %.loopexit343, label %bb.o, !llvm.loop !200

.loopexit343:                                     ; preds = %bb.q, %bb.n
  %.2248 = phi ptr [ %i.bc, %bb.n ], [ %i.bq, %bb.q ] ; 3 uses
  br i1 %.not267, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit343
  %i.bw = getelementptr i8, ptr %.2248, i64 -1
  %switch.selectcmp = icmp eq i32 %1, 8
  %switch.select = select i1 %switch.selectcmp, i8 111, i8 98
  %switch.selectcmp415 = icmp eq i32 %1, 16
  %switch.select416 = select i1 %switch.selectcmp415, i8 120, i8 %switch.select
  store i8 %switch.select416, ptr %i.bw, align 1, !tbaa !24
  %i.bx = getelementptr i8, ptr %.2248, i64 -2    ; 2 uses
  store i8 48, ptr %i.bx, align 1, !tbaa !24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit343
  %.4250 = phi ptr [ %i.bx, %bb.r ], [ %.2248, %.loopexit343 ]
  br i1 %i.h, label %bb.t, label %bb.bn

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr i8, ptr %.4250, i64 -1
  store i8 45, ptr %i.by, align 1, !tbaa !24
  br label %bb.bn

bb.u:                                             ; preds = %.critedge
  %i.bz = getelementptr i8, ptr %4, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !191
  br label %bb.w

bb.v:                                             ; preds = %bb.m
  %i.cb = getelementptr i8, ptr %i.at, i64 32
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = lshr i32 %i.cc, 2
  %i.ce = and i32 %i.cd, 7
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0213323336 = phi ptr [ null, %bb.u ], [ %i.at, %bb.v ] ; 15 uses
  %i.cf = phi i32 [ %i.ca, %bb.u ], [ %i.ce, %bb.v ]
  switch i32 %i.cf, label %bb.az [
    i32 1, label %bb.x
    i32 2, label %bb.al
  ]

bb.x:                                             ; preds = %bb.w
  br i1 %.not268, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = load ptr, ptr %4, align 8, !tbaa !192   ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 32
  %.val.i = load i32, ptr %i.ch, align 8          ; 2 uses
  %i.ci = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.cj, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.cg, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.aa:                                            ; preds = %bb.y
  %i.ck = getelementptr i8, ptr %i.cg, i64 56
  %.val4.i = load ptr, ptr %i.ck, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.z, %bb.aa
  %.0.i = phi ptr [ %.0.i.i, %bb.z ], [ %.val4.i, %bb.aa ]
  %i.cl = getelementptr i8, ptr %4, i64 32
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !157
  %i.cn = getelementptr i8, ptr %.0.i, i64 %i.cm
  br label %_PyUnicode_DATA.exit286

bb.ab:                                            ; preds = %bb.x
  %i.co = getelementptr i8, ptr %.0213323336, i64 32
  %.val.i279 = load i32, ptr %i.co, align 8       ; 2 uses
  %i.cp = and i32 %.val.i279, 32
  %.not.i280 = icmp eq i32 %i.cp, 0
  br i1 %.not.i280, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = and i32 %.val.i279, 64
  %.not.i.i281 = icmp eq i32 %i.cq, 0
  %.0.v.i.i282 = select i1 %.not.i.i281, i64 56, i64 40
  %.0.i.i283 = getelementptr i8, ptr %.0213323336, i64 %.0.v.i.i282
  br label %_PyUnicode_DATA.exit286

bb.ad:                                            ; preds = %bb.ab
  %i.cr = getelementptr i8, ptr %.0213323336, i64 56
  %.val4.i285 = load ptr, ptr %i.cr, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit286

_PyUnicode_DATA.exit286:                          ; preds = %bb.ad, %bb.ac, %_PyUnicode_DATA.exit
  %.pn273 = phi ptr [ %i.cn, %_PyUnicode_DATA.exit ], [ %.0.i.i283, %bb.ac ], [ %.val4.i285, %bb.ad ]
  %.0233 = getelementptr i8, ptr %.pn273, i64 %spec.select ; 2 uses
  br i1 %i.k, label %bb.ae, label %.preheader338

.preheader338:                                    ; preds = %_PyUnicode_DATA.exit286
  %i.cs = getelementptr i8, ptr %0, i64 24
  %i.ct = add nuw nsw i32 %1, 255
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = zext nneg i8 %switch.load to i64
  %i.cw = add nsw i64 %i.f, -1
  br label %bb.af

bb.ae:                                            ; preds = %_PyUnicode_DATA.exit286
  %i.cx = getelementptr i8, ptr %.0233, i64 -1    ; 2 uses
  store i8 48, ptr %i.cx, align 1, !tbaa !24
  br label %.loopexit339

bb.af:                                            ; preds = %.preheader338, %bb.ah
  %.0228366 = phi i64 [ 0, %.preheader338 ], [ %i.dq, %bb.ah ] ; 3 uses
  %.0229365 = phi i32 [ 0, %.preheader338 ], [ %i.dm, %bb.ah ] ; 2 uses
  %.0231364 = phi i64 [ 0, %.preheader338 ], [ %i.dn, %bb.ah ]
  %.1234363 = phi ptr [ %.0233, %.preheader338 ], [ %i.dl, %bb.ah ]
  %i.cy = getelementptr [4 x i8], ptr %i.cs, i64 %.0228366
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7
  %i.da = zext i32 %i.cz to i64
  %i.db = zext nneg i32 %.0229365 to i64
  %i.dc = shl i64 %i.da, %i.db
  %i.dd = or i64 %i.dc, %.0231364
  %i.de = add i32 %.0229365, 30
  %i.df = icmp slt i64 %.0228366, %i.cw
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.2235 = phi ptr [ %.1234363, %bb.af ], [ %i.dl, %bb.ag ]
  %.1232 = phi i64 [ %i.dd, %bb.af ], [ %i.dn, %bb.ag ] ; 2 uses
  %.1230 = phi i32 [ %i.de, %bb.af ], [ %i.dm, %bb.ag ]
  %i.dg = and i64 %.1232, %i.cu
  %i.dh = trunc i64 %i.dg to i8                   ; 2 uses
  %i.di = icmp slt i8 %i.dh, 10
  %i.dj = select i1 %i.di, i8 48, i8 87
  %i.dk = add i8 %i.dj, %i.dh
  %i.dl = getelementptr i8, ptr %.2235, i64 -1    ; 4 uses
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !24
  %i.dm = sub i32 %.1230, %switch.ext             ; 3 uses
  %i.dn = lshr i64 %.1232, %i.cv                  ; 3 uses
  %i.do = icmp sge i32 %i.dm, %switch.ext
  %i.dp = icmp ne i64 %i.dn, 0
  %.in274 = select i1 %i.df, i1 %i.do, i1 %i.dp
  br i1 %.in274, label %bb.ag, label %bb.ah, !llvm.loop !201

bb.ah:                                            ; preds = %bb.ag
  %i.dq = add nuw nsw i64 %.0228366, 1            ; 2 uses
  %exitcond383.not = icmp eq i64 %i.dq, %i.f
  br i1 %exitcond383.not, label %.loopexit339, label %bb.af, !llvm.loop !202

.loopexit339:                                     ; preds = %bb.ah, %bb.ae
  %.3236 = phi ptr [ %i.cx, %bb.ae ], [ %i.dl, %bb.ah ] ; 3 uses
  br i1 %.not267, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.loopexit339
  %i.dr = getelementptr i8, ptr %.3236, i64 -1
  %switch.selectcmp417 = icmp eq i32 %1, 8
  %switch.select418 = select i1 %switch.selectcmp417, i8 111, i8 98
  %switch.selectcmp419 = icmp eq i32 %1, 16
  %switch.select420 = select i1 %switch.selectcmp419, i8 120, i8 %switch.select418
  store i8 %switch.select420, ptr %i.dr, align 1, !tbaa !24
  %i.ds = getelementptr i8, ptr %.3236, i64 -2    ; 2 uses
  store i8 48, ptr %i.ds, align 1, !tbaa !24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit339
  %.5238 = phi ptr [ %i.ds, %bb.ai ], [ %.3236, %.loopexit339 ]
  br i1 %i.h, label %bb.ak, label %bb.bn

bb.ak:                                            ; preds = %bb.aj
  %i.dt = getelementptr i8, ptr %.5238, i64 -1
  store i8 45, ptr %i.dt, align 1, !tbaa !24
  br label %bb.bn

bb.al:                                            ; preds = %bb.w
  br i1 %.not268, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = load ptr, ptr %4, align 8, !tbaa !192   ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 32
  %.val.i287 = load i32, ptr %i.dv, align 8       ; 2 uses
  %i.dw = and i32 %.val.i287, 32
  %.not.i288 = icmp eq i32 %i.dw, 0
  br i1 %.not.i288, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = and i32 %.val.i287, 64
  %.not.i.i289 = icmp eq i32 %i.dx, 0
  %.0.v.i.i290 = select i1 %.not.i.i289, i64 56, i64 40
  %.0.i.i291 = getelementptr i8, ptr %i.du, i64 %.0.v.i.i290
  br label %_PyUnicode_DATA.exit294

bb.ao:                                            ; preds = %bb.am
  %i.dy = getelementptr i8, ptr %i.du, i64 56
  %.val4.i293 = load ptr, ptr %i.dy, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit294

_PyUnicode_DATA.exit294:                          ; preds = %bb.an, %bb.ao
  %.0.i292 = phi ptr [ %.0.i.i291, %bb.an ], [ %.val4.i293, %bb.ao ]
  %i.dz = getelementptr i8, ptr %4, i64 32
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !157
  %i.eb = getelementptr [2 x i8], ptr %.0.i292, i64 %i.ea
  br label %_PyUnicode_DATA.exit302

bb.ap:                                            ; preds = %bb.al
  %i.ec = getelementptr i8, ptr %.0213323336, i64 32
  %.val.i295 = load i32, ptr %i.ec, align 8       ; 2 uses
  %i.ed = and i32 %.val.i295, 32
  %.not.i296 = icmp eq i32 %i.ed, 0
  br i1 %.not.i296, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ee = and i32 %.val.i295, 64
  %.not.i.i297 = icmp eq i32 %i.ee, 0
  %.0.v.i.i298 = select i1 %.not.i.i297, i64 56, i64 40
  %.0.i.i299 = getelementptr i8, ptr %.0213323336, i64 %.0.v.i.i298
  br label %_PyUnicode_DATA.exit302

bb.ar:                                            ; preds = %bb.ap
  %i.ef = getelementptr i8, ptr %.0213323336, i64 56
  %.val4.i301 = load ptr, ptr %i.ef, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit302

_PyUnicode_DATA.exit302:                          ; preds = %bb.ar, %bb.aq, %_PyUnicode_DATA.exit294
  %.pn271 = phi ptr [ %i.eb, %_PyUnicode_DATA.exit294 ], [ %.0.i.i299, %bb.aq ], [ %.val4.i301, %bb.ar ]
  %.0219 = getelementptr [2 x i8], ptr %.pn271, i64 %spec.select ; 2 uses
  br i1 %i.k, label %bb.as, label %.preheader340

.preheader340:                                    ; preds = %_PyUnicode_DATA.exit302
  %i.eg = getelementptr i8, ptr %0, i64 24
  %i.eh = add nuw nsw i32 %1, 255
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = zext nneg i8 %switch.load to i64
  %i.ek = add nsw i64 %i.f, -1
  br label %bb.at

bb.as:                                            ; preds = %_PyUnicode_DATA.exit302
  %i.el = getelementptr i8, ptr %.0219, i64 -2    ; 2 uses
  store i16 48, ptr %i.el, align 2, !tbaa !159
  br label %.loopexit341

bb.at:                                            ; preds = %.preheader340, %bb.av
  %.0214362 = phi i64 [ 0, %.preheader340 ], [ %i.ff, %bb.av ] ; 3 uses
  %.0215361 = phi i32 [ 0, %.preheader340 ], [ %i.fb, %bb.av ] ; 2 uses
  %.0217360 = phi i64 [ 0, %.preheader340 ], [ %i.fc, %bb.av ]
  %.1220359 = phi ptr [ %.0219, %.preheader340 ], [ %i.fa, %bb.av ]
  %i.em = getelementptr [4 x i8], ptr %i.eg, i64 %.0214362
  %i.en = load i32, ptr %i.em, align 4, !tbaa !7
  %i.eo = zext i32 %i.en to i64
  %i.ep = zext nneg i32 %.0215361 to i64
  %i.eq = shl i64 %i.eo, %i.ep
  %i.er = or i64 %i.eq, %.0217360
  %i.es = add i32 %.0215361, 30
  %i.et = icmp slt i64 %.0214362, %i.ek
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.2221 = phi ptr [ %.1220359, %bb.at ], [ %i.fa, %bb.au ]
  %.1218 = phi i64 [ %i.er, %bb.at ], [ %i.fc, %bb.au ] ; 2 uses
  %.1216 = phi i32 [ %i.es, %bb.at ], [ %i.fb, %bb.au ]
  %i.eu = and i64 %.1218, %i.ei
  %i.ev = trunc i64 %i.eu to i8                   ; 2 uses
  %i.ew = icmp slt i8 %i.ev, 10
  %i.ex = select i1 %i.ew, i8 48, i8 87
  %i.ey = add i8 %i.ex, %i.ev
  %i.ez = sext i8 %i.ey to i16
  %i.fa = getelementptr i8, ptr %.2221, i64 -2    ; 4 uses
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !159
  %i.fb = sub i32 %.1216, %switch.ext             ; 3 uses
  %i.fc = lshr i64 %.1218, %i.ej                  ; 3 uses
  %i.fd = icmp sge i32 %i.fb, %switch.ext
  %i.fe = icmp ne i64 %i.fc, 0
  %.in272 = select i1 %i.et, i1 %i.fd, i1 %i.fe
  br i1 %.in272, label %bb.au, label %bb.av, !llvm.loop !203

bb.av:                                            ; preds = %bb.au
  %i.ff = add nuw nsw i64 %.0214362, 1            ; 2 uses
  %exitcond382.not = icmp eq i64 %i.ff, %i.f
  br i1 %exitcond382.not, label %.loopexit341, label %bb.at, !llvm.loop !204

.loopexit341:                                     ; preds = %bb.av, %bb.as
  %.3222 = phi ptr [ %i.el, %bb.as ], [ %i.fa, %bb.av ] ; 3 uses
  br i1 %.not267, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.loopexit341
  %i.fg = getelementptr i8, ptr %.3222, i64 -2
  %switch.selectcmp421 = icmp eq i32 %1, 8
  %switch.select422 = select i1 %switch.selectcmp421, i16 111, i16 98
  %switch.selectcmp423 = icmp eq i32 %1, 16
  %switch.select424 = select i1 %switch.selectcmp423, i16 120, i16 %switch.select422
  store i16 %switch.select424, ptr %i.fg, align 2, !tbaa !159
  %i.fh = getelementptr i8, ptr %.3222, i64 -4    ; 2 uses
  store i16 48, ptr %i.fh, align 2, !tbaa !159
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.loopexit341
  %.5224 = phi ptr [ %i.fh, %bb.aw ], [ %.3222, %.loopexit341 ]
  br i1 %i.h, label %bb.ay, label %bb.bn

bb.ay:                                            ; preds = %bb.ax
  %i.fi = getelementptr i8, ptr %.5224, i64 -2
  store i16 45, ptr %i.fi, align 2, !tbaa !159
  br label %bb.bn

bb.az:                                            ; preds = %bb.w
  br i1 %.not268, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fj = load ptr, ptr %4, align 8, !tbaa !192   ; 3 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 32
  %.val.i303 = load i32, ptr %i.fk, align 8       ; 2 uses
  %i.fl = and i32 %.val.i303, 32
  %.not.i304 = icmp eq i32 %i.fl, 0
  br i1 %.not.i304, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fm = and i32 %.val.i303, 64
  %.not.i.i305 = icmp eq i32 %i.fm, 0
  %.0.v.i.i306 = select i1 %.not.i.i305, i64 56, i64 40
  %.0.i.i307 = getelementptr i8, ptr %i.fj, i64 %.0.v.i.i306
  br label %_PyUnicode_DATA.exit310

bb.bc:                                            ; preds = %bb.ba
  %i.fn = getelementptr i8, ptr %i.fj, i64 56
  %.val4.i309 = load ptr, ptr %i.fn, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit310

_PyUnicode_DATA.exit310:                          ; preds = %bb.bb, %bb.bc
  %.0.i308 = phi ptr [ %.0.i.i307, %bb.bb ], [ %.val4.i309, %bb.bc ]
  %i.fo = getelementptr i8, ptr %4, i64 32
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !157
  %i.fq = getelementptr [4 x i8], ptr %.0.i308, i64 %i.fp
  br label %_PyUnicode_DATA.exit318

bb.bd:                                            ; preds = %bb.az
  %i.fr = getelementptr i8, ptr %.0213323336, i64 32
  %.val.i311 = load i32, ptr %i.fr, align 8       ; 2 uses
  %i.fs = and i32 %.val.i311, 32
  %.not.i312 = icmp eq i32 %i.fs, 0
  br i1 %.not.i312, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ft = and i32 %.val.i311, 64
  %.not.i.i313 = icmp eq i32 %i.ft, 0
  %.0.v.i.i314 = select i1 %.not.i.i313, i64 56, i64 40
  %.0.i.i315 = getelementptr i8, ptr %.0213323336, i64 %.0.v.i.i314
  br label %_PyUnicode_DATA.exit318

bb.bf:                                            ; preds = %bb.bd
  %i.fu = getelementptr i8, ptr %.0213323336, i64 56
  %.val4.i317 = load ptr, ptr %i.fu, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit318

_PyUnicode_DATA.exit318:                          ; preds = %bb.bf, %bb.be, %_PyUnicode_DATA.exit310
  %.pn = phi ptr [ %i.fq, %_PyUnicode_DATA.exit310 ], [ %.0.i.i315, %bb.be ], [ %.val4.i317, %bb.bf ]
  %.0211 = getelementptr [4 x i8], ptr %.pn, i64 %spec.select ; 2 uses
  br i1 %i.k, label %bb.bg, label %.preheader

.preheader:                                       ; preds = %_PyUnicode_DATA.exit318
  %i.fv = getelementptr i8, ptr %0, i64 24
  %i.fw = add nuw nsw i32 %1, 255
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = zext nneg i8 %switch.load to i64
  %i.fz = add nsw i64 %i.f, -1
  br label %bb.bh

bb.bg:                                            ; preds = %_PyUnicode_DATA.exit318
  %i.ga = getelementptr i8, ptr %.0211, i64 -4    ; 2 uses
  store i32 48, ptr %i.ga, align 4, !tbaa !7
  br label %.loopexit

bb.bh:                                            ; preds = %.preheader, %bb.bj
  %.0206370 = phi i64 [ 0, %.preheader ], [ %i.gu, %bb.bj ] ; 3 uses
  %.0207369 = phi i32 [ 0, %.preheader ], [ %i.gq, %bb.bj ] ; 2 uses
  %.0209368 = phi i64 [ 0, %.preheader ], [ %i.gr, %bb.bj ]
  %.1212367 = phi ptr [ %.0211, %.preheader ], [ %i.gp, %bb.bj ]
  %i.gb = getelementptr [4 x i8], ptr %i.fv, i64 %.0206370
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !7
  %i.gd = zext i32 %i.gc to i64
  %i.ge = zext nneg i32 %.0207369 to i64
  %i.gf = shl i64 %i.gd, %i.ge
  %i.gg = or i64 %i.gf, %.0209368
  %i.gh = add i32 %.0207369, 30
  %i.gi = icmp slt i64 %.0206370, %i.fz
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %bb.bh
  %.2 = phi ptr [ %.1212367, %bb.bh ], [ %i.gp, %bb.bi ]
  %.1210 = phi i64 [ %i.gg, %bb.bh ], [ %i.gr, %bb.bi ] ; 2 uses
  %.1208 = phi i32 [ %i.gh, %bb.bh ], [ %i.gq, %bb.bi ]
  %i.gj = and i64 %.1210, %i.fx
  %i.gk = trunc i64 %i.gj to i8                   ; 2 uses
  %i.gl = icmp slt i8 %i.gk, 10
  %i.gm = select i1 %i.gl, i8 48, i8 87
  %i.gn = add i8 %i.gm, %i.gk
  %i.go = sext i8 %i.gn to i32
  %i.gp = getelementptr i8, ptr %.2, i64 -4       ; 4 uses
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !7
  %i.gq = sub i32 %.1208, %switch.ext             ; 3 uses
  %i.gr = lshr i64 %.1210, %i.fy                  ; 3 uses
  %i.gs = icmp sge i32 %i.gq, %switch.ext
  %i.gt = icmp ne i64 %i.gr, 0
  %.in = select i1 %i.gi, i1 %i.gs, i1 %i.gt
  br i1 %.in, label %bb.bi, label %bb.bj, !llvm.loop !205

bb.bj:                                            ; preds = %bb.bi
  %i.gu = add nuw nsw i64 %.0206370, 1            ; 2 uses
  %exitcond384.not = icmp eq i64 %i.gu, %i.f
  br i1 %exitcond384.not, label %.loopexit, label %bb.bh, !llvm.loop !206

.loopexit:                                        ; preds = %bb.bj, %bb.bg
  %.3 = phi ptr [ %i.ga, %bb.bg ], [ %i.gp, %bb.bj ] ; 3 uses
  br i1 %.not267, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.loopexit
  %i.gv = getelementptr i8, ptr %.3, i64 -4
  %switch.selectcmp425 = icmp eq i32 %1, 8
  %switch.select426 = select i1 %switch.selectcmp425, i32 111, i32 98
  %switch.selectcmp427 = icmp eq i32 %1, 16
  %switch.select428 = select i1 %switch.selectcmp427, i32 120, i32 %switch.select426
  store i32 %switch.select428, ptr %i.gv, align 4, !tbaa !7
  %i.gw = getelementptr i8, ptr %.3, i64 -8       ; 2 uses
  store i32 48, ptr %i.gw, align 4, !tbaa !7
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.loopexit
  %.5 = phi ptr [ %i.gw, %bb.bk ], [ %.3, %.loopexit ]
  br i1 %i.h, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.gx = getelementptr i8, ptr %.5, i64 -4
  store i32 45, ptr %i.gx, align 4, !tbaa !7
  br label %bb.bn

bb.bn:                                            ; preds = %bb.aj, %bb.ak, %bb.ax, %bb.ay, %bb.bl, %bb.bm, %bb.s, %bb.t
  %.not270324 = phi i1 [ true, %bb.aj ], [ true, %bb.ak ], [ true, %bb.ax ], [ true, %bb.ay ], [ true, %bb.bl ], [ true, %bb.bm ], [ false, %bb.s ], [ false, %bb.t ]
  %.0213322 = phi ptr [ %.0213323336, %bb.aj ], [ %.0213323336, %bb.ak ], [ %.0213323336, %bb.ax ], [ %.0213323336, %bb.ay ], [ %.0213323336, %bb.bl ], [ %.0213323336, %bb.bm ], [ null, %bb.s ], [ null, %bb.t ]
  br i1 %.not268, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gy = getelementptr i8, ptr %4, i64 32        ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !157
  %i.ha = add i64 %i.gz, %spec.select
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !157
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bn
  br i1 %.not270324, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hb = load ptr, ptr %6, align 8, !tbaa !158
  %i.hc = getelementptr i8, ptr %i.hb, i64 %spec.select
  store ptr %i.hc, ptr %6, align 8, !tbaa !158
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  store ptr %.0213322, ptr %3, align 8, !tbaa !11
  br label %bb.bs

bb.bs:                                            ; preds = %bb.e, %bb.bo, %bb.br, %bb.bq, %bb.m, %bb.l, %bb.j, %bb.c
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.m ], [ -1, %bb.j ], [ -1, %bb.l ], [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.bo ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyLong_FormatWriter(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @long_to_decimal_string_internal(ptr noundef %1, ptr noundef null, ptr noundef %0, ptr noundef null, ptr noundef null)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @long_format_binary(ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef %0, ptr noundef null, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyLong_FormatBytesWriter(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %1, ptr %i.a, align 8, !tbaa !158
  %i.b = icmp eq i32 %3, 10
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc i32 @long_to_decimal_string_internal(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = call fastcc i32 @long_format_binary(ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = icmp slt i32 %.0, 0
  %i.f = load ptr, ptr %i.a, align 8
  %.09 = select i1 %i.e, ptr null, ptr %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.09
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromString(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !207
  %i.b = icmp ne i32 %2, 0
  %i.c = icmp slt i32 %2, 2
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp sgt i32 %2, 36
  %or.cond3 = or i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !24      ; 2 uses
  %.not153 = icmp eq i8 %i.e, 0
  br i1 %.not153, label %.critedge.thread, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.25) #16
  br label %Py_DECREF.exit

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.g = phi i8 [ %i.m, %bb.c ], [ %i.e, %.preheader ] ; 2 uses
  %.0154 = phi ptr [ %i.l, %bb.c ], [ %0, %.preheader ] ; 4 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = and i32 %i.j, 8
  %.not42 = icmp eq i32 %i.k, 0
  br i1 %.not42, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.0154, i64 1      ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24    ; 2 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !209

.critedge:                                        ; preds = %.lr.ph
  switch i8 %i.g, label %.critedge.thread [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %.critedge
  %i.n = getelementptr i8, ptr %.0154, i64 1
  br label %.critedge.thread

bb.e:                                             ; preds = %.critedge
  %i.o = getelementptr i8, ptr %.0154, i64 1
  br label %.critedge.thread

end_hunk_0
