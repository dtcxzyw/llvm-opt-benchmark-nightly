inline.NumInlined: 253
inline.NumDeleted: 86
begin_hunk_0_@_Py_call_instrumentation_instruction:bb.a
  %i.l = ashr i64 %sext, 32                       ; 5 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !39
  %i.o = zext i8 %i.n to i32                      ; 4 uses
  %i.p = getelementptr i8, ptr %0, i64 64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !42
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 2 uses
  %i.t = getelementptr i8, ptr %i.i, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90   ; 2 uses
  %.not43 = icmp eq ptr %i.u, null
  br i1 %.not43, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %i.u, i64 %i.l
  %i.w = load i8, ptr %i.v, align 1, !tbaa !39
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr i8, ptr %i.s, i64 223462
  %i.y = load i8, ptr %i.x, align 2, !tbaa !39
  %i.z = getelementptr i8, ptr %i.i, i64 6
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !39
  %i.ab = or i8 %i.aa, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.in = phi i8 [ %i.w, %bb.c ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ac = shl i64 %i.g, 32
  %sext62 = ashr exact i64 %i.ac, 32
  %i.ad = and i64 %sext62, -2
  %i.ae = tail call ptr @PyLong_FromLong(i64 noundef %i.ad) #12 ; 7 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 16, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
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
  %i.av = insertelement <8 x i32> poison, i32 %1, i64 0
  %i.aw = shufflevector <8 x i32> %i.av, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.ax = lshr <16 x i32> %i.aw, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ay = and <16 x i32> %i.ax, splat (i32 1)
  %i.az = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.ba = shufflevector <16 x i8> %i.az, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bb = and <16 x i8> %i.o, %i.ba
  %i.bc = insertelement <16 x i32> poison, i32 %0, i64 0
  %i.bd = shufflevector <16 x i32> %i.bc, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.be = shl nuw <16 x i32> %i.ay, %i.bd
  %i.bf = trunc <16 x i32> %i.be to <16 x i8>
  %i.bg = or <16 x i8> %i.bb, %i.bf
  store <16 x i8> %i.bg, ptr %i.m, align 8, !tbaa !39
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !56  ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 2 uses
  %i.bj = zext i32 %i.ap to i64                   ; 4 uses
  %i.bk = and i64 %i.bi, 255
  %i.bl = or i64 %i.bk, %i.bj
  %i.bm = cmpxchg ptr %i.bh, i64 %i.bi, i64 %i.bl seq_cst seq_cst, align 8 ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  br i1 %i.bn, label %set_version_raw.exit.i, label %_Py_atomic_compare_exchange_uintptr.exit.i.i

_Py_atomic_compare_exchange_uintptr.exit.i.i:     ; preds = %bb.f, %_Py_atomic_compare_exchange_uintptr.exit.i.i
  %i.bo = phi { i64, i1 } [ %i.bs, %_Py_atomic_compare_exchange_uintptr.exit.i.i ], [ %i.bm, %bb.f ]
  %i.bp = extractvalue { i64, i1 } %i.bo, 0       ; 2 uses
  %i.bq = and i64 %i.bp, 255
  %i.br = or i64 %i.bq, %i.bj
  %i.bs = cmpxchg ptr %i.bh, i64 %i.bp, i64 %i.br seq_cst seq_cst, align 8 ; 2 uses
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  br i1 %i.bt, label %set_version_raw.exit.i, label %_Py_atomic_compare_exchange_uintptr.exit.i.i

set_version_raw.exit.i:                           ; preds = %_Py_atomic_compare_exchange_uintptr.exit.i.i, %bb.f
  %i.bu = getelementptr i8, ptr %i.b, i64 24      ; 3 uses
  %i.bv = load atomic i64, ptr %i.bu monotonic, align 8 ; 2 uses
  %i.bw = and i64 %i.bv, 255
  %i.bx = or i64 %i.bw, %i.bj
  %i.by = cmpxchg ptr %i.bu, i64 %i.bv, i64 %i.bx seq_cst seq_cst, align 8 ; 2 uses
  %i.bz = extractvalue { i64, i1 } %i.by, 1
  br i1 %i.bz, label %set_global_version.exit, label %_Py_atomic_compare_exchange_uintptr.exit.i4.i

_Py_atomic_compare_exchange_uintptr.exit.i4.i:    ; preds = %set_version_raw.exit.i, %_Py_atomic_compare_exchange_uintptr.exit.i4.i
  %i.ca = phi { i64, i1 } [ %i.ce, %_Py_atomic_compare_exchange_uintptr.exit.i4.i ], [ %i.by, %set_version_raw.exit.i ]
  %i.cb = extractvalue { i64, i1 } %i.ca, 0       ; 2 uses
  %i.cc = and i64 %i.cb, 255
  %i.cd = or i64 %i.cc, %i.bj
  %i.ce = cmpxchg ptr %i.bu, i64 %i.cb, i64 %i.cd seq_cst seq_cst, align 8 ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  br i1 %i.cf, label %set_global_version.exit, label %_Py_atomic_compare_exchange_uintptr.exit.i4.i

set_global_version.exit:                          ; preds = %_Py_atomic_compare_exchange_uintptr.exit.i4.i, %set_version_raw.exit.i
  %i.cg = getelementptr i8, ptr %i.d, i64 7376    ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !94
  %i.ci = getelementptr i8, ptr %i.ch, i64 864    ; 2 uses
  %i.cj = cmpxchg ptr %i.ci, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.ck = extractvalue { i8, i1 } %i.cj, 1
  br i1 %i.ck, label %PyMutex_LockFlags.exit.i, label %bb.g

bb.g:                                             ; preds = %set_global_version.exit
  %i.cl = tail call i32 @_PyMutex_LockTimed(ptr noundef %i.ci, i64 noundef -1, i32 noundef 0) #12 ; 0 uses
  br label %PyMutex_LockFlags.exit.i

PyMutex_LockFlags.exit.i:                         ; preds = %bb.g, %set_global_version.exit
  %i.cm = getelementptr i8, ptr %i.d, i64 7336
  %.01633.i = load ptr, ptr %i.cm, align 8, !tbaa !93 ; 2 uses
  %.not34.i = icmp eq ptr %.01633.i, null
  br i1 %.not34.i, label %.loopexit.i, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %PyMutex_LockFlags.exit.i, %._crit_edge.i
  %.01635.i = phi ptr [ %.016.i, %._crit_edge.i ], [ %.01633.i, %PyMutex_LockFlags.exit.i ] ; 2 uses
  %i.cn = getelementptr i8, ptr %.01635.i, i64 72
  %.030.i = load ptr, ptr %i.cn, align 8, !tbaa !161 ; 2 uses
  %.not2231.i = icmp eq ptr %.030.i, null
  br i1 %.not2231.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph36.i, %instrument_lock_held.exit.thread.i
  %.032.i = phi ptr [ %.0.i17, %instrument_lock_held.exit.thread.i ], [ %.030.i, %.lr.ph36.i ] ; 3 uses
  %i.co = getelementptr i8, ptr %.032.i, i64 74
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !162
  %i.cq = icmp slt i8 %i.cp, 3
  br i1 %i.cq, label %bb.h, label %instrument_lock_held.exit.thread.i

bb.h:                                             ; preds = %.lr.ph.i
  %.0.val.i = load i64, ptr %.032.i, align 8
  %i.cr = and i64 %.0.val.i, -2
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = load atomic i64, ptr %i.d monotonic, align 8
  %i.cu = and i64 %i.ct, 4294967295
  %i.cv = getelementptr i8, ptr %i.cs, i64 168
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !92
  %i.cx = icmp eq i64 %i.cw, %i.cu
  br i1 %i.cx, label %instrument_lock_held.exit.thread.i, label %instrument_lock_held.exit.i

instrument_lock_held.exit.i:                      ; preds = %bb.h
  %i.cy = tail call fastcc i32 @force_instrument_lock_held(ptr noundef nonnull %i.cs, ptr noundef nonnull readonly %i.d)
  %.not23.i = icmp eq i32 %i.cy, 0
  br i1 %.not23.i, label %instrument_lock_held.exit.thread.i, label %.loopexit.i

instrument_lock_held.exit.thread.i:               ; preds = %instrument_lock_held.exit.i, %bb.h, %.lr.ph.i
  %i.cz = getelementptr i8, ptr %.032.i, i64 8
  %.0.i17 = load ptr, ptr %i.cz, align 8, !tbaa !161 ; 2 uses
  %.not22.i = icmp eq ptr %.0.i17, null
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !163

._crit_edge.i:                                    ; preds = %instrument_lock_held.exit.thread.i, %.lr.ph36.i
  %i.da = getelementptr i8, ptr %.01635.i, i64 8
  %.016.i = load ptr, ptr %i.da, align 8, !tbaa !93 ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph36.i, !llvm.loop !164

.loopexit.i:                                      ; preds = %._crit_edge.i, %instrument_lock_held.exit.i, %PyMutex_LockFlags.exit.i
  %.4.i = phi i32 [ 0, %PyMutex_LockFlags.exit.i ], [ -1, %instrument_lock_held.exit.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.db = load ptr, ptr %i.cg, align 8, !tbaa !94
  %i.dc = getelementptr i8, ptr %i.db, i64 864    ; 2 uses
  %i.dd = cmpxchg ptr %i.dc, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.de = extractvalue { i8, i1 } %i.dd, 1
  br i1 %i.de, label %instrument_all_executing_code_objects.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  tail call void @PyMutex_Unlock(ptr noundef %i.dc) #12
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
  %i.ar = trunc i32 %i.ak to i8
  %i.as = insertelement <8 x i8> poison, i8 %i.ar, i64 0
  %i.at = shufflevector <8 x i8> %i.as, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.au = and <8 x i8> %i.at, %i.aq
  %i.av = icmp eq <8 x i8> %i.au, zeroinitializer
  %i.aw = select <8 x i1> %i.av, <8 x i32> zeroinitializer, <8 x i32> <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256>
  %i.ax = getelementptr i8, ptr %i.ad, i64 9      ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !39  ; 2 uses
  %i.az = zext i8 %i.ay to i32
  %i.ba = and i32 %i.ak, %i.az
  %.not.9.i = icmp eq i32 %i.ba, 0
  %i.bb = select i1 %.not.9.i, i32 0, i32 512
  %i.bc = getelementptr i8, ptr %i.ad, i64 10     ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !39  ; 2 uses
  %i.be = zext i8 %i.bd to i32
  %i.bf = and i32 %i.ak, %i.be
  %.not.10.i = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not.10.i, i32 0, i32 1024
  %i.bh = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.aw)
  %op.rdx = or disjoint i32 %i.bh, %i.bb
  %op.rdx31 = or disjoint i32 %i.bg, %i.ao
  %op.rdx32 = or disjoint i32 %op.rdx, %op.rdx31
  %i.bi = icmp eq i32 %op.rdx32, %2
  br i1 %i.bi, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr i8, ptr %i.ad, i64 8
  %i.bk = getelementptr i8, ptr %i.ad, i64 7
  %i.bl = getelementptr i8, ptr %i.ad, i64 6
  %i.bm = getelementptr i8, ptr %i.ad, i64 5
  %i.bn = getelementptr i8, ptr %i.ad, i64 4
  %i.bo = getelementptr i8, ptr %i.ad, i64 3
  %i.bp = getelementptr i8, ptr %i.ad, i64 2
  %i.bq = trunc i32 %i.ak to i8
  %i.br = xor i8 %i.bq, -1                        ; 11 uses
  %i.bs = and i32 %2, 1
  %i.bt = and i8 %i.al, %i.br
  %i.bu = shl nuw i32 %i.bs, %1
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = or i8 %i.bt, %i.bv
  store i8 %i.bw, ptr %i.ad, align 1, !tbaa !39
  %i.bx = lshr i32 %2, 1
  %i.by = and i32 %i.bx, 1
  %i.bz = extractelement <8 x i8> %i.aq, i64 0
  %i.ca = and i8 %i.bz, %i.br
  %i.cb = shl nuw i32 %i.by, %1
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = or i8 %i.ca, %i.cc
  store i8 %i.cd, ptr %i.ap, align 1, !tbaa !39
  %i.ce = lshr i32 %2, 2
  %i.cf = and i32 %i.ce, 1
  %i.cg = extractelement <8 x i8> %i.aq, i64 1
  %i.ch = and i8 %i.cg, %i.br
  %i.ci = shl nuw i32 %i.cf, %1
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = or i8 %i.ch, %i.cj
  store i8 %i.ck, ptr %i.bp, align 1, !tbaa !39
  %i.cl = lshr i32 %2, 3
  %i.cm = and i32 %i.cl, 1
  %i.cn = extractelement <8 x i8> %i.aq, i64 2
  %i.co = and i8 %i.cn, %i.br
  %i.cp = shl nuw i32 %i.cm, %1
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = or i8 %i.co, %i.cq
  store i8 %i.cr, ptr %i.bo, align 1, !tbaa !39
  %i.cs = lshr i32 %2, 4
  %i.ct = and i32 %i.cs, 1
  %i.cu = extractelement <8 x i8> %i.aq, i64 3
  %i.cv = and i8 %i.cu, %i.br
  %i.cw = shl nuw i32 %i.ct, %1
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = or i8 %i.cv, %i.cx
  store i8 %i.cy, ptr %i.bn, align 1, !tbaa !39
  %i.cz = lshr i32 %2, 5
  %i.da = and i32 %i.cz, 1
  %i.db = extractelement <8 x i8> %i.aq, i64 4
  %i.dc = and i8 %i.db, %i.br
  %i.dd = shl nuw i32 %i.da, %1
  %i.de = trunc i32 %i.dd to i8
  %i.df = or i8 %i.dc, %i.de
  store i8 %i.df, ptr %i.bm, align 1, !tbaa !39
  %i.dg = lshr i32 %2, 6
  %i.dh = and i32 %i.dg, 1
  %i.di = extractelement <8 x i8> %i.aq, i64 5
  %i.dj = and i8 %i.di, %i.br
  %i.dk = shl nuw i32 %i.dh, %1
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = or i8 %i.dj, %i.dl
  store i8 %i.dm, ptr %i.bl, align 1, !tbaa !39
  %i.dn = lshr i32 %2, 7
  %i.do = and i32 %i.dn, 1
  %i.dp = extractelement <8 x i8> %i.aq, i64 6
  %i.dq = and i8 %i.dp, %i.br
  %i.dr = shl nuw i32 %i.do, %1
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = or i8 %i.dq, %i.ds
  store i8 %i.dt, ptr %i.bk, align 1, !tbaa !39
  %i.du = lshr i32 %2, 8
  %i.dv = and i32 %i.du, 1
  %i.dw = extractelement <8 x i8> %i.aq, i64 7
  %i.dx = and i8 %i.dw, %i.br
  %i.dy = shl nuw i32 %i.dv, %1
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = or i8 %i.dx, %i.dz
  store i8 %i.ea, ptr %i.bj, align 1, !tbaa !39
  %i.eb = lshr i32 %2, 9
  %i.ec = and i32 %i.eb, 1
  %i.ed = and i8 %i.ay, %i.br
  %i.ee = shl nuw i32 %i.ec, %1
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = or i8 %i.ed, %i.ef
  store i8 %i.eg, ptr %i.ax, align 1, !tbaa !39
  %i.eh = lshr i32 %2, 10
  %i.ei = and i32 %i.eh, 1
  %i.ej = and i8 %i.bd, %i.br
  %i.ek = shl nuw i32 %i.ei, %1
  %i.el = trunc i32 %i.ek to i8
  %i.em = or i8 %i.ej, %i.el
  store i8 %i.em, ptr %i.bc, align 1, !tbaa !39
  %i.en = tail call fastcc i32 @force_instrument_lock_held(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %allocate_instrumentation_data.exit, %check_tool.exit, %bb.i, %bb.h, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %allocate_instrumentation_data.exit ], [ -1, %check_tool.exit ], [ %i.en, %bb.i ], [ 0, %bb.h ]
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
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.g, %bb.b ] ; 42 uses
  %i.r = getelementptr i8, ptr %1, i64 224776
  %i.s = getelementptr i8, ptr %i.q, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !169
  %i.u = load i64, ptr %i.r, align 8, !tbaa !169
  %.not98.i = icmp eq i64 %i.t, %i.u
  br i1 %.not98.i, label %.loopexit136.i, label %.preheader135.i

