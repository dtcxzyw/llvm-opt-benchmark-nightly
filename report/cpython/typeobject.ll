inline.NumInlined: 1348
inline.NumDeleted: 262
begin_hunk_0_@PyMem_Malloc
; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_best_base(ptr noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val40 = load i64, ptr %i.a, align 8, !tbaa !140 ; 2 uses
  %i.b = icmp sgt i64 %.val40, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %PyType_IsSubtype.exit.thread56
  %.02682 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %PyType_IsSubtype.exit.thread56 ] ; 2 uses
  %.02781 = phi ptr [ null, %.lr.ph ], [ %.330.ph, %PyType_IsSubtype.exit.thread56 ] ; 3 uses
  %.03180 = phi ptr [ null, %.lr.ph ], [ %.334.ph, %PyType_IsSubtype.exit.thread56 ] ; 9 uses
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %.02682
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115  ; 13 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !126
  %i.h = getelementptr i8, ptr %.val, i64 168
  %.val.val = load i64, ptr %i.h, align 8, !tbaa !118
  %i.i = and i64 %.val.val, 2147483648
  %.not70 = icmp eq i64 %i.i, 0
  br i1 %.not70, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.54) #24
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.f, i64 168      ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !118  ; 6 uses
  %i.m = and i64 %i.l, 2
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.o = getelementptr i8, ptr %i.f, i64 360
  %.val.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.p = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.q = add i64 %i.p, -1                         ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 180328
  %i.s = getelementptr [48 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.u = icmp eq ptr %i.t, %i.f
  %i.v = icmp ugt i64 %i.q, 10
  %or.cond.i.i.i.i.i = or i1 %i.u, %i.v
  %i.w = getelementptr i8, ptr %i.n, i64 190040
  %i.x = getelementptr [48 x i8], ptr %i.w, i64 %i.q
  %.0.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, ptr %i.s, ptr %i.x
  %i.y = getelementptr i8, ptr %.0.i.i.i.i.i, i64 24
  br label %_PyType_IsReady.exit

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.f, i64 264
  br label %_PyType_IsReady.exit

_PyType_IsReady.exit:                             ; preds = %bb.e, %bb.f
  %.0.in.i.i.i = phi ptr [ %i.y, %bb.e ], [ %i.z, %bb.f ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !115
  %.not = icmp eq ptr %.0.i.i.i, null
  %i.aa = and i64 %i.l, 4096
  %.not.i = icmp eq i64 %i.aa, 0
  %or.cond = and i1 %.not.i, %.not
  br i1 %or.cond, label %bb.g, label %PyType_Ready.exit.thread

bb.g:                                             ; preds = %_PyType_IsReady.exit
  %i.ab = and i64 %i.l, 512
  %.not8.i = icmp eq i64 %i.ab, 0
  br i1 %.not8.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = or i64 %i.l, 256
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !118
  tail call void @_Py_SetImmortalUntracked(ptr noundef nonnull %i.f) #24, !inline_history !217
  %.pre.i = load i64, ptr %i.k, align 8, !tbaa !118
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi i64 [ %.pre.i, %bb.h ], [ %i.l, %bb.g ] ; 2 uses
  %i.ae = and i64 %i.ad, 4096
  %.not9.i = icmp eq i64 %i.ae, 0
  br i1 %.not9.i, label %PyType_Ready.exit, label %PyType_Ready.exit.thread

PyType_Ready.exit:                                ; preds = %bb.i
  %i.af = tail call fastcc i32 @type_ready(ptr noundef nonnull %i.f, i32 noundef 1), !inline_history !217
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.loopexit, label %PyType_Ready.exit.PyType_Ready.exit.thread_crit_edge

PyType_Ready.exit.PyType_Ready.exit.thread_crit_edge: ; preds = %PyType_Ready.exit
  %.val39.pre = load i64, ptr %i.k, align 8, !tbaa !118
  br label %PyType_Ready.exit.thread

PyType_Ready.exit.thread:                         ; preds = %PyType_Ready.exit.PyType_Ready.exit.thread_crit_edge, %bb.i, %_PyType_IsReady.exit
  %.val39 = phi i64 [ %.val39.pre, %PyType_Ready.exit.PyType_Ready.exit.thread_crit_edge ], [ %i.ad, %bb.i ], [ %i.l, %_PyType_IsReady.exit ]
  %i.ah = and i64 %.val39, 1024
  %.not36 = icmp eq i64 %i.ah, 0
  br i1 %.not36, label %bb.j, label %bb.k

bb.j:                                             ; preds = %PyType_Ready.exit.thread
  %i.ai = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.aj = getelementptr i8, ptr %i.f, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !153
  %i.al = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ai, ptr noundef nonnull @.str.55, ptr noundef %i.ak) #24 ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %PyType_Ready.exit.thread
  %i.am = tail call fastcc ptr @solid_base(ptr noundef nonnull %i.f) ; 9 uses
  %i.an = icmp eq ptr %.03180, null
  br i1 %i.an, label %PyType_IsSubtype.exit.thread56, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr i8, ptr %.03180, i64 344
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !165 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %.val.i.i = load i64, ptr %i.aq, align 8, !tbaa !140 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 32
  %i.as = icmp sgt i64 %.val.i.i, 0
  br i1 %i.as, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.at = add nuw nsw i64 %.01013.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.n
  %.01013.i.i = phi i64 [ %i.at, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.ar, i64 %.01013.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !115
  %i.aw = icmp eq ptr %i.av, %i.am
  br i1 %i.aw, label %PyType_IsSubtype.exit.thread56, label %bb.n

.preheader.i.i:                                   ; preds = %bb.l, %bb.o
  %.05.i.i.i = phi ptr [ %i.az, %bb.o ], [ %.03180, %bb.l ] ; 2 uses
  %i.ax = icmp eq ptr %.05.i.i.i, %i.am
  br i1 %i.ax, label %PyType_IsSubtype.exit.thread56, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i
  %i.ay = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i41, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.o
  %.not71 = icmp eq ptr %i.am, @PyBaseObject_Type
  br i1 %.not71, label %PyType_IsSubtype.exit.thread56, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.n, %bb.m, %PyType_IsSubtype.exit
  %i.ba = getelementptr i8, ptr %i.am, i64 344
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !165 ; 3 uses
  %.not.i.i42 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i42, label %.preheader.i.i48, label %bb.p

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %.val.i.i43 = load i64, ptr %i.bc, align 8, !tbaa !140 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 32
  %i.be = icmp sgt i64 %.val.i.i43, 0
  br i1 %i.be, label %.lr.ph.i.i45, label %PyType_IsSubtype.exit51.thread

bb.q:                                             ; preds = %.lr.ph.i.i45
  %i.bf = add nuw nsw i64 %.01013.i.i46, 1        ; 2 uses
  %exitcond.not.i.i47 = icmp eq i64 %i.bf, %.val.i.i43
  br i1 %exitcond.not.i.i47, label %PyType_IsSubtype.exit51.thread, label %.lr.ph.i.i45, !llvm.loop !166

.lr.ph.i.i45:                                     ; preds = %bb.p, %bb.q
  %.01013.i.i46 = phi i64 [ %i.bf, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.bd, i64 %.01013.i.i46
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !115
  %i.bi = icmp eq ptr %i.bh, %.03180
  br i1 %i.bi, label %PyType_IsSubtype.exit.thread56, label %bb.q

.preheader.i.i48:                                 ; preds = %PyType_IsSubtype.exit.thread, %bb.r
  %.05.i.i.i49 = phi ptr [ %i.bl, %bb.r ], [ %i.am, %PyType_IsSubtype.exit.thread ] ; 2 uses
  %i.bj = icmp eq ptr %.05.i.i.i49, %.03180
  br i1 %i.bj, label %PyType_IsSubtype.exit.thread56, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i48
  %i.bk = getelementptr i8, ptr %.05.i.i.i49, i64 256
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i50, label %PyType_IsSubtype.exit51, label %.preheader.i.i48, !llvm.loop !168

PyType_IsSubtype.exit51:                          ; preds = %bb.r
  %.not72 = icmp eq ptr %.03180, @PyBaseObject_Type
  br i1 %.not72, label %PyType_IsSubtype.exit.thread56, label %PyType_IsSubtype.exit51.thread

PyType_IsSubtype.exit51.thread:                   ; preds = %bb.p, %PyType_IsSubtype.exit51, %bb.q
  %i.bm = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.bm, ptr noundef nonnull @.str.56) #24
  br label %.loopexit

PyType_IsSubtype.exit.thread56:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %.lr.ph.i.i45, %.preheader.i.i48, %PyType_IsSubtype.exit, %bb.k, %PyType_IsSubtype.exit51
  %.334.ph = phi ptr [ %i.am, %PyType_IsSubtype.exit51 ], [ %i.am, %bb.k ], [ %.03180, %PyType_IsSubtype.exit ], [ %i.am, %.lr.ph.i.i45 ], [ %.03180, %.preheader.i.i ], [ %i.am, %.preheader.i.i48 ], [ %.03180, %.lr.ph.i.i ]
  %.330.ph = phi ptr [ %i.f, %PyType_IsSubtype.exit51 ], [ %i.f, %bb.k ], [ %.02781, %PyType_IsSubtype.exit ], [ %i.f, %.lr.ph.i.i45 ], [ %.02781, %.preheader.i.i ], [ %i.f, %.preheader.i.i48 ], [ %.02781, %.lr.ph.i.i ] ; 2 uses
  %i.bn = add nuw nsw i64 %.02682, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %.val40
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !218

.loopexit:                                        ; preds = %PyType_IsSubtype.exit.thread56, %PyType_Ready.exit, %bb.a, %bb.c, %PyType_IsSubtype.exit51.thread, %bb.j
  %.3 = phi ptr [ null, %bb.c ], [ null, %bb.j ], [ null, %PyType_IsSubtype.exit51.thread ], [ null, %bb.a ], [ %.330.ph, %PyType_IsSubtype.exit.thread56 ], [ null, %PyType_Ready.exit ]
  ret ptr %.3
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @special_offset_from_member(ptr noundef readonly captures(address_is_null) %0, i64 noundef range(i64 0, -15) %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !122
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !219
  %.not = icmp eq i32 %i.c, 19
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  %i.e = load ptr, ptr %0, align 8, !tbaa !188
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.57, ptr noundef %i.e) #24 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !190
  switch i32 %i.h, label %bb.h [
    i32 1, label %bb.f
    i32 9, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !192
  store i64 %i.j, ptr %2, align 8, !tbaa !122
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !192
  %i.m = add i64 %i.l, %1
  store i64 %i.m, ptr %2, align 8, !tbaa !122
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  %i.o = load ptr, ptr %0, align 8, !tbaa !188
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.58, ptr noundef %i.o) #24 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ], [ -1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @subtype_dealloc(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val103 = load ptr, ptr %i.a, align 8, !tbaa !126 ; 16 uses
  %i.b = getelementptr i8, ptr %.val103, i64 168  ; 2 uses
  %.val104 = load i64, ptr %i.b, align 8, !tbaa !118
  %i.c = and i64 %.val104, 16384
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val103, i64 392
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !220
  %.not70 = icmp eq ptr %i.e, null
  br i1 %.not70, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @PyObject_CallFinalizerFromDealloc(ptr noundef nonnull %0) #24
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %Py_DECREF.exit97, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %.val103, i64 376
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !221  ; 2 uses
  %.not71 = icmp eq ptr %i.i, null
  br i1 %.not71, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.i(ptr noundef nonnull %0) #24
  %.val100 = load i32, ptr %0, align 8, !tbaa !112
  %.not72 = icmp eq i32 %.val100, 0
  br i1 %.not72, label %bb.f, label %Py_DECREF.exit97

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr i8, ptr %.val103, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !215  ; 2 uses
  %i.l = icmp eq ptr %i.k, @subtype_dealloc
  br i1 %i.l, label %.lr.ph124, label %._crit_edge125

.lr.ph124:                                        ; preds = %bb.f, %.lr.ph124
  %.0122 = phi ptr [ %i.n, %.lr.ph124 ], [ %.val103, %bb.f ]
  %i.m = getelementptr i8, ptr %.0122, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !167  ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !215  ; 2 uses
  %i.q = icmp eq ptr %i.p, @subtype_dealloc
  br i1 %i.q, label %.lr.ph124, label %._crit_edge125, !llvm.loop !222

._crit_edge125:                                   ; preds = %.lr.ph124, %bb.f
  %.0.lcssa = phi ptr [ %.val103, %bb.f ], [ %i.n, %.lr.ph124 ]
  %.lcssa = phi ptr [ %i.k, %bb.f ], [ %i.p, %.lr.ph124 ] ; 2 uses
  %.val102 = load ptr, ptr %i.a, align 8, !tbaa !126 ; 4 uses
  %i.r = getelementptr i8, ptr %.val102, i64 168
  %i.s = load i64, ptr %i.r, align 8, !tbaa !118
  %i.t = and i64 %i.s, 512
  %.not73 = icmp eq i64 %i.t, 0
  br i1 %.not73, label %.critedge, label %bb.g

bb.g:                                             ; preds = %._crit_edge125
  %i.u = getelementptr i8, ptr %.0.lcssa, i64 168
  %i.v = load i64, ptr %i.u, align 8, !tbaa !118
  %i.w = and i64 %i.v, 512
  %.not74 = icmp eq i64 %i.w, 0
  tail call void %.lcssa(ptr noundef nonnull %0) #24
  br i1 %.not74, label %bb.h, label %Py_DECREF.exit97

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %.val102, align 8, !tbaa !112 ; 2 uses
  %.not.i96 = icmp sgt i32 %i.x, -1
  br i1 %.not.i96, label %bb.i, label %Py_DECREF.exit97

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %.val102, align 8, !tbaa !112
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %Py_DECREF.exit97

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val102) #24
  br label %Py_DECREF.exit97

.critedge:                                        ; preds = %._crit_edge125
  tail call void %.lcssa(ptr noundef nonnull %0) #24
  br label %Py_DECREF.exit97

bb.k:                                             ; preds = %bb.a
  tail call void @PyObject_GC_UnTrack(ptr noundef nonnull %0) #24
  %i.aa = getelementptr i8, ptr %.val103, i64 48  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !215
  %i.ac = icmp eq ptr %i.ab, @subtype_dealloc
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.1114 = phi ptr [ %i.ae, %.lr.ph ], [ %.val103, %bb.k ]
  %i.ad = getelementptr i8, ptr %.1114, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !167 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !215
  %i.ah = icmp eq ptr %i.ag, @subtype_dealloc
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !223

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %.1.lcssa = phi ptr [ %.val103, %bb.k ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.val103, i64 392
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !220
  %.not75 = icmp eq ptr %i.aj, null
  br i1 %.not75, label %.thread, label %bb.l

.thread:                                          ; preds = %._crit_edge
  %i.ak = getelementptr i8, ptr %.val103, i64 376
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !221
  %i.am = icmp ne ptr %i.al, null
  br label %bb.p

bb.l:                                             ; preds = %._crit_edge
  %i.an = getelementptr i8, ptr %0, i64 -16       ; 4 uses
  %i.ao = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !26 ; 7 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 7408
  %i.ar = getelementptr i8, ptr %i.ap, i64 7416   ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !155 ; 2 uses
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.av = load i64, ptr %i.at, align 8, !tbaa !156
  %i.aw = and i64 %i.av, 3
  %i.ax = or i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.at, align 8, !tbaa !156
  %i.ay = getelementptr i8, ptr %0, i64 -8        ; 5 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !155
  %i.ba = and i64 %i.az, 3
  %i.bb = or i64 %i.ba, %i.as
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !155
  %i.bc = getelementptr i8, ptr %i.ap, i64 7672
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !157
  %i.be = xor i32 %i.bd, 1
  %i.bf = sext i32 %i.be to i64
end_hunk_0
begin_hunk_1_@object_new:bb.a

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #24
  br label %Py_DECREF.exit52

bb.s:                                             ; preds = %bb.o
  %i.ax = call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.188) #24 ; 5 uses
  %.not40 = icmp eq ptr %i.ax, null
  br i1 %.not40, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ay = load i32, ptr %i.ao, align 8, !tbaa !112 ; 2 uses
  %.not.i49 = icmp sgt i32 %i.ay, -1
  br i1 %.not.i49, label %bb.u, label %Py_DECREF.exit52

bb.u:                                             ; preds = %bb.t
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !112
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.v, label %Py_DECREF.exit52

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #24
  br label %Py_DECREF.exit52

bb.w:                                             ; preds = %bb.s
  %i.bb = call ptr @PyUnicode_Join(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ao) #24 ; 8 uses
  %i.bc = load i32, ptr %i.ax, align 8, !tbaa !112 ; 2 uses
  %.not.i47 = icmp sgt i32 %i.bc, -1
  br i1 %.not.i47, label %bb.x, label %Py_DECREF.exit48

bb.x:                                             ; preds = %bb.w
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.ax, align 8, !tbaa !112
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.y, label %Py_DECREF.exit48

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #24
  br label %Py_DECREF.exit48

Py_DECREF.exit48:                                 ; preds = %bb.w, %bb.x, %bb.y
  %i.bf = icmp eq ptr %i.bb, null
  br i1 %i.bf, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %Py_DECREF.exit48
  %i.bg = load i32, ptr %i.ao, align 8, !tbaa !112 ; 2 uses
  %.not.i45 = icmp sgt i32 %i.bg, -1
  br i1 %.not.i45, label %bb.aa, label %Py_DECREF.exit52

bb.aa:                                            ; preds = %bb.z
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.ao, align 8, !tbaa !112
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ab, label %Py_DECREF.exit52

bb.ab:                                            ; preds = %bb.aa
  call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #24
  br label %Py_DECREF.exit52

bb.ac:                                            ; preds = %Py_DECREF.exit48
  %i.bj = call i64 @PyObject_Size(ptr noundef nonnull %i.ao) #24 ; 2 uses
  %i.bk = load i32, ptr %i.ao, align 8, !tbaa !112 ; 2 uses
  %.not.i43 = icmp sgt i32 %i.bk, -1
  br i1 %.not.i43, label %bb.ad, label %Py_DECREF.exit44

bb.ad:                                            ; preds = %bb.ac
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.ao, align 8, !tbaa !112
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ae, label %Py_DECREF.exit44

bb.ae:                                            ; preds = %bb.ad
  call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #24
  br label %Py_DECREF.exit44

Py_DECREF.exit44:                                 ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bn = icmp eq i64 %i.bj, -1
  br i1 %i.bn, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %Py_DECREF.exit44
  %i.bo = load i32, ptr %i.bb, align 8, !tbaa !112 ; 2 uses
  %.not.i41 = icmp sgt i32 %i.bo, -1
  br i1 %.not.i41, label %bb.ag, label %Py_DECREF.exit52

bb.ag:                                            ; preds = %bb.af
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.bb, align 8, !tbaa !112
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ah, label %Py_DECREF.exit52

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.bb) #24
  br label %Py_DECREF.exit52

