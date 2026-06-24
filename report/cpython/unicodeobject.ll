inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@PyUnicode_ReadChar:bb.a
  %i.n = getelementptr i8, ptr %.0.i, i64 %1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !205
  %i.p = zext i8 %i.o to i32
  br label %PyUnicode_READ.exit

bb.j:                                             ; preds = %_PyUnicode_DATA.exit
  %i.q = getelementptr [2 x i8], ptr %.0.i, i64 %1
  %i.r = load i16, ptr %i.q, align 2, !tbaa !208
  %i.s = zext i16 %i.r to i32
  br label %PyUnicode_READ.exit

bb.k:                                             ; preds = %_PyUnicode_DATA.exit
  %i.t = getelementptr [4 x i8], ptr %.0.i, i64 %1
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.k, %bb.j, %bb.i, %bb.e, %bb.b
  %.0 = phi i32 [ -1, %bb.e ], [ -1, %bb.b ], [ %i.p, %bb.i ], [ %i.s, %bb.j ], [ %i.u, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicode_WriteChar(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val17 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val17, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val18 = load i32, ptr %i.d, align 8           ; 5 uses
  %i.e = and i32 %.val18, 32
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %PyUnicode_WRITE.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %1, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val19 = load i64, ptr %i.h, align 8, !tbaa !207
  %.not15 = icmp slt i64 %1, %.val19
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.28) #33
  br label %PyUnicode_WRITE.exit

bb.g:                                             ; preds = %bb.e
  %.val7.i.i = load i32, ptr %0, align 8, !tbaa !205
  %.not.i.i = icmp eq i32 %.val7.i.i, 1
  br i1 %.not.i.i, label %bb.h, label %unicode_check_modifiable.exit

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr i8, ptr %0, i64 24
  %.val8.i.i = load i64, ptr %i.j, align 8, !tbaa !217
  %.not4.i.i = icmp eq i64 %.val8.i.i, -1
  %i.k = and i32 %.val18, 3
  %.not5.i.i = icmp eq i32 %i.k, 0
  %or.cond = and i1 %.not5.i.i, %.not4.i.i
  %.not10.i.not.i = icmp eq ptr %.val, @PyUnicode_Type
  %or.cond27 = and i1 %.not10.i.not.i, %or.cond
  br i1 %or.cond27, label %bb.i, label %unicode_check_modifiable.exit

unicode_check_modifiable.exit:                    ; preds = %bb.g, %bb.h
  %i.l = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.116) #33
  br label %PyUnicode_WRITE.exit

bb.i:                                             ; preds = %bb.h
  %i.m = and i32 %.val18, 64
  %.not.i = icmp eq i32 %i.m, 0                   ; 2 uses
  br i1 %.not.i, label %bb.j, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.j:                                             ; preds = %bb.i
  %i.n = lshr exact i32 %.val18, 2
  %i.o = and i32 %i.n, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.o, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.o, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.i, %bb.j
  %.0.i21 = phi i32 [ %switch.select6.i, %bb.j ], [ 127, %bb.i ]
  %i.p = icmp ugt i32 %2, %.0.i21
  br i1 %i.p, label %bb.k, label %_PyUnicode_DATA.exit

bb.k:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.q = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.57) #33
  br label %PyUnicode_WRITE.exit

