inline.NumInlined: 14179
inline.NumDeleted: 6830
begin_hunk_0_@_ZN6duckdb11FSSTStorage22ParseFSSTSegmentHeaderEPhP21duckdb_fsst_decoder_tS1_m:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #30
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn18 = phi { ptr, i32 } [ %.pn19, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn18

bb.h:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i15 = load i32, ptr %i.j, align 1
  %i.k = trunc i32 %.0.copyload.i15 to i8
  store i8 %i.k, ptr %2, align 1, !tbaa !239
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.m = tail call i32 @duckdb_fsst_import(ptr noundef %1, ptr noundef %i.l)
  %i.n = icmp ne i32 %i.m, 0
  ret i1 %i.n

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrIvLb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !237
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !1007
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !1007
  br label %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

declare noundef zeroext i8 @_ZNK6duckdb14BaseStatistics12GetStatsTypeEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6duckdb11StringStats18HasMaxStringLengthERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef i32 @_ZN6duckdb11StringStats15MaxStringLengthERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3
  %i.b = add i32 %i.a, %3
  store i32 %i.b, ptr %1, align 4, !tbaa !3
  %i.c = icmp ugt i64 %2, 1
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %load_initial = load i32, ptr %1, align 4       ; 2 uses
  %i.d = add i64 %2, -1                           ; 2 uses
  %i.e = add i64 %2, -2
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.e, 3
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %.012.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %store_forwarded.epil = phi i32 [ %store_forwarded.epil.init, %.lr.ph.epil.preheader ], [ %i.j, %.lr.ph.epil ]
  %.012.epil = phi i64 [ %.012.epil.init, %.lr.ph.epil.preheader ], [ %i.k, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.epil
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = getelementptr [4 x i8], ptr %1, i64 %.012.epil
  %i.j = add i32 %store_forwarded.epil, %i.h      ; 2 uses
  store i32 %i.j, ptr %i.i, align 4, !tbaa !3
  %i.k = add nuw i64 %.012.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1008

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ]
  %.012 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = getelementptr [4 x i8], ptr %1, i64 %.012
  %i.o = add i32 %store_forwarded, %i.m           ; 2 uses
  store i32 %i.o, ptr %i.n, align 4, !tbaa !3
  %i.p = add nuw nsw i64 %.012, 1                 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = getelementptr [4 x i8], ptr %1, i64 %i.p
  %i.t = add i32 %i.o, %i.r                       ; 2 uses
  store i32 %i.t, ptr %i.s, align 4, !tbaa !3
  %i.u = add nuw nsw i64 %.012, 2                 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = getelementptr [4 x i8], ptr %1, i64 %i.u
  %i.y = add i32 %i.t, %i.w                       ; 2 uses
  store i32 %i.y, ptr %i.x, align 4, !tbaa !3
  %i.z = add nuw i64 %.012, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr [4 x i8], ptr %1, i64 %i.z
  %i.ad = add i32 %i.y, %i.ab                     ; 3 uses
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !3
  %i.ae = add nuw i64 %.012, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1009
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14BitUnpackRangeEPhS0_mmh(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i8 %4 to i64                        ; 2 uses
  %i.b = mul i64 %3, %i.a
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb20BitpackingPrimitives12UnPackBufferIjEEvPhS2_mhb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = zext i8 %4 to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.09.i = phi i64 [ 0, %.lr.ph.i ], [ %i.k, %bb.b ] ; 3 uses
  %i.f = shl i64 %.09.i, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = mul i64 %.09.i, %i.a
  %i.i = lshr exact i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  tail call void @_ZN18duckdb_fastpforlib10fastunpackEPKjPjj(ptr noundef %i.j, ptr noundef %i.g, i32 noundef %i.e)
  %i.k = add i64 %.09.i, 32                       ; 2 uses
  %i.l = icmp ult i64 %i.k, %2
  br i1 %i.l, label %bb.b, label %_ZN6duckdb20BitpackingPrimitives12UnPackBufferIjEEvPhS2_mhb.exit, !llvm.loop !1010

_ZN6duckdb20BitpackingPrimitives12UnPackBufferIjEEvPhS2_mhb.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11FSSTStorage9StartScanERNS_13FSSTScanStateEPhmm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb::BPDeltaDecodeOffsets") align 8 captures(none) initializes((0, 56)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(129) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne i64 %3, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not = icmp slt i64 %i.c, %3
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %.split, label %.split19

.split:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = add nsw i64 %i.c, 1                      ; 4 uses
  store i64 %i.e, ptr %0, align 8, !tbaa !1011, !alias.scope !1013
  %i.f = and i64 %i.e, 31                         ; 4 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !1016, !alias.scope !1013
  %i.g = and i64 %i.e, -32                        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.h, align 8, !tbaa !1017, !alias.scope !1013
  %i.i = sub i64 %3, %i.e                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.i, ptr %i.j, align 8, !tbaa !1018, !alias.scope !1013
  %i.k = add i64 %i.f, %i.i                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.k, ptr %i.l, align 8, !tbaa !1019, !alias.scope !1013
  %i.m = add i64 %i.i, %4                         ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !1020, !alias.scope !1013
  %i.o = add i64 %i.k, %4                         ; 3 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 31                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit, label %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit.sink.split

.split19:                                         ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 0, ptr %i.s, align 4, !tbaa !1021
  store i64 -1, ptr %i.b, align 8, !tbaa !1022
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i64 %3, ptr %i.t, align 8, !tbaa !1018, !alias.scope !1023
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.u, align 8, !tbaa !1019, !alias.scope !1023
  %i.v = add i64 %4, %3                           ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !1020, !alias.scope !1023
  %i.x = trunc i64 %i.v to i32
  %i.y = and i32 %i.x, 31                         ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit, label %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit.sink.split

_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit.sink.split: ; preds = %.split19, %.split
  %.sink47 = phi i64 [ %i.o, %.split ], [ %i.v, %.split19 ]
  %.sink46 = phi i32 [ %i.q, %.split ], [ %i.y, %.split19 ]
  %.ph = phi i64 [ %i.f, %.split ], [ 0, %.split19 ]
  %.ph43 = phi i64 [ %i.m, %.split ], [ %i.v, %.split19 ]
  %.ph44 = phi i64 [ %i.g, %.split ], [ 0, %.split19 ]
  %i.aa = add i64 %.sink47, 32
  %i.ab = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %.sink46), !noalias !55
  %i.ac = sub i64 %i.aa, %i.ab
  br label %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit

_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit: ; preds = %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit.sink.split, %.split19, %.split
  %.0.i.i.sink = phi i64 [ %i.o, %.split ], [ %i.v, %.split19 ], [ %i.ac, %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit.sink.split ] ; 7 uses
  %i.ad = phi i64 [ %i.f, %.split ], [ 0, %.split19 ], [ %.ph, %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit.sink.split ]
  %i.ae = phi i64 [ %i.m, %.split ], [ %i.v, %.split19 ], [ %.ph43, %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit.sink.split ] ; 7 uses
  %i.af = phi i64 [ %i.g, %.split ], [ 0, %.split19 ], [ %.ph44, %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit.sink.split ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.0.i.i.sink, ptr %i.ag, align 8, !tbaa !1026
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1027
  %i.aj = icmp ult i64 %i.ai, %.0.i.i.sink
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit
  %i.ak = icmp ugt i64 %.0.i.i.sink, 4611686018427387903
  %i.al = shl nuw i64 %.0.i.i.sink, 2
  %i.am = select i1 %i.ak, i64 -1, i64 %i.al      ; 2 uses
  %i.an = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #33, !noalias !1028 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.an, i8 0, i64 %i.am, i1 false), !noalias !1028
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !842 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !842
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %.thread, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.ap) #32
  br label %.thread

.thread:                                          ; preds = %bb.b, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i
  store i64 %.0.i.i.sink, ptr %i.ah, align 8, !tbaa !1027
  br label %.lr.ph.i.i

bb.c:                                             ; preds = %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.not.i.i = icmp eq i64 %.0.i.i.sink, 0
  br i1 %.not.i.i, label %_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread, %bb.c
  %i.ar = phi ptr [ %i.ao, %.thread ], [ %i.aq, %bb.c ] ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.as = load i8, ptr %.in, align 8, !tbaa !1031 ; 2 uses
  %i.at = zext i8 %i.as to i64                    ; 2 uses
  %.pn.in = mul i64 %i.af, %i.at
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !842
  %.pn = lshr exact i64 %.pn.in, 3
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %.pn
  %i.aw = zext i8 %i.as to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.d ] ; 3 uses
  %i.ax = shl i64 %.09.i.i, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax
  %i.az = mul i64 %.09.i.i, %i.at
  %i.ba = lshr exact i64 %i.az, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  tail call void @_ZN18duckdb_fastpforlib10fastunpackEPKjPjj(ptr noundef %i.bb, ptr noundef %i.ay, i32 noundef %i.aw)
  %i.bc = add i64 %.09.i.i, 32                    ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %.0.i.i.sink
  br i1 %i.bd, label %bb.d, label %_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit, !llvm.loop !1010

_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit:         ; preds = %bb.d, %bb.c
  %i.be = phi ptr [ %i.aq, %bb.c ], [ %i.ar, %bb.d ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1032
  %i.bh = icmp ult i64 %i.bg, %i.ae
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit
  %i.bi = icmp ugt i64 %i.ae, 4611686018427387903
  %i.bj = shl nuw i64 %i.ae, 2
  %i.bk = select i1 %i.bi, i64 -1, i64 %i.bj      ; 2 uses
  %i.bl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #33, !noalias !1033 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bl, i8 0, i64 %i.bk, i1 false), !noalias !1033
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !842 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !842
  %.not.i.i.i.i.i23 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i23, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i24

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i24: ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.bn) #32
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i24, %bb.e
  store i64 %i.ae, ptr %i.bf, align 8, !tbaa !1032
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28, %_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !842
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ad ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !842 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !1021
  %i.bu = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.bv = add i32 %i.bu, %i.bt
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !3
  %i.bw = icmp ugt i64 %i.ae, 1
  br i1 %i.bw, label %.lr.ph.i.preheader, label %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit

.lr.ph.i.preheader:                               ; preds = %bb.f
  %load_initial = load i32, ptr %i.br, align 4    ; 2 uses
  %i.bx = add i64 %i.ae, -1                       ; 2 uses
  %i.by = add i64 %i.ae, -2
  %xtraiter = and i64 %i.bx, 3                    ; 3 uses
  %i.bz = icmp ult i64 %i.by, 3
  br i1 %i.bz, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.bx, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.i.preheader.new ], [ %i.cs, %.lr.ph.i ]
  %.012.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.ct, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.012.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = getelementptr [4 x i8], ptr %i.br, i64 %.012.i
  %i.cd = add i32 %store_forwarded, %i.cb         ; 2 uses
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !3
  %i.ce = add nuw nsw i64 %.012.i, 1              ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = getelementptr [4 x i8], ptr %i.br, i64 %i.ce
  %i.ci = add i32 %i.cd, %i.cg                    ; 2 uses
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !3
  %i.cj = add nuw nsw i64 %.012.i, 2              ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = getelementptr [4 x i8], ptr %i.br, i64 %i.cj
  %i.cn = add i32 %i.ci, %i.cl                    ; 2 uses
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !3
  %i.co = add nuw i64 %.012.i, 3                  ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = getelementptr [4 x i8], ptr %i.br, i64 %i.co
  %i.cs = add i32 %i.cn, %i.cq                    ; 3 uses
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !3
  %i.ct = add nuw i64 %.012.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1009

_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.lr.ph.i.preheader ], [ %i.cs, %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa ]
  %.012.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.ct, %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa ]
  %lcmp.mod48 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %store_forwarded.epil = phi i32 [ %store_forwarded.epil.init, %.lr.ph.i.epil.preheader ], [ %i.cx, %.lr.ph.i.epil ]
  %.012.i.epil = phi i64 [ %.012.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.cy, %.lr.ph.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.012.i.epil
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = getelementptr [4 x i8], ptr %i.br, i64 %.012.i.epil
  %i.cx = add i32 %store_forwarded.epil, %i.cv    ; 2 uses
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !3
  %i.cy = add nuw i64 %.012.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit, label %.lr.ph.i.epil, !llvm.loop !1036

_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit:      ; preds = %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb::BPDeltaDecodeOffsets") align 8 captures(none) initializes((0, 56)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = add nsw i64 %1, 1                        ; 4 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !1011
  %i.b = and i64 %i.a, 31                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !1016
  %i.d = and i64 %i.a, -32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.e, align 8, !tbaa !1017
  %i.f = sub i64 %2, %i.a                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.g, align 8, !tbaa !1018
  %i.h = add i64 %i.b, %i.f                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.h, ptr %i.i, align 8, !tbaa !1019
  %i.j = add i64 %3, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.j, ptr %i.k, align 8, !tbaa !1020
  %i.l = add i64 %i.h, %3                         ; 3 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 31                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6duckdb20BitpackingPrimitives27RoundUpToAlgorithmGroupSizeImEET_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = add i64 %i.l, 32
  %i.q = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.n)
  %i.r = sub i64 %i.p, %i.q
  br label %_ZN6duckdb20BitpackingPrimitives27RoundUpToAlgorithmGroupSizeImEET_S2_.exit

_ZN6duckdb20BitpackingPrimitives27RoundUpToAlgorithmGroupSizeImEET_S2_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.r, %bb.b ], [ %i.l, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.0.i, ptr %i.s, align 8, !tbaa !1026
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb11FSSTStorage7EndScanERNS_13FSSTScanStateERNS_20BPDeltaDecodeOffsetsEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(129) initializes((84, 96)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1018
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !842
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %3
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr i8, ptr %i.f, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = add i64 %2, -1
  %i.j = add i64 %i.i, %3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.h, ptr %i.k, align 4, !tbaa !1021
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.j, ptr %i.l, align 8, !tbaa !1022
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11FSSTStorage10StringScanERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #1 align 2 {
bb.a:
  tail call void @_ZN6duckdb11FSSTStorage17StringScanPartialILb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11FSSTStorage17StringScanPartialILb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.sroa.0.i.sroa.2 = alloca [12 x i8], align 4   ; 6 uses
  %5 = alloca %"struct.duckdb::BPDeltaDecodeOffsets", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 10 uses
  %i.c = tail call noundef i64 @_ZNK6duckdb15ColumnScanState20GetPositionInSegmentEv(ptr noundef nonnull align 8 dereferenceable(284) %1) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !248
  %i.f = tail call noundef zeroext i1 @_ZN6duckdb8Settings3GetINS_24EnableFSSTVectorsSettingENS_16DatabaseInstanceEEENSt9enable_ifIXsr3std7is_sameINT_11RETURN_TYPEEbEE5valueEbE4typeERKT0_(ptr noundef nonnull align 1 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !455
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !456
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !460
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l ; 3 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !455
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !456
  %i.q = load i64, ptr %i.k, align 8, !tbaa !460
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %.0.copyload.i.i = load i64, ptr %i.r, align 1  ; 2 uses
  %.sroa.420.0.extract.shift = lshr i64 %.0.copyload.i.i, 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !984
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !515
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !516
  %i.ac = sub i64 %i.z, %i.ab
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = and i64 %i.ad, 4611686018427387896
  %i.af = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 4096)
  tail call void @_ZN6duckdb10FSSTVector15RegisterDecoderERNS_6VectorERNS_10shared_ptrIvLb1EEEm(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 noundef %i.af)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0.in = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb11FSSTStorage9StartScanERNS_13FSSTScanStateEPhmm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::BPDeltaDecodeOffsets") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %i.b, ptr noundef nonnull %i.s, i64 noundef %i.c, i64 noundef %2)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.420.0.extract.shift ; 2 uses
  %.pre = load i64, ptr %i.ai, align 8, !tbaa !1019
  %.pre75 = load i64, ptr %i.aj, align 8, !tbaa !1018 ; 2 uses
  %.sroa.0.i.sroa.2.4.i.8.i.8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.2, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb25UncompressedStringStorage19FetchStringFromDictERNS_13ColumnSegmentEjRNS_6VectorEPhij.exit
  %.05968 = phi i64 [ 0, %bb.f ], [ %i.bp, %_ZN6duckdb25UncompressedStringStorage19FetchStringFromDictERNS_13ColumnSegmentEjRNS_6VectorEPhij.exit ] ; 4 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !842
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %.05968
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %.pre
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3  ; 5 uses
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !842
  %i.aq = getelementptr [4 x i8], ptr %i.ap, i64 %.05968
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %.pre75
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.2)
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %bb.h, label %bb.l, !prof !64

bb.h:                                             ; preds = %bb.g
  %i.au = zext nneg i32 %i.as to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.ak, i64 %i.av ; 3 uses
  %i.ax = icmp ult i32 %i.ao, 13
  br i1 %i.ax, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.sroa.2, i8 0, i64 12, i1 false)
  %i.ay = icmp eq i32 %i.ao, 0
  br i1 %i.ay, label %_ZN6duckdb25UncompressedStringStorage19FetchStringFromDictERNS_13ColumnSegmentEjRNS_6VectorEPhij.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = zext nneg i32 %i.ao to i64
