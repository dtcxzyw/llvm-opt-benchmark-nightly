Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/longobject?download=true
inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 51
begin_hunk_0_@long_to_decimal_string_internal:bb.a

bb.cs:                                            ; preds = %bb.cr
  %i.arc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !55
  %i.ard = tail call i32 %i.arb(ptr noundef nonnull %i.if, i32 noundef 1, ptr noundef %i.arc) #16, !inline_history !3 ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.are = getelementptr i8, ptr %i.if, i64 16
  %.val6.i.i.i = load i64, ptr %i.are, align 8, !tbaa !43 ; 2 uses
  %i.arf = and i64 %.val6.i.i.i, 4
  %.not.i.i.i338 = icmp eq i64 %i.arf, 0
  br i1 %.not.i.i.i338, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call void @_Py_SetImmortal(ptr noundef nonnull %i.if) #16
  br label %_Py_DECREF_INT.exit

bb.cv:                                            ; preds = %bb.ct
  %i.arg = icmp ugt i64 %.val6.i.i.i, 15
  br i1 %i.arg, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.arh = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !31 ; 2 uses
  %i.arj = getelementptr i8, ptr %i.ari, i64 11208 ; 2 uses
  %i.ark = load i64, ptr %i.arj, align 8, !tbaa !36 ; 2 uses
  %or.cond.i.i.i.i.i = icmp ult i64 %i.ark, 100
  br i1 %or.cond.i.i.i.i.i, label %_PyFreeList_Push.exit.i.i.i.i, label %bb.cx

_PyFreeList_Push.exit.i.i.i.i:                    ; preds = %bb.cw
  %i.arl = getelementptr i8, ptr %i.ari, i64 11200 ; 2 uses
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !34
  store ptr %i.arm, ptr %i.if, align 8, !tbaa !35
  store ptr %i.if, ptr %i.arl, align 8, !tbaa !34
  %i.arn = add nuw nsw i64 %i.ark, 1
  store i64 %i.arn, ptr %i.arj, align 8, !tbaa !36
  br label %_Py_DECREF_INT.exit

bb.cx:                                            ; preds = %bb.cw
  tail call void @PyObject_Free(ptr noundef nonnull %i.if) #16
  br label %_Py_DECREF_INT.exit

bb.cy:                                            ; preds = %bb.cv
  tail call void @PyObject_Free(ptr noundef nonnull %i.if) #16
  br label %_Py_DECREF_INT.exit

_Py_DECREF_INT.exit:                              ; preds = %bb.cp, %bb.cq, %bb.cu, %_PyFreeList_Push.exit.i.i.i.i, %bb.cx, %bb.cy
  br i1 %.not258, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_Py_DECREF_INT.exit
  %i.aro = getelementptr i8, ptr %2, i64 32       ; 2 uses
  %i.arp = load i64, ptr %i.aro, align 8, !tbaa !146
  %i.arq = add i64 %i.arp, %.0235.lcssa
  store i64 %i.arq, ptr %i.aro, align 8, !tbaa !146
  br label %pylong_int_to_decimal_string.exit

bb.da:                                            ; preds = %_Py_DECREF_INT.exit
  br i1 %.not260343, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.arr = load ptr, ptr %4, align 8, !tbaa !147
  %i.ars = getelementptr i8, ptr %i.arr, i64 %.0235.lcssa
  store ptr %i.ars, ptr %4, align 8, !tbaa !147
  br label %pylong_int_to_decimal_string.exit

bb.dc:                                            ; preds = %bb.da
  store ptr %.0239341, ptr %1, align 8, !tbaa !29
  br label %pylong_int_to_decimal_string.exit

pylong_int_to_decimal_string.exit:                ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.at, %bb.ah, %bb.ag, %bb.af, %Py_XDECREF.exit.sink.split.i, %bb.ad, %Py_DECREF.exit57.i, %bb.z, %bb.y, %Py_DECREF.exit59.i, %bb.h, %bb.cz, %bb.dc, %bb.db, %Py_DECREF.exit281, %.thread, %.critedge, %bb.c
  %.5 = phi i32 [ -1, %bb.c ], [ 0, %bb.cz ], [ -1, %.critedge ], [ %.0.ph.i, %Py_XDECREF.exit.sink.split.i ], [ -1, %bb.ah ], [ -1, %.thread ], [ -1, %bb.av ], [ -1, %bb.ba ], [ -1, %Py_DECREF.exit281 ], [ 0, %bb.db ], [ 0, %bb.dc ], [ 0, %bb.ad ], [ -1, %bb.h ], [ -1, %Py_DECREF.exit59.i ], [ -1, %bb.y ], [ -1, %bb.z ], [ 0, %Py_DECREF.exit57.i ], [ -1, %bb.af ], [ -1, %bb.ag ], [ -1, %bb.at ], [ -1, %bb.au ], [ -1, %bb.ay ], [ -1, %bb.az ], [ -1, %bb.bc ], [ -1, %bb.bd ], [ -1, %bb.be ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @long_format_binary(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 11, 10) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val276 = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr i8, ptr %.val276, i64 168
  %.val277 = load i64, ptr %i.c, align 8, !tbaa !52
  %i.d = and i64 %.val277, 16777216
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %switch.lookup

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 2342) #16
  br label %bb.bs