_PyUnicode_DATA.exit:                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.r = lshr exact i32 %.val18, 2
  %i.s = and i32 %i.r, 7
  %.0.v.i.i = select i1 %.not.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i ; 3 uses
  switch i32 %i.s, label %bb.n [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %_PyUnicode_DATA.exit
  %i.t = trunc i32 %2 to i8
  %i.u = getelementptr i8, ptr %.0.i.i, i64 %1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit

bb.m:                                             ; preds = %_PyUnicode_DATA.exit
  %i.v = trunc i32 %2 to i16
  %i.w = getelementptr [2 x i8], ptr %.0.i.i, i64 %1
  store i16 %i.v, ptr %i.w, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit

bb.n:                                             ; preds = %_PyUnicode_DATA.exit
  %i.x = getelementptr [4 x i8], ptr %.0.i.i, i64 %1
  store i32 %2, ptr %i.x, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit:                             ; preds = %bb.n, %bb.m, %bb.l, %unicode_check_modifiable.exit, %bb.k, %bb.f, %bb.c
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.k ], [ -1, %unicode_check_modifiable.exit ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeUTF7(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @PyUnicode_DecodeUTF7Stateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeUTF7Stateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 15 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct._PyUnicodeWriter, align 8   ; 20 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %0, ptr %i.b, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store ptr null, ptr %i.f, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr null, ptr %i.g, align 8, !tbaa !194
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not139 = icmp eq ptr %3, null
  br i1 %.not139, label %bb.db, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %3, align 8, !tbaa !193
  br label %bb.db

bb.d:                                             ; preds = %bb.a
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %4) #33
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %1, ptr %i.i, align 8, !tbaa !346
  %i.j = getelementptr i8, ptr %0, i64 %1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !355
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 27 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.p = icmp ne ptr %3, null                     ; 2 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %bb.d
  %.ph.ph = phi i64 [ undef, %bb.d ], [ %.ph.ph.be, %.outer.outer.backedge ]
  %.0115.ph.ph = phi i32 [ 0, %bb.d ], [ %.0115.ph.ph.be, %.outer.outer.backedge ]
  %.0113.ph.ph = phi i64 [ 0, %bb.d ], [ %.0113.ph.ph.be, %.outer.outer.backedge ]
  %.0108.ph.ph = phi i32 [ 0, %bb.d ], [ %.0108.ph.ph.be, %.outer.outer.backedge ]
  %.0104.ph.ph = phi i64 [ 0, %bb.d ], [ %.0104.ph.ph.be, %.outer.outer.backedge ] ; 10 uses
  %i.q = phi i1 [ true, %bb.d ], [ %.be, %.outer.outer.backedge ]
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.by
  %.ph = phi i64 [ %i.hj, %bb.by ], [ %.ph.ph, %.outer.outer ] ; 9 uses
  %.0115.ph = phi i32 [ %.0115269, %bb.by ], [ %.0115.ph.ph, %.outer.outer ] ; 7 uses
  %.0113.ph = phi i64 [ %.0113259, %bb.by ], [ %.0113.ph.ph, %.outer.outer ] ; 5 uses
  %.0108.ph = phi i32 [ %.0108249, %bb.by ], [ %.0108.ph.ph, %.outer.outer ] ; 11 uses
  %.0103.ph = phi i1 [ true, %bb.by ], [ %i.q, %.outer.outer ] ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !355  ; 4 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !355 ; 9 uses
  %i.s = icmp ult ptr %.promoted, %i.r
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.outer
  %.promoted459 = ptrtoint ptr %.promoted to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = zext i32 %.0115.ph to i64
  %i.v = sub i64 %i.t, %.promoted459
  %scevgep = getelementptr i8, ptr %.promoted, i64 %i.v
  %i.w = load i8, ptr %.promoted, align 1, !tbaa !205 ; 9 uses
  %i.x = zext i8 %i.w to i32                      ; 4 uses
  br i1 %.0103.ph, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.preheader
  %i.y = add i8 %i.w, -65
  %or.cond.peel = icmp ult i8 %i.y, 26            ; 2 uses
  %i.z = add i8 %i.w, -97
  %or.cond3.peel = icmp ult i8 %i.z, 26           ; 2 uses
  %or.cond140.peel = or i1 %or.cond.peel, %or.cond3.peel
  br i1 %or.cond140.peel, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp eq i8 %i.w, 43
  %i.ab = add i8 %i.w, -47
  %i.ac = icmp ult i8 %i.ab, 11
  %or.cond9.peel = or i1 %i.aa, %i.ac
  br i1 %or.cond9.peel, label %bb.g, label %._crit_edge487

bb.g:                                             ; preds = %bb.f
  %i.ad = shl i64 %.0113.ph, 6                    ; 2 uses
  %i.ae = add nsw i8 %i.w, -48
  %or.cond15.peel = icmp ult i8 %i.ae, 10
  br i1 %or.cond15.peel, label %bb.h, label %.thread209.peel

bb.h:                                             ; preds = %bb.g
  %i.af = add nuw nsw i32 %i.x, 4
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.ag = shl i64 %.0113.ph, 6                    ; 3 uses
  br i1 %or.cond.peel, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %or.cond3.peel, label %bb.k, label %.thread209.peel

.thread209.peel:                                  ; preds = %bb.j, %bb.g
  %i.ah = phi i64 [ %i.ad, %bb.g ], [ %i.ag, %bb.j ]
  %i.ai = icmp eq i8 %i.w, 43
  %i.aj = select i1 %i.ai, i32 62, i32 63
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.x, -71
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.al = add nsw i32 %i.x, -65
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.thread209.peel, %bb.h
  %i.am = phi i64 [ %i.ag, %bb.l ], [ %i.ag, %bb.k ], [ %i.ad, %bb.h ], [ %i.ah, %.thread209.peel ]
  %i.an = phi i32 [ %i.al, %bb.l ], [ %i.ak, %bb.k ], [ %i.af, %bb.h ], [ %i.aj, %.thread209.peel ]
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = or i64 %i.am, %i.ao                     ; 3 uses
  %i.aq = add i32 %.0115.ph, 6                    ; 2 uses
  %i.ar = getelementptr i8, ptr %.promoted, i64 1 ; 6 uses
  %i.as = icmp ugt i32 %i.aq, 15
  br i1 %i.as, label %bb.n, label %.thread217.loopexit

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.peel = add nsw i64 %i.u, -10   ; 2 uses
  %indvars.peel = trunc nuw i64 %indvars.iv.next.peel to i32 ; 6 uses
  %i.at = lshr i64 %i.ap, %indvars.iv.next.peel   ; 4 uses
  %i.au = trunc i64 %i.at to i32                  ; 4 uses
  %notmask.peel = shl nsw i32 -1, %indvars.peel
  %i.av = xor i32 %notmask.peel, -1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = and i64 %i.ap, %i.aw                    ; 6 uses
  %.not136.peel = icmp eq i32 %.0108.ph, 0
  br i1 %.not136.peel, label %.loopexit233, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = and i32 %i.au, -1024                    ; 2 uses
  %.not229.peel = icmp eq i32 %i.ay, 56320
  br i1 %.not229.peel, label %bb.p, label %.loopexit476

bb.p:                                             ; preds = %bb.o
  %i.az = shl i32 %.0108.ph, 10
  %i.ba = and i32 %i.az, 1047552
  %i.bb = and i32 %i.au, 1023
  %i.bc = or disjoint i32 %i.bb, 65536
  %i.bd = add nuw nsw i32 %i.bc, %i.ba            ; 4 uses
  %i.be = load i32, ptr %i.k, align 4, !tbaa !276
  %.not.i.peel = icmp ugt i32 %i.bd, %i.be
  br i1 %.not.i.peel, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load i64, ptr %i.l, align 8, !tbaa !278
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !279 ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.critedge.i.peel, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bj = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %i.bd) #33
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %.thread213, label %..critedge_crit_edge.i.peel

..critedge_crit_edge.i.peel:                      ; preds = %bb.r
  %.pre.i.peel = load i64, ptr %i.m, align 8, !tbaa !279
  br label %.critedge.i.peel

.critedge.i.peel:                                 ; preds = %..critedge_crit_edge.i.peel, %bb.q
  %i.bl = phi i64 [ %.pre.i.peel, %..critedge_crit_edge.i.peel ], [ %i.bg, %bb.q ] ; 5 uses
  %i.bm = load i32, ptr %i.n, align 8, !tbaa !280
  %i.bn = load ptr, ptr %i.o, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.bm, label %bb.u [
    i32 1, label %bb.t
    i32 2, label %bb.s
  ]

bb.s:                                             ; preds = %.critedge.i.peel
  %i.bo = trunc i32 %i.bd to i16
  %i.bp = getelementptr [2 x i8], ptr %i.bn, i64 %i.bl
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !208
  br label %bb.v

bb.t:                                             ; preds = %.critedge.i.peel
  %i.bq = trunc i64 %i.at to i8
  %i.br = getelementptr i8, ptr %i.bn, i64 %i.bl
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !205
  %.pre11.i.peel = load i64, ptr %i.m, align 8, !tbaa !279
  br label %bb.v