end_hunk_0
begin_hunk_1_@_ZN6duckdb11FSSTStorage14StringFetchRowERNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
bb.a:
  %.sroa.0.i.i.sroa.4 = alloca [12 x i8], align 4 ; 6 uses
  %.sroa.0.i.sroa.2 = alloca [12 x i8], align 4   ; 6 uses
  %5 = alloca %"class.duckdb::BufferHandle", align 8 ; 7 uses
  %6 = alloca %struct.duckdb_fsst_decoder_t, align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.duckdb::unique_ptr.1095", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::unique_ptr.1095", align 8 ; 7 uses
  %9 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !248
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.c) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !455
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !456
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !460
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !455
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !456
  %i.t = load i64, ptr %i.m, align 8, !tbaa !460
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %.0.copyload.i.i = load i64, ptr %i.u, align 1
  %.sroa.4.0.extract.shift = lshr i64 %.0.copyload.i.i, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.v = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !515
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !516
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = invoke noundef zeroext i1 @_ZN6duckdb11FSSTStorage22ParseFSSTSegmentHeaderEPhP21duckdb_fsst_decoder_tS1_m(ptr noundef %i.o, ptr noundef nonnull %6, ptr noundef nonnull %i.a, i64 noundef %i.aa)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !461 ; 2 uses
  br i1 %i.ab, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  br label %bb.ag

bb.h:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.i:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.j:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.k:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.l:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.m:                                             ; preds = %bb.f
  %i.ak = add i64 %2, 1                           ; 5 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 31                       ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = invoke noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.am)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.n
  %i.ap = add i64 %2, 33
  %i.aq = sub i64 %i.ap, %i.ao
  br label %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit

_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit: ; preds = %.noexc, %bb.m
  %.0.i.i = phi i64 [ %i.aq, %.noexc ], [ %i.ak, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ar = icmp ugt i64 %.0.i.i, 4611686018427387903
  %i.as = shl nuw i64 %.0.i.i, 2
  %i.at = select i1 %i.ar, i64 -1, i64 %i.as
  %i.au = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #33
          to label %bb.o unwind label %bb.ai      ; 2 uses

bb.o:                                             ; preds = %_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm.exit
  store ptr %i.au, ptr %7, align 8, !tbaa !842
  %i.av = load i8, ptr %i.a, align 1, !tbaa !239  ; 2 uses
  %i.aw = zext i8 %i.av to i64
  %.not.i.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i.i, label %_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.ax = zext i8 %i.av to i32
  br label %bb.p

bb.p:                                             ; preds = %.noexc49, %.lr.ph.i.i
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bd, %.noexc49 ] ; 3 uses
  %i.ay = shl i64 %.09.i.i, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay
  %i.ba = mul i64 %.09.i.i, %i.aw
  %i.bb = lshr exact i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bb
  invoke void @_ZN18duckdb_fastpforlib10fastunpackEPKjPjj(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.az, i32 noundef %i.ax)
          to label %.noexc49 unwind label %bb.aj

.noexc49:                                         ; preds = %bb.p
  %i.bd = add i64 %.09.i.i, 32                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.0.i.i
  br i1 %i.be, label %bb.p, label %_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit, !llvm.loop !1010

_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit:         ; preds = %.noexc49, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.bf = icmp ugt i64 %i.ak, 4611686018427387903
  %i.bg = shl nuw i64 %i.ak, 2
  %i.bh = select i1 %i.bf, i64 -1, i64 %i.bg
  %i.bi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #33
          to label %bb.q unwind label %bb.ak      ; 8 uses

bb.q:                                             ; preds = %_ZN6duckdb14BitUnpackRangeEPhS0_mmh.exit
  store ptr %i.bi, ptr %8, align 8, !tbaa !842
  %i.bj = load ptr, ptr %7, align 8, !tbaa !842   ; 6 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !3
  %i.bl = icmp ugt i64 %i.ak, 1
  br i1 %i.bl, label %.lr.ph.i.preheader, label %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit

.lr.ph.i.preheader:                               ; preds = %bb.q
  %load_initial = load i32, ptr %i.bi, align 4    ; 2 uses
  %i.bm = add i64 %2, -1
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 3
  br i1 %i.bn, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.i.preheader.new ], [ %i.cg, %.lr.ph.i ]
  %.012.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.ch, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.012.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = getelementptr [4 x i8], ptr %i.bi, i64 %.012.i
  %i.br = add i32 %store_forwarded, %i.bp         ; 2 uses
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !3
  %i.bs = add nuw nsw i64 %.012.i, 1              ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = getelementptr [4 x i8], ptr %i.bi, i64 %i.bs
  %i.bw = add i32 %i.br, %i.bu                    ; 2 uses
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !3
  %i.bx = add nuw nsw i64 %.012.i, 2              ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = getelementptr [4 x i8], ptr %i.bi, i64 %i.bx
  %i.cb = add i32 %i.bw, %i.bz                    ; 2 uses
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add nuw i64 %.012.i, 3                  ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr [4 x i8], ptr %i.bi, i64 %i.cc
  %i.cg = add i32 %i.cb, %i.ce                    ; 3 uses
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !3
  %i.ch = add nuw i64 %.012.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1009

_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.lr.ph.i.preheader ], [ %i.cg, %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa ]
  %.012.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.ch, %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod90)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %store_forwarded.epil = phi i32 [ %store_forwarded.epil.init, %.lr.ph.i.epil.preheader ], [ %i.cl, %.lr.ph.i.epil ]
  %.012.i.epil = phi i64 [ %.012.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.cm, %.lr.ph.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.012.i.epil
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = getelementptr [4 x i8], ptr %i.bi, i64 %.012.i.epil
  %i.cl = add i32 %store_forwarded.epil, %i.cj    ; 2 uses
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !3
  %i.cm = add nuw i64 %.012.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit, label %.lr.ph.i.epil, !llvm.loop !1045

_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit:      ; preds = %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.q
  %i.cn = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK6duckdb10unique_ptrIA_jSt14default_deleteIS1_ELb1EEixEm(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %2)
          to label %bb.r unwind label %bb.al

bb.r:                                             ; preds = %_ZN6duckdb18DeltaDecodeIndicesEPjS0_mj.exit
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.cp = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK6duckdb10unique_ptrIA_jSt14default_deleteIS1_ELb1EEixEm(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %2)
          to label %bb.s unwind label %bb.am

bb.s:                                             ; preds = %bb.r
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.2)
  %i.cr = icmp sgt i32 %i.cq, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.4.0.extract.shift ; 2 uses
  br i1 %i.cr, label %bb.t, label %bb.x, !prof !64

bb.t:                                             ; preds = %bb.s
  %i.ct = zext nneg i32 %i.cq to i64
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu ; 3 uses
  %i.cw = icmp ult i32 %i.co, 13
  br i1 %i.cw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.sroa.2, i8 0, i64 12, i1 false)
  %i.cx = icmp eq i32 %i.co, 0
  br i1 %i.cx, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = zext nneg i32 %i.co to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.sroa.2, ptr align 1 %i.cv, i64 %i.cy, i1 false)
  %.sroa.0.i.sroa.2.4.i.8.i.8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.2, i64 4
  %.sroa.0.i.sroa.2.4..sroa.0.i.sroa.2.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i = load ptr, ptr %.sroa.0.i.sroa.2.4.i.8.i.8..fca.1.gep.sroa_idx, align 4
  %.sroa.0.i.sroa.2.0..sroa.0.i.sroa.2.4..sroa.0.i.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i71.pre = load i32, ptr %.sroa.0.i.sroa.2, align 4
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.cz = load i32, ptr %i.cv, align 1
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.da = sub nsw i32 0, %i.cq
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.cs, i64 %i.dc ; 2 uses
  %i.de = load i64, ptr %i.dd, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load i32, ptr %i.df, align 1
  %i.dh = invoke { i64, ptr } @_ZN6duckdb25UncompressedStringStorage18ReadOverflowStringERNS_13ColumnSegmentERNS_6VectorEli(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.de, i32 noundef %i.dg)
          to label %.noexc50 unwind label %bb.am  ; 2 uses

.noexc50:                                         ; preds = %bb.x
  %i.di = extractvalue { i64, ptr } %i.dh, 0      ; 2 uses
  %i.dj = extractvalue { i64, ptr } %i.dh, 1
  %i.dk = trunc i64 %i.di to i32
  %i.dl = lshr i64 %i.di, 32
  %i.dm = trunc nuw i64 %i.dl to i32
  br label %bb.y

bb.y:                                             ; preds = %.noexc50, %bb.w, %bb.v, %bb.u
  %.sroa.0.i.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i71 = phi i32 [ %i.cz, %bb.w ], [ %.sroa.0.i.sroa.2.0..sroa.0.i.sroa.2.4..sroa.0.i.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i71.pre, %bb.v ], [ 0, %bb.u ], [ %i.dm, %.noexc50 ]
  %i.dn = phi i32 [ %i.co, %bb.w ], [ %i.co, %bb.v ], [ 0, %bb.u ], [ %i.dk, %.noexc50 ] ; 3 uses
  %i.do = phi ptr [ %i.cv, %bb.w ], [ %.sroa.0.i.sroa.2.4..sroa.0.i.sroa.2.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i, %bb.v ], [ null, %bb.u ], [ %i.dj, %.noexc50 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.2)
  store i32 %i.dn, ptr %9, align 8
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 %.sroa.0.i.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i71, ptr %.sroa_idx, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.do, ptr %i.dp, align 8
  %i.dq = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.z unwind label %bb.an      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.dr = icmp ult i32 %i.dn, 13
  %i.ds = select i1 %i.dr, ptr %.sroa_idx, ptr %i.do
  %i.dt = zext i32 %i.dn to i64                   ; 2 uses
  %i.du = shl nuw nsw i64 %i.dt, 3                ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 64 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1040 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1041 ; 2 uses
  %i.ea = add i64 %i.dz, %i.du                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !1043
  %i.ed = icmp ugt i64 %i.ea, %i.ec
  br i1 %i.ed, label %bb.ab, label %_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.dv, i64 noundef %i.du)
          to label %.noexc51 unwind label %bb.ao

.noexc51:                                         ; preds = %bb.ab
  %.pre.i.i.i = load ptr, ptr %i.dw, align 8, !tbaa !1040 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %.pre4.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !1041 ; 2 uses
  %.pre5.i.i.i = add i64 %.pre4.i.i.i, %i.du
  br label %_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i

_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i: ; preds = %.noexc51, %bb.aa
  %.pre-phi.i.i.i = phi i64 [ %.pre5.i.i.i, %.noexc51 ], [ %i.ea, %bb.aa ]
  %i.ee = phi i64 [ %.pre4.i.i.i, %.noexc51 ], [ %i.dz, %bb.aa ]
  %i.ef = phi ptr [ %.pre.i.i.i, %.noexc51 ], [ %i.dx, %bb.aa ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1044
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ee ; 4 uses
  store i64 %.pre-phi.i.i.i, ptr %i.ei, align 8, !tbaa !1041
  %i.ek = call i64 @duckdb_fsst_decompress(ptr noundef nonnull %6, i64 noundef %i.dt, ptr noundef %i.ds, i64 noundef %i.du, ptr noundef %i.ej) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.sroa.4)
  %i.el = icmp ugt i64 %i.ek, 12
  %i.em = select i1 %i.el, i64 %i.ek, i64 0
  %.neg.i.i = sub i64 %i.em, %i.du
  %i.en = load ptr, ptr %i.dw, align 8, !tbaa !1040
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !1041
  %i.eq = add i64 %.neg.i.i, %i.ep
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !1041
  %i.er = trunc i64 %i.ek to i32                  ; 3 uses
  %i.es = icmp ult i32 %i.er, 13
  br i1 %i.es, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.i.sroa.4, i8 0, i64 12, i1 false)
  %i.et = icmp eq i32 %i.er, 0
  br i1 %i.et, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = and i64 %i.ek, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.sroa.4, ptr align 1 %i.ej, i64 %i.eu, i1 false)
  %.sroa.0.i.i.sroa.4.4.i.i.8.i.8.i.8..fca.1.gep.sroa_idx91 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.sroa.4, i64 4
  %.sroa.0.i.i.sroa.4.4..sroa.0.i.i.sroa.4.4..sroa.0.i.i.sroa.4.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i = load ptr, ptr %.sroa.0.i.i.sroa.4.4.i.i.8.i.8.i.8..fca.1.gep.sroa_idx91, align 4
  %.sroa.0.i.i.sroa.4.0..sroa.0.i.i.sroa.4.0..sroa.0.i.i.sroa.4.4..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i.i75.pre = load i32, ptr %.sroa.0.i.i.sroa.4, align 4
  br label %bb.af

bb.ae:                                            ; preds = %_ZN6duckdb18VectorStringBuffer24AllocateShrinkableBufferEm.exit.i
  %i.ev = load i32, ptr %i.ej, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.0.i.i.sroa.4.0..sroa.0.i.i.sroa.4.4..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i.i75 = phi i32 [ 0, %bb.ac ], [ %.sroa.0.i.i.sroa.4.0..sroa.0.i.i.sroa.4.0..sroa.0.i.i.sroa.4.4..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i.i75.pre, %bb.ad ], [ %i.ev, %bb.ae ]
  %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i = phi ptr [ null, %bb.ac ], [ %.sroa.0.i.i.sroa.4.4..sroa.0.i.i.sroa.4.4..sroa.0.i.i.sroa.4.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.pre.i.i, %bb.ad ], [ %i.ej, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.sroa.4)
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %4 ; 3 uses
  store i32 %i.er, ptr %i.ew, align 8
  %.sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store i32 %.sroa.0.i.i.sroa.4.0..sroa.0.i.i.sroa.4.4..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i.i75, ptr %.sroa_idx76, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %.sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !239
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.ex = load ptr, ptr %8, align 8, !tbaa !842   ; 2 uses
  %.not.i = icmp eq ptr %i.ex, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.af
  call void @_ZdaPv(ptr noundef nonnull %i.ex) #32
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.af, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ey = load ptr, ptr %7, align 8, !tbaa !842   ; 2 uses
  %.not.i52 = icmp eq ptr %i.ey, null
  br i1 %.not.i52, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit54, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i53

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i53: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ey) #32
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit54
end_hunk_1
begin_hunk_2_@_ZN6duckdb15BitpackingStateIaaE5FlushINS_21EmptyBitpackingWriterEEEbv:bb.a
  %i.cc = load i8, ptr %i.t, align 2, !tbaa !2191 ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIaLb0EEEhT_.exit27, label %.preheader.i.i21

.preheader.i.i21:                                 ; preds = %bb.p, %.preheader.i.i21
  %.011.i.i22 = phi i8 [ %i.cf, %.preheader.i.i21 ], [ %i.cc, %bb.p ]
  %.0810.i.i23 = phi i8 [ %i.ce, %.preheader.i.i21 ], [ 0, %bb.p ]
  %i.ce = add i8 %.0810.i.i23, 1                  ; 2 uses
  %i.cf = ashr i8 %.011.i.i22, 1                  ; 2 uses
  %.not.i.i24 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i24, label %bb.q, label %.preheader.i.i21, !llvm.loop !2190

