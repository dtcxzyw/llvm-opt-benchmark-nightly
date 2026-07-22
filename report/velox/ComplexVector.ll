inline.NumInlined: 9532
inline.NumDeleted: 3275
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNK8facebook5velox9RowVector16estimateFlatSizeEv:bb.a
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 328
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(94) %i.k)
  %i.p = add i64 %i.o, %.010
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.1 = phi i64 [ %i.p, %bb.c ], [ %.010, %.lr.ph ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.i
  br i1 %i.r, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9RowVector15prepareForReuseEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN8facebook5velox10BaseVector15prepareForReuseEv(ptr noundef nonnull align 8 dereferenceable(94) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 0, ptr %i.f, align 1, !tbaa !274
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.g, align 8, !tbaa !275
  br label %_ZNK8facebook5velox9RowVector27updateContainsLazyNotLoadedEv.exit

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %.pre9 = load ptr, ptr %i.c, align 8, !tbaa !45 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 0, ptr %i.h, align 1, !tbaa !274
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !275
  %i.j = icmp eq ptr %.pre, %.pre9
  br i1 %i.j, label %_ZNK8facebook5velox9RowVector27updateContainsLazyNotLoadedEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.c
  %.sroa.05.08.i = phi ptr [ %i.m, %bb.c ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.05.08.i, align 8, !tbaa !47 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.k)
  br i1 %i.l, label %.critedge.i, label %bb.c

.critedge.i:                                      ; preds = %bb.b
  store i8 1, ptr %i.i, align 8, !tbaa !275
  br label %_ZNK8facebook5velox9RowVector27updateContainsLazyNotLoadedEv.exit

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.m, %.pre9
  br i1 %i.n, label %_ZNK8facebook5velox9RowVector27updateContainsLazyNotLoadedEv.exit, label %.lr.ph.i

_ZNK8facebook5velox9RowVector27updateContainsLazyNotLoadedEv.exit: ; preds = %bb.c, %._crit_edge.thread, %._crit_edge, %.critedge.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.05.08 = phi ptr [ %i.p, %bb.e ], [ %i.b, %bb.a ] ; 3 uses
  %i.o = load ptr, ptr %.sroa.05.08, align 8, !tbaa !47
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN8facebook5velox10BaseVector15prepareForReuseERSt10shared_ptrIS1_Ei(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.08, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %._crit_edge, label %.lr.ph
}

declare void @_ZN8facebook5velox10BaseVector15prepareForReuseEv(ptr noundef nonnull align 8 dereferenceable(94)) unnamed_addr #4

declare void @_ZN8facebook5velox10BaseVector15prepareForReuseERSt10shared_ptrIS1_Ei(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox9RowVector27updateContainsLazyNotLoadedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) initializes((128, 130)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 0, ptr %i.a, align 1, !tbaa !274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !275
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.05.08 = phi ptr [ %i.j, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.05.08, align 8, !tbaa !47 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.h)
  br i1 %i.i, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !tbaa !275
  br label %.loopexit

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.c, %bb.a, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox9RowVector5sliceEii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.4") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::vector", align 8       ; 14 uses
  %5 = alloca %"class.std::shared_ptr.4", align 16 ; 7 uses
  %6 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !64   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 9223372036854775792
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #38
  unreachable

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #42 ; 3 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !64
  %i.m = getelementptr i8, ptr %i.l, i64 %i.h     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.h, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !276
  store ptr %i.m, ptr %i.n, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.s
  %.pre35 = load i32, ptr %i.a, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %._crit_edge.loopexit
  %i.q = phi ptr [ %i.o, %._crit_edge.loopexit ], [ %i.k, %.thread ]
  %i.r = phi ptr [ %i.n, %._crit_edge.loopexit ], [ %i.j, %.thread ]
  %i.s = phi i32 [ %.pre35, %._crit_edge.loopexit ], [ %3, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !109, !noalias !277
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.v = sext i32 %2 to i64
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !110, !noalias !277
  invoke void @_ZN8facebook5velox6Buffer5sliceIbEEN5boost13intrusive_ptrIS1_EERKS5_mmPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %i.v, i64 noundef %i.w, ptr noundef %i.y)
          to label %_ZNK8facebook5velox10BaseVector10sliceNullsEii.exit unwind label %bb.ac

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %._crit_edge
  store ptr null, ptr %6, align 8, !tbaa !109, !alias.scope !277
  br label %_ZNK8facebook5velox10BaseVector10sliceNullsEii.exit

bb.c:                                             ; preds = %.lr.ph, %bb.s
  %i.z = phi ptr [ %i.e, %.lr.ph ], [ %i.bs, %bb.s ] ; 2 uses
  %i.aa = phi ptr [ %i.d, %.lr.ph ], [ %i.bt, %bb.s ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %7 = load ptr, ptr %i.ab, align 8, !tbaa !47    ; 2 uses
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ae = load ptr, ptr %7, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %5, ptr noundef nonnull align 8 dereferenceable(94) %7, i32 noundef %2, i32 noundef %i.ad)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %4, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load <2 x ptr>, ptr %5, align 16, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !192 ; 8 uses
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !27
  %.not.i.i.i.i20 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i20, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.am, align 8, !tbaa !193
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !195
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #39, !inline_history !280
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #39, !inline_history !280
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.h:                                             ; preds = %bb.f
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.i ], [ %i.az, %bb.j ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.k, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !13

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #39
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !192 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bc, align 8, !tbaa !193
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !195
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #39, !inline_history !281
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #39, !inline_history !281
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.bf, %bb.o ], [ %i.bp, %bb.p ]
  %i.bq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bq, label %bb.q, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !13

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #39
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !62
  %.pre34 = load ptr, ptr %i.b, align 8, !tbaa !64
  br label %bb.s

bb.r:                                             ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.af

bb.s:                                             ; preds = %bb.c, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bs = phi ptr [ %i.z, %bb.c ], [ %.pre34, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bt = phi ptr [ %i.aa, %bb.c ], [ %.pre, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 4
  %i.by = icmp ugt i64 %i.bx, %indvars.iv.next
  br i1 %i.by, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !282

_ZNK8facebook5velox10BaseVector10sliceNullsEii.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, %bb.b
  %i.bz = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #42
          to label %.noexc21 unwind label %bb.ad, !inline_history !283 ; 6 uses

.noexc21:                                         ; preds = %_ZNK8facebook5velox10BaseVector10sliceNullsEii.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 1, ptr %i.cc, align 8, !tbaa !193, !noalias !284
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 1, ptr %i.cd, align 4, !tbaa !195, !noalias !284
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bz, align 8, !tbaa !50, !noalias !284
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox9RowVectorEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSt6vectorIS8_INS1_10BaseVectorEESaISL_EEEEvPT_DpOT0_(ptr noundef nonnull %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt12__shared_ptrIN8facebook5velox9RowVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !284, !inline_history !287

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc21
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 168) #40, !noalias !284, !inline_history !288
  br label %.body

_ZNSt12__shared_ptrIN8facebook5velox9RowVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc21
  store ptr %i.ce, ptr %0, align 8, !tbaa !47
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %i.cg, align 8, !tbaa !192
  %i.ch = load ptr, ptr %6, align 8, !tbaa !109   ; 7 uses
  %.not.i26 = icmp eq ptr %i.ch, null
  br i1 %.not.i26, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox9RowVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = atomicrmw sub ptr %i.ci, i32 1 acq_rel, align 4
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.t
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !50
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8
  invoke void %i.cn(ptr noundef nonnull align 8 dereferenceable(64) %i.ch)
          to label %.noexc.i unwind label %bb.u, !inline_history !124

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !125
  %.not.i.i27 = icmp eq ptr %i.cp, null
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !50
  %..i.i = select i1 %.not.i.i27, i64 8, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %..i.i
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr noundef nonnull align 8 dereferenceable(64) %i.ch)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.u, !inline_history !124

bb.u:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox9RowVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.t, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  %i.cv = load ptr, ptr %4, align 8, !tbaa !64    ; 3 uses
  %i.cw = load ptr, ptr %i.r, align 8, !tbaa !62  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cv, %i.cw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.do, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i ], [ %i.cv, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
end_hunk_0