bb.u:                                             ; preds = %.critedge.i.peel
  %i.bs = getelementptr [4 x i8], ptr %i.bn, i64 %i.bl
  store i32 %i.bd, ptr %i.bs, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bt = phi i64 [ %.pre11.i.peel, %bb.t ], [ %i.bl, %bb.s ], [ %i.bl, %bb.u ]
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.m, align 8, !tbaa !279
  %exitcond.peel.not = icmp eq ptr %i.ar, %i.r
  br i1 %exitcond.peel.not, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.pre = load i8, ptr %i.ar, align 1, !tbaa !205 ; 9 uses
  %i.bv = add i8 %.pre, -65
  %or.cond = icmp ult i8 %i.bv, 26                ; 2 uses
  %i.bw = add i8 %.pre, -97
  %or.cond3 = icmp ult i8 %i.bw, 26               ; 2 uses
  %or.cond140 = or i1 %or.cond, %or.cond3
  br i1 %or.cond140, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = icmp eq i8 %.pre, 43
  %i.by = add i8 %.pre, -47
  %i.bz = icmp ult i8 %i.by, 11
  %or.cond9 = or i1 %i.bx, %i.bz
  br i1 %or.cond9, label %bb.ac, label %._crit_edge487

bb.y:                                             ; preds = %bb.w
  %i.ca = zext nneg i8 %.pre to i32               ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ax, 6                ; 3 uses
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cc = add nsw i32 %i.ca, -65
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  br i1 %or.cond3, label %bb.ab, label %.thread209

bb.ab:                                            ; preds = %bb.aa
  %i.cd = add nsw i32 %i.ca, -71
  br label %bb.ae

bb.ac:                                            ; preds = %bb.x
  %i.ce = shl nuw nsw i64 %i.ax, 6                ; 2 uses
  %i.cf = add nsw i8 %.pre, -48
  %or.cond15 = icmp ult i8 %i.cf, 10
  br i1 %or.cond15, label %bb.ad, label %.thread209

bb.ad:                                            ; preds = %bb.ac
  %narrow = add nuw nsw i8 %.pre, 4
  %i.cg = zext nneg i8 %narrow to i32
  br label %bb.ae

.thread209:                                       ; preds = %bb.aa, %bb.ac
  %i.ch = phi i64 [ %i.ce, %bb.ac ], [ %i.cb, %bb.aa ]
  %i.ci = icmp eq i8 %.pre, 43
  %i.cj = select i1 %i.ci, i32 62, i32 63
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %.thread209, %bb.ad, %bb.z
  %i.ck = phi i64 [ %i.cb, %bb.z ], [ %i.cb, %bb.ab ], [ %i.ce, %bb.ad ], [ %i.ch, %.thread209 ]
  %i.cl = phi i32 [ %i.cc, %bb.z ], [ %i.cd, %bb.ab ], [ %i.cg, %bb.ad ], [ %i.cj, %.thread209 ]
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = or i64 %i.ck, %i.cm                     ; 3 uses
  %5 = getelementptr i8, ptr %.promoted, i64 2    ; 2 uses
  %6 = add i32 %.0115.ph, -20
  %7 = icmp ult i32 %6, -16
  br i1 %7, label %.loopexit233.loopexit, label %.thread217.loopexit.loopexit

.loopexit476:                                     ; preds = %bb.o
  store ptr %i.ar, ptr %i.a, align 8
  %i.co = load i32, ptr %i.k, align 4, !tbaa !276
  %.not.i144 = icmp ugt i32 %.0108.ph, %i.co
  br i1 %.not.i144, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.loopexit476
  %i.cp = load i64, ptr %i.l, align 8, !tbaa !278
  %i.cq = load i64, ptr %i.m, align 8, !tbaa !279 ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.critedge.i148, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit476
  %i.ct = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %.0108.ph) #33
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %.thread213, label %..critedge_crit_edge.i145

..critedge_crit_edge.i145:                        ; preds = %bb.ag
  %.pre.i147 = load i64, ptr %i.m, align 8, !tbaa !279
  br label %.critedge.i148

.critedge.i148:                                   ; preds = %..critedge_crit_edge.i145, %bb.af
  %i.cv = phi i64 [ %.pre.i147, %..critedge_crit_edge.i145 ], [ %i.cq, %bb.af ] ; 5 uses
  %i.cw = load i32, ptr %i.n, align 8, !tbaa !280
  %i.cx = load ptr, ptr %i.o, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.cw, label %bb.aj [
    i32 1, label %bb.ah
    i32 2, label %bb.ai
  ]

bb.ah:                                            ; preds = %.critedge.i148
  %i.cy = trunc i32 %.0108.ph to i8
  %i.cz = getelementptr i8, ptr %i.cx, i64 %i.cv
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !205
  %.pre11.i151 = load i64, ptr %i.m, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit152

bb.ai:                                            ; preds = %.critedge.i148
  %i.da = trunc i32 %.0108.ph to i16
  %i.db = getelementptr [2 x i8], ptr %i.cx, i64 %i.cv
  store i16 %i.da, ptr %i.db, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit152

bb.aj:                                            ; preds = %.critedge.i148
  %i.dc = getelementptr [4 x i8], ptr %i.cx, i64 %i.cv
  store i32 %.0108.ph, ptr %i.dc, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit152

_PyUnicodeWriter_WriteCharInline.exit152:         ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.dd = phi i64 [ %.pre11.i151, %bb.ah ], [ %i.cv, %bb.ai ], [ %i.cv, %bb.aj ]
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %i.m, align 8, !tbaa !279
  br label %bb.ak

.loopexit233.loopexit:                            ; preds = %bb.ae
  %indvars.iv.next = add i32 %.0115.ph, -20       ; 3 uses
  %notmask = shl nsw i32 -1, %indvars.iv.next
  %i.df = xor i32 %notmask, -1
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = and i64 %i.cn, %i.dg
  %i.di = zext nneg i32 %indvars.iv.next to i64
  %i.dj = lshr i64 %i.cn, %i.di                   ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  br label %.loopexit233

