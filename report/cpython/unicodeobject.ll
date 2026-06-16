inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@PyUnicode_AsRawUnicodeEscapeString:bb.a
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.n = tail call ptr @Py_GetConstant(i32 noundef 8) #33
  br label %bb.t

bb.g:                                             ; preds = %_PyUnicode_DATA.exit
  %i.o = icmp eq i32 %i.h, 1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %.0.i, i64 noundef %.val62) #33
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i32 %i.h, 1
  %i.r = add nuw nsw i32 %i.q, 2
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = udiv i64 9223372036854775807, %i.s
  %i.u = icmp sgt i64 %.val62, %i.t
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @PyErr_NoMemory() #33
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.w = mul i64 %.val62, %i.s
  %i.x = tail call ptr @PyBytesWriter_Create(i64 noundef %i.w) #33 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.x) #33 ; 2 uses
  %i.aa = icmp sgt i64 %.val62, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.l
  %.054.lcssa = phi ptr [ %i.z, %bb.l ], [ %.155, %bb.s ]
  %i.ab = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.x, ptr noundef %.054.lcssa) #33
  br label %bb.t

.lr.ph:                                           ; preds = %bb.l, %bb.s
  %.05367 = phi i64 [ %i.dh, %bb.s ], [ 0, %bb.l ] ; 4 uses
  %.05466 = phi ptr [ %.155, %bb.s ], [ %i.z, %bb.l ] ; 17 uses
  switch i32 %i.h, label %bb.n [
    i32 1, label %PyUnicode_READ.exit.thread
    i32 2, label %bb.m
  ]

PyUnicode_READ.exit.thread:                       ; preds = %.lr.ph
  %i.ac = getelementptr i8, ptr %.0.i, i64 %.05367
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !205
  %i.ae = zext i8 %i.ad to i32
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph
  %i.af = getelementptr [2 x i8], ptr %.0.i, i64 %.05367
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !208
  %i.ah = zext i16 %i.ag to i32
  br label %PyUnicode_READ.exit

bb.n:                                             ; preds = %.lr.ph
  %i.ai = getelementptr [4 x i8], ptr %.0.i, i64 %.05367
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.m, %bb.n
  %.0.i63 = phi i32 [ %i.aj, %bb.n ], [ %i.ah, %bb.m ] ; 13 uses
  %i.ak = icmp ult i32 %.0.i63, 256
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %PyUnicode_READ.exit.thread, %PyUnicode_READ.exit
  %.0.i6365 = phi i32 [ %i.ae, %PyUnicode_READ.exit.thread ], [ %.0.i63, %PyUnicode_READ.exit ]
  %i.al = trunc nuw i32 %.0.i6365 to i8
  %i.am = getelementptr i8, ptr %.05466, i64 1
  store i8 %i.al, ptr %.05466, align 1, !tbaa !205
  br label %bb.s

bb.p:                                             ; preds = %PyUnicode_READ.exit
  %i.an = icmp ult i32 %.0.i63, 65536
  %i.ao = getelementptr i8, ptr %.05466, i64 1    ; 2 uses
  store i8 92, ptr %.05466, align 1, !tbaa !205
  %i.ap = getelementptr i8, ptr %.05466, i64 2    ; 2 uses
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 117, ptr %i.ao, align 1, !tbaa !205
  %i.aq = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.ar = lshr i32 %.0.i63, 12
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %i.aq, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !205
  %i.av = getelementptr i8, ptr %.05466, i64 3
  store i8 %i.au, ptr %i.ap, align 1, !tbaa !205
  %i.aw = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.ax = lshr i32 %.0.i63, 8
  %i.ay = and i32 %i.ax, 15
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %i.aw, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !205
  %i.bc = getelementptr i8, ptr %.05466, i64 4
  store i8 %i.bb, ptr %i.av, align 1, !tbaa !205
  %i.bd = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.be = lshr i32 %.0.i63, 4
  %i.bf = and i32 %i.be, 15
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr %i.bd, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !205
  %i.bj = getelementptr i8, ptr %.05466, i64 5
  store i8 %i.bi, ptr %i.bc, align 1, !tbaa !205
  %i.bk = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.bl = and i32 %.0.i63, 15
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %i.bk, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !205
  %i.bp = getelementptr i8, ptr %.05466, i64 6
  store i8 %i.bo, ptr %i.bj, align 1, !tbaa !205
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store i8 85, ptr %i.ao, align 1, !tbaa !205
  %i.bq = getelementptr i8, ptr %.05466, i64 3
  store i8 48, ptr %i.ap, align 1, !tbaa !205
  %i.br = getelementptr i8, ptr %.05466, i64 4
  store i8 48, ptr %i.bq, align 1, !tbaa !205
  %i.bs = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.bt = lshr i32 %.0.i63, 20
  %i.bu = and i32 %i.bt, 15
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.bs, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !205
  %i.by = getelementptr i8, ptr %.05466, i64 5
  store i8 %i.bx, ptr %i.br, align 1, !tbaa !205
  %i.bz = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.ca = lshr i32 %.0.i63, 16
  %i.cb = and i32 %i.ca, 15
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr %i.bz, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !205
  %i.cf = getelementptr i8, ptr %.05466, i64 6
  store i8 %i.ce, ptr %i.by, align 1, !tbaa !205
  %i.cg = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.ch = lshr i32 %.0.i63, 12
  %i.ci = and i32 %i.ch, 15
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr i8, ptr %i.cg, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !205
  %i.cm = getelementptr i8, ptr %.05466, i64 7
  store i8 %i.cl, ptr %i.cf, align 1, !tbaa !205
  %i.cn = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.co = lshr i32 %.0.i63, 8
  %i.cp = and i32 %i.co, 15
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr i8, ptr %i.cn, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !205
  %i.ct = getelementptr i8, ptr %.05466, i64 8
  store i8 %i.cs, ptr %i.cm, align 1, !tbaa !205
  %i.cu = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.cv = lshr i32 %.0.i63, 4
  %i.cw = and i32 %i.cv, 15
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %i.cu, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !205
  %i.da = getelementptr i8, ptr %.05466, i64 9
  store i8 %i.cz, ptr %i.ct, align 1, !tbaa !205
  %i.db = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.dc = and i32 %.0.i63, 15
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr i8, ptr %i.db, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !205
  %i.dg = getelementptr i8, ptr %.05466, i64 10
  store i8 %i.df, ptr %i.da, align 1, !tbaa !205
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %.155 = phi ptr [ %i.am, %bb.o ], [ %i.bp, %bb.q ], [ %i.dg, %bb.r ] ; 2 uses
  %i.dh = add nuw nsw i64 %.05367, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %.val62
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !512