switch.lookup:                                    ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !43  ; 3 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26
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
  %i.ac = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.42) #16
  br label %bb.bs

bb.f:                                             ; preds = %.thread, %switch.lookup
  %.1237 = phi i64 [ %i.ab, %.thread ], [ 1, %switch.lookup ] ; 2 uses
  %.not267 = icmp eq i32 %2, 0                    ; 5 uses
  %i.ad = add nuw i64 %.1237, 2
  %spec.select = select i1 %.not267, i64 %.1237, i64 %i.ad ; 12 uses
  %.not268 = icmp eq ptr %4, null                 ; 5 uses
  br i1 %.not268, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %4, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !144
  %i.ag = icmp ugt i32 %i.af, 119
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %4, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !145
  %i.aj = getelementptr i8, ptr %4, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !146
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
  %i.aq = load ptr, ptr %6, align 8, !tbaa !147
  %i.ar = tail call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %5, i64 noundef %spec.select, ptr noundef %i.aq) #16 ; 3 uses
  store ptr %i.ar, ptr %6, align 8, !tbaa !147
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
  %.pre = load ptr, ptr %6, align 8, !tbaa !147
  br label %.critedge.thread326

.critedge.thread326:                              ; preds = %.critedge..critedge.thread326_crit_edge, %bb.l
  %i.av = phi ptr [ %.pre, %.critedge..critedge.thread326_crit_edge ], [ %i.ar, %bb.l ]
  %i.aw = getelementptr i8, ptr %i.av, i64 %spec.select ; 2 uses
  br i1 %i.k, label %bb.n, label %.preheader342.a

.preheader342.a:                                  ; preds = %.critedge.thread326
  %i.ax = getelementptr i8, ptr %0, i64 24
  %7 = trunc nuw nsw i32 %1 to i8
  %8 = add nsw i8 %7, -1
  %i.ay = zext nneg i8 %switch.load to i64
  %i.az = add nsw i64 %i.f, -1
  br label %bb.o

bb.n:                                             ; preds = %.critedge.thread326
  %i.ba = getelementptr i8, ptr %i.aw, i64 -1     ; 2 uses
  store i8 48, ptr %i.ba, align 1, !tbaa !40
  br label %.loopexit343.a

bb.o:                                             ; preds = %.preheader342.a, %bb.q
  %.0239358 = phi i64 [ 0, %.preheader342.a ], [ %i.br, %bb.q ] ; 3 uses
  %.0240357 = phi i32 [ 0, %.preheader342.a ], [ %i.bn, %bb.q ] ; 2 uses
  %.0242356 = phi i64 [ 0, %.preheader342.a ], [ %i.bo, %bb.q ]
  %.0244355 = phi ptr [ %i.aw, %.preheader342.a ], [ %i.bm, %bb.q ]
  %i.bb = getelementptr [4 x i8], ptr %i.ax, i64 %.0239358
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !26
  %i.bd = zext i32 %i.bc to i64
  %i.be = zext nneg i32 %.0240357 to i64
  %i.bf = shl i64 %i.bd, %i.be
  %i.bg = or i64 %i.bf, %.0242356
  %i.bh = add i32 %.0240357, 30
  %i.bi = icmp slt i64 %.0239358, %i.az
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.1245 = phi ptr [ %.0244355, %bb.o ], [ %i.bm, %bb.p ]
  %.1243 = phi i64 [ %i.bg, %bb.o ], [ %i.bo, %bb.p ] ; 2 uses
  %.1241 = phi i32 [ %i.bh, %bb.o ], [ %i.bn, %bb.p ]
  %9 = trunc i64 %.1243 to i8
  %10 = and i8 %8, %9                             ; 2 uses
  %i.bj = icmp slt i8 %10, 10
  %i.bk = select i1 %i.bj, i8 48, i8 87
  %i.bl = add i8 %i.bk, %10
  %i.bm = getelementptr i8, ptr %.1245, i64 -1    ; 4 uses
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !40
  %i.bn = sub i32 %.1241, %switch.ext             ; 3 uses
  %i.bo = lshr i64 %.1243, %i.ay                  ; 3 uses
  %i.bp = icmp sge i32 %i.bn, %switch.ext
  %i.bq = icmp ne i64 %i.bo, 0
  %.in275 = select i1 %i.bi, i1 %i.bp, i1 %i.bq
  br i1 %.in275, label %bb.p, label %bb.q, !llvm.loop !241