bb.ai:                                            ; preds = %Py_DECREF.exit44
  %i.br = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.bs = getelementptr i8, ptr %0, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !153
  %i.bu = icmp sgt i64 %i.bj, 1
  %i.bv = select i1 %i.bu, ptr @.str.190, ptr @.str.123
  %i.bw = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.br, ptr noundef nonnull @.str.189, ptr noundef %i.bt, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bb) #24 ; 0 uses
  %i.bx = load i32, ptr %i.bb, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.bx, -1
  br i1 %.not.i, label %bb.aj, label %Py_DECREF.exit52

bb.aj:                                            ; preds = %bb.ai
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %i.bb, align 8, !tbaa !112
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.ak, label %Py_DECREF.exit52

bb.ak:                                            ; preds = %bb.aj
  call void @_Py_Dealloc(ptr noundef nonnull %i.bb) #24
  br label %Py_DECREF.exit52

bb.al:                                            ; preds = %excess_args.exit.thread
  %i.ca = getelementptr i8, ptr %0, i64 304
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !164
  %i.cc = tail call ptr %i.cb(ptr noundef nonnull %0, i64 noundef 0) #24
  br label %Py_DECREF.exit52

Py_DECREF.exit52:                                 ; preds = %type_abstractmethods.exit.thread, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ab, %bb.aa, %bb.z, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %type_abstractmethods.exit, %Py_DECREF.exit54, %bb.al, %bb.f, %bb.d
  %.2 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.cc, %bb.al ], [ null, %Py_DECREF.exit54 ], [ null, %type_abstractmethods.exit ], [ null, %bb.ah ], [ null, %bb.ab ], [ null, %bb.v ], [ null, %bb.r ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.z ], [ null, %bb.aa ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %bb.ai ], [ null, %bb.aj ], [ null, %bb.ak ], [ null, %type_abstractmethods.exit.thread ]
  ret ptr %.2
}

declare void @PyObject_Free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyType_AddMethod(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @type_add_method(ptr noundef %0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @type_add_method(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !290  ; 2 uses
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  %i.d = and i32 %i.b, 32
  %.not46 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not46, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.191) #24
  br label %Py_DECREF.exit58

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @PyDescr_NewClassMethod(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  br i1 %.not46, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call fastcc ptr @type_module(ptr noundef %0) ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !115
  %i.j = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.i) #24
  %.not47 = icmp eq i32 %i.j, 0
  br i1 %.not47, label %Py_DECREF.exit58, label %.thread

.thread:                                          ; preds = %bb.g
  tail call void @PyErr_Clear() #24
  %i.k = tail call ptr @PyCMethod_New(ptr noundef nonnull %1, ptr noundef %0, ptr noundef null, ptr noundef null) #24
  br label %Py_XDECREF.exit

bb.h:                                             ; preds = %bb.f
  %i.l = tail call ptr @PyCMethod_New(ptr noundef nonnull %1, ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef null) #24 ; 3 uses
  %i.m = load i32, ptr %i.g, align 8, !tbaa !112  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i, label %bb.i, label %Py_XDECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.g, align 8, !tbaa !112
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_XDECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #24
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.thread, %bb.h, %bb.i, %bb.j
  %i.p = phi ptr [ %i.k, %.thread ], [ %i.l, %bb.j ], [ %i.l, %bb.h ], [ %i.l, %bb.i ] ; 5 uses
  %.not78 = icmp eq ptr %i.p, null
  br i1 %.not78, label %Py_DECREF.exit58, label %bb.k

bb.k:                                             ; preds = %Py_XDECREF.exit
  %i.q = tail call ptr @PyStaticMethod_New(ptr noundef nonnull %i.p) #24 ; 3 uses
  %i.r = load i32, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %.not.i57.a = icmp sgt i32 %i.r, -1
  br i1 %.not.i57.a, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.p, align 8, !tbaa !112
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #24
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.u = tail call ptr @PyDescr_NewMethod(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.n, %bb.d
  %.242 = phi i1 [ false, %bb.d ], [ false, %bb.n ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ] ; 2 uses
  %.239 = phi ptr [ %i.f, %bb.d ], [ %i.u, %bb.n ], [ %i.q, %bb.k ], [ %i.q, %bb.l ], [ %i.q, %bb.m ] ; 10 uses
  %i.v = icmp eq ptr %.239, null
  br i1 %i.v, label %Py_DECREF.exit58, label %.thread66

.thread66:                                        ; preds = %bb.o
  br i1 %.242, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread66
  %i.w = getelementptr i8, ptr %.239, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !270
  br label %bb.u

bb.q:                                             ; preds = %.thread66
  %i.y = load ptr, ptr %1, align 8, !tbaa !297
  %i.z = tail call ptr @PyUnicode_FromString(ptr noundef %i.y) #24 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ab = load i32, ptr %.239, align 8, !tbaa !112 ; 2 uses
  %.not.i55.a = icmp sgt i32 %i.ab, -1
  br i1 %.not.i55.a, label %bb.s, label %Py_DECREF.exit58

bb.s:                                             ; preds = %bb.r
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %.239, align 8, !tbaa !112
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.t, label %Py_DECREF.exit58

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %.239) #24
  br label %Py_DECREF.exit58

bb.u:                                             ; preds = %bb.q, %bb.p
  %.036 = phi ptr [ %i.x, %bb.p ], [ %i.z, %bb.q ] ; 5 uses
  %i.ae = getelementptr i8, ptr %0, i64 168
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !118
  %i.ag = and i64 %i.af, 2
  %.not.i63 = icmp eq i64 %i.ag, 0
  br i1 %.not.i63, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 360
  %.val.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !11
  %i.ak = ptrtoint ptr %.val.i.i.i to i64
  %i.al = add i64 %i.ak, -1                       ; 3 uses
  %i.am = getelementptr i8, ptr %i.ai, i64 180328
  %i.an = getelementptr [48 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24
  %i.ap = icmp eq ptr %i.ao, %0
  %i.aq = icmp ugt i64 %i.al, 10
  %or.cond.i.i.i = or i1 %i.ap, %i.aq
  %i.ar = getelementptr i8, ptr %i.ai, i64 190040
  %i.as = getelementptr [48 x i8], ptr %i.ar, i64 %i.al
  %.0.i.i.i = select i1 %or.cond.i.i.i, ptr %i.an, ptr %i.as
  %i.at = getelementptr i8, ptr %.0.i.i.i, i64 24
  br label %lookup_tp_dict.exit

bb.w:                                             ; preds = %bb.u
  %i.au = getelementptr i8, ptr %0, i64 264
  br label %lookup_tp_dict.exit

lookup_tp_dict.exit:                              ; preds = %bb.v, %bb.w
  %.0.in.i = phi ptr [ %i.at, %bb.v ], [ %i.au, %bb.w ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !115 ; 2 uses
  %i.av = load i32, ptr %i.a, align 8, !tbaa !290
  %i.aw = and i32 %i.av, 64
  %.not50 = icmp eq i32 %i.aw, 0
  br i1 %.not50, label %bb.x, label %bb.y

bb.x:                                             ; preds = %lookup_tp_dict.exit
  %i.ax = tail call i32 @PyDict_SetDefaultRef(ptr noundef %.0.i, ptr noundef %.036, ptr noundef nonnull %.239, ptr noundef null) #24
  br label %bb.z

bb.y:                                             ; preds = %lookup_tp_dict.exit
  %i.ay = tail call i32 @PyDict_SetItem(ptr noundef %.0.i, ptr noundef %.036, ptr noundef nonnull %.239) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.035.in = phi i32 [ %i.ay, %bb.y ], [ %i.ax, %bb.x ]
  br i1 %.242, label %bb.aa, label %Py_DECREF.exit54

bb.aa:                                            ; preds = %bb.z
  %i.az = load i32, ptr %.036, align 8, !tbaa !112 ; 2 uses
  %.not.i53 = icmp sgt i32 %i.az, -1
  br i1 %.not.i53, label %bb.ab, label %Py_DECREF.exit54

bb.ab:                                            ; preds = %bb.aa
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.ba, ptr %.036, align 8, !tbaa !112
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.ac, label %Py_DECREF.exit54

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %.036) #24
  br label %Py_DECREF.exit54

Py_DECREF.exit54:                                 ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.bc = load i32, ptr %.239, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i, label %bb.ad, label %Py_DECREF.exit

bb.ad:                                            ; preds = %Py_DECREF.exit54
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %.239, align 8, !tbaa !112
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ae, label %Py_DECREF.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %.239) #24
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit54, %bb.ad, %bb.ae
  %.035.in.lobit = ashr i32 %.035.in, 31
  br label %Py_DECREF.exit58

Py_DECREF.exit58:                                 ; preds = %bb.t, %bb.s, %bb.r, %Py_XDECREF.exit, %bb.g, %Py_DECREF.exit, %bb.o, %bb.c
  %.4 = phi i32 [ -1, %bb.c ], [ -1, %bb.g ], [ -1, %bb.o ], [ -1, %Py_XDECREF.exit ], [ %.035.in.lobit, %Py_DECREF.exit ], [ -1, %bb.r ], [ -1, %bb.s ], [ -1, %bb.t ]
  ret i32 %.4
}

declare void @_Py_SetImmortalUntracked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @type_ready(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168        ; 30 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !118  ; 3 uses
  %i.c = and i64 %i.b, 2
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 360
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.g = ptrtoint ptr %.val.i.i to i64
  %i.h = add i64 %i.g, -1                         ; 3 uses
  %i.i = getelementptr i8, ptr %i.e, i64 180328
  %i.j = getelementptr [48 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = icmp eq ptr %i.k, %0
  %i.m = icmp ugt i64 %i.h, 10
  %or.cond.i.i = or i1 %i.l, %i.m
  %i.n = getelementptr i8, ptr %i.e, i64 190040
  %i.o = getelementptr [48 x i8], ptr %i.n, i64 %i.h
  %.0.i.i = select i1 %or.cond.i.i, ptr %i.j, ptr %i.o
  %i.p = getelementptr i8, ptr %.0.i.i, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !127
  br label %start_readying.exit

bb.c:                                             ; preds = %bb.a
  %i.q = or i64 %i.b, 8192                        ; 2 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !118
  br label %start_readying.exit

start_readying.exit:                              ; preds = %bb.b, %bb.c
  %i.r = phi i64 [ %i.b, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 24         ; 8 uses
  %.val = load ptr, ptr %i.s, align 8, !tbaa !153
  %i.t = icmp eq ptr %.val, null
  br i1 %i.t, label %type_ready_pre_checks.exit.thread, label %type_ready_pre_checks.exit

type_ready_pre_checks.exit.thread:                ; preds = %start_readying.exit
  %i.u = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  %i.v = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.u, ptr noundef nonnull @.str.192) #24 ; 0 uses
  br label %type_ready_set_dict.exit

type_ready_pre_checks.exit:                       ; preds = %start_readying.exit
  %i.w = and i64 %i.r, 2
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %type_ready_pre_checks.exit
  %i.x = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26   ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 360
  %.val.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !11
  %i.aa = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ab = add i64 %i.aa, -1                       ; 3 uses
  %i.ac = getelementptr i8, ptr %i.y, i64 180328
  %i.ad = getelementptr [48 x i8], ptr %i.ac, i64 %i.ab ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.af = icmp eq ptr %i.ae, %0
  %i.ag = icmp ugt i64 %i.ab, 10
  %or.cond.i.i.i.i = or i1 %i.af, %i.ag
  %i.ah = getelementptr i8, ptr %i.y, i64 190040
  %i.ai = getelementptr [48 x i8], ptr %i.ah, i64 %i.ab
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, ptr %i.ad, ptr %i.ai
  %i.aj = getelementptr i8, ptr %.0.i.i.i.i, i64 24
  br label %lookup_tp_dict.exit.i

bb.e:                                             ; preds = %type_ready_pre_checks.exit
  %i.ak = getelementptr i8, ptr %0, i64 264
  br label %lookup_tp_dict.exit.i

lookup_tp_dict.exit.i:                            ; preds = %bb.e, %bb.d
  %.0.in.i.i = phi ptr [ %i.aj, %bb.d ], [ %i.ak, %bb.e ]
  %.0.i.i24 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !115
  %.not.i25 = icmp eq ptr %.0.i.i24, null
  br i1 %.not.i25, label %bb.f, label %bb.j

bb.f:                                             ; preds = %lookup_tp_dict.exit.i
  %i.al = tail call ptr @PyDict_New() #24         ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %type_ready_set_dict.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.a, align 8, !tbaa !118 ; 3 uses
  %i.ao = and i64 %i.an, 2
  %.not.i5.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i5.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26 ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 360
  %.val.i.i.i6.i = load ptr, ptr %i.ar, align 8, !tbaa !11
  %i.as = ptrtoint ptr %.val.i.i.i6.i to i64
  %i.at = add i64 %i.as, -1                       ; 3 uses
  %i.au = getelementptr i8, ptr %i.aq, i64 180328
  %i.av = getelementptr [48 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !24
  %i.ax = icmp eq ptr %i.aw, %0
  %i.ay = icmp ugt i64 %i.at, 10
  %or.cond.i.i.i7.i = or i1 %i.ax, %i.ay
  %i.az = getelementptr i8, ptr %i.aq, i64 190040
  %i.ba = getelementptr [48 x i8], ptr %i.az, i64 %i.at
  %.0.i.i.i8.i = select i1 %or.cond.i.i.i7.i, ptr %i.av, ptr %i.ba
  %i.bb = getelementptr i8, ptr %.0.i.i.i8.i, i64 24
  store ptr %i.al, ptr %i.bb, align 8, !tbaa !265
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr i8, ptr %0, i64 264
  store ptr %i.al, ptr %i.bc, align 8, !tbaa !245
  br label %bb.j

bb.j:                                             ; preds = %lookup_tp_dict.exit.i, %bb.h, %bb.i
  %i.bd = phi i64 [ %i.r, %lookup_tp_dict.exit.i ], [ %i.an, %bb.h ], [ %i.an, %bb.i ]
  %i.be = getelementptr i8, ptr %0, i64 256       ; 6 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !167 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null                 ; 2 uses
  %i.bh = icmp ne ptr %0, @PyBaseObject_Type
  %or.cond.i = and i1 %i.bh, %i.bg
  br i1 %or.cond.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bi = and i64 %i.bd, 512
  %.not.i27 = icmp eq i64 %i.bi, 0
  br i1 %.not.i27, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load i32, ptr @PyBaseObject_Type, align 8, !tbaa !112 ; 2 uses
  %i.bk = icmp ugt i32 %i.bj, -1073741825
  br i1 %i.bk, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = add nuw i32 %i.bj, 1
  store i32 %i.bl, ptr @PyBaseObject_Type, align 8, !tbaa !112
  br label %.thread.sink.split

bb.n:                                             ; preds = %bb.j
  br i1 %i.bg, label %type_ready_set_type.exit, label %.thread

.thread.sink.split:                               ; preds = %bb.k, %bb.m, %bb.l
  store ptr @PyBaseObject_Type, ptr %i.be, align 8, !tbaa !167
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.n
  %.0.i2689 = phi ptr [ %i.bf, %bb.n ], [ @PyBaseObject_Type, %.thread.sink.split ] ; 6 uses
  %i.bm = getelementptr i8, ptr %.0.i2689, i64 168 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !118 ; 5 uses
  %i.bo = and i64 %i.bn, 2
  %.not.i.i.i79 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i79, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.bp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !26 ; 2 uses
  %i.br = getelementptr i8, ptr %.0.i2689, i64 360
  %.val.i.i.i.i.i80 = load ptr, ptr %i.br, align 8, !tbaa !11
  %i.bs = ptrtoint ptr %.val.i.i.i.i.i80 to i64
  %i.bt = add i64 %i.bs, -1                       ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bq, i64 180328
  %i.bv = getelementptr [48 x i8], ptr %i.bu, i64 %i.bt ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.bx = icmp eq ptr %i.bw, %.0.i2689
  %i.by = icmp ugt i64 %i.bt, 10
  %or.cond.i.i.i.i.i81 = or i1 %i.bx, %i.by
  %i.bz = getelementptr i8, ptr %i.bq, i64 190040
  %i.ca = getelementptr [48 x i8], ptr %i.bz, i64 %i.bt
  %.0.i.i.i.i.i82 = select i1 %or.cond.i.i.i.i.i81, ptr %i.bv, ptr %i.ca
  %i.cb = getelementptr i8, ptr %.0.i.i.i.i.i82, i64 24
  br label %_PyType_IsReady.exit

bb.p:                                             ; preds = %.thread
  %i.cc = getelementptr i8, ptr %.0.i2689, i64 264
  br label %_PyType_IsReady.exit

_PyType_IsReady.exit:                             ; preds = %bb.o, %bb.p
  %.0.in.i.i.i83 = phi ptr [ %i.cb, %bb.o ], [ %i.cc, %bb.p ]
  %.0.i.i.i84 = load ptr, ptr %.0.in.i.i.i83, align 8, !tbaa !115
  %.not98 = icmp eq ptr %.0.i.i.i84, null
  %i.cd = and i64 %i.bn, 4096
  %.not.i77 = icmp eq i64 %i.cd, 0
  %or.cond = and i1 %.not.i77, %.not98
  br i1 %or.cond, label %bb.q, label %type_ready_set_base.exit

bb.q:                                             ; preds = %_PyType_IsReady.exit
  %i.ce = and i64 %i.bn, 512
  %.not8.i78 = icmp eq i64 %i.ce, 0
  br i1 %.not8.i78, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = or i64 %i.bn, 256
  store i64 %i.cf, ptr %i.bm, align 8, !tbaa !118
end_hunk_1
begin_hunk_2_@compatible_for_assignment:bb.a

.sink.split:                                      ; preds = %bb.c, %.thread57, %bb.e, %same_slots_added.exit, %bb.k, %.thread54, %.thread59, %bb.p, %bb.s, %bb.q, %bb.u, %bb.b
  %.sink116 = phi ptr [ %0, %bb.b ], [ %0, %.thread54 ], [ %i.ah, %bb.k ], [ %i.ah, %same_slots_added.exit ], [ %i.ae, %bb.e ], [ %0, %.thread57 ], [ %i.f, %bb.c ], [ %i.f, %.thread59 ], [ %i.ah, %bb.p ], [ %i.ah, %bb.s ], [ %i.ah, %bb.q ], [ %i.ah, %bb.u ]
  %.str.122.sink = phi ptr [ @.str.121, %bb.b ], [ @.str.122, %.thread54 ], [ @.str.122, %bb.k ], [ @.str.122, %same_slots_added.exit ], [ @.str.122, %bb.e ], [ @.str.122, %.thread57 ], [ @.str.122, %bb.c ], [ @.str.122, %.thread59 ], [ @.str.122, %bb.p ], [ @.str.122, %bb.s ], [ @.str.122, %bb.q ], [ @.str.122, %bb.u ]
  %i.de = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.df = getelementptr i8, ptr %1, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !153
  %i.dh = getelementptr i8, ptr %.sink116, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !153
  %i.dj = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.de, ptr noundef nonnull %.str.122.sink, ptr noundef %2, ptr noundef %i.dg, ptr noundef %i.di) #24 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %compatible_with_tp_base.exit52.thread, %same_slots_added.exit
  %.0 = phi i32 [ 1, %same_slots_added.exit ], [ 1, %compatible_with_tp_base.exit52.thread ], [ 0, %.sink.split ]
  ret i32 %.0
}

declare i32 @PyObject_RichCompareBool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @mro_hierarchy_for_complete_type(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = call fastcc i32 @mro_internal(ptr noundef %0, ptr noundef nonnull %i.a) ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %Py_DECREF.exit47, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 344        ; 2 uses
  %.val49 = load ptr, ptr %i.d, align 8, !tbaa !165 ; 5 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !115  ; 8 uses
  %.not = icmp eq ptr %i.e, null                  ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef nonnull %0, ptr noundef %.val49, ptr noundef nonnull %i.e) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %0, ptr noundef %.val49) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.038 = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 5 uses
  %.not43 = icmp eq ptr %.038, null
  br i1 %.not43, label %Py_XDECREF.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = call i32 @PyList_Append(ptr noundef nonnull %1, ptr noundef nonnull %.038) #24 ; 4 uses
  %i.i = load i32, ptr %.038, align 8, !tbaa !112 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i, label %bb.g, label %Py_XDECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %.038, align 8, !tbaa !112
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.h, label %Py_XDECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %.038) #24
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.h, %bb.g, %bb.f
  %i.l = icmp slt i32 %i.h, 0
  br i1 %i.l, label %Py_XDECREF.exit.thread, label %bb.m