.loopexit233:                                     ; preds = %bb.n, %.loopexit233.loopexit
  %.lcssa421 = phi i32 [ %indvars.iv.next, %.loopexit233.loopexit ], [ %indvars.peel, %bb.n ]
  %.lcssa417 = phi i64 [ %i.dj, %.loopexit233.loopexit ], [ %i.at, %bb.n ]
  %.lcssa413 = phi i32 [ %i.dk, %.loopexit233.loopexit ], [ %i.au, %bb.n ] ; 2 uses
  %.lcssa409 = phi i64 [ %i.dh, %.loopexit233.loopexit ], [ %i.ax, %bb.n ]
  %.lcssa395 = phi ptr [ %5, %.loopexit233.loopexit ], [ %i.ar, %bb.n ]
  store ptr %.lcssa395, ptr %i.a, align 8
  %.pre486 = and i32 %.lcssa413, -1024
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit233, %_PyUnicodeWriter_WriteCharInline.exit152
  %.pre-phi = phi i32 [ %.pre486, %.loopexit233 ], [ %i.ay, %_PyUnicodeWriter_WriteCharInline.exit152 ]
  %i.dl = phi i32 [ %.lcssa421, %.loopexit233 ], [ %indvars.peel, %_PyUnicodeWriter_WriteCharInline.exit152 ] ; 2 uses
  %i.dm = phi i64 [ %.lcssa417, %.loopexit233 ], [ %i.at, %_PyUnicodeWriter_WriteCharInline.exit152 ] ; 2 uses
  %i.dn = phi i32 [ %.lcssa413, %.loopexit233 ], [ %i.au, %_PyUnicodeWriter_WriteCharInline.exit152 ] ; 4 uses
  %i.do = phi i64 [ %.lcssa409, %.loopexit233 ], [ %i.ax, %_PyUnicodeWriter_WriteCharInline.exit152 ] ; 2 uses
  %.not230 = icmp eq i32 %.pre-phi, 55296
  br i1 %.not230, label %.outer.outer.backedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dp = load i32, ptr %i.k, align 4, !tbaa !276
  %.not.i153 = icmp ult i32 %i.dp, %i.dn
  br i1 %.not.i153, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dq = load i64, ptr %i.l, align 8, !tbaa !278
  %i.dr = load i64, ptr %i.m, align 8, !tbaa !279 ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %.critedge.i157, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.du = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %i.dn) #33
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %.thread213, label %..critedge_crit_edge.i154

..critedge_crit_edge.i154:                        ; preds = %bb.an
  %.pre.i156 = load i64, ptr %i.m, align 8, !tbaa !279
  br label %.critedge.i157

.critedge.i157:                                   ; preds = %..critedge_crit_edge.i154, %bb.am
  %i.dw = phi i64 [ %.pre.i156, %..critedge_crit_edge.i154 ], [ %i.dr, %bb.am ] ; 5 uses
  %i.dx = load i32, ptr %i.n, align 8, !tbaa !280
  %i.dy = load ptr, ptr %i.o, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.dx, label %bb.aq [
    i32 1, label %bb.ao
    i32 2, label %bb.ap
  ]

bb.ao:                                            ; preds = %.critedge.i157
  %i.dz = trunc i64 %i.dm to i8
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.dw
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !205
  %.pre11.i160 = load i64, ptr %i.m, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit161

bb.ap:                                            ; preds = %.critedge.i157
  %i.eb = trunc i64 %i.dm to i16
  %i.ec = getelementptr [2 x i8], ptr %i.dy, i64 %i.dw
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit161

bb.aq:                                            ; preds = %.critedge.i157
  %i.ed = getelementptr [4 x i8], ptr %i.dy, i64 %i.dw
  store i32 %i.dn, ptr %i.ed, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit161

_PyUnicodeWriter_WriteCharInline.exit161:         ; preds = %bb.ao, %bb.ap, %bb.aq
  %i.ee = phi i64 [ %.pre11.i160, %bb.ao ], [ %i.dw, %bb.ap ], [ %i.dw, %bb.aq ]
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.m, align 8, !tbaa !279
  br label %.outer.outer.backedge

._crit_edge487:                                   ; preds = %bb.x, %bb.f
  %.pre-phi489 = phi i32 [ %.0115.ph, %bb.f ], [ %indvars.peel, %bb.x ] ; 6 uses
  %.0108348.lcssa388 = phi i32 [ %.0108.ph, %bb.f ], [ 0, %bb.x ] ; 8 uses
  %.0113347.lcssa382 = phi i64 [ %.0113.ph, %bb.f ], [ %i.ax, %bb.x ] ; 4 uses
  %.lcssa370 = phi ptr [ %.promoted, %bb.f ], [ %i.ar, %bb.x ] ; 4 uses
  %.lcssa363 = phi i8 [ %i.w, %bb.f ], [ %.pre, %bb.x ] ; 2 uses
  store ptr %.lcssa370, ptr %i.a, align 8
  %.not133 = icmp eq i32 %.pre-phi489, 0
  br i1 %.not133, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge487
  %i.eg = icmp ugt i32 %.pre-phi489, 5
  br i1 %i.eg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.eh = getelementptr i8, ptr %.lcssa370, i64 1
  br label %bb.by

bb.at:                                            ; preds = %bb.ar
  %.not134 = icmp eq i64 %.0113347.lcssa382, 0
  br i1 %.not134, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ei = getelementptr i8, ptr %.lcssa370, i64 1
  br label %bb.by

bb.av:                                            ; preds = %bb.at, %._crit_edge487
  %.0113347.lcssa382.lcssa = phi i64 [ 0, %bb.at ], [ %.0113347.lcssa382, %._crit_edge487 ] ; 2 uses
  %i.ej = icmp ne i32 %.0108348.lcssa388, 0
  %i.ek = icmp sgt i8 %.lcssa363, -1
  %or.cond17 = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond17, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.el = load i32, ptr %i.k, align 4, !tbaa !276
  %.not.i162 = icmp ugt i32 %.0108348.lcssa388, %i.el
  br i1 %.not.i162, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.em = load i64, ptr %i.l, align 8, !tbaa !278
  %i.en = load i64, ptr %i.m, align 8, !tbaa !279 ; 2 uses
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = icmp sgt i64 %i.eo, 0
  br i1 %i.ep, label %.critedge.i166, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.eq = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %.0108348.lcssa388) #33
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %.thread213, label %..critedge_crit_edge.i163

..critedge_crit_edge.i163:                        ; preds = %bb.ay
  %.pre.i165 = load i64, ptr %i.m, align 8, !tbaa !279
  br label %.critedge.i166

.critedge.i166:                                   ; preds = %..critedge_crit_edge.i163, %bb.ax
  %i.es = phi i64 [ %.pre.i165, %..critedge_crit_edge.i163 ], [ %i.en, %bb.ax ] ; 5 uses
  %i.et = load i32, ptr %i.n, align 8, !tbaa !280
  %i.eu = load ptr, ptr %i.o, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.et, label %bb.bb [
    i32 1, label %bb.az
    i32 2, label %bb.ba
  ]