bb.q:                                             ; preds = %bb.p
  %i.br = add nuw nsw i64 %.0239358, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.f
  br i1 %exitcond.not, label %.loopexit343.a, label %bb.o, !llvm.loop !242

.loopexit343.a:                                   ; preds = %bb.q, %bb.n
  %.2246 = phi ptr [ %i.ba, %bb.n ], [ %i.bm, %bb.q ] ; 3 uses
  br i1 %.not267, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit343.a
  %i.bs = getelementptr i8, ptr %.2246, i64 -1
  %switch.selectcmp = icmp eq i32 %1, 8
  %switch.select = select i1 %switch.selectcmp, i8 111, i8 98
  %switch.selectcmp415 = icmp eq i32 %1, 16
  %switch.select416 = select i1 %switch.selectcmp415, i8 120, i8 %switch.select
  store i8 %switch.select416, ptr %i.bs, align 1, !tbaa !40
  %i.bt = getelementptr i8, ptr %.2246, i64 -2    ; 2 uses
  store i8 48, ptr %i.bt, align 1, !tbaa !40
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit343.a
  %.4248 = phi ptr [ %i.bt, %bb.r ], [ %.2246, %.loopexit343.a ]
  br i1 %i.h, label %bb.t, label %bb.bn

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr i8, ptr %.4248, i64 -1
  store i8 45, ptr %i.bu, align 1, !tbaa !40
  br label %bb.bn

bb.u:                                             ; preds = %.critedge
  %i.bv = getelementptr i8, ptr %4, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !151
  br label %bb.w

bb.v:                                             ; preds = %bb.m
  %i.bx = getelementptr i8, ptr %i.at, i64 32
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = lshr i32 %i.by, 2
  %i.ca = and i32 %i.bz, 7
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0224323336 = phi ptr [ null, %bb.u ], [ %i.at, %bb.v ] ; 15 uses
  %i.cb = phi i32 [ %i.bw, %bb.u ], [ %i.ca, %bb.v ]
  switch i32 %i.cb, label %bb.az [
    i32 1, label %bb.x
    i32 2, label %bb.al
  ]

bb.x:                                             ; preds = %bb.w
  br i1 %.not268, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = load ptr, ptr %4, align 8, !tbaa !152   ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 32
  %.val.i = load i32, ptr %i.cd, align 8          ; 2 uses
  %i.ce = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.cf, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.cc, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.aa:                                            ; preds = %bb.y
  %i.cg = getelementptr i8, ptr %i.cc, i64 56
  %.val4.i = load ptr, ptr %i.cg, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.z, %bb.aa
  %.0.i = phi ptr [ %.0.i.i, %bb.z ], [ %.val4.i, %bb.aa ]
  %i.ch = getelementptr i8, ptr %4, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !146
  %i.cj = getelementptr i8, ptr %.0.i, i64 %i.ci
  br label %_PyUnicode_DATA.exit286

bb.ab:                                            ; preds = %bb.x
  %i.ck = getelementptr i8, ptr %.0224323336, i64 32
  %.val.i279 = load i32, ptr %i.ck, align 8       ; 2 uses
  %i.cl = and i32 %.val.i279, 32
  %.not.i280 = icmp eq i32 %i.cl, 0
  br i1 %.not.i280, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = and i32 %.val.i279, 64
  %.not.i.i281 = icmp eq i32 %i.cm, 0
  %.0.v.i.i282 = select i1 %.not.i.i281, i64 56, i64 40
  %.0.i.i283 = getelementptr i8, ptr %.0224323336, i64 %.0.v.i.i282
  br label %_PyUnicode_DATA.exit286

bb.ad:                                            ; preds = %bb.ab
  %i.cn = getelementptr i8, ptr %.0224323336, i64 56
  %.val4.i285 = load ptr, ptr %i.cn, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit286

_PyUnicode_DATA.exit286:                          ; preds = %bb.ad, %bb.ac, %_PyUnicode_DATA.exit
  %.pn273 = phi ptr [ %i.cj, %_PyUnicode_DATA.exit ], [ %.0.i.i283, %bb.ac ], [ %.val4.i285, %bb.ad ]
  %.0230 = getelementptr i8, ptr %.pn273, i64 %spec.select ; 2 uses
  br i1 %i.k, label %bb.ae, label %.preheader338

