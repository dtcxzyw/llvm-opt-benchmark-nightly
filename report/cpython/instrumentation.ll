inline.NumInlined: 253
inline.NumDeleted: 86
begin_hunk_0_@_Py_call_instrumentation_instruction:bb.a
  store ptr %i.c, ptr %i.ag, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ae, ptr %i.ah, align 16, !tbaa !55
  %.not4453 = icmp eq i8 %.in, 0
  br i1 %.not4453, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ai = getelementptr [2 x i8], ptr %i.d, i64 %i.l ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 2
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.s
  %.03954 = phi i8 [ %.in, %.lr.ph ], [ %i.ay, %bb.s ] ; 4 uses
  %i.ak = icmp ugt i8 %.03954, 15
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = lshr i8 %.03954, 4
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr i8, ptr @MOST_SIGNIFICANT_BITS, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39
  %i.ap = sext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, 4
  br label %most_significant_bit.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = zext nneg i8 %.03954 to i64
  %i.as = getelementptr i8, ptr @MOST_SIGNIFICANT_BITS, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !39
  %i.au = sext i8 %i.at to i32
  br label %most_significant_bit.exit

most_significant_bit.exit:                        ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.aq, %bb.h ], [ %i.au, %bb.i ] ; 2 uses
  %i.av = shl nuw i32 1, %.0.i                    ; 2 uses
  %i.aw = trunc i32 %i.av to i8
  %i.ax = xor i8 %i.aw, -1                        ; 2 uses
  %i.ay = and i8 %.03954, %i.ax                   ; 2 uses
  %i.az = trunc i32 %.0.i to i8
  %i.ba = call fastcc i32 @call_one_instrument(ptr noundef %i.s, ptr noundef %0, ptr noundef nonnull %i.ag, i64 noundef -9223372036854775806, i8 noundef signext %i.az, i32 noundef 6) ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.s, label %bb.j

bb.j:                                             ; preds = %most_significant_bit.exit
  %i.bc = icmp slt i32 %i.ba, 0
  br i1 %i.bc, label %.critedge, label %bb.l

.critedge:                                        ; preds = %bb.j
  %i.bd = load i32, ptr %i.ae, align 8, !tbaa !39 ; 2 uses
  %.not.i45 = icmp sgt i32 %i.bd, -1
  br i1 %.not.i45, label %bb.k, label %Py_DECREF.exit46

bb.k:                                             ; preds = %.critedge
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr %i.ae, align 8, !tbaa !39
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %Py_DECREF.exit46.sink.split, label %Py_DECREF.exit46

bb.l:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !56  ; 2 uses
  call void @_PyEval_StopTheWorld(ptr noundef %i.bg) #12
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !32  ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 120
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !90 ; 2 uses
  %.not.i49 = icmp eq ptr %i.bj, null
  br i1 %.not.i49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.l   ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !39
  %i.bm = and i8 %i.bl, %i.ax                     ; 2 uses
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !39
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %._crit_edge.i, label %remove_per_instruction_tools.exit

bb.n:                                             ; preds = %bb.l
  %i.bo = getelementptr i8, ptr %i.bh, i64 17
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = and i32 %i.av, %i.bq
  %i.bs = icmp eq i32 %i.br, %i.bq
  br i1 %i.bs, label %._crit_edge.i, label %remove_per_instruction_tools.exit

._crit_edge.i:                                    ; preds = %bb.n, %bb.m
  %i.bt = load i8, ptr %i.ai, align 2, !tbaa !39  ; 2 uses
  %i.bu = icmp eq i8 %i.bt, -3
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i
  %i.bv = getelementptr i8, ptr %i.bh, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !33 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 1
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.bz = zext i8 %i.by to i64
  %sext52 = mul i64 %sext, %i.bz
  %i.ca = ashr exact i64 %sext52, 32
  %i.cb = getelementptr i8, ptr %i.bx, i64 %i.ca  ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !39
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %.014.in.i.i = phi i8 [ %i.cc, %bb.o ], [ %i.bt, %._crit_edge.i ]
  %.0.i.i = phi ptr [ %i.cb, %bb.o ], [ %i.ai, %._crit_edge.i ]
  %.not.i.i = icmp eq i8 %.014.in.i.i, -19
  br i1 %.not.i.i, label %bb.q, label %remove_per_instruction_tools.exit

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr i8, ptr %i.bh, i64 112
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !40
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.l
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !39  ; 2 uses
  store i8 %i.cg, ptr %.0.i.i, align 1, !tbaa !39
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !39
  %.not16.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not16.i.i, label %remove_per_instruction_tools.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i16 9, ptr %i.aj, align 2, !tbaa !39
  br label %remove_per_instruction_tools.exit

remove_per_instruction_tools.exit:                ; preds = %bb.m, %bb.n, %bb.p, %bb.q, %bb.r
  call void @_PyEval_StartTheWorld(ptr noundef %i.bg) #12
  br label %bb.s

bb.s:                                             ; preds = %remove_per_instruction_tools.exit, %most_significant_bit.exit
  %.not44 = icmp eq i8 %i.ay, 0
  br i1 %.not44, label %._crit_edge, label %bb.g, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.s, %bb.f
  %i.ck = load i32, ptr %i.ae, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp sgt i32 %i.ck, -1
  br i1 %.not.i, label %bb.t, label %Py_DECREF.exit46

bb.t:                                             ; preds = %._crit_edge
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.ae, align 8, !tbaa !39
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %Py_DECREF.exit46.sink.split, label %Py_DECREF.exit46

Py_DECREF.exit46.sink.split:                      ; preds = %bb.t, %bb.k
  %.2.ph = phi i32 [ -1, %bb.k ], [ %i.o, %bb.t ]
  call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #12
  br label %Py_DECREF.exit46

Py_DECREF.exit46:                                 ; preds = %Py_DECREF.exit46.sink.split, %bb.t, %._crit_edge, %bb.k, %.critedge
  %.2 = phi i32 [ %i.o, %bb.t ], [ -1, %.critedge ], [ -1, %bb.k ], [ %i.o, %._crit_edge ], [ %.2.ph, %Py_DECREF.exit46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit46, %bb.e, %bb.a
  %.4 = phi i32 [ %i.o, %bb.a ], [ %.2, %Py_DECREF.exit46 ], [ -1, %bb.e ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_Py_Instrument(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load atomic i64, ptr %1 monotonic, align 8
  %i.b = and i64 %i.a, 4294967295
  %i.c = getelementptr i8, ptr %0, i64 168
  %i.d = load i64, ptr %i.c, align 8, !tbaa !92
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %instrument_lock_held.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @force_instrument_lock_held(ptr noundef nonnull %0, ptr noundef nonnull readonly %1)
  br label %instrument_lock_held.exit

instrument_lock_held.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyMonitoring_SetEvents(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 7 uses
  %i.e = icmp slt i32 %0, 6
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 224712
  %i.g = sext i32 %0 to i64
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %check_tool.exit, label %bb.c

check_tool.exit:                                  ; preds = %bb.b
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.11, i32 noundef %0) #12 ; 0 uses
  br label %instrument_all_executing_code_objects.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr i8, ptr %i.d, i64 223456   ; 2 uses
  %i.n = shl nuw i32 1, %0                        ; 2 uses
  %i.o = load <16 x i8>, ptr %i.m, align 1, !tbaa !39 ; 3 uses
  %i.p = extractelement <16 x i8> %i.o, i64 0
  %i.q = zext i8 %i.p to i32
  %i.r = lshr i32 %i.q, %0
  %i.s = and i32 %i.r, 1
  %2 = shufflevector <16 x i8> %i.o, <16 x i8> poison, <15 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.t = trunc i32 %i.n to i8
  %3 = insertelement <15 x i8> poison, i8 %i.t, i64 0
  %4 = shufflevector <15 x i8> %3, <15 x i8> poison, <15 x i32> zeroinitializer
  %5 = and <15 x i8> %4, %2
  %6 = icmp eq <15 x i8> %5, zeroinitializer
  %7 = select <15 x i1> %6, <15 x i32> zeroinitializer, <15 x i32> <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768>
  %i.u = tail call i32 @llvm.vector.reduce.or.v15i32(<15 x i32> %7)
  %op.rdx.a = or disjoint i32 %i.u, %i.s
  %i.v = icmp eq i32 %op.rdx.a, %1
  br i1 %i.v, label %instrument_all_executing_code_objects.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load atomic i64, ptr %i.d monotonic, align 8
  %i.x = trunc i64 %i.w to i32
  %i.y = add i32 %i.x, 256                        ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !55
  %i.ab = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aa, ptr noundef nonnull @.str) #12 ; 0 uses
  br label %instrument_all_executing_code_objects.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = trunc i32 %i.n to i8
  %i.ad = xor i8 %i.ac, -1
  %8 = insertelement <8 x i32> poison, i32 %1, i64 0
  %9 = shufflevector <8 x i32> %8, <8 x i32> poison, <16 x i32> zeroinitializer
  %10 = lshr <16 x i32> %9, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = and <16 x i32> %10, splat (i32 1)
  %i.af = insertelement <16 x i8> poison, i8 %i.ad, i64 0
  %i.ag = shufflevector <16 x i8> %i.af, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ah = and <16 x i8> %i.o, %i.ag
  %i.ai = insertelement <16 x i32> poison, i32 %0, i64 0
  %i.aj = shufflevector <16 x i32> %i.ai, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ak = shl nuw <16 x i32> %i.ae, %i.aj
  %i.al = trunc <16 x i32> %i.ak to <16 x i8>
  %i.am = or <16 x i8> %i.ah, %i.al
  store <16 x i8> %i.am, ptr %i.m, align 1, !tbaa !39
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !56  ; 3 uses
  %i.ao = load atomic i64, ptr %i.an monotonic, align 8 ; 2 uses
  %i.ap = zext i32 %i.y to i64                    ; 4 uses
  %i.aq = and i64 %i.ao, 255
  %i.ar = or i64 %i.aq, %i.ap
  %i.as = cmpxchg ptr %i.an, i64 %i.ao, i64 %i.ar seq_cst seq_cst, align 8 ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  br i1 %i.at, label %set_version_raw.exit.i, label %_Py_atomic_compare_exchange_uintptr.exit.i.i

_Py_atomic_compare_exchange_uintptr.exit.i.i:     ; preds = %bb.f, %_Py_atomic_compare_exchange_uintptr.exit.i.i
  %i.au = phi { i64, i1 } [ %i.ay, %_Py_atomic_compare_exchange_uintptr.exit.i.i ], [ %i.as, %bb.f ]
  %i.av = extractvalue { i64, i1 } %i.au, 0       ; 2 uses
  %i.aw = and i64 %i.av, 255
  %i.ax = or i64 %i.aw, %i.ap
  %i.ay = cmpxchg ptr %i.an, i64 %i.av, i64 %i.ax seq_cst seq_cst, align 8 ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %set_version_raw.exit.i, label %_Py_atomic_compare_exchange_uintptr.exit.i.i

set_version_raw.exit.i:                           ; preds = %_Py_atomic_compare_exchange_uintptr.exit.i.i, %bb.f
  %i.ba = getelementptr i8, ptr %i.b, i64 24      ; 3 uses
  %i.bb = load atomic i64, ptr %i.ba monotonic, align 8 ; 2 uses
  %i.bc = and i64 %i.bb, 255
  %i.bd = or i64 %i.bc, %i.ap
  %i.be = cmpxchg ptr %i.ba, i64 %i.bb, i64 %i.bd seq_cst seq_cst, align 8 ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  br i1 %i.bf, label %set_global_version.exit, label %_Py_atomic_compare_exchange_uintptr.exit.i4.i

_Py_atomic_compare_exchange_uintptr.exit.i4.i:    ; preds = %set_version_raw.exit.i, %_Py_atomic_compare_exchange_uintptr.exit.i4.i
  %i.bg = phi { i64, i1 } [ %i.bk, %_Py_atomic_compare_exchange_uintptr.exit.i4.i ], [ %i.be, %set_version_raw.exit.i ]
  %i.bh = extractvalue { i64, i1 } %i.bg, 0       ; 2 uses
  %i.bi = and i64 %i.bh, 255
  %i.bj = or i64 %i.bi, %i.ap
  %i.bk = cmpxchg ptr %i.ba, i64 %i.bh, i64 %i.bj seq_cst seq_cst, align 8 ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  br i1 %i.bl, label %set_global_version.exit, label %_Py_atomic_compare_exchange_uintptr.exit.i4.i

set_global_version.exit:                          ; preds = %_Py_atomic_compare_exchange_uintptr.exit.i4.i, %set_version_raw.exit.i
  %i.bm = getelementptr i8, ptr %i.d, i64 7376    ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !94
  %i.bo = getelementptr i8, ptr %i.bn, i64 864    ; 2 uses
  %i.bp = cmpxchg ptr %i.bo, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.bq = extractvalue { i8, i1 } %i.bp, 1
  br i1 %i.bq, label %PyMutex_LockFlags.exit.i, label %bb.g

bb.g:                                             ; preds = %set_global_version.exit
  %i.br = tail call i32 @_PyMutex_LockTimed(ptr noundef %i.bo, i64 noundef -1, i32 noundef 0) #12 ; 0 uses
  br label %PyMutex_LockFlags.exit.i

PyMutex_LockFlags.exit.i:                         ; preds = %bb.g, %set_global_version.exit
  %i.bs = getelementptr i8, ptr %i.d, i64 7336
  %.01633.i = load ptr, ptr %i.bs, align 8, !tbaa !93 ; 2 uses
  %.not34.i = icmp eq ptr %.01633.i, null
  br i1 %.not34.i, label %.loopexit.i, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %PyMutex_LockFlags.exit.i, %._crit_edge.i
  %.01635.i = phi ptr [ %.016.i, %._crit_edge.i ], [ %.01633.i, %PyMutex_LockFlags.exit.i ] ; 2 uses
  %i.bt = getelementptr i8, ptr %.01635.i, i64 72
  %.030.i = load ptr, ptr %i.bt, align 8, !tbaa !161 ; 2 uses
  %.not2231.i = icmp eq ptr %.030.i, null
  br i1 %.not2231.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph36.i, %instrument_lock_held.exit.thread.i
  %.032.i = phi ptr [ %.0.i17, %instrument_lock_held.exit.thread.i ], [ %.030.i, %.lr.ph36.i ] ; 3 uses
  %i.bu = getelementptr i8, ptr %.032.i, i64 74
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !162
  %i.bw = icmp slt i8 %i.bv, 3
  br i1 %i.bw, label %bb.h, label %instrument_lock_held.exit.thread.i

bb.h:                                             ; preds = %.lr.ph.i
  %.0.val.i = load i64, ptr %.032.i, align 8
  %i.bx = and i64 %.0.val.i, -2
  %i.by = inttoptr i64 %i.bx to ptr               ; 2 uses
  %i.bz = load atomic i64, ptr %i.d monotonic, align 8
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = getelementptr i8, ptr %i.by, i64 168
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !92
  %i.cd = icmp eq i64 %i.cc, %i.ca
  br i1 %i.cd, label %instrument_lock_held.exit.thread.i, label %instrument_lock_held.exit.i

instrument_lock_held.exit.i:                      ; preds = %bb.h
  %i.ce = tail call fastcc i32 @force_instrument_lock_held(ptr noundef nonnull %i.by, ptr noundef nonnull readonly %i.d)
  %.not23.i = icmp eq i32 %i.ce, 0
  br i1 %.not23.i, label %instrument_lock_held.exit.thread.i, label %.loopexit.i

instrument_lock_held.exit.thread.i:               ; preds = %instrument_lock_held.exit.i, %bb.h, %.lr.ph.i
  %i.cf = getelementptr i8, ptr %.032.i, i64 8
  %.0.i17 = load ptr, ptr %i.cf, align 8, !tbaa !161 ; 2 uses
  %.not22.i = icmp eq ptr %.0.i17, null
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !163

._crit_edge.i:                                    ; preds = %instrument_lock_held.exit.thread.i, %.lr.ph36.i
  %i.cg = getelementptr i8, ptr %.01635.i, i64 8
  %.016.i = load ptr, ptr %i.cg, align 8, !tbaa !93 ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph36.i, !llvm.loop !164

.loopexit.i:                                      ; preds = %._crit_edge.i, %instrument_lock_held.exit.i, %PyMutex_LockFlags.exit.i
  %.4.i = phi i32 [ 0, %PyMutex_LockFlags.exit.i ], [ -1, %instrument_lock_held.exit.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ch = load ptr, ptr %i.bm, align 8, !tbaa !94
  %i.ci = getelementptr i8, ptr %i.ch, i64 864    ; 2 uses
  %i.cj = cmpxchg ptr %i.ci, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.ck = extractvalue { i8, i1 } %i.cj, 1
  br i1 %i.ck, label %instrument_all_executing_code_objects.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  tail call void @PyMutex_Unlock(ptr noundef %i.ci) #12
  br label %instrument_all_executing_code_objects.exit

instrument_all_executing_code_objects.exit:       ; preds = %bb.i, %.loopexit.i, %check_tool.exit, %bb.c, %bb.e
  %.2 = phi i32 [ -1, %check_tool.exit ], [ 0, %bb.c ], [ -1, %bb.e ], [ %.4.i, %.loopexit.i ], [ %.4.i, %bb.i ]
  ret i32 %.2
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyMonitoring_SetLocalEvents(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 192
  %i.d = load i32, ptr %i.c, align 8, !tbaa !166
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.f, align 8, !tbaa !167
  %.not = icmp sgt i64 %.val, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !55
  %i.h = getelementptr i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.1, ptr noundef %i.i) #12 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.k = icmp slt i32 %1, 6
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.b, i64 224712
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %check_tool.exit, label %bb.e

check_tool.exit:                                  ; preds = %bb.d
  %i.q = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.r = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.q, ptr noundef nonnull @.str.11, i32 noundef %1) #12 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr i8, ptr %0, i64 176        ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = tail call ptr @PyMem_Malloc(i64 noundef 128) #12 ; 3 uses
  store ptr %i.v, ptr %i.s, align 8, !tbaa !32
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %allocate_instrumentation_data.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.v, i8 0, i64 11, i1 false)
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.y = getelementptr i8, ptr %i.x, i64 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.y, i8 0, i64 11, i1 false)
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  store ptr null, ptr %i.aa, align 8, !tbaa !57
  %i.ab = getelementptr i8, ptr %i.z, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false)
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !32
  br label %bb.h

