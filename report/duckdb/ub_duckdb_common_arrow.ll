inline.NumInlined: 6734
inline.NumDeleted: 3043
begin_hunk_0_@_ZN6duckdb13ArrowEnumDataIjE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.08.i.i.prol
  store i8 -1, ptr %i.t, align 1, !tbaa !20
  %i.u = add nuw i64 %.08.i.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1652

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.08.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %i.v = sub i64 %i.p, %i.h
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %_ZN6duckdb15ArrowAppendData14ResizeValidityERNS_11ArrowBufferEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !153
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.08.i.i
  store i8 -1, ptr %i.y, align 1, !tbaa !20
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !153
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.08.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 -1, ptr %i.ab, align 1, !tbaa !20
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !153
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.08.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i8 -1, ptr %i.ae, align 1, !tbaa !20
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !153
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.08.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  store i8 -1, ptr %i.ah, align 1, !tbaa !20
  %i.ai = add nuw i64 %.08.i.i, 4                 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ai, %i.h
  br i1 %exitcond.not.i.i.3, label %_ZN6duckdb15ArrowAppendData14ResizeValidityERNS_11ArrowBufferEm.exit, label %.lr.ph.i.i, !llvm.loop !1531

_ZN6duckdb15ArrowAppendData14ResizeValidityERNS_11ArrowBufferEm.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN6duckdb11ArrowBuffer7reserveEm.exit.i.i
  store i64 %i.h, ptr %i.o, align 8, !tbaa !1501
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1501
  %i.al = shl i64 %2, 2
  %i.am = add i64 %i.al, 4
  %i.an = add i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.an) ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !151
  %.not.i.i = icmp ugt i64 %i.ao, %i.aq
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb11ArrowBuffer6resizeEm.exit

bb.e:                                             ; preds = %_ZN6duckdb15ArrowAppendData14ResizeValidityERNS_11ArrowBufferEm.exit
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !153 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = tail call ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef %i.ao) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.ao) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.g, %bb.f
  %storemerge.i.i.i = phi ptr [ %i.at, %bb.g ], [ %i.as, %bb.f ]
  store ptr %storemerge.i.i.i, ptr %i.b, align 8, !tbaa !153
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer6resizeEm.exit

_ZN6duckdb11ArrowBuffer6resizeEm.exit:            ; preds = %_ZN6duckdb15ArrowAppendData14ResizeValidityERNS_11ArrowBufferEm.exit, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !1501
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !731
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !153 ; 3 uses
  %i.ax = load i64, ptr %0, align 8, !tbaa !195   ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb11ArrowBuffer6resizeEm.exit
  store i32 0, ptr %i.aw, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6duckdb11ArrowBuffer6resizeEm.exit
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZN6duckdb11ArrowBuffer6resizeEm.exit43
  %.pre46 = load i64, ptr %0, align 8, !tbaa !195
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.bf = phi i64 [ %.pre46, %._crit_edge.loopexit ], [ %i.ax, %bb.i ]
  %i.bg = add i64 %i.bf, %2
  store i64 %i.bg, ptr %0, align 8, !tbaa !195
  ret void

bb.j:                                             ; preds = %.lr.ph, %_ZN6duckdb11ArrowBuffer6resizeEm.exit43
  %.045 = phi i32 [ %i.ba, %.lr.ph ], [ %i.bm, %_ZN6duckdb11ArrowBuffer6resizeEm.exit43 ]
  %.03644 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %_ZN6duckdb11ArrowBuffer6resizeEm.exit43 ] ; 3 uses
  %i.bh = load i64, ptr %0, align 8, !tbaa !195
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.03644 ; 3 uses
  %.sroa.03.0.copyload = load i64, ptr %i.bi, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bj = and i64 %.sroa.03.0.copyload, 4294967295
  %i.bk = sext i32 %.045 to i64                   ; 2 uses
  %i.bl = add nsw i64 %i.bj, %i.bk                ; 3 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = getelementptr [4 x i8], ptr %i.aw, i64 %i.bh
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %.03644
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  store i32 %i.bm, ptr %i.bp, align 4, !tbaa !3
  %i.bq = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.bl) ; 4 uses
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !151
  %.not.i.i39 = icmp ugt i64 %i.bq, %i.br
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !153 ; 3 uses
  br i1 %.not.i.i39, label %bb.k, label %_ZN6duckdb11ArrowBuffer6resizeEm.exit43

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i40 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = tail call ptr @realloc(ptr noundef nonnull %.pre, i64 noundef %i.bq) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i41

bb.m:                                             ; preds = %bb.k
  %i.bt = tail call noalias ptr @malloc(i64 noundef %i.bq) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i41

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i41: ; preds = %bb.m, %bb.l
  %storemerge.i.i.i42 = phi ptr [ %i.bt, %bb.m ], [ %i.bs, %bb.l ] ; 2 uses
  store ptr %storemerge.i.i.i42, ptr %i.c, align 8, !tbaa !153
  store i64 %i.bq, ptr %i.bb, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer6resizeEm.exit43