.preheader338:                                    ; preds = %_PyUnicode_DATA.exit286
  %i.co = getelementptr i8, ptr %0, i64 24
  %11 = trunc nuw nsw i32 %1 to i8
  %12 = add nsw i8 %11, -1
  %i.cp = zext nneg i8 %switch.load to i64
  %i.cq = add nsw i64 %i.f, -1
  br label %bb.af

bb.ae:                                            ; preds = %_PyUnicode_DATA.exit286
  %i.cr = getelementptr i8, ptr %.0230, i64 -1    ; 2 uses
  store i8 48, ptr %i.cr, align 1, !tbaa !40
  br label %.loopexit339

bb.af:                                            ; preds = %.preheader338, %bb.ah
  %.0225366 = phi i64 [ 0, %.preheader338 ], [ %i.di, %bb.ah ] ; 3 uses
  %.0226365 = phi i32 [ 0, %.preheader338 ], [ %i.de, %bb.ah ] ; 2 uses
  %.0228364 = phi i64 [ 0, %.preheader338 ], [ %i.df, %bb.ah ]
  %.1231363 = phi ptr [ %.0230, %.preheader338 ], [ %i.dd, %bb.ah ]
  %i.cs = getelementptr [4 x i8], ptr %i.co, i64 %.0225366
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !26
  %i.cu = zext i32 %i.ct to i64
  %i.cv = zext nneg i32 %.0226365 to i64
  %i.cw = shl i64 %i.cu, %i.cv
  %i.cx = or i64 %i.cw, %.0228364
  %i.cy = add i32 %.0226365, 30
  %i.cz = icmp slt i64 %.0225366, %i.cq
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.2232 = phi ptr [ %.1231363, %bb.af ], [ %i.dd, %bb.ag ]
  %.1229 = phi i64 [ %i.cx, %bb.af ], [ %i.df, %bb.ag ] ; 2 uses
  %.1227 = phi i32 [ %i.cy, %bb.af ], [ %i.de, %bb.ag ]
  %13 = trunc i64 %.1229 to i8
  %14 = and i8 %12, %13                           ; 2 uses
  %i.da = icmp slt i8 %14, 10
  %i.db = select i1 %i.da, i8 48, i8 87
  %i.dc = add i8 %i.db, %14
  %i.dd = getelementptr i8, ptr %.2232, i64 -1    ; 4 uses
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !40
  %i.de = sub i32 %.1227, %switch.ext             ; 3 uses
  %i.df = lshr i64 %.1229, %i.cp                  ; 3 uses
  %i.dg = icmp sge i32 %i.de, %switch.ext
  %i.dh = icmp ne i64 %i.df, 0
  %.in274.a = select i1 %i.cz, i1 %i.dg, i1 %i.dh
  br i1 %.in274.a, label %bb.ag, label %bb.ah, !llvm.loop !243

bb.ah:                                            ; preds = %bb.ag
  %i.di = add nuw nsw i64 %.0225366, 1            ; 2 uses
  %exitcond383.not = icmp eq i64 %i.di, %i.f
  br i1 %exitcond383.not, label %.loopexit339, label %bb.af, !llvm.loop !244

.loopexit339:                                     ; preds = %bb.ah, %bb.ae
  %.3233 = phi ptr [ %i.cr, %bb.ae ], [ %i.dd, %bb.ah ] ; 3 uses
  br i1 %.not267, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.loopexit339
  %i.dj = getelementptr i8, ptr %.3233, i64 -1
  %switch.selectcmp417 = icmp eq i32 %1, 8
  %switch.select418 = select i1 %switch.selectcmp417, i8 111, i8 98
  %switch.selectcmp419 = icmp eq i32 %1, 16
  %switch.select420 = select i1 %switch.selectcmp419, i8 120, i8 %switch.select418
  store i8 %switch.select420, ptr %i.dj, align 1, !tbaa !40
  %i.dk = getelementptr i8, ptr %.3233, i64 -2    ; 2 uses
  store i8 48, ptr %i.dk, align 1, !tbaa !40
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit339
  %.5235 = phi ptr [ %i.dk, %bb.ai ], [ %.3233, %.loopexit339 ]
  br i1 %i.h, label %bb.ak, label %bb.bn

bb.ak:                                            ; preds = %bb.aj
  %i.dl = getelementptr i8, ptr %.5235, i64 -1
  store i8 45, ptr %i.dl, align 1, !tbaa !40
  br label %bb.bn