bb.f:                                             ; preds = %.loopexit136.7.i
  %.sroa.0.1.extract.shift.i = lshr i64 %i.fq, 8
  %.sroa.0.1.extract.trunc.i = trunc i64 %.sroa.0.1.extract.shift.i to i8
  %i.v = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.1.extract.trunc.i)
  %i.w = icmp samesign ugt i8 %i.v, 1
  br i1 %i.w, label %multiple_tools.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.2.extract.shift.i = lshr i64 %i.fq, 16
  %.sroa.0.2.extract.trunc.i = trunc i64 %.sroa.0.2.extract.shift.i to i8
  %i.x = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.2.extract.trunc.i)
  %i.y = icmp samesign ugt i8 %i.x, 1
  br i1 %i.y, label %multiple_tools.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.3.extract.shift.i = lshr i64 %i.fq, 24
  %.sroa.0.3.extract.trunc.i = trunc i64 %.sroa.0.3.extract.shift.i to i8
  %i.z = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.3.extract.trunc.i)
  %i.aa = icmp samesign ugt i8 %i.z, 1
  br i1 %i.aa, label %multiple_tools.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.4.extract.shift.i = lshr i64 %i.fq, 32
  %.sroa.0.4.extract.trunc.i = trunc i64 %.sroa.0.4.extract.shift.i to i8
  %i.ab = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.4.extract.trunc.i)
  %i.ac = icmp samesign ugt i8 %i.ab, 1
  br i1 %i.ac, label %multiple_tools.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.5.extract.shift121.i = lshr i64 %i.fq, 40
  %.sroa.0.5.extract.trunc122.i = trunc i64 %.sroa.0.5.extract.shift121.i to i8
  %i.ad = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.5.extract.trunc122.i)
  %i.ae = icmp samesign ugt i8 %i.ad, 1
  br i1 %i.ae, label %multiple_tools.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.6.extract.shift124.i = lshr i64 %i.fq, 48
  %.sroa.0.6.extract.trunc125.i = trunc i64 %.sroa.0.6.extract.shift124.i to i8
  %i.af = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.6.extract.trunc125.i)
  %i.ag = icmp samesign ugt i8 %i.af, 1
  br i1 %i.ag, label %multiple_tools.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.7.extract.shift.i = lshr i64 %i.fq, 56
  %.sroa.0.7.extract.trunc.i = trunc nuw i64 %.sroa.0.7.extract.shift.i to i8
  %i.ah = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.7.extract.trunc.i)
  %i.ai = icmp samesign ugt i8 %i.ah, 1
  %i.aj = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.fr)
  %i.ak = icmp samesign ugt i8 %i.aj, 1
  %or.cond130.i = select i1 %i.ai, i1 true, i1 %i.ak
  %i.al = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.fs)
  %i.am = icmp samesign ugt i8 %i.al, 1
  %or.cond132.i = select i1 %or.cond130.i, i1 true, i1 %i.am
  br i1 %or.cond132.i, label %multiple_tools.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ft)
  %i.ao = icmp samesign ugt i8 %i.an, 1
  br label %multiple_tools.exit.i

