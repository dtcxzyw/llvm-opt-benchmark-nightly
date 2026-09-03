Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_diff_logic?download=true
inline.NumInlined: 8887
inline.NumDeleted: 2262
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZSt16__do_uninit_copyISt13move_iteratorIPN7simplex13sparse_matrixINS1_7mpq_extEE10_row_entryEES6_ET0_T_S9_S8_:bb.a
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %.08, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !99
  %i.f = load i32, ptr %.sroa.04.07, align 4, !tbaa !68
  store i32 %i.f, ptr %.08, align 8, !tbaa !68
  store i32 0, ptr %.sroa.04.07, align 4, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !341
  store ptr %i.h, ptr %i.e, align 8, !tbaa !341
  store ptr null, ptr %i.g, align 8, !tbaa !341
  %i.i = load i8, ptr %i.b, align 4               ; 2 uses
  %i.j = and i8 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 4 ; 5 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 2
  %i.n = and i8 %i.i, -3
  %i.o = or disjoint i8 %i.m, %i.n
  store i8 %i.o, ptr %i.b, align 4
  %i.p = load i8, ptr %i.k, align 4               ; 2 uses
  %i.q = and i8 %i.p, -3
  %i.r = or disjoint i8 %i.q, %i.j
  store i8 %i.r, ptr %i.k, align 4
  %i.s = load i8, ptr %i.b, align 4               ; 2 uses
  %i.t = and i8 %i.s, 1
  %i.u = and i8 %i.p, 1
  %i.v = and i8 %i.s, -2
  %i.w = or disjoint i8 %i.v, %i.u
  store i8 %i.w, ptr %i.b, align 4
  %i.x = load i8, ptr %i.k, align 4
  %i.y = and i8 %i.x, -2
  %i.z = or disjoint i8 %i.y, %i.t
  store i8 %i.z, ptr %i.k, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.08, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 16 ; 2 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !98
  %i.ac = getelementptr inbounds nuw i8, ptr %.08, i64 20 ; 6 uses
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = and i8 %i.ad, -4
  store i8 %i.ae, ptr %i.ac, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.08, i64 24 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !99
  %i.ag = load i32, ptr %i.ab, align 8, !tbaa !68
  store i32 %i.ag, ptr %i.aa, align 8, !tbaa !68
  store i32 0, ptr %i.ab, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !341
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !341
  store ptr null, ptr %i.ah, align 8, !tbaa !341
  %i.aj = load i8, ptr %i.ac, align 4             ; 2 uses
  %i.ak = and i8 %i.aj, 2
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 20 ; 5 uses
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, 2
  %i.ao = and i8 %i.aj, -3
  %i.ap = or disjoint i8 %i.an, %i.ao
  store i8 %i.ap, ptr %i.ac, align 4
  %i.aq = load i8, ptr %i.al, align 4             ; 2 uses
  %i.ar = and i8 %i.aq, -3
  %i.as = or disjoint i8 %i.ar, %i.ak
  store i8 %i.as, ptr %i.al, align 4
  %i.at = load i8, ptr %i.ac, align 4             ; 2 uses
  %i.au = and i8 %i.at, 1
  %i.av = and i8 %i.aq, 1
  %i.aw = and i8 %i.at, -2
  %i.ax = or disjoint i8 %i.aw, %i.av
  store i8 %i.ax, ptr %i.ac, align 4
  %i.ay = load i8, ptr %i.al, align 4
  %i.az = and i8 %i.ay, -2
  %i.ba = or disjoint i8 %i.az, %i.au
  store i8 %i.ba, ptr %i.al, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.08, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !919
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !919
  %i.be = getelementptr inbounds nuw i8, ptr %.08, i64 36
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !85
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !85
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 40 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.08, i64 40 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %1
  br i1 %i.bj, label %._crit_edge, label %.lr.ph, !llvm.loop !2103

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.bi, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator.331", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1275   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 56) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !1275
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !68   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = mul i32 %i.j, 24
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = mul i32 %i.g, 24
  %i.n = add i32 %i.m, 8
  %.not31 = icmp ugt i32 %i.l, %i.n
  br i1 %.not31, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !335
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !377
  %i.r = load ptr, ptr %1, align 8, !tbaa !378    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !379  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !378
  %i.y = load i64, ptr %i.s, align 8, !tbaa !85
  store i64 %i.y, ptr %i.q, align 8, !tbaa !85
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !379
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !379
  store ptr %i.s, ptr %1, align 8, !tbaa !378
  store i64 0, ptr %i.aa, align 8, !tbaa !379
  store i8 0, ptr %i.s, align 8, !tbaa !85
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.o unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !378   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !85
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @__cxa_free_exception(ptr %i.o) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn36 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn36

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ai) ; 7 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !1275  ; 11 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZSt20uninitialized_move_nIPN7simplex13sparse_matrixINS0_7mpq_extEE6columnEjS5_ESt4pairIT_T1_ES7_T0_S8_.exit, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit: ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !68 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.aq = zext i32 %i.an to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.aq, 24         ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i
  %i.as = icmp eq i32 %i.an, 0
  br i1 %i.as, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit
  %3 = add nsw i64 %.idx.i.i.i, -24               ; 2 uses
  %4 = udiv i64 %3, 24
  %5 = and i64 %4, 1
  %lcmp.mod.not.not = icmp eq i64 %5, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %6 = load ptr, ptr %i.ak, align 8, !tbaa !1281
  store ptr %6, ptr %i.ap, align 8, !tbaa !1281
  store ptr null, ptr %i.ak, align 8, !tbaa !1281
  %7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %10, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.04.07.i.i.i.i.i.i.unr = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.preheader ], [ %9, %.lr.ph.i.i.i.i.i.i.prol ]
  %11 = icmp ult i64 %3, 24
  br i1 %11, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %12 = load ptr, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !1281
  store ptr %12, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !1281
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !1281
  %13 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %14, i64 12, i1 false)
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 24 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  %i.at = load ptr, ptr %15, align 8, !tbaa !1281
  store ptr %i.at, ptr %16, align 8, !tbaa !1281
  store ptr null, ptr %15, align 8, !tbaa !1281
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  %i.ay = icmp eq ptr %i.aw, %i.ar
  br i1 %i.ay, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2104