bb.al:                                            ; preds = %bb.w
  br i1 %.not268, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dm = load ptr, ptr %4, align 8, !tbaa !152   ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 32
  %.val.i287 = load i32, ptr %i.dn, align 8       ; 2 uses
  %i.do = and i32 %.val.i287, 32
  %.not.i288 = icmp eq i32 %i.do, 0
  br i1 %.not.i288, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dp = and i32 %.val.i287, 64
  %.not.i.i289 = icmp eq i32 %i.dp, 0
  %.0.v.i.i290 = select i1 %.not.i.i289, i64 56, i64 40
  %.0.i.i291 = getelementptr i8, ptr %i.dm, i64 %.0.v.i.i290
  br label %_PyUnicode_DATA.exit294

bb.ao:                                            ; preds = %bb.am
  %i.dq = getelementptr i8, ptr %i.dm, i64 56
  %.val4.i293 = load ptr, ptr %i.dq, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit294

_PyUnicode_DATA.exit294:                          ; preds = %bb.an, %bb.ao
  %.0.i292 = phi ptr [ %.0.i.i291, %bb.an ], [ %.val4.i293, %bb.ao ]
  %i.dr = getelementptr i8, ptr %4, i64 32
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !146
  %i.dt = getelementptr [2 x i8], ptr %.0.i292, i64 %i.ds
  br label %_PyUnicode_DATA.exit302

bb.ap:                                            ; preds = %bb.al
  %i.du = getelementptr i8, ptr %.0224323336, i64 32
  %.val.i295 = load i32, ptr %i.du, align 8       ; 2 uses
  %i.dv = and i32 %.val.i295, 32
  %.not.i296 = icmp eq i32 %i.dv, 0
  br i1 %.not.i296, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dw = and i32 %.val.i295, 64
  %.not.i.i297 = icmp eq i32 %i.dw, 0
  %.0.v.i.i298 = select i1 %.not.i.i297, i64 56, i64 40
  %.0.i.i299 = getelementptr i8, ptr %.0224323336, i64 %.0.v.i.i298
  br label %_PyUnicode_DATA.exit302

bb.ar:                                            ; preds = %bb.ap
  %i.dx = getelementptr i8, ptr %.0224323336, i64 56
  %.val4.i301 = load ptr, ptr %i.dx, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit302

_PyUnicode_DATA.exit302:                          ; preds = %bb.ar, %bb.aq, %_PyUnicode_DATA.exit294
  %.pn271 = phi ptr [ %i.dt, %_PyUnicode_DATA.exit294 ], [ %.0.i.i299, %bb.aq ], [ %.val4.i301, %bb.ar ]
  %.0218 = getelementptr [2 x i8], ptr %.pn271, i64 %spec.select ; 2 uses
  br i1 %i.k, label %bb.as, label %.preheader340

.preheader340:                                    ; preds = %_PyUnicode_DATA.exit302
  %i.dy = getelementptr i8, ptr %0, i64 24
  %i.dz = add nuw nsw i32 %1, 255
  %i.ea = zext nneg i8 %switch.load to i64
  %i.eb = add nsw i64 %i.f, -1
  br label %bb.at

bb.as:                                            ; preds = %_PyUnicode_DATA.exit302
  %i.ec = getelementptr i8, ptr %.0218, i64 -2    ; 2 uses
  store i16 48, ptr %i.ec, align 2, !tbaa !148
  br label %.loopexit341

bb.at:                                            ; preds = %.preheader340, %bb.av
  %.0213362 = phi i64 [ 0, %.preheader340 ], [ %i.es, %bb.av ] ; 3 uses
  %.0214361 = phi i32 [ 0, %.preheader340 ], [ %i.eo, %bb.av ] ; 2 uses
  %.0216360 = phi i64 [ 0, %.preheader340 ], [ %i.ep, %bb.av ]
  %.1219359 = phi ptr [ %.0218, %.preheader340 ], [ %i.en, %bb.av ]
  %i.ed = getelementptr [4 x i8], ptr %i.dy, i64 %.0213362
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !26
  %i.ef = zext i32 %i.ee to i64
  %i.eg = zext nneg i32 %.0214361 to i64
  %i.eh = shl i64 %i.ef, %i.eg
  %i.ei = or i64 %i.eh, %.0216360
  %i.ej = add i32 %.0214361, 30
  %i.ek = icmp slt i64 %.0213362, %i.eb
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.2220 = phi ptr [ %.1219359, %bb.at ], [ %i.en, %bb.au ]
  %.1217 = phi i64 [ %i.ei, %bb.at ], [ %i.ep, %bb.au ] ; 2 uses
  %.1215 = phi i32 [ %i.ej, %bb.at ], [ %i.eo, %bb.au ]
  %15 = trunc i64 %.1217 to i32
  %16 = and i32 %i.dz, %15                        ; 2 uses
  %i.el = trunc i32 %16 to i8
  %i.em = icmp slt i8 %i.el, 10
  %17 = select i1 %i.em, i16 48, i16 87
  %18 = trunc i32 %16 to i16
  %19 = add i16 %17, %18
  %sext273 = shl i16 %19, 8
  %20 = ashr exact i16 %sext273, 8
  %i.en = getelementptr i8, ptr %.2220, i64 -2    ; 4 uses
  store i16 %20, ptr %i.en, align 2, !tbaa !148
  %i.eo = sub i32 %.1215, %switch.ext             ; 3 uses
  %i.ep = lshr i64 %.1217, %i.ea                  ; 3 uses
  %i.eq = icmp sge i32 %i.eo, %switch.ext
  %i.er = icmp ne i64 %i.ep, 0
  %.in272 = select i1 %i.ek, i1 %i.eq, i1 %i.er
  br i1 %.in272, label %bb.au, label %bb.av, !llvm.loop !245