allocate_instrumentation_data.exit:               ; preds = %bb.f
  %i.ac = tail call ptr @PyErr_NoMemory() #12     ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ad = phi ptr [ %.pre, %bb.g ], [ %i.t, %bb.e ] ; 13 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 224776
  %i.af = sext i32 %1 to i64                      ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !169
  %i.ai = getelementptr i8, ptr %i.ad, i64 32
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.af
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !169
  %i.ak = shl nuw i32 1, %1                       ; 4 uses
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !39  ; 2 uses
  %i.am = zext i8 %i.al to i32
  %i.an = lshr i32 %i.am, %1
  %i.ao = and i32 %i.an, 1
  %i.ap = getelementptr i8, ptr %i.ad, i64 1      ; 2 uses
  %i.aq = load <8 x i8>, ptr %i.ap, align 1, !tbaa !39 ; 9 uses
  %3 = zext <8 x i8> %i.aq to <8 x i32>
  %4 = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %5 = shufflevector <8 x i32> %4, <8 x i32> poison, <8 x i32> zeroinitializer
  %6 = and <8 x i32> %5, %3
  %i.ar = icmp eq <8 x i32> %6, zeroinitializer
  %i.as = select <8 x i1> %i.ar, <8 x i32> zeroinitializer, <8 x i32> <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256>
  %i.at = getelementptr i8, ptr %i.ad, i64 9      ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !39  ; 2 uses
  %i.av = zext i8 %i.au to i32
  %i.aw = and i32 %i.ak, %i.av
  %.not.9.i = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not.9.i, i32 0, i32 512
  %i.ay = getelementptr i8, ptr %i.ad, i64 10     ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !39  ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = and i32 %i.ak, %i.ba
  %.not.10.i = icmp eq i32 %i.bb, 0
  %i.bc = select i1 %.not.10.i, i32 0, i32 1024
  %i.bd = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.as)
  %op.rdx = or disjoint i32 %i.bd, %i.ax
  %op.rdx31 = or disjoint i32 %i.bc, %i.ao
  %op.rdx32 = or disjoint i32 %op.rdx, %op.rdx31
  %i.be = icmp eq i32 %op.rdx32, %2
  br i1 %i.be, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr i8, ptr %i.ad, i64 8
  %i.bg = getelementptr i8, ptr %i.ad, i64 7
  %i.bh = getelementptr i8, ptr %i.ad, i64 6
  %i.bi = getelementptr i8, ptr %i.ad, i64 5
  %i.bj = getelementptr i8, ptr %i.ad, i64 4
  %i.bk = getelementptr i8, ptr %i.ad, i64 3
  %i.bl = getelementptr i8, ptr %i.ad, i64 2
  %i.bm = trunc i32 %i.ak to i8
  %i.bn = xor i8 %i.bm, -1                        ; 11 uses
  %i.bo = and i32 %2, 1
  %i.bp = and i8 %i.al, %i.bn
  %i.bq = shl nuw i32 %i.bo, %1
  %i.br = trunc i32 %i.bq to i8
  %i.bs = or i8 %i.bp, %i.br
  store i8 %i.bs, ptr %i.ad, align 1, !tbaa !39
  %i.bt = lshr i32 %2, 1
  %i.bu = and i32 %i.bt, 1
  %i.bv = extractelement <8 x i8> %i.aq, i64 0
  %i.bw = and i8 %i.bv, %i.bn
  %i.bx = shl nuw i32 %i.bu, %1
  %i.by = trunc i32 %i.bx to i8
  %i.bz = or i8 %i.bw, %i.by
  store i8 %i.bz, ptr %i.ap, align 1, !tbaa !39
  %i.ca = lshr i32 %2, 2
  %i.cb = and i32 %i.ca, 1
  %i.cc = extractelement <8 x i8> %i.aq, i64 1
  %i.cd = and i8 %i.cc, %i.bn
  %i.ce = shl nuw i32 %i.cb, %1
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = or i8 %i.cd, %i.cf
  store i8 %i.cg, ptr %i.bl, align 1, !tbaa !39
  %i.ch = lshr i32 %2, 3
  %i.ci = and i32 %i.ch, 1
  %i.cj = extractelement <8 x i8> %i.aq, i64 2
  %i.ck = and i8 %i.cj, %i.bn
  %i.cl = shl nuw i32 %i.ci, %1
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = or i8 %i.ck, %i.cm
  store i8 %i.cn, ptr %i.bk, align 1, !tbaa !39
  %i.co = lshr i32 %2, 4
  %i.cp = and i32 %i.co, 1
  %i.cq = extractelement <8 x i8> %i.aq, i64 3
  %i.cr = and i8 %i.cq, %i.bn
  %i.cs = shl nuw i32 %i.cp, %1
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = or i8 %i.cr, %i.ct
  store i8 %i.cu, ptr %i.bj, align 1, !tbaa !39
  %i.cv = lshr i32 %2, 5
  %i.cw = and i32 %i.cv, 1
  %i.cx = extractelement <8 x i8> %i.aq, i64 4
  %i.cy = and i8 %i.cx, %i.bn
  %i.cz = shl nuw i32 %i.cw, %1
  %i.da = trunc i32 %i.cz to i8
  %i.db = or i8 %i.cy, %i.da
  store i8 %i.db, ptr %i.bi, align 1, !tbaa !39
  %i.dc = lshr i32 %2, 6
  %i.dd = and i32 %i.dc, 1
  %i.de = extractelement <8 x i8> %i.aq, i64 5
  %i.df = and i8 %i.de, %i.bn
  %i.dg = shl nuw i32 %i.dd, %1
  %i.dh = trunc i32 %i.dg to i8
  %i.di = or i8 %i.df, %i.dh
  store i8 %i.di, ptr %i.bh, align 1, !tbaa !39
  %i.dj = lshr i32 %2, 7
  %i.dk = and i32 %i.dj, 1
  %i.dl = extractelement <8 x i8> %i.aq, i64 6
  %i.dm = and i8 %i.dl, %i.bn
  %i.dn = shl nuw i32 %i.dk, %1
  %i.do = trunc i32 %i.dn to i8
  %i.dp = or i8 %i.dm, %i.do
  store i8 %i.dp, ptr %i.bg, align 1, !tbaa !39
  %i.dq = lshr i32 %2, 8
  %i.dr = and i32 %i.dq, 1
  %i.ds = extractelement <8 x i8> %i.aq, i64 7
  %i.dt = and i8 %i.ds, %i.bn
  %i.du = shl nuw i32 %i.dr, %1
  %i.dv = trunc i32 %i.du to i8
  %i.dw = or i8 %i.dt, %i.dv
  store i8 %i.dw, ptr %i.bf, align 1, !tbaa !39
  %i.dx = lshr i32 %2, 9
  %i.dy = and i32 %i.dx, 1
  %i.dz = and i8 %i.au, %i.bn
  %i.ea = shl nuw i32 %i.dy, %1
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = or i8 %i.dz, %i.eb
  store i8 %i.ec, ptr %i.at, align 1, !tbaa !39
  %i.ed = lshr i32 %2, 10
  %i.ee = and i32 %i.ed, 1
  %i.ef = and i8 %i.az, %i.bn
  %i.eg = shl nuw i32 %i.ee, %1
  %i.eh = trunc i32 %i.eg to i8
  %i.ei = or i8 %i.ef, %i.eh
  store i8 %i.ei, ptr %i.ay, align 1, !tbaa !39
  %i.ej = tail call fastcc i32 @force_instrument_lock_held(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %allocate_instrumentation_data.exit, %check_tool.exit, %bb.i, %bb.h, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %allocate_instrumentation_data.exit ], [ -1, %check_tool.exit ], [ %i.ej, %bb.i ], [ 0, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @force_instrument_lock_held(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %struct._line_offsets, align 8      ; 4 uses
  %3 = alloca %struct._line_offsets, align 8      ; 6 uses
  %4 = alloca %struct._Py_LocalMonitors, align 8  ; 7 uses
  %5 = alloca %struct._Py_LocalMonitors, align 8  ; 10 uses
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !167 ; 12 uses
  %i.b = trunc i64 %.val to i32                   ; 15 uses
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !170
  %i.e = and i32 %i.d, 33554432
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %update_instrumentation_data.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 176        ; 81 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @PyMem_Malloc(i64 noundef 128) #12 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !32
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %allocate_instrumentation_data.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.i, i8 0, i64 11, i1 false)
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.l = getelementptr i8, ptr %i.k, i64 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.l, i8 0, i64 11, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !57
  %i.o = getelementptr i8, ptr %i.m, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %bb.e

allocate_instrumentation_data.exit.i:             ; preds = %bb.c
  %i.p = tail call ptr @PyErr_NoMemory() #12      ; 0 uses
  br label %update_instrumentation_data.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.g, %bb.b ] ; 18 uses
  %i.r = getelementptr i8, ptr %1, i64 224776
  %i.s = getelementptr i8, ptr %i.q, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !169
  %i.u = load i64, ptr %i.r, align 8, !tbaa !169
  %.not98.i = icmp eq i64 %i.t, %i.u
  br i1 %.not98.i, label %.loopexit136.i, label %.preheader135.i