multiple_tools.exit.i:                            ; preds = %.loopexit136.7.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.lcssa.i.i = phi i1 [ true, %bb.j ], [ true, %.loopexit136.7.i ], [ true, %bb.f ], [ %i.ao, %bb.m ], [ true, %bb.g ], [ true, %bb.k ], [ true, %bb.h ], [ true, %bb.l ], [ true, %bb.i ] ; 3 uses
  %i.ap = getelementptr i8, ptr %i.fl, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !57
  %i.ar = icmp eq ptr %i.aq, null
  %or.cond.i = select i1 %i.ar, i1 %.lcssa.i.i, i1 false
  br i1 %or.cond.i, label %bb.n, label %initialize_tools.exit.i

.preheader135.i:                                  ; preds = %bb.e
  %i.as = load <8 x i8>, ptr %i.q, align 8, !tbaa !39
  %i.at = and <8 x i8> %i.as, splat (i8 -2)
  store <8 x i8> %i.at, ptr %i.q, align 8, !tbaa !39
  %i.au = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !39
  %i.aw = and i8 %i.av, -2
  store i8 %i.aw, ptr %i.au, align 8, !tbaa !39
  %i.ax = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !39
  %i.az = and i8 %i.ay, -2
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !39
  %i.ba = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !39
  %i.bc = and i8 %i.bb, -2
  store i8 %i.bc, ptr %i.ba, align 2, !tbaa !39
  %.pre175.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.i