Py_XDECREF.exit.thread:                           ; preds = %bb.e, %Py_XDECREF.exit
  br i1 %.not, label %set_tp_mro.exit, label %bb.i

bb.i:                                             ; preds = %Py_XDECREF.exit.thread
  %i.m = getelementptr i8, ptr %0, i64 168
  %i.n = load i64, ptr %i.m, align 8, !tbaa !118
  %i.o = and i64 %i.n, 2
  %.not7.i = icmp eq i64 %i.o, 0
  br i1 %.not7.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_Py_SetImmortal(ptr noundef nonnull %i.e) #24
  br label %set_tp_mro.exit

bb.k:                                             ; preds = %bb.i
  %i.p = call i32 @PyUnstable_Object_EnableDeferredRefcount(ptr noundef nonnull %i.e) #24 ; 0 uses
  br label %set_tp_mro.exit

set_tp_mro.exit:                                  ; preds = %Py_XDECREF.exit.thread, %bb.j, %bb.k
  store ptr %i.e, ptr %i.d, align 8, !tbaa !165
  %i.q = load i32, ptr %.val49, align 8, !tbaa !112 ; 2 uses
  %.not.i46 = icmp sgt i32 %i.q, -1
  br i1 %.not.i46, label %bb.l, label %Py_DECREF.exit47

bb.l:                                             ; preds = %set_tp_mro.exit
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %.val49, align 8, !tbaa !112
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %Py_DECREF.exit47.sink.split, label %Py_DECREF.exit47

bb.m:                                             ; preds = %Py_XDECREF.exit
  br i1 %.not, label %Py_XDECREF.exit54, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = load i32, ptr %i.e, align 8, !tbaa !112  ; 2 uses
  %.not.i.i53 = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i53, label %bb.o, label %Py_XDECREF.exit54

bb.o:                                             ; preds = %bb.n
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.e, align 8, !tbaa !112
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.p, label %Py_XDECREF.exit54

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #24
  br label %Py_XDECREF.exit54

Py_XDECREF.exit54:                                ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %i.w = getelementptr i8, ptr %0, i64 168
  %i.x = load i64, ptr %i.w, align 8, !tbaa !118
  %i.y = and i64 %i.x, 2
  %.not.i55 = icmp eq i64 %i.y, 0
  br i1 %.not.i55, label %bb.s, label %bb.q

