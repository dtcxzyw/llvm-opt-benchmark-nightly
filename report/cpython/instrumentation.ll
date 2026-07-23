inline.NumInlined: 253
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@monitoring_restart_events:bb.a
  %i.aa = getelementptr i8, ptr %i.b, i64 24      ; 3 uses
  %i.ab = load atomic i64, ptr %i.aa monotonic, align 8 ; 2 uses
  %i.ac = and i64 %i.ab, 255
  %i.ad = or i64 %i.ac, %i.p
  %i.ae = cmpxchg ptr %i.aa, i64 %i.ab, i64 %i.ad seq_cst seq_cst, align 8 ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %set_global_version.exit.i, label %_Py_atomic_compare_exchange_uintptr.exit.i4.i.i

_Py_atomic_compare_exchange_uintptr.exit.i4.i.i:  ; preds = %set_version_raw.exit.i.i, %_Py_atomic_compare_exchange_uintptr.exit.i4.i.i
  %i.ag = phi { i64, i1 } [ %i.ak, %_Py_atomic_compare_exchange_uintptr.exit.i4.i.i ], [ %i.ae, %set_version_raw.exit.i.i ]
  %i.ah = extractvalue { i64, i1 } %i.ag, 0       ; 2 uses
  %i.ai = and i64 %i.ah, 255
  %i.aj = or i64 %i.ai, %i.p
  %i.ak = cmpxchg ptr %i.aa, i64 %i.ah, i64 %i.aj seq_cst seq_cst, align 8 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  br i1 %i.al, label %set_global_version.exit.i, label %_Py_atomic_compare_exchange_uintptr.exit.i4.i.i

set_global_version.exit.i:                        ; preds = %_Py_atomic_compare_exchange_uintptr.exit.i4.i.i, %set_version_raw.exit.i.i
  %i.am = getelementptr i8, ptr %i.d, i64 7376    ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !94
  %i.ao = getelementptr i8, ptr %i.an, i64 864    ; 2 uses
  %i.ap = cmpxchg ptr %i.ao, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %PyMutex_LockFlags.exit.i.i, label %bb.d

bb.d:                                             ; preds = %set_global_version.exit.i
  %i.ar = tail call i32 @_PyMutex_LockTimed(ptr noundef %i.ao, i64 noundef -1, i32 noundef 0) #12 ; 0 uses
  br label %PyMutex_LockFlags.exit.i.i

PyMutex_LockFlags.exit.i.i:                       ; preds = %bb.d, %set_global_version.exit.i
  %i.as = getelementptr i8, ptr %i.d, i64 7336
  %.01633.i.i = load ptr, ptr %i.as, align 8, !tbaa !93 ; 2 uses
  %.not34.i.i = icmp eq ptr %.01633.i.i, null
  br i1 %.not34.i.i, label %.loopexit.i.i, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %PyMutex_LockFlags.exit.i.i, %._crit_edge.i.i
  %.01635.i.i = phi ptr [ %.016.i.i, %._crit_edge.i.i ], [ %.01633.i.i, %PyMutex_LockFlags.exit.i.i ] ; 2 uses
  %i.at = getelementptr i8, ptr %.01635.i.i, i64 72
  %.030.i.i = load ptr, ptr %i.at, align 8, !tbaa !161 ; 2 uses
  %.not2231.i.i = icmp eq ptr %.030.i.i, null
  br i1 %.not2231.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph36.i.i, %instrument_lock_held.exit.thread.i.i
  %.032.i.i = phi ptr [ %.0.i.i, %instrument_lock_held.exit.thread.i.i ], [ %.030.i.i, %.lr.ph36.i.i ] ; 3 uses
  %i.au = getelementptr i8, ptr %.032.i.i, i64 74
  %i.av = load i8, ptr %i.au, align 2, !tbaa !162
  %i.aw = icmp slt i8 %i.av, 3
  br i1 %i.aw, label %bb.e, label %instrument_lock_held.exit.thread.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %.0.val.i.i = load i64, ptr %.032.i.i, align 8
  %i.ax = and i64 %.0.val.i.i, -2
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load atomic i64, ptr %i.d monotonic, align 8
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = getelementptr i8, ptr %i.ay, i64 168
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !92
  %i.bd = icmp eq i64 %i.bc, %i.ba
  br i1 %i.bd, label %instrument_lock_held.exit.thread.i.i, label %instrument_lock_held.exit.i.i