bb.av:                                            ; preds = %bb.au
  %i.es = add nuw nsw i64 %.0213362, 1            ; 2 uses
  %exitcond382.not = icmp eq i64 %i.es, %i.f
  br i1 %exitcond382.not, label %.loopexit341, label %bb.at, !llvm.loop !246

.loopexit341:                                     ; preds = %bb.av, %bb.as
  %.3221 = phi ptr [ %i.ec, %bb.as ], [ %i.en, %bb.av ] ; 3 uses
  br i1 %.not267, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.loopexit341
  %i.et = getelementptr i8, ptr %.3221, i64 -2
  %switch.selectcmp421 = icmp eq i32 %1, 8
  %switch.select422 = select i1 %switch.selectcmp421, i16 111, i16 98
  %switch.selectcmp423 = icmp eq i32 %1, 16
  %switch.select424 = select i1 %switch.selectcmp423, i16 120, i16 %switch.select422
  store i16 %switch.select424, ptr %i.et, align 2, !tbaa !148
  %i.eu = getelementptr i8, ptr %.3221, i64 -4    ; 2 uses
  store i16 48, ptr %i.eu, align 2, !tbaa !148
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.loopexit341
  %.5223 = phi ptr [ %i.eu, %bb.aw ], [ %.3221, %.loopexit341 ]
  br i1 %i.h, label %bb.ay, label %bb.bn

bb.ay:                                            ; preds = %bb.ax
  %i.ev = getelementptr i8, ptr %.5223, i64 -2
  store i16 45, ptr %i.ev, align 2, !tbaa !148
  br label %bb.bn

bb.az:                                            ; preds = %bb.w
  br i1 %.not268, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ew = load ptr, ptr %4, align 8, !tbaa !152   ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 32
  %.val.i303 = load i32, ptr %i.ex, align 8       ; 2 uses
  %i.ey = and i32 %.val.i303, 32
  %.not.i304 = icmp eq i32 %i.ey, 0
  br i1 %.not.i304, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ez = and i32 %.val.i303, 64
  %.not.i.i305 = icmp eq i32 %i.ez, 0
  %.0.v.i.i306 = select i1 %.not.i.i305, i64 56, i64 40
  %.0.i.i307 = getelementptr i8, ptr %i.ew, i64 %.0.v.i.i306
  br label %_PyUnicode_DATA.exit310

bb.bc:                                            ; preds = %bb.ba
  %i.fa = getelementptr i8, ptr %i.ew, i64 56
  %.val4.i309 = load ptr, ptr %i.fa, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit310

_PyUnicode_DATA.exit310:                          ; preds = %bb.bb, %bb.bc
  %.0.i308 = phi ptr [ %.0.i.i307, %bb.bb ], [ %.val4.i309, %bb.bc ]
  %i.fb = getelementptr i8, ptr %4, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !146
  %i.fd = getelementptr [4 x i8], ptr %.0.i308, i64 %i.fc
  br label %_PyUnicode_DATA.exit318

bb.bd:                                            ; preds = %bb.az
  %i.fe = getelementptr i8, ptr %.0224323336, i64 32
  %.val.i311 = load i32, ptr %i.fe, align 8       ; 2 uses
  %i.ff = and i32 %.val.i311, 32
  %.not.i312 = icmp eq i32 %i.ff, 0
  br i1 %.not.i312, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fg = and i32 %.val.i311, 64
  %.not.i.i313 = icmp eq i32 %i.fg, 0
  %.0.v.i.i314 = select i1 %.not.i.i313, i64 56, i64 40
  %.0.i.i315 = getelementptr i8, ptr %.0224323336, i64 %.0.v.i.i314
  br label %_PyUnicode_DATA.exit318