_ZN6duckdb11ArrowBuffer6resizeEm.exit43:          ; preds = %bb.j, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i41
  %i.bu = phi ptr [ %.pre, %bb.j ], [ %storemerge.i.i.i42, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i41 ]
  store i64 %i.bl, ptr %i.bc, align 8, !tbaa !1501
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bk
  %.sroa.0.0.copyload = load i64, ptr %i.bi, align 8 ; 3 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.copyload, ptr %3, align 8
  store ptr %.sroa.2.0.copyload, ptr %i.bd, align 8
  %i.bw = trunc i64 %.sroa.0.0.copyload to i32
  %i.bx = icmp ult i32 %i.bw, 13
  %i.by = select i1 %i.bx, ptr %i.be, ptr %.sroa.2.0.copyload
  %i.bz = and i64 %.sroa.0.0.copyload, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.by, i64 %i.bz, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ca = add nuw i64 %.03644, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !1653
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataINS_13ArrowIntervalENS_10interval_tENS_22ArrowIntervalConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 4
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !151
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !153  ; 2 uses
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
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !153
  store i64 %i.d, ptr %i.e, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataINS_13ArrowIntervalENS_10interval_tENS_22ArrowIntervalConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1501
  %i.f = shl i64 %i.a, 4
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !151
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !153  ; 2 uses
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
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !153
  store i64 %i.h, ptr %i.i, align 8, !tbaa !151
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !1501
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10interval_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !753
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !153
  %i.q = icmp ult i64 %2, %3
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.x

._crit_edge:                                      ; preds = %bb.aa, %bb.h
  %i.s = load i64, ptr %0, align 8, !tbaa !195
  %i.t = add i64 %i.s, %i.a
  store i64 %i.t, ptr %0, align 8, !tbaa !195
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.w, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !77
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #34, !inline_history !762
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #34, !inline_history !762
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !81

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.an, align 8, !tbaa !75
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !77
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #34, !inline_history !763
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #34, !inline_history !763
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.aq, %bb.r ], [ %i.ba, %bb.s ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.bb, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !81

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #34
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.u:                                             ; preds = %bb.b, %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.v:                                             ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit, %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.x:                                             ; preds = %.lr.ph, %bb.aa
  %.03543 = phi i64 [ %2, %.lr.ph ], [ %i.bx, %bb.aa ] ; 4 uses
  %6 = load ptr, ptr %5, align 8, !tbaa !1502
  %i.bf = load ptr, ptr %6, align 8, !tbaa !1503  ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.03543
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = zext i32 %i.bh to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bj = phi i64 [ %i.bi, %bb.y ], [ %.03543, %bb.x ] ; 3 uses
  %i.bk = load i64, ptr %0, align 8, !tbaa !195
  %i.bl = sub nuw i64 %.03543, %2
  %i.bm = load ptr, ptr %i.r, align 8, !tbaa !750 ; 2 uses
  %.not.i41 = icmp eq ptr %i.bm, null
  br i1 %.not.i41, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.z
  %i.bn = lshr i64 %i.bj, 6
  %i.bo = and i64 %i.bj, 63
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !19
  %i.br = shl nuw i64 1, %i.bo
  %i.bs = and i64 %i.bq, %i.br
  %.not = icmp eq i64 %i.bs, 0
  br i1 %.not, label %bb.aa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %bb.z, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bj ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bt, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  %i.bu = mul nsw i64 %.sroa.2.0.copyload, 1000
  %i.bv = getelementptr [16 x i8], ptr %i.p, i64 %i.bl
  %i.bw = getelementptr [16 x i8], ptr %i.bv, i64 %i.bk ; 2 uses
  store i64 %.sroa.0.0.copyload, ptr %i.bw, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.bu, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bx = add nuw i64 %.03543, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !1654

bb.ab:                                            ; preds = %bb.v, %bb.w, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.u ], [ %i.bd, %bb.v ], [ %i.be, %bb.w ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataINS_13ArrowIntervalENS_10interval_tENS_22ArrowIntervalConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2, ptr %i.a, align 8, !tbaa !200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10interval_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1506
  %i.d = icmp eq i8 %i.c, 21
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.81, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i8 21, ptr %i.a, align 1, !tbaa !1507
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
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
  %i.h = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #36
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

declare void @_ZN6duckdb14ArrowUnionData10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #3

declare void @_ZN6duckdb14ArrowUnionData6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef, i64 noundef) #3

declare void @_ZN6duckdb14ArrowUnionData8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) #3

declare void @_ZN6duckdb15ArrowStructData10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #3

declare void @_ZN6duckdb15ArrowStructData6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef, i64 noundef) #3

declare void @_ZN6duckdb15ArrowStructData8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) #3

declare void @_ZN6duckdb22ArrowFixedSizeListData10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #3

declare void @_ZN6duckdb22ArrowFixedSizeListData6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef, i64 noundef) #3

declare void @_ZN6duckdb22ArrowFixedSizeListData8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17ArrowListViewDataIlE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1) ; 3 uses
  %i.d = shl i64 %2, 3                            ; 2 uses
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !151
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !153  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.e) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.e) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.c, align 8, !tbaa !153
  store i64 %i.e, ptr %i.f, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 2) ; 3 uses
  %i.l = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !151
  %.not.i12 = icmp ugt i64 %i.l, %i.n
  br i1 %.not.i12, label %bb.e, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit16

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !153  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.o, null
  br i1 %.not.i.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.o, i64 noundef %i.l) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14

bb.g:                                             ; preds = %bb.e
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.l) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14: ; preds = %bb.g, %bb.f
  %storemerge.i.i15 = phi ptr [ %i.q, %bb.g ], [ %i.p, %bb.f ]
  store ptr %storemerge.i.i15, ptr %i.k, align 8, !tbaa !153
  store i64 %i.l, ptr %i.m, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit16

_ZN6duckdb11ArrowBuffer7reserveEm.exit16:         ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !75
end_hunk_0