.loopexit136.i:                                   ; preds = %.preheader135.i, %bb.e
  %i.bd = phi ptr [ %.pre175.i, %.preheader135.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !169
  %i.bg = getelementptr i8, ptr %1, i64 224784
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !169
  %.not98.1.i = icmp eq i64 %i.bf, %i.bh
  br i1 %.not98.1.i, label %.loopexit136.1.i, label %.preheader135.1.i

.preheader135.1.i:                                ; preds = %.loopexit136.i
  %i.bi = load <8 x i8>, ptr %i.q, align 8, !tbaa !39
  %i.bj = and <8 x i8> %i.bi, splat (i8 -3)
  store <8 x i8> %i.bj, ptr %i.q, align 8, !tbaa !39
  %i.bk = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !39
  %i.bm = and i8 %i.bl, -3
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !39
  %i.bn = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !39
  %i.bp = and i8 %i.bo, -3
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !39
  %i.bq = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !39
  %i.bs = and i8 %i.br, -3
  store i8 %i.bs, ptr %i.bq, align 2, !tbaa !39
  %.pre176.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.1.i

.loopexit136.1.i:                                 ; preds = %.preheader135.1.i, %.loopexit136.i
  %i.bt = phi ptr [ %.pre176.i, %.preheader135.1.i ], [ %i.bd, %.loopexit136.i ] ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !169
  %i.bw = getelementptr i8, ptr %1, i64 224792
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !169
  %.not98.2.i = icmp eq i64 %i.bv, %i.bx
  br i1 %.not98.2.i, label %.loopexit136.2.i, label %.preheader135.2.i

.preheader135.2.i:                                ; preds = %.loopexit136.1.i
  %i.by = load <8 x i8>, ptr %i.q, align 8, !tbaa !39
  %i.bz = and <8 x i8> %i.by, splat (i8 -5)
  store <8 x i8> %i.bz, ptr %i.q, align 8, !tbaa !39
  %i.ca = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !39
  %i.cc = and i8 %i.cb, -5
  store i8 %i.cc, ptr %i.ca, align 8, !tbaa !39
  %i.cd = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !39
  %i.cf = and i8 %i.ce, -5
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !39
  %i.cg = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !39
  %i.ci = and i8 %i.ch, -5
  store i8 %i.ci, ptr %i.cg, align 2, !tbaa !39
  %.pre177.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.2.i

.loopexit136.2.i:                                 ; preds = %.preheader135.2.i, %.loopexit136.1.i
  %i.cj = phi ptr [ %.pre177.i, %.preheader135.2.i ], [ %i.bt, %.loopexit136.1.i ] ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !169
  %i.cm = getelementptr i8, ptr %1, i64 224800
end_hunk_0
begin_hunk_1_@_PyMonitoring_GetLocalEvents:bb.a
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
  %i.u = trunc i32 %i.n to i8
  %i.v = insertelement <8 x i8> poison, i8 %i.u, i64 0
  %i.w = shufflevector <8 x i8> %i.v, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.x = and <8 x i8> %i.w, %i.t
  %i.y = icmp eq <8 x i8> %i.x, zeroinitializer
  %i.z = select <8 x i1> %i.y, <8 x i32> zeroinitializer, <8 x i32> <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256>
  %i.aa = getelementptr i8, ptr %i.l, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !39
  %i.ac = zext i8 %i.ab to i32
  %i.ad = and i32 %i.n, %i.ac
  %.not.9.i = icmp eq i32 %i.ad, 0
  %i.ae = select i1 %.not.9.i, i32 0, i32 512
  %i.af = getelementptr i8, ptr %i.l, i64 10
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !39
  %i.ah = zext i8 %i.ag to i32
  %i.ai = and i32 %i.n, %i.ah
  %.not.10.i = icmp eq i32 %i.ai, 0
  %i.aj = select i1 %.not.10.i, i32 0, i32 1024
  %i.ak = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.z)
  %op.rdx = or disjoint i32 %i.ak, %i.ae
  %op.rdx13 = or disjoint i32 %i.aj, %i.r
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
bb.a:
  %i.a = icmp eq i32 %1, 18
  br i1 %i.a, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @_PyObject_New(ptr noundef nonnull @_PyLegacyBranchEventHandler_Type) #12 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.c, i64 16
  store ptr @branch_handler_vectorcall, ptr %i.e, align 8, !tbaa !197
  %i.f = load i32, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %2, align 8, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr i8, ptr %i.c, i64 24
  store ptr %2, ptr %i.i, align 8, !tbaa !199
  %i.j = getelementptr i8, ptr %i.c, i64 32
  store i8 1, ptr %i.j, align 8, !tbaa !200
  %i.k = getelementptr i8, ptr %i.c, i64 36
  store i32 %0, ptr %i.k, align 4, !tbaa !201
  %i.l = tail call ptr @_PyObject_New(ptr noundef nonnull @_PyLegacyBranchEventHandler_Type) #12 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.l, i64 16
  store ptr @branch_handler_vectorcall, ptr %i.n, align 8, !tbaa !197
  %i.o = load i32, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %make_branch_handler.exit50, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = add nuw i32 %i.o, 1
  store i32 %i.q, ptr %2, align 8, !tbaa !39
  br label %make_branch_handler.exit50