_ZSt20uninitialized_move_nIPN7simplex13sparse_matrixINS0_7mpq_extEE6columnEjS5_ESt4pairIT_T1_ES7_T0_S8_.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.az, align 4, !tbaa !68
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE7destroyEv.exit

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit
  %i.bb = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !68 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.bi, %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i ], [ %i.bc, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.bh, %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i ], [ %i.ak, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i ] ; 2 uses
  %i.bd = load ptr, ptr %.047.i.i.i.i.i, align 8, !tbaa !1281 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.be)
          to label %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #22
  unreachable

_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 24
  %i.bi = add i32 %.08.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !34

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1275
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i
  %i.bj = phi ptr [ %.pre.i, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.ak, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i ]
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bk)
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE7destroyEv.exit

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE7destroyEv.exit: ; preds = %_ZSt20uninitialized_move_nIPN7simplex13sparse_matrixINS0_7mpq_extEE6columnEjS5_ESt4pairIT_T1_ES7_T0_S8_.exit, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.i
  %i.bl = phi ptr [ %i.ba, %_ZSt20uninitialized_move_nIPN7simplex13sparse_matrixINS0_7mpq_extEE6columnEjS5_ESt4pairIT_T1_ES7_T0_S8_.exit ], [ %i.ap, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.i ]
  store ptr %i.bl, ptr %0, align 8, !tbaa !1275
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !68
  br label %bb.n

bb.n:                                             ; preds = %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE7destroyEv.exit, %bb.b
  ret void

bb.o:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator.331", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !913    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !913
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !68   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 4                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.l = shl i32 %i.g, 4
  %.not31 = icmp ugt i32 %i.k, %i.l
  %or.cond = and i1 %.not, %.not31
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.m, align 8, !tbaa !335
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !377
  %i.p = load ptr, ptr %1, align 8, !tbaa !378    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !379  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.p, ptr %i.n, align 8, !tbaa !378
  %i.w = load i64, ptr %i.q, align 8, !tbaa !85
  store i64 %i.w, ptr %i.o, align 8, !tbaa !85
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !379
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi i64 [ %i.t, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.x, ptr %i.z, align 8, !tbaa !379
  store ptr %i.q, ptr %1, align 8, !tbaa !378
  store i64 0, ptr %i.y, align 8, !tbaa !379
  store i8 0, ptr %i.q, align 8, !tbaa !85
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.n unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %1, align 8, !tbaa !378   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.g
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !85
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @__cxa_free_exception(ptr %i.m) #21
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn36 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.af, %bb.h ]
  resume { ptr, i32 } %.pn36

bb.j:                                             ; preds = %bb.c
  %i.ag = or disjoint i32 %i.k, 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ah) ; 5 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !913   ; 8 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZSt20uninitialized_move_nIPN7simplex13sparse_matrixINS0_7mpq_extEE4_rowEjS5_ESt4pairIT_T1_ES7_T0_S8_.exit, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit: ; preds = %bb.j
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !68 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.am, ptr %i.an, align 4, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ap = zext i32 %i.am to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ap, 4          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i
  %i.ar = icmp eq i32 %i.am, 0
  br i1 %i.ar, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit
  %i.as = add nsw i64 %.idx.i.i.i, -16            ; 2 uses
  %i.at = lshr exact i64 %i.as, 4
  %i.au = add nuw nsw i64 %i.at, 1
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.av = load ptr, ptr %.sroa.04.07.i.i.i.i.i.i.prol, align 8, !tbaa !917
  store ptr %i.av, ptr %.08.i.i.i.i.i.i.prol, align 8, !tbaa !917
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i.prol, align 8, !tbaa !917
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.prol, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  store i64 %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 2 uses
end_hunk_0