bb.q:                                             ; preds = %.preheader.i.i21
  %..i.i.i25 = tail call noundef i8 @llvm.umin.i8(i8 %i.ce, i8 8)
  %i.cg = zext nneg i8 %..i.i.i25 to i64
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIaLb0EEEhT_.exit27

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIaLb0EEEhT_.exit27: ; preds = %bb.p, %bb.q
  %.09.i.i26 = phi i64 [ %i.cg, %bb.q ], [ 0, %bb.p ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2117
  %i.cj = load i8, ptr %i.s, align 8, !tbaa !2128
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !2119
  %.not.i28 = icmp eq i64 %i.ck, 0
  br i1 %.not.i28, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit33, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIaLb0EEEhT_.exit27, %.lr.ph.i29
  %.05.i30 = phi i64 [ %i.co, %.lr.ph.i29 ], [ 0, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIaLb0EEEhT_.exit27 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.05.i30 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !239
  %i.cn = sub i8 %i.cm, %i.cj
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !239
  %i.co = add nuw i64 %.05.i30, 1                 ; 2 uses
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !2119 ; 4 uses
  %i.cq = icmp ult i64 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph.i29, label %_ZN6duckdb15BitpackingStateIaaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit31, !llvm.loop !2193

_ZN6duckdb15BitpackingStateIaaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit31: ; preds = %.lr.ph.i29
  %i.cr = trunc i64 %i.cp to i32
  %i.cs = and i32 %i.cr, 31                       ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit33, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb15BitpackingStateIaaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit31
  %i.cu = add i64 %i.cp, 32
  %i.cv = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.cs)
  %i.cw = sub i64 %i.cu, %i.cv
  br label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit33

_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit33: ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIaLb0EEEhT_.exit27, %_ZN6duckdb15BitpackingStateIaaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit31, %bb.r
  %.0.i.i32 = phi i64 [ %i.cw, %bb.r ], [ %i.cp, %_ZN6duckdb15BitpackingStateIaaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit31 ], [ 0, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIaLb0EEEhT_.exit27 ]
  %i.cx = mul i64 %.0.i.i32, %.09.i.i26
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 6168 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !2184
  %i.db = add i64 %i.da, 9
  %i.dc = add i64 %i.db, %i.cy
  store i64 %i.dc, ptr %i.cz, align 8, !tbaa !2184
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %.thread, %bb.a, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit33, %bb.i, %bb.e
  %.1 = phi i1 [ true, %bb.o ], [ true, %bb.e ], [ true, %bb.i ], [ true, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit33 ], [ true, %bb.a ], [ false, %.thread ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15BitpackingStateIaaE19CalculateDeltaStatsEv(ptr noundef nonnull align 8 dereferenceable(6198) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6185 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6160 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2119
  %i.e = icmp ugt i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6191
  %i.g = load i8, ptr %i.f, align 1, !range !54
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.b, align 1, !tbaa !2129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6184 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !2128
  %i.l = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.k, i8 noundef signext %i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.b, align 1, !tbaa !2129
  %i.n = load i8, ptr %i.j, align 8, !tbaa !2128
  %i.o = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.m, i8 noundef signext %i.n, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.o, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !2119 ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph32, label %.critedge25

.lr.ph32:                                         ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2117
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2064
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph32, %bb.d
  %.02131 = phi i64 [ 0, %.lr.ph32 ], [ %i.aa, %bb.d ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.02131 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !239
  %i.w = getelementptr i8, ptr %i.u, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !239
  %i.y = sub i8 %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %.02131
  store i8 %i.y, ptr %i.z, align 1, !tbaa !239
  %i.aa = add nuw nsw i64 %.02131, 1              ; 2 uses
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !2119 ; 2 uses
  %i.ac = icmp slt i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %.critedge25, !llvm.loop !2194

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.c
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !2119 ; 2 uses
  %.not29 = icmp sgt i64 %i.ad, 0
  br i1 %.not29, label %.lr.ph, label %.critedge25

.lr.ph:                                           ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2064
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ag = add nuw nsw i64 %.02030, 1              ; 2 uses
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !2119 ; 2 uses
  %.not = icmp slt i64 %i.ag, %i.ah
  br i1 %.not, label %bb.g, label %.critedge25, !llvm.loop !2195

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.02030 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %bb.f ] ; 3 uses
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !2117
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.02030 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !239
  %i.al = getelementptr i8, ptr %i.aj, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !239
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 %.02030
  %i.ao = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.ak, i8 noundef signext %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.an)
  br i1 %i.ao, label %bb.f, label %.loopexit

.critedge25:                                      ; preds = %bb.f, %bb.d, %bb.e, %.preheader
  %i.ap = phi i64 [ %i.ab, %bb.d ], [ %i.p, %.preheader ], [ %i.ad, %bb.e ], [ %i.ah, %bb.f ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6195 ; 3 uses
  store i8 1, ptr %i.aq, align 1, !tbaa !2186
  %i.ar = icmp ugt i64 %i.ap, 1
  br i1 %i.ar, label %.lr.ph34, label %.critedge25.._crit_edge_crit_edge

.critedge25.._crit_edge_crit_edge:                ; preds = %.critedge25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 6187
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !2188
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %0, i64 6188
  %.pre38 = load i8, ptr %.phi.trans.insert37, align 4, !tbaa !2187
  br label %._crit_edge

.lr.ph34:                                         ; preds = %.critedge25
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 6188 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6187 ; 4 uses
  %.promoted = load i8, ptr %i.as, align 4, !tbaa !2187 ; 2 uses
  %.promoted35 = load i8, ptr %i.au, align 1, !tbaa !2188 ; 2 uses
  %i.av = add i64 %i.ap, -1                       ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.aw = icmp eq i64 %i.ap, 2
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph34.new

.lr.ph34.new:                                     ; preds = %.lr.ph34
  %unroll_iter = and i64 %i.av, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph34.new
  %i.ax = phi i8 [ %.promoted35, %.lr.ph34.new ], [ %i.bj, %bb.h ]
  %i.ay = phi i8 [ %.promoted, %.lr.ph34.new ], [ %i.bh, %bb.h ]
  %.033 = phi i64 [ 1, %.lr.ph34.new ], [ %i.bk, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph34.new ], [ %niter.next.1, %bb.h ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %.033 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !239
  %i.bb = call noundef i8 @llvm.smax.i8(i8 %i.ay, i8 %i.ba) ; 2 uses
  store i8 %i.bb, ptr %i.as, align 4, !tbaa !2187
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !239
  %i.bd = call noundef i8 @llvm.smin.i8(i8 %i.ax, i8 %i.bc) ; 2 uses
  store i8 %i.bd, ptr %i.au, align 1, !tbaa !2188
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 %.033
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !239
  %i.bh = call noundef i8 @llvm.smax.i8(i8 %i.bb, i8 %i.bg) ; 4 uses
  store i8 %i.bh, ptr %i.as, align 4, !tbaa !2187
  %i.bi = load i8, ptr %i.bf, align 1, !tbaa !239
  %i.bj = call noundef i8 @llvm.smin.i8(i8 %i.bd, i8 %i.bi) ; 4 uses
  store i8 %i.bj, ptr %i.au, align 1, !tbaa !2188
  %i.bk = add nuw i64 %.033, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !2196

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph34
  %.epil.init = phi i8 [ %.promoted35, %.lr.ph34 ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init57 = phi i8 [ %.promoted, %.lr.ph34 ], [ %i.bh, %._crit_edge.loopexit.unr-lcssa ]
  %.033.epil.init = phi i64 [ 1, %.lr.ph34 ], [ %i.bk, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod60 = trunc i64 %i.av to i1
  call void @llvm.assume(i1 %lcmp.mod60)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 %.033.epil.init ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !239
  %i.bn = call noundef i8 @llvm.smax.i8(i8 %.epil.init57, i8 %i.bm) ; 2 uses
  store i8 %i.bn, ptr %i.as, align 4, !tbaa !2187
  %i.bo = load i8, ptr %i.bl, align 1, !tbaa !239
  %i.bp = call noundef i8 @llvm.smin.i8(i8 %.epil.init, i8 %i.bo) ; 2 uses
  store i8 %i.bp, ptr %i.au, align 1, !tbaa !2188
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.critedge25.._crit_edge_crit_edge
  %i.bq = phi i8 [ %.pre38, %.critedge25.._crit_edge_crit_edge ], [ %i.bh, %._crit_edge.loopexit.unr-lcssa ], [ %i.bn, %.epil.preheader ]
  %i.br = phi i8 [ %.pre, %.critedge25.._crit_edge_crit_edge ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ], [ %i.bp, %.epil.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2064
  store i8 %i.br, ptr %i.bs, align 8, !tbaa !239
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 6189
  %i.bu = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.bq, i8 noundef signext %i.br, ptr noundef nonnull align 1 dereferenceable(1) %i.bt) ; 2 uses
  %i.bv = zext i1 %i.bu to i8
  store i8 %i.bv, ptr %i.aq, align 1, !tbaa !2186
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 6187
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2117
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !239
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !2188
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 6190
  %i.cc = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.bz, i8 noundef signext %i.ca, ptr noundef nonnull align 1 dereferenceable(1) %i.cb)
  %i.cd = zext i1 %i.cc to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ce = phi i8 [ 0, %._crit_edge ], [ %i.cd, %bb.i ]
  store i8 %i.ce, ptr %i.aq, align 1, !tbaa !2186
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.j, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext, i8 noundef signext, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateIaLb1EaEC2ERNS_24ColumnDataCheckpointDataERKNS_15CompressionInfoE(ptr noundef nonnull align 8 dereferenceable(6280) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %2, align 8, !tbaa !137
  store i64 %i.b, ptr %i.a, align 8, !tbaa !137
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb26BitpackingCompressionStateIaLb1EaEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !145
  %i.d = tail call noundef nonnull align 8 dereferenceable(193) ptr @_ZN6duckdb24ColumnDataCheckpointData22GetCompressionFunctionENS_15CompressionTypeE(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 6)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !943
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6277 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.j, align 1, !tbaa !2114
  store i8 0, ptr %i.h, align 8, !tbaa !239
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2136
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2117
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 6264
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 6272
  store i8 1, ptr %i.o, align 8, !tbaa !2118
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6273
  store i64 0, ptr %i.i, align 8, !tbaa !2119
  store <8 x i8> <i8 127, i8 -128, i8 0, i8 127, i8 -128, i8 0, i8 0, i8 1>, ptr %i.n, align 8, !tbaa !239
  store i32 0, ptr %i.p, align 1
  invoke void @_ZN6duckdb26BitpackingCompressionStateIaLb1EaE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(6280) %0)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6256
  store ptr %0, ptr %i.q, align 8, !tbaa !2197
  %i.r = invoke noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = invoke noundef zeroext i8 @_ZN6duckdb8Settings3GetINS_26ForceBitpackingModeSettingENS_16DatabaseInstanceEEENSt9enable_ifIXsr3std7is_enumINT_11RETURN_TYPEEEE5valueES6_E4typeERKT0_(ptr noundef nonnull align 1 %i.r)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store i8 %i.s, ptr %i.j, align 1, !tbaa !2199
  ret void

bb.f:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  tail call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateIaLb1EaE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(6280) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.183", align 8 ; 8 uses
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2200, !nonnull !55, !align !133
  %i.c = tail call noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2200, !nonnull !55, !align !133
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb24ColumnDataCheckpointData7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2201, !nonnull !55, !align !133
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.m = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = sub i64 %i.k, %i.m
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133
  call void @_ZN6duckdb13ColumnSegment22CreateTransientSegmentERNS_16DatabaseInstanceERKNS_19CompressionFunctionERKNS_11LogicalTypeEmRNS_12BlockManagerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.183") align 8 %1, ptr noundef nonnull align 1 %i.c, ptr noundef nonnull align 8 dereferenceable(193) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(144) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !218
  store ptr null, ptr %1, align 8, !tbaa !218
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !218  ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !218
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.a
  call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.r) #30
  call void @_ZdlPv(ptr noundef nonnull %i.r) #32
  br label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.c)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2) #30 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !455
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !456
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !2202
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !455
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !456
end_hunk_2
begin_hunk_3_@_ZN6duckdb15BitpackingStateIssE19CalculateDeltaStatsEv:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.p, 12
  %n.vec = and i64 %i.p, 9223372036854775792      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <8 x i16>, ptr %i.w, align 2, !tbaa !670, !alias.scope !2349
  %wide.load53 = load <8 x i16>, ptr %i.x, align 2, !tbaa !670, !alias.scope !2349
  %i.y = getelementptr i8, ptr %i.w, i64 -2
  %i.z = getelementptr i8, ptr %i.w, i64 14
  %wide.load54 = load <8 x i16>, ptr %i.y, align 2, !tbaa !670, !alias.scope !2349
  %wide.load55 = load <8 x i16>, ptr %i.z, align 2, !tbaa !670, !alias.scope !2349
  %i.aa = sub <8 x i16> %wide.load, %wide.load54
  %i.ab = sub <8 x i16> %wide.load53, %wide.load55
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <8 x i16> %i.aa, ptr %i.ac, align 8, !tbaa !670, !alias.scope !2352, !noalias !2349
  store <8 x i16> %i.ab, ptr %i.ad, align 8, !tbaa !670, !alias.scope !2352, !noalias !2349
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !2354

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.critedge25, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1369

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec57 = and i64 %i.p, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index58 ; 2 uses
  %wide.load59 = load <4 x i16>, ptr %i.af, align 2, !tbaa !670, !alias.scope !2349
  %i.ag = getelementptr i8, ptr %i.af, i64 -2
  %wide.load60 = load <4 x i16>, ptr %i.ag, align 2, !tbaa !670, !alias.scope !2349
  %i.ah = sub <4 x i16> %wide.load59, %wide.load60
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index58
  store <4 x i16> %i.ah, ptr %i.ai, align 8, !tbaa !670, !alias.scope !2352, !noalias !2349
  %index.next61 = add nuw i64 %index58, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next61, %n.vec57
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2355

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n62 = icmp eq i64 %i.p, %n.vec57
  br i1 %cmp.n62, label %.critedge25, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02131.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec57, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.02131.prol = phi i64 [ %i.aq, %vec.epilog.scalar.ph.prol ], [ %.02131.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %.02131.prol ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !670
  %i.am = getelementptr i8, ptr %i.ak, i64 -2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !670
  %i.ao = sub i16 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.02131.prol
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !670
  %i.aq = add nuw nsw i64 %.02131.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !2356

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.02131.unr = phi i64 [ %.02131.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aq, %vec.epilog.scalar.ph.prol ]
  %i.ar = sub nsw i64 %.02131.ph, %i.p
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %.critedge25, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.02131 = phi i64 [ %i.bu, %vec.epilog.scalar.ph ], [ %.02131.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %.02131 ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !670
  %i.av = getelementptr i8, ptr %i.at, i64 -2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !670
  %i.ax = sub i16 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.02131
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !670
  %i.az = add nuw nsw i64 %.02131, 1              ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.az ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !670
  %i.bc = getelementptr i8, ptr %i.ba, i64 -2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !670
  %i.be = sub i16 %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.az
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !670
  %i.bg = add nuw nsw i64 %.02131, 2              ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !670
  %i.bj = getelementptr i8, ptr %i.bh, i64 -2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !670
  %i.bl = sub i16 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bg
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !670
  %i.bn = add nuw nsw i64 %.02131, 3              ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.bn ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !670
  %i.bq = getelementptr i8, ptr %i.bo, i64 -2
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !670
  %i.bs = sub i16 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bn
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !670
  %i.bu = add nuw nsw i64 %.02131, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.p
  br i1 %exitcond.not.3, label %.critedge25, label %vec.epilog.scalar.ph, !llvm.loop !2357

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !2282 ; 2 uses
  %.not29 = icmp sgt i64 %i.bv, 0
  br i1 %.not29, label %.lr.ph, label %.critedge25

.lr.ph:                                           ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4112
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.by = add nuw nsw i64 %.02030, 1              ; 2 uses
  %i.bz = load i64, ptr %i.c, align 8, !tbaa !2282 ; 2 uses
  %.not = icmp slt i64 %i.by, %i.bz
  br i1 %.not, label %bb.f, label %.critedge25, !llvm.loop !2358

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.02030 = phi i64 [ 0, %.lr.ph ], [ %i.by, %bb.e ] ; 3 uses
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !2277
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %.02030 ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !670
  %i.cd = getelementptr i8, ptr %i.cb, i64 -2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !670
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %.02030
  %i.cg = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIsssEEbT_T0_RT1_(i16 noundef signext %i.cc, i16 noundef signext %i.ce, ptr noundef nonnull align 2 dereferenceable(2) %i.cf)
  br i1 %i.cg, label %bb.e, label %.loopexit

.critedge25:                                      ; preds = %bb.e, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.d, %.preheader
  %i.ch = phi i64 [ %i.p, %middle.block ], [ %i.p, %.preheader ], [ %i.bv, %bb.d ], [ %i.p, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.p, %vec.epilog.middle.block ], [ %i.p, %vec.epilog.scalar.ph ], [ %i.bz, %bb.e ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 10298 ; 3 uses
  store i8 1, ptr %i.ci, align 2, !tbaa !2338
  %i.cj = icmp ugt i64 %i.ch, 1
  br i1 %i.cj, label %.lr.ph34, label %.critedge25.._crit_edge_crit_edge

.critedge25.._crit_edge_crit_edge:                ; preds = %.critedge25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 10286
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !2339
  %.phi.trans.insert38 = getelementptr inbounds nuw i8, ptr %0, i64 10288
  %.pre39 = load i16, ptr %.phi.trans.insert38, align 8, !tbaa !2278
  br label %._crit_edge

.lr.ph34:                                         ; preds = %.critedge25
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 10288 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4112 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 10286 ; 4 uses
  %.promoted = load i16, ptr %i.ck, align 8, !tbaa !2278 ; 2 uses
  %.promoted35 = load i16, ptr %i.cm, align 2, !tbaa !2339 ; 2 uses
  %i.cn = add i64 %i.ch, -1                       ; 3 uses
  %xtraiter66 = and i64 %i.cn, 1
  %i.co = icmp eq i64 %i.ch, 2
  br i1 %i.co, label %.epil.preheader, label %.lr.ph34.new

.lr.ph34.new:                                     ; preds = %.lr.ph34
  %unroll_iter = and i64 %i.cn, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph34.new
  %i.cp = phi i16 [ %.promoted35, %.lr.ph34.new ], [ %i.db, %bb.g ]
  %i.cq = phi i16 [ %.promoted, %.lr.ph34.new ], [ %i.cz, %bb.g ]
  %.033 = phi i64 [ 1, %.lr.ph34.new ], [ %i.dc, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph34.new ], [ %niter.next.1, %bb.g ]
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %.033 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !670
  %i.ct = call noundef i16 @llvm.smax.i16(i16 %i.cq, i16 %i.cs) ; 2 uses
  store i16 %i.ct, ptr %i.ck, align 8, !tbaa !2278
  %i.cu = load i16, ptr %i.cr, align 2, !tbaa !670
  %i.cv = call noundef i16 @llvm.smin.i16(i16 %i.cp, i16 %i.cu) ; 2 uses
  store i16 %i.cv, ptr %i.cm, align 2, !tbaa !2339
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %.033
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !670
  %i.cz = call noundef i16 @llvm.smax.i16(i16 %i.ct, i16 %i.cy) ; 4 uses
  store i16 %i.cz, ptr %i.ck, align 8, !tbaa !2278
  %i.da = load i16, ptr %i.cx, align 2, !tbaa !670
  %i.db = call noundef i16 @llvm.smin.i16(i16 %i.cv, i16 %i.da) ; 4 uses
  store i16 %i.db, ptr %i.cm, align 2, !tbaa !2339
  %i.dc = add nuw i64 %.033, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !2359

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod69.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod69.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph34
  %.epil.init = phi i16 [ %.promoted35, %.lr.ph34 ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init68 = phi i16 [ %.promoted, %.lr.ph34 ], [ %i.cz, %._crit_edge.loopexit.unr-lcssa ]
  %.033.epil.init = phi i64 [ 1, %.lr.ph34 ], [ %i.dc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod72 = trunc i64 %i.cn to i1
  call void @llvm.assume(i1 %lcmp.mod72)
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %.033.epil.init ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !670
  %i.df = call noundef i16 @llvm.smax.i16(i16 %.epil.init68, i16 %i.de) ; 2 uses
  store i16 %i.df, ptr %i.ck, align 8, !tbaa !2278
  %i.dg = load i16, ptr %i.dd, align 2, !tbaa !670
  %i.dh = call noundef i16 @llvm.smin.i16(i16 %.epil.init, i16 %i.dg) ; 2 uses
  store i16 %i.dh, ptr %i.cm, align 2, !tbaa !2339
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.critedge25.._crit_edge_crit_edge
  %i.di = phi i16 [ %.pre39, %.critedge25.._crit_edge_crit_edge ], [ %i.cz, %._crit_edge.loopexit.unr-lcssa ], [ %i.df, %.epil.preheader ]
  %i.dj = phi i16 [ %.pre, %.critedge25.._crit_edge_crit_edge ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ], [ %i.dh, %.epil.preheader ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4112
  store i16 %i.dj, ptr %i.dk, align 8, !tbaa !670
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 10290
  %i.dm = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIsssEEbT_T0_RT1_(i16 noundef signext %i.di, i16 noundef signext %i.dj, ptr noundef nonnull align 2 dereferenceable(2) %i.dl) ; 2 uses
  %i.dn = zext i1 %i.dm to i8
  store i8 %i.dn, ptr %i.ci, align 2, !tbaa !2338
  br i1 %i.dm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 10286
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !2277
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !670
  %i.ds = load i16, ptr %i.do, align 2, !tbaa !2339
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 10292
  %i.du = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIsssEEbT_T0_RT1_(i16 noundef signext %i.dr, i16 noundef signext %i.ds, ptr noundef nonnull align 2 dereferenceable(2) %i.dt)
  %i.dv = zext i1 %i.du to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.dw = phi i8 [ 0, %._crit_edge ], [ %i.dv, %bb.h ]
  store i8 %i.dw, ptr %i.ci, align 2, !tbaa !2338
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.i, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIsssEEbT_T0_RT1_(i16 noundef signext, i16 noundef signext, ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateIsLb1EsEC2ERNS_24ColumnDataCheckpointDataERKNS_15CompressionInfoE(ptr noundef nonnull align 8 dereferenceable(10384) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %2, align 8, !tbaa !137
  store i64 %i.b, ptr %i.a, align 8, !tbaa !137
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb26BitpackingCompressionStateIsLb1EsEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !145
  %i.d = tail call noundef nonnull align 8 dereferenceable(193) ptr @_ZN6duckdb24ColumnDataCheckpointData22GetCompressionFunctionENS_15CompressionTypeE(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 6)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !943
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10336
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10380 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.j, align 4, !tbaa !2275
  store i16 0, ptr %i.h, align 8, !tbaa !670
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4184
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2277
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10360
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10368
  store i16 -32768, ptr %i.o, align 8, !tbaa !2278
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10372
  store i16 0, ptr %i.p, align 4, !tbaa !2279
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10374
  store i8 1, ptr %i.q, align 2, !tbaa !2280
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10375
  store i8 1, ptr %i.r, align 1, !tbaa !2281
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10376
  store i64 0, ptr %i.i, align 8, !tbaa !2282
  store <4 x i16> <i16 32767, i16 -32768, i16 0, i16 32767>, ptr %i.n, align 8, !tbaa !670
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10370
  store i16 0, ptr %i.t, align 2, !tbaa !2283
  store i32 0, ptr %i.s, align 8
  invoke void @_ZN6duckdb26BitpackingCompressionStateIsLb1EsE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(10384) %0)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 10352
  store ptr %0, ptr %i.u, align 8, !tbaa !2360
  %i.v = invoke noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.w = invoke noundef zeroext i8 @_ZN6duckdb8Settings3GetINS_26ForceBitpackingModeSettingENS_16DatabaseInstanceEEENSt9enable_ifIXsr3std7is_enumINT_11RETURN_TYPEEEE5valueES6_E4typeERKT0_(ptr noundef nonnull align 1 %i.v)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store i8 %i.w, ptr %i.j, align 4, !tbaa !2362
  ret void

bb.f:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.x, %bb.f ]
  tail call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateIsLb1EsE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(10384) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.183", align 8 ; 8 uses
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2363, !nonnull !55, !align !133
  %i.c = tail call noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2363, !nonnull !55, !align !133
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb24ColumnDataCheckpointData7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2364, !nonnull !55, !align !133
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.m = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = sub i64 %i.k, %i.m
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133
  call void @_ZN6duckdb13ColumnSegment22CreateTransientSegmentERNS_16DatabaseInstanceERKNS_19CompressionFunctionERKNS_11LogicalTypeEmRNS_12BlockManagerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.183") align 8 %1, ptr noundef nonnull align 1 %i.c, ptr noundef nonnull align 8 dereferenceable(193) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(144) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !218
  store ptr null, ptr %1, align 8, !tbaa !218
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !218  ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !218
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.a
  call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.r) #30
  call void @_ZdlPv(ptr noundef nonnull %i.r) #32
  br label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.c)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2) #30 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !455
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !456
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_3
begin_hunk_4_@_ZN6duckdb15BitpackingStateIiiE19CalculateDeltaStatsEv:bb.a
  %i.o = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %i.m, i32 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.o, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !2398 ; 12 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph32, label %.critedge25

.lr.ph32:                                         ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2393 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8208 ; 7 uses
  %min.iters.check = icmp ult i64 %i.p, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph32
  %i.u = shl i64 %i.p, 2                          ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 %i.u
  %scevgep = getelementptr i8, ptr %i.v, i64 8208
  %scevgep50 = getelementptr i8, ptr %i.s, i64 -4
  %scevgep51 = getelementptr i8, ptr %i.s, i64 %i.u
  %bound0 = icmp ult ptr %i.t, %scevgep51
  %bound1 = icmp ult ptr %scevgep50, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !3, !alias.scope !2460
  %wide.load52 = load <4 x i32>, ptr %i.x, align 4, !tbaa !3, !alias.scope !2460
  %i.y = getelementptr i8, ptr %i.w, i64 -4
  %i.z = getelementptr i8, ptr %i.w, i64 12
  %wide.load53 = load <4 x i32>, ptr %i.y, align 4, !tbaa !3, !alias.scope !2460
  %wide.load54 = load <4 x i32>, ptr %i.z, align 4, !tbaa !3, !alias.scope !2460
  %i.aa = sub nsw <4 x i32> %wide.load, %wide.load53
  %i.ab = sub nsw <4 x i32> %wide.load52, %wide.load54
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x i32> %i.aa, ptr %i.ac, align 8, !tbaa !3, !alias.scope !2463, !noalias !2460
  store <4 x i32> %i.ab, ptr %i.ad, align 8, !tbaa !3, !alias.scope !2463, !noalias !2460
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !2465

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.critedge25, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph32, %middle.block
  %.02131.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph32 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.02131.prol = phi i64 [ %i.al, %scalar.ph.prol ], [ %.02131.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.02131.prol ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = getelementptr i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = sub nsw i32 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.02131.prol
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !3
  %i.al = add nuw nsw i64 %.02131.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2466

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.02131.unr = phi i64 [ %.02131.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %i.am = sub nsw i64 %.02131.ph, %i.p
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.critedge25, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02131 = phi i64 [ %i.bp, %scalar.ph ], [ %.02131.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.02131 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = getelementptr i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = sub nsw i32 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.02131
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = add nuw nsw i64 %.02131, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = getelementptr i8, ptr %i.av, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = sub nsw i32 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.au
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !3
  %i.bb = add nuw nsw i64 %.02131, 2              ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = getelementptr i8, ptr %i.bc, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = sub nsw i32 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.bb
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %i.bi = add nuw nsw i64 %.02131, 3              ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = getelementptr i8, ptr %i.bj, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = sub nsw i32 %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.bi
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !3
  %i.bp = add nuw nsw i64 %.02131, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bp, %i.p
  br i1 %exitcond.not.3, label %.critedge25, label %scalar.ph, !llvm.loop !2467

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !2398 ; 2 uses
  %.not29 = icmp sgt i64 %i.bq, 0
  br i1 %.not29, label %.lr.ph, label %.critedge25

.lr.ph:                                           ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8200
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8208
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.bt = add nuw nsw i64 %.02030, 1              ; 2 uses
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !2398 ; 2 uses
  %.not = icmp slt i64 %i.bt, %i.bu
  br i1 %.not, label %bb.f, label %.critedge25, !llvm.loop !2468

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.02030 = phi i64 [ 0, %.lr.ph ], [ %i.bt, %bb.e ] ; 3 uses
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !2393
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.02030 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = getelementptr i8, ptr %i.bw, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.02030
  %i.cb = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %i.bx, i32 noundef %i.bz, ptr noundef nonnull align 4 dereferenceable(4) %i.ca)
  br i1 %i.cb, label %bb.e, label %.loopexit

.critedge25:                                      ; preds = %bb.e, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.d, %.preheader
  %i.cc = phi i64 [ %i.p, %middle.block ], [ %i.p, %.preheader ], [ %i.bq, %bb.d ], [ %i.p, %scalar.ph.prol.loopexit ], [ %i.p, %scalar.ph ], [ %i.bu, %bb.e ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 18504 ; 3 uses
  store i8 1, ptr %i.cd, align 8, !tbaa !2451
  %i.ce = icmp ugt i64 %i.cc, 1
  br i1 %i.ce, label %.lr.ph34, label %.critedge25.._crit_edge_crit_edge

.critedge25.._crit_edge_crit_edge:                ; preds = %.critedge25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 18484
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !2452
  %.phi.trans.insert38 = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %.pre39 = load i32, ptr %.phi.trans.insert38, align 8, !tbaa !2394
  br label %._crit_edge

.lr.ph34:                                         ; preds = %.critedge25
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 18488 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8208 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 18484 ; 4 uses
  %.promoted = load i32, ptr %i.cf, align 8, !tbaa !2394 ; 2 uses
  %.promoted35 = load i32, ptr %i.ch, align 4, !tbaa !2452 ; 2 uses
  %i.ci = add i64 %i.cc, -1                       ; 3 uses
  %xtraiter58 = and i64 %i.ci, 1
  %i.cj = icmp eq i64 %i.cc, 2
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph34.new

.lr.ph34.new:                                     ; preds = %.lr.ph34
  %unroll_iter = and i64 %i.ci, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph34.new
  %i.ck = phi i32 [ %.promoted35, %.lr.ph34.new ], [ %i.cw, %bb.g ]
  %i.cl = phi i32 [ %.promoted, %.lr.ph34.new ], [ %i.cu, %bb.g ]
  %.033 = phi i64 [ 1, %.lr.ph34.new ], [ %i.cx, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph34.new ], [ %niter.next.1, %bb.g ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.033 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = call noundef i32 @llvm.smax.i32(i32 %i.cl, i32 %i.cn) ; 2 uses
  store i32 %i.co, ptr %i.cf, align 8, !tbaa !2394
  %i.cp = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.cq = call noundef i32 @llvm.smin.i32(i32 %i.ck, i32 %i.cp) ; 2 uses
  store i32 %i.cq, ptr %i.ch, align 4, !tbaa !2452
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.033
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = call noundef i32 @llvm.smax.i32(i32 %i.co, i32 %i.ct) ; 4 uses
  store i32 %i.cu, ptr %i.cf, align 8, !tbaa !2394
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cw = call noundef i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cv) ; 4 uses
  store i32 %i.cw, ptr %i.ch, align 4, !tbaa !2452
  %i.cx = add nuw i64 %.033, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !2469

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod61.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod61.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph34
  %.epil.init = phi i32 [ %.promoted35, %.lr.ph34 ], [ %i.cw, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init60 = phi i32 [ %.promoted, %.lr.ph34 ], [ %i.cu, %._crit_edge.loopexit.unr-lcssa ]
  %.033.epil.init = phi i64 [ 1, %.lr.ph34 ], [ %i.cx, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod64 = trunc i64 %i.ci to i1
  call void @llvm.assume(i1 %lcmp.mod64)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.033.epil.init ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = call noundef i32 @llvm.smax.i32(i32 %.epil.init60, i32 %i.cz) ; 2 uses
  store i32 %i.da, ptr %i.cf, align 8, !tbaa !2394
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.dc = call noundef i32 @llvm.smin.i32(i32 %.epil.init, i32 %i.db) ; 2 uses
  store i32 %i.dc, ptr %i.ch, align 4, !tbaa !2452
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.critedge25.._crit_edge_crit_edge
  %i.dd = phi i32 [ %.pre39, %.critedge25.._crit_edge_crit_edge ], [ %i.cu, %._crit_edge.loopexit.unr-lcssa ], [ %i.da, %.epil.preheader ]
  %i.de = phi i32 [ %.pre, %.critedge25.._crit_edge_crit_edge ], [ %i.cw, %._crit_edge.loopexit.unr-lcssa ], [ %i.dc, %.epil.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8208
  store i32 %i.de, ptr %i.df, align 8, !tbaa !3
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 18492
  %i.dh = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %i.dd, i32 noundef %i.de, ptr noundef nonnull align 4 dereferenceable(4) %i.dg) ; 2 uses
  %i.di = zext i1 %i.dh to i8
  store i8 %i.di, ptr %i.cd, align 8, !tbaa !2451
  br i1 %i.dh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 18484
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8200
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !2393
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = load i32, ptr %i.dj, align 4, !tbaa !2452
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.dp = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %i.dm, i32 noundef %i.dn, ptr noundef nonnull align 4 dereferenceable(4) %i.do)
  %i.dq = zext i1 %i.dp to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.dr = phi i8 [ 0, %._crit_edge ], [ %i.dq, %bb.h ]
  store i8 %i.dr, ptr %i.cd, align 8, !tbaa !2451
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.i, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateIiLb1EiEC2ERNS_24ColumnDataCheckpointDataERKNS_15CompressionInfoE(ptr noundef nonnull align 8 dereferenceable(18592) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %2, align 8, !tbaa !137
  store i64 %i.b, ptr %i.a, align 8, !tbaa !137
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb26BitpackingCompressionStateIiLb1EiEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !145
  %i.d = tail call noundef nonnull align 8 dereferenceable(193) ptr @_ZN6duckdb24ColumnDataCheckpointData22GetCompressionFunctionENS_15CompressionTypeE(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 6)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !943
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18528
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18586 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.j, align 2, !tbaa !2391
  store i32 0, ptr %i.h, align 8, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8280
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2393
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18552
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18568
  store i32 -2147483648, ptr %i.o, align 8, !tbaa !2394
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18576
  store i32 0, ptr %i.p, align 8, !tbaa !2395
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 18580
  store i8 1, ptr %i.q, align 4, !tbaa !2396
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18581
  store i8 1, ptr %i.r, align 1, !tbaa !2397
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 18582
  store i64 0, ptr %i.i, align 8, !tbaa !2398
  store <4 x i32> <i32 2147483647, i32 -2147483648, i32 0, i32 2147483647>, ptr %i.n, align 8, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18572
  store i32 0, ptr %i.t, align 4, !tbaa !2399
  store i32 0, ptr %i.s, align 2
  invoke void @_ZN6duckdb26BitpackingCompressionStateIiLb1EiE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(18592) %0)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 18544
  store ptr %0, ptr %i.u, align 8, !tbaa !2470
  %i.v = invoke noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.w = invoke noundef zeroext i8 @_ZN6duckdb8Settings3GetINS_26ForceBitpackingModeSettingENS_16DatabaseInstanceEEENSt9enable_ifIXsr3std7is_enumINT_11RETURN_TYPEEEE5valueES6_E4typeERKT0_(ptr noundef nonnull align 1 %i.v)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store i8 %i.w, ptr %i.j, align 2, !tbaa !2472
  ret void

bb.f:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.x, %bb.f ]
  tail call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateIiLb1EiE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(18592) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.183", align 8 ; 8 uses
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2473, !nonnull !55, !align !133
  %i.c = tail call noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2473, !nonnull !55, !align !133
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb24ColumnDataCheckpointData7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2474, !nonnull !55, !align !133
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.m = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = sub i64 %i.k, %i.m
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133
  call void @_ZN6duckdb13ColumnSegment22CreateTransientSegmentERNS_16DatabaseInstanceERKNS_19CompressionFunctionERKNS_11LogicalTypeEmRNS_12BlockManagerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.183") align 8 %1, ptr noundef nonnull align 1 %i.c, ptr noundef nonnull align 8 dereferenceable(193) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(144) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !218
  store ptr null, ptr %1, align 8, !tbaa !218
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !218  ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !218
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.a
  call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.r) #30
  call void @_ZdlPv(ptr noundef nonnull %i.r) #32
  br label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.c)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2) #30 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !455
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !456
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_4
begin_hunk_5_@_ZN6duckdb15BitpackingStateIllE5FlushINS_21EmptyBitpackingWriterEEEbv:bb.a
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIlLb0EEEhT_.exit27, label %.preheader.i.i21

.preheader.i.i21:                                 ; preds = %bb.p, %.preheader.i.i21
  %.012.i.i22 = phi i64 [ %i.ch, %.preheader.i.i21 ], [ %i.ce, %bb.p ]
  %.0811.i.i23 = phi i8 [ %i.cg, %.preheader.i.i21 ], [ 0, %bb.p ]
  %i.cg = add i8 %.0811.i.i23, 1                  ; 3 uses
  %i.ch = ashr i64 %.012.i.i22, 1                 ; 2 uses
  %.not.i.i24 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i24, label %bb.q, label %.preheader.i.i21, !llvm.loop !2561

bb.q:                                             ; preds = %.preheader.i.i21
  %i.ci = icmp ugt i8 %i.cg, 56
  %..i.i.i25 = select i1 %i.ci, i8 64, i8 %i.cg
  %i.cj = zext i8 %..i.i.i25 to i64
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIlLb0EEEhT_.exit27

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIlLb0EEEhT_.exit27: ; preds = %bb.p, %bb.q
  %.09.i.i26 = phi i64 [ %i.cj, %bb.q ], [ 0, %bb.p ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !2500
  %i.cm = load i64, ptr %i.s, align 8, !tbaa !2501
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !2508
  %.not.i28 = icmp eq i64 %i.cn, 0
  br i1 %.not.i28, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit33, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIlLb0EEEhT_.exit27, %.lr.ph.i29
  %.05.i30 = phi i64 [ %i.cr, %.lr.ph.i29 ], [ 0, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIlLb0EEEhT_.exit27 ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.05.i30 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !21
  %i.cq = sub i64 %i.cp, %i.cm
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !21
  %i.cr = add nuw i64 %.05.i30, 1                 ; 2 uses
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !2508 ; 4 uses
  %i.ct = icmp ult i64 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph.i29, label %_ZN6duckdb15BitpackingStateIllE24SubtractFrameOfReferenceIlEEvPT_S3_.exit31, !llvm.loop !2563

_ZN6duckdb15BitpackingStateIllE24SubtractFrameOfReferenceIlEEvPT_S3_.exit31: ; preds = %.lr.ph.i29
  %i.cu = trunc i64 %i.cs to i32
  %i.cv = and i32 %i.cu, 31                       ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit33, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb15BitpackingStateIllE24SubtractFrameOfReferenceIlEEvPT_S3_.exit31
  %i.cx = add i64 %i.cs, 32
  %i.cy = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.cv)
  %i.cz = sub i64 %i.cx, %i.cy
  br label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit33

_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit33: ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIlLb0EEEhT_.exit27, %_ZN6duckdb15BitpackingStateIllE24SubtractFrameOfReferenceIlEEvPT_S3_.exit31, %bb.r
  %.0.i.i32 = phi i64 [ %i.cz, %bb.r ], [ %i.cs, %_ZN6duckdb15BitpackingStateIllE24SubtractFrameOfReferenceIlEEvPT_S3_.exit31 ], [ 0, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIlLb0EEEhT_.exit27 ]
  %i.da = mul i64 %.0.i.i32, %.09.i.i26
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 34840 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !2558
  %i.de = add i64 %i.dd, 16
  %i.df = add i64 %i.de, %i.db
  store i64 %i.df, ptr %i.dc, align 8, !tbaa !2558
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %.thread, %bb.a, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit33, %bb.i, %bb.e
  %.1 = phi i1 [ true, %bb.o ], [ true, %bb.e ], [ true, %bb.i ], [ true, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit33 ], [ true, %bb.a ], [ false, %.thread ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15BitpackingStateIllE19CalculateDeltaStatsEv(ptr noundef nonnull align 8 dereferenceable(34919) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 34864 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 34832 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2508
  %i.e = icmp ugt i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34912
  %i.g = load i8, ptr %i.f, align 8, !range !54
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.b, align 8, !tbaa !2503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 34856 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !2501
  %i.l = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.k, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.b, align 8, !tbaa !2503
  %i.n = load i64, ptr %i.j, align 8, !tbaa !2501
  %i.o = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.o, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !2508 ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph32, label %.critedge25

.lr.ph32:                                         ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2500
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16400
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph32, %bb.d
  %.02131 = phi i64 [ 0, %.lr.ph32 ], [ %i.aa, %bb.d ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.02131 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21
  %i.w = getelementptr i8, ptr %i.u, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21
  %i.y = sub nsw i64 %i.v, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.02131
  store i64 %i.y, ptr %i.z, align 8, !tbaa !21
  %i.aa = add nuw nsw i64 %.02131, 1              ; 2 uses
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !2508 ; 2 uses
  %i.ac = icmp slt i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %.critedge25, !llvm.loop !2564

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.c
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !2508 ; 2 uses
  %.not29 = icmp sgt i64 %i.ad, 0
  br i1 %.not29, label %.lr.ph, label %.critedge25

.lr.ph:                                           ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16400
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ag = add nuw nsw i64 %.02030, 1              ; 2 uses
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !2508 ; 2 uses
  %.not = icmp slt i64 %i.ag, %i.ah
  br i1 %.not, label %bb.g, label %.critedge25, !llvm.loop !2565

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.02030 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %bb.f ] ; 3 uses
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !2500
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.02030 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !21
  %i.al = getelementptr i8, ptr %i.aj, i64 -8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.02030
  %i.ao = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.ak, i64 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  br i1 %i.ao, label %bb.f, label %.loopexit

.critedge25:                                      ; preds = %bb.f, %bb.d, %bb.e, %.preheader
  %i.ap = phi i64 [ %i.ab, %bb.d ], [ %i.p, %.preheader ], [ %i.ad, %bb.e ], [ %i.ah, %bb.f ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 34916 ; 3 uses
  store i8 1, ptr %i.aq, align 4, !tbaa !2560
  %i.ar = icmp ugt i64 %i.ap, 1
  br i1 %i.ar, label %.lr.ph34, label %.critedge25.._crit_edge_crit_edge

.critedge25.._crit_edge_crit_edge:                ; preds = %.critedge25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 34880
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !2502
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %0, i64 34888
  %.pre38 = load i64, ptr %.phi.trans.insert37, align 8, !tbaa !2504
  br label %._crit_edge

.lr.ph34:                                         ; preds = %.critedge25
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 34888 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 34880 ; 4 uses
  %.promoted = load i64, ptr %i.as, align 8, !tbaa !2504 ; 2 uses
  %.promoted35 = load i64, ptr %i.au, align 8, !tbaa !2502 ; 2 uses
  %i.av = add i64 %i.ap, -1                       ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.aw = icmp eq i64 %i.ap, 2
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph34.new

.lr.ph34.new:                                     ; preds = %.lr.ph34
  %unroll_iter = and i64 %i.av, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph34.new
  %i.ax = phi i64 [ %.promoted35, %.lr.ph34.new ], [ %i.bj, %bb.h ]
  %i.ay = phi i64 [ %.promoted, %.lr.ph34.new ], [ %i.bh, %bb.h ]
  %.033 = phi i64 [ 1, %.lr.ph34.new ], [ %i.bk, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph34.new ], [ %niter.next.1, %bb.h ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.033 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !21
  %i.bb = call noundef i64 @llvm.smax.i64(i64 %i.ay, i64 %i.ba) ; 2 uses
  store i64 %i.bb, ptr %i.as, align 8, !tbaa !2504
  %i.bc = load i64, ptr %i.az, align 8, !tbaa !21
  %i.bd = call noundef i64 @llvm.smin.i64(i64 %i.ax, i64 %i.bc) ; 2 uses
  store i64 %i.bd, ptr %i.au, align 8, !tbaa !2502
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.033
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !21
  %i.bh = call noundef i64 @llvm.smax.i64(i64 %i.bb, i64 %i.bg) ; 4 uses
  store i64 %i.bh, ptr %i.as, align 8, !tbaa !2504
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !21
  %i.bj = call noundef i64 @llvm.smin.i64(i64 %i.bd, i64 %i.bi) ; 4 uses
  store i64 %i.bj, ptr %i.au, align 8, !tbaa !2502
  %i.bk = add nuw i64 %.033, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !2566

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph34
  %.epil.init = phi i64 [ %.promoted35, %.lr.ph34 ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init57 = phi i64 [ %.promoted, %.lr.ph34 ], [ %i.bh, %._crit_edge.loopexit.unr-lcssa ]
  %.033.epil.init = phi i64 [ 1, %.lr.ph34 ], [ %i.bk, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod60 = trunc i64 %i.av to i1
  call void @llvm.assume(i1 %lcmp.mod60)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.033.epil.init ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !21
  %i.bn = call noundef i64 @llvm.smax.i64(i64 %.epil.init57, i64 %i.bm) ; 2 uses
  store i64 %i.bn, ptr %i.as, align 8, !tbaa !2504
  %i.bo = load i64, ptr %i.bl, align 8, !tbaa !21
  %i.bp = call noundef i64 @llvm.smin.i64(i64 %.epil.init, i64 %i.bo) ; 2 uses
  store i64 %i.bp, ptr %i.au, align 8, !tbaa !2502
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.critedge25.._crit_edge_crit_edge
  %i.bq = phi i64 [ %.pre38, %.critedge25.._crit_edge_crit_edge ], [ %i.bh, %._crit_edge.loopexit.unr-lcssa ], [ %i.bn, %.epil.preheader ]
  %i.br = phi i64 [ %.pre, %.critedge25.._crit_edge_crit_edge ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ], [ %i.bp, %.epil.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16400
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 34896
  %i.bu = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.bq, i64 noundef %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.bt) ; 2 uses
  %i.bv = zext i1 %i.bu to i8
  store i8 %i.bv, ptr %i.aq, align 4, !tbaa !2560
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 34880
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2500
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !21
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !2502
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 34904
  %i.cc = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.bz, i64 noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
  %i.cd = zext i1 %i.cc to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ce = phi i8 [ 0, %._crit_edge ], [ %i.cd, %bb.i ]
  store i8 %i.ce, ptr %i.aq, align 4, !tbaa !2560
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.j, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateIlLb1ElEC2ERNS_24ColumnDataCheckpointDataERKNS_15CompressionInfoE(ptr noundef nonnull align 8 dereferenceable(35000) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %2, align 8, !tbaa !137
  store i64 %i.b, ptr %i.a, align 8, !tbaa !137
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb26BitpackingCompressionStateIlLb1ElEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !145
  %i.d = tail call noundef nonnull align 8 dereferenceable(193) ptr @_ZN6duckdb24ColumnDataCheckpointData22GetCompressionFunctionENS_15CompressionTypeE(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 6)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !943
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 34912
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 34998 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 34920
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.j, align 2, !tbaa !2498
  store i64 0, ptr %i.h, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16472
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2500
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 34936
  store i64 9223372036854775807, ptr %i.n, align 8, !tbaa !2501
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 34960
  store i64 9223372036854775807, ptr %i.o, align 8, !tbaa !2502
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 34944
  store i64 -9223372036854775808, ptr %i.p, align 8, !tbaa !2503
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 34968
  store i64 -9223372036854775808, ptr %i.q, align 8, !tbaa !2504
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 34984
  store i64 0, ptr %i.r, align 8, !tbaa !2505
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 34992
  store i8 1, ptr %i.s, align 8, !tbaa !2506
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 34993
  store i8 1, ptr %i.t, align 1, !tbaa !2507
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 34994
  store i64 0, ptr %i.i, align 8, !tbaa !2508
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 34952
  store i64 0, ptr %i.v, align 8, !tbaa !2509
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 34976
  store i64 0, ptr %i.w, align 8, !tbaa !2510
  store i32 0, ptr %i.u, align 2
  invoke void @_ZN6duckdb26BitpackingCompressionStateIlLb1ElE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(35000) %0)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 34928
  store ptr %0, ptr %i.x, align 8, !tbaa !2567
  %i.y = invoke noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.z = invoke noundef zeroext i8 @_ZN6duckdb8Settings3GetINS_26ForceBitpackingModeSettingENS_16DatabaseInstanceEEENSt9enable_ifIXsr3std7is_enumINT_11RETURN_TYPEEEE5valueES6_E4typeERKT0_(ptr noundef nonnull align 1 %i.y)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store i8 %i.z, ptr %i.j, align 2, !tbaa !2569
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.aa, %bb.f ]
  tail call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateIlLb1ElE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(35000) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.183", align 8 ; 8 uses
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2570, !nonnull !55, !align !133
  %i.c = tail call noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2570, !nonnull !55, !align !133
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb24ColumnDataCheckpointData7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2571, !nonnull !55, !align !133
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.m = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = sub i64 %i.k, %i.m
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133
  call void @_ZN6duckdb13ColumnSegment22CreateTransientSegmentERNS_16DatabaseInstanceERKNS_19CompressionFunctionERKNS_11LogicalTypeEmRNS_12BlockManagerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.183") align 8 %1, ptr noundef nonnull align 1 %i.c, ptr noundef nonnull align 8 dereferenceable(193) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(144) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !218
  store ptr null, ptr %1, align 8, !tbaa !218
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !218  ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !218
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.a
  call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.r) #30
  call void @_ZdlPv(ptr noundef nonnull %i.r) #32
  br label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.c)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2) #30 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.e unwind label %bb.h

end_hunk_5
begin_hunk_6_@_ZN6duckdb15BitpackingStateIhaE5FlushINS_21EmptyBitpackingWriterEEEbv:bb.a

_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit.thread: ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 6168 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !2644
  %i.az = add i64 %i.ay, 10
  br label %bb.k

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.05.i = phi i64 [ %i.bd, %.lr.ph.i ], [ 0, %bb.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %.05.i ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !239
  %i.bc = sub i8 %i.bb, %i.ad
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !239
  %i.bd = add nuw i64 %.05.i, 1                   ; 2 uses
  %i.be = load i64, ptr %i.a, align 8, !tbaa !2595 ; 4 uses
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.i, label %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit, !llvm.loop !2651

_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit: ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 6168 ; 5 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !2644
  %i.bi = add i64 %i.bh, 10                       ; 2 uses
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !2644
  %i.bj = trunc i64 %i.be to i32
  %i.bk = and i32 %i.bj, 31                       ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit
  %i.bm = add i64 %i.be, 32
  %i.bn = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.bk)
  %i.bo = sub i64 %i.bm, %i.bn
  %.pre29 = load i64, ptr %i.bg, align 8, !tbaa !2644
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit.thread, %bb.j, %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit
  %i.bp = phi ptr [ %i.bg, %bb.j ], [ %i.bg, %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit ], [ %i.ax, %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit.thread ]
  %i.bq = phi i64 [ %.pre29, %bb.j ], [ %i.bi, %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit ], [ %i.az, %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit.thread ]
  %.0.i.i = phi i64 [ %i.bo, %bb.j ], [ %i.be, %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit ], [ 0, %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIaEEvPT_S3_.exit.thread ]
  %i.br = zext nneg i8 %i.ao to i64
  %i.bs = mul i64 %.0.i.i, %i.br
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add i64 %i.bt, %i.bq
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !2644
  br label %bb.n

.thread:                                          ; preds = %..thread_crit_edge, %._crit_edge26
  %i.bv = phi i8 [ %.pre30, %..thread_crit_edge ], [ %i.ar, %._crit_edge26 ]
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.thread
  %i.bx = load i8, ptr %i.t, align 2, !tbaa !2650
  %i.by = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %i.bx, i1 false)
  %i.bz = sub nuw nsw i8 8, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2593
  %i.cc = load i8, ptr %i.s, align 8, !tbaa !2604
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !2595
  %.not.i17 = icmp eq i64 %i.cd, 0
  br i1 %.not.i17, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit21, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.l, %.lr.ph.i18
  %.05.i19 = phi i64 [ %i.ch, %.lr.ph.i18 ], [ 0, %bb.l ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.05.i19 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !239
  %i.cg = sub i8 %i.cf, %i.cc
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !239
  %i.ch = add nuw i64 %.05.i19, 1                 ; 2 uses
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !2595 ; 4 uses
  %i.cj = icmp ult i64 %i.ch, %i.ci
  br i1 %i.cj, label %.lr.ph.i18, label %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIhEEvPT_S3_.exit, !llvm.loop !2652

_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIhEEvPT_S3_.exit: ; preds = %.lr.ph.i18
  %i.ck = trunc i64 %i.ci to i32
  %i.cl = and i32 %i.ck, 31                       ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit21, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIhEEvPT_S3_.exit
  %i.cn = add i64 %i.ci, 32
  %i.co = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.cl)
  %i.cp = sub i64 %i.cn, %i.co
  br label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit21

_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit21: ; preds = %bb.l, %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIhEEvPT_S3_.exit, %bb.m
  %.0.i.i20 = phi i64 [ %i.cp, %bb.m ], [ %i.ci, %_ZN6duckdb15BitpackingStateIhaE24SubtractFrameOfReferenceIhEEvPT_S3_.exit ], [ 0, %bb.l ]
  %i.cq = zext nneg i8 %i.bz to i64
  %i.cr = mul i64 %.0.i.i20, %i.cq
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 6168 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !2644
  %i.cv = add i64 %i.cu, 9
  %i.cw = add i64 %i.cv, %i.cs
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !2644
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %.thread, %bb.a, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit21, %bb.h, %bb.e
  %.1 = phi i1 [ true, %bb.k ], [ true, %bb.e ], [ true, %bb.h ], [ true, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit21 ], [ true, %bb.a ], [ false, %.thread ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15BitpackingStateIhaE19CalculateDeltaStatsEv(ptr noundef nonnull align 8 dereferenceable(6198) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6185
  %i.b = load i8, ptr %i.a, align 1, !tbaa !2605
  %i.c = icmp slt i8 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6160 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2595 ; 3 uses
  %i.f = icmp ugt i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6191
  %i.h = load i8, ptr %i.g, align 1, !range !54
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.b
  %i.j = icmp sgt i64 %i.e, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6195 ; 2 uses
  store i8 1, ptr %i.k, align 1, !tbaa !2646
  br label %.lr.ph27

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2593
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2064
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.01924 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.01924 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !239
  %i.q = getelementptr i8, ptr %i.o, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !239
  %i.s = sub i8 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.01924
  store i8 %i.s, ptr %i.t, align 1, !tbaa !239
  %i.u = add nuw nsw i64 %.01924, 1               ; 2 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !2595 ; 3 uses
  %i.w = icmp slt i64 %i.u, %i.v
  br i1 %i.w, label %bb.c, label %._crit_edge, !llvm.loop !2653

._crit_edge:                                      ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6195 ; 3 uses
  store i8 1, ptr %i.x, align 1, !tbaa !2646
  %i.y = icmp ugt i64 %i.v, 1
  br i1 %i.y, label %.lr.ph27, label %._crit_edge.._crit_edge28_crit_edge

._crit_edge.._crit_edge28_crit_edge:              ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 6187
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !2648
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %0, i64 6188
  %.pre32 = load i8, ptr %.phi.trans.insert31, align 4, !tbaa !2647
  br label %._crit_edge28

.lr.ph27:                                         ; preds = %._crit_edge.thread, %._crit_edge
  %i.z = phi ptr [ %i.k, %._crit_edge.thread ], [ %i.x, %._crit_edge ] ; 2 uses
  %.lcssa35 = phi i64 [ %i.e, %._crit_edge.thread ], [ %i.v, %._crit_edge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6188 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 6187 ; 4 uses
  %.promoted = load i8, ptr %i.aa, align 4, !tbaa !2647 ; 2 uses
  %.promoted29 = load i8, ptr %i.ac, align 1, !tbaa !2648 ; 2 uses
  %i.ad = add i64 %.lcssa35, -1                   ; 3 uses
  %xtraiter = and i64 %i.ad, 1
  %i.ae = icmp eq i64 %.lcssa35, 2
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph27.new

.lr.ph27.new:                                     ; preds = %.lr.ph27
  %unroll_iter = and i64 %i.ad, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph27.new
  %i.af = phi i8 [ %.promoted29, %.lr.ph27.new ], [ %i.ar, %bb.d ]
  %i.ag = phi i8 [ %.promoted, %.lr.ph27.new ], [ %i.ap, %bb.d ]
  %.025 = phi i64 [ 1, %.lr.ph27.new ], [ %i.as, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph27.new ], [ %niter.next.1, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.025 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !239
  %i.aj = tail call noundef i8 @llvm.smax.i8(i8 %i.ag, i8 %i.ai) ; 2 uses
  store i8 %i.aj, ptr %i.aa, align 4, !tbaa !2647
  %i.ak = load i8, ptr %i.ah, align 1, !tbaa !239
  %i.al = tail call noundef i8 @llvm.smin.i8(i8 %i.af, i8 %i.ak) ; 2 uses
  store i8 %i.al, ptr %i.ac, align 1, !tbaa !2648
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.025
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !239
  %i.ap = tail call noundef i8 @llvm.smax.i8(i8 %i.aj, i8 %i.ao) ; 4 uses
  store i8 %i.ap, ptr %i.aa, align 4, !tbaa !2647
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !239
  %i.ar = tail call noundef i8 @llvm.smin.i8(i8 %i.al, i8 %i.aq) ; 4 uses
  store i8 %i.ar, ptr %i.ac, align 1, !tbaa !2648
  %i.as = add nuw i64 %.025, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge28.loopexit.unr-lcssa, label %bb.d, !llvm.loop !2654

._crit_edge28.loopexit.unr-lcssa:                 ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge28, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge28.loopexit.unr-lcssa, %.lr.ph27
  %.epil.init = phi i8 [ %.promoted29, %.lr.ph27 ], [ %i.ar, %._crit_edge28.loopexit.unr-lcssa ]
  %.epil.init43 = phi i8 [ %.promoted, %.lr.ph27 ], [ %i.ap, %._crit_edge28.loopexit.unr-lcssa ]
  %.025.epil.init = phi i64 [ 1, %.lr.ph27 ], [ %i.as, %._crit_edge28.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i64 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.025.epil.init ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !239
  %i.av = tail call noundef i8 @llvm.smax.i8(i8 %.epil.init43, i8 %i.au) ; 2 uses
  store i8 %i.av, ptr %i.aa, align 4, !tbaa !2647
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !239
  %i.ax = tail call noundef i8 @llvm.smin.i8(i8 %.epil.init, i8 %i.aw) ; 2 uses
  store i8 %i.ax, ptr %i.ac, align 1, !tbaa !2648
  br label %._crit_edge28

._crit_edge28:                                    ; preds = %.epil.preheader, %._crit_edge28.loopexit.unr-lcssa, %._crit_edge.._crit_edge28_crit_edge
  %i.ay = phi ptr [ %i.x, %._crit_edge.._crit_edge28_crit_edge ], [ %i.z, %._crit_edge28.loopexit.unr-lcssa ], [ %i.z, %.epil.preheader ] ; 2 uses
  %i.az = phi i8 [ %.pre32, %._crit_edge.._crit_edge28_crit_edge ], [ %i.ap, %._crit_edge28.loopexit.unr-lcssa ], [ %i.av, %.epil.preheader ]
  %i.ba = phi i8 [ %.pre, %._crit_edge.._crit_edge28_crit_edge ], [ %i.ar, %._crit_edge28.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2064
  store i8 %i.ba, ptr %i.bb, align 8, !tbaa !239
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 6189
  %i.bd = tail call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.az, i8 noundef signext %i.ba, ptr noundef nonnull align 1 dereferenceable(1) %i.bc) ; 2 uses
  %i.be = zext i1 %i.bd to i8
  store i8 %i.be, ptr %i.ay, align 1, !tbaa !2646
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge28
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 6187
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2593
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !239
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !2648
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 6190
  %i.bl = tail call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.bi, i8 noundef signext %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.bk)
  %i.bm = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge28
  %i.bn = phi i8 [ 0, %._crit_edge28 ], [ %i.bm, %bb.e ]
  store i8 %i.bn, ptr %i.ay, align 1, !tbaa !2646
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f
  ret void
}

declare noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIhhhEEbT_T0_RT1_(i8 noundef zeroext, i8 noundef zeroext, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateIhLb1EaEC2ERNS_24ColumnDataCheckpointDataERKNS_15CompressionInfoE(ptr noundef nonnull align 8 dereferenceable(6280) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %2, align 8, !tbaa !137
  store i64 %i.b, ptr %i.a, align 8, !tbaa !137
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb26BitpackingCompressionStateIhLb1EaEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !145
  %i.d = tail call noundef nonnull align 8 dereferenceable(193) ptr @_ZN6duckdb24ColumnDataCheckpointData22GetCompressionFunctionENS_15CompressionTypeE(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 6)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !943
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6277 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.j, align 1, !tbaa !2591
  store i8 0, ptr %i.h, align 8, !tbaa !239
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2136
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2593
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 6264
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 6272
  store i8 1, ptr %i.o, align 8, !tbaa !2594
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6273
  store i64 0, ptr %i.i, align 8, !tbaa !2595
  store <8 x i8> <i8 -1, i8 0, i8 0, i8 127, i8 -128, i8 0, i8 0, i8 1>, ptr %i.n, align 8, !tbaa !239
  store i32 0, ptr %i.p, align 1
  invoke void @_ZN6duckdb26BitpackingCompressionStateIhLb1EaE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(6280) %0)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6256
  store ptr %0, ptr %i.q, align 8, !tbaa !2655
  %i.r = invoke noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = invoke noundef zeroext i8 @_ZN6duckdb8Settings3GetINS_26ForceBitpackingModeSettingENS_16DatabaseInstanceEEENSt9enable_ifIXsr3std7is_enumINT_11RETURN_TYPEEEE5valueES6_E4typeERKT0_(ptr noundef nonnull align 1 %i.r)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store i8 %i.s, ptr %i.j, align 1, !tbaa !2657
  ret void

bb.f:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  tail call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateIhLb1EaE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(6280) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.183", align 8 ; 8 uses
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2658, !nonnull !55, !align !133
  %i.c = tail call noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2658, !nonnull !55, !align !133
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb24ColumnDataCheckpointData7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2659, !nonnull !55, !align !133
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.m = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = sub i64 %i.k, %i.m
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133
  call void @_ZN6duckdb13ColumnSegment22CreateTransientSegmentERNS_16DatabaseInstanceERKNS_19CompressionFunctionERKNS_11LogicalTypeEmRNS_12BlockManagerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.183") align 8 %1, ptr noundef nonnull align 1 %i.c, ptr noundef nonnull align 8 dereferenceable(193) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(144) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !218
  store ptr null, ptr %1, align 8, !tbaa !218
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !218  ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !218
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.a
  call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.r) #30
  call void @_ZdlPv(ptr noundef nonnull %i.r) #32
  br label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.c)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2) #30 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !455
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !456
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !2660
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !455
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
end_hunk_6
begin_hunk_7_@_ZN6duckdb15BitpackingStateItsE19CalculateDeltaStatsEv
define linkonce_odr void @_ZN6duckdb15BitpackingStateItsE19CalculateDeltaStatsEv(ptr noundef nonnull align 8 dereferenceable(10301) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10282
  %i.b = load i16, ptr %i.a, align 2, !tbaa !2698
  %i.c = icmp slt i16 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10256
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2688 ; 15 uses
  %i.f = icmp ugt i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10294
  %i.h = load i8, ptr %i.g, align 2, !range !54
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.b
  %i.j = icmp sgt i64 %i.e, 0
  br i1 %i.j, label %iter.check, label %.lr.ph27

iter.check:                                       ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2683 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4112 ; 8 uses
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.n = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 4112
  %scevgep35 = getelementptr i8, ptr %i.l, i64 -2
  %scevgep36 = getelementptr i8, ptr %i.l, i64 %i.n
  %bound0 = icmp ult ptr %i.m, %scevgep36
  %bound1 = icmp ult ptr %scevgep35, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check37 = icmp ult i64 %i.e, 16
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.e, 12
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <8 x i16>, ptr %i.p, align 2, !tbaa !670, !alias.scope !2751
  %wide.load38 = load <8 x i16>, ptr %i.q, align 2, !tbaa !670, !alias.scope !2751
  %i.r = getelementptr i8, ptr %i.p, i64 -2
  %i.s = getelementptr i8, ptr %i.p, i64 14
  %wide.load39 = load <8 x i16>, ptr %i.r, align 2, !tbaa !670, !alias.scope !2751
  %wide.load40 = load <8 x i16>, ptr %i.s, align 2, !tbaa !670, !alias.scope !2751
  %i.t = sub <8 x i16> %wide.load, %wide.load39
  %i.u = sub <8 x i16> %wide.load38, %wide.load40
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <8 x i16> %i.t, ptr %i.v, align 8, !tbaa !670, !alias.scope !2754, !noalias !2751
  store <8 x i16> %i.u, ptr %i.w, align 8, !tbaa !670, !alias.scope !2754, !noalias !2751
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2756

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.lr.ph27, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1369

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %i.e, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index43 ; 2 uses
  %wide.load44 = load <4 x i16>, ptr %i.y, align 2, !tbaa !670, !alias.scope !2751
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %wide.load45 = load <4 x i16>, ptr %i.z, align 2, !tbaa !670, !alias.scope !2751
  %i.aa = sub <4 x i16> %wide.load44, %wide.load45
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index43
  store <4 x i16> %i.aa, ptr %i.ab, align 8, !tbaa !670, !alias.scope !2754, !noalias !2751
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next46, %n.vec42
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2757

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %i.e, %n.vec42
  br i1 %cmp.n47, label %.lr.ph27, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01924.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01924.prol = phi i64 [ %i.aj, %vec.epilog.scalar.ph.prol ], [ %.01924.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.01924.prol ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !670
  %i.af = getelementptr i8, ptr %i.ad, i64 -2
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !670
  %i.ah = sub i16 %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.01924.prol
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !670
  %i.aj = add nuw nsw i64 %.01924.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !2758

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01924.unr = phi i64 [ %.01924.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aj, %vec.epilog.scalar.ph.prol ]
  %i.ak = sub nsw i64 %.01924.ph, %i.e
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %.lr.ph27, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01924 = phi i64 [ %i.bn, %vec.epilog.scalar.ph ], [ %.01924.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.01924 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !670
  %i.ao = getelementptr i8, ptr %i.am, i64 -2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !670
  %i.aq = sub i16 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.01924
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !670
  %i.as = add nuw nsw i64 %.01924, 1              ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.as ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !670
  %i.av = getelementptr i8, ptr %i.at, i64 -2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !670
  %i.ax = sub i16 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.as
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !670
  %i.az = add nuw nsw i64 %.01924, 2              ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.az ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !670
  %i.bc = getelementptr i8, ptr %i.ba, i64 -2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !670
  %i.be = sub i16 %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.az
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !670
  %i.bg = add nuw nsw i64 %.01924, 3              ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !670
  %i.bj = getelementptr i8, ptr %i.bh, i64 -2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !670
  %i.bl = sub i16 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bg
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !670
  %i.bn = add nuw nsw i64 %.01924, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bn, %i.e
  br i1 %exitcond.not.3, label %.lr.ph27, label %vec.epilog.scalar.ph, !llvm.loop !2759

.lr.ph27:                                         ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 10298 ; 3 uses
  store i8 1, ptr %i.bo, align 2, !tbaa !2742
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 10288 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4112 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10286 ; 4 uses
  %.promoted = load i16, ptr %i.bp, align 8, !tbaa !2684 ; 2 uses
  %.promoted29 = load i16, ptr %i.br, align 2, !tbaa !2743 ; 2 uses
  %i.bs = add i64 %i.e, -1                        ; 3 uses
  %xtraiter49 = and i64 %i.bs, 1
  %i.bt = icmp eq i64 %i.e, 2
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph27.new

.lr.ph27.new:                                     ; preds = %.lr.ph27
  %unroll_iter = and i64 %i.bs, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph27.new
  %i.bu = phi i16 [ %.promoted29, %.lr.ph27.new ], [ %i.cg, %bb.c ]
  %i.bv = phi i16 [ %.promoted, %.lr.ph27.new ], [ %i.ce, %bb.c ]
  %.025 = phi i64 [ 1, %.lr.ph27.new ], [ %i.ch, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph27.new ], [ %niter.next.1, %bb.c ]
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %.025 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !670
  %i.by = tail call noundef i16 @llvm.smax.i16(i16 %i.bv, i16 %i.bx) ; 2 uses
  store i16 %i.by, ptr %i.bp, align 8, !tbaa !2684
  %i.bz = load i16, ptr %i.bw, align 2, !tbaa !670
  %i.ca = tail call noundef i16 @llvm.smin.i16(i16 %i.bu, i16 %i.bz) ; 2 uses
  store i16 %i.ca, ptr %i.br, align 2, !tbaa !2743
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %.025
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !670
  %i.ce = tail call noundef i16 @llvm.smax.i16(i16 %i.by, i16 %i.cd) ; 4 uses
  store i16 %i.ce, ptr %i.bp, align 8, !tbaa !2684
  %i.cf = load i16, ptr %i.cc, align 2, !tbaa !670
  %i.cg = tail call noundef i16 @llvm.smin.i16(i16 %i.ca, i16 %i.cf) ; 4 uses
  store i16 %i.cg, ptr %i.br, align 2, !tbaa !2743
  %i.ch = add nuw i64 %.025, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge28.unr-lcssa, label %bb.c, !llvm.loop !2760

._crit_edge28.unr-lcssa:                          ; preds = %bb.c
  %lcmp.mod52.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod52.not, label %._crit_edge28, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge28.unr-lcssa, %.lr.ph27
  %.epil.init = phi i16 [ %.promoted29, %.lr.ph27 ], [ %i.cg, %._crit_edge28.unr-lcssa ]
  %.epil.init51 = phi i16 [ %.promoted, %.lr.ph27 ], [ %i.ce, %._crit_edge28.unr-lcssa ]
  %.025.epil.init = phi i64 [ 1, %.lr.ph27 ], [ %i.ch, %._crit_edge28.unr-lcssa ]
  %lcmp.mod55 = trunc i64 %i.bs to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %.025.epil.init ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !670
  %i.ck = tail call noundef i16 @llvm.smax.i16(i16 %.epil.init51, i16 %i.cj) ; 2 uses
  store i16 %i.ck, ptr %i.bp, align 8, !tbaa !2684
  %i.cl = load i16, ptr %i.ci, align 2, !tbaa !670
  %i.cm = tail call noundef i16 @llvm.smin.i16(i16 %.epil.init, i16 %i.cl) ; 2 uses
  store i16 %i.cm, ptr %i.br, align 2, !tbaa !2743
  br label %._crit_edge28

._crit_edge28:                                    ; preds = %._crit_edge28.unr-lcssa, %.epil.preheader
  %.lcssa48 = phi i16 [ %i.ce, %._crit_edge28.unr-lcssa ], [ %i.ck, %.epil.preheader ]
  %.lcssa = phi i16 [ %i.cg, %._crit_edge28.unr-lcssa ], [ %i.cm, %.epil.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4112
  store i16 %.lcssa, ptr %i.cn, align 8, !tbaa !670
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 10290
  %i.cp = tail call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIsssEEbT_T0_RT1_(i16 noundef signext %.lcssa48, i16 noundef signext %.lcssa, ptr noundef nonnull align 2 dereferenceable(2) %i.co) ; 2 uses
  %i.cq = zext i1 %i.cp to i8
  store i8 %i.cq, ptr %i.bo, align 2, !tbaa !2742
  br i1 %i.cp, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge28
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 10286
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2683
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !670
  %i.cv = load i16, ptr %i.cr, align 2, !tbaa !2743
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 10292
  %i.cx = tail call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIsssEEbT_T0_RT1_(i16 noundef signext %i.cu, i16 noundef signext %i.cv, ptr noundef nonnull align 2 dereferenceable(2) %i.cw)
  %i.cy = zext i1 %i.cx to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge28
  %i.cz = phi i8 [ 0, %._crit_edge28 ], [ %i.cy, %bb.d ]
  store i8 %i.cz, ptr %i.bo, align 2, !tbaa !2742
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationItttEEbT_T0_RT1_(i16 noundef zeroext, i16 noundef zeroext, ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateItLb1EsEC2ERNS_24ColumnDataCheckpointDataERKNS_15CompressionInfoE(ptr noundef nonnull align 8 dereferenceable(10384) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %2, align 8, !tbaa !137
  store i64 %i.b, ptr %i.a, align 8, !tbaa !137
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb26BitpackingCompressionStateItLb1EsEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !145
  %i.d = tail call noundef nonnull align 8 dereferenceable(193) ptr @_ZN6duckdb24ColumnDataCheckpointData22GetCompressionFunctionENS_15CompressionTypeE(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 6)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !943
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10336
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10380 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.j, align 4, !tbaa !2681
  store i16 0, ptr %i.h, align 8, !tbaa !670
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4184
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2683
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10360
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10368
  store i16 -32768, ptr %i.o, align 8, !tbaa !2684
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10372
  store i16 0, ptr %i.p, align 4, !tbaa !2685
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10374
  store i8 1, ptr %i.q, align 2, !tbaa !2686
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10375
  store i8 1, ptr %i.r, align 1, !tbaa !2687
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10376
  store i64 0, ptr %i.i, align 8, !tbaa !2688
  store <4 x i16> <i16 -1, i16 0, i16 0, i16 32767>, ptr %i.n, align 8, !tbaa !670
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10370
  store i16 0, ptr %i.t, align 2, !tbaa !2689
  store i32 0, ptr %i.s, align 8
  invoke void @_ZN6duckdb26BitpackingCompressionStateItLb1EsE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(10384) %0)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 10352
  store ptr %0, ptr %i.u, align 8, !tbaa !2761
  %i.v = invoke noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.w = invoke noundef zeroext i8 @_ZN6duckdb8Settings3GetINS_26ForceBitpackingModeSettingENS_16DatabaseInstanceEEENSt9enable_ifIXsr3std7is_enumINT_11RETURN_TYPEEEE5valueES6_E4typeERKT0_(ptr noundef nonnull align 1 %i.v)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store i8 %i.w, ptr %i.j, align 4, !tbaa !2763
  ret void

bb.f:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.x, %bb.f ]
  tail call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateItLb1EsE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(10384) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.183", align 8 ; 8 uses
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2764, !nonnull !55, !align !133
  %i.c = tail call noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2764, !nonnull !55, !align !133
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb24ColumnDataCheckpointData7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2765, !nonnull !55, !align !133
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.m = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = sub i64 %i.k, %i.m
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133
  call void @_ZN6duckdb13ColumnSegment22CreateTransientSegmentERNS_16DatabaseInstanceERKNS_19CompressionFunctionERKNS_11LogicalTypeEmRNS_12BlockManagerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.183") align 8 %1, ptr noundef nonnull align 1 %i.c, ptr noundef nonnull align 8 dereferenceable(193) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(144) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !218
  store ptr null, ptr %1, align 8, !tbaa !218
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !218  ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !218
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.a
  call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.r) #30
  call void @_ZdlPv(ptr noundef nonnull %i.r) #32
  br label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.c)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2) #30 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !455
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !456
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_7
begin_hunk_8_@_ZN6duckdb15BitpackingStateIjiE5FlushINS_21EmptyBitpackingWriterEEEbv:bb.a
  br i1 %exitcond.not.i29, label %_ZN6duckdb15BitpackingStateIjiE24SubtractFrameOfReferenceIjEEvPT_S3_.exit, label %.lr.ph.i27, !llvm.loop !2856

_ZN6duckdb15BitpackingStateIjiE24SubtractFrameOfReferenceIjEEvPT_S3_.exit: ; preds = %.lr.ph.i27, %middle.block60
  %i.db = trunc i64 %i.cr to i32
  %i.dc = and i32 %i.db, 31                       ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit31, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15BitpackingStateIjiE24SubtractFrameOfReferenceIjEEvPT_S3_.exit
  %i.de = add i64 %i.cr, 32
  %i.df = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.dc)
  %i.dg = sub i64 %i.de, %i.df
  br label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit31

_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit31: ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIjLb0EEEhT_.exit25, %_ZN6duckdb15BitpackingStateIjiE24SubtractFrameOfReferenceIjEEvPT_S3_.exit, %bb.o
  %.0.i.i30 = phi i64 [ %i.dg, %bb.o ], [ %i.cr, %_ZN6duckdb15BitpackingStateIjiE24SubtractFrameOfReferenceIjEEvPT_S3_.exit ], [ 0, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthIjLb0EEEhT_.exit25 ]
  %i.dh = mul i64 %.0.i.i30, %.09.i.i24
  %i.di = lshr i64 %i.dh, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 18456 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !2848
  %i.dl = add i64 %i.dk, 12
  %i.dm = add i64 %i.dl, %i.di
  store i64 %i.dm, ptr %i.dj, align 8, !tbaa !2848
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %.thread, %bb.a, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit31, %bb.i, %bb.e
  %.1 = phi i1 [ true, %bb.m ], [ true, %bb.e ], [ true, %bb.i ], [ true, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit31 ], [ true, %bb.a ], [ false, %.thread ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15BitpackingStateIjiE19CalculateDeltaStatsEv(ptr noundef nonnull align 8 dereferenceable(18507) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18476
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2809
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18448
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2799 ; 11 uses
  %i.f = icmp ugt i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18500
  %i.h = load i8, ptr %i.g, align 4, !range !54
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.b
  %i.j = icmp sgt i64 %i.e, 0
  br i1 %i.j, label %.lr.ph, label %.lr.ph27

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2794 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8208 ; 7 uses
  %min.iters.check = icmp ult i64 %i.e, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.n = shl i64 %i.e, 2                          ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 8208
  %scevgep35 = getelementptr i8, ptr %i.l, i64 -4
  %scevgep36 = getelementptr i8, ptr %i.l, i64 %i.n
  %bound0 = icmp ult ptr %i.m, %scevgep36
  %bound1 = icmp ult ptr %scevgep35, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 9223372036854775800      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !tbaa !3, !alias.scope !2857
  %wide.load37 = load <4 x i32>, ptr %i.q, align 4, !tbaa !3, !alias.scope !2857
  %i.r = getelementptr i8, ptr %i.p, i64 -4
  %i.s = getelementptr i8, ptr %i.p, i64 12
  %wide.load38 = load <4 x i32>, ptr %i.r, align 4, !tbaa !3, !alias.scope !2857
  %wide.load39 = load <4 x i32>, ptr %i.s, align 4, !tbaa !3, !alias.scope !2857
  %i.t = sub nsw <4 x i32> %wide.load, %wide.load38
  %i.u = sub nsw <4 x i32> %wide.load37, %wide.load39
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %i.t, ptr %i.v, align 8, !tbaa !3, !alias.scope !2860, !noalias !2857
  store <4 x i32> %i.u, ptr %i.w, align 8, !tbaa !3, !alias.scope !2860, !noalias !2857
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2862

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.lr.ph27, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.01924.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01924.prol = phi i64 [ %i.ae, %scalar.ph.prol ], [ %.01924.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01924.prol ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = sub nsw i32 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01924.prol
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !3
  %i.ae = add nuw nsw i64 %.01924.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2863

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01924.unr = phi i64 [ %.01924.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %i.af = sub nsw i64 %.01924.ph, %i.e
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %.lr.ph27, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01924 = phi i64 [ %i.bi, %scalar.ph ], [ %.01924.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01924 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = getelementptr i8, ptr %i.ah, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = sub nsw i32 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01924
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  %i.an = add nuw nsw i64 %.01924, 1              ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = getelementptr i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = sub nsw i32 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.an
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = add nuw nsw i64 %.01924, 2              ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = getelementptr i8, ptr %i.av, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = sub nsw i32 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.au
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !3
  %i.bb = add nuw nsw i64 %.01924, 3              ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = getelementptr i8, ptr %i.bc, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = sub nsw i32 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bb
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %i.bi = add nuw nsw i64 %.01924, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bi, %i.e
  br i1 %exitcond.not.3, label %.lr.ph27, label %scalar.ph, !llvm.loop !2864

.lr.ph27:                                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 18504 ; 3 uses
  store i8 1, ptr %i.bj, align 8, !tbaa !2850
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 18488 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8208 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 18484 ; 4 uses
  %.promoted = load i32, ptr %i.bk, align 8, !tbaa !2795 ; 2 uses
  %.promoted29 = load i32, ptr %i.bm, align 4, !tbaa !2851 ; 2 uses
  %i.bn = add i64 %i.e, -1                        ; 3 uses
  %xtraiter41 = and i64 %i.bn, 1
  %i.bo = icmp eq i64 %i.e, 2
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph27.new

.lr.ph27.new:                                     ; preds = %.lr.ph27
  %unroll_iter = and i64 %i.bn, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph27.new
  %i.bp = phi i32 [ %.promoted29, %.lr.ph27.new ], [ %i.cb, %bb.c ]
  %i.bq = phi i32 [ %.promoted, %.lr.ph27.new ], [ %i.bz, %bb.c ]
  %.025 = phi i64 [ 1, %.lr.ph27.new ], [ %i.cc, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph27.new ], [ %niter.next.1, %bb.c ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.025 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = tail call noundef i32 @llvm.smax.i32(i32 %i.bq, i32 %i.bs) ; 2 uses
  store i32 %i.bt, ptr %i.bk, align 8, !tbaa !2795
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bv = tail call noundef i32 @llvm.smin.i32(i32 %i.bp, i32 %i.bu) ; 2 uses
  store i32 %i.bv, ptr %i.bm, align 4, !tbaa !2851
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.025
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = tail call noundef i32 @llvm.smax.i32(i32 %i.bt, i32 %i.by) ; 4 uses
  store i32 %i.bz, ptr %i.bk, align 8, !tbaa !2795
  %i.ca = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.cb = tail call noundef i32 @llvm.smin.i32(i32 %i.bv, i32 %i.ca) ; 4 uses
  store i32 %i.cb, ptr %i.bm, align 4, !tbaa !2851
  %i.cc = add nuw i64 %.025, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge28.unr-lcssa, label %bb.c, !llvm.loop !2865

._crit_edge28.unr-lcssa:                          ; preds = %bb.c
  %lcmp.mod44.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod44.not, label %._crit_edge28, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge28.unr-lcssa, %.lr.ph27
  %.epil.init = phi i32 [ %.promoted29, %.lr.ph27 ], [ %i.cb, %._crit_edge28.unr-lcssa ]
  %.epil.init43 = phi i32 [ %.promoted, %.lr.ph27 ], [ %i.bz, %._crit_edge28.unr-lcssa ]
  %.025.epil.init = phi i64 [ 1, %.lr.ph27 ], [ %i.cc, %._crit_edge28.unr-lcssa ]
  %lcmp.mod47 = trunc i64 %i.bn to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.025.epil.init ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = tail call noundef i32 @llvm.smax.i32(i32 %.epil.init43, i32 %i.ce) ; 2 uses
  store i32 %i.cf, ptr %i.bk, align 8, !tbaa !2795
  %i.cg = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.ch = tail call noundef i32 @llvm.smin.i32(i32 %.epil.init, i32 %i.cg) ; 2 uses
  store i32 %i.ch, ptr %i.bm, align 4, !tbaa !2851
  br label %._crit_edge28

._crit_edge28:                                    ; preds = %._crit_edge28.unr-lcssa, %.epil.preheader
  %.lcssa40 = phi i32 [ %i.bz, %._crit_edge28.unr-lcssa ], [ %i.cf, %.epil.preheader ]
  %.lcssa = phi i32 [ %i.cb, %._crit_edge28.unr-lcssa ], [ %i.ch, %.epil.preheader ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8208
  store i32 %.lcssa, ptr %i.ci, align 8, !tbaa !3
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 18492
  %i.ck = tail call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %.lcssa40, i32 noundef %.lcssa, ptr noundef nonnull align 4 dereferenceable(4) %i.cj) ; 2 uses
  %i.cl = zext i1 %i.ck to i8
  store i8 %i.cl, ptr %i.bj, align 8, !tbaa !2850
  br i1 %i.ck, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge28
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 18484
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8200
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !2794
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = load i32, ptr %i.cm, align 4, !tbaa !2851
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.cs = tail call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %i.cp, i32 noundef %i.cq, ptr noundef nonnull align 4 dereferenceable(4) %i.cr)
  %i.ct = zext i1 %i.cs to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge28
  %i.cu = phi i8 [ 0, %._crit_edge28 ], [ %i.ct, %bb.d ]
  store i8 %i.cu, ptr %i.bj, align 8, !tbaa !2850
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIjjjEEbT_T0_RT1_(i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateIjLb1EiEC2ERNS_24ColumnDataCheckpointDataERKNS_15CompressionInfoE(ptr noundef nonnull align 8 dereferenceable(18592) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %2, align 8, !tbaa !137
  store i64 %i.b, ptr %i.a, align 8, !tbaa !137
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb26BitpackingCompressionStateIjLb1EiEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !145
  %i.d = tail call noundef nonnull align 8 dereferenceable(193) ptr @_ZN6duckdb24ColumnDataCheckpointData22GetCompressionFunctionENS_15CompressionTypeE(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 6)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !943
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18528
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18586 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.j, align 2, !tbaa !2792
  store i32 0, ptr %i.h, align 8, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8280
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2794
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18552
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18568
  store i32 -2147483648, ptr %i.o, align 8, !tbaa !2795
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18576
  store i32 0, ptr %i.p, align 8, !tbaa !2796
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 18580
  store i8 1, ptr %i.q, align 4, !tbaa !2797
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18581
  store i8 1, ptr %i.r, align 1, !tbaa !2798
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 18582
  store i64 0, ptr %i.i, align 8, !tbaa !2799
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 2147483647>, ptr %i.n, align 8, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18572
  store i32 0, ptr %i.t, align 4, !tbaa !2800
  store i32 0, ptr %i.s, align 2
  invoke void @_ZN6duckdb26BitpackingCompressionStateIjLb1EiE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(18592) %0)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 18544
  store ptr %0, ptr %i.u, align 8, !tbaa !2866
  %i.v = invoke noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.w = invoke noundef zeroext i8 @_ZN6duckdb8Settings3GetINS_26ForceBitpackingModeSettingENS_16DatabaseInstanceEEENSt9enable_ifIXsr3std7is_enumINT_11RETURN_TYPEEEE5valueES6_E4typeERKT0_(ptr noundef nonnull align 1 %i.v)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store i8 %i.w, ptr %i.j, align 2, !tbaa !2868
  ret void

bb.f:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.x, %bb.f ]
  tail call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateIjLb1EiE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(18592) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.183", align 8 ; 8 uses
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2869, !nonnull !55, !align !133
  %i.c = tail call noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2869, !nonnull !55, !align !133
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb24ColumnDataCheckpointData7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2870, !nonnull !55, !align !133
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.m = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = sub i64 %i.k, %i.m
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133
  call void @_ZN6duckdb13ColumnSegment22CreateTransientSegmentERNS_16DatabaseInstanceERKNS_19CompressionFunctionERKNS_11LogicalTypeEmRNS_12BlockManagerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.183") align 8 %1, ptr noundef nonnull align 1 %i.c, ptr noundef nonnull align 8 dereferenceable(193) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(144) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !218
  store ptr null, ptr %1, align 8, !tbaa !218
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !218  ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !218
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.a
  call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.r) #30
  call void @_ZdlPv(ptr noundef nonnull %i.r) #32
  br label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.c)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2) #30 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !455
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !456
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_8
begin_hunk_9_@_ZN6duckdb15BitpackingStateImlE5FlushINS_21EmptyBitpackingWriterEEEbv:bb.a
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.05.i ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !21
  %i.bl = sub i64 %i.bk, %i.ad
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !21
  %i.bm = add nuw i64 %.05.i, 1                   ; 2 uses
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !2903 ; 4 uses
  %i.bo = icmp ult i64 %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph.i, label %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceIlEEvPT_S3_.exit, !llvm.loop !2954

_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceIlEEvPT_S3_.exit: ; preds = %.lr.ph.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 34840 ; 5 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !2951
  %i.br = add i64 %i.bq, 24                       ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !2951
  %i.bs = trunc i64 %i.bn to i32
  %i.bt = and i32 %i.bs, 31                       ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceIlEEvPT_S3_.exit
  %i.bv = add i64 %i.bn, 32
  %i.bw = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.bt)
  %i.bx = sub i64 %i.bv, %i.bw
  %.pre35 = load i64, ptr %i.bp, align 8, !tbaa !2951
  br label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceIlEEvPT_S3_.exit.thread, %bb.l, %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceIlEEvPT_S3_.exit
  %i.by = phi ptr [ %i.bp, %bb.l ], [ %i.bp, %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceIlEEvPT_S3_.exit ], [ %i.bg, %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceIlEEvPT_S3_.exit.thread ]
  %i.bz = phi i64 [ %.pre35, %bb.l ], [ %i.br, %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceIlEEvPT_S3_.exit ], [ %i.bi, %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceIlEEvPT_S3_.exit.thread ]
  %.0.i.i = phi i64 [ %i.bx, %bb.l ], [ %i.bn, %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceIlEEvPT_S3_.exit ], [ 0, %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceIlEEvPT_S3_.exit.thread ]
  %i.ca = zext nneg i8 %.09.i.i to i64
  %i.cb = mul i64 %.0.i.i, %i.ca
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.by, align 8, !tbaa !2951
  br label %bb.p

.thread:                                          ; preds = %..thread_crit_edge, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit21
  %i.ce = phi i8 [ %.pre36, %..thread_crit_edge ], [ %i.az, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit21 ]
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.thread
  %i.cg = load i64, ptr %i.t, align 8, !tbaa !2904 ; 3 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit25, label %.preheader.preheader.i.i22

.preheader.preheader.i.i22:                       ; preds = %bb.n
  %i.ci = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.cj = sub nuw nsw i64 64, %i.ci
  %i.ck = icmp ugt i64 %i.cg, 72057594037927935
  %i.cl = select i1 %i.ck, i64 64, i64 %i.cj
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit25

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit25: ; preds = %bb.n, %.preheader.preheader.i.i22
  %.09.i.i24 = phi i64 [ %i.cl, %.preheader.preheader.i.i22 ], [ 0, %bb.n ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2895
  %i.co = load i64, ptr %i.s, align 8, !tbaa !2896
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !2903
  %.not.i26 = icmp eq i64 %i.cp, 0
  br i1 %.not.i26, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit30, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit25, %.lr.ph.i27
  %.05.i28 = phi i64 [ %i.ct, %.lr.ph.i27 ], [ 0, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit25 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05.i28 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !21
  %i.cs = sub i64 %i.cr, %i.co
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !21
  %i.ct = add nuw i64 %.05.i28, 1                 ; 2 uses
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !2903 ; 4 uses
  %i.cv = icmp ult i64 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph.i27, label %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceImEEvPT_S3_.exit, !llvm.loop !2955

_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceImEEvPT_S3_.exit: ; preds = %.lr.ph.i27
  %i.cw = trunc i64 %i.cu to i32
  %i.cx = and i32 %i.cw, 31                       ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit30, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceImEEvPT_S3_.exit
  %i.cz = add i64 %i.cu, 32
  %i.da = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.cx)
  %i.db = sub i64 %i.cz, %i.da
  br label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit30

_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit30: ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit25, %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceImEEvPT_S3_.exit, %bb.o
  %.0.i.i29 = phi i64 [ %i.db, %bb.o ], [ %i.cu, %_ZN6duckdb15BitpackingStateImlE24SubtractFrameOfReferenceImEEvPT_S3_.exit ], [ 0, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit25 ]
  %i.dc = mul i64 %.0.i.i29, %.09.i.i24
  %i.dd = lshr i64 %i.dc, 3
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 34840 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !2951
  %i.dg = add i64 %i.df, 16
  %i.dh = add i64 %i.dg, %i.dd
  store i64 %i.dh, ptr %i.de, align 8, !tbaa !2951
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %.thread, %bb.a, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit30, %bb.i, %bb.e
  %.1 = phi i1 [ true, %bb.m ], [ true, %bb.e ], [ true, %bb.i ], [ true, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit30 ], [ true, %bb.a ], [ false, %.thread ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15BitpackingStateImlE19CalculateDeltaStatsEv(ptr noundef nonnull align 8 dereferenceable(34919) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 34864
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2898
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 34832 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2903 ; 3 uses
  %i.f = icmp ugt i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34912
  %i.h = load i8, ptr %i.g, align 8, !range !54
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.b
  %i.j = icmp sgt i64 %i.e, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 34916 ; 2 uses
  store i8 1, ptr %i.k, align 4, !tbaa !2953
  br label %.lr.ph27

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2895
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16400
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.01924 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.01924 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr i8, ptr %i.o, i64 -8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !21
  %i.s = sub nsw i64 %i.p, %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.01924
  store i64 %i.s, ptr %i.t, align 8, !tbaa !21
  %i.u = add nuw nsw i64 %.01924, 1               ; 2 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !2903 ; 3 uses
  %i.w = icmp slt i64 %i.u, %i.v
  br i1 %i.w, label %bb.c, label %._crit_edge, !llvm.loop !2956

._crit_edge:                                      ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 34916 ; 3 uses
  store i8 1, ptr %i.x, align 4, !tbaa !2953
  %i.y = icmp ugt i64 %i.v, 1
  br i1 %i.y, label %.lr.ph27, label %._crit_edge.._crit_edge28_crit_edge

._crit_edge.._crit_edge28_crit_edge:              ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 34880
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !2897
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %0, i64 34888
  %.pre32 = load i64, ptr %.phi.trans.insert31, align 8, !tbaa !2899
  br label %._crit_edge28

.lr.ph27:                                         ; preds = %._crit_edge.thread, %._crit_edge
  %i.z = phi ptr [ %i.k, %._crit_edge.thread ], [ %i.x, %._crit_edge ] ; 2 uses
  %.lcssa35 = phi i64 [ %i.e, %._crit_edge.thread ], [ %i.v, %._crit_edge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 34888 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 34880 ; 4 uses
  %.promoted = load i64, ptr %i.aa, align 8, !tbaa !2899 ; 2 uses
  %.promoted29 = load i64, ptr %i.ac, align 8, !tbaa !2897 ; 2 uses
  %i.ad = add i64 %.lcssa35, -1                   ; 3 uses
  %xtraiter = and i64 %i.ad, 1
  %i.ae = icmp eq i64 %.lcssa35, 2
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph27.new

.lr.ph27.new:                                     ; preds = %.lr.ph27
  %unroll_iter = and i64 %i.ad, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph27.new
  %i.af = phi i64 [ %.promoted29, %.lr.ph27.new ], [ %i.ar, %bb.d ]
  %i.ag = phi i64 [ %.promoted, %.lr.ph27.new ], [ %i.ap, %bb.d ]
  %.025 = phi i64 [ 1, %.lr.ph27.new ], [ %i.as, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph27.new ], [ %niter.next.1, %bb.d ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.025 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.aj = tail call noundef i64 @llvm.smax.i64(i64 %i.ag, i64 %i.ai) ; 2 uses
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !2899
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.al = tail call noundef i64 @llvm.smin.i64(i64 %i.af, i64 %i.ak) ; 2 uses
  store i64 %i.al, ptr %i.ac, align 8, !tbaa !2897
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.025
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !21
  %i.ap = tail call noundef i64 @llvm.smax.i64(i64 %i.aj, i64 %i.ao) ; 4 uses
  store i64 %i.ap, ptr %i.aa, align 8, !tbaa !2899
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !21
  %i.ar = tail call noundef i64 @llvm.smin.i64(i64 %i.al, i64 %i.aq) ; 4 uses
  store i64 %i.ar, ptr %i.ac, align 8, !tbaa !2897
  %i.as = add nuw i64 %.025, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge28.loopexit.unr-lcssa, label %bb.d, !llvm.loop !2957

._crit_edge28.loopexit.unr-lcssa:                 ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge28, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge28.loopexit.unr-lcssa, %.lr.ph27
  %.epil.init = phi i64 [ %.promoted29, %.lr.ph27 ], [ %i.ar, %._crit_edge28.loopexit.unr-lcssa ]
  %.epil.init43 = phi i64 [ %.promoted, %.lr.ph27 ], [ %i.ap, %._crit_edge28.loopexit.unr-lcssa ]
  %.025.epil.init = phi i64 [ 1, %.lr.ph27 ], [ %i.as, %._crit_edge28.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i64 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.025.epil.init ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !21
  %i.av = tail call noundef i64 @llvm.smax.i64(i64 %.epil.init43, i64 %i.au) ; 2 uses
  store i64 %i.av, ptr %i.aa, align 8, !tbaa !2899
  %i.aw = load i64, ptr %i.at, align 8, !tbaa !21
  %i.ax = tail call noundef i64 @llvm.smin.i64(i64 %.epil.init, i64 %i.aw) ; 2 uses
  store i64 %i.ax, ptr %i.ac, align 8, !tbaa !2897
  br label %._crit_edge28

._crit_edge28:                                    ; preds = %.epil.preheader, %._crit_edge28.loopexit.unr-lcssa, %._crit_edge.._crit_edge28_crit_edge
  %i.ay = phi ptr [ %i.x, %._crit_edge.._crit_edge28_crit_edge ], [ %i.z, %._crit_edge28.loopexit.unr-lcssa ], [ %i.z, %.epil.preheader ] ; 2 uses
  %i.az = phi i64 [ %.pre32, %._crit_edge.._crit_edge28_crit_edge ], [ %i.ap, %._crit_edge28.loopexit.unr-lcssa ], [ %i.av, %.epil.preheader ]
  %i.ba = phi i64 [ %.pre, %._crit_edge.._crit_edge28_crit_edge ], [ %i.ar, %._crit_edge28.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16400
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 34896
  %i.bd = tail call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.az, i64 noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.bc) ; 2 uses
  %i.be = zext i1 %i.bd to i8
  store i8 %i.be, ptr %i.ay, align 4, !tbaa !2953
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge28
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 34880
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2895
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !21
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !2897
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 34904
  %i.bl = tail call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.bi, i64 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
  %i.bm = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge28
  %i.bn = phi i8 [ 0, %._crit_edge28 ], [ %i.bm, %bb.e ]
  store i8 %i.bn, ptr %i.ay, align 4, !tbaa !2953
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f
  ret void
}

declare noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationImmmEEbT_T0_RT1_(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateImLb1ElEC2ERNS_24ColumnDataCheckpointDataERKNS_15CompressionInfoE(ptr noundef nonnull align 8 dereferenceable(35000) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %2, align 8, !tbaa !137
  store i64 %i.b, ptr %i.a, align 8, !tbaa !137
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb26BitpackingCompressionStateImLb1ElEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !145
  %i.d = tail call noundef nonnull align 8 dereferenceable(193) ptr @_ZN6duckdb24ColumnDataCheckpointData22GetCompressionFunctionENS_15CompressionTypeE(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 6)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !943
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 34912
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 34998 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 34920
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.j, align 2, !tbaa !2893
  store i64 0, ptr %i.h, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16472
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2895
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 34936
  store i64 -1, ptr %i.n, align 8, !tbaa !2896
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 34960
  store i64 9223372036854775807, ptr %i.o, align 8, !tbaa !2897
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 34944
  store i64 0, ptr %i.p, align 8, !tbaa !2898
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 34968
  store i64 -9223372036854775808, ptr %i.q, align 8, !tbaa !2899
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 34984
  store i64 0, ptr %i.r, align 8, !tbaa !2900
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 34992
  store i8 1, ptr %i.s, align 8, !tbaa !2901
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 34993
  store i8 1, ptr %i.t, align 1, !tbaa !2902
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 34994
  store i64 0, ptr %i.i, align 8, !tbaa !2903
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 34952
  store i64 0, ptr %i.v, align 8, !tbaa !2904
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 34976
  store i64 0, ptr %i.w, align 8, !tbaa !2905
  store i32 0, ptr %i.u, align 2
  invoke void @_ZN6duckdb26BitpackingCompressionStateImLb1ElE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(35000) %0)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 34928
  store ptr %0, ptr %i.x, align 8, !tbaa !2958
  %i.y = invoke noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.z = invoke noundef zeroext i8 @_ZN6duckdb8Settings3GetINS_26ForceBitpackingModeSettingENS_16DatabaseInstanceEEENSt9enable_ifIXsr3std7is_enumINT_11RETURN_TYPEEEE5valueES6_E4typeERKT0_(ptr noundef nonnull align 1 %i.y)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store i8 %i.z, ptr %i.j, align 2, !tbaa !2960
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.aa, %bb.f ]
  tail call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateImLb1ElE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(35000) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.183", align 8 ; 8 uses
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2961, !nonnull !55, !align !133
  %i.c = tail call noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2961, !nonnull !55, !align !133
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb24ColumnDataCheckpointData7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2962, !nonnull !55, !align !133
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.m = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = sub i64 %i.k, %i.m
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !185, !nonnull !55, !align !133
  call void @_ZN6duckdb13ColumnSegment22CreateTransientSegmentERNS_16DatabaseInstanceERKNS_19CompressionFunctionERKNS_11LogicalTypeEmRNS_12BlockManagerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.183") align 8 %1, ptr noundef nonnull align 1 %i.c, ptr noundef nonnull align 8 dereferenceable(193) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(144) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !218
  store ptr null, ptr %1, align 8, !tbaa !218
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !218  ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !218
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.a
  call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.r) #30
  call void @_ZdlPv(ptr noundef nonnull %i.r) #32
  br label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.c)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2) #30 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.e unwind label %bb.h
end_hunk_9