bb.q:                                             ; preds = %Py_XDECREF.exit54
  %i.z = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 360
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !11
  %i.ac = ptrtoint ptr %.val.i.i.i to i64
  %i.ad = add i64 %i.ac, -1                       ; 3 uses
  %i.ae = getelementptr i8, ptr %i.aa, i64 180328
  %i.af = getelementptr [48 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24
  %i.ah = icmp eq ptr %i.ag, %0
  %i.ai = icmp ugt i64 %i.ad, 10
  %or.cond.i.i.i = or i1 %i.ah, %i.ai
  %i.aj = getelementptr i8, ptr %i.aa, i64 190040
  %i.ak = getelementptr [48 x i8], ptr %i.aj, i64 %i.ad
  %.0.i.i.i = select i1 %or.cond.i.i.i, ptr %i.af, ptr %i.ak ; 2 uses
  %i.al = icmp eq ptr %.0.i.i.i, null
  br i1 %i.al, label %Py_DECREF.exit47, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr i8, ptr %.0.i.i.i, i64 32
  br label %_PyType_HasSubclasses.exit

bb.s:                                             ; preds = %Py_XDECREF.exit54
  %i.an = getelementptr i8, ptr %0, i64 360
  br label %_PyType_HasSubclasses.exit

_PyType_HasSubclasses.exit:                       ; preds = %bb.r, %bb.s
  %.0.in.i.i = phi ptr [ %i.am, %bb.r ], [ %i.an, %bb.s ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !120
  %.not59 = icmp eq ptr %.0.i.i, null
  br i1 %.not59, label %Py_DECREF.exit47, label %bb.t

bb.t:                                             ; preds = %_PyType_HasSubclasses.exit
  %i.ao = call ptr @_PyType_GetSubclasses(ptr noundef nonnull %0) ; 6 uses
  %.not45 = icmp eq ptr %i.ao, null
  br i1 %.not45, label %Py_DECREF.exit47, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %.val = load i64, ptr %i.ap, align 8, !tbaa !140 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 24
  %i.ar = icmp sgt i64 %.val, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

bb.v:                                             ; preds = %.lr.ph
  %i.as = add nuw nsw i64 %.03260, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %.val
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !441

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %.03260 = phi i64 [ %i.as, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !113
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %.03260
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !115
  %i.aw = call fastcc i32 @mro_hierarchy_for_complete_type(ptr noundef %i.av, ptr noundef %1) ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %bb.v, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.v, %bb.u
  %.235 = phi i32 [ %i.h, %bb.u ], [ -1, %.lr.ph ], [ %i.aw, %bb.v ] ; 3 uses
  %i.ay = load i32, ptr %i.ao, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i, label %bb.w, label %Py_DECREF.exit47

bb.w:                                             ; preds = %._crit_edge
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !112
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %Py_DECREF.exit47.sink.split, label %Py_DECREF.exit47

Py_DECREF.exit47.sink.split:                      ; preds = %bb.w, %bb.l
  %.sink = phi ptr [ %.val49, %bb.l ], [ %i.ao, %bb.w ]
  %.2.ph = phi i32 [ -1, %bb.l ], [ %.235, %bb.w ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #24
  br label %Py_DECREF.exit47

Py_DECREF.exit47:                                 ; preds = %Py_DECREF.exit47.sink.split, %bb.q, %bb.w, %._crit_edge, %bb.l, %set_tp_mro.exit, %_PyType_HasSubclasses.exit, %bb.t, %bb.a
  %.2 = phi i32 [ %i.b, %bb.a ], [ %i.h, %_PyType_HasSubclasses.exit ], [ -1, %bb.t ], [ %.235, %bb.w ], [ -1, %set_tp_mro.exit ], [ -1, %bb.l ], [ %i.h, %bb.q ], [ %.235, %._crit_edge ], [ %.2.ph, %Py_DECREF.exit47.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.2
}

declare ptr @PyInterpreterState_Get() local_unnamed_addr #3

declare i32 @PyArg_UnpackTuple(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @mro_internal(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct._PyCStackRef, align 8       ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 344        ; 3 uses
  %.val27 = load ptr, ptr %i.a, align 8, !tbaa !165 ; 11 uses
  %.not.i.i = icmp eq ptr %.val27, null           ; 3 uses
  br i1 %.not.i.i, label %_Py_XNewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %.val27, align 8, !tbaa !112 ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_Py_XNewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %.val27, align 8, !tbaa !112
  br label %_Py_XNewRef.exit

_Py_XNewRef.exit:                                 ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val23.i = load ptr, ptr %i.e, align 8, !tbaa !126
  %.not45 = icmp eq ptr %.val23.i, @PyType_Type   ; 2 uses
  br i1 %.not45, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_Py_XNewRef.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i64 1, ptr %2, align 8, !tbaa !112
  %i.f = call fastcc range(i32 -1, 2) i32 @lookup_method_ex(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 92224), ptr noundef nonnull %2, i32 noundef 1), !inline_history !442 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.e, label %call_unbound_noarg.exit.i

bb.e:                                             ; preds = %bb.d
  %i.h = load i64, ptr %2, align 8
  %i.i = and i64 %i.h, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 6 uses
  %.not.i.i43 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @PyObject_CallOneArg(ptr noundef %i.j, ptr noundef nonnull %0) #24, !inline_history !443
  br label %call_unbound_noarg.exit.i

bb.g:                                             ; preds = %bb.e
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !177  ; 2 uses
  %i.n = getelementptr i8, ptr %i.j, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !126 ; 2 uses
  %i.o = getelementptr i8, ptr %.val.i.i.i.i.i, i64 168
  %.val6.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !118
  %i.p = and i64 %.val6.i.i.i.i.i, 2048
  %.not.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i, label %_PyVectorcall_FunctionInline.exit.i.i.i.i

_PyVectorcall_FunctionInline.exit.i.i.i.i:        ; preds = %bb.g
  %i.q = getelementptr i8, ptr %.val.i.i.i.i.i, i64 56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !178
  %i.s = getelementptr i8, ptr %i.j, i64 %i.r
  %.0.copyload.i.i.i.i.i = load ptr, ptr %i.s, align 1 ; 2 uses
  %i.t = icmp eq ptr %.0.copyload.i.i.i.i.i, null
  br i1 %i.t, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i, label %bb.h

_PyVectorcall_FunctionInline.exit.thread.i.i.i.i: ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i.i, %bb.g
  %i.u = tail call ptr @_PyObject_MakeTpCall(ptr noundef %i.m, ptr noundef nonnull %i.j, ptr noundef null, i64 noundef 0, ptr noundef null) #24, !inline_history !443
  br label %call_unbound_noarg.exit.i

bb.h:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i.i
  %i.v = tail call ptr %.0.copyload.i.i.i.i.i(ptr noundef nonnull %i.j, ptr noundef null, i64 noundef 0, ptr noundef null) #24, !inline_history !444
  %i.w = tail call ptr @_Py_CheckFunctionResult(ptr noundef %i.m, ptr noundef nonnull %i.j, ptr noundef %i.v, ptr noundef null) #24, !inline_history !443
  br label %call_unbound_noarg.exit.i

call_unbound_noarg.exit.i:                        ; preds = %bb.f, %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i, %bb.h, %bb.d
  %.0.i41 = phi ptr [ null, %bb.d ], [ %i.k, %bb.f ], [ %i.u, %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i ], [ %i.w, %bb.h ]
  %.val.i42 = load i64, ptr %2, align 8           ; 2 uses
  %i.x = and i64 %.val.i42, 1
  %.not.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.not.i.i.i, label %bb.i, label %call_method_noarg.exit

bb.i:                                             ; preds = %call_unbound_noarg.exit.i
  %i.y = inttoptr i64 %.val.i42 to ptr            ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !112
  %i.aa = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !112
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %call_method_noarg.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #24, !inline_history !443
  br label %call_method_noarg.exit

call_method_noarg.exit:                           ; preds = %call_unbound_noarg.exit.i, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.l

bb.k:                                             ; preds = %_Py_XNewRef.exit
  %i.ac = tail call fastcc ptr @mro_implementation_unlocked(ptr noundef nonnull %0), !inline_history !445
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %call_method_noarg.exit
  %.015.i = phi ptr [ %.0.i41, %call_method_noarg.exit ], [ %i.ac, %bb.k ] ; 5 uses
  %i.ad = icmp eq ptr %.015.i, null
  br i1 %i.ad, label %mro_invoke.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = tail call ptr @PySequence_Tuple(ptr noundef nonnull %.015.i) #24, !inline_history !445 ; 12 uses
  %i.af = load i32, ptr %.015.i, align 8, !tbaa !112 ; 2 uses
  %.not.i19.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i19.i, label %bb.n, label %Py_DECREF.exit20.i

bb.n:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %.015.i, align 8, !tbaa !112
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %Py_DECREF.exit20.i

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %.015.i) #24, !inline_history !445
  br label %Py_DECREF.exit20.i

Py_DECREF.exit20.i:                               ; preds = %bb.o, %bb.n, %bb.m
  %i.ai = icmp eq ptr %i.ae, null
  br i1 %i.ai, label %mro_invoke.exit, label %bb.p

bb.p:                                             ; preds = %Py_DECREF.exit20.i
  %i.aj = getelementptr i8, ptr %i.ae, i64 16
  %.val.i = load i64, ptr %i.aj, align 8, !tbaa !140 ; 3 uses
  %i.ak = icmp eq i64 %.val.i, 0
  br i1 %i.ak, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.al = load i32, ptr %i.ae, align 8, !tbaa !112 ; 2 uses
  %.not.i17.i = icmp sgt i32 %i.al, -1
  br i1 %.not.i17.i, label %bb.r, label %Py_DECREF.exit18.i

bb.r:                                             ; preds = %bb.q
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.ae, align 8, !tbaa !112
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.s, label %Py_DECREF.exit18.i

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #24, !inline_history !445
  br label %Py_DECREF.exit18.i

Py_DECREF.exit18.i:                               ; preds = %bb.s, %bb.r, %bb.q
  %i.ao = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.ap = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ao, ptr noundef nonnull @.str.124) #24, !inline_history !445 ; 0 uses
  br label %mro_invoke.exit

bb.t:                                             ; preds = %bb.p
  br i1 %.not45, label %mro_invoke.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = tail call fastcc ptr @solid_base(ptr noundef nonnull %0), !inline_history !446 ; 2 uses
  %i.ar = icmp sgt i64 %.val.i, 0
  br i1 %i.ar, label %.lr.ph.i, label %mro_invoke.exit

.lr.ph.i:                                         ; preds = %bb.u
  %i.as = getelementptr i8, ptr %i.ae, i64 32
  %i.at = getelementptr i8, ptr %i.aq, i64 344
  br label %bb.v

bb.v:                                             ; preds = %.critedge22.i, %.lr.ph.i
  %.01936.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bl, %.critedge22.i ] ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.as, i64 %.01936.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !115 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val.i39 = load ptr, ptr %i.aw, align 8, !tbaa !126
  %i.ax = getelementptr i8, ptr %.val.i39, i64 168
  %.val.val.i = load i64, ptr %i.ax, align 8, !tbaa !118
  %i.ay = and i64 %.val.val.i, 2147483648
  %.not31.i = icmp eq i64 %i.ay, 0
  br i1 %.not31.i, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val24.i = load ptr, ptr %i.at, align 8, !tbaa !165 ; 3 uses
  %i.az = tail call fastcc ptr @solid_base(ptr noundef nonnull %i.av), !inline_history !446 ; 3 uses
  %.not.i.i40 = icmp eq ptr %.val24.i, null
  br i1 %.not.i.i40, label %.preheader.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr i8, ptr %.val24.i, i64 16
  %.val.i.i = load i64, ptr %i.ba, align 8, !tbaa !140 ; 2 uses
  %i.bb = getelementptr i8, ptr %.val24.i, i64 32
  %i.bc = icmp sgt i64 %.val.i.i, 0
  br i1 %i.bc, label %.lr.ph.i.i, label %.critedge.i

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.bd = add nuw nsw i64 %.01013.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %.val.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i, label %.lr.ph.i.i, !llvm.loop !166

end_hunk_2
begin_hunk_3_@object_getstate_default:bb.a
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.au, label %Py_DECREF.exit116

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %i.dj) #24
  br label %Py_DECREF.exit116

bb.av:                                            ; preds = %_Py_NewRef.exit156
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.du = load i32, ptr %i.dj, align 8, !tbaa !112 ; 2 uses
  %.not.i113.a = icmp sgt i32 %i.du, -1
  br i1 %.not.i113.a, label %bb.ax, label %Py_DECREF.exit114

bb.ax:                                            ; preds = %bb.aw
  %i.dv = add nsw i32 %i.du, -1                   ; 2 uses
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !112
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.ay, label %Py_DECREF.exit114

bb.ay:                                            ; preds = %bb.ax
  call void @_Py_Dealloc(ptr noundef nonnull %i.dj) #24
  br label %Py_DECREF.exit114

bb.az:                                            ; preds = %bb.av
  %i.dx = call i32 @PyDict_SetItem(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.ds) #24
  %i.dy = load i32, ptr %i.dj, align 8, !tbaa !112 ; 2 uses
  %.not.i111.a = icmp sgt i32 %i.dy, -1
  br i1 %.not.i111.a, label %bb.ba, label %Py_DECREF.exit112.a

bb.ba:                                            ; preds = %bb.az
  %i.dz = add nsw i32 %i.dy, -1                   ; 2 uses
  store i32 %i.dz, ptr %i.dj, align 8, !tbaa !112
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.bb, label %Py_DECREF.exit112.a

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %i.dj) #24
  br label %Py_DECREF.exit112.a

Py_DECREF.exit112.a:                              ; preds = %bb.az, %bb.ba, %bb.bb
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !115 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !112 ; 2 uses
  %.not.i109.a = icmp sgt i32 %i.ec, -1
  br i1 %.not.i109.a, label %bb.bc, label %Py_DECREF.exit110.a

bb.bc:                                            ; preds = %Py_DECREF.exit112.a
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !112
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.bd, label %Py_DECREF.exit110.a

bb.bd:                                            ; preds = %bb.bc
  call void @_Py_Dealloc(ptr noundef nonnull %i.eb) #24
  br label %Py_DECREF.exit110.a

Py_DECREF.exit110.a:                              ; preds = %Py_DECREF.exit112.a, %bb.bc, %bb.bd
  %.not92 = icmp eq i32 %i.dx, 0
  br i1 %.not92, label %Py_DECREF.exit114, label %Py_DECREF.exit116

Py_DECREF.exit114:                                ; preds = %bb.ay, %bb.ax, %bb.aw, %Py_DECREF.exit110.a
  %.val151 = load i64, ptr %i.cv, align 8, !tbaa !140
  %.not93 = icmp eq i64 %.val152.a, %.val151
  br i1 %.not93, label %bb.bl, label %bb.be

bb.be:                                            ; preds = %Py_DECREF.exit114
  %i.ef = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !115
  %i.eg = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ef, ptr noundef nonnull @.str.157) #24 ; 0 uses
  br label %Py_DECREF.exit116

Py_DECREF.exit116:                                ; preds = %Py_DECREF.exit110.a, %bb.au, %bb.at, %bb.as, %bb.be
  %i.eh = load i32, ptr %.0.i162, align 8, !tbaa !112 ; 2 uses
  %.not.i107.a = icmp sgt i32 %i.eh, -1
  br i1 %.not.i107.a, label %bb.bf, label %Py_DECREF.exit108.a

bb.bf:                                            ; preds = %Py_DECREF.exit116
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %.0.i162, align 8, !tbaa !112
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.bg, label %Py_DECREF.exit108.a

bb.bg:                                            ; preds = %bb.bf
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i162) #24
  br label %Py_DECREF.exit108.a

Py_DECREF.exit108.a:                              ; preds = %Py_DECREF.exit116, %bb.bf, %bb.bg
  %i.ek = load i32, ptr %i.cx, align 8, !tbaa !112 ; 2 uses
  %.not.i105.a = icmp sgt i32 %i.ek, -1
  br i1 %.not.i105.a, label %bb.bh, label %Py_DECREF.exit106

bb.bh:                                            ; preds = %Py_DECREF.exit108.a
  %i.el = add nsw i32 %i.ek, -1                   ; 2 uses
  store i32 %i.el, ptr %i.cx, align 8, !tbaa !112
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.bi, label %Py_DECREF.exit106

bb.bi:                                            ; preds = %bb.bh
  call void @_Py_Dealloc(ptr noundef nonnull %i.cx) #24
  br label %Py_DECREF.exit106

Py_DECREF.exit106:                                ; preds = %Py_DECREF.exit108.a, %bb.bh, %bb.bi
  %i.en = load i32, ptr %.066, align 8, !tbaa !112 ; 2 uses
  %.not.i103.a = icmp sgt i32 %i.en, -1
  br i1 %.not.i103.a, label %bb.bj, label %Py_DECREF.exit104.thread

bb.bj:                                            ; preds = %Py_DECREF.exit106
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %.066, align 8, !tbaa !112
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.bk, label %Py_DECREF.exit104.thread

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %.066) #24
  br label %Py_DECREF.exit104.thread

Py_DECREF.exit104.thread:                         ; preds = %Py_DECREF.exit106, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %Py_DECREF.exit126

bb.bl:                                            ; preds = %Py_DECREF.exit114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.eq = add nuw nsw i64 %.076170, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.eq, %.val152.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.aq, !llvm.loop !459

._crit_edge:                                      ; preds = %bb.bl, %bb.ap
  %i.er = getelementptr i8, ptr %i.cx, i64 16
  %.val150 = load i64, ptr %i.er, align 8, !tbaa !249
  %i.es = icmp sgt i64 %.val150, 0
  br i1 %i.es, label %bb.bm, label %Py_DECREF.exit98.a

bb.bm:                                            ; preds = %._crit_edge
  %i.et = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %.066, ptr noundef nonnull %i.cx) #24 ; 2 uses
  %i.eu = load i32, ptr %.066, align 8, !tbaa !112 ; 2 uses
  %.not.i101.a = icmp sgt i32 %i.eu, -1
  br i1 %.not.i101.a, label %bb.bn, label %Py_DECREF.exit102.a

bb.bn:                                            ; preds = %bb.bm
  %i.ev = add nsw i32 %i.eu, -1                   ; 2 uses
  store i32 %i.ev, ptr %.066, align 8, !tbaa !112
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.bo, label %Py_DECREF.exit102.a

bb.bo:                                            ; preds = %bb.bn
  call void @_Py_Dealloc(ptr noundef nonnull %.066) #24
  br label %Py_DECREF.exit102.a

