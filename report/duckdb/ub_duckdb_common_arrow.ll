Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_arrow?download=true
inline.NumInlined: 6734
inline.NumDeleted: 3043
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN6duckdb9Exception25ConstructMessageRecursiveINS_12PhysicalTypeEJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_RSt6vectorINS_20ExceptionFormatValueESaISC_EERKT_DpOT0_:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !119
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1514
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1514
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit, !prof !122

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataIssNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 1
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !170
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !171
  store i64 %i.d, ptr %i.e, align 8, !tbaa !170
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataIssNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit unwind label %bb.v ; 5 uses

_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !709
  %i.f = shl i64 %i.a, 1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !170
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.h) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = call noalias ptr @malloc(i64 noundef %i.h) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !171
  store i64 %i.h, ptr %i.i, align 8, !tbaa !170
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !709
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !352  ; 13 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp ult i64 %2, %3
  %.pre = load i64, ptr %0, align 8, !tbaa !199   ; 3 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = load ptr, ptr %5, align 8, !tbaa !710
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !711  ; 6 uses
  %.not.i = icmp eq ptr %i.u, null
  %invariant.op = sub i64 %.pre, %2
  %invariant.gep52 = getelementptr [2 x i8], ptr %i.r, i64 %invariant.op ; 12 uses
  br i1 %.not.i, label %iter.check, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.v = sub i64 %3, %2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.041.prol = phi i64 [ %i.ab, %.lr.ph.split.prol ], [ %2, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.041.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !55
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !715
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.041.prol
  store i16 %i.aa, ptr %gep.prol, align 2, !tbaa !715
  %i.ab = add nuw i64 %.041.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !1515

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.041.unr = phi i64 [ %2, %.lr.ph.split.preheader ], [ %i.ab, %.lr.ph.split.prol ]
  %i.ac = sub i64 %2, %3
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.split

iter.check:                                       ; preds = %.lr.ph
  %i.ae = sub i64 %3, %2                          ; 7 uses
  %min.iters.check = icmp ult i64 %i.ae, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.af = shl i64 %.pre, 1
  %6 = add i64 %i.af, %i.s
  %7 = shl i64 %2, 1
  %i.ag = add i64 %7, %i.p
  %i.ah = sub i64 %i.ag, %6
  %diff.check = icmp ugt i64 %i.ah, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check55 = icmp ult i64 %i.ae, 16
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %i.aj = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = add nuw i64 %2, %index                  ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <8 x i16>, ptr %i.al, align 2, !tbaa !715
  %wide.load56 = load <8 x i16>, ptr %i.am, align 2, !tbaa !715
  %i.an = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.ak ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  store <8 x i16> %wide.load, ptr %i.an, align 2, !tbaa !715
  store <8 x i16> %wide.load56, ptr %i.ao, align 2, !tbaa !715
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1516

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !716

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec57 = and i64 %i.ae, -4                    ; 3 uses
  %i.aq = add i64 %2, %n.vec57
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = add nuw i64 %2, %index58                ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ar
  %wide.load59 = load <4 x i16>, ptr %i.as, align 2, !tbaa !715
  %i.at = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.ar
  store <4 x i16> %wide.load59, ptr %i.at, align 2, !tbaa !715
  %index.next60 = add nuw i64 %index58, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next60, %n.vec57
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1517

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n61 = icmp eq i64 %i.ae, %n.vec57
  br i1 %cmp.n61, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.041.us.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.aj, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ] ; 4 uses
  %i.av = sub i64 %3, %.041.us.ph
  %xtraiter64 = and i64 %i.av, 3                  ; 2 uses
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %.041.us.prol = phi i64 [ %i.ay, %.lr.ph.split.us.prol ], [ %.041.us.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter66 = phi i64 [ %prol.iter66.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.041.us.prol
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !715
  %gep53.prol = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.041.us.prol
  store i16 %i.ax, ptr %gep53.prol, align 2, !tbaa !715
  %i.ay = add nuw i64 %.041.us.prol, 1            ; 2 uses
  %prol.iter66.next = add i64 %prol.iter66, 1     ; 2 uses
  %prol.iter66.cmp.not = icmp eq i64 %prol.iter66.next, %xtraiter64
  br i1 %prol.iter66.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1518

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %.041.us.unr = phi i64 [ %.041.us.ph, %.lr.ph.split.us.preheader ], [ %i.ay, %.lr.ph.split.us.prol ]
  %i.az = sub i64 %.041.us.ph, %3
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.041.us = phi i64 [ %i.bm, %.lr.ph.split.us ], [ %.041.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.041.us
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !715
  %gep53 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.041.us
  store i16 %i.bc, ptr %gep53, align 2, !tbaa !715
  %i.bd = add nuw i64 %.041.us, 1                 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !715
  %gep53.1 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.bd
  store i16 %i.bf, ptr %gep53.1, align 2, !tbaa !715
  %i.bg = add nuw i64 %.041.us, 2                 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !715
  %gep53.2 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.bg
  store i16 %i.bi, ptr %gep53.2, align 2, !tbaa !715
  %i.bj = add nuw i64 %.041.us, 3                 ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !715
  %gep53.3 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.bj
  store i16 %i.bl, ptr %gep53.3, align 2, !tbaa !715
  %i.bm = add nuw i64 %.041.us, 4                 ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %i.bm, %3
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1519

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block, %bb.h
  %i.bn = add i64 %.pre, %i.a
  store i64 %i.bn, ptr %0, align 8, !tbaa !199
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bq, align 8, !tbaa !118
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !119
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !121
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #34, !inline_history !19
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !121
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #34, !inline_history !19
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bt, %bb.l ], [ %i.cd, %bb.m ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ce, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !122

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ch, align 8, !tbaa !118
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.cl, align 4, !tbaa !119
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !121
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #34, !inline_history !20
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !121
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #34, !inline_history !20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

end_hunk_0
begin_hunk_1_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv:bb.a
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i8 5, ptr %i.a, align 1, !tbaa !713
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.h = load ptr, ptr %1, align 8, !tbaa !66     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataIiiNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 2
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !170
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !171
  store i64 %i.d, ptr %i.e, align 8, !tbaa !170
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataIiiNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit unwind label %bb.v ; 5 uses

_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !709
  %i.f = shl i64 %i.a, 2
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !170
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.h) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = call noalias ptr @malloc(i64 noundef %i.h) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !171
  store i64 %i.h, ptr %i.i, align 8, !tbaa !170
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !709
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !352  ; 12 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp ult i64 %2, %3
  %.pre = load i64, ptr %0, align 8, !tbaa !199   ; 3 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = load ptr, ptr %5, align 8, !tbaa !710
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !711  ; 6 uses
  %.not.i = icmp eq ptr %i.u, null
  %invariant.op = sub i64 %.pre, %2
  %invariant.gep52 = getelementptr [4 x i8], ptr %i.r, i64 %invariant.op ; 11 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.v = sub i64 %3, %2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.041.prol = phi i64 [ %i.ab, %.lr.ph.split.prol ], [ %2, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.041.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !55
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !55
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.041.prol
  store i32 %i.aa, ptr %gep.prol, align 4, !tbaa !55
  %i.ab = add nuw i64 %.041.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !1521

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.041.unr = phi i64 [ %2, %.lr.ph.split.preheader ], [ %i.ab, %.lr.ph.split.prol ]
  %i.ac = sub i64 %2, %3
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ae = sub i64 %3, %2                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 20
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.af = shl i64 %.pre, 2
  %6 = add i64 %i.af, %i.s
  %7 = shl i64 %2, 2
  %i.ag = add i64 %7, %i.p
  %i.ah = sub i64 %i.ag, %6
  %diff.check = icmp ugt i64 %i.ah, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.ai = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add nuw i64 %2, %index                  ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !tbaa !55
  %wide.load55 = load <4 x i32>, ptr %i.al, align 4, !tbaa !55
  %i.am = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.aj ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  store <4 x i32> %wide.load, ptr %i.am, align 4, !tbaa !55
  store <4 x i32> %wide.load55, ptr %i.an, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1522

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader56

.lr.ph.split.us.preheader56:                      ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block
  %.041.us.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.split.us.preheader ], [ %i.ai, %middle.block ] ; 4 uses
  %i.ap = sub i64 %3, %.041.us.ph
  %xtraiter58 = and i64 %i.ap, 3                  ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader56, %.lr.ph.split.us.prol
  %.041.us.prol = phi i64 [ %i.as, %.lr.ph.split.us.prol ], [ %.041.us.ph, %.lr.ph.split.us.preheader56 ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader56 ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.041.us.prol
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !55
  %gep53.prol = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.041.us.prol
  store i32 %i.ar, ptr %gep53.prol, align 4, !tbaa !55
  %i.as = add nuw i64 %.041.us.prol, 1            ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1523

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader56
  %.041.us.unr = phi i64 [ %.041.us.ph, %.lr.ph.split.us.preheader56 ], [ %i.as, %.lr.ph.split.us.prol ]
  %i.at = sub i64 %.041.us.ph, %3
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.041.us = phi i64 [ %i.bg, %.lr.ph.split.us ], [ %.041.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.041.us
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !55
  %gep53 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.041.us
  store i32 %i.aw, ptr %gep53, align 4, !tbaa !55
  %i.ax = add nuw i64 %.041.us, 1                 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !55
  %gep53.1 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.ax
  store i32 %i.az, ptr %gep53.1, align 4, !tbaa !55
  %i.ba = add nuw i64 %.041.us, 2                 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !55
  %gep53.2 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.ba
  store i32 %i.bc, ptr %gep53.2, align 4, !tbaa !55
  %i.bd = add nuw i64 %.041.us, 3                 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !55
  %gep53.3 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.bd
  store i32 %i.bf, ptr %gep53.3, align 4, !tbaa !55
  %i.bg = add nuw i64 %.041.us, 4                 ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %i.bg, %3
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1524

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %bb.h
  %i.bh = add i64 %.pre, %i.a
  store i64 %i.bh, ptr %0, align 8, !tbaa !199
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bk, align 8, !tbaa !118
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !119
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !121
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #34, !inline_history !19
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !121
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #34, !inline_history !19
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.l ], [ %i.bx, %bb.m ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !122

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.cb, align 8, !tbaa !118
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !119
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !121
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #34, !inline_history !20
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !121
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #34, !inline_history !20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ce, %bb.r ], [ %i.co, %bb.s ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cp, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !122

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #34
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.u:                                             ; preds = %bb.b, %bb.a
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit, %bb.c
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.g
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.041 = phi i64 [ %i.dq, %.lr.ph.split ], [ %.041.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
end_hunk_1
begin_hunk_2_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv:bb.a
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i8 2, ptr %i.a, align 1, !tbaa !713
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.i = load ptr, ptr %1, align 8, !tbaa !66     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataIttNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 1
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !170
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !171
  store i64 %i.d, ptr %i.e, align 8, !tbaa !170
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataIttNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit unwind label %bb.v ; 5 uses

_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !709
  %i.f = shl i64 %i.a, 1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !170
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.h) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = call noalias ptr @malloc(i64 noundef %i.h) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !171
  store i64 %i.h, ptr %i.i, align 8, !tbaa !170
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !709
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !352  ; 13 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp ult i64 %2, %3
  %.pre = load i64, ptr %0, align 8, !tbaa !199   ; 3 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = load ptr, ptr %5, align 8, !tbaa !710
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !711  ; 6 uses
  %.not.i = icmp eq ptr %i.u, null
  %invariant.op = sub i64 %.pre, %2
  %invariant.gep52 = getelementptr [2 x i8], ptr %i.r, i64 %invariant.op ; 12 uses
  br i1 %.not.i, label %iter.check, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.v = sub i64 %3, %2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.041.prol = phi i64 [ %i.ab, %.lr.ph.split.prol ], [ %2, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.041.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !55
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !715
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.041.prol
  store i16 %i.aa, ptr %gep.prol, align 2, !tbaa !715
  %i.ab = add nuw i64 %.041.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !1547

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.041.unr = phi i64 [ %2, %.lr.ph.split.preheader ], [ %i.ab, %.lr.ph.split.prol ]
  %i.ac = sub i64 %2, %3
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.split

iter.check:                                       ; preds = %.lr.ph
  %i.ae = sub i64 %3, %2                          ; 7 uses
  %min.iters.check = icmp ult i64 %i.ae, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.af = shl i64 %.pre, 1
  %6 = add i64 %i.af, %i.s
  %7 = shl i64 %2, 1
  %i.ag = add i64 %7, %i.p
  %i.ah = sub i64 %i.ag, %6
  %diff.check = icmp ugt i64 %i.ah, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check55 = icmp ult i64 %i.ae, 16
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %i.aj = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = add nuw i64 %2, %index                  ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <8 x i16>, ptr %i.al, align 2, !tbaa !715
  %wide.load56 = load <8 x i16>, ptr %i.am, align 2, !tbaa !715
  %i.an = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.ak ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  store <8 x i16> %wide.load, ptr %i.an, align 2, !tbaa !715
  store <8 x i16> %wide.load56, ptr %i.ao, align 2, !tbaa !715
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1548

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !716

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec57 = and i64 %i.ae, -4                    ; 3 uses
  %i.aq = add i64 %2, %n.vec57
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = add nuw i64 %2, %index58                ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ar
  %wide.load59 = load <4 x i16>, ptr %i.as, align 2, !tbaa !715
  %i.at = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.ar
  store <4 x i16> %wide.load59, ptr %i.at, align 2, !tbaa !715
  %index.next60 = add nuw i64 %index58, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next60, %n.vec57
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1549

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n61 = icmp eq i64 %i.ae, %n.vec57
  br i1 %cmp.n61, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.041.us.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.aj, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ] ; 4 uses
  %i.av = sub i64 %3, %.041.us.ph
  %xtraiter64 = and i64 %i.av, 3                  ; 2 uses
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %.041.us.prol = phi i64 [ %i.ay, %.lr.ph.split.us.prol ], [ %.041.us.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter66 = phi i64 [ %prol.iter66.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.041.us.prol
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !715
  %gep53.prol = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.041.us.prol
  store i16 %i.ax, ptr %gep53.prol, align 2, !tbaa !715
  %i.ay = add nuw i64 %.041.us.prol, 1            ; 2 uses
  %prol.iter66.next = add i64 %prol.iter66, 1     ; 2 uses
  %prol.iter66.cmp.not = icmp eq i64 %prol.iter66.next, %xtraiter64
  br i1 %prol.iter66.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1550

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %.041.us.unr = phi i64 [ %.041.us.ph, %.lr.ph.split.us.preheader ], [ %i.ay, %.lr.ph.split.us.prol ]
  %i.az = sub i64 %.041.us.ph, %3
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.041.us = phi i64 [ %i.bm, %.lr.ph.split.us ], [ %.041.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.041.us
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !715
  %gep53 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.041.us
  store i16 %i.bc, ptr %gep53, align 2, !tbaa !715
  %i.bd = add nuw i64 %.041.us, 1                 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !715
  %gep53.1 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.bd
  store i16 %i.bf, ptr %gep53.1, align 2, !tbaa !715
  %i.bg = add nuw i64 %.041.us, 2                 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !715
  %gep53.2 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.bg
  store i16 %i.bi, ptr %gep53.2, align 2, !tbaa !715
  %i.bj = add nuw i64 %.041.us, 3                 ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !715
  %gep53.3 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.bj
  store i16 %i.bl, ptr %gep53.3, align 2, !tbaa !715
  %i.bm = add nuw i64 %.041.us, 4                 ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %i.bm, %3
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1551

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block, %bb.h
  %i.bn = add i64 %.pre, %i.a
  store i64 %i.bn, ptr %0, align 8, !tbaa !199
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bq, align 8, !tbaa !118
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !119
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !121
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #34, !inline_history !19
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !121
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #34, !inline_history !19
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bt, %bb.l ], [ %i.cd, %bb.m ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ce, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !122

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ch, align 8, !tbaa !118
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.cl, align 4, !tbaa !119
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !121
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #34, !inline_history !20
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !121
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #34, !inline_history !20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

end_hunk_2
begin_hunk_3_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv:bb.a
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i8 4, ptr %i.a, align 1, !tbaa !713
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.h = load ptr, ptr %1, align 8, !tbaa !66     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataIjjNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 2
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !170
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !171
  store i64 %i.d, ptr %i.e, align 8, !tbaa !170
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataIjjNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit unwind label %bb.v ; 5 uses

_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !709
  %i.f = shl i64 %i.a, 2
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !170
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.h) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = call noalias ptr @malloc(i64 noundef %i.h) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !171
  store i64 %i.h, ptr %i.i, align 8, !tbaa !170
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !709
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !352  ; 12 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp ult i64 %2, %3
  %.pre = load i64, ptr %0, align 8, !tbaa !199   ; 3 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = load ptr, ptr %5, align 8, !tbaa !710
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !711  ; 6 uses
  %.not.i = icmp eq ptr %i.u, null
  %invariant.op = sub i64 %.pre, %2
  %invariant.gep52 = getelementptr [4 x i8], ptr %i.r, i64 %invariant.op ; 11 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.v = sub i64 %3, %2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.041.prol = phi i64 [ %i.ab, %.lr.ph.split.prol ], [ %2, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.041.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !55
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !55
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.041.prol
  store i32 %i.aa, ptr %gep.prol, align 4, !tbaa !55
  %i.ab = add nuw i64 %.041.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !1553

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.041.unr = phi i64 [ %2, %.lr.ph.split.preheader ], [ %i.ab, %.lr.ph.split.prol ]
  %i.ac = sub i64 %2, %3
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ae = sub i64 %3, %2                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 20
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.af = shl i64 %.pre, 2
  %6 = add i64 %i.af, %i.s
  %7 = shl i64 %2, 2
  %i.ag = add i64 %7, %i.p
  %i.ah = sub i64 %i.ag, %6
  %diff.check = icmp ugt i64 %i.ah, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.ai = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add nuw i64 %2, %index                  ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !tbaa !55
  %wide.load55 = load <4 x i32>, ptr %i.al, align 4, !tbaa !55
  %i.am = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.aj ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  store <4 x i32> %wide.load, ptr %i.am, align 4, !tbaa !55
  store <4 x i32> %wide.load55, ptr %i.an, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1554

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader56

.lr.ph.split.us.preheader56:                      ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block
  %.041.us.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.split.us.preheader ], [ %i.ai, %middle.block ] ; 4 uses
  %i.ap = sub i64 %3, %.041.us.ph
  %xtraiter58 = and i64 %i.ap, 3                  ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader56, %.lr.ph.split.us.prol
  %.041.us.prol = phi i64 [ %i.as, %.lr.ph.split.us.prol ], [ %.041.us.ph, %.lr.ph.split.us.preheader56 ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader56 ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.041.us.prol
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !55
  %gep53.prol = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.041.us.prol
  store i32 %i.ar, ptr %gep53.prol, align 4, !tbaa !55
  %i.as = add nuw i64 %.041.us.prol, 1            ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1555

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader56
  %.041.us.unr = phi i64 [ %.041.us.ph, %.lr.ph.split.us.preheader56 ], [ %i.as, %.lr.ph.split.us.prol ]
  %i.at = sub i64 %.041.us.ph, %3
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.041.us = phi i64 [ %i.bg, %.lr.ph.split.us ], [ %.041.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.041.us
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !55
  %gep53 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.041.us
  store i32 %i.aw, ptr %gep53, align 4, !tbaa !55
  %i.ax = add nuw i64 %.041.us, 1                 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !55
  %gep53.1 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.ax
  store i32 %i.az, ptr %gep53.1, align 4, !tbaa !55
  %i.ba = add nuw i64 %.041.us, 2                 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !55
  %gep53.2 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.ba
  store i32 %i.bc, ptr %gep53.2, align 4, !tbaa !55
  %i.bd = add nuw i64 %.041.us, 3                 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !55
  %gep53.3 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.bd
  store i32 %i.bf, ptr %gep53.3, align 4, !tbaa !55
  %i.bg = add nuw i64 %.041.us, 4                 ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %i.bg, %3
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1556

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %bb.h
  %i.bh = add i64 %.pre, %i.a
  store i64 %i.bh, ptr %0, align 8, !tbaa !199
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bk, align 8, !tbaa !118
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !119
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !121
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #34, !inline_history !19
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !121
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #34, !inline_history !19
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.l ], [ %i.bx, %bb.m ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !122

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.cb, align 8, !tbaa !118
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !119
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !121
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #34, !inline_history !20
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !121
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #34, !inline_history !20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ce, %bb.r ], [ %i.co, %bb.s ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cp, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !122

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #34
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.u:                                             ; preds = %bb.b, %bb.a
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit, %bb.c
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.g
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.041 = phi i64 [ %i.dq, %.lr.ph.split ], [ %.041.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
end_hunk_3
begin_hunk_4_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv:bb.a
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i8 8, ptr %i.a, align 1, !tbaa !713
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.h = load ptr, ptr %1, align 8, !tbaa !66     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataIffNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 2
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !170
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !171
  store i64 %i.d, ptr %i.e, align 8, !tbaa !170
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataIffNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit unwind label %bb.v ; 5 uses

_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !709
  %i.f = shl i64 %i.a, 2
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !170
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.h) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = call noalias ptr @malloc(i64 noundef %i.h) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !171
  store i64 %i.h, ptr %i.i, align 8, !tbaa !170
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !709
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !352  ; 12 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp ult i64 %2, %3
  %.pre = load i64, ptr %0, align 8, !tbaa !199   ; 3 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = load ptr, ptr %5, align 8, !tbaa !710
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !711  ; 6 uses
  %.not.i = icmp eq ptr %i.u, null
  %invariant.op = sub i64 %.pre, %2
  %invariant.gep52 = getelementptr [4 x i8], ptr %i.r, i64 %invariant.op ; 11 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.v = sub i64 %3, %2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.041.prol = phi i64 [ %i.ab, %.lr.ph.split.prol ], [ %2, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.041.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !55
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !219
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.041.prol
  store float %i.aa, ptr %gep.prol, align 4, !tbaa !219
  %i.ab = add nuw i64 %.041.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !1560

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.041.unr = phi i64 [ %2, %.lr.ph.split.preheader ], [ %i.ab, %.lr.ph.split.prol ]
  %i.ac = sub i64 %2, %3
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ae = sub i64 %3, %2                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 20
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.af = shl i64 %.pre, 2
  %6 = add i64 %i.af, %i.s
  %7 = shl i64 %2, 2
  %i.ag = add i64 %7, %i.p
  %i.ah = sub i64 %i.ag, %6
  %diff.check = icmp ugt i64 %i.ah, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.ai = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add nuw i64 %2, %index                  ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <4 x float>, ptr %i.ak, align 4, !tbaa !219
  %wide.load55 = load <4 x float>, ptr %i.al, align 4, !tbaa !219
  %i.am = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.aj ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  store <4 x float> %wide.load, ptr %i.am, align 4, !tbaa !219
  store <4 x float> %wide.load55, ptr %i.an, align 4, !tbaa !219
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1561

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader56

.lr.ph.split.us.preheader56:                      ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block
  %.041.us.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.split.us.preheader ], [ %i.ai, %middle.block ] ; 4 uses
  %i.ap = sub i64 %3, %.041.us.ph
  %xtraiter58 = and i64 %i.ap, 3                  ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader56, %.lr.ph.split.us.prol
  %.041.us.prol = phi i64 [ %i.as, %.lr.ph.split.us.prol ], [ %.041.us.ph, %.lr.ph.split.us.preheader56 ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader56 ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.041.us.prol
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !219
  %gep53.prol = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.041.us.prol
  store float %i.ar, ptr %gep53.prol, align 4, !tbaa !219
  %i.as = add nuw i64 %.041.us.prol, 1            ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1562

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader56
  %.041.us.unr = phi i64 [ %.041.us.ph, %.lr.ph.split.us.preheader56 ], [ %i.as, %.lr.ph.split.us.prol ]
  %i.at = sub i64 %.041.us.ph, %3
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.041.us = phi i64 [ %i.bg, %.lr.ph.split.us ], [ %.041.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.041.us
  %i.aw = load float, ptr %i.av, align 4, !tbaa !219
  %gep53 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.041.us
  store float %i.aw, ptr %gep53, align 4, !tbaa !219
  %i.ax = add nuw i64 %.041.us, 1                 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ax
  %i.az = load float, ptr %i.ay, align 4, !tbaa !219
  %gep53.1 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.ax
  store float %i.az, ptr %gep53.1, align 4, !tbaa !219
  %i.ba = add nuw i64 %.041.us, 2                 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !219
  %gep53.2 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.ba
  store float %i.bc, ptr %gep53.2, align 4, !tbaa !219
  %i.bd = add nuw i64 %.041.us, 3                 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !219
  %gep53.3 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.bd
  store float %i.bf, ptr %gep53.3, align 4, !tbaa !219
  %i.bg = add nuw i64 %.041.us, 4                 ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %i.bg, %3
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1563

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %bb.h
  %i.bh = add i64 %.pre, %i.a
  store i64 %i.bh, ptr %0, align 8, !tbaa !199
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bk, align 8, !tbaa !118
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !119
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !121
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #34, !inline_history !19
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !121
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #34, !inline_history !19
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.l ], [ %i.bx, %bb.m ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !122

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.cb, align 8, !tbaa !118
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !119
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !121
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #34, !inline_history !20
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !121
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #34, !inline_history !20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ce, %bb.r ], [ %i.co, %bb.s ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cp, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !122

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #34
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.u:                                             ; preds = %bb.b, %bb.a
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit, %bb.c
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.g
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.041 = phi i64 [ %i.dq, %.lr.ph.split ], [ %.041.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
end_hunk_4
begin_hunk_5_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv:bb.a
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i8 11, ptr %i.a, align 1, !tbaa !713
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.h = load ptr, ptr %1, align 8, !tbaa !66     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataIddNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 3
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !170
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !171
  store i64 %i.d, ptr %i.e, align 8, !tbaa !170
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataIddNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit unwind label %bb.v ; 5 uses

_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !709
  %i.f = shl i64 %i.a, 3
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !170
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.h) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = call noalias ptr @malloc(i64 noundef %i.h) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !171
  store i64 %i.h, ptr %i.i, align 8, !tbaa !170
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !709
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !352  ; 12 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp ult i64 %2, %3
  %.pre = load i64, ptr %0, align 8, !tbaa !199   ; 3 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = load ptr, ptr %5, align 8, !tbaa !710
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !711  ; 6 uses
  %.not.i = icmp eq ptr %i.u, null
  %invariant.op = sub i64 %.pre, %2
  %invariant.gep52 = getelementptr [8 x i8], ptr %i.r, i64 %invariant.op ; 11 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.v = sub i64 %3, %2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.041.prol = phi i64 [ %i.ab, %.lr.ph.split.prol ], [ %2, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.041.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !55
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !705
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep52, i64 %.041.prol
  store double %i.aa, ptr %gep.prol, align 8, !tbaa !705
  %i.ab = add nuw i64 %.041.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !1565

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.041.unr = phi i64 [ %2, %.lr.ph.split.preheader ], [ %i.ab, %.lr.ph.split.prol ]
  %i.ac = sub i64 %2, %3
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ae = sub i64 %3, %2                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 18
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.af = shl i64 %.pre, 3
  %6 = add i64 %i.af, %i.s
  %7 = shl i64 %2, 3
  %i.ag = add i64 %7, %i.p
  %i.ah = sub i64 %i.ag, %6
  %diff.check = icmp ugt i64 %i.ah, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, -4                      ; 3 uses
  %i.ai = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add nuw i64 %2, %index                  ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <2 x double>, ptr %i.ak, align 8, !tbaa !705
  %wide.load55 = load <2 x double>, ptr %i.al, align 8, !tbaa !705
  %i.am = getelementptr [8 x i8], ptr %invariant.gep52, i64 %i.aj ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  store <2 x double> %wide.load, ptr %i.am, align 8, !tbaa !705
  store <2 x double> %wide.load55, ptr %i.an, align 8, !tbaa !705
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1566

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader56

.lr.ph.split.us.preheader56:                      ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block
  %.041.us.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.split.us.preheader ], [ %i.ai, %middle.block ] ; 4 uses
  %i.ap = sub i64 %3, %.041.us.ph
  %xtraiter58 = and i64 %i.ap, 3                  ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader56, %.lr.ph.split.us.prol
  %.041.us.prol = phi i64 [ %i.as, %.lr.ph.split.us.prol ], [ %.041.us.ph, %.lr.ph.split.us.preheader56 ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader56 ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.041.us.prol
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !705
  %gep53.prol = getelementptr [8 x i8], ptr %invariant.gep52, i64 %.041.us.prol
  store double %i.ar, ptr %gep53.prol, align 8, !tbaa !705
  %i.as = add nuw i64 %.041.us.prol, 1            ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1567

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader56
  %.041.us.unr = phi i64 [ %.041.us.ph, %.lr.ph.split.us.preheader56 ], [ %i.as, %.lr.ph.split.us.prol ]
  %i.at = sub i64 %.041.us.ph, %3
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.041.us = phi i64 [ %i.bg, %.lr.ph.split.us ], [ %.041.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.041.us
  %i.aw = load double, ptr %i.av, align 8, !tbaa !705
  %gep53 = getelementptr [8 x i8], ptr %invariant.gep52, i64 %.041.us
  store double %i.aw, ptr %gep53, align 8, !tbaa !705
  %i.ax = add nuw i64 %.041.us, 1                 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !705
  %gep53.1 = getelementptr [8 x i8], ptr %invariant.gep52, i64 %i.ax
  store double %i.az, ptr %gep53.1, align 8, !tbaa !705
  %i.ba = add nuw i64 %.041.us, 2                 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !705
  %gep53.2 = getelementptr [8 x i8], ptr %invariant.gep52, i64 %i.ba
  store double %i.bc, ptr %gep53.2, align 8, !tbaa !705
  %i.bd = add nuw i64 %.041.us, 3                 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !705
  %gep53.3 = getelementptr [8 x i8], ptr %invariant.gep52, i64 %i.bd
  store double %i.bf, ptr %gep53.3, align 8, !tbaa !705
  %i.bg = add nuw i64 %.041.us, 4                 ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %i.bg, %3
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1568

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %bb.h
  %i.bh = add i64 %.pre, %i.a
  store i64 %i.bh, ptr %0, align 8, !tbaa !199
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bk, align 8, !tbaa !118
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !119
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !121
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #34, !inline_history !19
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !121
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #34, !inline_history !19
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.l ], [ %i.bx, %bb.m ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !122

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.cb, align 8, !tbaa !118
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !119
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !121
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #34, !inline_history !20
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !121
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #34, !inline_history !20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ce, %bb.r ], [ %i.co, %bb.s ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cp, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !122

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #34
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.u:                                             ; preds = %bb.b, %bb.a
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit, %bb.c
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.g
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.041 = phi i64 [ %i.dq, %.lr.ph.split ], [ %.041.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
end_hunk_5