bb.t:                                             ; preds = %bb.f, %bb.h, %._crit_edge, %bb.k, %bb.j, %bb.b
  %.3 = phi ptr [ null, %bb.b ], [ %i.n, %bb.f ], [ %i.p, %bb.h ], [ %i.v, %bb.j ], [ %i.ab, %._crit_edge ], [ null, %bb.k ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unicode_encode_ucs1(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 128, 257) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %i.d = icmp eq i32 %2, 256                      ; 3 uses
  %i.e = select i1 %i.d, ptr @.str.181, ptr @.str.44 ; 3 uses
  %i.f = select i1 %i.d, ptr @.str.182, ptr @.str.97 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr null, ptr %i.a, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr null, ptr %i.b, align 8, !tbaa !194
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val190 = load i64, ptr %i.g, align 8, !tbaa !207 ; 10 uses
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = lshr i32 %i.i, 2
  %i.k = and i32 %i.j, 7                          ; 3 uses
  %i.l = and i32 %i.i, 32
  %.not.i192 = icmp eq i32 %i.l, 0
  br i1 %.not.i192, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %i.i, 64
  %.not.i.i = icmp eq i32 %i.m, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.n, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 9 uses
  %i.o = icmp eq i64 %.val190, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.p = tail call ptr @Py_GetConstant(i32 noundef 8) #33
  br label %Py_XDECREF.exit222

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.q = tail call ptr @PyBytesWriter_Create(i64 noundef %.val190) #33 ; 10 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %Py_XDECREF.exit222, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.q) #33 ; 2 uses
  %i.t = getelementptr i8, ptr %i.q, i64 276      ; 3 uses
  %i.u = getelementptr i8, ptr %i.q, i64 264      ; 6 uses
  %i.v = trunc nuw nsw i32 %2 to i16
  %i.w = icmp sgt i64 %.val190, 0
  br i1 %i.w, label %.lr.ph362, label %.outer._crit_edge

.lr.ph362:                                        ; preds = %bb.f, %raise_encode_exception.exit
  %.0124.ph393 = phi i64 [ %.4, %raise_encode_exception.exit ], [ 0, %bb.f ]
  %.0132.ph392 = phi ptr [ %.6138, %raise_encode_exception.exit ], [ %i.s, %bb.f ]
  %.0140.ph391 = phi i32 [ %.1141, %raise_encode_exception.exit ], [ 0, %bb.f ] ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph362, %bb.al
  %.0124361 = phi i64 [ %.0124.ph393, %.lr.ph362 ], [ %3, %bb.al ] ; 15 uses
  %.0132360 = phi ptr [ %.0132.ph392, %.lr.ph362 ], [ %i.cy, %bb.al ] ; 10 uses
  switch i32 %i.k, label %bb.j [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %.0.i, i64 %.0124361
  %i.y = load i8, ptr %i.x, align 1, !tbaa !205
  %i.z = zext i8 %i.y to i32
  br label %PyUnicode_READ.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr [2 x i8], ptr %.0.i, i64 %.0124361
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !208
  %i.ac = zext i16 %i.ab to i32
  br label %PyUnicode_READ.exit

bb.j:                                             ; preds = %bb.g
  %i.ad = getelementptr [4 x i8], ptr %.0.i, i64 %.0124361
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.h, %bb.i, %bb.j
  %.0.i193 = phi i32 [ %i.z, %bb.h ], [ %i.ac, %bb.i ], [ %i.ae, %bb.j ] ; 2 uses
  %i.af = icmp ult i32 %.0.i193, %2
  %3 = add nsw i64 %.0124361, 1                   ; 5 uses
  %4 = icmp slt i64 %3, %.val190                  ; 4 uses
  br i1 %i.af, label %bb.al, label %bb.k

bb.k:                                             ; preds = %PyUnicode_READ.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.ag = add nsw i64 %.0124361, 1
  %smax264 = call i64 @llvm.smax.i64(i64 %.val190, i64 %i.ag) ; 6 uses
  switch i32 %i.k, label %.split.preheader [
    i32 1, label %.split.us.preheader
    i32 2, label %.split.us236.preheader
  ]

.split.us236.preheader:                           ; preds = %bb.k
  br i1 %4, label %PyUnicode_READ.exit195.us239, label %.critedge

.split.us.preheader:                              ; preds = %bb.k
  br i1 %4, label %PyUnicode_READ.exit195.us, label %.critedge

.split.preheader:                                 ; preds = %bb.k
  br i1 %4, label %PyUnicode_READ.exit195, label %.critedge

.split.us:                                        ; preds = %PyUnicode_READ.exit195.us
  %.0129.us = add nsw i64 %.0129.in.us374, 1      ; 2 uses
  %i.ah = icmp slt i64 %.0129.us, %.val190
  br i1 %i.ah, label %PyUnicode_READ.exit195.us, label %.critedge, !llvm.loop !513

PyUnicode_READ.exit195.us:                        ; preds = %.split.us.preheader, %.split.us
  %.0129.in.us374 = phi i64 [ %.0129.us, %.split.us ], [ %3, %.split.us.preheader ] ; 3 uses
  %i.ai = getelementptr i8, ptr %.0.i, i64 %.0129.in.us374
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !205
  %i.ak = zext i8 %i.aj to i32
  %.not.us = icmp samesign ugt i32 %2, %i.ak
  br i1 %.not.us, label %PyUnicode_READ.exit195.us..critedge.loopexit335_crit_edge, label %.split.us, !llvm.loop !513

.split.us236:                                     ; preds = %PyUnicode_READ.exit195.us239
  %.0129.us238 = add nsw i64 %.0129.in.us237365, 1 ; 2 uses
  %i.al = icmp slt i64 %.0129.us238, %.val190
  br i1 %i.al, label %PyUnicode_READ.exit195.us239, label %.critedge, !llvm.loop !513

PyUnicode_READ.exit195.us239:                     ; preds = %.split.us236.preheader, %.split.us236
  %.0129.in.us237365 = phi i64 [ %.0129.us238, %.split.us236 ], [ %3, %.split.us236.preheader ] ; 3 uses
  %i.am = getelementptr [2 x i8], ptr %.0.i, i64 %.0129.in.us237365
  %i.an = load i16, ptr %i.am, align 2, !tbaa !208
  %.not.us241 = icmp ult i16 %i.an, %i.v
  br i1 %.not.us241, label %PyUnicode_READ.exit195.us239..critedge.loopexit339_crit_edge, label %.split.us236, !llvm.loop !513

.split:                                           ; preds = %PyUnicode_READ.exit195
  %.0129 = add nsw i64 %.0129.in383, 1            ; 2 uses
  %i.ao = icmp slt i64 %.0129, %.val190
  br i1 %i.ao, label %PyUnicode_READ.exit195, label %.critedge, !llvm.loop !513

PyUnicode_READ.exit195:                           ; preds = %.split.preheader, %.split
  %.0129.in383 = phi i64 [ %.0129, %.split ], [ %3, %.split.preheader ] ; 3 uses
  %i.ap = getelementptr [4 x i8], ptr %.0.i, i64 %.0129.in383
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %.not = icmp ult i32 %i.aq, %2
  br i1 %.not, label %PyUnicode_READ.exit195..critedge.loopexit_crit_edge, label %.split, !llvm.loop !513

PyUnicode_READ.exit195..critedge.loopexit_crit_edge: ; preds = %PyUnicode_READ.exit195
  br label %.critedge, !llvm.loop !513

PyUnicode_READ.exit195.us..critedge.loopexit335_crit_edge: ; preds = %PyUnicode_READ.exit195.us
  br label %.critedge, !llvm.loop !513

PyUnicode_READ.exit195.us239..critedge.loopexit339_crit_edge: ; preds = %PyUnicode_READ.exit195.us239
  br label %.critedge, !llvm.loop !513

.critedge:                                        ; preds = %.split.us236, %.split.us, %.split, %.split.us236.preheader, %PyUnicode_READ.exit195.us239..critedge.loopexit339_crit_edge, %.split.us.preheader, %PyUnicode_READ.exit195.us..critedge.loopexit335_crit_edge, %.split.preheader, %PyUnicode_READ.exit195..critedge.loopexit_crit_edge
  %.us-phi233.a = phi i64 [ %smax264, %.split ], [ %smax264, %.split.us ], [ %.0129.in383, %PyUnicode_READ.exit195..critedge.loopexit_crit_edge ], [ %smax264, %.split.preheader ], [ %.0129.in.us374, %PyUnicode_READ.exit195.us..critedge.loopexit335_crit_edge ], [ %smax264, %.split.us.preheader ], [ %smax264, %.split.us236.preheader ], [ %.0129.in.us237365, %PyUnicode_READ.exit195.us239..critedge.loopexit339_crit_edge ], [ %smax264, %.split.us236 ] ; 15 uses
  %.us-phi235 = phi i32 [ 0, %.split ], [ 0, %.split.us ], [ 1, %PyUnicode_READ.exit195..critedge.loopexit_crit_edge ], [ 0, %.split.preheader ], [ 1, %PyUnicode_READ.exit195.us..critedge.loopexit335_crit_edge ], [ 0, %.split.us.preheader ], [ 0, %.split.us236.preheader ], [ 1, %PyUnicode_READ.exit195.us239..critedge.loopexit339_crit_edge ], [ 0, %.split.us236 ]
  store i32 %.us-phi235, ptr %i.t, align 4, !tbaa !514
  %i.ar = icmp eq i32 %.0140.ph391, 0
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.as = call i32 @_Py_GetErrorHandler(ptr noundef %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %.1141 = phi i32 [ %i.as, %bb.l ], [ %.0140.ph391, %.critedge ] ; 2 uses
  switch i32 %.1141, label %.loopexit.a [
    i32 1, label %bb.n
    i32 3, label %bb.p
    i32 4, label %raise_encode_exception.exit
    i32 5, label %bb.q
    i32 7, label %bb.r
    i32 2, label %.preheader
  ]

.preheader:                                       ; preds = %bb.m
  %5 = icmp slt i64 %.0124361, %.us-phi233.a
  br i1 %5, label %.lr.ph, label %raise_encode_exception.exit

bb.n:                                             ; preds = %bb.m
  call fastcc void @make_encode_exception(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef %0, i64 noundef %.0124361, i64 noundef %.us-phi233.a, ptr noundef nonnull %i.f)
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %.not.i196 = icmp eq ptr %i.at, null
  br i1 %.not.i196, label %.loopexit311, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = call ptr @PyCodec_StrictErrors(ptr noundef nonnull %i.at) #33 ; 0 uses
  br label %.loopexit311

bb.p:                                             ; preds = %bb.m
  %i.av = sub i64 %.us-phi233.a, %.0124361        ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.0132360, i8 63, i64 %i.av, i1 false)
  %i.aw = getelementptr i8, ptr %.0132360, i64 %i.av
  br label %raise_encode_exception.exit

bb.q:                                             ; preds = %bb.m
  %.neg181.a = sub i64 %.0124361, %.us-phi233.a
  %i.ax = load i64, ptr %i.u, align 8, !tbaa !516
  %i.ay = add i64 %.neg181.a, %i.ax
  store i64 %i.ay, ptr %i.u, align 8, !tbaa !516
  %i.az = call fastcc ptr @backslashreplace(ptr noundef %i.q, ptr noundef %.0132360, ptr noundef %0, i64 noundef %.0124361, i64 noundef %.us-phi233.a) ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.loopexit311, label %raise_encode_exception.exit

bb.r:                                             ; preds = %bb.m
  %.neg = sub i64 %.0124361, %.us-phi233.a
  %i.bb = load i64, ptr %i.u, align 8, !tbaa !516
  %i.bc = add i64 %.neg, %i.bb
  store i64 %i.bc, ptr %i.u, align 8, !tbaa !516
  %i.bd = call fastcc ptr @xmlcharrefreplace(ptr noundef %i.q, ptr noundef %.0132360, ptr noundef %0, i64 noundef %.0124361, i64 noundef %.us-phi233.a) ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.loopexit311, label %raise_encode_exception.exit

.lr.ph:                                           ; preds = %.preheader, %bb.v
  %.1125253 = phi i64 [ %i.bq, %bb.v ], [ %.0124361, %.preheader ] ; 5 uses
  %.2134251 = phi ptr [ %i.bp, %bb.v ], [ %.0132360, %.preheader ] ; 3 uses
  switch i32 %i.k, label %bb.u [
    i32 1, label %bb.s
    i32 2, label %bb.t
  ]

bb.s:                                             ; preds = %.lr.ph
  %i.bf = getelementptr i8, ptr %.0.i, i64 %.1125253
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !205
  %i.bh = zext i8 %i.bg to i32
  br label %PyUnicode_READ.exit198

bb.t:                                             ; preds = %.lr.ph
  %i.bi = getelementptr [2 x i8], ptr %.0.i, i64 %.1125253
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !208
  %i.bk = zext i16 %i.bj to i32
  br label %PyUnicode_READ.exit198

bb.u:                                             ; preds = %.lr.ph
  %i.bl = getelementptr [4 x i8], ptr %.0.i, i64 %.1125253
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  br label %PyUnicode_READ.exit198

PyUnicode_READ.exit198:                           ; preds = %bb.s, %bb.t, %bb.u
  %.0.i197 = phi i32 [ %i.bh, %bb.s ], [ %i.bk, %bb.t ], [ %i.bm, %bb.u ] ; 2 uses
  %i.bn = add i32 %.0.i197, -56576
  %or.cond = icmp ult i32 %i.bn, -128
  br i1 %or.cond, label %.loopexit.a, label %bb.v

bb.v:                                             ; preds = %PyUnicode_READ.exit198
  %i.bo = trunc i32 %.0.i197 to i8
  %i.bp = getelementptr i8, ptr %.2134251, i64 1  ; 2 uses
  store i8 %i.bo, ptr %.2134251, align 1, !tbaa !205
  %i.bq = add nsw i64 %.1125253, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %.us-phi233.a
  br i1 %exitcond.not, label %raise_encode_exception.exit, label %.lr.ph, !llvm.loop !517

.loopexit.a:                                      ; preds = %PyUnicode_READ.exit198, %bb.m
  %.3135 = phi ptr [ %.0132360, %bb.m ], [ %.2134251, %PyUnicode_READ.exit198 ] ; 2 uses
  %.2126 = phi i64 [ %.0124361, %bb.m ], [ %.1125253, %PyUnicode_READ.exit198 ] ; 5 uses
  %i.br = call fastcc ptr @unicode_encode_call_errorhandler(ptr noundef %1, ptr noundef %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef %0, ptr noundef %i.b, i64 noundef %.2126, i64 noundef %.us-phi233.a, ptr noundef %i.c) ; 12 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.thread292, label %bb.w

bb.w:                                             ; preds = %.loopexit.a
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !193 ; 3 uses
  %i.bu = icmp slt i64 %i.bt, %.2126
  br i1 %i.bu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %i.t, align 4, !tbaa !514
  %i.bv = sub i64 %.2126, %i.bt
  %i.bw = call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %i.q, i64 noundef %i.bv, ptr noundef %.3135) #33 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.thread299, label %bb.z

bb.y:                                             ; preds = %bb.w
  %.neg182 = sub i64 %.2126, %i.bt
  %i.by = load i64, ptr %i.u, align 8, !tbaa !516
  %i.bz = add i64 %.neg182, %i.by
  store i64 %i.bz, ptr %i.u, align 8, !tbaa !516
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !193
  %i.cb = icmp slt i64 %i.ca, %.val190
  %i.cc = zext i1 %i.cb to i32
  store i32 %i.cc, ptr %i.t, align 4, !tbaa !514
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.4136 = phi ptr [ %i.bw, %bb.x ], [ %.3135, %bb.y ]
  %i.cd = getelementptr i8, ptr %i.br, i64 8
  %.val = load ptr, ptr %i.cd, align 8, !tbaa !197
  %i.ce = getelementptr i8, ptr %.val, i64 168
  %.val187 = load i64, ptr %i.ce, align 8, !tbaa !198
  %i.cf = and i64 %.val187, 134217728
  %.not183.a = icmp eq i64 %i.cf, 0
  %i.cg = getelementptr i8, ptr %i.br, i64 32     ; 2 uses
  br i1 %.not183.a, label %bb.aa, label %_PyUnicode_DATA.exit208

bb.aa:                                            ; preds = %bb.z
  %i.ch = load i32, ptr %i.cg, align 8            ; 4 uses
  br i1 %i.d, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ci = and i32 %i.ch, 28
  %.not185 = icmp eq i32 %i.ci, 4
  br i1 %.not185, label %bb.af, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cj = and i32 %i.ch, 64
  %.not184 = icmp eq i32 %i.cj, 0
  br i1 %.not184, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call fastcc void @make_encode_exception(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef %0, i64 noundef %.2126, i64 noundef %.us-phi233.a, ptr noundef nonnull %i.f)
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %.not.i199 = icmp eq ptr %i.ck, null
  br i1 %.not.i199, label %.thread299, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = call ptr @PyCodec_StrictErrors(ptr noundef nonnull %i.ck) #33 ; 0 uses
  br label %.thread299

bb.af:                                            ; preds = %bb.ac, %bb.ab
  %i.cm = and i32 %i.ch, 32
  %.not.i202 = icmp eq i32 %i.cm, 0
  br i1 %.not.i202, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cn = and i32 %i.ch, 64
  %.not.i.i203 = icmp eq i32 %i.cn, 0
  %.0.v.i.i204 = select i1 %.not.i.i203, i64 56, i64 40
  %.0.i.i205 = getelementptr i8, ptr %i.br, i64 %.0.v.i.i204
  br label %_PyUnicode_DATA.exit208

bb.ah:                                            ; preds = %bb.af
  %i.co = getelementptr i8, ptr %i.br, i64 56
  %.val4.i207 = load ptr, ptr %i.co, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit208

_PyUnicode_DATA.exit208:                          ; preds = %bb.z, %bb.ah, %bb.ag
  %.0128 = phi ptr [ %.val4.i207, %bb.ah ], [ %.0.i.i205, %bb.ag ], [ %i.cg, %bb.z ]
  %.0127.in = getelementptr i8, ptr %i.br, i64 16
  %.0127 = load i64, ptr %.0127.in, align 8, !tbaa !193 ; 3 uses
  %i.cp = call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %i.q, i64 noundef %.0127, ptr noundef %.4136) #33 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.thread299, label %bb.ai