Py_DECREF.exit102.a:                              ; preds = %bb.bm, %bb.bn, %bb.bo
  %.not91 = icmp eq ptr %i.et, null
  br i1 %.not91, label %bb.bp, label %Py_DECREF.exit98.a

bb.bp:                                            ; preds = %Py_DECREF.exit102.a
  %i.ex = load i32, ptr %.0.i162, align 8, !tbaa !112 ; 2 uses
  %.not.i99.a = icmp sgt i32 %i.ex, -1
  br i1 %.not.i99.a, label %bb.bq, label %Py_DECREF.exit100.a

bb.bq:                                            ; preds = %bb.bp
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %.0.i162, align 8, !tbaa !112
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.br, label %Py_DECREF.exit100.a

bb.br:                                            ; preds = %bb.bq
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i162) #24
  br label %Py_DECREF.exit100.a

Py_DECREF.exit100.a:                              ; preds = %bb.bp, %bb.bq, %bb.br
  %i.fa = load i32, ptr %i.cx, align 8, !tbaa !112 ; 2 uses
  %.not.i97.a = icmp sgt i32 %i.fa, -1
  br i1 %.not.i97.a, label %bb.bs, label %Py_DECREF.exit126

bb.bs:                                            ; preds = %Py_DECREF.exit100.a
  %i.fb = add nsw i32 %i.fa, -1                   ; 2 uses
  store i32 %i.fb, ptr %i.cx, align 8, !tbaa !112
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.bt, label %Py_DECREF.exit126

bb.bt:                                            ; preds = %bb.bs
  call void @_Py_Dealloc(ptr noundef nonnull %i.cx) #24
  br label %Py_DECREF.exit126

Py_DECREF.exit98.a:                               ; preds = %Py_DECREF.exit102.a, %._crit_edge
  %.268 = phi ptr [ %.066, %._crit_edge ], [ %i.et, %Py_DECREF.exit102.a ] ; 3 uses
  %i.fd = load i32, ptr %i.cx, align 8, !tbaa !112 ; 2 uses
  %.not.i95 = icmp sgt i32 %i.fd, -1
  br i1 %.not.i95, label %bb.bu, label %Py_DECREF.exit118

bb.bu:                                            ; preds = %Py_DECREF.exit98.a
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %i.cx, align 8, !tbaa !112
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.bv, label %Py_DECREF.exit118

bb.bv:                                            ; preds = %bb.bu
  call void @_Py_Dealloc(ptr noundef nonnull %i.cx) #24
  br label %Py_DECREF.exit118

Py_DECREF.exit118:                                ; preds = %bb.bv, %bb.bu, %Py_DECREF.exit98.a, %bb.ai, %.critedge
  %.470 = phi ptr [ %.066, %.critedge ], [ %.066, %bb.ai ], [ %.268, %Py_DECREF.exit98.a ], [ %.268, %bb.bu ], [ %.268, %bb.bv ] ; 3 uses
  %i.fg = load i32, ptr %.0.i162, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.fg, -1
  br i1 %.not.i, label %bb.bw, label %Py_DECREF.exit126

bb.bw:                                            ; preds = %Py_DECREF.exit118
  %i.fh = add nsw i32 %i.fg, -1                   ; 2 uses
  store i32 %i.fh, ptr %.0.i162, align 8, !tbaa !112
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.bx, label %Py_DECREF.exit126

bb.bx:                                            ; preds = %bb.bw
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i162) #24
  br label %Py_DECREF.exit126

Py_DECREF.exit126:                                ; preds = %Py_DECREF.exit100.a, %bb.bs, %bb.bt, %bb.bx, %bb.bw, %Py_DECREF.exit118, %Py_DECREF.exit104.thread, %bb.ao, %bb.an, %Py_DECREF.exit120, %bb.x, %bb.w, %_PyType_GetSlotNames.exit.thread, %Py_DECREF.exit122.a, %bb.g, %bb.c
  %.7 = phi ptr [ null, %bb.c ], [ null, %bb.x ], [ null, %bb.ao ], [ null, %bb.g ], [ null, %Py_DECREF.exit122.a ], [ %.470, %bb.bx ], [ null, %Py_DECREF.exit104.thread ], [ null, %_PyType_GetSlotNames.exit.thread ], [ null, %bb.w ], [ null, %Py_DECREF.exit120 ], [ null, %bb.an ], [ %.470, %Py_DECREF.exit118 ], [ %.470, %bb.bw ], [ null, %bb.bt ], [ null, %bb.bs ], [ null, %Py_DECREF.exit100.a ]
  ret ptr %.7
}

declare i32 @_PyObject_IsInstanceDictEmpty(ptr noundef) local_unnamed_addr #3

declare ptr @PyImport_GetModule(ptr noundef) local_unnamed_addr #3

declare ptr @PyImport_Import(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @object___reduce_ex__(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #24 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #24
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ %i.a, %bb.a ], [ -1, %bb.b ]
  %i.d = tail call fastcc ptr @object___reduce_ex___impl(ptr noundef %0, i32 noundef %.sink)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.d, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @object___reduce__(ptr noundef %0, ptr readnone captures(none) %1) #1 {
bb.a:
  %i.a = tail call ptr @PyImport_GetModule(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 79800)) #24, !inline_history !460 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i11.i.i, label %bb.b, label %import_copyreg.exit.thread15.i.i

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyErr_Occurred() #24, !inline_history !460
  %.not4.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not4.i.i.i, label %import_copyreg.exit.i.i, label %object___reduce___impl.exit

import_copyreg.exit.i.i:                          ; preds = %bb.b
  %i.c = tail call ptr @PyImport_Import(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 79800)) #24, !inline_history !460 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %object___reduce___impl.exit, label %import_copyreg.exit.thread15.i.i

import_copyreg.exit.thread15.i.i:                 ; preds = %import_copyreg.exit.i.i, %bb.a
  %.0.i1218.i.i = phi ptr [ %i.c, %import_copyreg.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %.0.i1218.i.i, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef %0, i32 noundef 0) #24, !inline_history !460 ; 3 uses
  %i.e = load i32, ptr %.0.i1218.i.i, align 8, !tbaa !112 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i.i, label %bb.c, label %object___reduce___impl.exit

bb.c:                                             ; preds = %import_copyreg.exit.thread15.i.i
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %.0.i1218.i.i, align 8, !tbaa !112
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %object___reduce___impl.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i1218.i.i) #24, !inline_history !460
  br label %object___reduce___impl.exit

object___reduce___impl.exit:                      ; preds = %bb.b, %import_copyreg.exit.i.i, %import_copyreg.exit.thread15.i.i, %bb.c, %bb.d
  %.0.i.i = phi ptr [ null, %import_copyreg.exit.i.i ], [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ null, %bb.b ], [ %i.d, %import_copyreg.exit.thread15.i.i ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @object_subclasshook(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #17 {
bb.a:
  ret ptr @_Py_NotImplementedStruct
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @object_init_subclass(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #17 {
bb.a:
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal ptr @object___format__(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !126
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val6 = load i64, ptr %i.b, align 8, !tbaa !118
  %i.c = and i64 %.val6, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177, ptr noundef nonnull %1) #24
  br label %object___format___impl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val7 = load i64, ptr %i.d, align 8, !tbaa !173
  %i.e = icmp sgt i64 %.val7, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !126
  %i.h = getelementptr i8, ptr %.val.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.178, ptr noundef %i.i) #24 ; 0 uses
  br label %object___format___impl.exit

bb.e:                                             ; preds = %bb.c
  %i.k = tail call ptr @PyObject_Str(ptr noundef %0) #24
  br label %object___format___impl.exit

object___format___impl.exit:                      ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.k, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @object___sizeof__(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val7.i = load ptr, ptr %i.a, align 8, !tbaa !126 ; 2 uses
  %i.b = getelementptr i8, ptr %.val7.i, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !162  ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %object___sizeof___impl.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !140
  %i.g = mul i64 %i.f, %i.c
  br label %object___sizeof___impl.exit

object___sizeof___impl.exit:                      ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr i8, ptr %.val7.i, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !161
  %i.j = add i64 %i.i, %.0.i
  %i.k = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.j) #24
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define internal ptr @object___dir__(ptr noundef %0, ptr readnone captures(none) %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !115
  %i.c = call i32 @PyObject_GetOptionalAttr(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 64280), ptr noundef nonnull %i.a) #24
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %object___dir___impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !115  ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @PyDict_New() #24               ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !115
  br label %Py_DECREF.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !126
  %i.i = getelementptr i8, ptr %.val.i, i64 168
  %.val15.i = load i64, ptr %i.i, align 8, !tbaa !118
  %i.j = and i64 %.val15.i, 536870912
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.e, align 8, !tbaa !112  ; 2 uses
  %.not.i12.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i12.i, label %bb.f, label %Py_DECREF.exit13.i

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.e, align 8, !tbaa !112
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %Py_DECREF.exit13.i

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #24
  br label %Py_DECREF.exit13.i

Py_DECREF.exit13.i:                               ; preds = %bb.g, %bb.f, %bb.e
  %i.n = call ptr @PyDict_New() #24               ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !115
  br label %Py_DECREF.exit.i

end_hunk_3
begin_hunk_4_@_common_reduce:bb.a
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread.i.loopexit.unr-lcssa, label %bb.cb, !llvm.loop !467

._crit_edge.i:                                    ; preds = %_Py_NewRef.exit.i
  br i1 %.not.i10, label %Py_XDECREF.exit140.i, label %._crit_edge.thread.i

._crit_edge.thread.i.loopexit.unr-lcssa:          ; preds = %_Py_NewRef.exit144.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.i.loopexit.unr-lcssa, %.lr.ph.i
  %.047208.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.gn, %._crit_edge.thread.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod91 = trunc i64 %i.fw to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.gs = getelementptr [8 x i8], ptr %i.gc, i64 %.047208.i.epil.init
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !115 ; 3 uses
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !112 ; 2 uses
  %i.gv = icmp ugt i32 %i.gu, -1073741825
  br i1 %i.gv, label %_Py_NewRef.exit144.i.epil, label %bb.ce

bb.ce:                                            ; preds = %.epil.preheader
  %i.gw = add nuw i32 %i.gu, 1
  store i32 %i.gw, ptr %i.gt, align 8, !tbaa !112
  br label %_Py_NewRef.exit144.i.epil

_Py_NewRef.exit144.i.epil:                        ; preds = %bb.ce, %.epil.preheader
  %i.gx = getelementptr [8 x i8], ptr %i.ga, i64 %.047208.i.epil.init
  %i.gy = getelementptr i8, ptr %i.gx, i64 8
  store ptr %i.gt, ptr %i.gy, align 8, !tbaa !115
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %_Py_NewRef.exit144.i.epil, %._crit_edge.thread.i.loopexit.unr-lcssa, %._crit_edge.i
  %i.gz = load i32, ptr %.2.i, align 8, !tbaa !112 ; 2 uses
  %.not.i.i146.i = icmp sgt i32 %i.gz, -1
  br i1 %.not.i.i146.i, label %bb.cf, label %Py_XDECREF.exit140.thread200.i

bb.cf:                                            ; preds = %._crit_edge.thread.i
  %i.ha = add nsw i32 %i.gz, -1                   ; 2 uses
  store i32 %i.ha, ptr %.2.i, align 8, !tbaa !112
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.cg, label %Py_XDECREF.exit140.thread200.i

bb.cg:                                            ; preds = %bb.cf
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2.i) #24, !inline_history !462
  br label %Py_XDECREF.exit140.thread200.i

bb.ch:                                            ; preds = %bb.bi
  br i1 %.not.i10, label %bb.cy, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hc = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %.0.i194.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68120)) #24, !inline_history !462 ; 5 uses
  %i.hd = load i32, ptr %.0.i194.i, align 8, !tbaa !112 ; 2 uses
  %.not.i94.i = icmp sgt i32 %i.hd, -1
  br i1 %.not.i94.i, label %bb.cj, label %Py_DECREF.exit95.i

bb.cj:                                            ; preds = %bb.ci
  %i.he = add nsw i32 %i.hd, -1                   ; 2 uses
  store i32 %i.he, ptr %.0.i194.i, align 8, !tbaa !112
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.ck, label %Py_DECREF.exit95.i

bb.ck:                                            ; preds = %bb.cj
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i194.i) #24, !inline_history !462
  br label %Py_DECREF.exit95.i

Py_DECREF.exit95.i:                               ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.hg = icmp eq ptr %i.hc, null
  br i1 %i.hg, label %bb.cl, label %bb.cq

bb.cl:                                            ; preds = %Py_DECREF.exit95.i
  %i.hh = load i32, ptr %.2.i, align 8, !tbaa !112 ; 2 uses
  %.not.i92.i = icmp sgt i32 %i.hh, -1
  br i1 %.not.i92.i, label %bb.cm, label %Py_DECREF.exit93.i

bb.cm:                                            ; preds = %bb.cl
  %i.hi = add nsw i32 %i.hh, -1                   ; 2 uses
  store i32 %i.hi, ptr %.2.i, align 8, !tbaa !112
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.cn, label %Py_DECREF.exit93.i

bb.cn:                                            ; preds = %bb.cm
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2.i) #24, !inline_history !462
  br label %Py_DECREF.exit93.i

Py_DECREF.exit93.i:                               ; preds = %bb.cn, %bb.cm, %bb.cl
  %i.hk = load i32, ptr %.0185.i, align 8, !tbaa !112 ; 2 uses
  %.not.i90.i = icmp sgt i32 %i.hk, -1
  br i1 %.not.i90.i, label %bb.co, label %reduce_newobj.exit

bb.co:                                            ; preds = %Py_DECREF.exit93.i
  %i.hl = add nsw i32 %i.hk, -1                   ; 2 uses
  store i32 %i.hl, ptr %.0185.i, align 8, !tbaa !112
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.cp, label %reduce_newobj.exit

bb.cp:                                            ; preds = %bb.co
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0185.i) #24, !inline_history !462
  br label %reduce_newobj.exit

bb.cq:                                            ; preds = %Py_DECREF.exit95.i
  %.val120.i = load ptr, ptr %i.c, align 8, !tbaa !126
  %i.hn = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef %.val120.i, ptr noundef nonnull %.2.i, ptr noundef nonnull %.0185.i) #24, !inline_history !462 ; 2 uses
  %i.ho = load i32, ptr %.2.i, align 8, !tbaa !112 ; 2 uses
  %.not.i88.i = icmp sgt i32 %i.ho, -1
  br i1 %.not.i88.i, label %bb.cr, label %Py_DECREF.exit89.i

bb.cr:                                            ; preds = %bb.cq
  %i.hp = add nsw i32 %i.ho, -1                   ; 2 uses
  store i32 %i.hp, ptr %.2.i, align 8, !tbaa !112
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.cs, label %Py_DECREF.exit89.i

bb.cs:                                            ; preds = %bb.cr
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2.i) #24, !inline_history !462
  br label %Py_DECREF.exit89.i