bb.f:                                             ; preds = %.loopexit136.7.i
  %.sroa.0.1.extract.shift.i = lshr i64 %i.ca, 8
  %.sroa.0.1.extract.trunc.i = trunc i64 %.sroa.0.1.extract.shift.i to i8
  %i.v = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.1.extract.trunc.i)
  %i.w = icmp samesign ugt i8 %i.v, 1
  br i1 %i.w, label %multiple_tools.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.2.extract.shift.i = lshr i64 %i.ca, 16
  %.sroa.0.2.extract.trunc.i = trunc i64 %.sroa.0.2.extract.shift.i to i8
  %i.x = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.2.extract.trunc.i)
  %i.y = icmp samesign ugt i8 %i.x, 1
  br i1 %i.y, label %multiple_tools.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.3.extract.shift.i = lshr i64 %i.ca, 24
  %.sroa.0.3.extract.trunc.i = trunc i64 %.sroa.0.3.extract.shift.i to i8
  %i.z = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.3.extract.trunc.i)
  %i.aa = icmp samesign ugt i8 %i.z, 1
  br i1 %i.aa, label %multiple_tools.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.4.extract.shift.i = lshr i64 %i.ca, 32
  %.sroa.0.4.extract.trunc.i = trunc i64 %.sroa.0.4.extract.shift.i to i8
  %i.ab = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.4.extract.trunc.i)
  %i.ac = icmp samesign ugt i8 %i.ab, 1
  br i1 %i.ac, label %multiple_tools.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.5.extract.shift121.i = lshr i64 %i.ca, 40
  %.sroa.0.5.extract.trunc122.i = trunc i64 %.sroa.0.5.extract.shift121.i to i8
  %i.ad = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.5.extract.trunc122.i)
  %i.ae = icmp samesign ugt i8 %i.ad, 1
  br i1 %i.ae, label %multiple_tools.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.6.extract.shift124.i = lshr i64 %i.ca, 48
  %.sroa.0.6.extract.trunc125.i = trunc i64 %.sroa.0.6.extract.shift124.i to i8
  %i.af = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.6.extract.trunc125.i)
  %i.ag = icmp samesign ugt i8 %i.af, 1
  br i1 %i.ag, label %multiple_tools.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.7.extract.shift.i = lshr i64 %i.ca, 56
  %.sroa.0.7.extract.trunc.i = trunc nuw i64 %.sroa.0.7.extract.shift.i to i8
  %6 = insertelement <3 x i8> poison, i8 %.sroa.0.7.extract.trunc.i, i64 0
  %7 = insertelement <3 x i8> %6, i8 %i.cb, i64 1
  %8 = insertelement <3 x i8> %7, i8 %i.cc, i64 2
  %.fr534 = freeze <3 x i8> %8
  %9 = tail call range(i8 0, 9) <3 x i8> @llvm.ctpop.v3i8(<3 x i8> %.fr534)
  %10 = icmp samesign ugt <3 x i8> %9, splat (i8 1)
  %11 = bitcast <3 x i1> %10 to i3
  %.not535 = icmp eq i3 %11, 0
  br i1 %.not535, label %bb.m, label %multiple_tools.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.cd)
  %i.ai = icmp samesign ugt i8 %i.ah, 1
  br label %multiple_tools.exit.i

multiple_tools.exit.i:                            ; preds = %.loopexit136.7.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.lcssa.i.i = phi i1 [ true, %bb.j ], [ true, %.loopexit136.7.i ], [ true, %bb.f ], [ %i.ai, %bb.m ], [ true, %bb.g ], [ true, %bb.k ], [ true, %bb.h ], [ true, %bb.l ], [ true, %bb.i ] ; 3 uses
  %i.aj = getelementptr i8, ptr %i.bv, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !57
  %i.al = icmp eq ptr %i.ak, null
  %or.cond.i = select i1 %i.al, i1 %.lcssa.i.i, i1 false
  br i1 %or.cond.i, label %bb.n, label %initialize_tools.exit.i

.preheader135.i:                                  ; preds = %bb.e
  %12 = load <11 x i8>, ptr %i.q, align 1, !tbaa !39
  %13 = and <11 x i8> %12, splat (i8 -2)
  store <11 x i8> %13, ptr %i.q, align 1, !tbaa !39
  %.pre175.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.i

.loopexit136.i:                                   ; preds = %.preheader135.i, %bb.e
  %i.am = phi ptr [ %.pre175.i, %.preheader135.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !169
  %i.ap = getelementptr i8, ptr %1, i64 224784
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !169
  %.not98.1.i = icmp eq i64 %i.ao, %i.aq
  br i1 %.not98.1.i, label %.loopexit136.1.i, label %.preheader135.1.i

.preheader135.1.i:                                ; preds = %.loopexit136.i
  %14 = load <11 x i8>, ptr %i.q, align 1, !tbaa !39
  %15 = and <11 x i8> %14, splat (i8 -3)
  store <11 x i8> %15, ptr %i.q, align 1, !tbaa !39
  %.pre176.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.1.i

.loopexit136.1.i:                                 ; preds = %.preheader135.1.i, %.loopexit136.i
  %i.ar = phi ptr [ %.pre176.i, %.preheader135.1.i ], [ %i.am, %.loopexit136.i ] ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %i.at = load i64, ptr %i.as, align 8, !tbaa !169
  %i.au = getelementptr i8, ptr %1, i64 224792
  %i.av = load i64, ptr %i.au, align 8, !tbaa !169
  %.not98.2.i = icmp eq i64 %i.at, %i.av
  br i1 %.not98.2.i, label %.loopexit136.2.i, label %.preheader135.2.i

.preheader135.2.i:                                ; preds = %.loopexit136.1.i
  %16 = load <11 x i8>, ptr %i.q, align 1, !tbaa !39
  %17 = and <11 x i8> %16, splat (i8 -5)
  store <11 x i8> %17, ptr %i.q, align 1, !tbaa !39
  %.pre177.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.2.i

.loopexit136.2.i:                                 ; preds = %.preheader135.2.i, %.loopexit136.1.i
  %i.aw = phi ptr [ %.pre177.i, %.preheader135.2.i ], [ %i.ar, %.loopexit136.1.i ] ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !169
  %i.az = getelementptr i8, ptr %1, i64 224800
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !169
  %.not98.3.i = icmp eq i64 %i.ay, %i.ba
  br i1 %.not98.3.i, label %.loopexit136.3.i, label %.preheader135.3.i

.preheader135.3.i:                                ; preds = %.loopexit136.2.i
  %18 = load <11 x i8>, ptr %i.q, align 1, !tbaa !39
  %19 = and <11 x i8> %18, splat (i8 -9)
  store <11 x i8> %19, ptr %i.q, align 1, !tbaa !39
  %.pre178.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.3.i

.loopexit136.3.i:                                 ; preds = %.preheader135.3.i, %.loopexit136.2.i
  %i.bb = phi ptr [ %.pre178.i, %.preheader135.3.i ], [ %i.aw, %.loopexit136.2.i ] ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 64
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !169
  %i.be = getelementptr i8, ptr %1, i64 224808
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !169
  %.not98.4.i = icmp eq i64 %i.bd, %i.bf
  br i1 %.not98.4.i, label %.loopexit136.4.i, label %.preheader135.4.i

.preheader135.4.i:                                ; preds = %.loopexit136.3.i
  %20 = load <11 x i8>, ptr %i.q, align 1, !tbaa !39
  %21 = and <11 x i8> %20, splat (i8 -17)
  store <11 x i8> %21, ptr %i.q, align 1, !tbaa !39
  %.pre179.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.4.i

.loopexit136.4.i:                                 ; preds = %.preheader135.4.i, %.loopexit136.3.i
  %i.bg = phi ptr [ %.pre179.i, %.preheader135.4.i ], [ %i.bb, %.loopexit136.3.i ] ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 72
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !169
  %i.bj = getelementptr i8, ptr %1, i64 224816
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !169
  %.not98.5.i = icmp eq i64 %i.bi, %i.bk
  br i1 %.not98.5.i, label %.loopexit136.5.i, label %.preheader135.5.i

.preheader135.5.i:                                ; preds = %.loopexit136.4.i
  %22 = load <11 x i8>, ptr %i.q, align 1, !tbaa !39
  %23 = and <11 x i8> %22, splat (i8 -33)
  store <11 x i8> %23, ptr %i.q, align 1, !tbaa !39
  %.pre180.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.5.i

.loopexit136.5.i:                                 ; preds = %.preheader135.5.i, %.loopexit136.4.i
  %i.bl = phi ptr [ %.pre180.i, %.preheader135.5.i ], [ %i.bg, %.loopexit136.4.i ] ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 80
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !169
  %i.bo = getelementptr i8, ptr %1, i64 224824
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !169
  %.not98.6.i = icmp eq i64 %i.bn, %i.bp
  br i1 %.not98.6.i, label %.loopexit136.6.i, label %.preheader135.6.i

.preheader135.6.i:                                ; preds = %.loopexit136.5.i
  %24 = load <11 x i8>, ptr %i.q, align 1, !tbaa !39
  %25 = and <11 x i8> %24, splat (i8 -65)
  store <11 x i8> %25, ptr %i.q, align 1, !tbaa !39
  %.pre181.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.6.i

.loopexit136.6.i:                                 ; preds = %.preheader135.6.i, %.loopexit136.5.i
  %i.bq = phi ptr [ %.pre181.i, %.preheader135.6.i ], [ %i.bl, %.loopexit136.5.i ] ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 88
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !169
  %i.bt = getelementptr i8, ptr %1, i64 224832
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !169
  %.not98.7.i = icmp eq i64 %i.bs, %i.bu
  br i1 %.not98.7.i, label %.loopexit136.7.i, label %.preheader135.7.i

.preheader135.7.i:                                ; preds = %.loopexit136.6.i
  %26 = load <11 x i8>, ptr %i.q, align 1, !tbaa !39
  %27 = and <11 x i8> %26, splat (i8 127)
  store <11 x i8> %27, ptr %i.q, align 1, !tbaa !39
  %.pre182.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.7.i

.loopexit136.7.i:                                 ; preds = %.preheader135.7.i, %.loopexit136.6.i
  %i.bv = phi ptr [ %.pre182.i, %.preheader135.7.i ], [ %i.bq, %.loopexit136.6.i ] ; 4 uses
  %i.bw = getelementptr i8, ptr %1, i64 223456    ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %1, i64 223464    ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8            ; 3 uses
  %.sroa.026.0.copyload.i = load i64, ptr %i.bv, align 8
  %.sroa.227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.227.0.copyload.i = load i24, ptr %.sroa.227.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.917.8.extract.trunc.i.i = trunc i64 %i.bz to i8
  %.sroa.1118.8.extract.shift.i.i = lshr i64 %i.bz, 8
  %.sroa.1118.8.extract.trunc.i.i = trunc i64 %.sroa.1118.8.extract.shift.i.i to i8
  %.sroa.1219.8.extract.shift.i.i = lshr i64 %i.bz, 16
  %.sroa.1219.8.extract.trunc.i.i = trunc i64 %.sroa.1219.8.extract.shift.i.i to i8
  %.sroa.9.8.extract.trunc.i.i = trunc i24 %.sroa.227.0.copyload.i to i8
  %.sroa.11.8.extract.shift.i.i = lshr i24 %.sroa.227.0.copyload.i, 8
  %.sroa.11.8.extract.trunc.i.i = trunc i24 %.sroa.11.8.extract.shift.i.i to i8
  %.sroa.12.8.extract.shift.i.i = lshr i24 %.sroa.227.0.copyload.i, 16
  %.sroa.12.8.extract.trunc.i.i = trunc nuw i24 %.sroa.12.8.extract.shift.i.i to i8
  %i.ca = or i64 %.sroa.026.0.copyload.i, %i.bx   ; 10 uses
  %i.cb = or i8 %.sroa.9.8.extract.trunc.i.i, %.sroa.917.8.extract.trunc.i.i
  %i.cc = or i8 %.sroa.11.8.extract.trunc.i.i, %.sroa.1118.8.extract.trunc.i.i
  %i.cd = or i8 %.sroa.12.8.extract.trunc.i.i, %.sroa.1219.8.extract.trunc.i.i
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ca to i8
  %i.ce = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.0.extract.trunc.i)
  %i.cf = icmp samesign ugt i8 %i.ce, 1
  br i1 %i.cf, label %multiple_tools.exit.i, label %bb.f