make_branch_handler.exit50:                       ; preds = %bb.g, %bb.h
  %i.r = getelementptr i8, ptr %i.l, i64 24
  store ptr %2, ptr %i.r, align 8, !tbaa !199
  %i.s = getelementptr i8, ptr %i.l, i64 32
  store i8 0, ptr %i.s, align 8, !tbaa !200
  %i.t = getelementptr i8, ptr %i.l, i64 36
  store i32 %0, ptr %i.t, align 4, !tbaa !201
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.not.i46 = icmp sgt i32 %i.u, -1
  br i1 %.not.i46, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.c, align 8, !tbaa !39
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.critedge.sink.split, label %.critedge

bb.k:                                             ; preds = %make_branch_handler.exit50, %bb.b
  %.041 = phi ptr [ %i.c, %make_branch_handler.exit50 ], [ null, %bb.b ]
  %.040 = phi ptr [ %i.l, %make_branch_handler.exit50 ], [ null, %bb.b ]
  %i.x = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !165  ; 3 uses
  tail call void @_PyEval_StopTheWorld(ptr noundef %i.y) #12
  %i.z = getelementptr i8, ptr %i.y, i64 223496
  %i.aa = sext i32 %0 to i64
  %i.ab = getelementptr [152 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 72     ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55 ; 4 uses
  store ptr %.041, ptr %i.ac, align 8, !tbaa !55
  %i.ae = getelementptr i8, ptr %i.ab, i64 64     ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55 ; 4 uses
  store ptr %.040, ptr %i.ae, align 8, !tbaa !55
  tail call void @_PyEval_StartTheWorld(ptr noundef %i.y) #12
  %.not.i51 = icmp eq ptr %i.ad, null
  br i1 %.not.i51, label %Py_XDECREF.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i.i, label %bb.m, label %Py_XDECREF.exit

bb.m:                                             ; preds = %bb.l
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !39
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %Py_XDECREF.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #12
  br label %Py_XDECREF.exit

bb.o:                                             ; preds = %bb.a
  %i.aj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !165 ; 3 uses
  tail call void @_PyEval_StopTheWorld(ptr noundef %i.ak) #12
  %i.al = getelementptr i8, ptr %i.ak, i64 223496
  %i.am = sext i32 %0 to i64
  %i.an = getelementptr [152 x i8], ptr %i.al, i64 %i.am
  %i.ao = sext i32 %1 to i64
  %i.ap = getelementptr [8 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !55
  %.not.i.i52 = icmp eq ptr %2, null
  br i1 %.not.i.i52, label %_Py_XNewRef.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = load i32, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.as = icmp ugt i32 %i.ar, -1073741825
  br i1 %i.as, label %_Py_XNewRef.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = add nuw i32 %i.ar, 1
  store i32 %i.at, ptr %2, align 8, !tbaa !39
  br label %_Py_XNewRef.exit

_Py_XNewRef.exit:                                 ; preds = %bb.o, %bb.p, %bb.q
  store ptr %2, ptr %i.ap, align 8, !tbaa !55
  tail call void @_PyEval_StartTheWorld(ptr noundef nonnull %i.ak) #12
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %_Py_XNewRef.exit
  %.139 = phi ptr [ %i.aq, %_Py_XNewRef.exit ], [ %i.af, %bb.k ], [ %i.af, %bb.l ], [ %i.af, %bb.m ], [ %i.af, %bb.n ] ; 7 uses
  %.not = icmp eq ptr %.139, null
  br i1 %.not, label %.critedge, label %bb.r

bb.r:                                             ; preds = %Py_XDECREF.exit
  %i.au = getelementptr i8, ptr %.139, i64 8
  %.139.val = load ptr, ptr %i.au, align 8, !tbaa !82
  %i.av = icmp eq ptr %.139.val, @_PyLegacyBranchEventHandler_Type
  br i1 %i.av, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr i8, ptr %.139, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !199 ; 5 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !39 ; 2 uses
  %i.az = icmp ugt i32 %i.ay, -1073741825
  br i1 %i.az, label %_Py_NewRef.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = add nuw i32 %i.ay, 1
  store i32 %i.ba, ptr %i.ax, align 8, !tbaa !39
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.s, %bb.t
  %i.bb = load i32, ptr %.139, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp sgt i32 %i.bb, -1
  br i1 %.not.i, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_Py_NewRef.exit
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %.139, align 8, !tbaa !39
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.critedge.sink.split, label %.critedge

.critedge.sink.split:                             ; preds = %bb.u, %bb.j
end_hunk_1
begin_hunk_2_@_PyMonitoring_RegisterCallback:bb.a
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.c, %bb.u, %_Py_NewRef.exit, %bb.j, %bb.i, %Py_XDECREF.exit, %bb.r
  %.1 = phi ptr [ null, %Py_XDECREF.exit ], [ %i.ax, %bb.u ], [ %.139, %bb.r ], [ null, %bb.c ], [ null, %bb.i ], [ null, %bb.j ], [ %i.ax, %_Py_NewRef.exit ], [ %.1.ph, %.critedge.sink.split ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_CreateMonitoringObject() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @_PyModule_CreateInitialized(ptr noundef nonnull @monitoring_module, i32 noundef 1013) #12 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @_PyInstrumentation_DISABLE) #12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3, ptr noundef nonnull @_PyInstrumentation_MISSING) #12
  %.not38 = icmp eq i32 %i.d, 0
  br i1 %.not38, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @_PyNamespace_New(ptr noundef null) #12 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.e) #12
  %i.h = load i32, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %.not.i54 = icmp sgt i32 %i.h, -1
  br i1 %.not.i54, label %bb.f, label %Py_DECREF.exit55

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.e, align 8, !tbaa !39
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit55

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #12
  br label %Py_DECREF.exit55

Py_DECREF.exit55:                                 ; preds = %bb.e, %bb.f, %bb.g
  %.not39 = icmp eq i32 %i.g, 0
  br i1 %.not39, label %.preheader, label %.thread

bb.h:                                             ; preds = %add_power2_constant.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 19
  br i1 %exitcond.not, label %bb.l, label %.preheader, !llvm.loop !202

.preheader:                                       ; preds = %Py_DECREF.exit55, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %Py_DECREF.exit55 ] ; 3 uses
  %i.k = getelementptr [8 x i8], ptr @event_names, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = shl nuw nsw i32 1, %i.m
  %i.o = zext nneg i32 %i.n to i64
  %i.p = tail call ptr @PyLong_FromLong(i64 noundef %i.o) #12 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.r = tail call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.e, ptr noundef %i.l, ptr noundef nonnull %i.p) #12
  %i.s = load i32, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i.i, label %bb.j, label %add_power2_constant.exit

bb.j:                                             ; preds = %bb.i
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.p, align 8, !tbaa !39
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %add_power2_constant.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #12
  br label %add_power2_constant.exit

add_power2_constant.exit:                         ; preds = %bb.i, %bb.j, %bb.k
  %.not40 = icmp eq i32 %i.r, 0
  br i1 %.not40, label %bb.h, label %.thread

bb.l:                                             ; preds = %bb.h
  %i.v = tail call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296)) #12
  %.not41 = icmp eq i32 %i.v, 0
  br i1 %.not41, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.w = tail call ptr @PyLong_FromLong(i64 noundef 0) #12 ; 4 uses
  %i.x = tail call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6, ptr noundef %i.w) #12
  %i.y = load i32, ptr %i.w, align 8, !tbaa !39   ; 2 uses
  %.not.i52 = icmp sgt i32 %i.y, -1
  br i1 %.not.i52, label %bb.n, label %Py_DECREF.exit53