Py_DECREF.exit89.i:                               ; preds = %bb.cs, %bb.cr, %bb.cq
  %i.hr = load i32, ptr %.0185.i, align 8, !tbaa !112 ; 2 uses
  %.not.i86.i = icmp sgt i32 %i.hr, -1
  br i1 %.not.i86.i, label %bb.ct, label %Py_DECREF.exit87.i

bb.ct:                                            ; preds = %Py_DECREF.exit89.i
  %i.hs = add nsw i32 %i.hr, -1                   ; 2 uses
  store i32 %i.hs, ptr %.0185.i, align 8, !tbaa !112
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.cu, label %Py_DECREF.exit87.i

bb.cu:                                            ; preds = %bb.ct
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0185.i) #24, !inline_history !462
  br label %Py_DECREF.exit87.i

Py_DECREF.exit87.i:                               ; preds = %bb.cu, %bb.ct, %Py_DECREF.exit89.i
  %i.hu = icmp eq ptr %i.hn, null
  br i1 %i.hu, label %bb.cv, label %Py_XDECREF.exit140.thread200.i

bb.cv:                                            ; preds = %Py_DECREF.exit87.i
  %i.hv = load i32, ptr %i.hc, align 8, !tbaa !112 ; 2 uses
  %.not.i84.i = icmp sgt i32 %i.hv, -1
  br i1 %.not.i84.i, label %bb.cw, label %reduce_newobj.exit

bb.cw:                                            ; preds = %bb.cv
  %i.hw = add nsw i32 %i.hv, -1                   ; 2 uses
  store i32 %i.hw, ptr %i.hc, align 8, !tbaa !112
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.cx, label %reduce_newobj.exit

bb.cx:                                            ; preds = %bb.cw
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.hc) #24, !inline_history !462
  br label %reduce_newobj.exit

bb.cy:                                            ; preds = %bb.ch
  %i.hy = load i32, ptr %.0.i194.i, align 8, !tbaa !112 ; 2 uses
  %.not.i82.i = icmp sgt i32 %i.hy, -1
  br i1 %.not.i82.i, label %bb.cz, label %Py_DECREF.exit83.i

bb.cz:                                            ; preds = %bb.cy
  %i.hz = add nsw i32 %i.hy, -1                   ; 2 uses
  store i32 %i.hz, ptr %.0.i194.i, align 8, !tbaa !112
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.da, label %Py_DECREF.exit83.i

bb.da:                                            ; preds = %bb.cz
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i194.i) #24, !inline_history !462
  br label %Py_DECREF.exit83.i

Py_DECREF.exit83.i:                               ; preds = %bb.da, %bb.cz, %bb.cy
  %i.ib = load i32, ptr %.0185.i, align 8, !tbaa !112 ; 2 uses
  %.not.i80.i = icmp sgt i32 %i.ib, -1
  br i1 %.not.i80.i, label %bb.db, label %Py_DECREF.exit81.i

bb.db:                                            ; preds = %Py_DECREF.exit83.i
  %i.ic = add nsw i32 %i.ib, -1                   ; 2 uses
  store i32 %i.ic, ptr %.0185.i, align 8, !tbaa !112
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %bb.dc, label %Py_DECREF.exit81.i

bb.dc:                                            ; preds = %bb.db
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0185.i) #24, !inline_history !462
  br label %Py_DECREF.exit81.i

Py_DECREF.exit81.i:                               ; preds = %bb.dc, %bb.db, %Py_DECREF.exit83.i
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.1, i32 noundef 8089) #24, !inline_history !462
  br label %reduce_newobj.exit

Py_XDECREF.exit140.i:                             ; preds = %._crit_edge.i
  %.val119.i = load ptr, ptr %i.c, align 8, !tbaa !126
  %i.ie = getelementptr i8, ptr %.val119.i, i64 168
  %.val125.i = load i64, ptr %i.ie, align 8, !tbaa !118 ; 2 uses
  %i.if = and i64 %.val125.i, 33554432
  %.not61.i = icmp eq i64 %i.if, 0
  br i1 %.not61.i, label %bb.dd, label %Py_XDECREF.exit140.thread200.i

bb.dd:                                            ; preds = %Py_XDECREF.exit140.i
  %i.ig = trunc i64 %.val125.i to i32
  %i.ih = lshr i32 %i.ig, 29
  %i.ii = and i32 %i.ih, 1
  %i.ij = xor i32 %i.ii, 1
  br label %Py_XDECREF.exit140.thread200.i

Py_XDECREF.exit140.thread200.i:                   ; preds = %bb.dd, %Py_XDECREF.exit140.i, %Py_DECREF.exit87.i, %bb.cg, %bb.cf, %._crit_edge.thread.i
  %.046204.i = phi ptr [ %i.fb, %Py_XDECREF.exit140.i ], [ %i.fb, %bb.dd ], [ %i.fb, %bb.cg ], [ %i.fb, %bb.cf ], [ %i.fb, %._crit_edge.thread.i ], [ %i.hc, %Py_DECREF.exit87.i ] ; 10 uses
  %.149203.i = phi ptr [ %i.fv, %Py_XDECREF.exit140.i ], [ %i.fv, %bb.dd ], [ %i.fv, %bb.cg ], [ %i.fv, %bb.cf ], [ %i.fv, %._crit_edge.thread.i ], [ %i.hn, %Py_DECREF.exit87.i ] ; 10 uses
  %i.ik = phi i32 [ 0, %Py_XDECREF.exit140.i ], [ %i.ij, %bb.dd ], [ 0, %bb.cg ], [ 0, %bb.cf ], [ 0, %._crit_edge.thread.i ], [ 0, %Py_DECREF.exit87.i ]
  %i.il = tail call fastcc ptr @object_getstate(ptr noundef %0, i32 noundef %i.ik), !inline_history !462 ; 8 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %bb.de, label %bb.dj

bb.de:                                            ; preds = %Py_XDECREF.exit140.thread200.i
  %i.in = load i32, ptr %.046204.i, align 8, !tbaa !112 ; 2 uses
  %.not.i78.i = icmp sgt i32 %i.in, -1
  br i1 %.not.i78.i, label %bb.df, label %Py_DECREF.exit79.i

bb.df:                                            ; preds = %bb.de
  %i.io = add nsw i32 %i.in, -1                   ; 2 uses
  store i32 %i.io, ptr %.046204.i, align 8, !tbaa !112
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.dg, label %Py_DECREF.exit79.i

bb.dg:                                            ; preds = %bb.df
  tail call void @_Py_Dealloc(ptr noundef nonnull %.046204.i) #24, !inline_history !462
  br label %Py_DECREF.exit79.i

Py_DECREF.exit79.i:                               ; preds = %bb.dg, %bb.df, %bb.de
  %i.iq = load i32, ptr %.149203.i, align 8, !tbaa !112 ; 2 uses
  %.not.i76.i = icmp sgt i32 %i.iq, -1
  br i1 %.not.i76.i, label %bb.dh, label %reduce_newobj.exit

bb.dh:                                            ; preds = %Py_DECREF.exit79.i
  %i.ir = add nsw i32 %i.iq, -1                   ; 2 uses
  store i32 %i.ir, ptr %.149203.i, align 8, !tbaa !112
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.di, label %reduce_newobj.exit

bb.di:                                            ; preds = %bb.dh
  tail call void @_Py_Dealloc(ptr noundef nonnull %.149203.i) #24, !inline_history !462
  br label %reduce_newobj.exit

bb.dj:                                            ; preds = %Py_XDECREF.exit140.thread200.i
  %.val41.i.i = load ptr, ptr %i.c, align 8, !tbaa !126
  %i.it = getelementptr i8, ptr %.val41.i.i, i64 168
  %.val43.i.i = load i64, ptr %i.it, align 8, !tbaa !118
  %i.iu = and i64 %.val43.i.i, 33554432
  %.not.i148.i = icmp eq i64 %i.iu, 0
  br i1 %.not.i148.i, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.iv = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !112 ; 2 uses
  %i.iw = icmp ugt i32 %i.iv, -1073741825
  br i1 %i.iw, label %_Py_NewRef.exit.i152.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ix = add nuw i32 %i.iv, 1
  store i32 %i.ix, ptr @_Py_NoneStruct, align 8, !tbaa !112
  br label %_Py_NewRef.exit.i152.i

bb.dm:                                            ; preds = %bb.dj
  %i.iy = tail call ptr @PyObject_GetIter(ptr noundef nonnull %0) #24, !inline_history !462 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.dx, label %_Py_NewRef.exit.i152.i

_Py_NewRef.exit.i152.i:                           ; preds = %bb.dm, %bb.dl, %bb.dk
  %.0183.i = phi ptr [ %i.iy, %bb.dm ], [ @_Py_NoneStruct, %bb.dl ], [ @_Py_NoneStruct, %bb.dk ] ; 9 uses
  %.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !126
  %i.ja = getelementptr i8, ptr %.val.i.i, i64 168
  %.val42.i.i = load i64, ptr %i.ja, align 8, !tbaa !118
  %i.jb = and i64 %.val42.i.i, 536870912
  %.not32.i.i = icmp eq i64 %i.jb, 0
  br i1 %.not32.i.i, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %_Py_NewRef.exit.i152.i
  %i.jc = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !112 ; 2 uses
  %i.jd = icmp ugt i32 %i.jc, -1073741825
  br i1 %i.jd, label %_PyObject_GetItemsIter.exit.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.je = add nuw i32 %i.jc, 1
  store i32 %i.je, ptr @_Py_NoneStruct, align 8, !tbaa !112
  br label %_PyObject_GetItemsIter.exit.i

bb.dp:                                            ; preds = %_Py_NewRef.exit.i152.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !115
  %i.jf = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88704), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #24, !inline_history !462 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  %i.jh = load i32, ptr %.0183.i, align 8, !tbaa !112 ; 2 uses
  %.not.i37.i.i = icmp sgt i32 %i.jh, -1
  br i1 %.not.i37.i.i, label %bb.dr, label %bb.dx

bb.dr:                                            ; preds = %bb.dq
  %i.ji = add nsw i32 %i.jh, -1                   ; 2 uses
  store i32 %i.ji, ptr %.0183.i, align 8, !tbaa !112
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %.sink.split.i, label %bb.dx

bb.ds:                                            ; preds = %bb.dp
  %i.jk = call ptr @PyObject_GetIter(ptr noundef nonnull %i.jf) #24, !inline_history !462 ; 2 uses
  %i.jl = load i32, ptr %i.jf, align 8, !tbaa !112 ; 2 uses
  %.not.i35.i.i = icmp sgt i32 %i.jl, -1
  br i1 %.not.i35.i.i, label %bb.dt, label %Py_DECREF.exit36.i.i

bb.dt:                                            ; preds = %bb.ds
  %i.jm = add nsw i32 %i.jl, -1                   ; 2 uses
  store i32 %i.jm, ptr %i.jf, align 8, !tbaa !112
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.du, label %Py_DECREF.exit36.i.i

bb.du:                                            ; preds = %bb.dt
  call void @_Py_Dealloc(ptr noundef nonnull %i.jf) #24, !inline_history !462
  br label %Py_DECREF.exit36.i.i

Py_DECREF.exit36.i.i:                             ; preds = %bb.du, %bb.dt, %bb.ds
  %i.jo = icmp eq ptr %i.jk, null
  br i1 %i.jo, label %bb.dv, label %_PyObject_GetItemsIter.exit.i

bb.dv:                                            ; preds = %Py_DECREF.exit36.i.i
  %i.jp = load i32, ptr %.0183.i, align 8, !tbaa !112 ; 2 uses
  %.not.i.i150.i = icmp sgt i32 %i.jp, -1
  br i1 %.not.i.i150.i, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.jq = add nsw i32 %i.jp, -1                   ; 2 uses
  store i32 %i.jq, ptr %.0183.i, align 8, !tbaa !112
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %.sink.split.i, label %bb.dx

.sink.split.i:                                    ; preds = %bb.dw, %bb.dr
  call void @_Py_Dealloc(ptr noundef nonnull %.0183.i) #24, !inline_history !462
  br label %bb.dx

bb.dx:                                            ; preds = %.sink.split.i, %bb.dw, %bb.dv, %bb.dr, %bb.dq, %bb.dm
  %i.js = load i32, ptr %.046204.i, align 8, !tbaa !112 ; 2 uses
  %.not.i74.i = icmp sgt i32 %i.js, -1
  br i1 %.not.i74.i, label %bb.dy, label %Py_DECREF.exit75.i

bb.dy:                                            ; preds = %bb.dx
  %i.jt = add nsw i32 %i.js, -1                   ; 2 uses
  store i32 %i.jt, ptr %.046204.i, align 8, !tbaa !112
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %bb.dz, label %Py_DECREF.exit75.i

bb.dz:                                            ; preds = %bb.dy
  call void @_Py_Dealloc(ptr noundef nonnull %.046204.i) #24, !inline_history !462
  br label %Py_DECREF.exit75.i

Py_DECREF.exit75.i:                               ; preds = %bb.dz, %bb.dy, %bb.dx
  %i.jv = load i32, ptr %.149203.i, align 8, !tbaa !112 ; 2 uses
  %.not.i72.i = icmp sgt i32 %i.jv, -1
  br i1 %.not.i72.i, label %bb.ea, label %Py_DECREF.exit73.i

bb.ea:                                            ; preds = %Py_DECREF.exit75.i
  %i.jw = add nsw i32 %i.jv, -1                   ; 2 uses
  store i32 %i.jw, ptr %.149203.i, align 8, !tbaa !112
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %bb.eb, label %Py_DECREF.exit73.i

bb.eb:                                            ; preds = %bb.ea
  call void @_Py_Dealloc(ptr noundef nonnull %.149203.i) #24, !inline_history !462
  br label %Py_DECREF.exit73.i

Py_DECREF.exit73.i:                               ; preds = %bb.eb, %bb.ea, %Py_DECREF.exit75.i
  %i.jy = load i32, ptr %i.il, align 8, !tbaa !112 ; 2 uses
  %.not.i70.i = icmp sgt i32 %i.jy, -1
  br i1 %.not.i70.i, label %bb.ec, label %reduce_newobj.exit

bb.ec:                                            ; preds = %Py_DECREF.exit73.i
  %i.jz = add nsw i32 %i.jy, -1                   ; 2 uses
  store i32 %i.jz, ptr %i.il, align 8, !tbaa !112
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.ed, label %reduce_newobj.exit

bb.ed:                                            ; preds = %bb.ec
  call void @_Py_Dealloc(ptr noundef nonnull %i.il) #24, !inline_history !462
  br label %reduce_newobj.exit

_PyObject_GetItemsIter.exit.i:                    ; preds = %Py_DECREF.exit36.i.i, %bb.do, %bb.dn
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.do ], [ @_Py_NoneStruct, %bb.dn ], [ %i.jk, %Py_DECREF.exit36.i.i ] ; 4 uses
  %i.kb = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 5, ptr noundef nonnull %.046204.i, ptr noundef nonnull %.149203.i, ptr noundef nonnull %i.il, ptr noundef nonnull %.0183.i, ptr noundef nonnull %.0.i) #24, !inline_history !462 ; 3 uses
  %i.kc = load i32, ptr %.046204.i, align 8, !tbaa !112 ; 2 uses
  %.not.i68.i = icmp sgt i32 %i.kc, -1
  br i1 %.not.i68.i, label %bb.ee, label %Py_DECREF.exit69.i