bb.n:                                             ; preds = %multiple_tools.exit.i
  %sext.i = shl i64 %.val, 32
  %i.cg = ashr exact i64 %sext.i, 32
  %i.ch = tail call ptr @PyMem_Malloc(i64 noundef %i.cg) #12 ; 3 uses
  %i.ci = load ptr, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 24
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !57
  %i.ck = icmp eq ptr %i.ch, null
  br i1 %i.ck, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cl = tail call ptr @PyErr_NoMemory() #12     ; 0 uses
  br label %update_instrumentation_data.exit.thread

bb.p:                                             ; preds = %bb.n
  %.val.i.i = load i64, ptr %i.a, align 8, !tbaa !167
  %i.cm = trunc i64 %.val.i.i to i32              ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i.i, label %initialize_tools.exit.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.co = getelementptr i8, ptr %0, i64 208
  br label %bb.q

bb.q:                                             ; preds = %opcode_has_event.exit.thread.i.i, %.lr.ph.i.i
  %.03034.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.el, %opcode_has_event.exit.thread.i.i ] ; 3 uses
  %i.cp = sext i32 %.03034.i.i to i64             ; 3 uses
  %i.cq = getelementptr [2 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !39  ; 2 uses
  %i.cs = icmp eq i8 %i.cr, -3
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.cu = getelementptr i8, ptr %i.ct, i64 96
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !33 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cv, align 1, !tbaa !37
  %i.cy = zext i8 %i.cx to i32
  %i.cz = mul i32 %.03034.i.i, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr i8, ptr %i.cw, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !39
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.031.in.i.i = phi i8 [ %i.dc, %bb.r ], [ %i.cr, %bb.q ] ; 2 uses
  %i.dd = icmp eq i8 %.031.in.i.i, -19
  br i1 %i.dd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.df = getelementptr i8, ptr %i.de, i64 112
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40
  %i.dh = getelementptr i8, ptr %i.dg, i64 %i.cp
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !39
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.in.i.i = phi i8 [ %i.di, %bb.t ], [ %.031.in.i.i, %bb.s ] ; 3 uses
  %i.dj = add i8 %.1.in.i.i, 23
  %i.dk = icmp ult i8 %i.dj, 21                   ; 2 uses
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dl = zext i8 %.1.in.i.i to i64
  %i.dm = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !39
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.in.i.i = phi i8 [ %i.dn, %bb.v ], [ %.1.in.i.i, %bb.u ]
  %i.do = zext i8 %.2.in.i.i to i64
  %i.dp = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !39  ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.dq, -3
  br i1 %.not.i.i.i, label %opcode_has_event.exit.thread.i.i, label %opcode_has_event.exit.i.i

opcode_has_event.exit.i.i:                        ; preds = %bb.w
  %i.dr = zext i8 %i.dq to i64                    ; 4 uses
  %i.ds = getelementptr i8, ptr @INSTRUMENTED_OPCODES, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !39
  %.not.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i, label %opcode_has_event.exit.thread.i.i, label %bb.x

bb.x:                                             ; preds = %opcode_has_event.exit.i.i
  br i1 %i.dk, label %bb.y, label %opcode_has_event.exit.thread.sink.split.i.i

bb.y:                                             ; preds = %bb.x
  %i.du = icmp eq i8 %i.dq, -128
  br i1 %i.du, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dv = getelementptr i8, ptr %i.cq, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !39
  %i.dx = icmp ne i8 %i.dw, 0
  %i.dy = zext i1 %i.dx to i8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dz = getelementptr i8, ptr @EVENT_FOR_OPCODE, i64 %i.dr
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i102.i = phi i8 [ %i.dy, %bb.z ], [ %i.ea, %bb.aa ]
  %i.eb = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ec = getelementptr i8, ptr %i.eb, i64 11
  %i.ed = sext i8 %.0.i102.i to i64
  %i.ee = getelementptr i8, ptr %i.ec, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !39
  br label %opcode_has_event.exit.thread.sink.split.i.i

opcode_has_event.exit.thread.sink.split.i.i:      ; preds = %bb.ab, %bb.x
  %.sink.i.i = phi i8 [ %i.ef, %bb.ab ], [ 0, %bb.x ]
  %i.eg = getelementptr i8, ptr %i.ch, i64 %i.cp
  store i8 %.sink.i.i, ptr %i.eg, align 1, !tbaa !39
  br label %opcode_has_event.exit.thread.i.i

opcode_has_event.exit.thread.i.i:                 ; preds = %opcode_has_event.exit.thread.sink.split.i.i, %opcode_has_event.exit.i.i, %bb.w
  %.pre-phi.i.i = phi i64 [ %i.dr, %opcode_has_event.exit.i.i ], [ 253, %bb.w ], [ %i.dr, %opcode_has_event.exit.thread.sink.split.i.i ]
  %i.eh = getelementptr i8, ptr @_PyOpcode_Caches, i64 %.pre-phi.i.i
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !39
  %i.ej = zext i8 %i.ei to i32
  %i.ek = add nsw i32 %.03034.i.i, 1
  %i.el = add i32 %i.ek, %i.ej                    ; 2 uses
  %i.em = icmp slt i32 %i.el, %i.cm
  br i1 %i.em, label %bb.q, label %initialize_tools.exit.i.loopexit, !llvm.loop !171

initialize_tools.exit.i.loopexit:                 ; preds = %opcode_has_event.exit.thread.i.i
  %.pre365.pre370.pre = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %initialize_tools.exit.i

initialize_tools.exit.i:                          ; preds = %initialize_tools.exit.i.loopexit, %bb.p, %multiple_tools.exit.i
  %.pre365.pre370 = phi ptr [ %.pre365.pre370.pre, %initialize_tools.exit.i.loopexit ], [ %i.ci, %bb.p ], [ %i.bv, %multiple_tools.exit.i ] ; 3 uses
  %.sroa.0.5.extract.shift.i = lshr i64 %i.ca, 40
  %.sroa.0.5.extract.trunc.i = trunc i64 %.sroa.0.5.extract.shift.i to i8 ; 2 uses
  %.not92.i = icmp eq i8 %.sroa.0.5.extract.trunc.i, 0
  br i1 %.not92.i, label %initialize_line_tools.exit.i, label %bb.ac

bb.ac:                                            ; preds = %initialize_tools.exit.i
  %i.en = getelementptr i8, ptr %.pre365.pre370, i64 96
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !33
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.ad, label %bb.dj

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.eq = call i32 @_PyCode_InitAddressRange(ptr noundef nonnull %0, ptr noundef nonnull %3) #12 ; 0 uses
  %i.er = getelementptr i8, ptr %0, i64 68        ; 3 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !68
  %i.et = add i32 %i.es, 1                        ; 2 uses
  %i.eu = call i32 @_PyCode_InitAddressRange(ptr noundef nonnull %0, ptr noundef nonnull %3) #12 ; 0 uses
  %i.ev = getelementptr i8, ptr %0, i64 192       ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !166 ; 2 uses
  %i.ex = icmp slt i32 %i.ew, %i.b
  br i1 %i.ex, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ad
  %i.ey = getelementptr i8, ptr %0, i64 208
  %i.ez = getelementptr i8, ptr %0, i64 152
  br label %bb.ae

._crit_edge.i:                                    ; preds = %_PyInstruction_GetLength.exit.i, %bb.ad
  %.087.lcssa.i = phi i32 [ %i.et, %bb.ad ], [ %spec.select.i, %_PyInstruction_GetLength.exit.i ]
  %i.fa = load i32, ptr %i.er, align 4, !tbaa !68
  %i.fb = sub i32 %.087.lcssa.i, %i.fa            ; 3 uses
  %i.fc = icmp slt i32 %i.fb, 254
  br i1 %i.fc, label %bb.ao, label %bb.am
end_hunk_0
begin_hunk_1_@force_instrument_lock_held:bb.a

_Py_GetBaseCodeUnit.exit.sink.split.i305:         ; preds = %bb.il, %bb.ih, %bb.if
  %.sink2.i306 = phi i64 [ %i.azr, %bb.if ], [ %i.baa, %bb.ih ], [ %i.bat, %bb.il ]
  br label %_PyInstruction_GetLength.exit307.sink.split, !llvm.loop !195

bb.im:                                            ; preds = %_Py_GetBaseCodeUnit.exit298
  %i.baw = load ptr, ptr %i.f, align 8, !tbaa !32 ; 2 uses
  %i.bax = getelementptr i8, ptr %i.baw, i64 120
  %i.bay = load ptr, ptr %i.bax, align 8, !tbaa !90 ; 2 uses
  %.not.i308 = icmp eq ptr %i.bay, null
  br i1 %.not.i308, label %._crit_edge.i310, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.baz = getelementptr i8, ptr %i.bay, i64 %i.aye ; 2 uses
  %i.bba = load i8, ptr %i.baz, align 1, !tbaa !39
  %i.bbb = or i8 %i.bba, %i.auy
  store i8 %i.bbb, ptr %i.baz, align 1, !tbaa !39
  %.pre.i309 = load ptr, ptr %i.f, align 8, !tbaa !32
  %.pre368 = load i8, ptr %i.ayf, align 1, !tbaa !39
  br label %._crit_edge.i310

._crit_edge.i310:                                 ; preds = %bb.in, %bb.im
  %i.bbc = phi i8 [ %.pre368, %bb.in ], [ %i.ayj, %bb.im ] ; 2 uses
  %i.bbd = phi ptr [ %.pre.i309, %bb.in ], [ %i.baw, %bb.im ] ; 2 uses
  %i.bbe = icmp eq i8 %i.bbc, -3
  br i1 %i.bbe, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %._crit_edge.i310
  %i.bbf = getelementptr i8, ptr %i.bbd, i64 96
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !33 ; 2 uses
  %i.bbh = getelementptr i8, ptr %i.bbg, i64 1
  %i.bbi = load i8, ptr %i.bbg, align 1, !tbaa !37
  %i.bbj = zext i8 %i.bbi to i32
  %i.bbk = mul i32 %.0139350, %i.bbj
  %i.bbl = sext i32 %i.bbk to i64
  %i.bbm = getelementptr i8, ptr %i.bbh, i64 %i.bbl ; 2 uses
  %i.bbn = load i8, ptr %i.bbm, align 1, !tbaa !39
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %._crit_edge.i310
  %.016.i.i = phi ptr [ %i.bbm, %bb.io ], [ %i.ayf, %._crit_edge.i310 ]
  %.0.in.i.i = phi i8 [ %i.bbn, %bb.io ], [ %i.bbc, %._crit_edge.i310 ] ; 4 uses
  %i.bbo = icmp eq i8 %.0.in.i.i, -19
  br i1 %i.bbo, label %add_per_instruction_tools.exit, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.bbp = add i8 %.0.in.i.i, 23
  %i.bbq = icmp ult i8 %i.bbp, 21
  br i1 %i.bbq, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.bbr = zext i8 %.0.in.i.i to i64
  %i.bbs = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.bbr
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !39
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.sink.i.i311 = phi i8 [ %i.bbt, %bb.ir ], [ %.0.in.i.i, %bb.iq ]
  %i.bbu = getelementptr i8, ptr %i.bbd, i64 112
  %i.bbv = load ptr, ptr %i.bbu, align 8, !tbaa !40
  %i.bbw = getelementptr i8, ptr %i.bbv, i64 %i.aye
  store i8 %.sink.i.i311, ptr %i.bbw, align 1, !tbaa !39
  store i8 -19, ptr %.016.i.i, align 1, !tbaa !39
  br label %add_per_instruction_tools.exit

add_per_instruction_tools.exit:                   ; preds = %bb.ip, %bb.is
  %i.bbx = load i16, ptr %i.ayf, align 2, !tbaa !11 ; 3 uses
  %.sroa.7.0.extract.shift.i.i312 = lshr i16 %i.bbx, 8
  %i.bby = and i16 %i.bbx, 255                    ; 3 uses
  %i.bbz = icmp samesign ult i16 %i.bby, 233
  br i1 %i.bbz, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %add_per_instruction_tools.exit
  %i.bca = zext nneg i16 %i.bby to i64
  br label %_PyInstruction_GetLength.exit307.sink.split

bb.iu:                                            ; preds = %add_per_instruction_tools.exit
  %i.bcb = zext nneg i16 %i.bby to i32
  %trunc.i.i313 = trunc i16 %i.bbx to i8
  switch i8 %trunc.i.i313, label %bb.ix [
    i8 -2, label %bb.iv
    i8 -3, label %bb.iw
  ]

bb.iv:                                            ; preds = %bb.iu
  %i.bcc = load ptr, ptr %i.ayd, align 8, !tbaa !13
  %i.bcd = getelementptr i8, ptr %i.bcc, i64 8
  %i.bce = zext nneg i16 %.sroa.7.0.extract.shift.i.i312 to i64
  %i.bcf = getelementptr [8 x i8], ptr %i.bcd, i64 %i.bce
  %i.bcg = load ptr, ptr %i.bcf, align 8, !tbaa !22
  %i.bch = getelementptr i8, ptr %i.bcg, i64 32
  %i.bci = load i8, ptr %i.bch, align 8, !tbaa !24
  %i.bcj = zext i8 %i.bci to i64
  br label %_PyInstruction_GetLength.exit307.sink.split

bb.iw:                                            ; preds = %bb.iu
  %i.bck = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bcl = getelementptr i8, ptr %i.bck, i64 96
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !33 ; 2 uses
  %i.bcn = getelementptr i8, ptr %i.bcm, i64 1
  %i.bco = load i8, ptr %i.bcm, align 1, !tbaa !37
  %i.bcp = zext i8 %i.bco to i32
  %i.bcq = mul i32 %.0139350, %i.bcp
  %i.bcr = sext i32 %i.bcq to i64
  %i.bcs = getelementptr i8, ptr %i.bcn, i64 %i.bcr
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !39
  %i.bcu = zext i8 %i.bct to i32
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iu
  %.0.i.i314 = phi i32 [ %i.bcu, %bb.iw ], [ %i.bcb, %bb.iu ] ; 2 uses
  %i.bcv = icmp eq i32 %.0.i.i314, 237
  br i1 %i.bcv, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.bcw = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bcx = getelementptr i8, ptr %i.bcw, i64 112
  %i.bcy = load ptr, ptr %i.bcx, align 8, !tbaa !40
  %i.bcz = getelementptr i8, ptr %i.bcy, i64 %i.aye
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !39
  %i.bdb = zext i8 %i.bda to i32
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.1.i.i315 = phi i32 [ %i.bdb, %bb.iy ], [ %.0.i.i314, %bb.ix ]
  %i.bdc = zext nneg i32 %.1.i.i315 to i64        ; 2 uses
  %i.bdd = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.bdc
  %i.bde = load i8, ptr %i.bdd, align 1, !tbaa !39 ; 2 uses
  %.not.i.i316 = icmp eq i8 %i.bde, 0
  br i1 %.not.i.i316, label %_PyInstruction_GetLength.exit307.sink.split, label %_PyInstruction_GetLength.exit307

_PyInstruction_GetLength.exit307.sink.split:      ; preds = %bb.it, %bb.iv, %bb.iz, %_Py_GetBaseCodeUnit.exit.sink.split.i305
  %.sink2.i319.sink = phi i64 [ %.sink2.i306, %_Py_GetBaseCodeUnit.exit.sink.split.i305 ], [ %i.bca, %bb.it ], [ %i.bcj, %bb.iv ], [ %i.bdc, %bb.iz ]
  %i.bdf = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %.sink2.i319.sink
  %i.bdg = load i8, ptr %i.bdf, align 1, !tbaa !39
  br label %_PyInstruction_GetLength.exit307

_PyInstruction_GetLength.exit307:                 ; preds = %_PyInstruction_GetLength.exit307.sink.split, %bb.iz, %bb.il
  %.pn324.in = phi i8 [ %i.bde, %bb.iz ], [ %i.bav, %bb.il ], [ %i.bdg, %_PyInstruction_GetLength.exit307.sink.split ]
  %.pn324 = zext i8 %.pn324.in to i64
  %.pn.in.in.in = getelementptr i8, ptr @_PyOpcode_Caches, i64 %.pn324
  %.pn.in.in = load i8, ptr %.pn.in.in.in, align 1, !tbaa !39
  %.pn.in = zext i8 %.pn.in.in to i32
  %.pn = add nsw i32 %.0139350, 1
  %.1 = add i32 %.pn, %.pn.in                     ; 2 uses
  %i.bdh = icmp slt i32 %.1, %i.b
  br i1 %i.bdh, label %bb.hw, label %.loopexit

.loopexit:                                        ; preds = %_PyInstruction_GetLength.exit307, %bb.hv, %.loopexit326, %bb.dy
  %i.bdi = load atomic i64, ptr %1 monotonic, align 8
  %i.bdj = and i64 %i.bdi, 4294967295
  store i64 %i.bdj, ptr %i.adx, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %update_instrumentation_data.exit.thread

update_instrumentation_data.exit.thread:          ; preds = %.thread.i, %bb.du, %bb.dq, %bb.dm, %bb.o, %allocate_instrumentation_data.exit.i, %bb.a, %.loopexit
  %.0 = phi i32 [ 0, %.loopexit ], [ 0, %bb.a ], [ -1, %allocate_instrumentation_data.exit.i ], [ -1, %bb.o ], [ -1, %bb.dm ], [ -1, %bb.dq ], [ -1, %bb.du ], [ -1, %.thread.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyMonitoring_GetLocalEvents(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %1, 6
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.d = getelementptr i8, ptr %i.c, i64 224712
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %check_tool.exit, label %bb.c

check_tool.exit:                                  ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.11, i32 noundef %1) #12 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr i8, ptr %0, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4, !tbaa !7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = shl nuw i32 1, %1                        ; 3 uses
  %i.o = load i8, ptr %i.l, align 1, !tbaa !39
  %i.p = zext i8 %i.o to i32
  %i.q = lshr i32 %i.p, %1
  %i.r = and i32 %i.q, 1
  %i.s = getelementptr i8, ptr %i.l, i64 1
  %i.t = load <8 x i8>, ptr %i.s, align 1, !tbaa !39
  %3 = zext <8 x i8> %i.t to <8 x i32>
  %4 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %5 = shufflevector <8 x i32> %4, <8 x i32> poison, <8 x i32> zeroinitializer
  %6 = and <8 x i32> %5, %3
  %i.u = icmp eq <8 x i32> %6, zeroinitializer
  %i.v = select <8 x i1> %i.u, <8 x i32> zeroinitializer, <8 x i32> <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256>
  %i.w = getelementptr i8, ptr %i.l, i64 9
  %i.x = load i8, ptr %i.w, align 1, !tbaa !39
  %i.y = zext i8 %i.x to i32
  %i.z = and i32 %i.n, %i.y
  %.not.9.i = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not.9.i, i32 0, i32 512
  %i.ab = getelementptr i8, ptr %i.l, i64 10
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !39
  %i.ad = zext i8 %i.ac to i32
  %i.ae = and i32 %i.n, %i.ad
  %.not.10.i = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not.10.i, i32 0, i32 1024
  %i.ag = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.v)
  %op.rdx = or disjoint i32 %i.ag, %i.aa
  %op.rdx13 = or disjoint i32 %i.af, %i.r
  %op.rdx14 = or disjoint i32 %op.rdx, %op.rdx13
  store i32 %op.rdx14, ptr %2, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %check_tool.exit, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ -1, %check_tool.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyMonitoring_ClearToolId(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 8 uses
  br label %bb.c

bb.b:                                             ; preds = %Py_DECREF.exit
  tail call void @_PyEval_StopTheWorld(ptr noundef %i.b) #12
  %i.c = tail call i32 @_PyMonitoring_SetEvents(i32 noundef %0, i32 noundef 0)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %instrument_all_executing_code_objects.exit, label %bb.g

bb.c:                                             ; preds = %bb.a, %Py_DECREF.exit
  %.01924 = phi i32 [ 0, %bb.a ], [ %i.i, %Py_DECREF.exit ] ; 2 uses
  %i.e = tail call ptr @_PyMonitoring_RegisterCallback(i32 noundef %0, i32 noundef %.01924, ptr noundef null) ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !39
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.i = add nuw nsw i32 %.01924, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, 19
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !196

bb.g:                                             ; preds = %bb.b
  %i.j = load atomic i64, ptr %i.b monotonic, align 8
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, 256                        ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !55
  %i.o = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str) #12 ; 0 uses
  br label %instrument_all_executing_code_objects.exit

bb.i:                                             ; preds = %bb.g
  %i.p = zext i32 %i.l to i64                     ; 5 uses
  %i.q = getelementptr i8, ptr %i.b, i64 224776
  %i.r = sext i32 %0 to i64
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  store i64 %i.p, ptr %i.s, align 8, !tbaa !169
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93   ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56   ; 3 uses
  %i.x = load atomic i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.y = and i64 %i.x, 255
  %i.z = or i64 %i.y, %i.p
  %i.aa = cmpxchg ptr %i.w, i64 %i.x, i64 %i.z seq_cst seq_cst, align 8 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %set_version_raw.exit.i, label %_Py_atomic_compare_exchange_uintptr.exit.i.i

_Py_atomic_compare_exchange_uintptr.exit.i.i:     ; preds = %bb.i, %_Py_atomic_compare_exchange_uintptr.exit.i.i
  %i.ac = phi { i64, i1 } [ %i.ag, %_Py_atomic_compare_exchange_uintptr.exit.i.i ], [ %i.aa, %bb.i ]
  %i.ad = extractvalue { i64, i1 } %i.ac, 0       ; 2 uses
  %i.ae = and i64 %i.ad, 255
  %i.af = or i64 %i.ae, %i.p
  %i.ag = cmpxchg ptr %i.w, i64 %i.ad, i64 %i.af seq_cst seq_cst, align 8 ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  br i1 %i.ah, label %set_version_raw.exit.i, label %_Py_atomic_compare_exchange_uintptr.exit.i.i

set_version_raw.exit.i:                           ; preds = %_Py_atomic_compare_exchange_uintptr.exit.i.i, %bb.i
  %i.ai = getelementptr i8, ptr %i.u, i64 24      ; 3 uses
  %i.aj = load atomic i64, ptr %i.ai monotonic, align 8 ; 2 uses
  %i.ak = and i64 %i.aj, 255
  %i.al = or i64 %i.ak, %i.p
  %i.am = cmpxchg ptr %i.ai, i64 %i.aj, i64 %i.al seq_cst seq_cst, align 8 ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %set_global_version.exit, label %_Py_atomic_compare_exchange_uintptr.exit.i4.i

_Py_atomic_compare_exchange_uintptr.exit.i4.i:    ; preds = %set_version_raw.exit.i, %_Py_atomic_compare_exchange_uintptr.exit.i4.i
  %i.ao = phi { i64, i1 } [ %i.as, %_Py_atomic_compare_exchange_uintptr.exit.i4.i ], [ %i.am, %set_version_raw.exit.i ]
  %i.ap = extractvalue { i64, i1 } %i.ao, 0       ; 2 uses
  %i.aq = and i64 %i.ap, 255
  %i.ar = or i64 %i.aq, %i.p
  %i.as = cmpxchg ptr %i.ai, i64 %i.ap, i64 %i.ar seq_cst seq_cst, align 8 ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  br i1 %i.at, label %set_global_version.exit, label %_Py_atomic_compare_exchange_uintptr.exit.i4.i

set_global_version.exit:                          ; preds = %_Py_atomic_compare_exchange_uintptr.exit.i4.i, %set_version_raw.exit.i
  %i.au = getelementptr i8, ptr %i.b, i64 7376    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !94
  %i.aw = getelementptr i8, ptr %i.av, i64 864    ; 2 uses
  %i.ax = cmpxchg ptr %i.aw, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.ay = extractvalue { i8, i1 } %i.ax, 1
  br i1 %i.ay, label %PyMutex_LockFlags.exit.i, label %bb.j

bb.j:                                             ; preds = %set_global_version.exit
  %i.az = tail call i32 @_PyMutex_LockTimed(ptr noundef %i.aw, i64 noundef -1, i32 noundef 0) #12 ; 0 uses
  br label %PyMutex_LockFlags.exit.i

PyMutex_LockFlags.exit.i:                         ; preds = %bb.j, %set_global_version.exit
  %i.ba = getelementptr i8, ptr %i.b, i64 7336
  %.01633.i = load ptr, ptr %i.ba, align 8, !tbaa !93 ; 2 uses
  %.not34.i = icmp eq ptr %.01633.i, null
  br i1 %.not34.i, label %.loopexit.i, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %PyMutex_LockFlags.exit.i, %._crit_edge.i
  %.01635.i = phi ptr [ %.016.i, %._crit_edge.i ], [ %.01633.i, %PyMutex_LockFlags.exit.i ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.01635.i, i64 72
  %.030.i = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 2 uses
  %.not2231.i = icmp eq ptr %.030.i, null
  br i1 %.not2231.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph36.i, %instrument_lock_held.exit.thread.i
  %.032.i = phi ptr [ %.0.i, %instrument_lock_held.exit.thread.i ], [ %.030.i, %.lr.ph36.i ] ; 3 uses
  %i.bc = getelementptr i8, ptr %.032.i, i64 74
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !162
  %i.be = icmp slt i8 %i.bd, 3
  br i1 %i.be, label %bb.k, label %instrument_lock_held.exit.thread.i

bb.k:                                             ; preds = %.lr.ph.i
  %.0.val.i = load i64, ptr %.032.i, align 8
  %i.bf = and i64 %.0.val.i, -2
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = load atomic i64, ptr %i.b monotonic, align 8
  %i.bi = and i64 %i.bh, 4294967295
  %i.bj = getelementptr i8, ptr %i.bg, i64 168
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !92
  %i.bl = icmp eq i64 %i.bk, %i.bi
  br i1 %i.bl, label %instrument_lock_held.exit.thread.i, label %instrument_lock_held.exit.i

instrument_lock_held.exit.i:                      ; preds = %bb.k
  %i.bm = tail call fastcc i32 @force_instrument_lock_held(ptr noundef nonnull %i.bg, ptr noundef nonnull readonly %i.b)
  %.not23.i = icmp eq i32 %i.bm, 0
  br i1 %.not23.i, label %instrument_lock_held.exit.thread.i, label %.loopexit.i

instrument_lock_held.exit.thread.i:               ; preds = %instrument_lock_held.exit.i, %bb.k, %.lr.ph.i
  %i.bn = getelementptr i8, ptr %.032.i, i64 8
  %.0.i = load ptr, ptr %i.bn, align 8, !tbaa !161 ; 2 uses
  %.not22.i = icmp eq ptr %.0.i, null
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !163

._crit_edge.i:                                    ; preds = %instrument_lock_held.exit.thread.i, %.lr.ph36.i
  %i.bo = getelementptr i8, ptr %.01635.i, i64 8
  %.016.i = load ptr, ptr %i.bo, align 8, !tbaa !93 ; 2 uses
  %.not.i22 = icmp eq ptr %.016.i, null
  br i1 %.not.i22, label %.loopexit.i, label %.lr.ph36.i, !llvm.loop !164

.loopexit.i:                                      ; preds = %._crit_edge.i, %instrument_lock_held.exit.i, %PyMutex_LockFlags.exit.i
  %.4.i = phi i32 [ 0, %PyMutex_LockFlags.exit.i ], [ -1, %instrument_lock_held.exit.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.bp = load ptr, ptr %i.au, align 8, !tbaa !94
  %i.bq = getelementptr i8, ptr %i.bp, i64 864    ; 2 uses
  %i.br = cmpxchg ptr %i.bq, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.bs = extractvalue { i8, i1 } %i.br, 1
  br i1 %i.bs, label %instrument_all_executing_code_objects.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  tail call void @PyMutex_Unlock(ptr noundef %i.bq) #12
  br label %instrument_all_executing_code_objects.exit

instrument_all_executing_code_objects.exit:       ; preds = %bb.l, %.loopexit.i, %bb.b, %bb.h
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.h ], [ %.4.i, %.loopexit.i ], [ %.4.i, %bb.l ]
  tail call void @_PyEval_StartTheWorld(ptr noundef %i.b) #12
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMonitoring_RegisterCallback(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
end_hunk_1
begin_hunk_2_@branchesiter_next:bb.a
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !39
  %i.ad = getelementptr i8, ptr %i.x, i64 33
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !41
  br label %_Py_GetBaseCodeUnit.exit

bb.f:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.ag = getelementptr i8, ptr %i.af, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.ak = zext i8 %i.aj to i32
  %i.al = mul i32 %.04062, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr i8, ptr %i.ai, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39
  %i.ap = zext i8 %i.ao to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0.i = phi i32 [ %i.ap, %bb.f ], [ %i.s, %bb.d ] ; 2 uses
  %i.aq = icmp eq i32 %.0.i, 237
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.as = getelementptr i8, ptr %i.ar, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.au = getelementptr i8, ptr %i.at, i64 %i.k
  %i.av = load i8, ptr %i.au, align 1, !tbaa !39
  %i.aw = zext i8 %i.av to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi i32 [ %i.aw, %bb.h ], [ %.0.i, %bb.g ]
  %i.ax = zext nneg i32 %.1.i to i64              ; 2 uses
  %i.ay = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !39  ; 2 uses
  %.not.i = icmp eq i8 %i.az, 0
  br i1 %.not.i, label %bb.j, label %_Py_GetBaseCodeUnit.exit

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.ax
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit

_Py_GetBaseCodeUnit.exit:                         ; preds = %bb.c, %bb.e, %bb.i, %bb.j
  %.sroa.0.1.i = phi i8 [ %i.r, %bb.c ], [ %i.ac, %bb.e ], [ %i.bb, %bb.j ], [ %i.az, %bb.i ] ; 2 uses
  %.sroa.7.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.c ], [ %i.ae, %bb.e ], [ %.sroa.7.0.extract.trunc.i, %bb.j ], [ %.sroa.7.0.extract.trunc.i, %bb.i ] ; 4 uses
  %i.bc = add i32 %.04062, 1
  %i.bd = zext i8 %.sroa.0.1.i to i64
  %i.be = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !39
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add i32 %i.bc, %i.bg                    ; 10 uses
  switch i8 %.sroa.0.1.i, label %bb.o [
    i8 69, label %bb.k
    i8 70, label %bb.l
    i8 100, label %bb.m
    i8 103, label %bb.m
    i8 101, label %bb.m
    i8 102, label %bb.m
    i8 68, label %bb.n
  ]

bb.k:                                             ; preds = %_Py_GetBaseCodeUnit.exit
  %.sroa.5.0.extract.trunc = zext i8 %.sroa.7.0.i to i32
  %i.bi = shl i32 %.04261, 8
  %i.bj = or disjoint i32 %i.bi, %.sroa.5.0.extract.trunc
  br label %bb.o

bb.l:                                             ; preds = %_Py_GetBaseCodeUnit.exit
  %i.bk = shl i32 %.04261, 8
  %i.bl = zext i8 %.sroa.7.0.i to i32
  %i.bm = or disjoint i32 %i.bk, %i.bl
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !209
  %i.bn = add i32 %i.bm, %i.bh
  %i.bo = shl i32 %.04062, 1
  %i.bp = shl i32 %i.bh, 1
  %i.bq = shl i32 %i.bn, 1
  %i.br = add i32 %i.bq, 4
  %i.bs = tail call fastcc ptr @int_triple(i32 noundef %i.bo, i32 noundef %i.bp, i32 noundef %i.br)
  br label %.thread

bb.m:                                             ; preds = %_Py_GetBaseCodeUnit.exit, %_Py_GetBaseCodeUnit.exit, %_Py_GetBaseCodeUnit.exit, %_Py_GetBaseCodeUnit.exit
  %i.bt = shl i32 %.04261, 8
  %i.bu = zext i8 %.sroa.7.0.i to i32
  %i.bv = or disjoint i32 %i.bt, %i.bu
  %i.bw = add i32 %i.bh, 1                        ; 2 uses
  store i32 %i.bw, ptr %i.a, align 8, !tbaa !209
  %i.bx = shl i32 %.04062, 1
  %i.by = shl i32 %i.bw, 1
  %i.bz = add i32 %i.bv, %i.bh
  %i.ca = shl i32 %i.bz, 1
  %i.cb = tail call fastcc ptr @int_triple(i32 noundef %i.bx, i32 noundef %i.by, i32 noundef %i.ca)
  br label %.thread

bb.n:                                             ; preds = %_Py_GetBaseCodeUnit.exit
  %.neg63 = mul i32 %.04261, 2147483392
  %i.cc = zext i8 %.sroa.7.0.i to i32
  %.neg50 = sub i32 %.neg63, %i.cc
  %i.cd = add i32 %.neg50, %i.bh
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !209
  %i.ce = shl i32 %i.cd, 1                        ; 2 uses
  %i.cf = add i32 %i.ce, 4
  %i.cg = shl i32 %i.bh, 1
  %i.ch = tail call fastcc ptr @int_triple(i32 noundef %i.ce, i32 noundef %i.cf, i32 noundef %i.cg)
  br label %.thread

bb.o:                                             ; preds = %bb.k, %_Py_GetBaseCodeUnit.exit
  %.244 = phi i32 [ 0, %_Py_GetBaseCodeUnit.exit ], [ %i.bj, %bb.k ]
  %i.ci = sext i32 %i.bh to i64                   ; 2 uses
  %i.cj = icmp sgt i64 %.val, %i.ci
  br i1 %i.cj, label %bb.b, label %.thread, !llvm.loop !211

.thread:                                          ; preds = %bb.o, %bb.a, %bb.m, %bb.l, %bb.n
  %.2 = phi ptr [ %i.ch, %bb.n ], [ %i.cb, %bb.m ], [ %i.bs, %bb.l ], [ null, %bb.a ], [ null, %bb.o ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @int_triple(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 4 uses
  %i.b = sext i32 %0 to i64
  %i.c = tail call ptr @PyLong_FromLong(i64 noundef %i.b) #12 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_XDECREF.exit20, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %1 to i64
  %i.f = tail call ptr @PyLong_FromLong(i64 noundef %i.e) #12 ; 5 uses
  %i.g = icmp eq ptr %i.f, null                   ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sext i32 %2 to i64
  %i.i = tail call ptr @PyLong_FromLong(i64 noundef %i.h) #12 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %i.a, align 16, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.k, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.l, align 16, !tbaa !55
  %i.m = call ptr @_PyTuple_FromArraySteal(ptr noundef nonnull %i.a, i64 noundef 3) #12
  br label %Py_XDECREF.exit20

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i, label %bb.f, label %Py_XDECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.c, align 8, !tbaa !39
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %Py_XDECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #12
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.e, %bb.f, %bb.g
  br i1 %i.g, label %Py_XDECREF.exit20, label %bb.h

bb.h:                                             ; preds = %Py_XDECREF.exit
  %i.q = load i32, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %.not.i.i19 = icmp sgt i32 %i.q, -1
  br i1 %.not.i.i19, label %bb.i, label %Py_XDECREF.exit20

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.f, align 8, !tbaa !39
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %Py_XDECREF.exit20

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #12
  br label %Py_XDECREF.exit20

Py_XDECREF.exit20:                                ; preds = %bb.a, %bb.j, %bb.i, %bb.h, %Py_XDECREF.exit, %bb.d
  %.013 = phi ptr [ %i.m, %bb.d ], [ null, %bb.j ], [ null, %Py_XDECREF.exit ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.a ]
  ret ptr %.013
}

declare ptr @_PyTuple_FromArraySteal(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v15i32(<15 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x i8> @llvm.ctpop.v3i8(<3 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v12i32(<12 x i32>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !9, i64 0}
!13 = !{!14, !18, i64 152}
!14 = !{!"PyCodeObject", !15, i64 0, !20, i64 24, !20, i64 32, !20, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120, !20, i64 128, !20, i64 136, !20, i64 144, !18, i64 152, !18, i64 160, !19, i64 168, !21, i64 176, !19, i64 184, !8, i64 192, !18, i64 200, !9, i64 208}
!15 = !{!"PyVarObject", !16, i64 0, !19, i64 16}
!16 = !{!"_object", !9, i64 0, !17, i64 8}
!17 = !{!"p1 _ZTS11_typeobject", !18, i64 0}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!"p1 _ZTS7_object", !18, i64 0}
!21 = !{!"p1 _ZTS19_PyCoMonitoringData", !18, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS17_PyExecutorObject", !18, i64 0}
!24 = !{!25, !9, i64 32}
!25 = !{!"_PyExecutorObject", !15, i64 0, !26, i64 24, !27, i64 32, !8, i64 104, !8, i64 108, !19, i64 112, !18, i64 120, !9, i64 128}
!26 = !{!"p1 _ZTS17_PyUOpInstruction", !18, i64 0}
!27 = !{!"", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !28, i64 4, !9, i64 5, !8, i64 8, !29, i64 12, !30, i64 48, !31, i64 64}
!28 = !{!"_Bool", !9, i64 0}
!29 = !{!"", !9, i64 0}
!30 = !{!"_PyExecutorLinkListNode", !23, i64 0, !23, i64 8}
!31 = !{!"p1 _ZTS12PyCodeObject", !18, i64 0}
!32 = !{!14, !21, i64 176}
!33 = !{!34, !18, i64 96}
!34 = !{!"_PyCoMonitoringData", !35, i64 0, !35, i64 11, !36, i64 24, !9, i64 32, !18, i64 96, !36, i64 104, !36, i64 112, !36, i64 120}
!35 = !{!"_Py_LocalMonitors", !9, i64 0}
!36 = !{!"p1 omnipotent char", !18, i64 0}
!37 = !{!38, !9, i64 0}
!38 = !{!"", !9, i64 0, !9, i64 1}
!39 = !{!9, !9, i64 0}
!40 = !{!34, !36, i64 112}
!41 = !{!25, !9, i64 33}
!42 = !{!43, !8, i64 64}
!43 = !{!"_ts", !44, i64 0, !44, i64 8, !45, i64 16, !19, i64 24, !46, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !47, i64 72, !47, i64 80, !47, i64 88, !18, i64 96, !18, i64 104, !20, i64 112, !20, i64 120, !20, i64 128, !48, i64 136, !20, i64 144, !8, i64 152, !20, i64 160, !19, i64 168, !19, i64 176, !20, i64 184, !19, i64 192, !8, i64 200, !20, i64 208, !20, i64 216, !20, i64 224, !19, i64 232, !19, i64 240, !49, i64 248, !50, i64 256, !50, i64 264, !52, i64 272, !20, i64 288, !53, i64 296, !19, i64 304, !20, i64 312, !20, i64 320, !54, i64 328}
!44 = !{!"p1 _ZTS3_ts", !18, i64 0}
!45 = !{!"p1 _ZTS3_is", !18, i64 0}
!46 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!47 = !{!"p1 _ZTS19_PyInterpreterFrame", !18, i64 0}
!48 = !{!"p1 _ZTS14_err_stackitem", !18, i64 0}
!49 = !{!"p1 _ZTS12_stack_chunk", !18, i64 0}
!50 = !{!"p2 _ZTS7_object", !51, i64 0}
!51 = !{!"any p2 pointer", !18, i64 0}
!52 = !{!"_err_stackitem", !20, i64 0, !48, i64 8}
!53 = !{!"p1 _ZTS11_PyExitData", !18, i64 0}
!54 = !{!"", !8, i64 0, !9, i64 4}
!55 = !{!20, !20, i64 0}
!56 = !{!43, !45, i64 16}
!57 = !{!34, !36, i64 24}
!58 = !{!36, !36, i64 0}
!59 = !{!60, !18, i64 56}
!60 = !{!"_PyInterpreterFrame", !9, i64 0, !47, i64 8, !9, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !61, i64 48, !18, i64 56, !62, i64 64, !12, i64 72, !9, i64 74, !9, i64 75, !9, i64 80}
!61 = !{!"p1 _ZTS6_frame", !18, i64 0}
!62 = !{!"p1 _ZTS11_PyStackRef", !18, i64 0}
!63 = distinct !{!63, !64, !65, !66}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = distinct !{!67, !64, !66, !65}
!68 = !{!14, !8, i64 68}
!69 = distinct !{!69, !64, !65, !66}
!70 = distinct !{!70, !64, !66, !65}
!71 = distinct !{!71, !64, !65, !66}
!72 = distinct !{!72, !64, !66, !65}
!73 = !{!34, !36, i64 104}
!74 = !{!43, !18, i64 104}
!75 = !{!60, !61, i64 48}
!76 = !{!77, !9, i64 44}
!77 = !{!"_frame", !16, i64 0, !61, i64 16, !47, i64 24, !20, i64 32, !8, i64 40, !9, i64 44, !9, i64 45, !20, i64 48, !20, i64 56, !20, i64 64, !9, i64 72}
!78 = !{!43, !8, i64 68}
!79 = !{!77, !8, i64 40}
!80 = !{!43, !20, i64 120}
!81 = distinct !{!81, !64}
!82 = !{!16, !17, i64 8}
!83 = !{!84, !19, i64 168}
!84 = !{!"_typeobject", !15, i64 0, !36, i64 24, !19, i64 32, !19, i64 40, !18, i64 48, !19, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !19, i64 168, !36, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !19, i64 208, !18, i64 216, !18, i64 224, !85, i64 232, !86, i64 240, !87, i64 248, !17, i64 256, !20, i64 264, !18, i64 272, !18, i64 280, !19, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !20, i64 336, !20, i64 344, !20, i64 352, !18, i64 360, !20, i64 368, !18, i64 376, !8, i64 384, !18, i64 392, !18, i64 400, !9, i64 408, !12, i64 410}
!85 = !{!"p1 _ZTS11PyMethodDef", !18, i64 0}
!86 = !{!"p1 _ZTS11PyMemberDef", !18, i64 0}
!87 = !{!"p1 _ZTS11PyGetSetDef", !18, i64 0}
!88 = !{!84, !19, i64 56}
!89 = distinct !{null}
!90 = !{!34, !36, i64 120}
!91 = distinct !{!91, !64}
!92 = !{!14, !19, i64 168}
!93 = !{!44, !44, i64 0}
!94 = !{!95, !102, i64 7376}
!95 = !{!"_is", !96, i64 0, !45, i64 7264, !19, i64 7272, !19, i64 7280, !8, i64 7288, !19, i64 7296, !8, i64 7304, !8, i64 7308, !8, i64 7312, !19, i64 7320, !100, i64 7328, !102, i64 7376, !44, i64 7384, !19, i64 7392, !103, i64 7400, !20, i64 7680, !20, i64 7688, !106, i64 7696, !110, i64 7832, !19, i64 8040, !111, i64 8048, !112, i64 8080, !19, i64 8536, !20, i64 8544, !20, i64 8552, !20, i64 8560, !18, i64 8568, !9, i64 8576, !9, i64 8640, !19, i64 8648, !9, i64 8656, !116, i64 10696, !20, i64 10744, !20, i64 10752, !20, i64 10760, !121, i64 10768, !122, i64 10832, !124, i64 10848, !125, i64 10872, !128, i64 10928, !99, i64 10944, !130, i64 10952, !20, i64 10960, !9, i64 10968, !9, i64 11032, !9, i64 11096, !9, i64 11160, !9, i64 11161, !131, i64 11168, !134, i64 11832, !137, i64 11888, !138, i64 11896, !140, i64 14336, !141, i64 79880, !143, i64 79896, !144, i64 79968, !145, i64 80000, !146, i64 80024, !147, i64 82008, !151, i64 223296, !9, i64 223328, !28, i64 223384, !28, i64 223385, !152, i64 223386, !23, i64 223400, !23, i64 223408, !23, i64 223416, !23, i64 223424, !19, i64 223432, !153, i64 223440, !18, i64 223448, !154, i64 223456, !29, i64 223472, !29, i64 223473, !19, i64 223480, !19, i64 223488, !9, i64 223496, !9, i64 224712, !9, i64 224776, !155, i64 224840, !156, i64 224928, !19, i64 225064, !160, i64 225072}
!96 = !{!"_ceval_state", !19, i64 0, !8, i64 8, !97, i64 16, !8, i64 24, !98, i64 32}
!97 = !{!"p1 _ZTS18_gil_runtime_state", !18, i64 0}
!98 = !{!"_pending_calls", !44, i64 0, !99, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !8, i64 7224, !8, i64 7228}
!99 = !{!"PyMutex", !9, i64 0}
!100 = !{!"pythreads", !19, i64 0, !44, i64 8, !101, i64 16, !44, i64 24, !19, i64 32, !19, i64 40}
!101 = !{!"p1 _ZTS18_PyThreadStateImpl", !18, i64 0}
!102 = !{!"p1 _ZTS14pyruntimestate", !18, i64 0}
!103 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !104, i64 8, !9, i64 32, !104, i64 80, !9, i64 104, !8, i64 224, !47, i64 232, !20, i64 240, !20, i64 248, !19, i64 256, !19, i64 264, !8, i64 272, !8, i64 276}
!104 = !{!"gc_generation", !105, i64 0, !8, i64 16, !8, i64 20}
!105 = !{!"", !19, i64 0, !19, i64 8}
!106 = !{!"_import_state", !20, i64 0, !20, i64 8, !20, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !20, i64 40, !20, i64 48, !8, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !107, i64 88, !109, i64 112}
!107 = !{!"", !99, i64 0, !108, i64 8, !19, i64 16}
!108 = !{!"long long", !9, i64 0}
!109 = !{!"", !8, i64 0, !19, i64 8, !8, i64 16}
!110 = !{!"_gil_runtime_state", !19, i64 0, !44, i64 8, !8, i64 16, !19, i64 24, !9, i64 32, !9, i64 80, !9, i64 120, !9, i64 168}
!111 = !{!"codecs_state", !20, i64 0, !20, i64 8, !20, i64 16, !8, i64 24}
!112 = !{!"PyConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !19, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !113, i64 64, !8, i64 72, !8, i64 76, !113, i64 80, !113, i64 88, !113, i64 96, !8, i64 104, !114, i64 112, !114, i64 128, !114, i64 144, !114, i64 160, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !113, i64 232, !113, i64 240, !113, i64 248, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !113, i64 288, !113, i64 296, !113, i64 304, !113, i64 312, !8, i64 320, !114, i64 328, !113, i64 344, !113, i64 352, !113, i64 360, !113, i64 368, !113, i64 376, !113, i64 384, !113, i64 392, !8, i64 400, !113, i64 408, !113, i64 416, !113, i64 424, !113, i64 432, !8, i64 440, !8, i64 444, !8, i64 448}
!113 = !{!"p1 int", !18, i64 0}
!114 = !{!"", !19, i64 0, !115, i64 8}
!115 = !{!"p2 int", !51, i64 0}
!116 = !{!"", !117, i64 0, !120, i64 24}
!117 = !{!"_xid_lookup_state", !118, i64 0}
!118 = !{!"", !8, i64 0, !8, i64 4, !99, i64 8, !119, i64 16}
!119 = !{!"p1 _ZTS12_xid_regitem", !18, i64 0}
!120 = !{!"xi_exceptions", !20, i64 0, !20, i64 8, !20, i64 16}
!121 = !{!"_warnings_runtime_state", !20, i64 0, !20, i64 8, !20, i64 16, !107, i64 24, !19, i64 48, !20, i64 56}
!122 = !{!"atexit_state", !123, i64 0, !20, i64 8}
!123 = !{!"p1 _ZTS15atexit_callback", !18, i64 0}
!124 = !{!"_stoptheworld_state", !99, i64 0, !28, i64 1, !28, i64 2, !28, i64 3, !29, i64 4, !19, i64 8, !44, i64 16}
!125 = !{!"_qsbr_shared", !19, i64 0, !19, i64 8, !126, i64 16, !18, i64 24, !19, i64 32, !99, i64 40, !127, i64 48}
!126 = !{!"p1 _ZTS9_qsbr_pad", !18, i64 0}
!127 = !{!"p1 _ZTS18_qsbr_thread_state", !18, i64 0}
!128 = !{!"llist_node", !129, i64 0, !129, i64 8}
!129 = !{!"p1 _ZTS10llist_node", !18, i64 0}
!130 = !{!"p1 _ZTS15_obmalloc_state", !18, i64 0}
!131 = !{!"_py_object_state", !132, i64 0, !8, i64 656}
!132 = !{!"_Py_freelists", !133, i64 0, !133, i64 16, !133, i64 32, !9, i64 48, !133, i64 368, !133, i64 384, !133, i64 400, !133, i64 416, !133, i64 432, !133, i64 448, !133, i64 464, !133, i64 480, !133, i64 496, !133, i64 512, !133, i64 528, !133, i64 544, !133, i64 560, !133, i64 576, !133, i64 592, !133, i64 608, !133, i64 624, !133, i64 640}
!133 = !{!"_Py_freelist", !18, i64 0, !19, i64 8}
!134 = !{!"_Py_unicode_state", !135, i64 0, !18, i64 32, !136, i64 40}
!135 = !{!"_Py_unicode_fs_codec", !36, i64 0, !8, i64 8, !36, i64 16, !8, i64 24}
!136 = !{!"_Py_unicode_ids", !19, i64 0, !50, i64 8}
!137 = !{!"_Py_long_state", !8, i64 0}
!138 = !{!"_dtoa_state", !9, i64 0, !9, i64 64, !9, i64 128, !139, i64 2432}
!139 = !{!"p1 double", !18, i64 0}
!140 = !{!"_py_func_state", !8, i64 0, !9, i64 8}
!141 = !{!"_py_code_state", !99, i64 0, !142, i64 8}
!142 = !{!"p1 _ZTS15_Py_hashtable_t", !18, i64 0}
!143 = !{!"_Py_dict_state", !8, i64 0, !9, i64 8}
!144 = !{!"_Py_exc_state", !20, i64 0, !18, i64 8, !8, i64 16, !20, i64 24}
!145 = !{!"_Py_mem_interp_free_queue", !8, i64 0, !99, i64 4, !128, i64 8}
!146 = !{!"ast_state", !29, i64 0, !8, i64 4, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120, !20, i64 128, !20, i64 136, !20, i64 144, !20, i64 152, !20, i64 160, !20, i64 168, !20, i64 176, !20, i64 184, !20, i64 192, !20, i64 200, !20, i64 208, !20, i64 216, !20, i64 224, !20, i64 232, !20, i64 240, !20, i64 248, !20, i64 256, !20, i64 264, !20, i64 272, !20, i64 280, !20, i64 288, !20, i64 296, !20, i64 304, !20, i64 312, !20, i64 320, !20, i64 328, !20, i64 336, !20, i64 344, !20, i64 352, !20, i64 360, !20, i64 368, !20, i64 376, !20, i64 384, !20, i64 392, !20, i64 400, !20, i64 408, !20, i64 416, !20, i64 424, !20, i64 432, !20, i64 440, !20, i64 448, !20, i64 456, !20, i64 464, !20, i64 472, !20, i64 480, !20, i64 488, !20, i64 496, !20, i64 504, !20, i64 512, !20, i64 520, !20, i64 528, !20, i64 536, !20, i64 544, !20, i64 552, !20, i64 560, !20, i64 568, !20, i64 576, !20, i64 584, !20, i64 592, !20, i64 600, !20, i64 608, !20, i64 616, !20, i64 624, !20, i64 632, !20, i64 640, !20, i64 648, !20, i64 656, !20, i64 664, !20, i64 672, !20, i64 680, !20, i64 688, !20, i64 696, !20, i64 704, !20, i64 712, !20, i64 720, !20, i64 728, !20, i64 736, !20, i64 744, !20, i64 752, !20, i64 760, !20, i64 768, !20, i64 776, !20, i64 784, !20, i64 792, !20, i64 800, !20, i64 808, !20, i64 816, !20, i64 824, !20, i64 832, !20, i64 840, !20, i64 848, !20, i64 856, !20, i64 864, !20, i64 872, !20, i64 880, !20, i64 888, !20, i64 896, !20, i64 904, !20, i64 912, !20, i64 920, !20, i64 928, !20, i64 936, !20, i64 944, !20, i64 952, !20, i64 960, !20, i64 968, !20, i64 976, !20, i64 984, !20, i64 992, !20, i64 1000, !20, i64 1008, !20, i64 1016, !20, i64 1024, !20, i64 1032, !20, i64 1040, !20, i64 1048, !20, i64 1056, !20, i64 1064, !20, i64 1072, !20, i64 1080, !20, i64 1088, !20, i64 1096, !20, i64 1104, !20, i64 1112, !20, i64 1120, !20, i64 1128, !20, i64 1136, !20, i64 1144, !20, i64 1152, !20, i64 1160, !20, i64 1168, !20, i64 1176, !20, i64 1184, !20, i64 1192, !20, i64 1200, !20, i64 1208, !20, i64 1216, !20, i64 1224, !20, i64 1232, !20, i64 1240, !20, i64 1248, !20, i64 1256, !20, i64 1264, !20, i64 1272, !20, i64 1280, !20, i64 1288, !20, i64 1296, !20, i64 1304, !20, i64 1312, !20, i64 1320, !20, i64 1328, !20, i64 1336, !20, i64 1344, !20, i64 1352, !20, i64 1360, !20, i64 1368, !20, i64 1376, !20, i64 1384, !20, i64 1392, !20, i64 1400, !20, i64 1408, !20, i64 1416, !20, i64 1424, !20, i64 1432, !20, i64 1440, !20, i64 1448, !20, i64 1456, !20, i64 1464, !20, i64 1472, !20, i64 1480, !20, i64 1488, !20, i64 1496, !20, i64 1504, !20, i64 1512, !20, i64 1520, !20, i64 1528, !20, i64 1536, !20, i64 1544, !20, i64 1552, !20, i64 1560, !20, i64 1568, !20, i64 1576, !20, i64 1584, !20, i64 1592, !20, i64 1600, !20, i64 1608, !20, i64 1616, !20, i64 1624, !20, i64 1632, !20, i64 1640, !20, i64 1648, !20, i64 1656, !20, i64 1664, !20, i64 1672, !20, i64 1680, !20, i64 1688, !20, i64 1696, !20, i64 1704, !20, i64 1712, !20, i64 1720, !20, i64 1728, !20, i64 1736, !20, i64 1744, !20, i64 1752, !20, i64 1760, !20, i64 1768, !20, i64 1776, !20, i64 1784, !20, i64 1792, !20, i64 1800, !20, i64 1808, !20, i64 1816, !20, i64 1824, !20, i64 1832, !20, i64 1840, !20, i64 1848, !20, i64 1856, !20, i64 1864, !20, i64 1872, !20, i64 1880, !20, i64 1888, !20, i64 1896, !20, i64 1904, !20, i64 1912, !20, i64 1920, !20, i64 1928, !20, i64 1936, !20, i64 1944, !20, i64 1952, !20, i64 1960, !20, i64 1968, !20, i64 1976}
!147 = !{!"types_state", !8, i64 0, !148, i64 8, !149, i64 98312, !150, i64 108016, !99, i64 108512, !9, i64 108520}
!148 = !{!"type_cache", !9, i64 0}
!149 = !{!"", !19, i64 0, !9, i64 8}
!150 = !{!"", !19, i64 0, !19, i64 8, !9, i64 16}
!151 = !{!"callable_cache", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!152 = !{!"_PyOptimizationConfig", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !28, i64 8, !28, i64 9}
!153 = !{!"_rare_events", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4}
!154 = !{!"_Py_GlobalMonitors", !9, i64 0}
!155 = !{!"_Py_interp_cached_objects", !20, i64 0, !20, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !20, i64 72, !20, i64 80}
!156 = !{!"_Py_interp_static_objects", !157, i64 0}
!157 = !{!"", !8, i64 0, !105, i64 8, !158, i64 24, !159, i64 64}
!158 = !{!"", !16, i64 0, !18, i64 16, !20, i64 24, !19, i64 32}
!159 = !{!"", !16, i64 0, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !9, i64 64}
!160 = !{!"_PyThreadStateImpl", !43, i64 0, !60, i64 848, !19, i64 936, !19, i64 944, !19, i64 952, !19, i64 960, !19, i64 968, !19, i64 976, !20, i64 984, !20, i64 992, !8, i64 1000, !128, i64 1008, !127, i64 1024, !128, i64 1032}
!161 = !{!47, !47, i64 0}
!162 = !{!60, !9, i64 74}
!163 = distinct !{!163, !64}
!164 = distinct !{!164, !64}
!165 = !{!45, !45, i64 0}
!166 = !{!14, !8, i64 192}
!167 = !{!15, !19, i64 16}
!168 = !{!14, !20, i64 120}
!169 = !{!19, !19, i64 0}
!170 = !{!14, !8, i64 48}
!171 = distinct !{!171, !64}
!172 = distinct !{!172, !64}
!173 = distinct !{!173, !64}
!174 = distinct !{!174, !64}
!175 = distinct !{!175, !64}
!176 = !{!14, !20, i64 40}
!177 = distinct !{!177, !64}
!178 = distinct !{!178, !64}
!179 = distinct !{!179, !64, !65, !66}
!180 = distinct !{!180, !64, !66, !65}
!181 = distinct !{!181, !64}
end_hunk_2