bb.ai:                                            ; preds = %_PyUnicode_DATA.exit208
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr align 1 %.0128, i64 %.0127, i1 false)
  %i.cr = getelementptr i8, ptr %i.cp, i64 %.0127 ; 3 uses
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !193 ; 3 uses
  %i.ct = load i32, ptr %i.br, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.ct, -1
  br i1 %.not.i, label %bb.aj, label %raise_encode_exception.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.br, align 8, !tbaa !205
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.ak, label %raise_encode_exception.exit

bb.ak:                                            ; preds = %bb.aj
  call void @_Py_Dealloc(ptr noundef nonnull %i.br) #33
  br label %raise_encode_exception.exit

raise_encode_exception.exit:                      ; preds = %bb.v, %bb.p, %bb.m, %bb.q, %bb.r, %bb.ai, %bb.aj, %bb.ak, %.preheader
  %.6138 = phi ptr [ %i.cr, %bb.ak ], [ %i.bd, %bb.r ], [ %.0132360, %bb.m ], [ %i.az, %bb.q ], [ %i.aw, %bb.p ], [ %i.cr, %bb.ai ], [ %i.cr, %bb.aj ], [ %.0132360, %.preheader ], [ %i.bp, %bb.v ] ; 2 uses
  %.4 = phi i64 [ %i.cs, %bb.ak ], [ %.us-phi233.a, %bb.r ], [ %.us-phi233.a, %bb.m ], [ %.us-phi233.a, %bb.q ], [ %.us-phi233.a, %bb.p ], [ %i.cs, %bb.ai ], [ %i.cs, %bb.aj ], [ %.0124361, %.preheader ], [ %.us-phi233.a, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.cw = icmp slt i64 %.4, %.val190
  br i1 %i.cw, label %.lr.ph362, label %.outer._crit_edge

.thread292:                                       ; preds = %.loopexit.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %Py_XDECREF.exit216

bb.al:                                            ; preds = %PyUnicode_READ.exit
  %i.cx = trunc nuw i32 %.0.i193 to i8
  %i.cy = getelementptr i8, ptr %.0132360, i64 1  ; 2 uses
  store i8 %i.cx, ptr %.0132360, align 1, !tbaa !205
  br i1 %4, label %bb.g, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %raise_encode_exception.exit, %bb.al, %bb.f
  %.0132.lcssa = phi ptr [ %i.cy, %bb.al ], [ %i.s, %bb.f ], [ %.6138, %raise_encode_exception.exit ]
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !194 ; 4 uses
  %.not.i209 = icmp eq ptr %i.cz, null
  br i1 %.not.i209, label %Py_XDECREF.exit, label %bb.am

bb.am:                                            ; preds = %.outer._crit_edge
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !205 ; 2 uses
  %.not.i.i210 = icmp sgt i32 %i.da, -1
  br i1 %.not.i.i210, label %bb.an, label %Py_XDECREF.exit

bb.an:                                            ; preds = %bb.am
  %i.db = add nsw i32 %i.da, -1                   ; 2 uses
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !205
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ao, label %Py_XDECREF.exit

bb.ao:                                            ; preds = %bb.an
  call void @_Py_Dealloc(ptr noundef nonnull %i.cz) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.outer._crit_edge, %bb.am, %bb.an, %bb.ao
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !194 ; 4 uses
  %.not.i211 = icmp eq ptr %i.dd, null
  br i1 %.not.i211, label %Py_XDECREF.exit213, label %bb.ap

bb.ap:                                            ; preds = %Py_XDECREF.exit
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !205 ; 2 uses
  %.not.i.i212 = icmp sgt i32 %i.de, -1
  br i1 %.not.i.i212, label %bb.aq, label %Py_XDECREF.exit213

bb.aq:                                            ; preds = %bb.ap
  %i.df = add nsw i32 %i.de, -1                   ; 2 uses
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !205
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ar, label %Py_XDECREF.exit213

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %i.dd) #33
  br label %Py_XDECREF.exit213

Py_XDECREF.exit213:                               ; preds = %Py_XDECREF.exit, %bb.ap, %bb.aq, %bb.ar
  %i.dh = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.q, ptr noundef %.0132.lcssa) #33
  br label %Py_XDECREF.exit222

.thread299:                                       ; preds = %_PyUnicode_DATA.exit208, %bb.x, %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.di = load i32, ptr %i.br, align 8, !tbaa !205 ; 2 uses
  %.not.i.i215 = icmp sgt i32 %i.di, -1
  br i1 %.not.i.i215, label %bb.as, label %Py_XDECREF.exit216

.loopexit311:                                     ; preds = %bb.r, %bb.q, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %Py_XDECREF.exit216

bb.as:                                            ; preds = %.thread299
  %i.dj = add nsw i32 %i.di, -1                   ; 2 uses
  store i32 %i.dj, ptr %i.br, align 8, !tbaa !205
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.at, label %Py_XDECREF.exit216

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %i.br) #33
  br label %Py_XDECREF.exit216

Py_XDECREF.exit216:                               ; preds = %.loopexit311, %.thread292, %.thread299, %bb.as, %bb.at
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.q) #33
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !194 ; 4 uses
  %.not.i217 = icmp eq ptr %i.dl, null
  br i1 %.not.i217, label %Py_XDECREF.exit219, label %bb.au

bb.au:                                            ; preds = %Py_XDECREF.exit216
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !205 ; 2 uses
  %.not.i.i218 = icmp sgt i32 %i.dm, -1
  br i1 %.not.i.i218, label %bb.av, label %Py_XDECREF.exit219

bb.av:                                            ; preds = %bb.au
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !205
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.aw, label %Py_XDECREF.exit219

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.dl) #33
  br label %Py_XDECREF.exit219

Py_XDECREF.exit219:                               ; preds = %Py_XDECREF.exit216, %bb.au, %bb.av, %bb.aw
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !194 ; 4 uses
  %.not.i220 = icmp eq ptr %i.dp, null
  br i1 %.not.i220, label %Py_XDECREF.exit222, label %bb.ax

bb.ax:                                            ; preds = %Py_XDECREF.exit219
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !205 ; 2 uses
  %.not.i.i221 = icmp sgt i32 %i.dq, -1
  br i1 %.not.i.i221, label %bb.ay, label %Py_XDECREF.exit222

bb.ay:                                            ; preds = %bb.ax
  %i.dr = add nsw i32 %i.dq, -1                   ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !205
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.az, label %Py_XDECREF.exit222

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %i.dp) #33
  br label %Py_XDECREF.exit222

Py_XDECREF.exit222:                               ; preds = %bb.az, %bb.ay, %bb.ax, %Py_XDECREF.exit219, %bb.e, %Py_XDECREF.exit213, %bb.d
  %.2 = phi ptr [ %i.p, %bb.d ], [ null, %bb.e ], [ %i.dh, %Py_XDECREF.exit213 ], [ null, %Py_XDECREF.exit219 ], [ null, %bb.ax ], [ null, %bb.ay ], [ null, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsLatin1String(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val7.i = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val7.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %_PyUnicode_AsLatin1String.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = and i32 %i.f, 28
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %i.f, 32
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %i.f, 64
  %.not.i.i.i = icmp eq i32 %i.j, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 56
  %.val4.i.i = load ptr, ptr %i.k, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.e ], [ %.val4.i.i, %bb.f ]
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val8.i = load i64, ptr %i.l, align 8, !tbaa !207
  %i.m = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %.0.i.i, i64 noundef %.val8.i) #33
  br label %_PyUnicode_AsLatin1String.exit

bb.g:                                             ; preds = %bb.c
  %i.n = tail call fastcc ptr @unicode_encode_ucs1(ptr noundef nonnull %0, ptr noundef null, i32 noundef 256)
  br label %_PyUnicode_AsLatin1String.exit

_PyUnicode_AsLatin1String.exit:                   ; preds = %bb.b, %_PyUnicode_DATA.exit.i, %bb.g
  %.0.i = phi ptr [ %i.m, %_PyUnicode_DATA.exit.i ], [ %i.n, %bb.g ], [ null, %bb.b ]
  ret ptr %.0.i
}