instrument_lock_held.exit.i.i:                    ; preds = %bb.e
  %i.be = tail call fastcc i32 @force_instrument_lock_held(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.d)
  %.not23.i.i = icmp eq i32 %i.be, 0
  br i1 %.not23.i.i, label %instrument_lock_held.exit.thread.i.i, label %.loopexit.i.i

instrument_lock_held.exit.thread.i.i:             ; preds = %instrument_lock_held.exit.i.i, %bb.e, %.lr.ph.i.i
  %i.bf = getelementptr i8, ptr %.032.i.i, i64 8
  %.0.i.i = load ptr, ptr %i.bf, align 8, !tbaa !161 ; 2 uses
  %.not22.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !163

._crit_edge.i.i:                                  ; preds = %instrument_lock_held.exit.thread.i.i, %.lr.ph36.i.i
  %i.bg = getelementptr i8, ptr %.01635.i.i, i64 8
  %.016.i.i = load ptr, ptr %i.bg, align 8, !tbaa !93 ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph36.i.i, !llvm.loop !164

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i, %instrument_lock_held.exit.i.i, %PyMutex_LockFlags.exit.i.i
  %.not.i = phi ptr [ @_Py_NoneStruct, %PyMutex_LockFlags.exit.i.i ], [ null, %instrument_lock_held.exit.i.i ], [ @_Py_NoneStruct, %._crit_edge.i.i ]
  %i.bh = load ptr, ptr %i.am, align 8, !tbaa !94
  %i.bi = getelementptr i8, ptr %i.bh, i64 864    ; 2 uses
  %i.bj = cmpxchg ptr %i.bi, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.bk = extractvalue { i8, i1 } %i.bj, 1
  br i1 %i.bk, label %instrument_all_executing_code_objects.exit.i, label %bb.f

bb.f:                                             ; preds = %.loopexit.i.i
  tail call void @PyMutex_Unlock(ptr noundef %i.bi) #12
  br label %instrument_all_executing_code_objects.exit.i

instrument_all_executing_code_objects.exit.i:     ; preds = %bb.f, %.loopexit.i.i
  tail call void @_PyEval_StartTheWorld(ptr noundef nonnull %i.d) #12
  br label %monitoring_restart_events_impl.exit

monitoring_restart_events_impl.exit:              ; preds = %bb.b, %instrument_all_executing_code_objects.exit.i
  %.1.i = phi ptr [ null, %bb.b ], [ %.not.i, %instrument_all_executing_code_objects.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @monitoring__all_events(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.c = tail call ptr @PyDict_New() #12          ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %monitoring__all_events_impl.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 223456
  br label %bb.b

bb.b:                                             ; preds = %Py_DECREF.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %Py_DECREF.exit.i ] ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 %indvars.iv.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !39    ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %Py_DECREF.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext i8 %i.g to i64
  %i.j = tail call ptr @PyLong_FromLong(i64 noundef %i.i) #12 ; 4 uses
  %i.k = getelementptr [8 x i8], ptr @event_names, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.c, ptr noundef %i.l, ptr noundef %i.j) #12
  %i.n = load i32, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %.not.i21.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i21.i, label %bb.d, label %Py_DECREF.exit22.i

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.j, align 8, !tbaa !39
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %Py_DECREF.exit22.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #12
  br label %Py_DECREF.exit22.i

Py_DECREF.exit22.i:                               ; preds = %bb.e, %bb.d, %bb.c
  %i.q = icmp slt i32 %i.m, 0
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit.i

bb.f:                                             ; preds = %Py_DECREF.exit22.i
  %i.r = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.g, label %monitoring__all_events_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.c, align 8, !tbaa !39
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %monitoring__all_events_impl.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #12
  br label %monitoring__all_events_impl.exit

Py_DECREF.exit.i:                                 ; preds = %Py_DECREF.exit22.i, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 16
  br i1 %exitcond.i, label %monitoring__all_events_impl.exit, label %bb.b, !llvm.loop !210