bb.n:                                             ; preds = %bb.m
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.w, align 8, !tbaa !39
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.o, label %Py_DECREF.exit53

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w) #12
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.m, %bb.n, %bb.o
  %.not42 = icmp eq i32 %i.x, 0
  br i1 %.not42, label %bb.p, label %.thread

bb.p:                                             ; preds = %Py_DECREF.exit53
  %i.ab = tail call ptr @PyLong_FromLong(i64 noundef 1) #12 ; 4 uses
  %i.ac = tail call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7, ptr noundef %i.ab) #12
  %i.ad = load i32, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %.not.i50 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i50, label %bb.q, label %Py_DECREF.exit51

bb.q:                                             ; preds = %bb.p
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !39
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.r, label %Py_DECREF.exit51

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #12
  br label %Py_DECREF.exit51

Py_DECREF.exit51:                                 ; preds = %bb.p, %bb.q, %bb.r
  %.not43 = icmp eq i32 %i.ac, 0
  br i1 %.not43, label %bb.s, label %.thread

bb.s:                                             ; preds = %Py_DECREF.exit51
  %i.ag = tail call ptr @PyLong_FromLong(i64 noundef 2) #12 ; 4 uses
  %i.ah = tail call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8, ptr noundef %i.ag) #12
  %i.ai = load i32, ptr %i.ag, align 8, !tbaa !39 ; 2 uses
  %.not.i48 = icmp sgt i32 %i.ai, -1
  br i1 %.not.i48, label %bb.t, label %Py_DECREF.exit49

bb.t:                                             ; preds = %bb.s
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !39
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.u, label %Py_DECREF.exit49

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #12
  br label %Py_DECREF.exit49

Py_DECREF.exit49:                                 ; preds = %bb.s, %bb.t, %bb.u
  %.not44 = icmp eq i32 %i.ah, 0
  br i1 %.not44, label %bb.v, label %.thread

bb.v:                                             ; preds = %Py_DECREF.exit49
  %i.al = tail call ptr @PyLong_FromLong(i64 noundef 5) #12 ; 4 uses
  %i.am = tail call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.9, ptr noundef %i.al) #12
  %i.an = load i32, ptr %i.al, align 8, !tbaa !39 ; 2 uses
  %.not.i46 = icmp sgt i32 %i.an, -1
  br i1 %.not.i46, label %bb.w, label %Py_DECREF.exit47

bb.w:                                             ; preds = %bb.v
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !39
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.x, label %Py_DECREF.exit47

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.al) #12
  br label %Py_DECREF.exit47