bb.bf:                                            ; preds = %bb.bd
  %i.fh = getelementptr i8, ptr %.0224323336, i64 56
  %.val4.i317 = load ptr, ptr %i.fh, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit318

_PyUnicode_DATA.exit318:                          ; preds = %bb.bf, %bb.be, %_PyUnicode_DATA.exit310
  %.pn = phi ptr [ %i.fd, %_PyUnicode_DATA.exit310 ], [ %.0.i.i315, %bb.be ], [ %.val4.i317, %bb.bf ]
  %.0211 = getelementptr [4 x i8], ptr %.pn, i64 %spec.select ; 2 uses
  br i1 %i.k, label %bb.bg, label %.preheader

.preheader:                                       ; preds = %_PyUnicode_DATA.exit318
  %i.fi = getelementptr i8, ptr %0, i64 24
  %i.fj = add nuw nsw i32 %1, 255
  %i.fk = zext nneg i8 %switch.load to i64
  %i.fl = add nsw i64 %i.f, -1
  br label %bb.bh

bb.bg:                                            ; preds = %_PyUnicode_DATA.exit318
  %i.fm = getelementptr i8, ptr %.0211, i64 -4    ; 2 uses
  store i32 48, ptr %i.fm, align 4, !tbaa !26
  br label %.loopexit

bb.bh:                                            ; preds = %.preheader, %bb.bj
  %.0206370 = phi i64 [ 0, %.preheader ], [ %i.gc, %bb.bj ] ; 3 uses
  %.0207369 = phi i32 [ 0, %.preheader ], [ %i.fy, %bb.bj ] ; 2 uses
  %.0209368 = phi i64 [ 0, %.preheader ], [ %i.fz, %bb.bj ]
  %.1212367 = phi ptr [ %.0211, %.preheader ], [ %i.fx, %bb.bj ]
  %i.fn = getelementptr [4 x i8], ptr %i.fi, i64 %.0206370
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !26
  %i.fp = zext i32 %i.fo to i64
  %i.fq = zext nneg i32 %.0207369 to i64
  %i.fr = shl i64 %i.fp, %i.fq
  %i.fs = or i64 %i.fr, %.0209368
  %i.ft = add i32 %.0207369, 30
  %i.fu = icmp slt i64 %.0206370, %i.fl
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %bb.bh
  %.2 = phi ptr [ %.1212367, %bb.bh ], [ %i.fx, %bb.bi ]
  %.1210 = phi i64 [ %i.fs, %bb.bh ], [ %i.fz, %bb.bi ] ; 2 uses
  %.1208 = phi i32 [ %i.ft, %bb.bh ], [ %i.fy, %bb.bi ]
  %21 = trunc i64 %.1210 to i32
  %22 = and i32 %i.fj, %21                        ; 2 uses
  %i.fv = trunc i32 %22 to i8
  %i.fw = icmp slt i8 %i.fv, 10
  %23 = select i1 %i.fw, i32 48, i32 87
  %24 = add i32 %23, %22
  %sext = shl i32 %24, 24
  %25 = ashr exact i32 %sext, 24
  %i.fx = getelementptr i8, ptr %.2, i64 -4       ; 4 uses
  store i32 %25, ptr %i.fx, align 4, !tbaa !26
  %i.fy = sub i32 %.1208, %switch.ext             ; 3 uses
  %i.fz = lshr i64 %.1210, %i.fk                  ; 3 uses
  %i.ga = icmp sge i32 %i.fy, %switch.ext
  %i.gb = icmp ne i64 %i.fz, 0
  %.in = select i1 %i.fu, i1 %i.ga, i1 %i.gb
  br i1 %.in, label %bb.bi, label %bb.bj, !llvm.loop !247

bb.bj:                                            ; preds = %bb.bi
  %i.gc = add nuw nsw i64 %.0206370, 1            ; 2 uses
  %exitcond384.not = icmp eq i64 %i.gc, %i.f
  br i1 %exitcond384.not, label %.loopexit, label %bb.bh, !llvm.loop !248