bb.az:                                            ; preds = %.critedge.i166
  %i.ev = trunc i32 %.0108348.lcssa388 to i8
  %i.ew = getelementptr i8, ptr %i.eu, i64 %i.es
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !205
  %.pre11.i169 = load i64, ptr %i.m, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit170

bb.ba:                                            ; preds = %.critedge.i166
  %i.ex = trunc i32 %.0108348.lcssa388 to i16
  %i.ey = getelementptr [2 x i8], ptr %i.eu, i64 %i.es
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit170

bb.bb:                                            ; preds = %.critedge.i166
  %i.ez = getelementptr [4 x i8], ptr %i.eu, i64 %i.es
  store i32 %.0108348.lcssa388, ptr %i.ez, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit170

_PyUnicodeWriter_WriteCharInline.exit170:         ; preds = %bb.az, %bb.ba, %bb.bb
  %i.fa = phi i64 [ %.pre11.i169, %bb.az ], [ %i.es, %bb.ba ], [ %i.es, %bb.bb ]
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.m, align 8, !tbaa !279
  br label %bb.bc

bb.bc:                                            ; preds = %_PyUnicodeWriter_WriteCharInline.exit170, %bb.av
  %i.fc = icmp eq i8 %.lcssa363, 45
  br i1 %i.fc, label %bb.bd, label %.outer.outer.backedge

bb.bd:                                            ; preds = %bb.bc
  %i.fd = getelementptr i8, ptr %.lcssa370, i64 1
  store ptr %i.fd, ptr %i.a, align 8, !tbaa !355
  br label %.outer.outer.backedge

.loopexit:                                        ; preds = %.lr.ph.preheader, %.thread
  %i.fe = phi ptr [ %i.hw, %.thread ], [ %i.r, %.lr.ph.preheader ]
  %.0115270 = phi i32 [ %.0115.lcssa, %.thread ], [ %.0115.ph, %.lr.ph.preheader ] ; 4 uses
  %.0113260 = phi i64 [ %.0113.lcssa, %.thread ], [ %.0113.ph, %.lr.ph.preheader ] ; 4 uses
  %.0108250 = phi i32 [ %.0108.lcssa, %.thread ], [ %.0108.ph, %.lr.ph.preheader ] ; 4 uses
  %i.ff = phi i32 [ %i.hz, %.thread ], [ %i.x, %.lr.ph.preheader ] ; 4 uses
  %i.fg = phi i8 [ %i.hy, %.thread ], [ %i.w, %.lr.ph.preheader ] ; 3 uses
  %i.fh = phi ptr [ %i.hv, %.thread ], [ %.promoted, %.lr.ph.preheader ] ; 7 uses
  %i.fi = icmp eq i8 %i.fg, 43
  br i1 %i.fi, label %bb.be, label %bb.bq

bb.be:                                            ; preds = %.loopexit
  %i.fj = load ptr, ptr %i.b, align 8, !tbaa !355
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 4 uses
  store i64 %i.fm, ptr %i.c, align 8, !tbaa !193
  %i.fn = getelementptr i8, ptr %i.fh, i64 1      ; 3 uses
  store ptr %i.fn, ptr %i.a, align 8, !tbaa !355
  %i.fo = icmp ult ptr %i.fn, %i.fe
  br i1 %i.fo, label %bb.bf, label %bb.bp

bb.bf:                                            ; preds = %bb.be
  %i.fp = load i8, ptr %i.fn, align 1, !tbaa !205 ; 4 uses
  %i.fq = icmp eq i8 %i.fp, 45
  br i1 %i.fq, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  %i.fr = getelementptr i8, ptr %i.fh, i64 2
  store ptr %i.fr, ptr %i.a, align 8, !tbaa !355
  %i.fs = load i32, ptr %i.k, align 4, !tbaa !276
  %.not.i171 = icmp ult i32 %i.fs, 43
  br i1 %.not.i171, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ft = load i64, ptr %i.l, align 8, !tbaa !278
  %i.fu = load i64, ptr %i.m, align 8, !tbaa !279 ; 2 uses
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = icmp sgt i64 %i.fv, 0
  br i1 %i.fw, label %.critedge.i175, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fx = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef 43) #33
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %.thread213, label %..critedge_crit_edge.i172

..critedge_crit_edge.i172:                        ; preds = %bb.bi
  %.pre.i174 = load i64, ptr %i.m, align 8, !tbaa !279
  br label %.critedge.i175

.critedge.i175:                                   ; preds = %..critedge_crit_edge.i172, %bb.bh
  %i.fz = phi i64 [ %.pre.i174, %..critedge_crit_edge.i172 ], [ %i.fu, %bb.bh ] ; 5 uses
  %i.ga = load i32, ptr %i.n, align 8, !tbaa !280
  %i.gb = load ptr, ptr %i.o, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.ga, label %bb.bl [
    i32 1, label %bb.bj
    i32 2, label %bb.bk
  ]

bb.bj:                                            ; preds = %.critedge.i175
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.fz
  store i8 43, ptr %i.gc, align 1, !tbaa !205
  %.pre11.i178 = load i64, ptr %i.m, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit179

bb.bk:                                            ; preds = %.critedge.i175
  %i.gd = getelementptr [2 x i8], ptr %i.gb, i64 %i.fz
  store i16 43, ptr %i.gd, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit179

bb.bl:                                            ; preds = %.critedge.i175
  %i.ge = getelementptr [4 x i8], ptr %i.gb, i64 %i.fz
  store i32 43, ptr %i.ge, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit179

_PyUnicodeWriter_WriteCharInline.exit179:         ; preds = %bb.bj, %bb.bk, %bb.bl
  %i.gf = phi i64 [ %.pre11.i178, %bb.bj ], [ %i.fz, %bb.bk ], [ %i.fz, %bb.bl ]
  %i.gg = add i64 %i.gf, 1
  store i64 %i.gg, ptr %i.m, align 8, !tbaa !279
  br label %.outer.outer.backedge

