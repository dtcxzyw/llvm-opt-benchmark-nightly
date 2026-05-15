inline.NumInlined: 253
inline.NumDeleted: 86
begin_hunk_0_@_Py_call_instrumentation_instruction:bb.a
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
  %i.n = shl nuw i32 1, %0                        ; 4 uses
  %i.o = load <16 x i8>, ptr %i.m, align 1, !tbaa !39 ; 5 uses
  %i.p = extractelement <16 x i8> %i.o, i64 0
  %i.q = zext i8 %i.p to i32
  %i.r = lshr i32 %i.q, %0
  %i.s = and i32 %i.r, 1
  %i.t = shufflevector <16 x i8> %i.o, <16 x i8> poison, <12 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.u = trunc i32 %i.n to i8
  %i.v = insertelement <12 x i8> poison, i8 %i.u, i64 0
  %i.w = shufflevector <12 x i8> %i.v, <12 x i8> poison, <12 x i32> zeroinitializer
  %i.x = and <12 x i8> %i.w, %i.t
  %i.y = icmp eq <12 x i8> %i.x, zeroinitializer
  %i.z = select <12 x i1> %i.y, <12 x i32> zeroinitializer, <12 x i32> <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096>
  %i.aa = extractelement <16 x i8> %i.o, i64 13
  %i.ab = zext i8 %i.aa to i32
  %i.ac = and i32 %i.n, %i.ab
  %.not.13.i = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not.13.i, i32 0, i32 8192
  %i.ae = shufflevector <16 x i8> %i.o, <16 x i8> poison, <2 x i32> <i32 14, i32 15>
  %i.af = zext <2 x i8> %i.ae to <2 x i32>
  %i.ag = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.ah = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ai = and <2 x i32> %i.ah, %i.af
  %i.aj = icmp eq <2 x i32> %i.ai, zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x i32> zeroinitializer, <2 x i32> <i32 16384, i32 32768> ; 2 uses
  %i.al = tail call i32 @llvm.vector.reduce.or.v12i32(<12 x i32> %i.z)
  %op.rdx = or disjoint i32 %i.al, %i.ad
  %shift = shufflevector <2 x i32> %i.ak, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i32> %i.ak, %shift
  %op.rdx26 = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %op.rdx27 = or disjoint i32 %op.rdx, %op.rdx26
  %op.rdx28 = or disjoint i32 %op.rdx27, %i.s
  %i.am = icmp eq i32 %op.rdx28, %1
  br i1 %i.am, label %instrument_all_executing_code_objects.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load atomic i64, ptr %i.d monotonic, align 8
  %i.ao = trunc i64 %i.an to i32
  %i.ap = add i32 %i.ao, 256                      ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !55
  %i.as = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ar, ptr noundef nonnull @.str) #12 ; 0 uses
  br label %instrument_all_executing_code_objects.exit

bb.f:                                             ; preds = %bb.d
  %i.at = trunc i32 %i.n to i8
  %i.au = xor i8 %i.at, -1
  %2 = insertelement <8 x i32> poison, i32 %1, i64 0
  %3 = shufflevector <8 x i32> %2, <8 x i32> poison, <16 x i32> zeroinitializer
  %4 = lshr <16 x i32> %3, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.av = and <16 x i32> %4, splat (i32 1)
  %i.aw = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.ax = shufflevector <16 x i8> %i.aw, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ay = and <16 x i8> %i.o, %i.ax
  %i.az = insertelement <16 x i32> poison, i32 %0, i64 0
  %i.ba = shufflevector <16 x i32> %i.az, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bb = shl nuw <16 x i32> %i.av, %i.ba
  %i.bc = trunc <16 x i32> %i.bb to <16 x i8>
  %i.bd = or <16 x i8> %i.ay, %i.bc
  store <16 x i8> %i.bd, ptr %i.m, align 1, !tbaa !39
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !56  ; 3 uses
  %i.bf = load atomic i64, ptr %i.be monotonic, align 8 ; 2 uses
  %i.bg = zext i32 %i.ap to i64                   ; 4 uses
  %i.bh = and i64 %i.bf, 255
  %i.bi = or i64 %i.bh, %i.bg
  %i.bj = cmpxchg ptr %i.be, i64 %i.bf, i64 %i.bi seq_cst seq_cst, align 8 ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %set_version_raw.exit.i, label %_Py_atomic_compare_exchange_uintptr.exit.i.i

_Py_atomic_compare_exchange_uintptr.exit.i.i:     ; preds = %bb.f, %_Py_atomic_compare_exchange_uintptr.exit.i.i
  %i.bl = phi { i64, i1 } [ %i.bp, %_Py_atomic_compare_exchange_uintptr.exit.i.i ], [ %i.bj, %bb.f ]
  %i.bm = extractvalue { i64, i1 } %i.bl, 0       ; 2 uses
  %i.bn = and i64 %i.bm, 255
  %i.bo = or i64 %i.bn, %i.bg
  %i.bp = cmpxchg ptr %i.be, i64 %i.bm, i64 %i.bo seq_cst seq_cst, align 8 ; 2 uses
  %i.bq = extractvalue { i64, i1 } %i.bp, 1
  br i1 %i.bq, label %set_version_raw.exit.i, label %_Py_atomic_compare_exchange_uintptr.exit.i.i

set_version_raw.exit.i:                           ; preds = %_Py_atomic_compare_exchange_uintptr.exit.i.i, %bb.f
  %i.br = getelementptr i8, ptr %i.b, i64 24      ; 3 uses
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 2 uses
  %i.bt = and i64 %i.bs, 255
  %i.bu = or i64 %i.bt, %i.bg
  %i.bv = cmpxchg ptr %i.br, i64 %i.bs, i64 %i.bu seq_cst seq_cst, align 8 ; 2 uses
  %i.bw = extractvalue { i64, i1 } %i.bv, 1
  br i1 %i.bw, label %set_global_version.exit, label %_Py_atomic_compare_exchange_uintptr.exit.i4.i