.loopexit:                                        ; preds = %bb.bj, %bb.bg
  %.3 = phi ptr [ %i.fm, %bb.bg ], [ %i.fx, %bb.bj ] ; 3 uses
  br i1 %.not267, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.loopexit
  %i.gd = getelementptr i8, ptr %.3, i64 -4
  %switch.selectcmp425 = icmp eq i32 %1, 8
  %switch.select426 = select i1 %switch.selectcmp425, i32 111, i32 98
  %switch.selectcmp427 = icmp eq i32 %1, 16
  %switch.select428 = select i1 %switch.selectcmp427, i32 120, i32 %switch.select426
  store i32 %switch.select428, ptr %i.gd, align 4, !tbaa !26
  %i.ge = getelementptr i8, ptr %.3, i64 -8       ; 2 uses
  store i32 48, ptr %i.ge, align 4, !tbaa !26
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.loopexit
  %.5 = phi ptr [ %i.ge, %bb.bk ], [ %.3, %.loopexit ]
  br i1 %i.h, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.gf = getelementptr i8, ptr %.5, i64 -4
  store i32 45, ptr %i.gf, align 4, !tbaa !26
  br label %bb.bn

bb.bn:                                            ; preds = %bb.aj, %bb.ak, %bb.ax, %bb.ay, %bb.bl, %bb.bm, %bb.s, %bb.t
  %.not270324 = phi i1 [ true, %bb.aj ], [ true, %bb.ak ], [ true, %bb.ax ], [ true, %bb.ay ], [ true, %bb.bl ], [ true, %bb.bm ], [ false, %bb.s ], [ false, %bb.t ]
  %.0224322 = phi ptr [ %.0224323336, %bb.aj ], [ %.0224323336, %bb.ak ], [ %.0224323336, %bb.ax ], [ %.0224323336, %bb.ay ], [ %.0224323336, %bb.bl ], [ %.0224323336, %bb.bm ], [ null, %bb.s ], [ null, %bb.t ]
  br i1 %.not268, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gg = getelementptr i8, ptr %4, i64 32        ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !146
  %i.gi = add i64 %i.gh, %spec.select
  store i64 %i.gi, ptr %i.gg, align 8, !tbaa !146
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bn
  br i1 %.not270324, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gj = load ptr, ptr %6, align 8, !tbaa !147
  %i.gk = getelementptr i8, ptr %i.gj, i64 %spec.select
  store ptr %i.gk, ptr %6, align 8, !tbaa !147
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  store ptr %.0224322, ptr %3, align 8, !tbaa !29
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
  store ptr %1, ptr %i.a, align 8, !tbaa !147
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
  store ptr null, ptr %i.a, align 8, !tbaa !154
  %i.b = icmp ne i32 %2, 0
  %i.c = icmp slt i32 %2, 2
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp sgt i32 %2, 36
  %or.cond3 = or i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !40      ; 2 uses
  %.not153 = icmp eq i8 %i.e, 0
  br i1 %.not153, label %.critedge.thread, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.25) #16
  br label %Py_DECREF.exit

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.g = phi i8 [ %i.m, %bb.c ], [ %i.e, %.preheader ] ; 2 uses
  %.0154 = phi ptr [ %i.l, %bb.c ], [ %0, %.preheader ] ; 4 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !26
  %i.k = and i32 %i.j, 8
  %.not42 = icmp eq i32 %i.k, 0
  br i1 %.not42, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.0154, i64 1      ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !40    ; 2 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !249

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

.critedge.thread:                                 ; preds = %bb.c, %.preheader, %.critedge, %bb.e, %bb.d
  %.161 = phi ptr [ %.0154, %.critedge ], [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %0, %.preheader ], [ %i.l, %bb.c ] ; 14 uses
  %i.p = phi i1 [ false, %.critedge ], [ false, %bb.d ], [ true, %bb.e ], [ false, %.preheader ], [ false, %bb.c ]
  %i.q = icmp eq i32 %2, 0
  %i.r = load i8, ptr %.161, align 1, !tbaa !40   ; 3 uses
  %.not43 = icmp eq i8 %i.r, 48                   ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.critedge.thread
  br i1 %.not43, label %bb.g, label %.thread68

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %.161, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !40    ; 7 uses
  switch i8 %i.t, label %.thread88 [
    i8 120, label %.thread71
    i8 88, label %.thread71
    i8 111, label %.thread119
    i8 79, label %.thread119
    i8 98, label %.thread129
    i8 66, label %.thread129
  ]

bb.h:                                             ; preds = %.critedge.thread
  br i1 %.not43, label %bb.i, label %.thread68

bb.i:                                             ; preds = %bb.h
  switch i32 %2, label %.thread88 [
    i32 16, label %..thread71_crit_edge
    i32 8, label %..thread119_crit_edge
    i32 2, label %..thread129_crit_edge
  ]

..thread71_crit_edge:                             ; preds = %bb.i
  %.phi.trans.insert167 = getelementptr i8, ptr %.161, i64 1
  %.pre168 = load i8, ptr %.phi.trans.insert167, align 1, !tbaa !40
end_hunk_0