bb.bm:                                            ; preds = %bb.bf
  %i.gh = and i8 %i.fp, -33
  %i.gi = add i8 %i.gh, -65
  %or.cond231 = icmp ult i8 %i.gi, 26
  %i.gj = add i8 %i.fp, -48
  %or.cond143 = icmp ult i8 %i.gj, 10
  %or.cond232 = or i1 %or.cond143, %or.cond231
  br i1 %or.cond232, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  switch i8 %i.fp, label %bb.bo [
    i8 43, label %bb.bp
    i8 47, label %bb.bp
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.gk = getelementptr i8, ptr %i.fh, i64 2
  br label %bb.by

bb.bp:                                            ; preds = %bb.be, %bb.bn, %bb.bn, %bb.bm
  %i.gl = load i64, ptr %i.m, align 8, !tbaa !279
  br label %.outer.outer.backedge

bb.bq:                                            ; preds = %.loopexit
  %i.gm = icmp sgt i8 %i.fg, -1
  br i1 %i.gm, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %bb.bq
  %i.gn = getelementptr i8, ptr %i.fh, i64 1
  store ptr %i.gn, ptr %i.a, align 8, !tbaa !355
  %i.go = load i32, ptr %i.k, align 4, !tbaa !276
  %.not.i180 = icmp ugt i32 %i.ff, %i.go
  br i1 %.not.i180, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gp = load i64, ptr %i.l, align 8, !tbaa !278
  %i.gq = load i64, ptr %i.m, align 8, !tbaa !279 ; 2 uses
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = icmp sgt i64 %i.gr, 0
  br i1 %i.gs, label %.critedge.i184, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.gt = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %i.ff) #33
  %i.gu = icmp slt i32 %i.gt, 0
  br i1 %i.gu, label %.thread213, label %..critedge_crit_edge.i181

..critedge_crit_edge.i181:                        ; preds = %bb.bt
  %.pre.i183 = load i64, ptr %i.m, align 8, !tbaa !279
  br label %.critedge.i184

.critedge.i184:                                   ; preds = %..critedge_crit_edge.i181, %bb.bs
  %i.gv = phi i64 [ %.pre.i183, %..critedge_crit_edge.i181 ], [ %i.gq, %bb.bs ] ; 5 uses
  %i.gw = load i32, ptr %i.n, align 8, !tbaa !280
  %i.gx = load ptr, ptr %i.o, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.gw, label %bb.bw [
    i32 1, label %bb.bu
    i32 2, label %bb.bv
  ]

bb.bu:                                            ; preds = %.critedge.i184
  %i.gy = getelementptr i8, ptr %i.gx, i64 %i.gv
  store i8 %i.fg, ptr %i.gy, align 1, !tbaa !205
  %.pre11.i187 = load i64, ptr %i.m, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit188

bb.bv:                                            ; preds = %.critedge.i184
  %i.gz = trunc nuw nsw i32 %i.ff to i16
  %i.ha = getelementptr [2 x i8], ptr %i.gx, i64 %i.gv
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit188

bb.bw:                                            ; preds = %.critedge.i184
  %i.hb = getelementptr [4 x i8], ptr %i.gx, i64 %i.gv
  store i32 %i.ff, ptr %i.hb, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit188

_PyUnicodeWriter_WriteCharInline.exit188:         ; preds = %bb.bu, %bb.bv, %bb.bw
  %i.hc = phi i64 [ %.pre11.i187, %bb.bu ], [ %i.gv, %bb.bv ], [ %i.gv, %bb.bw ]
  %i.hd = add i64 %i.hc, 1
  store i64 %i.hd, ptr %i.m, align 8, !tbaa !279
  br label %.outer.outer.backedge

bb.bx:                                            ; preds = %bb.bq
  %i.he = load ptr, ptr %i.b, align 8, !tbaa !355
  %i.hf = ptrtoint ptr %i.fh to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg                    ; 2 uses
  store i64 %i.hh, ptr %i.c, align 8, !tbaa !193
  %i.hi = getelementptr i8, ptr %i.fh, i64 1
  br label %bb.by

.thread217.loopexit.loopexit:                     ; preds = %bb.ae
  %8 = add nuw nsw i32 %indvars.peel, 6
  br label %.thread217.loopexit

.thread217.loopexit:                              ; preds = %bb.m, %.thread217.loopexit.loopexit
  %.lcssa404 = phi i64 [ %i.cn, %.thread217.loopexit.loopexit ], [ %i.ap, %bb.m ]
  %.lcssa399 = phi i32 [ %8, %.thread217.loopexit.loopexit ], [ %i.aq, %bb.m ]
  %.lcssa394 = phi ptr [ %5, %.thread217.loopexit.loopexit ], [ %i.ar, %bb.m ]
  %.0108348.lcssa389 = phi i32 [ 0, %.thread217.loopexit.loopexit ], [ %.0108.ph, %bb.m ]
  store ptr %.lcssa394, ptr %i.a, align 8
  br label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %.thread217.loopexit, %bb.ak, %_PyUnicodeWriter_WriteCharInline.exit161, %_PyUnicodeWriter_WriteCharInline.exit188, %_PyUnicodeWriter_WriteCharInline.exit179, %bb.bp, %bb.bd, %bb.bc
  %.ph.ph.be = phi i64 [ %.ph, %_PyUnicodeWriter_WriteCharInline.exit188 ], [ %.ph, %bb.ak ], [ %.ph, %bb.bd ], [ %.ph, %bb.bc ], [ %i.fm, %_PyUnicodeWriter_WriteCharInline.exit179 ], [ %i.fm, %bb.bp ], [ %.ph, %_PyUnicodeWriter_WriteCharInline.exit161 ], [ %.ph, %.thread217.loopexit ]
  %.0115.ph.ph.be = phi i32 [ %.0115270, %_PyUnicodeWriter_WriteCharInline.exit188 ], [ %i.dl, %bb.ak ], [ %.pre-phi489, %bb.bd ], [ %.pre-phi489, %bb.bc ], [ %.0115270, %_PyUnicodeWriter_WriteCharInline.exit179 ], [ 0, %bb.bp ], [ %i.dl, %_PyUnicodeWriter_WriteCharInline.exit161 ], [ %.lcssa399, %.thread217.loopexit ]
  %.0113.ph.ph.be = phi i64 [ %.0113260, %_PyUnicodeWriter_WriteCharInline.exit188 ], [ %i.do, %bb.ak ], [ %.0113347.lcssa382.lcssa, %bb.bd ], [ %.0113347.lcssa382.lcssa, %bb.bc ], [ %.0113260, %_PyUnicodeWriter_WriteCharInline.exit179 ], [ 0, %bb.bp ], [ %i.do, %_PyUnicodeWriter_WriteCharInline.exit161 ], [ %.lcssa404, %.thread217.loopexit ]
  %.0108.ph.ph.be = phi i32 [ %.0108250, %_PyUnicodeWriter_WriteCharInline.exit188 ], [ %i.dn, %bb.ak ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ %.0108250, %_PyUnicodeWriter_WriteCharInline.exit179 ], [ 0, %bb.bp ], [ 0, %_PyUnicodeWriter_WriteCharInline.exit161 ], [ %.0108348.lcssa389, %.thread217.loopexit ]
  %.0104.ph.ph.be = phi i64 [ %.0104.ph.ph, %_PyUnicodeWriter_WriteCharInline.exit188 ], [ %.0104.ph.ph, %bb.ak ], [ %.0104.ph.ph, %bb.bd ], [ %.0104.ph.ph, %bb.bc ], [ %.0104.ph.ph, %_PyUnicodeWriter_WriteCharInline.exit179 ], [ %i.gl, %bb.bp ], [ %.0104.ph.ph, %_PyUnicodeWriter_WriteCharInline.exit161 ], [ %.0104.ph.ph, %.thread217.loopexit ]
  %.be = phi i1 [ true, %_PyUnicodeWriter_WriteCharInline.exit188 ], [ false, %bb.ak ], [ true, %bb.bd ], [ true, %bb.bc ], [ true, %_PyUnicodeWriter_WriteCharInline.exit179 ], [ false, %bb.bp ], [ false, %_PyUnicodeWriter_WriteCharInline.exit161 ], [ false, %.thread217.loopexit ]
  br label %.outer.outer, !llvm.loop !493