monitoring__all_events_impl.exit:                 ; preds = %Py_DECREF.exit.i, %bb.a, %bb.f, %bb.g, %bb.h
  %.4.i = phi ptr [ null, %bb.a ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ %i.c, %Py_DECREF.exit.i ]
  ret ptr %.4.i
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #5

declare ptr @PyErr_Occurred() local_unnamed_addr #5

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @monitoring_register_callback_impl(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 5
  br i1 %or.cond.i, label %check_valid_tool.exit, label %bb.b

check_valid_tool.exit:                            ; preds = %bb.a
  %i.a = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.b = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.a, ptr noundef nonnull @.str.27, i32 noundef %0) #12 ; 0 uses
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %.not16 = icmp eq i32 %i.c, 1
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.28) #12
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.e = sext i32 %1 to i64
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -2147483648, 2147483648) %i.e, i1 false)
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 2 uses
  %i.h = sub nuw nsw i32 63, %i.g
  %i.i = add nsw i32 %i.g, -64
  %or.cond = icmp ult i32 %i.i, -19
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.29, i32 noundef %1) #12 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.l = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef %2) #12
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp eq ptr %2, @_Py_NoneStruct
  %spec.store.select = select i1 %i.n, ptr null, ptr %2
  %i.o = tail call ptr @_PyMonitoring_RegisterCallback(i32 noundef %0, i32 noundef %i.h, ptr noundef %spec.store.select) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  %_Py_NoneStruct. = select i1 %i.p, ptr @_Py_NoneStruct, ptr %i.o
  br label %bb.h

bb.h:                                             ; preds = %check_valid_tool.exit, %bb.e, %bb.f, %bb.g, %bb.c
  %.1 = phi ptr [ null, %check_valid_tool.exit ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.f ], [ %_Py_NoneStruct., %bb.g ]
  ret ptr %.1
}

declare i32 @PySys_Audit(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 65536) i32 @monitoring_get_events_impl(i32 noundef %0) unnamed_addr #4 {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 5
  br i1 %or.cond.i, label %check_valid_tool.exit, label %bb.b

check_valid_tool.exit:                            ; preds = %bb.a
  %i.a = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.b = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.a, ptr noundef nonnull @.str.27, i32 noundef %0) #12 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 223456
  %i.f = shl nuw nsw i32 1, %0                    ; 4 uses
  %i.g = load i8, ptr %i.e, align 1, !tbaa !39
  %i.h = zext i8 %i.g to i32
  %i.i = lshr i32 %i.h, %0
  %i.j = and i32 %i.i, 1
  %i.k = getelementptr i8, ptr %i.d, i64 223457
  %i.l = load <12 x i8>, ptr %i.k, align 1, !tbaa !39
  %i.m = zext <12 x i8> %i.l to <12 x i32>
  %i.n = insertelement <12 x i32> poison, i32 %i.f, i64 0
  %i.o = shufflevector <12 x i32> %i.n, <12 x i32> poison, <12 x i32> zeroinitializer
  %i.p = and <12 x i32> %i.o, %i.m
  %i.q = icmp eq <12 x i32> %i.p, zeroinitializer
  %i.r = select <12 x i1> %i.q, <12 x i32> zeroinitializer, <12 x i32> <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096>
  %i.s = getelementptr i8, ptr %i.d, i64 223469
  %i.t = load i8, ptr %i.s, align 1, !tbaa !39
  %i.u = zext i8 %i.t to i32
  %i.v = and i32 %i.f, %i.u
  %.not.13.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.13.i, i32 0, i32 8192
  %i.x = getelementptr i8, ptr %i.d, i64 223470
  %i.y = load i8, ptr %i.x, align 1, !tbaa !39
  %i.z = zext i8 %i.y to i32
  %i.aa = and i32 %i.f, %i.z
  %.not.14.i = icmp eq i32 %i.aa, 0
  %i.ab = select i1 %.not.14.i, i32 0, i32 16384
  %i.ac = getelementptr i8, ptr %i.d, i64 223471
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !39
  %i.ae = zext i8 %i.ad to i32
  %i.af = and i32 %i.f, %i.ae
  %.not.15.i = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not.15.i, i32 0, i32 32768
  %i.ah = tail call i32 @llvm.vector.reduce.or.v12i32(<12 x i32> %i.r)
  %op.rdx = or disjoint i32 %i.ah, %i.w
  %op.rdx4 = or disjoint i32 %i.ab, %i.ag
  %op.rdx5 = or disjoint i32 %op.rdx, %op.rdx4
  %op.rdx6 = or disjoint i32 %op.rdx5, %i.j
  br label %bb.c