bb.ee:                                            ; preds = %_PyObject_GetItemsIter.exit.i
  %i.kd = add nsw i32 %i.kc, -1                   ; 2 uses
  store i32 %i.kd, ptr %.046204.i, align 8, !tbaa !112
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.ef, label %Py_DECREF.exit69.i

bb.ef:                                            ; preds = %bb.ee
  call void @_Py_Dealloc(ptr noundef nonnull %.046204.i) #24, !inline_history !462
  br label %Py_DECREF.exit69.i

Py_DECREF.exit69.i:                               ; preds = %bb.ef, %bb.ee, %_PyObject_GetItemsIter.exit.i
  %i.kf = load i32, ptr %.149203.i, align 8, !tbaa !112 ; 2 uses
  %.not.i66.i = icmp sgt i32 %i.kf, -1
  br i1 %.not.i66.i, label %bb.eg, label %Py_DECREF.exit67.i

bb.eg:                                            ; preds = %Py_DECREF.exit69.i
  %i.kg = add nsw i32 %i.kf, -1                   ; 2 uses
  store i32 %i.kg, ptr %.149203.i, align 8, !tbaa !112
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.eh, label %Py_DECREF.exit67.i

bb.eh:                                            ; preds = %bb.eg
  call void @_Py_Dealloc(ptr noundef nonnull %.149203.i) #24, !inline_history !462
  br label %Py_DECREF.exit67.i

Py_DECREF.exit67.i:                               ; preds = %bb.eh, %bb.eg, %Py_DECREF.exit69.i
  %i.ki = load i32, ptr %i.il, align 8, !tbaa !112 ; 2 uses
  %.not.i64.i = icmp sgt i32 %i.ki, -1
  br i1 %.not.i64.i, label %bb.ei, label %Py_DECREF.exit65.i

bb.ei:                                            ; preds = %Py_DECREF.exit67.i
  %i.kj = add nsw i32 %i.ki, -1                   ; 2 uses
  store i32 %i.kj, ptr %i.il, align 8, !tbaa !112
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.ej, label %Py_DECREF.exit65.i

bb.ej:                                            ; preds = %bb.ei
  call void @_Py_Dealloc(ptr noundef nonnull %i.il) #24, !inline_history !462
  br label %Py_DECREF.exit65.i

Py_DECREF.exit65.i:                               ; preds = %bb.ej, %bb.ei, %Py_DECREF.exit67.i
  %i.kl = load i32, ptr %.0183.i, align 8, !tbaa !112 ; 2 uses
  %.not.i62.i = icmp sgt i32 %i.kl, -1
  br i1 %.not.i62.i, label %bb.ek, label %Py_DECREF.exit63.i

bb.ek:                                            ; preds = %Py_DECREF.exit65.i
  %i.km = add nsw i32 %i.kl, -1                   ; 2 uses
  store i32 %i.km, ptr %.0183.i, align 8, !tbaa !112
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.el, label %Py_DECREF.exit63.i

bb.el:                                            ; preds = %bb.ek
  call void @_Py_Dealloc(ptr noundef nonnull %.0183.i) #24, !inline_history !462
  br label %Py_DECREF.exit63.i

Py_DECREF.exit63.i:                               ; preds = %bb.el, %bb.ek, %Py_DECREF.exit65.i
  %i.ko = load i32, ptr %.0.i, align 8, !tbaa !112 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ko, -1
  br i1 %.not.i.i, label %bb.em, label %reduce_newobj.exit

bb.em:                                            ; preds = %Py_DECREF.exit63.i
  %i.kp = add nsw i32 %i.ko, -1                   ; 2 uses
  store i32 %i.kp, ptr %.0.i, align 8, !tbaa !112
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.en, label %reduce_newobj.exit

bb.en:                                            ; preds = %bb.em
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #24, !inline_history !462
  br label %reduce_newobj.exit

bb.eo:                                            ; preds = %bb.a
  %i.kr = tail call ptr @PyImport_GetModule(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 79800)) #24 ; 2 uses
  %.not.i11 = icmp eq ptr %i.kr, null
  br i1 %.not.i11, label %bb.ep, label %import_copyreg.exit.thread15

bb.ep:                                            ; preds = %bb.eo
  %i.ks = tail call ptr @PyErr_Occurred() #24
  %.not4.i = icmp eq ptr %i.ks, null
  br i1 %.not4.i, label %import_copyreg.exit, label %reduce_newobj.exit

import_copyreg.exit:                              ; preds = %bb.ep
  %i.kt = tail call ptr @PyImport_Import(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 79800)) #24 ; 2 uses
  %.not = icmp eq ptr %i.kt, null
  br i1 %.not, label %reduce_newobj.exit, label %import_copyreg.exit.thread15

import_copyreg.exit.thread15:                     ; preds = %bb.eo, %import_copyreg.exit
  %.0.i1218 = phi ptr [ %i.kt, %import_copyreg.exit ], [ %i.kr, %bb.eo ] ; 4 uses
  %i.ku = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %.0.i1218, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef %0, i32 noundef %1) #24 ; 3 uses
  %i.kv = load i32, ptr %.0.i1218, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.kv, -1
  br i1 %.not.i, label %bb.eq, label %reduce_newobj.exit

bb.eq:                                            ; preds = %import_copyreg.exit.thread15
  %i.kw = add nsw i32 %i.kv, -1                   ; 2 uses
  store i32 %i.kw, ptr %.0.i1218, align 8, !tbaa !112
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.er, label %reduce_newobj.exit

bb.er:                                            ; preds = %bb.eq
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i1218) #24
  br label %reduce_newobj.exit

reduce_newobj.exit:                               ; preds = %bb.ep, %bb.er, %bb.eq, %import_copyreg.exit.thread15, %bb.en, %bb.em, %Py_DECREF.exit63.i, %bb.ed, %bb.ec, %Py_DECREF.exit73.i, %bb.di, %bb.dh, %Py_DECREF.exit79.i, %Py_DECREF.exit81.i, %bb.cx, %bb.cw, %bb.cv, %bb.cp, %bb.co, %Py_DECREF.exit93.i, %bb.by, %bb.bx, %Py_XDECREF.exit143.i, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bh, %bb.bg, %bb.bf, %Py_XDECREF.exit.i, %_PyObject_LookupSpecial.exit137.thread.i.i, %bb.ba, %bb.az, %bb.ay, %Py_DECREF.exit84.i.i, %_PyObject_LookupSpecial.exit.thread.i.i, %bb.al, %bb.ak, %Py_DECREF.exit88.i.i, %bb.af, %bb.ae, %Py_DECREF.exit92.i.i, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %Py_DECREF.exit100.i.i, %bb.c, %import_copyreg.exit
  %.0 = phi ptr [ null, %import_copyreg.exit ], [ %i.ku, %bb.er ], [ null, %bb.c ], [ null, %Py_DECREF.exit81.i ], [ null, %bb.bh ], [ null, %bb.cx ], [ null, %bb.di ], [ null, %bb.ed ], [ %i.kb, %bb.en ], [ null, %bb.by ], [ null, %bb.cp ], [ null, %bb.br ], [ null, %Py_XDECREF.exit.i ], [ null, %bb.bf ], [ null, %bb.bg ], [ null, %bb.bo ], [ null, %bb.bp ], [ null, %bb.bq ], [ null, %Py_XDECREF.exit143.i ], [ null, %bb.bx ], [ null, %Py_DECREF.exit93.i ], [ null, %bb.co ], [ null, %bb.cv ], [ null, %bb.cw ], [ null, %Py_DECREF.exit79.i ], [ null, %bb.dh ], [ null, %Py_DECREF.exit73.i ], [ null, %bb.ec ], [ %i.kb, %Py_DECREF.exit63.i ], [ %i.kb, %bb.em ], [ null, %bb.ay ], [ null, %_PyObject_LookupSpecial.exit.thread.i.i ], [ null, %bb.ak ], [ null, %Py_DECREF.exit84.i.i ], [ null, %_PyObject_LookupSpecial.exit137.thread.i.i ], [ null, %bb.r ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %Py_DECREF.exit100.i.i ], [ null, %bb.v ], [ null, %bb.af ], [ null, %bb.al ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.t ], [ null, %bb.u ], [ null, %Py_DECREF.exit92.i.i ], [ null, %bb.ae ], [ null, %Py_DECREF.exit88.i.i ], [ %i.ku, %import_copyreg.exit.thread15 ], [ %i.ku, %bb.eq ], [ null, %bb.ep ]
  ret ptr %.0
}