bb.by:                                            ; preds = %bb.bx, %bb.bo, %bb.au, %bb.as
  %.sink = phi ptr [ %i.hi, %bb.bx ], [ %i.gk, %bb.bo ], [ %i.ei, %bb.au ], [ %i.eh, %bb.as ] ; 2 uses
  %.0115269 = phi i32 [ %.0115270, %bb.bx ], [ %.0115270, %bb.bo ], [ %.pre-phi489, %bb.au ], [ %.pre-phi489, %bb.as ]
  %.0113259 = phi i64 [ %.0113260, %bb.bx ], [ %.0113260, %bb.bo ], [ %.0113347.lcssa382, %bb.au ], [ %.0113347.lcssa382, %bb.as ]
  %.0108249 = phi i32 [ %.0108250, %bb.bx ], [ %.0108250, %bb.bo ], [ %.0108348.lcssa388, %bb.au ], [ %.0108348.lcssa388, %bb.as ]
  %i.hj = phi i64 [ %i.hh, %bb.bx ], [ %i.fm, %bb.bo ], [ %.ph, %bb.au ], [ %.ph, %bb.as ]
  %.0102 = phi ptr [ @.str.63, %bb.bx ], [ @.str.62, %bb.bo ], [ @.str.61, %bb.au ], [ @.str.60, %bb.as ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !355
  %i.hk = load ptr, ptr %i.b, align 8, !tbaa !355
  %i.hl = ptrtoint ptr %.sink to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  store i64 %i.hn, ptr %i.d, align 8, !tbaa !193
  %i.ho = call fastcc i32 @unicode_decode_call_errorhandler_writer(ptr noundef %2, ptr noundef %i.f, ptr noundef nonnull @.str.64, ptr noundef nonnull %.0102, ptr noundef %i.b, ptr noundef %i.e, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.g, ptr noundef %i.a, ptr noundef nonnull %4)
  %.not135 = icmp eq i32 %i.ho, 0
  br i1 %.not135, label %.outer, label %.thread213, !llvm.loop !493

._crit_edge:                                      ; preds = %bb.v, %.outer
  %i.hp = phi ptr [ %.promoted, %.outer ], [ %scevgep, %bb.v ] ; 2 uses
  %.0115.lcssa = phi i32 [ %.0115.ph, %.outer ], [ %indvars.peel, %bb.v ] ; 3 uses
  %.0113.lcssa = phi i64 [ %.0113.ph, %.outer ], [ %i.ax, %bb.v ] ; 2 uses
  %.0108.lcssa = phi i32 [ %.0108.ph, %.outer ], [ 0, %bb.v ] ; 2 uses
  store ptr %i.hp, ptr %i.a, align 8
  %or.cond23 = or i1 %i.p, %.0103.ph
  br i1 %or.cond23, label %bb.cd, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge
  %i.hq = icmp ne i32 %.0108.lcssa, 0
  %i.hr = icmp ugt i32 %.0115.lcssa, 5
  %or.cond25 = select i1 %i.hq, i1 true, i1 %i.hr
  br i1 %or.cond25, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hs = icmp ne i32 %.0115.lcssa, 0
  %i.ht = icmp ne i64 %.0113.lcssa, 0
  %or.cond27 = select i1 %i.hs, i1 %i.ht, i1 false
  br i1 %or.cond27, label %bb.cb, label %.thread225

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store i64 %1, ptr %i.d, align 8, !tbaa !193
  %i.hu = call fastcc i32 @unicode_decode_call_errorhandler_writer(ptr noundef %2, ptr noundef %i.f, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, ptr noundef %i.b, ptr noundef %i.e, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.g, ptr noundef %i.a, ptr noundef nonnull %4)
  %.not = icmp eq i32 %i.hu, 0
  br i1 %.not, label %bb.cc, label %.thread213

bb.cc:                                            ; preds = %bb.cb
  %i.hv = load ptr, ptr %i.a, align 8, !tbaa !355 ; 3 uses
  %i.hw = load ptr, ptr %i.e, align 8, !tbaa !355 ; 2 uses
  %i.hx = icmp ult ptr %i.hv, %i.hw
  br i1 %i.hx, label %.thread, label %.thread225

.thread:                                          ; preds = %bb.cc
  %i.hy = load i8, ptr %i.hv, align 1, !tbaa !205 ; 2 uses
  %i.hz = zext i8 %i.hy to i32
  br label %.loopexit

bb.cd:                                            ; preds = %._crit_edge
  br i1 %i.p, label %bb.ce, label %.thread225

bb.ce:                                            ; preds = %bb.cd
  br i1 %.0103.ph, label %bb.co, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i64 %.ph, ptr %3, align 8, !tbaa !193
  %i.ia = load i64, ptr %i.m, align 8, !tbaa !279
  %i.ib = icmp ne i64 %i.ia, %.0104.ph.ph
  %i.ic = load i32, ptr %i.k, align 4
  %i.id = icmp ugt i32 %i.ic, 127
  %or.cond30 = select i1 %i.ib, i1 %i.id, i1 false
  br i1 %or.cond30, label %bb.cg, label %bb.cn

bb.cg:                                            ; preds = %bb.cf
  %i.ie = load i32, ptr %i.n, align 8, !tbaa !280
  %i.if = load ptr, ptr %i.o, align 8, !tbaa !281
  %i.ig = call ptr @PyUnicode_FromKindAndData(i32 noundef %i.ie, ptr noundef %i.if, i64 noundef %.0104.ph.ph)
  %i.ih = load ptr, ptr %i.f, align 8, !tbaa !194 ; 4 uses
  %.not.i189 = icmp eq ptr %i.ih, null
  br i1 %.not.i189, label %Py_XDECREF.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !205 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ii, -1
  br i1 %.not.i.i, label %bb.ci, label %Py_XDECREF.exit

bb.ci:                                            ; preds = %bb.ch
  %i.ij = add nsw i32 %i.ii, -1                   ; 2 uses
  store i32 %i.ij, ptr %i.ih, align 8, !tbaa !205
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.cj, label %Py_XDECREF.exit

bb.cj:                                            ; preds = %bb.ci
  call void @_Py_Dealloc(ptr noundef nonnull %i.ih) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.cg, %bb.ch, %bb.ci, %bb.cj
  %i.il = load ptr, ptr %i.g, align 8, !tbaa !194 ; 4 uses
  %.not.i190 = icmp eq ptr %i.il, null
  br i1 %.not.i190, label %Py_XDECREF.exit192, label %bb.ck

bb.ck:                                            ; preds = %Py_XDECREF.exit
  %i.im = load i32, ptr %i.il, align 8, !tbaa !205 ; 2 uses
  %.not.i.i191 = icmp sgt i32 %i.im, -1
  br i1 %.not.i.i191, label %bb.cl, label %Py_XDECREF.exit192

bb.cl:                                            ; preds = %bb.ck
  %i.in = add nsw i32 %i.im, -1                   ; 2 uses
  store i32 %i.in, ptr %i.il, align 8, !tbaa !205
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.cm, label %Py_XDECREF.exit192

bb.cm:                                            ; preds = %bb.cl
  call void @_Py_Dealloc(ptr noundef nonnull %i.il) #33
  br label %Py_XDECREF.exit192

Py_XDECREF.exit192:                               ; preds = %Py_XDECREF.exit, %bb.ck, %bb.cl, %bb.cm
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %4) #33
  br label %bb.db