bb.c:                                             ; preds = %check_valid_tool.exit, %bb.b
  %.0 = phi i32 [ %op.rdx6, %bb.b ], [ -1, %check_valid_tool.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @monitoring_set_events_impl(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 5
  br i1 %or.cond.i, label %check_valid_tool.exit, label %bb.b

check_valid_tool.exit:                            ; preds = %bb.a
  %i.a = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.b = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.a, ptr noundef nonnull @.str.27, i32 noundef %0) #12 ; 0 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 524287
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.d = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.c, ptr noundef nonnull @.str.32, i32 noundef %1) #12 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = and i32 %1, 196608
  %.not18 = icmp eq i32 %i.e, 0
  %i.f = and i32 %1, 196624
  %.not19 = icmp eq i32 %i.f, 196624
  %or.cond22 = or i1 %.not18, %.not19
  br i1 %or.cond22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.33) #12 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = and i32 %1, 327679
  %.not20 = icmp samesign ult i32 %1, 262144
  %i.j = and i32 %1, 64767
  %i.k = or disjoint i32 %i.j, 768
  %.016 = select i1 %.not20, i32 %i.i, i32 %i.k
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !165  ; 2 uses
  tail call void @_PyEval_StopTheWorld(ptr noundef %i.m) #12
  %i.n = tail call i32 @_PyMonitoring_SetEvents(i32 noundef %0, i32 noundef %.016)
  tail call void @_PyEval_StartTheWorld(ptr noundef %i.m) #12
  %.not21 = icmp eq i32 %i.n, 0
  %.0 = select i1 %.not21, ptr @_Py_NoneStruct, ptr null
  br label %bb.g

bb.g:                                             ; preds = %check_valid_tool.exit, %bb.f, %bb.e, %bb.c
  %.1 = phi ptr [ %.0, %bb.f ], [ null, %bb.c ], [ null, %bb.e ], [ null, %check_valid_tool.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2048) i32 @monitoring_get_local_events_impl(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !82
  %.not = icmp eq ptr %.val, @PyCode_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !55
  %i.c = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.b, ptr noundef nonnull @.str.34) #12 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %0, 5
  br i1 %or.cond.i, label %check_valid_tool.exit, label %bb.d

check_valid_tool.exit:                            ; preds = %bb.c
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.27, i32 noundef %0) #12 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 5 uses
  %.not16 = icmp eq ptr %i.g, null
  br i1 %.not16, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.h = shl nuw nsw i32 1, %0                    ; 3 uses
  %i.i = load i8, ptr %i.g, align 1, !tbaa !39
  %i.j = zext i8 %i.i to i32
  %i.k = lshr i32 %i.j, %0
  %i.l = and i32 %i.k, 1
  %i.m = getelementptr i8, ptr %i.g, i64 1
  %i.n = load <8 x i8>, ptr %i.m, align 1, !tbaa !39
  %i.o = zext <8 x i8> %i.n to <8 x i32>
  %i.p = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %i.q = shufflevector <8 x i32> %i.p, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.r = and <8 x i32> %i.q, %i.o
  %i.s = icmp eq <8 x i32> %i.r, zeroinitializer
  %i.t = select <8 x i1> %i.s, <8 x i32> zeroinitializer, <8 x i32> <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256>
  %i.u = getelementptr i8, ptr %i.g, i64 9
  %i.v = load i8, ptr %i.u, align 1, !tbaa !39
  %i.w = zext i8 %i.v to i32
  %i.x = and i32 %i.h, %i.w
  %.not17.9 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not17.9, i32 0, i32 512
  %i.z = getelementptr i8, ptr %i.g, i64 10
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !39
  %i.ab = zext i8 %i.aa to i32
  %i.ac = and i32 %i.h, %i.ab
  %.not17.10 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not17.10, i32 0, i32 1024
  %i.ae = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.t)
  %op.rdx = or disjoint i32 %i.ae, %i.y
  %op.rdx7 = or disjoint i32 %i.ad, %i.l
end_hunk_0