_Py_atomic_compare_exchange_uintptr.exit.i4.i:    ; preds = %set_version_raw.exit.i, %_Py_atomic_compare_exchange_uintptr.exit.i4.i
  %i.bx = phi { i64, i1 } [ %i.cb, %_Py_atomic_compare_exchange_uintptr.exit.i4.i ], [ %i.bv, %set_version_raw.exit.i ]
  %i.by = extractvalue { i64, i1 } %i.bx, 0       ; 2 uses
  %i.bz = and i64 %i.by, 255
  %i.ca = or i64 %i.bz, %i.bg
  %i.cb = cmpxchg ptr %i.br, i64 %i.by, i64 %i.ca seq_cst seq_cst, align 8 ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  br i1 %i.cc, label %set_global_version.exit, label %_Py_atomic_compare_exchange_uintptr.exit.i4.i

set_global_version.exit:                          ; preds = %_Py_atomic_compare_exchange_uintptr.exit.i4.i, %set_version_raw.exit.i
  %i.cd = getelementptr i8, ptr %i.d, i64 7376    ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !94
  %i.cf = getelementptr i8, ptr %i.ce, i64 864    ; 2 uses
  %i.cg = cmpxchg ptr %i.cf, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.ch = extractvalue { i8, i1 } %i.cg, 1
  br i1 %i.ch, label %PyMutex_LockFlags.exit.i, label %bb.g

bb.g:                                             ; preds = %set_global_version.exit
  %i.ci = tail call i32 @_PyMutex_LockTimed(ptr noundef %i.cf, i64 noundef -1, i32 noundef 0) #12 ; 0 uses
  br label %PyMutex_LockFlags.exit.i

PyMutex_LockFlags.exit.i:                         ; preds = %bb.g, %set_global_version.exit
  %i.cj = getelementptr i8, ptr %i.d, i64 7336
  %.01633.i = load ptr, ptr %i.cj, align 8, !tbaa !93 ; 2 uses
  %.not34.i = icmp eq ptr %.01633.i, null
  br i1 %.not34.i, label %.loopexit.i, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %PyMutex_LockFlags.exit.i, %._crit_edge.i
  %.01635.i = phi ptr [ %.016.i, %._crit_edge.i ], [ %.01633.i, %PyMutex_LockFlags.exit.i ] ; 2 uses
  %i.ck = getelementptr i8, ptr %.01635.i, i64 72
  %.030.i = load ptr, ptr %i.ck, align 8, !tbaa !161 ; 2 uses
  %.not2231.i = icmp eq ptr %.030.i, null
  br i1 %.not2231.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph36.i, %instrument_lock_held.exit.thread.i
  %.032.i = phi ptr [ %.0.i17, %instrument_lock_held.exit.thread.i ], [ %.030.i, %.lr.ph36.i ] ; 3 uses
  %i.cl = getelementptr i8, ptr %.032.i, i64 74
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !162
  %i.cn = icmp slt i8 %i.cm, 3
  br i1 %i.cn, label %bb.h, label %instrument_lock_held.exit.thread.i

bb.h:                                             ; preds = %.lr.ph.i
  %.0.val.i = load i64, ptr %.032.i, align 8
  %i.co = and i64 %.0.val.i, -2
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %i.cq = load atomic i64, ptr %i.d monotonic, align 8
  %i.cr = and i64 %i.cq, 4294967295
  %i.cs = getelementptr i8, ptr %i.cp, i64 168
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !92
  %i.cu = icmp eq i64 %i.ct, %i.cr
  br i1 %i.cu, label %instrument_lock_held.exit.thread.i, label %instrument_lock_held.exit.i

instrument_lock_held.exit.i:                      ; preds = %bb.h
  %i.cv = tail call fastcc i32 @force_instrument_lock_held(ptr noundef nonnull %i.cp, ptr noundef nonnull readonly %i.d)
  %.not23.i = icmp eq i32 %i.cv, 0
  br i1 %.not23.i, label %instrument_lock_held.exit.thread.i, label %.loopexit.i

instrument_lock_held.exit.thread.i:               ; preds = %instrument_lock_held.exit.i, %bb.h, %.lr.ph.i
  %i.cw = getelementptr i8, ptr %.032.i, i64 8
  %.0.i17 = load ptr, ptr %i.cw, align 8, !tbaa !161 ; 2 uses
  %.not22.i = icmp eq ptr %.0.i17, null
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !163

._crit_edge.i:                                    ; preds = %instrument_lock_held.exit.thread.i, %.lr.ph36.i
  %i.cx = getelementptr i8, ptr %.01635.i, i64 8
  %.016.i = load ptr, ptr %i.cx, align 8, !tbaa !93 ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph36.i, !llvm.loop !164

.loopexit.i:                                      ; preds = %._crit_edge.i, %instrument_lock_held.exit.i, %PyMutex_LockFlags.exit.i
  %.4.i = phi i32 [ 0, %PyMutex_LockFlags.exit.i ], [ -1, %instrument_lock_held.exit.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.cy = load ptr, ptr %i.cd, align 8, !tbaa !94
  %i.cz = getelementptr i8, ptr %i.cy, i64 864    ; 2 uses
  %i.da = cmpxchg ptr %i.cz, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.db = extractvalue { i8, i1 } %i.da, 1
  br i1 %i.db, label %instrument_all_executing_code_objects.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  tail call void @PyMutex_Unlock(ptr noundef %i.cz) #12
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
end_hunk_0