bb.cn:                                            ; preds = %bb.cf
  store i64 %.0104.ph.ph, ptr %i.m, align 8, !tbaa !279
  br label %.thread225

bb.co:                                            ; preds = %bb.ce
  %i.ip = load ptr, ptr %i.b, align 8, !tbaa !355
  %i.iq = ptrtoint ptr %i.hp to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir
  store i64 %i.is, ptr %3, align 8, !tbaa !193
  br label %.thread225

.thread225:                                       ; preds = %bb.cc, %bb.ca, %bb.cn, %bb.co, %bb.cd
  %i.it = load ptr, ptr %i.f, align 8, !tbaa !194 ; 4 uses
  %.not.i193 = icmp eq ptr %i.it, null
  br i1 %.not.i193, label %Py_XDECREF.exit195, label %bb.cp

bb.cp:                                            ; preds = %.thread225
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !205 ; 2 uses
  %.not.i.i194 = icmp sgt i32 %i.iu, -1
  br i1 %.not.i.i194, label %bb.cq, label %Py_XDECREF.exit195

bb.cq:                                            ; preds = %bb.cp
  %i.iv = add nsw i32 %i.iu, -1                   ; 2 uses
  store i32 %i.iv, ptr %i.it, align 8, !tbaa !205
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.cr, label %Py_XDECREF.exit195

bb.cr:                                            ; preds = %bb.cq
  call void @_Py_Dealloc(ptr noundef nonnull %i.it) #33
  br label %Py_XDECREF.exit195

Py_XDECREF.exit195:                               ; preds = %.thread225, %bb.cp, %bb.cq, %bb.cr
  %i.ix = load ptr, ptr %i.g, align 8, !tbaa !194 ; 4 uses
  %.not.i196 = icmp eq ptr %i.ix, null
  br i1 %.not.i196, label %Py_XDECREF.exit198, label %bb.cs

bb.cs:                                            ; preds = %Py_XDECREF.exit195
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !205 ; 2 uses
  %.not.i.i197 = icmp sgt i32 %i.iy, -1
  br i1 %.not.i.i197, label %bb.ct, label %Py_XDECREF.exit198

bb.ct:                                            ; preds = %bb.cs
  %i.iz = add nsw i32 %i.iy, -1                   ; 2 uses
  store i32 %i.iz, ptr %i.ix, align 8, !tbaa !205
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.cu, label %Py_XDECREF.exit198

bb.cu:                                            ; preds = %bb.ct
  call void @_Py_Dealloc(ptr noundef nonnull %i.ix) #33
  br label %Py_XDECREF.exit198

Py_XDECREF.exit198:                               ; preds = %Py_XDECREF.exit195, %bb.cs, %bb.ct, %bb.cu
  %i.jb = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %4) #33
  br label %bb.db

.thread213:                                       ; preds = %bb.bt, %bb.bi, %bb.ay, %bb.ag, %bb.an, %bb.cb, %bb.by, %bb.r
  %i.jc = load ptr, ptr %i.f, align 8, !tbaa !194 ; 4 uses
  %.not.i199 = icmp eq ptr %i.jc, null
  br i1 %.not.i199, label %Py_XDECREF.exit201, label %bb.cv

bb.cv:                                            ; preds = %.thread213
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !205 ; 2 uses
  %.not.i.i200 = icmp sgt i32 %i.jd, -1
  br i1 %.not.i.i200, label %bb.cw, label %Py_XDECREF.exit201

bb.cw:                                            ; preds = %bb.cv
  %i.je = add nsw i32 %i.jd, -1                   ; 2 uses
  store i32 %i.je, ptr %i.jc, align 8, !tbaa !205
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.cx, label %Py_XDECREF.exit201
end_hunk_0