Py_DECREF.exit47:                                 ; preds = %bb.v, %bb.w, %bb.x
  %.not45 = icmp eq i32 %i.am, 0
  br i1 %.not45, label %Py_DECREF.exit, label %.thread

.thread:                                          ; preds = %.preheader, %add_power2_constant.exit, %Py_DECREF.exit47, %Py_DECREF.exit49, %Py_DECREF.exit51, %Py_DECREF.exit53, %bb.l, %Py_DECREF.exit55, %bb.d, %bb.c, %bb.b
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %.not.i = icmp sgt i32 %i.aq, -1
  br i1 %.not.i, label %bb.y, label %Py_DECREF.exit

bb.y:                                             ; preds = %.thread
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !39
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.z, label %Py_DECREF.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.z, %bb.y, %.thread, %Py_DECREF.exit47, %bb.a
  %.034 = phi ptr [ null, %bb.a ], [ %i.a, %Py_DECREF.exit47 ], [ null, %.thread ], [ null, %bb.y ], [ null, %bb.z ]
  ret ptr %.034
}

declare ptr @_PyModule_CreateInitialized(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @PyObject_SetAttrString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @_PyNamespace_New(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @PyMonitoring_EnterScope(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 3 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %i.d = and i64 %i.c, 4294967295
  %i.e = load i64, ptr %1, align 8, !tbaa !169
  %i.f = icmp eq i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 223456   ; 5 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.i = icmp ult i64 %3, 4
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01415.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01415.epil = phi i64 [ %i.p, %.lr.ph.epil ], [ %.01415.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.j = getelementptr i8, ptr %2, i64 %.01415.epil
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr %i.g, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !39
  %i.o = getelementptr [2 x i8], ptr %0, i64 %.01415.epil
  store i8 %i.n, ptr %i.o, align 1, !tbaa !203
  %i.p = add nuw nsw i64 %.01415.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !205

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.b
  %i.q = load atomic i64, ptr %i.b monotonic, align 8
  %i.r = and i64 %i.q, 4294967295
  store i64 %i.r, ptr %1, align 8, !tbaa !169
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01415 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.at, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.s = getelementptr i8, ptr %2, i64 %.01415
  %i.t = load i8, ptr %i.s, align 1, !tbaa !39
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !39
  %i.x = getelementptr [2 x i8], ptr %0, i64 %.01415
  store i8 %i.w, ptr %i.x, align 1, !tbaa !203
  %i.y = or disjoint i64 %.01415, 1               ; 2 uses
  %i.z = getelementptr i8, ptr %2, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !39
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !39
  %i.ae = getelementptr [2 x i8], ptr %0, i64 %i.y
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !203
  %i.af = or disjoint i64 %.01415, 2              ; 2 uses
  %i.ag = getelementptr i8, ptr %2, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !39
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr i8, ptr %i.g, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !39
  %i.al = getelementptr [2 x i8], ptr %0, i64 %i.af
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !203
  %i.am = or disjoint i64 %.01415, 3              ; 2 uses
  %i.an = getelementptr i8, ptr %2, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.g, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !39
  %i.as = getelementptr [2 x i8], ptr %0, i64 %i.am
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !203
  %i.at = add nuw nsw i64 %.01415, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !206

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @PyMonitoring_ExitScope() local_unnamed_addr #8 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyMonitoring_FirePyStartEvent(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 16, i1 false)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.f = load i8, ptr %0, align 1, !tbaa !203     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !55
  %i.h = icmp slt i32 %2, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.55) #12
  br label %capi_call_instrumentation.exit

bb.c:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %2 to i64
  %i.k = tail call ptr @PyLong_FromLong(i64 noundef %i.j) #12 ; 2 uses
  %.not47.i = icmp eq ptr %i.k, null
  br i1 %.not47.i, label %capi_call_instrumentation.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.l, align 16, !tbaa !55
  %.not4852.i = icmp eq i8 %i.f, 0
  br i1 %.not4852.i, label %capi_call_instrumentation.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.d, %Py_DECREF.exit.us.i
  %.03853.us.i = phi i8 [ %i.z, %Py_DECREF.exit.us.i ], [ %i.f, %bb.d ] ; 5 uses
  %i.m = icmp ugt i8 %.03853.us.i, 15
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.i
  %i.n = zext nneg i8 %.03853.us.i to i64
  %i.o = getelementptr i8, ptr @MOST_SIGNIFICANT_BITS, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !39
  %i.q = sext i8 %i.p to i32
  br label %most_significant_bit.exit.us.i

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.r = lshr i8 %.03853.us.i, 4
  %i.s = zext nneg i8 %i.r to i64
  %i.t = getelementptr i8, ptr @MOST_SIGNIFICANT_BITS, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !39
  %i.v = sext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, 4
  br label %most_significant_bit.exit.us.i

most_significant_bit.exit.us.i:                   ; preds = %bb.f, %bb.e
  %.0.i.us.i = phi i32 [ %i.w, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %i.x = shl nuw i32 1, %.0.i.us.i
  %i.y = trunc i32 %i.x to i8                     ; 3 uses
  %i.z = xor i8 %.03853.us.i, %i.y
  %i.aa = trunc i32 %.0.i.us.i to i8
  %i.ab = call fastcc i32 @call_one_instrument(ptr noundef %i.e, ptr noundef %i.c, ptr noundef nonnull %i.g, i64 noundef -9223372036854775806, i8 noundef signext %i.aa, i32 noundef 0) ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %Py_DECREF.exit.us.i, label %bb.g

bb.g:                                             ; preds = %most_significant_bit.exit.us.i
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %capi_call_instrumentation.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load i8, ptr %0, align 1, !tbaa !203
  %i.af = xor i8 %i.y, -1
  %i.ag = and i8 %i.ae, %i.af
  store i8 %i.ag, ptr %0, align 1, !tbaa !203
  br label %Py_DECREF.exit.us.i

Py_DECREF.exit.us.i:                              ; preds = %bb.h, %most_significant_bit.exit.us.i
  %.not48.us.i = icmp eq i8 %.03853.us.i, %i.y
  br i1 %.not48.us.i, label %capi_call_instrumentation.exit, label %.lr.ph.split.us.i

capi_call_instrumentation.exit:                   ; preds = %bb.g, %Py_DECREF.exit.us.i, %bb.b, %bb.c, %bb.d
  %.1.i = phi i32 [ -1, %bb.b ], [ 0, %bb.d ], [ -1, %bb.c ], [ 0, %Py_DECREF.exit.us.i ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @capi_call_instrumentation(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull initializes((8, 16)) %3, i64 noundef range(i64 2, 5) %4, i32 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 3 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !203     ; 4 uses
  %i.f = getelementptr i8, ptr %3, i64 8          ; 3 uses
  store ptr %1, ptr %i.f, align 8, !tbaa !55
  %i.g = icmp slt i32 %2, 0
end_hunk_2
begin_hunk_3_@monitoring_get_local_events:bb.a
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %monitoring_get_local_events_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #12
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %.split12, label %bb.h

.split12:                                         ; preds = %bb.d
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !82
  %.not.i = icmp eq ptr %.val.i, @PyCode_Type
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split12
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !55
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.34) #12 ; 0 uses
  br label %monitoring_get_local_events_impl.exit.thread

bb.f:                                             ; preds = %.split12
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.27, i32 noundef -1) #12 ; 0 uses
  br label %monitoring_get_local_events_impl.exit.thread

monitoring_get_local_events_impl.exit:            ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.o = tail call fastcc i32 @monitoring_get_local_events_impl(i32 noundef %i.c, ptr noundef %i.n) ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %monitoring_get_local_events_impl.exit.thread, label %bb.g

monitoring_get_local_events_impl.exit.thread:     ; preds = %bb.f, %bb.e, %monitoring_get_local_events_impl.exit
  %i.q = tail call ptr @PyErr_Occurred() #12
  %.not15 = icmp eq ptr %i.q, null
  br i1 %.not15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %monitoring_get_local_events_impl.exit.thread, %monitoring_get_local_events_impl.exit
  %phi.call17 = phi i32 [ -1, %monitoring_get_local_events_impl.exit.thread ], [ %i.o, %monitoring_get_local_events_impl.exit ]
  %i.r = sext i32 %phi.call17 to i64
  %i.s = tail call ptr @PyLong_FromLong(i64 noundef %i.r) #12
  br label %bb.h

bb.h:                                             ; preds = %monitoring_get_local_events_impl.exit.thread, %bb.d, %bb.b, %bb.g
  %.0 = phi ptr [ null, %bb.d ], [ null, %monitoring_get_local_events_impl.exit.thread ], [ %i.s, %bb.g ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @monitoring_set_local_events(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %or.cond = icmp eq i64 %2, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.21, i64 noundef %2, i64 noundef 3, i64 noundef 3) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !55
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #12 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #12
  %.not15 = icmp eq ptr %i.e, null
  br i1 %.not15, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = tail call i32 @PyLong_AsInt(ptr noundef %i.i) #12 ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @PyErr_Occurred() #12
  %.not16 = icmp eq ptr %i.l, null
  br i1 %.not16, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.j, %bb.e ], [ -1, %bb.f ]
  %i.m = tail call fastcc ptr @monitoring_set_local_events_impl(i32 noundef %i.c, ptr noundef %i.g, i32 noundef %.sink)
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ], [ %i.m, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @monitoring_restart_events(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #4 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 9 uses
  tail call void @_PyEval_StopTheWorld(ptr noundef %i.d) #12
  %i.e = load atomic i64, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = add i32 %i.f, 512                        ; 2 uses
  %i.h = icmp ult i32 %i.g, 257
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyEval_StartTheWorld(ptr noundef nonnull %i.d) #12
  %i.i = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !55
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str) #12 ; 0 uses
  br label %monitoring_restart_events_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.k = add i64 %i.e, 256
  %i.l = and i64 %i.k, 4294967295
  %i.m = getelementptr i8, ptr %i.d, i64 7320
  store i64 %i.l, ptr %i.m, align 8, !tbaa !189
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !56   ; 3 uses
  %i.o = load atomic i64, ptr %i.n monotonic, align 8 ; 2 uses
  %i.p = zext i32 %i.g to i64                     ; 4 uses
  %i.q = and i64 %i.o, 255
  %i.r = or i64 %i.q, %i.p
  %i.s = cmpxchg ptr %i.n, i64 %i.o, i64 %i.r seq_cst seq_cst, align 8 ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %set_version_raw.exit.i.i, label %_Py_atomic_compare_exchange_uintptr.exit.i.i.i

_Py_atomic_compare_exchange_uintptr.exit.i.i.i:   ; preds = %bb.c, %_Py_atomic_compare_exchange_uintptr.exit.i.i.i
  %i.u = phi { i64, i1 } [ %i.y, %_Py_atomic_compare_exchange_uintptr.exit.i.i.i ], [ %i.s, %bb.c ]
  %i.v = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %i.w = and i64 %i.v, 255
  %i.x = or i64 %i.w, %i.p
  %i.y = cmpxchg ptr %i.n, i64 %i.v, i64 %i.x seq_cst seq_cst, align 8 ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %set_version_raw.exit.i.i, label %_Py_atomic_compare_exchange_uintptr.exit.i.i.i

set_version_raw.exit.i.i:                         ; preds = %_Py_atomic_compare_exchange_uintptr.exit.i.i.i, %bb.c
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
  %i.be = tail call fastcc i32 @force_instrument_lock_held(ptr noundef nonnull %i.ay, ptr noundef nonnull readonly %i.d)
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
define internal ptr @monitoring__all_events(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #4 {
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
  %i.h = sub nsw i32 63, %i.g
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
end_hunk_3
begin_hunk_4_@branchesiter_next:bb.a
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
declare i32 @llvm.vector.reduce.or.v12i32(<12 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

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
!182 = distinct !{!182, !64, !65, !66}
!183 = distinct !{!183, !64, !66, !65}
!184 = distinct !{!184, !64}
!185 = distinct !{!185, !64}
!186 = distinct !{!186, !64}
!187 = distinct !{!187, !188}
!188 = !{!"llvm.loop.unroll.disable"}
!189 = !{!95, !19, i64 7320}
end_hunk_4