declare ptr @PyObject_CallMethod(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #3

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_Str(ptr noundef) local_unnamed_addr #3

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @object_get_class(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !126 ; 3 uses
  %i.b = load i32, ptr %.val, align 8, !tbaa !112 ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %.val, align 8, !tbaa !112
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.a, %bb.b
  ret ptr %.val
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @object_set_class(ptr noundef %0, ptr noundef %1, ptr readnone captures(none) %2) #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.181) #24
  br label %object_set_class_world_stopped.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val26 = load ptr, ptr %i.c, align 8, !tbaa !126 ; 2 uses
  %i.d = getelementptr i8, ptr %.val26, i64 168
  %.val26.val = load i64, ptr %i.d, align 8, !tbaa !118
  %i.e = and i64 %.val26.val, 2147483648
  %.not29 = icmp eq i64 %i.e, 0
  br i1 %.not29, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.g = getelementptr i8, ptr %.val26, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.182, ptr noundef %i.h) #24 ; 0 uses
  br label %object_set_class_world_stopped.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef nonnull %1) #24
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %object_set_class_world_stopped.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.l, align 8, !tbaa !126 ; 8 uses
  %i.m = getelementptr i8, ptr %1, i64 344
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !165  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %.val.i.i.i = load i64, ptr %i.o, align 8, !tbaa !140 ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 32
  %i.q = icmp sgt i64 %.val.i.i.i, 0
  br i1 %i.q, label %.lr.ph.i.i.i, label %PyType_IsSubtype.exit.thread.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.r = add nuw nsw i64 %.01013.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.r, %.val.i.i.i
  br i1 %exitcond.not.i.i.i, label %PyType_IsSubtype.exit.thread.i, label %.lr.ph.i.i.i, !llvm.loop !166

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %.01013.i.i.i = phi i64 [ %i.r, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %.01013.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !115
  %i.u = icmp eq ptr %i.t, @PyModule_Type
  br i1 %i.u, label %PyType_IsSubtype.exit.i, label %bb.h

.preheader.i.i.i:                                 ; preds = %bb.f, %bb.i
  %.05.i.i.i.i = phi ptr [ %i.x, %bb.i ], [ %1, %bb.f ] ; 2 uses
  %i.v = icmp eq ptr %.05.i.i.i.i, @PyModule_Type
  br i1 %i.v, label %PyType_IsSubtype.exit.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i.i.i
  %i.w = getelementptr i8, ptr %.05.i.i.i.i, i64 256
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !167  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %PyType_IsSubtype.exit.thread.i, label %.preheader.i.i.i, !llvm.loop !168

PyType_IsSubtype.exit.i:                          ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.y = getelementptr i8, ptr %.val, i64 344
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !165  ; 3 uses
  %.not.i.i33.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i33.i, label %.preheader.i.i39.i, label %bb.j

bb.j:                                             ; preds = %PyType_IsSubtype.exit.i
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %.val.i.i34.i = load i64, ptr %i.aa, align 8, !tbaa !140 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 32
  %i.ac = icmp sgt i64 %.val.i.i34.i, 0
  br i1 %i.ac, label %.lr.ph.i.i36.i, label %PyType_IsSubtype.exit.thread.i

bb.k:                                             ; preds = %.lr.ph.i.i36.i
  %i.ad = add nuw nsw i64 %.01013.i.i37.i, 1      ; 2 uses
  %exitcond.not.i.i38.i = icmp eq i64 %i.ad, %.val.i.i34.i
  br i1 %exitcond.not.i.i38.i, label %PyType_IsSubtype.exit.thread.i, label %.lr.ph.i.i36.i, !llvm.loop !166

.lr.ph.i.i36.i:                                   ; preds = %bb.j, %bb.k
  %.01013.i.i37.i = phi i64 [ %i.ad, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ab, i64 %.01013.i.i37.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !115
  %i.ag = icmp eq ptr %i.af, @PyModule_Type
  br i1 %i.ag, label %PyType_IsSubtype.exit42.i, label %bb.k

.preheader.i.i39.i:                               ; preds = %PyType_IsSubtype.exit.i, %bb.l
  %.05.i.i.i40.i = phi ptr [ %i.aj, %bb.l ], [ %.val, %PyType_IsSubtype.exit.i ] ; 2 uses
  %i.ah = icmp eq ptr %.05.i.i.i40.i, @PyModule_Type
  br i1 %i.ah, label %PyType_IsSubtype.exit42.i, label %bb.l

bb.l:                                             ; preds = %.preheader.i.i39.i
  %i.ai = getelementptr i8, ptr %.05.i.i.i40.i, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i41.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i41.i, label %PyType_IsSubtype.exit.thread.i, label %.preheader.i.i39.i, !llvm.loop !168

PyType_IsSubtype.exit.thread.i:                   ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.j, %bb.g
  %i.ak = getelementptr i8, ptr %1, i64 168
  %.val31.i = load i64, ptr %i.ak, align 8, !tbaa !118
  %i.al = and i64 %.val31.i, 256
  %.not25.i = icmp eq i64 %i.al, 0
  br i1 %.not25.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %PyType_IsSubtype.exit.thread.i
  %i.am = getelementptr i8, ptr %.val, i64 168
  %.val30.i = load i64, ptr %i.am, align 8, !tbaa !118
  %i.an = and i64 %.val30.i, 256
  %.not26.i = icmp eq i64 %i.an, 0
  br i1 %.not26.i, label %PyType_IsSubtype.exit42.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %PyType_IsSubtype.exit.thread.i
  %i.ao = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.ap = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ao, ptr noundef nonnull @.str.183) #24, !inline_history !468 ; 0 uses
  br label %object_set_class_world_stopped.exit.thread

PyType_IsSubtype.exit42.i:                        ; preds = %.lr.ph.i.i36.i, %.preheader.i.i39.i, %bb.m
  %i.aq = tail call fastcc i32 @compatible_for_assignment(ptr noundef %.val, ptr noundef nonnull %1, ptr noundef nonnull @.str.179, i32 noundef 1), !inline_history !468
  %.not27.i = icmp eq i32 %i.aq, 0
  br i1 %.not27.i, label %object_set_class_world_stopped.exit.thread, label %bb.o

bb.o:                                             ; preds = %PyType_IsSubtype.exit42.i
  %i.ar = getelementptr i8, ptr %.val, i64 168    ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !118
  %i.at = and i64 %i.as, 4
  %.not28.i = icmp eq i64 %i.at, 0
  br i1 %.not28.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr i8, ptr %0, i64 -24
  %.val32.i = load ptr, ptr %i.au, align 8, !tbaa !112 ; 2 uses
  %i.av = icmp eq ptr %.val32.i, null
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call ptr @_PyObject_MaterializeManagedDict_LockHeld(ptr noundef nonnull %0) #24, !inline_history !468 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %object_set_class_world_stopped.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.020.i = phi ptr [ %i.aw, %bb.q ], [ %.val32.i, %bb.p ]
  %i.ay = tail call i32 @_PyDict_DetachFromObject(ptr noundef nonnull %.020.i, ptr noundef nonnull %0) #24, !inline_history !468
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.s, label %object_set_class_world_stopped.exit.thread

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.ba = getelementptr i8, ptr %1, i64 168
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !118
  %i.bc = and i64 %i.bb, 512
  %.not29.i = icmp eq i64 %i.bc, 0
  br i1 %.not29.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = load i32, ptr %1, align 8, !tbaa !112   ; 2 uses
  %i.be = icmp ugt i32 %i.bd, -1073741825
  br i1 %i.be, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = add nuw i32 %i.bd, 1
  store i32 %i.bf, ptr %1, align 8, !tbaa !112
end_hunk_4
begin_hunk_5_@slot_mp_ass_subscript:bb.a

; Function Attrs: nounwind uwtable
define internal noundef ptr @wrap_objobjargproc(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.363, i64 noundef 2, i64 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #24
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.f = call i32 %2(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e) #24
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @PyErr_Occurred() #24
  %.not5 = icmp eq ptr %i.h, null
  br i1 %.not5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ @_Py_NoneStruct, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @wrap_delitem(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !126
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #24
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 1
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 1, ptr noundef nonnull @.str.123, i64 noundef %.val7.i) #24 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = tail call i32 %2(ptr noundef %0, ptr noundef %i.h, ptr noundef null) #24
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %check_num_args.exit
  %i.k = tail call ptr @PyErr_Occurred() #24
  %.not7 = icmp eq ptr %i.k, null
  br i1 %.not7, label %bb.f, label %check_num_args.exit.thread

bb.f:                                             ; preds = %bb.e, %check_num_args.exit
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi ptr [ null, %bb.e ], [ @_Py_NoneStruct, %bb.f ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_indexargfunc(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !126
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #24
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 1
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 1, ptr noundef nonnull @.str.123, i64 noundef %.val7.i) #24 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !115
  %i.j = tail call i64 @PyNumber_AsSsize_t(ptr noundef %i.h, ptr noundef %i.i) #24 ; 2 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %check_num_args.exit
  %i.l = tail call ptr @PyErr_Occurred() #24
  %.not8 = icmp eq ptr %i.l, null
  br i1 %.not8, label %bb.f, label %check_num_args.exit.thread

bb.f:                                             ; preds = %bb.e, %check_num_args.exit
  %i.m = tail call ptr %2(ptr noundef %0, i64 noundef %i.j) #24
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi ptr [ null, %bb.e ], [ %i.m, %bb.f ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_sq_item(ptr noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = tail call ptr @PyLong_FromSsize_t(i64 noundef %1) #24 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !115
  %i.e = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65368), ptr noundef %i.a, i64 noundef 2)
  %i.f = load i32, ptr %i.b, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.b, align 8, !tbaa !112
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #24
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %Py_DECREF.exit
  %.0 = phi ptr [ %i.e, %Py_DECREF.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_sq_item(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !140 ; 2 uses
  %i.b = icmp eq i64 %.val, 1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115
  %i.e = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !115
  %i.f = tail call i64 @PyNumber_AsSsize_t(ptr noundef %i.d, ptr noundef %i.e) #24 ; 6 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @PyErr_Occurred() #24
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.thread.i, label %getindex.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.f, 0
  br i1 %i.i, label %.thread.i, label %getindex.exit.thread14

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !126
  %i.k = getelementptr i8, ptr %.val.i, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !204  ; 2 uses
  %.not24.i = icmp eq ptr %i.l, null
  br i1 %.not24.i, label %getindex.exit, label %bb.e

bb.e:                                             ; preds = %.thread.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !351  ; 2 uses
  %.not25.i = icmp eq ptr %i.m, null
  br i1 %.not25.i, label %getindex.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i64 %i.m(ptr noundef nonnull %0) #24, !inline_history !493 ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  %.015.i = add nsw i64 %i.n, %i.f
  br i1 %i.o, label %getindex.exit, label %getindex.exit.thread

getindex.exit:                                    ; preds = %bb.f, %.thread.i, %bb.e
  %.3.i = phi i64 [ %i.f, %.thread.i ], [ %i.f, %bb.e ], [ %.015.i, %bb.f ] ; 2 uses
  %i.p = icmp eq i64 %.3.i, -1
  br i1 %i.p, label %getindex.exit.thread, label %getindex.exit.thread14

getindex.exit.thread:                             ; preds = %bb.f, %bb.c, %getindex.exit
  %i.q = tail call ptr @PyErr_Occurred() #24
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %getindex.exit.thread14, label %check_num_args.exit

getindex.exit.thread14:                           ; preds = %bb.d, %getindex.exit.thread, %getindex.exit
  %.3.i12 = phi i64 [ -1, %getindex.exit.thread ], [ %.3.i, %getindex.exit ], [ %i.f, %bb.d ]
  %i.r = tail call ptr %2(ptr noundef %0, i64 noundef %.3.i12) #24
  br label %check_num_args.exit

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.s, align 8, !tbaa !126
  %.not.i10 = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.372) #24
  br label %check_num_args.exit

bb.i:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.v = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.u, ptr noundef nonnull @.str.373, i32 noundef 1, ptr noundef nonnull @.str.123, i64 noundef %.val) #24 ; 0 uses
  br label %check_num_args.exit

check_num_args.exit:                              ; preds = %bb.i, %bb.h, %getindex.exit.thread, %getindex.exit.thread14
  %.0 = phi ptr [ null, %getindex.exit.thread ], [ %i.r, %getindex.exit.thread14 ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @slot_sq_ass_item(ptr noundef %0, i64 noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = tail call ptr @PyLong_FromSsize_t(i64 noundef %1) #24 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !115
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 64224), ptr noundef %i.a, i64 noundef 2)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.g, align 16, !tbaa !115
  %i.h = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 70160), ptr noundef %i.a, i64 noundef 3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.09 = phi ptr [ %i.f, %bb.c ], [ %i.h, %bb.d ] ; 4 uses
  %i.i = load i32, ptr %i.b, align 8, !tbaa !112  ; 2 uses
  %.not.i12 = icmp sgt i32 %i.i, -1
  br i1 %.not.i12, label %bb.f, label %Py_DECREF.exit13

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !112
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %Py_DECREF.exit13

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #24
  br label %Py_DECREF.exit13

Py_DECREF.exit13:                                 ; preds = %bb.e, %bb.f, %bb.g
  %i.l = icmp eq ptr %.09, null
  br i1 %i.l, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit13
  %i.m = load i32, ptr %.09, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %.09, align 8, !tbaa !112
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %.09) #24
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit13, %bb.a
  %.0 = phi i32 [ -1, %Py_DECREF.exit13 ], [ -1, %bb.a ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @wrap_sq_setitem(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.363, i64 noundef 2, i64 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #24
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.e = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !115
  %i.f = call i64 @PyNumber_AsSsize_t(ptr noundef %i.d, ptr noundef %i.e) #24 ; 6 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @PyErr_Occurred() #24
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.thread.i, label %getindex.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.f, 0
  br i1 %i.i, label %.thread.i, label %getindex.exit.thread13

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !126
  %i.k = getelementptr i8, ptr %.val.i, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !204  ; 2 uses
  %.not24.i = icmp eq ptr %i.l, null
  br i1 %.not24.i, label %getindex.exit, label %bb.e

bb.e:                                             ; preds = %.thread.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !351  ; 2 uses
  %.not25.i = icmp eq ptr %i.m, null
  br i1 %.not25.i, label %getindex.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i64 %i.m(ptr noundef nonnull %0) #24, !inline_history !493 ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  %.015.i = add nsw i64 %i.n, %i.f
  br i1 %i.o, label %getindex.exit, label %getindex.exit.thread

getindex.exit:                                    ; preds = %bb.f, %.thread.i, %bb.e
  %.3.i = phi i64 [ %i.f, %.thread.i ], [ %i.f, %bb.e ], [ %.015.i, %bb.f ] ; 2 uses
  %i.p = icmp eq i64 %.3.i, -1
  br i1 %i.p, label %getindex.exit.thread, label %getindex.exit.thread13

getindex.exit.thread:                             ; preds = %bb.f, %bb.c, %getindex.exit
  %i.q = call ptr @PyErr_Occurred() #24
  %.not8 = icmp eq ptr %i.q, null
  br i1 %.not8, label %getindex.exit.thread13, label %bb.i

getindex.exit.thread13:                           ; preds = %bb.d, %getindex.exit.thread, %getindex.exit
  %.3.i11 = phi i64 [ -1, %getindex.exit.thread ], [ %.3.i, %getindex.exit ], [ %i.f, %bb.d ]
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.s = call i32 %2(ptr noundef %0, i64 noundef %.3.i11, ptr noundef %i.r) #24
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %getindex.exit.thread13
  %i.u = call ptr @PyErr_Occurred() #24
  %.not9 = icmp eq ptr %i.u, null
  br i1 %.not9, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %getindex.exit.thread13
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %getindex.exit.thread, %bb.a, %bb.h
  %.0 = phi ptr [ null, %bb.a ], [ null, %getindex.exit.thread ], [ @_Py_NoneStruct, %bb.h ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @wrap_sq_delitem(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !126
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #24
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 1
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 1, ptr noundef nonnull @.str.123, i64 noundef %.val7.i) #24 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !115
  %i.j = tail call i64 @PyNumber_AsSsize_t(ptr noundef %i.h, ptr noundef %i.i) #24 ; 6 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %check_num_args.exit
  %i.l = tail call ptr @PyErr_Occurred() #24
  %.not.i12 = icmp eq ptr %i.l, null
  br i1 %.not.i12, label %.thread.i, label %getindex.exit.thread

bb.f:                                             ; preds = %check_num_args.exit
  %i.m = icmp slt i64 %i.j, 0
  br i1 %i.m, label %.thread.i, label %getindex.exit.thread18

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.n = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !126
  %i.o = getelementptr i8, ptr %.val.i, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !204  ; 2 uses
  %.not24.i = icmp eq ptr %i.p, null
  br i1 %.not24.i, label %getindex.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !351  ; 2 uses
  %.not25.i = icmp eq ptr %i.q, null
  br i1 %.not25.i, label %getindex.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i64 %i.q(ptr noundef nonnull %0) #24, !inline_history !493 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  %.015.i = add nsw i64 %i.r, %i.j
  br i1 %i.s, label %getindex.exit, label %getindex.exit.thread

getindex.exit:                                    ; preds = %bb.h, %.thread.i, %bb.g
  %.3.i = phi i64 [ %i.j, %.thread.i ], [ %i.j, %bb.g ], [ %.015.i, %bb.h ] ; 2 uses
  %i.t = icmp eq i64 %.3.i, -1
  br i1 %i.t, label %getindex.exit.thread, label %getindex.exit.thread18

getindex.exit.thread:                             ; preds = %bb.h, %bb.e, %getindex.exit
  %i.u = tail call ptr @PyErr_Occurred() #24
  %.not10 = icmp eq ptr %i.u, null
  br i1 %.not10, label %getindex.exit.thread18, label %check_num_args.exit.thread

getindex.exit.thread18:                           ; preds = %bb.f, %getindex.exit.thread, %getindex.exit
  %.3.i16 = phi i64 [ -1, %getindex.exit.thread ], [ %.3.i, %getindex.exit ], [ %i.j, %bb.f ]
  %i.v = tail call i32 %2(ptr noundef %0, i64 noundef %.3.i16, ptr noundef null) #24
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %getindex.exit.thread18
  %i.x = tail call ptr @PyErr_Occurred() #24
  %.not11 = icmp eq ptr %i.x, null
  br i1 %.not11, label %bb.j, label %check_num_args.exit.thread

bb.j:                                             ; preds = %bb.i, %getindex.exit.thread18
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %bb.i, %getindex.exit.thread, %bb.j
  %.0 = phi ptr [ null, %bb.i ], [ null, %getindex.exit.thread ], [ @_Py_NoneStruct, %bb.j ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @slot_sq_contains(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.b = call fastcc ptr @maybe_call_special_one_arg(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 63936), ptr noundef %1, ptr noundef nonnull %i.a) ; 5 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.f = getelementptr i8, ptr %.val, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !153
  %i.h = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.390, ptr noundef %i.g) #24 ; 0 uses
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.b, null
  br i1 %i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @PyErr_Occurred() #24
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.k = call i64 @_PySequence_IterSearch(ptr noundef %0, ptr noundef %1, i32 noundef 3) #24
  %i.l = trunc i64 %i.k to i32
  br label %Py_DECREF.exit

.critedge:                                        ; preds = %bb.c
  %i.m = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.b) #24 ; 3 uses
  %i.n = load i32, ptr %i.b, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %.critedge
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.b, align 8, !tbaa !112
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #24
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %.critedge, %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %i.l, %bb.e ], [ %i.m, %.critedge ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_objobjproc(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !126
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #24
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 1
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 1, ptr noundef nonnull @.str.123, i64 noundef %.val7.i) #24 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = tail call i32 %2(ptr noundef %0, ptr noundef %i.h) #24 ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %check_num_args.exit
  %i.k = tail call ptr @PyErr_Occurred() #24
  %.not8 = icmp eq ptr %i.k, null
  br i1 %.not8, label %bb.f, label %check_num_args.exit.thread

bb.f:                                             ; preds = %bb.e, %check_num_args.exit
  %i.l = sext i32 %i.i to i64
  %i.m = tail call ptr @PyBool_FromLong(i64 noundef %i.l) #24
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi ptr [ null, %bb.e ], [ %i.m, %bb.f ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #3

declare ptr @PySeqIter_New(ptr noundef) local_unnamed_addr #3

declare void @PyErr_SetNone(ptr noundef) local_unnamed_addr #3

declare ptr @_PyErr_GetRaisedException(ptr noundef) local_unnamed_addr #3

declare void @_PyErr_SetRaisedException(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #3

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @_PyObject_GC_New(ptr noundef) local_unnamed_addr #3

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyMemoryView_FromBufferProc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @method_is_overloaded(ptr noundef readonly captures(none) %0, ptr %.8.val, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = call i32 @PyObject_GetOptionalAttr(ptr noundef %.8.val, ptr noundef %1, ptr noundef nonnull %i.b) #24
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %Py_DECREF.exit11, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit11, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !126
  %i.h = call i32 @PyObject_GetOptionalAttr(ptr noundef %.val, ptr noundef %1, ptr noundef nonnull %i.a) #24
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !115  ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !112  ; 2 uses
  %.not.i10 = icmp sgt i32 %i.k, -1
  br i1 %.not.i10, label %bb.e, label %Py_DECREF.exit11

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !112
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %Py_DECREF.exit11.sink.split, label %Py_DECREF.exit11

bb.f:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !115  ; 4 uses
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %.not.i8 = icmp sgt i32 %i.q, -1
  br i1 %.not.i8, label %bb.h, label %Py_DECREF.exit11

bb.h:                                             ; preds = %bb.g
end_hunk_5