declare void @_PyUnicodeWriter_InitWithBuffer(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_PyUnicodeWriter_PrepareKindInternal(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsASCIIString(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val8.i = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val8.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %_PyUnicode_AsASCIIString.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val9.i = load i32, ptr %i.e, align 8          ; 2 uses
  %i.f = and i32 %.val9.i, 64
  %.not7.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %.val9.i, 32
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

end_hunk_0
begin_hunk_1_@asciilib__two_way_find:bb.a
  %.0126.be.i = phi ptr [ %.3129.i, %bb.o ], [ %.4130.i, %bb.s ] ; 2 uses
  %i.cx = icmp ult ptr %.0126.be.i, %i.bt
  br i1 %i.cx, label %.preheader182.i.backedge, label %asciilib__two_way.exit

bb.p:                                             ; preds = %.lr.ph.i5
  %i.cy = add i64 %.0135199.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cy, %3
  br i1 %exitcond.not.i, label %.preheader179.i, label %.lr.ph.i5, !llvm.loop !791

bb.q:                                             ; preds = %.lr.ph201.i
  %i.cz = add i64 %.1136200.i, 1                  ; 2 uses
  %exitcond277.not.i = icmp eq i64 %i.cz, %.fr239.i
  br i1 %exitcond277.not.i, label %.preheader179._crit_edge.i, label %.lr.ph201.i, !llvm.loop !792

.lr.ph201.i:                                      ; preds = %.preheader179.i, %bb.q
  %.1136200.i = phi i64 [ %i.cz, %bb.q ], [ %.1144.i, %.preheader179.i ] ; 3 uses
  %i.da = getelementptr i8, ptr %2, i64 %.1136200.i
  %i.db = load i8, ptr %i.da, align 1, !tbaa !205
  %i.dc = getelementptr i8, ptr %i.ck, i64 %.1136200.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !205
  %.not155.i = icmp eq i8 %i.db, %i.dd
  br i1 %.not155.i, label %bb.q, label %bb.r

bb.r:                                             ; preds = %.lr.ph201.i
  %i.de = getelementptr i8, ptr %.2128.i, i64 %i.aq ; 3 uses
  %.not156.i = icmp ult ptr %i.de, %i.bt
  br i1 %.not156.i, label %bb.s, label %asciilib__two_way.exit

bb.s:                                             ; preds = %bb.r
  %i.df = load i8, ptr %i.de, align 1, !tbaa !205
  %i.dg = and i8 %i.df, 63
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = getelementptr i8, ptr %i.bg, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !205 ; 2 uses
  %.not157.not.i = icmp eq i8 %i.dj, 0            ; 2 uses
  %i.dk = zext i8 %i.dj to i64
  %i.dl = tail call i64 @llvm.smax.i64(i64 %i.ca, i64 %i.dk)
  %.4130.idx.i = select i1 %.not157.not.i, i64 0, i64 %i.dl
  %.4130.i = getelementptr i8, ptr %i.de, i64 %.4130.idx.i ; 2 uses
  br i1 %.not157.not.i, label %.preheader180.i, label %.backedge.i

.preheader179._crit_edge.i:                       ; preds = %.preheader179.i, %bb.q
  %i.dm = ptrtoint ptr %i.ck to i64
  %i.dn = ptrtoint ptr %0 to i64
  %i.do = sub i64 %i.dm, %i.dn
  br label %asciilib__two_way.exit

bb.t:                                             ; preds = %asciilib__preprocess.exit
  %i.dp = tail call i64 @llvm.smax.i64(i64 %i.bd, i64 %i.aq) ; 2 uses
  %i.dq = icmp ult ptr %i.bs, %i.bt
  br i1 %i.dq, label %.preheader177.lr.ph.i, label %asciilib__two_way.exit

.preheader177.lr.ph.i:                            ; preds = %bb.t
  %i.dr = sub nsw i64 0, %3                       ; 2 uses
  %i.ds = icmp slt i64 %.fr239.i, %3
  %.not152208.i = icmp sgt i64 %.fr239.i, 0
  br i1 %i.ds, label %.preheader177.us.i, label %.preheader177.us217.i

.preheader177.us.i:                               ; preds = %.preheader177.lr.ph.i, %.preheader177.us.i.backedge
  %.6132.us.i = phi ptr [ %.6132.us.i.be, %.preheader177.us.i.backedge ], [ %i.bs, %.preheader177.lr.ph.i ] ; 2 uses
  %i.dt = load i8, ptr %.6132.us.i, align 1, !tbaa !205
  %i.du = and i8 %i.dt, 63
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = getelementptr i8, ptr %i.bg, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !205 ; 2 uses
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr i8, ptr %.6132.us.i, i64 %i.dy ; 6 uses
  %.not294.i = icmp eq i8 %i.dx, 0
  %.not150.us.i = icmp uge ptr %i.dz, %i.bt
  %.159.us.i = zext i1 %.not150.us.i to i32
  %.3140.us.i = select i1 %.not294.i, i32 17, i32 %.159.us.i
  switch i32 %.3140.us.i, label %asciilib__two_way.exit [
    i32 0, label %.preheader177.us.i.backedge
    i32 17, label %.lr.ph207.us.i
  ]

.preheader177.us.i.backedge:                      ; preds = %.preheader177.us.i, %bb.x
  %.6132.us.i.be = phi ptr [ %i.dz, %.preheader177.us.i ], [ %.9.us.i, %bb.x ]
  br label %.preheader177.us.i

.lr.ph207.us.i:                                   ; preds = %.preheader177.us.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.dr
  %i.eb = getelementptr i8, ptr %i.ea, i64 1      ; 4 uses
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph210.us.i
  %i.ec = add nuw nsw i64 %.0209.us.i, 1          ; 2 uses
  %exitcond279.not.i = icmp eq i64 %i.ec, %.fr239.i
  br i1 %exitcond279.not.i, label %.thread170.i, label %.lr.ph210.us.i, !llvm.loop !793

.lr.ph210.us.i:                                   ; preds = %..preheader_crit_edge.us.i, %bb.u
  %.0209.us.i = phi i64 [ %i.ec, %bb.u ], [ 0, %..preheader_crit_edge.us.i ] ; 3 uses
  %i.ed = getelementptr i8, ptr %2, i64 %.0209.us.i
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !205
  %i.ef = getelementptr i8, ptr %i.eb, i64 %.0209.us.i
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !205
  %.not151.us.i = icmp eq i8 %i.ee, %i.eg
  br i1 %.not151.us.i, label %bb.u, label %.thread167.us.i

.thread167.us.i:                                  ; preds = %.lr.ph210.us.i
  %i.eh = getelementptr i8, ptr %i.dz, i64 %i.dp
  br label %bb.x

bb.v:                                             ; preds = %bb.y, %.lr.ph207.us.i
  %.0124205.us.i = phi i64 [ %.fr239.i, %.lr.ph207.us.i ], [ %i.es, %bb.y ] ; 5 uses
  %i.ei = getelementptr i8, ptr %2, i64 %.0124205.us.i
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !205
  %i.ek = getelementptr i8, ptr %i.eb, i64 %.0124205.us.i
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !205
  %.not153.us.i = icmp eq i8 %i.ej, %i.el
  br i1 %.not153.us.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.em = icmp slt i64 %.0124205.us.i, %i.bv
  %i.en = getelementptr i8, ptr %i.dz, i64 %i.bd
  %i.eo = sub i64 %.0124205.us.i, %.fr239.i
  %i.ep = getelementptr i8, ptr %i.dz, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 1
  %.7133.us.i = select i1 %i.em, ptr %i.en, ptr %i.eq
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread167.us.i
  %.9.us.i = phi ptr [ %.7133.us.i, %bb.w ], [ %i.eh, %.thread167.us.i ] ; 2 uses
  %i.er = icmp ult ptr %.9.us.i, %i.bt
  br i1 %i.er, label %.preheader177.us.i.backedge, label %asciilib__two_way.exit

bb.y:                                             ; preds = %bb.v
  %i.es = add i64 %.0124205.us.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.es, %3
  br i1 %exitcond.not, label %..preheader_crit_edge.us.i, label %bb.v, !llvm.loop !794

..preheader_crit_edge.us.i:                       ; preds = %bb.y
  br i1 %.not152208.i, label %.lr.ph210.us.i, label %.thread170.i

.preheader177.us217.i:                            ; preds = %.preheader177.lr.ph.i, %.preheader177.us217.i.backedge
  %.6132.us220.i = phi ptr [ %.6132.us220.i.be, %.preheader177.us217.i.backedge ], [ %i.bs, %.preheader177.lr.ph.i ] ; 2 uses
  %i.et = load i8, ptr %.6132.us220.i, align 1, !tbaa !205
  %i.eu = and i8 %i.et, 63
  %i.ev = zext nneg i8 %i.eu to i64
  %i.ew = getelementptr i8, ptr %i.bg, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !205 ; 2 uses
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr i8, ptr %.6132.us220.i, i64 %i.ey ; 4 uses
  %.not293.i = icmp eq i8 %i.ex, 0
  %.not150.us222.i = icmp uge ptr %i.ez, %i.bt
  %.159.us223.i = zext i1 %.not150.us222.i to i32
  %.3140.us224.i = select i1 %.not293.i, i32 17, i32 %.159.us223.i
  switch i32 %.3140.us224.i, label %asciilib__two_way.exit [
    i32 0, label %.preheader177.us217.i.backedge
    i32 17, label %.preheader.us227.i
  ]

.preheader177.us217.i.backedge:                   ; preds = %.preheader177.us217.i, %.thread167.us233.i
  %.6132.us220.i.be = phi ptr [ %i.ez, %.preheader177.us217.i ], [ %i.fh, %.thread167.us233.i ]
  br label %.preheader177.us217.i

.preheader.us227.i:                               ; preds = %.preheader177.us217.i
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.dr
  %i.fb = getelementptr i8, ptr %i.fa, i64 1      ; 2 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %i.fc = add nuw nsw i64 %.0209.us231.i, 1       ; 2 uses
  %exitcond278.not.i = icmp eq i64 %i.fc, %.fr239.i
  br i1 %exitcond278.not.i, label %.thread170.i, label %bb.aa, !llvm.loop !793

bb.aa:                                            ; preds = %bb.z, %.preheader.us227.i
  %.0209.us231.i = phi i64 [ 0, %.preheader.us227.i ], [ %i.fc, %bb.z ] ; 3 uses
  %i.fd = getelementptr i8, ptr %2, i64 %.0209.us231.i
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !205
  %i.ff = getelementptr i8, ptr %i.fb, i64 %.0209.us231.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !205
  %.not151.us232.i = icmp eq i8 %i.fe, %i.fg
  br i1 %.not151.us232.i, label %bb.z, label %.thread167.us233.i

.thread167.us233.i:                               ; preds = %bb.aa
  %i.fh = getelementptr i8, ptr %i.ez, i64 %i.dp  ; 2 uses
  %i.fi = icmp ult ptr %i.fh, %i.bt
  br i1 %i.fi, label %.preheader177.us217.i.backedge, label %asciilib__two_way.exit

.thread170.i:                                     ; preds = %bb.z, %..preheader_crit_edge.us.i, %bb.u
  %.lcssa.i = phi ptr [ %i.eb, %..preheader_crit_edge.us.i ], [ %i.eb, %bb.u ], [ %i.fb, %bb.z ]
  %i.fj = ptrtoint ptr %.lcssa.i to i64
  %i.fk = ptrtoint ptr %0 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  br label %asciilib__two_way.exit

asciilib__two_way.exit:                           ; preds = %.thread167.us233.i, %.preheader177.us217.i, %bb.x, %.preheader177.us.i, %.backedge.i, %.preheader182.i, %bb.r, %.preheader184.i, %.preheader179._crit_edge.i, %bb.t, %.thread170.i
  %.8.i = phi i64 [ -1, %bb.r ], [ -1, %.backedge.i ], [ -1, %bb.t ], [ %i.fl, %.thread170.i ], [ %i.do, %.preheader179._crit_edge.i ], [ -1, %bb.x ], [ -1, %.preheader184.i ], [ -1, %.preheader182.i ], [ -1, %.preheader177.us.i ], [ -1, %.preheader177.us217.i ], [ -1, %.thread167.us233.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %.8.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @asciilib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #24 {
.lr.ph.preheader:
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 10 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205   ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.b       ; 3 uses
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5 = insertelement <2 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat6 = shufflevector <2 x i8> %broadcast.splatinsert5, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi7 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi8 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi9 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr i8, ptr %2, i64 %index     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 2
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !tbaa !205 ; 2 uses
  %wide.load10 = load <2 x i8>, ptr %i.g, align 1, !tbaa !205 ; 2 uses
  %i.h = and <2 x i8> %wide.load, splat (i8 63)
  %i.i = and <2 x i8> %wide.load10, splat (i8 63)
  %i.j = zext nneg <2 x i8> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i8> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi7             ; 2 uses
  %i.p = icmp eq <2 x i8> %wide.load, %broadcast.splat6
  %i.q = icmp eq <2 x i8> %wide.load10, %broadcast.splat6
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi8 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi9 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !795

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
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bn, %.lr.ph ]
  %.1108.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1108, %.lr.ph ]
  %i.aa = and i8 %i.d, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %.lcssa, %i.ac                   ; 2 uses
  %.not141 = icmp slt i64 %i.a, 0
  br i1 %.not141, label %.thread, label %.lr.ph145.split.us.preheader

.lr.ph145.split.us.preheader:                     ; preds = %._crit_edge
  %i.ae = lshr i64 %3, 2
  br label %.lr.ph145.split.us

.lr.ph145.split.us:                               ; preds = %.lr.ph145.split.us.preheader, %bb.i
  %.092143.us = phi i64 [ %i.bf, %bb.i ], [ 0, %.lr.ph145.split.us.preheader ] ; 13 uses
  %.0104142.us = phi i64 [ %.2106.us, %bb.i ], [ 0, %.lr.ph145.split.us.preheader ] ; 3 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %.092143.us
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !205
  %i.ah = icmp eq i8 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph145.split.us
  %4 = add nsw i64 %.092143.us, 1                 ; 2 uses
  %.not118.us = icmp sgt i64 %4, %i.a
  br i1 %.not118.us, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.e, i64 %4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !205
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092143.us
  br label %bb.i

bb.c:                                             ; preds = %.preheader.us, %bb.j
  %.0135.us = phi i64 [ 0, %.preheader.us ], [ %i.bg, %bb.j ] ; 5 uses
  %i.ap = getelementptr i8, ptr %i.bh, i64 %.0135.us
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !205
  %i.ar = getelementptr i8, ptr %2, i64 %.0135.us
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !205
  %.not120.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not120.us, label %bb.j, label %._crit_edge137.us

._crit_edge137.us:                                ; preds = %bb.c
  %i.at = icmp eq i64 %.0135.us, %i.b
  br i1 %i.at, label %.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge137.us
  %i.au = add i64 %.0104142.us, 1
  %i.av = add i64 %i.au, %.0135.us                ; 2 uses
  %i.aw = icmp sgt i64 %i.av, %i.ae
  %i.ax = sub i64 %i.a, %.092143.us
  %i.ay = icmp sgt i64 %i.ax, 2000
  %or.cond.us = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %5 = add nsw i64 %.092143.us, 1                 ; 2 uses
  %.not121.us = icmp sgt i64 %5, %i.a
  br i1 %.not121.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr i8, ptr %i.e, i64 %5
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
  %.193.us = add i64 %.0107.pn.us, %.092143.us
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.a
  %.2106.us = phi i64 [ %.0104142.us, %bb.a ], [ %i.av, %bb.h ], [ %.0104142.us, %bb.b ]
  %.3.us = phi i64 [ %.092143.us, %bb.a ], [ %.193.us, %bb.h ], [ %spec.select.us, %bb.b ]
  %i.bf = add i64 %.3.us, 1                       ; 2 uses
  %.not.us = icmp sgt i64 %i.bf, %i.a
  br i1 %.not.us, label %.thread, label %.lr.ph145.split.us, !llvm.loop !796

bb.j:                                             ; preds = %bb.c
  %i.bg = add nuw nsw i64 %.0135.us, 1            ; 2 uses
  %exitcond170.not = icmp eq i64 %i.bg, %i.b
  br i1 %exitcond170.not, label %.thread, label %bb.c, !llvm.loop !797

.preheader.us:                                    ; preds = %.lr.ph145.split.us
  %i.bh = getelementptr i8, ptr %0, i64 %.092143.us
  br label %bb.c

.lr.ph:                                           ; preds = %middle.block, %.lr.ph
  %.094133 = phi i64 [ %i.br, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.095132 = phi i64 [ %i.bn, %.lr.ph ], [ %i.x, %middle.block ]
  %.0107131 = phi i64 [ %.1108, %.lr.ph ], [ %i.z, %middle.block ]
  %i.bi = getelementptr i8, ptr %2, i64 %.094133
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205 ; 2 uses
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = or i64 %i.bm, %.095132                  ; 2 uses
  %i.bo = icmp eq i8 %i.bj, %i.d
  %i.bp = xor i64 %.094133, -1
  %i.bq = add nsw i64 %i.b, %i.bp
  %.1108 = select i1 %i.bo, i64 %i.bq, i64 %.0107131 ; 2 uses
  %i.br = add nuw nsw i64 %.094133, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !798

.split.us:                                        ; preds = %bb.d
  %i.bs = getelementptr i8, ptr %0, i64 %.092143.us
  %i.bt = sub i64 %1, %.092143.us
  %i.bu = tail call fastcc i64 @asciilib__two_way_find(ptr noundef %i.bs, i64 noundef %i.bt, ptr noundef nonnull %2, i64 noundef %3) ; 2 uses
  %i.bv = icmp eq i64 %i.bu, -1
  %i.bw = add i64 %i.bu, %.092143.us
  %i.bx = select i1 %i.bv, i64 -1, i64 %i.bw
  br label %.thread

.thread:                                          ; preds = %bb.i, %._crit_edge137.us, %bb.j, %._crit_edge, %.split.us
  %spec.select124 = phi i64 [ %i.bx, %.split.us ], [ -1, %._crit_edge ], [ %.092143.us, %bb.j ], [ -1, %bb.i ], [ %.092143.us, %._crit_edge137.us ]
  ret i64 %spec.select124
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs1lib_fastsearch(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, i64 noundef range(i64 1, 0) %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i64 %1, %3
  br i1 %i.a, label %ucs1lib_find_char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %3, 2
  br i1 %i.b, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %.not66 = icmp eq i64 %3, 1
  br i1 %.not66, label %bb.d, label %ucs1lib_find_char.exit

bb.d:                                             ; preds = %bb.c
  switch i32 %5, label %bb.p [
    i32 1, label %bb.e
    i32 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.c = load i8, ptr %2, align 1, !tbaa !205     ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.e = icmp sgt i64 %1, 15
  br i1 %i.e, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.f = icmp ult ptr %0, %i.d
  br i1 %i.f, label %.lr.ph.i, label %ucs1lib_find_char.exit

bb.f:                                             ; preds = %bb.e
  %i.g = zext i8 %i.c to i32
  %i.h = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.g, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %ucs1lib_find_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  br label %ucs1lib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.01721.i = phi ptr [ %i.q, %bb.i ], [ %0, %.preheader.i ] ; 3 uses
  %i.l = load i8, ptr %.01721.i, align 1, !tbaa !205
  %i.m = icmp eq i8 %i.l, %i.c
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.n = ptrtoint ptr %.01721.i to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  br label %ucs1lib_find_char.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr i8, ptr %.01721.i, i64 1   ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.d
  br i1 %exitcond.not.i, label %ucs1lib_find_char.exit, label %.lr.ph.i, !llvm.loop !483

bb.j:                                             ; preds = %bb.d
  %i.r = load i8, ptr %2, align 1, !tbaa !205     ; 2 uses
  %i.s = icmp sgt i64 %1, 15
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = zext i8 %i.r to i32
  %i.u = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.t, i64 noundef %1) #34 ; 2 uses
  %.not.i68 = icmp eq ptr %i.u, null
  br i1 %.not.i68, label %ucs1lib_find_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  br label %ucs1lib_find_char.exit

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.z = icmp ugt ptr %i.y, %0
  br i1 %i.z, label %.lr.ph, label %ucs1lib_find_char.exit

bb.n:                                             ; preds = %.lr.ph
  %i.aa = icmp ugt ptr %i.ab, %0
  br i1 %i.aa, label %.lr.ph, label %ucs1lib_find_char.exit, !llvm.loop !486

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.0.i67148 = phi ptr [ %i.ab, %bb.n ], [ %i.y, %bb.m ]
  %i.ab = getelementptr i8, ptr %.0.i67148, i64 -1 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !205
  %i.ad = icmp eq i8 %i.ac, %i.r
  br i1 %i.ad, label %bb.o, label %bb.n, !llvm.loop !486

bb.o:                                             ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %ucs1lib_find_char.exit

bb.p:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %4, 9223372036854775807
  %i.ai = load i8, ptr %2, align 1, !tbaa !205    ; 3 uses
  br i1 %i.ah, label %.lr.ph.i69.preheader, label %.lr.ph.i71

.lr.ph.i69.preheader:                             ; preds = %bb.p
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i69.preheader151, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i69.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi149 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.aj = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 2
  %wide.load = load <2 x i8>, ptr %i.aj, align 1, !tbaa !205
  %wide.load150 = load <2 x i8>, ptr %i.ak, align 1, !tbaa !205
  %i.al = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.am = icmp eq <2 x i8> %wide.load150, %broadcast.splat
  %i.an = zext <2 x i1> %i.al to <2 x i64>
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = add <2 x i64> %vec.phi, %i.an           ; 2 uses
  %i.aq = add <2 x i64> %vec.phi149, %i.ao        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !799

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aq, %i.ap
  %i.as = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ucs1lib_find_char.exit, label %.lr.ph.i69.preheader151
end_hunk_1
begin_hunk_2_@ucs1lib_fastsearch:bb.a
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
define internal fastcc i64 @ucs1lib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
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
  %i.e = getelementptr i8, ptr %0, i64 %i.b       ; 3 uses
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
  %i.af = getelementptr i8, ptr %i.e, i64 %.092148.us
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !205
  %i.ah = icmp eq i8 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %8 = add nsw i64 %.092148.us, 1                 ; 2 uses
  %.not118.us = icmp sgt i64 %8, %i.a
  br i1 %.not118.us, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.e, i64 %8
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
  %9 = add nsw i64 %.092148.us, 1                 ; 2 uses
  %.not121.us = icmp sgt i64 %9, %i.a
  br i1 %.not121.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr i8, ptr %i.e, i64 %9
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

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.b, %bb.a
  %.2106.us = phi i64 [ %.0104146.us, %bb.a ], [ %.0104146.us, %bb.b ], [ %i.av, %bb.h ], [ %.0104146.us, %bb.j ]
  %.2102.us = phi i64 [ %.0100147.us, %bb.a ], [ %.0100147.us, %bb.b ], [ %.0100147.us, %bb.h ], [ %i.bf, %bb.j ] ; 2 uses
  %.3.us = phi i64 [ %.092148.us, %bb.a ], [ %spec.select.us, %bb.b ], [ %.193.us, %bb.h ], [ %i.bh, %bb.j ]
  %i.bi = add i64 %.3.us, 1                       ; 2 uses
  %.not.us = icmp sgt i64 %i.bi, %i.a
  br i1 %.not.us, label %.loopexit, label %.lr.ph151.split.us, !llvm.loop !806

bb.l:                                             ; preds = %bb.c
  %i.bj = add nuw nsw i64 %.0139.us, 1            ; 2 uses
  %exitcond225.not = icmp eq i64 %i.bj, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !807

.preheader.us:                                    ; preds = %.lr.ph151.split.us
  %i.bk = getelementptr i8, ptr %0, i64 %.092148.us
  br label %bb.c

.lr.ph:                                           ; preds = %middle.block, %.lr.ph
  %.094137 = phi i64 [ %i.bu, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.095136 = phi i64 [ %i.bq, %.lr.ph ], [ %i.x, %middle.block ]
  %.0107135 = phi i64 [ %.1108, %.lr.ph ], [ %i.z, %middle.block ]
  %i.bl = getelementptr i8, ptr %2, i64 %.094137
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !205 ; 2 uses
  %i.bn = and i8 %i.bm, 63
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = or i64 %i.bp, %.095136                  ; 2 uses
  %i.br = icmp eq i8 %i.bm, %i.d
  %i.bs = xor i64 %.094137, -1
  %i.bt = add nsw i64 %i.b, %i.bs
  %.1108 = select i1 %i.br, i64 %i.bt, i64 %.0107135 ; 2 uses
  %i.bu = add nuw nsw i64 %.094137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !808

.split.us:                                        ; preds = %bb.d
  %i.bv = getelementptr i8, ptr %0, i64 %.092148.us ; 3 uses
  %i.bw = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call fastcc void @ucs1lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bx = call fastcc i64 @ucs1lib__two_way(ptr noundef readonly %i.bv, i64 noundef %i.bw, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = add i64 %i.bx, %.092148.us
  %i.ca = select i1 %i.by, i64 -1, i64 %i.bz
  br label %.thread.thread

bb.n:                                             ; preds = %.split.us
  %i.cb = sub i64 %4, %.0100147.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call fastcc void @ucs1lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.cc = call fastcc i64 @ucs1lib__two_way(ptr noundef %i.bv, i64 noundef %i.bw, ptr noundef %6) ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %ucs1lib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ce = icmp eq i64 %i.cb, 1
  br i1 %i.ce, label %ucs1lib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cf = add i64 %i.ch, 1                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cg, label %ucs1lib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ch = phi i64 [ %i.cf, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01930.i249 = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ]
  %i.cj = add i64 %i.ci, %3
  %i.ck = add i64 %i.cj, %.01930.i249             ; 3 uses
  %i.cl = getelementptr i8, ptr %i.bv, i64 %i.ck
  %i.cm = sub i64 %i.bw, %i.ck
  %i.cn = call fastcc i64 @ucs1lib__two_way(ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %6) ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %ucs1lib__two_way_count.exit, label %.lr.ph.i

ucs1lib__two_way_count.exit:                      ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.1.ph.i = phi i64 [ 0, %bb.n ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ], [ %i.ch, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cp = add i64 %.1.ph.i, %.0100147.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.k, %._crit_edge
  %.3103 = phi i64 [ 0, %._crit_edge ], [ %.2102.us, %bb.k ]
  %i.cq = icmp eq i32 %5, 0
  %i.cr = select i1 %i.cq, i64 %.3103, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.i, %bb.m, %ucs1lib__two_way_count.exit, %.loopexit
  %i.cs = phi i64 [ %i.cr, %.loopexit ], [ %i.ca, %bb.m ], [ %i.cp, %ucs1lib__two_way_count.exit ], [ %4, %bb.i ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cs
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ucs1lib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #26 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !809
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !811
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205   ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %.042.us.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.03339.us.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !205   ; 2 uses
  %i.h = icmp ult i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.02941.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.03339.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.03140.us.i.i ; 2 uses
  %spec.select.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  %i.l = select i1 %.not37.us.i.i, i64 %.03140.us.i.i, i64 0
  %spec.select38.us.i.i = add i64 %i.l, %.02941.us.i.i
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03339.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.042.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.132.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.03140.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %.042.us.i.i, %bb.e ], [ %.02941.us.i.i, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 3 uses
  %i.p = add i64 %.130.us.i.i, %.134.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !812

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !205   ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.042.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.03339.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !205   ; 2 uses
  %i.x = icmp ult i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03339.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.042.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i8 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j
end_hunk_2
begin_hunk_3_@ucs2lib_fastsearch:bb.a
  %vec.phi164 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph155 ], [ %i.fl, %vector.body162 ]
  %vec.phi165 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph155 ], [ %i.fm, %vector.body162 ]
  %vec.phi166 = phi <2 x i1> [ zeroinitializer, %vector.ph155 ], [ %i.fn, %vector.body162 ]
  %vec.phi167 = phi <2 x i1> [ zeroinitializer, %vector.ph155 ], [ %i.fo, %vector.body162 ]
  %vec.phi168 = phi <2 x i64> [ %i.ev, %vector.ph155 ], [ %i.fh, %vector.body162 ]
  %vec.phi169 = phi <2 x i64> [ zeroinitializer, %vector.ph155 ], [ %i.fi, %vector.body162 ]
  %vec.ind170 = phi <2 x i64> [ %i.ew, %vector.ph155 ], [ %vec.ind.next175, %vector.body162 ] ; 3 uses
  %step.add = add nsw <2 x i64> %vec.ind170, splat (i64 -2)
  %i.ex = sub i64 %i.ep, %index163
  %i.ey = getelementptr [2 x i8], ptr %2, i64 %i.ex ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 -2
  %i.fa = getelementptr i8, ptr %i.ey, i64 -6
  %wide.load171 = load <2 x i16>, ptr %i.ez, align 2, !tbaa !208
  %wide.load172 = load <2 x i16>, ptr %i.fa, align 2, !tbaa !208
  %reverse = shufflevector <2 x i16> %wide.load171, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %reverse173 = shufflevector <2 x i16> %wide.load172, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fb = and <2 x i16> %reverse, splat (i16 63)
  %i.fc = and <2 x i16> %reverse173, splat (i16 63)
  %i.fd = zext nneg <2 x i16> %i.fb to <2 x i64>
  %i.fe = zext nneg <2 x i16> %i.fc to <2 x i64>
  %i.ff = shl nuw <2 x i64> splat (i64 1), %i.fd
  %i.fg = shl nuw <2 x i64> splat (i64 1), %i.fe
  %i.fh = or <2 x i64> %i.ff, %vec.phi168         ; 2 uses
  %i.fi = or <2 x i64> %i.fg, %vec.phi169         ; 2 uses
  %i.fj = icmp eq <2 x i16> %reverse, %broadcast.splat159 ; 2 uses
  %i.fk = icmp eq <2 x i16> %reverse173, %broadcast.splat159 ; 2 uses
  %i.fl = select <2 x i1> %i.fj, <2 x i64> %vec.ind170, <2 x i64> %vec.phi164 ; 2 uses
  %i.fm = select <2 x i1> %i.fk, <2 x i64> %step.add, <2 x i64> %vec.phi165 ; 2 uses
  %i.fn = or <2 x i1> %vec.phi166, %i.fj          ; 2 uses
  %i.fo = or <2 x i1> %vec.phi167, %i.fk          ; 2 uses
  %index.next174 = add nuw i64 %index163, 4       ; 2 uses
  %vec.ind.next175 = add nsw <2 x i64> %vec.ind170, splat (i64 -4)
  %i.fp = icmp eq i64 %index.next174, %n.vec157
  br i1 %i.fp, label %middle.block176, label %vector.body162, !llvm.loop !830

middle.block176:                                  ; preds = %vector.body162
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.fl, <2 x i64> %i.fm)
  %i.fq = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.fr = add nsw i64 %i.fq, -1
  %bin.rdx = or <2 x i1> %i.fo, %i.fn
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.fs = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not202 = icmp eq i2 %i.fs, 0
  %rdx.select = select i1 %.not202, i64 %i.ep, i64 %i.fr ; 2 uses
  %bin.rdx177 = or <2 x i64> %i.fi, %i.fh
  %i.ft = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx177) ; 2 uses
  %cmp.n178 = icmp eq i64 %i.ep, %n.vec157
  br i1 %cmp.n178, label %.preheader56.i, label %.lr.ph.i71.preheader

.lr.ph.i71.preheader:                             ; preds = %bb.as, %middle.block176
  %.04660.i.ph = phi i64 [ %i.ep, %bb.as ], [ %rdx.select, %middle.block176 ]
  %.04759.i.ph = phi i64 [ %i.et, %bb.as ], [ %i.ft, %middle.block176 ]
  %.04958.i.ph = phi i64 [ %i.ep, %bb.as ], [ %i.eu, %middle.block176 ]
  br label %.lr.ph.i71

.preheader56.i:                                   ; preds = %.lr.ph.i71, %middle.block176
  %.lcssa146 = phi i64 [ %i.ft, %middle.block176 ], [ %i.ha, %.lr.ph.i71 ] ; 2 uses
  %spec.select.i72.lcssa = phi i64 [ %rdx.select, %middle.block176 ], [ %spec.select.i72, %.lr.ph.i71 ]
  %i.fu = sub i64 %1, %3                          ; 2 uses
  %i.fv = icmp sgt i64 %i.fu, -1
  br i1 %i.fv, label %.lr.ph66.split.us.i, label %ucs2lib_rfind_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ax
  %.15065.us.i = phi i64 [ %i.gr, %bb.ax ], [ %i.fu, %.preheader56.i ] ; 5 uses
  %i.fw = getelementptr [2 x i8], ptr %0, i64 %.15065.us.i ; 4 uses
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !208
  %i.fy = icmp eq i16 %i.fx, %i.eq
  br i1 %i.fy, label %.preheader.us.i74, label %bb.at

bb.at:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i73 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i73, label %ucs2lib_rfind_char.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fz = getelementptr i8, ptr %i.fw, i64 -2
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !208
  %i.gb = and i16 %i.ga, 63
  %i.gc = zext nneg i16 %i.gb to i64
  %i.gd = shl nuw i64 1, %i.gc
  %i.ge = and i64 %i.gd, %.lcssa146
  %.not51.us.i = icmp eq i64 %i.ge, 0
  %i.gf = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ax

.preheader.us.i74:                                ; preds = %.lr.ph66.split.us.i, %bb.ay
  %.04862.us.i = phi i64 [ %i.gt, %bb.ay ], [ %i.ep, %.lr.ph66.split.us.i ] ; 4 uses
  %i.gg = getelementptr [2 x i8], ptr %i.fw, i64 %.04862.us.i
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !208
  %i.gi = getelementptr [2 x i8], ptr %2, i64 %.04862.us.i
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !208
  %.not52.us.i = icmp eq i16 %i.gh, %i.gj
  br i1 %.not52.us.i, label %bb.ay, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i74
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.thread.us.i
  %i.gk = getelementptr i8, ptr %i.fw, i64 -2
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !208
  %i.gm = and i16 %i.gl, 63
  %i.gn = zext nneg i16 %i.gm to i64
  %i.go = shl nuw i64 1, %i.gn
  %i.gp = and i64 %i.go, %.lcssa146
  %.not54.us.i = icmp eq i64 %i.gp, 0
  br i1 %.not54.us.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread.us.i
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i72.lcssa, %bb.aw ], [ %i.gf, %bb.au ], [ %3, %bb.av ]
  %i.gq = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.gr = add nsw i64 %i.gq, -1
  %i.gs = icmp sgt i64 %i.gq, 0
  br i1 %i.gs, label %.lr.ph66.split.us.i, label %ucs2lib_rfind_char.exit, !llvm.loop !831

bb.ay:                                            ; preds = %.preheader.us.i74
  %i.gt = add nsw i64 %.04862.us.i, -1
  %i.gu = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.gu, label %.preheader.us.i74, label %ucs2lib_rfind_char.exit, !llvm.loop !832

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.preheader, %.lr.ph.i71
  %.04660.i = phi i64 [ %spec.select.i72, %.lr.ph.i71 ], [ %.04660.i.ph, %.lr.ph.i71.preheader ]
  %.04759.i = phi i64 [ %i.ha, %.lr.ph.i71 ], [ %.04759.i.ph, %.lr.ph.i71.preheader ]
  %.04958.i = phi i64 [ %i.hc, %.lr.ph.i71 ], [ %.04958.i.ph, %.lr.ph.i71.preheader ] ; 3 uses
  %i.gv = getelementptr [2 x i8], ptr %2, i64 %.04958.i
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !208 ; 2 uses
  %i.gx = and i16 %i.gw, 63
  %i.gy = zext nneg i16 %i.gx to i64
  %i.gz = shl nuw i64 1, %i.gy
  %i.ha = or i64 %i.gz, %.04759.i                 ; 2 uses
  %i.hb = icmp eq i16 %i.gw, %i.eq
  %i.hc = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i72 = select i1 %i.hb, i64 %i.hc, i64 %.04660.i ; 2 uses
  %i.hd = icmp samesign ugt i64 %.04958.i, 1
  br i1 %i.hd, label %.lr.ph.i71, label %.preheader56.i, !llvm.loop !833

ucs2lib_rfind_char.exit:                          ; preds = %bb.aj, %._crit_edge104.us.thread.i, %bb.ax, %bb.at, %bb.ay, %bb.j, %bb.i, %bb.s, %bb.x, %bb.w, %.lr.ph.i, %middle.block196, %.preheader56.i, %.loopexit.i, %bb.u, %bb.p, %bb.d, %bb.a, %bb.b, %bb.ar, %bb.aq, %bb.ap, %bb.f
  %.0 = phi i64 [ %4, %bb.w ], [ -1, %bb.a ], [ %i.f, %bb.f ], [ -1, %bb.d ], [ -1, %bb.ax ], [ -1, %.preheader56.i ], [ %spec.select.i, %.lr.ph.i ], [ %i.em, %bb.ap ], [ %i.en, %bb.aq ], [ %i.eo, %bb.ar ], [ -1, %bb.b ], [ %i.as, %bb.u ], [ -1, %bb.s ], [ %i.af, %bb.p ], [ %.15065.us.i, %bb.ay ], [ %i.eg, %.loopexit.i ], [ -1, %bb.i ], [ %i.be, %middle.block196 ], [ %.1.i, %bb.x ], [ %i.s, %bb.j ], [ -1, %bb.at ], [ %4, %bb.aj ], [ %.066110.us.i, %._crit_edge104.us.thread.i ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @ucs2lib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
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
  %i.e = getelementptr [2 x i8], ptr %0, i64 %i.b ; 3 uses
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
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bo, %.lr.ph ]
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
  %.092148.us = phi i64 [ %i.bg, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.0100147.us = phi i64 [ %.2102.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %.0104146.us = phi i64 [ %.2106.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %i.af = getelementptr [2 x i8], ptr %i.e, i64 %.092148.us
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !208
  %i.ah = icmp eq i16 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %8 = add nsw i64 %.092148.us, 1                 ; 2 uses
  %.not118.us = icmp sgt i64 %8, %i.a
  br i1 %.not118.us, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %9 = getelementptr [2 x i8], ptr %i.e, i64 %8
  %i.ai = load i16, ptr %9, align 2, !tbaa !208
  %i.aj = and i16 %i.ai, 63
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.al, %i.ad
  %.not119.us = icmp eq i64 %i.am, 0
  %i.an = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.an, %.092148.us
  br label %bb.k

bb.c:                                             ; preds = %.preheader.us, %bb.l
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.bh, %bb.l ] ; 5 uses
  %i.ao = getelementptr [2 x i8], ptr %i.bi, i64 %.0139.us
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !208
  %i.aq = getelementptr [2 x i8], ptr %2, i64 %.0139.us
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !208
  %.not120.us = icmp eq i16 %i.ap, %i.ar
  br i1 %.not120.us, label %bb.l, label %._crit_edge141.us

._crit_edge141.us:                                ; preds = %bb.c
  %i.as = icmp eq i64 %.0139.us, %i.b
  br i1 %i.as, label %._crit_edge141.us.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge141.us
  %i.at = add i64 %.0104146.us, 1
  %i.au = add i64 %i.at, %.0139.us                ; 2 uses
  %i.av = icmp sgt i64 %i.au, %i.ae
  %i.aw = sub i64 %i.a, %.092148.us
  %i.ax = icmp sgt i64 %i.aw, 2000
  %or.cond.us = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %10 = add nsw i64 %.092148.us, 1                ; 2 uses
  %.not121.us = icmp sgt i64 %10, %i.a
  br i1 %.not121.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %11 = getelementptr [2 x i8], ptr %i.e, i64 %10
  %i.ay = load i16, ptr %11, align 2, !tbaa !208
  %i.az = and i16 %i.ay, 63
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = and i64 %i.bb, %i.ad
  %.not122.us = icmp eq i64 %i.bc, 0
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
  %i.bd = add i64 %.0100147.us, 1                 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %4
  br i1 %i.be, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = add i64 %.092148.us, %i.b
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.b, %bb.a
  %.2106.us = phi i64 [ %.0104146.us, %bb.a ], [ %.0104146.us, %bb.b ], [ %i.au, %bb.h ], [ %.0104146.us, %bb.j ]
  %.2102.us = phi i64 [ %.0100147.us, %bb.a ], [ %.0100147.us, %bb.b ], [ %.0100147.us, %bb.h ], [ %i.bd, %bb.j ] ; 2 uses
  %.3.us = phi i64 [ %.092148.us, %bb.a ], [ %spec.select.us, %bb.b ], [ %.193.us, %bb.h ], [ %i.bf, %bb.j ]
  %i.bg = add i64 %.3.us, 1                       ; 2 uses
  %.not.us = icmp sgt i64 %i.bg, %i.a
  br i1 %.not.us, label %.loopexit, label %.lr.ph151.split.us, !llvm.loop !835

bb.l:                                             ; preds = %bb.c
  %i.bh = add nuw nsw i64 %.0139.us, 1            ; 2 uses
  %exitcond225.not = icmp eq i64 %i.bh, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !836

.preheader.us:                                    ; preds = %.lr.ph151.split.us
  %i.bi = getelementptr [2 x i8], ptr %0, i64 %.092148.us
  br label %bb.c

.lr.ph:                                           ; preds = %middle.block, %.lr.ph
  %.094137 = phi i64 [ %i.bs, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.095136 = phi i64 [ %i.bo, %.lr.ph ], [ %i.x, %middle.block ]
  %.0107135 = phi i64 [ %.1108, %.lr.ph ], [ %i.z, %middle.block ]
  %i.bj = getelementptr [2 x i8], ptr %2, i64 %.094137
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !208 ; 2 uses
  %i.bl = and i16 %i.bk, 63
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = or i64 %i.bn, %.095136                  ; 2 uses
  %i.bp = icmp eq i16 %i.bk, %i.d
  %i.bq = xor i64 %.094137, -1
  %i.br = add nsw i64 %i.b, %i.bq
  %.1108 = select i1 %i.bp, i64 %i.br, i64 %.0107135 ; 2 uses
  %i.bs = add nuw nsw i64 %.094137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !837

.split.us:                                        ; preds = %bb.d
  %i.bt = getelementptr [2 x i8], ptr %0, i64 %.092148.us ; 3 uses
  %i.bu = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bv = call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @ucs2lib__two_way(ptr noundef readonly %i.bt, i64 noundef %i.bu, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.bw = icmp eq i64 %i.bv, -1
  %i.bx = add i64 %i.bv, %.092148.us
  %i.by = select i1 %i.bw, i64 -1, i64 %i.bx
  br label %.thread.thread

bb.n:                                             ; preds = %.split.us
  %i.bz = sub i64 %4, %.0100147.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.ca = call fastcc i64 @ucs2lib__two_way(ptr noundef %i.bt, i64 noundef %i.bu, ptr noundef %6) ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  br i1 %i.cb, label %ucs2lib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.cc = icmp eq i64 %i.bz, 1
  br i1 %i.cc, label %ucs2lib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cd = add i64 %i.cf, 1                        ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.bz
  br i1 %i.ce, label %ucs2lib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.cf = phi i64 [ %i.cd, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01930.i249 = phi i64 [ %i.ci, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.cg = phi i64 [ %i.cl, %.lr.ph.i ], [ %i.ca, %.lr.ph.i.preheader ]
  %i.ch = add i64 %i.cg, %3
  %i.ci = add i64 %i.ch, %.01930.i249             ; 3 uses
  %i.cj = getelementptr [2 x i8], ptr %i.bt, i64 %i.ci
  %i.ck = sub i64 %i.bu, %i.ci
  %i.cl = call fastcc i64 @ucs2lib__two_way(ptr noundef %i.cj, i64 noundef %i.ck, ptr noundef %6) ; 2 uses
  %i.cm = icmp eq i64 %i.cl, -1
  br i1 %i.cm, label %ucs2lib__two_way_count.exit, label %.lr.ph.i

ucs2lib__two_way_count.exit:                      ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.1.ph.i = phi i64 [ 0, %bb.n ], [ %i.bz, %.lr.ph.i.preheader ], [ %i.bz, %.lr.ph.i ], [ %i.cf, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cn = add i64 %.1.ph.i, %.0100147.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.k, %._crit_edge
  %.3103 = phi i64 [ 0, %._crit_edge ], [ %.2102.us, %bb.k ]
  %i.co = icmp eq i32 %5, 0
  %i.cp = select i1 %i.co, i64 %.3103, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.i, %bb.m, %ucs2lib__two_way_count.exit, %.loopexit
  %i.cq = phi i64 [ %i.cp, %.loopexit ], [ %i.by, %bb.m ], [ %i.cn, %ucs2lib__two_way_count.exit ], [ %4, %bb.i ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cq
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ucs2lib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #26 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !838
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !841
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr [2 x i8], ptr %0, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !208  ; 2 uses
  %i.e = getelementptr [2 x i8], ptr %0, i64 %.042.us.i.i
  %i.f = getelementptr [2 x i8], ptr %i.e, i64 %.03339.us.i.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !208  ; 2 uses
  %i.h = icmp ult i16 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i16 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.02941.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.03339.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.03140.us.i.i ; 2 uses
  %spec.select.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  %i.l = select i1 %.not37.us.i.i, i64 %.03140.us.i.i, i64 0
  %spec.select38.us.i.i = add i64 %i.l, %.02941.us.i.i
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03339.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.042.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.132.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.03140.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %.042.us.i.i, %bb.e ], [ %.02941.us.i.i, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 3 uses
  %i.p = add i64 %.130.us.i.i, %.134.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !842

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %i.s = getelementptr [2 x i8], ptr %0, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !208  ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %0, i64 %.042.i.i
  %i.v = getelementptr [2 x i8], ptr %i.u, i64 %.03339.i.i
  %i.w = load i16, ptr %i.v, align 2, !tbaa !208  ; 2 uses
  %i.x = icmp ult i16 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03339.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.042.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i16 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

end_hunk_3
begin_hunk_4_@ucs4lib_fastsearch:bb.a
  %vec.phi180 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph171 ], [ %i.fy, %vector.body178 ]
  %vec.phi181 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph171 ], [ %i.fz, %vector.body178 ]
  %vec.phi182 = phi <2 x i1> [ zeroinitializer, %vector.ph171 ], [ %i.ga, %vector.body178 ]
  %vec.phi183 = phi <2 x i1> [ zeroinitializer, %vector.ph171 ], [ %i.gb, %vector.body178 ]
  %vec.phi184 = phi <2 x i64> [ %i.fi, %vector.ph171 ], [ %i.fu, %vector.body178 ]
  %vec.phi185 = phi <2 x i64> [ zeroinitializer, %vector.ph171 ], [ %i.fv, %vector.body178 ]
  %vec.ind186 = phi <2 x i64> [ %i.fj, %vector.ph171 ], [ %vec.ind.next191, %vector.body178 ] ; 3 uses
  %step.add = add nsw <2 x i64> %vec.ind186, splat (i64 -2)
  %i.fk = sub i64 %i.fc, %index179
  %i.fl = getelementptr [4 x i8], ptr %2, i64 %i.fk ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 -4
  %i.fn = getelementptr i8, ptr %i.fl, i64 -12
  %wide.load187 = load <2 x i32>, ptr %i.fm, align 4, !tbaa !7
  %wide.load188 = load <2 x i32>, ptr %i.fn, align 4, !tbaa !7
  %reverse = shufflevector <2 x i32> %wide.load187, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %reverse189 = shufflevector <2 x i32> %wide.load188, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fo = and <2 x i32> %reverse, splat (i32 63)
  %i.fp = and <2 x i32> %reverse189, splat (i32 63)
  %i.fq = zext nneg <2 x i32> %i.fo to <2 x i64>
  %i.fr = zext nneg <2 x i32> %i.fp to <2 x i64>
  %i.fs = shl nuw <2 x i64> splat (i64 1), %i.fq
  %i.ft = shl nuw <2 x i64> splat (i64 1), %i.fr
  %i.fu = or <2 x i64> %i.fs, %vec.phi184         ; 2 uses
  %i.fv = or <2 x i64> %i.ft, %vec.phi185         ; 2 uses
  %i.fw = icmp eq <2 x i32> %reverse, %broadcast.splat175 ; 2 uses
  %i.fx = icmp eq <2 x i32> %reverse189, %broadcast.splat175 ; 2 uses
  %i.fy = select <2 x i1> %i.fw, <2 x i64> %vec.ind186, <2 x i64> %vec.phi180 ; 2 uses
  %i.fz = select <2 x i1> %i.fx, <2 x i64> %step.add, <2 x i64> %vec.phi181 ; 2 uses
  %i.ga = or <2 x i1> %vec.phi182, %i.fw          ; 2 uses
  %i.gb = or <2 x i1> %vec.phi183, %i.fx          ; 2 uses
  %index.next190 = add nuw i64 %index179, 4       ; 2 uses
  %vec.ind.next191 = add nsw <2 x i64> %vec.ind186, splat (i64 -4)
  %i.gc = icmp eq i64 %index.next190, %n.vec173
  br i1 %i.gc, label %middle.block192, label %vector.body178, !llvm.loop !860

middle.block192:                                  ; preds = %vector.body178
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.fy, <2 x i64> %i.fz)
  %i.gd = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.ge = add nsw i64 %i.gd, -1
  %bin.rdx = or <2 x i1> %i.gb, %i.ga
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.gf = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not218 = icmp eq i2 %i.gf, 0
  %rdx.select = select i1 %.not218, i64 %i.fc, i64 %i.ge ; 2 uses
  %bin.rdx193 = or <2 x i64> %i.fv, %i.fu
  %i.gg = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx193) ; 2 uses
  %cmp.n194 = icmp eq i64 %i.fc, %n.vec173
  br i1 %cmp.n194, label %.preheader56.i, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %bb.av, %middle.block192
  %.04660.i.ph = phi i64 [ %i.fc, %bb.av ], [ %rdx.select, %middle.block192 ]
  %.04759.i.ph = phi i64 [ %i.fg, %bb.av ], [ %i.gg, %middle.block192 ]
  %.04958.i.ph = phi i64 [ %i.fc, %bb.av ], [ %i.fh, %middle.block192 ]
  br label %.lr.ph.i74

.preheader56.i:                                   ; preds = %.lr.ph.i74, %middle.block192
  %.lcssa162 = phi i64 [ %i.gg, %middle.block192 ], [ %i.hn, %.lr.ph.i74 ] ; 2 uses
  %spec.select.i75.lcssa = phi i64 [ %rdx.select, %middle.block192 ], [ %spec.select.i75, %.lr.ph.i74 ]
  %i.gh = sub i64 %1, %3                          ; 2 uses
  %i.gi = icmp sgt i64 %i.gh, -1
  br i1 %i.gi, label %.lr.ph66.split.us.i, label %ucs4lib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ba
  %.15065.us.i = phi i64 [ %i.he, %bb.ba ], [ %i.gh, %.preheader56.i ] ; 5 uses
  %i.gj = getelementptr [4 x i8], ptr %0, i64 %.15065.us.i ; 4 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !7
  %i.gl = icmp eq i32 %i.gk, %i.fd
  br i1 %i.gl, label %.preheader.us.i78, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i77 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i77, label %ucs4lib_find_char.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gm = getelementptr i8, ptr %i.gj, i64 -4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !7
  %i.go = and i32 %i.gn, 63
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = shl nuw i64 1, %i.gp
  %i.gr = and i64 %i.gq, %.lcssa162
  %.not51.us.i = icmp eq i64 %i.gr, 0
  %i.gs = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ba

.preheader.us.i78:                                ; preds = %.lr.ph66.split.us.i, %bb.bb
  %.04862.us.i = phi i64 [ %i.hg, %bb.bb ], [ %i.fc, %.lr.ph66.split.us.i ] ; 4 uses
  %i.gt = getelementptr [4 x i8], ptr %i.gj, i64 %.04862.us.i
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !7
  %i.gv = getelementptr [4 x i8], ptr %2, i64 %.04862.us.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !7
  %.not52.us.i = icmp eq i32 %i.gu, %i.gw
  br i1 %.not52.us.i, label %bb.bb, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i78
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.thread.us.i
  %i.gx = getelementptr i8, ptr %i.gj, i64 -4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !7
  %i.gz = and i32 %i.gy, 63
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = and i64 %i.hb, %.lcssa162
  %.not54.us.i = icmp eq i64 %i.hc, 0
  br i1 %.not54.us.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread.us.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i75.lcssa, %bb.az ], [ %i.gs, %bb.ax ], [ %3, %bb.ay ]
  %i.hd = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.he = add nsw i64 %i.hd, -1
  %i.hf = icmp sgt i64 %i.hd, 0
  br i1 %i.hf, label %.lr.ph66.split.us.i, label %ucs4lib_find_char.exit, !llvm.loop !861

bb.bb:                                            ; preds = %.preheader.us.i78
  %i.hg = add nsw i64 %.04862.us.i, -1
  %i.hh = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.hh, label %.preheader.us.i78, label %ucs4lib_find_char.exit, !llvm.loop !862

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %.lr.ph.i74
  %.04660.i = phi i64 [ %spec.select.i75, %.lr.ph.i74 ], [ %.04660.i.ph, %.lr.ph.i74.preheader ]
  %.04759.i = phi i64 [ %i.hn, %.lr.ph.i74 ], [ %.04759.i.ph, %.lr.ph.i74.preheader ]
  %.04958.i = phi i64 [ %i.hp, %.lr.ph.i74 ], [ %.04958.i.ph, %.lr.ph.i74.preheader ] ; 3 uses
  %i.hi = getelementptr [4 x i8], ptr %2, i64 %.04958.i
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !7  ; 2 uses
  %i.hk = and i32 %i.hj, 63
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = shl nuw i64 1, %i.hl
  %i.hn = or i64 %i.hm, %.04759.i                 ; 2 uses
  %i.ho = icmp eq i32 %i.hj, %i.fd
  %i.hp = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i75 = select i1 %i.ho, i64 %i.hp, i64 %.04660.i ; 2 uses
  %i.hq = icmp samesign ugt i64 %.04958.i, 1
  br i1 %i.hq, label %.lr.ph.i74, label %.preheader56.i, !llvm.loop !863

ucs4lib_find_char.exit:                           ; preds = %bb.am, %._crit_edge104.us.thread.i, %bb.ba, %bb.aw, %bb.bb, %bb.m, %bb.l, %bb.v, %bb.i, %bb.aa, %bb.z, %.lr.ph.i69, %middle.block212, %.preheader56.i, %.loopexit.i, %bb.x, %bb.s, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.au, %bb.at, %bb.as
  %.0 = phi i64 [ -1, %bb.i ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.ba ], [ %spec.select.i, %.lr.ph.i69 ], [ -1, %.preheader56.i ], [ -1, %bb.v ], [ %i.ez, %bb.as ], [ %i.fa, %bb.at ], [ %i.fb, %bb.au ], [ %i.k, %bb.g ], [ -1, %bb.f ], [ %i.q, %bb.h ], [ -1, %.preheader.i ], [ %i.be, %bb.x ], [ %.15065.us.i, %bb.bb ], [ %i.ar, %bb.s ], [ %4, %bb.z ], [ %i.et, %.loopexit.i ], [ -1, %bb.l ], [ %i.bq, %middle.block212 ], [ %.1.i, %bb.aa ], [ %i.ae, %bb.m ], [ -1, %bb.aw ], [ %.066110.us.i, %._crit_edge104.us.thread.i ], [ %4, %bb.am ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -2305843009213693952, 2305843009213693952) i64 @ucs4lib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
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
  %i.e = getelementptr [4 x i8], ptr %0, i64 %i.b ; 3 uses
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
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bo, %.lr.ph ]
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
  %.092148.us = phi i64 [ %i.bg, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.0100147.us = phi i64 [ %.2102.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %.0104146.us = phi i64 [ %.2106.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %i.af = getelementptr [4 x i8], ptr %i.e, i64 %.092148.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = icmp eq i32 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %8 = add nsw i64 %.092148.us, 1                 ; 2 uses
  %.not118.us = icmp sgt i64 %8, %i.a
  br i1 %.not118.us, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %9 = getelementptr [4 x i8], ptr %i.e, i64 %8
  %i.ai = load i32, ptr %9, align 4, !tbaa !7
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.al, %i.ad
  %.not119.us = icmp eq i64 %i.am, 0
  %i.an = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.an, %.092148.us
  br label %bb.k

bb.c:                                             ; preds = %.preheader.us, %bb.l
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.bh, %bb.l ] ; 5 uses
  %i.ao = getelementptr [4 x i8], ptr %i.bi, i64 %.0139.us
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = getelementptr [4 x i8], ptr %2, i64 %.0139.us
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %.not120.us = icmp eq i32 %i.ap, %i.ar
  br i1 %.not120.us, label %bb.l, label %._crit_edge141.us

._crit_edge141.us:                                ; preds = %bb.c
  %i.as = icmp eq i64 %.0139.us, %i.b
  br i1 %i.as, label %._crit_edge141.us.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge141.us
  %i.at = add i64 %.0104146.us, 1
  %i.au = add i64 %i.at, %.0139.us                ; 2 uses
  %i.av = icmp sgt i64 %i.au, %i.ae
  %i.aw = sub i64 %i.a, %.092148.us
  %i.ax = icmp sgt i64 %i.aw, 2000
  %or.cond.us = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %10 = add nsw i64 %.092148.us, 1                ; 2 uses
  %.not121.us = icmp sgt i64 %10, %i.a
  br i1 %.not121.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %11 = getelementptr [4 x i8], ptr %i.e, i64 %10
  %i.ay = load i32, ptr %11, align 4, !tbaa !7
  %i.az = and i32 %i.ay, 63
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = and i64 %i.bb, %i.ad
  %.not122.us = icmp eq i64 %i.bc, 0
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
  %i.bd = add i64 %.0100147.us, 1                 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %4
  br i1 %i.be, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = add i64 %.092148.us, %i.b
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.b, %bb.a
  %.2106.us = phi i64 [ %.0104146.us, %bb.a ], [ %.0104146.us, %bb.b ], [ %i.au, %bb.h ], [ %.0104146.us, %bb.j ]
  %.2102.us = phi i64 [ %.0100147.us, %bb.a ], [ %.0100147.us, %bb.b ], [ %.0100147.us, %bb.h ], [ %i.bd, %bb.j ] ; 2 uses
  %.3.us = phi i64 [ %.092148.us, %bb.a ], [ %spec.select.us, %bb.b ], [ %.193.us, %bb.h ], [ %i.bf, %bb.j ]
  %i.bg = add i64 %.3.us, 1                       ; 2 uses
  %.not.us = icmp sgt i64 %i.bg, %i.a
  br i1 %.not.us, label %.loopexit, label %.lr.ph151.split.us, !llvm.loop !865

bb.l:                                             ; preds = %bb.c
  %i.bh = add nuw nsw i64 %.0139.us, 1            ; 2 uses
  %exitcond225.not = icmp eq i64 %i.bh, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !866

.preheader.us:                                    ; preds = %.lr.ph151.split.us
  %i.bi = getelementptr [4 x i8], ptr %0, i64 %.092148.us
  br label %bb.c

.lr.ph:                                           ; preds = %middle.block, %.lr.ph
  %.094137 = phi i64 [ %i.bs, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.095136 = phi i64 [ %i.bo, %.lr.ph ], [ %i.x, %middle.block ]
  %.0107135 = phi i64 [ %.1108, %.lr.ph ], [ %i.z, %middle.block ]
  %i.bj = getelementptr [4 x i8], ptr %2, i64 %.094137
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7  ; 2 uses
  %i.bl = and i32 %i.bk, 63
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = or i64 %i.bn, %.095136                  ; 2 uses
  %i.bp = icmp eq i32 %i.bk, %i.d
  %i.bq = xor i64 %.094137, -1
  %i.br = add nsw i64 %i.b, %i.bq
  %.1108 = select i1 %i.bp, i64 %i.br, i64 %.0107135 ; 2 uses
  %i.bs = add nuw nsw i64 %.094137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !867

.split.us:                                        ; preds = %bb.d
  %i.bt = getelementptr [4 x i8], ptr %0, i64 %.092148.us ; 3 uses
  %i.bu = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bv = call fastcc range(i64 -2305843009213693952, 2305843009213693952) i64 @ucs4lib__two_way(ptr noundef readonly %i.bt, i64 noundef %i.bu, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.bw = icmp eq i64 %i.bv, -1
  %i.bx = add i64 %i.bv, %.092148.us
  %i.by = select i1 %i.bw, i64 -1, i64 %i.bx
  br label %.thread.thread

bb.n:                                             ; preds = %.split.us
  %i.bz = sub i64 %4, %.0100147.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.ca = call fastcc i64 @ucs4lib__two_way(ptr noundef %i.bt, i64 noundef %i.bu, ptr noundef %6) ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  br i1 %i.cb, label %ucs4lib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.cc = icmp eq i64 %i.bz, 1
  br i1 %i.cc, label %ucs4lib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cd = add i64 %i.cf, 1                        ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.bz
  br i1 %i.ce, label %ucs4lib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.cf = phi i64 [ %i.cd, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01930.i249 = phi i64 [ %i.ci, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.cg = phi i64 [ %i.cl, %.lr.ph.i ], [ %i.ca, %.lr.ph.i.preheader ]
  %i.ch = add i64 %i.cg, %3
  %i.ci = add i64 %i.ch, %.01930.i249             ; 3 uses
  %i.cj = getelementptr [4 x i8], ptr %i.bt, i64 %i.ci
  %i.ck = sub i64 %i.bu, %i.ci
  %i.cl = call fastcc i64 @ucs4lib__two_way(ptr noundef %i.cj, i64 noundef %i.ck, ptr noundef %6) ; 2 uses
  %i.cm = icmp eq i64 %i.cl, -1
  br i1 %i.cm, label %ucs4lib__two_way_count.exit, label %.lr.ph.i

ucs4lib__two_way_count.exit:                      ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.1.ph.i = phi i64 [ 0, %bb.n ], [ %i.bz, %.lr.ph.i.preheader ], [ %i.bz, %.lr.ph.i ], [ %i.cf, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cn = add i64 %.1.ph.i, %.0100147.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.k, %._crit_edge
  %.3103 = phi i64 [ 0, %._crit_edge ], [ %.2102.us, %bb.k ]
  %i.co = icmp eq i32 %5, 0
  %i.cp = select i1 %i.co, i64 %.3103, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.i, %bb.m, %ucs4lib__two_way_count.exit, %.loopexit
  %i.cq = phi i64 [ %i.cp, %.loopexit ], [ %i.by, %bb.m ], [ %i.cn, %ucs4lib__two_way_count.exit ], [ %4, %bb.i ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cq
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ucs4lib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #26 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !868
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !870
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr [4 x i8], ptr %0, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7    ; 2 uses
  %i.e = getelementptr [4 x i8], ptr %0, i64 %.042.us.i.i
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %.03339.us.i.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  %i.h = icmp ult i32 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i32 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.02941.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.03339.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.03140.us.i.i ; 2 uses
  %spec.select.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  %i.l = select i1 %.not37.us.i.i, i64 %.03140.us.i.i, i64 0
  %spec.select38.us.i.i = add i64 %i.l, %.02941.us.i.i
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03339.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.042.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.132.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.03140.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %.042.us.i.i, %bb.e ], [ %.02941.us.i.i, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 3 uses
  %i.p = add i64 %.130.us.i.i, %.134.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !871

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7    ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %0, i64 %.042.i.i
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %.03339.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7    ; 2 uses
  %i.x = icmp ult i32 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03339.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.042.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i32 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

end_hunk_4
