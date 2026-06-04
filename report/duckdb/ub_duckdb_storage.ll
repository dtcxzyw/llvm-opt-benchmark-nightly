inline.NumInlined: 20074
inline.NumDeleted: 9324
begin_hunk_0_@_ZN6duckdb13AllocatedDataC1Ev

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb10ArenaChunkD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit3, label %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit.preheader

_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit.preheader: ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !24
  br label %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit.preheader, %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit
  %.sroa.0.010 = phi ptr [ %i.d, %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit ], [ %i.b, %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit.preheader ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !24
  tail call void @_ZN6duckdb10ArenaChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.sroa.0.010) #23, !inline_history !26
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0.010) #44, !inline_history !26
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit, !llvm.loop !27

_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !24 ; 3 uses
  %.not.i1 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit3, label %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i2

_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i2: ; preds = %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit
  tail call void @_ZN6duckdb10ArenaChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.pr.pre) #23, !inline_history !25
  tail call void @_ZdlPv(ptr noundef nonnull %.pr.pre) #44, !inline_history !25
  br label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit3

_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit3: ; preds = %bb.a, %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i2
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #45
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14ArenaAllocatorC2ERNS_9AllocatorEm(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %3 = alloca %"class.duckdb::unique_ptr.2", align 8 ; 4 uses
  store ptr %1, ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !41
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #46 ; 6 uses
  invoke void @_ZN6duckdb20PrivateAllocatorDataC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.a, !noalias !42

bb.a:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #44, !noalias !42
  br label %.body

bb.b:                                             ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb18ArenaAllocatorDataE, i64 16), ptr %i.c, align 8, !tbaa !45, !noalias !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %0, ptr %i.e, align 8, !tbaa !47, !noalias !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.f, align 8, !tbaa !49, !noalias !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %3, align 8, !tbaa !60
  invoke void @_ZN6duckdb9AllocatorC1EPFPhPNS_20PrivateAllocatorDataEmEPFvS3_S1_mEPFS1_S3_S1_mmENS_10unique_ptrIS2_St14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull @_ZN6duckdbL22ArenaAllocatorAllocateEPNS_20PrivateAllocatorDataEm, ptr noundef nonnull @_ZN6duckdbL18ArenaAllocatorFreeEPNS_20PrivateAllocatorDataEPhm, ptr noundef nonnull @_ZN6duckdbL23ArenaAllocateReallocateEPNS_20PrivateAllocatorDataEPhmm, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %3, align 8, !tbaa !61     ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb18ArenaAllocatorDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20PrivateAllocatorDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20PrivateAllocatorDataEEclEPS1_.exit.i: ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23, !inline_history !62
  br label %_ZNSt10unique_ptrIN6duckdb18ArenaAllocatorDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ArenaAllocatorDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb20PrivateAllocatorDataEEclEPS1_.exit.i, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.l, align 8, !tbaa !63
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !24
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb18ArenaAllocatorDataESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN6duckdb10ArenaChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.m) #23, !inline_history !26
  call void @_ZdlPv(ptr noundef nonnull %i.m) #44, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb18ArenaAllocatorDataESt14default_deleteIS1_EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !64
  ret void

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !61     ; 3 uses
  %.not.i8 = icmp eq ptr %i.p, null
  br i1 %.not.i8, label %.body, label %_ZNKSt14default_deleteIN6duckdb20PrivateAllocatorDataEEclEPS1_.exit.i9

_ZNKSt14default_deleteIN6duckdb20PrivateAllocatorDataEEclEPS1_.exit.i9: ; preds = %bb.d
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #23, !inline_history !62
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb20PrivateAllocatorDataEEclEPS1_.exit.i9, %bb.a
  %.pn.ph = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.o, %_ZNKSt14default_deleteIN6duckdb20PrivateAllocatorDataEEclEPS1_.exit.i9 ], [ %i.d, %bb.a ]
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  %.not.i14 = icmp eq ptr %.pr, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit16, label %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i15

_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i15: ; preds = %.body
  call void @_ZN6duckdb10ArenaChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.pr) #23, !inline_history !25
  call void @_ZdlPv(ptr noundef nonnull %.pr) #44, !inline_history !25
  br label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit16: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i15
  resume { ptr, i32 } %.pn.ph
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN6duckdbL22ArenaAllocatorAllocateEPNS_20PrivateAllocatorDataEm(ptr noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65, !nonnull !67, !align !68 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN6duckdb14ArenaAllocator8AllocateEm.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 noundef %1)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre4.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !7 ; 2 uses
  %.pre5.i = add i64 %.pre4.i, %1
  br label %_ZN6duckdb14ArenaAllocator8AllocateEm.exit

_ZN6duckdb14ArenaAllocator8AllocateEm.exit:       ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %.pre5.i, %bb.c ], [ %i.g, %bb.b ]
  %i.k = phi i64 [ %.pre4.i, %bb.c ], [ %i.f, %bb.b ]
  %i.l = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i64 %.pre-phi.i, ptr %i.o, align 8, !tbaa !7
  ret ptr %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN6duckdbL18ArenaAllocatorFreeEPNS_20PrivateAllocatorDataEPhm(ptr readnone captures(none) %0, ptr readnone captures(none) %1, i64 %2) #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN6duckdbL23ArenaAllocateReallocateEPNS_20PrivateAllocatorDataEPhmm(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address, ret: address, provenance) %1, i64 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65, !nonnull !67, !align !68
  %i.c = tail call noundef ptr @_ZN6duckdb14ArenaAllocator10ReallocateEPhmm(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef %1, i64 noundef %2, i64 noundef %3)
  ret ptr %i.c
}

declare void @_ZN6duckdb9AllocatorC1EPFPhPNS_20PrivateAllocatorDataEmEPFvS3_S1_mEPFS1_S3_S1_mmENS_10unique_ptrIS2_St14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb14ArenaAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6duckdb9AllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN6duckdb10ArenaChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.c) #23, !inline_history !25
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #44, !inline_history !25
  br label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb9AllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %storemerge.in = select i1 %.not, ptr %i.c, ptr %i.d
  %storemerge = load i64, ptr %storemerge.in, align 8, !tbaa !70 ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %storemerge, i64 16777216)
  %i.e = icmp ult i64 %storemerge, 16777216
  %i.f = zext i1 %i.e to i64
  %storemerge3 = shl nuw nsw i64 %spec.select, %i.f
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge4 = phi i64 [ %storemerge3, %bb.a ], [ %i.h, %bb.b ] ; 4 uses
  %i.g = icmp ult i64 %storemerge4, %1
  %i.h = shl i64 %storemerge4, 1
  br i1 %i.g, label %bb.b, label %bb.c, !llvm.loop !71

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !67, !align !68
  %i.j = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #46, !noalias !73 ; 7 uses
  invoke void @_ZN6duckdb10ArenaChunkC1ERNS_9AllocatorEm(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %storemerge4)
          to label %_ZN6duckdb16make_unsafe_uniqINS_10ArenaChunkEJRNS_9AllocatorERmEEENS_17TemplatedUniqueIfIT_Lb0EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.d, !noalias !73

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #44, !noalias !73
  resume { ptr, i32 } %i.k

_ZN6duckdb16make_unsafe_uniqINS_10ArenaChunkEJRNS_9AllocatorERmEEENS_17TemplatedUniqueIfIT_Lb0EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not14 = icmp eq ptr %i.l, null
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb16make_unsafe_uniqINS_10ArenaChunkEJRNS_9AllocatorERmEEENS_17TemplatedUniqueIfIT_Lb0EE25templated_unique_single_tEDpOT0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.j, ptr %i.m, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !24
  store ptr null, ptr %i.a, align 8, !tbaa !24
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !24   ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !24
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit.thread, label %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit

bb.f:                                             ; preds = %_ZN6duckdb16make_unsafe_uniqINS_10ArenaChunkEJRNS_9AllocatorERmEEENS_17TemplatedUniqueIfIT_Lb0EE25templated_unique_single_tEDpOT0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.q, align 8, !tbaa !64
  br label %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit.thread

_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit.thread: ; preds = %bb.e, %bb.f
  store ptr %i.j, ptr %i.a, align 8, !tbaa !24
  br label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit

_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit: ; preds = %bb.e
  tail call void @_ZN6duckdb10ArenaChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.p) #23, !inline_history !26
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #44, !inline_history !26
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !24
  %.not.i.i.i.i.i5 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i5, label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i6

_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i6: ; preds = %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit
  tail call void @_ZN6duckdb10ArenaChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.pr) #23, !inline_history !26
  tail call void @_ZdlPv(ptr noundef nonnull %.pr) #44, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i6, %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit, %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !63
  %i.t = add i64 %i.s, %storemerge4
  store i64 %i.t, ptr %i.r, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb14ArenaAllocator10ReallocateEPhmm(ptr noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef readonly captures(address, ret: address, provenance) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, %3
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !7    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = sub i64 0, %2
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i
  %i.k = tail call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.g)
  %i.l = tail call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %3)
  %i.m = tail call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %2)
  %i.n = icmp eq ptr %1, %i.j
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = sub nsw i64 %i.l, %i.m
  %i.p = icmp ult i64 %3, %2
  %.pre = add nsw i64 %i.o, %i.k                  ; 2 uses
  br i1 %i.p, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23
  %i.t = tail call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.s)
  %.not = icmp sgt i64 %.pre, %i.t
  br i1 %.not, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.u = tail call noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %.pre)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %i.u, ptr %i.w, align 8, !tbaa !7
  br label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !24   ; 4 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !7    ; 2 uses
  %i.aa = add i64 %i.z, %3                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN6duckdb14ArenaAllocator8AllocateEm.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %3)
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre4.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !7 ; 2 uses
  %.pre5.i = add i64 %.pre4.i, %3
  br label %_ZN6duckdb14ArenaAllocator8AllocateEm.exit

_ZN6duckdb14ArenaAllocator8AllocateEm.exit:       ; preds = %bb.f, %bb.g
  %.pre-phi.i = phi i64 [ %.pre5.i, %bb.g ], [ %i.aa, %bb.f ]
  %i.ae = phi i64 [ %.pre4.i, %bb.g ], [ %i.z, %bb.f ]
  %i.af = phi ptr [ %.pre.i, %bb.g ], [ %i.x, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae ; 2 uses
  store i64 %.pre-phi.i, ptr %i.ai, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %_ZN6duckdb14ArenaAllocator8AllocateEm.exit, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %1, %._crit_edge ], [ %i.aj, %_ZN6duckdb14ArenaAllocator8AllocateEm.exit ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb14ArenaAllocator9AlignNextEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %i.d, 7
  %i.h = and i64 %i.g, -8
  store i64 %i.h, ptr %i.c, align 8, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6duckdb14ArenaAllocator9AlignNextEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7    ; 3 uses
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %i.d, 7
  %i.h = and i64 %i.g, -8                         ; 2 uses
  store i64 %i.h, ptr %i.c, align 8, !tbaa !7
  br label %bb.d

_ZN6duckdb14ArenaAllocator9AlignNextEv.exit:      ; preds = %bb.a
  %i.i = add i64 %1, 7
  %i.j = and i64 %i.i, -8
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.l = add i64 %1, 7
  %i.m = and i64 %i.l, -8                         ; 2 uses
  %i.n = add i64 %i.k, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %_ZN6duckdb14ArenaAllocator8AllocateEm.exit

bb.e:                                             ; preds = %_ZN6duckdb14ArenaAllocator9AlignNextEv.exit, %bb.d
  %i.r = phi i64 [ %i.m, %bb.d ], [ %i.j, %_ZN6duckdb14ArenaAllocator9AlignNextEv.exit ] ; 2 uses
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.r)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre4.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !7 ; 2 uses
  %.pre5.i = add i64 %.pre4.i, %i.r
  br label %_ZN6duckdb14ArenaAllocator8AllocateEm.exit

_ZN6duckdb14ArenaAllocator8AllocateEm.exit:       ; preds = %bb.d, %bb.e
  %.pre-phi.i = phi i64 [ %.pre5.i, %bb.e ], [ %i.n, %bb.d ]
  %i.s = phi i64 [ %.pre4.i, %bb.e ], [ %i.k, %bb.d ]
  %i.t = phi ptr [ %.pre.i, %bb.e ], [ %i.b, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  store i64 %.pre-phi.i, ptr %i.w, align 8, !tbaa !7
  ret ptr %i.x
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb14ArenaAllocator17ReallocateAlignedEPhmm(ptr noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef readonly captures(address, ret: address, provenance) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6duckdb14ArenaAllocator9AlignNextEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN6duckdb14ArenaAllocator9AlignNextEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %i.d, 7
  %i.h = and i64 %i.g, -8
  store i64 %i.h, ptr %i.c, align 8, !tbaa !7
  br label %_ZN6duckdb14ArenaAllocator9AlignNextEv.exit

_ZN6duckdb14ArenaAllocator9AlignNextEv.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.i = add i64 %3, 7
  %i.j = and i64 %i.i, -8
  %i.k = tail call noundef ptr @_ZN6duckdb14ArenaAllocator10ReallocateEPhmm(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i64 noundef %2, i64 noundef %i.j)
  ret ptr %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb14ArenaAllocator5ResetEv(ptr noundef nonnull align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit.preheader

_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit.preheader: ; preds = %bb.b
  store ptr null, ptr %i.c, align 8, !tbaa !24
  br label %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit.preheader, %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit
  %.sroa.0.07 = phi ptr [ %i.f, %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit ], [ %i.d, %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit.preheader ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !24
  tail call void @_ZN6duckdb10ArenaChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.sroa.0.07) #23, !inline_history !26
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0.07) #44, !inline_history !26
  %.not5 = icmp eq ptr %i.f, null
  br i1 %.not5, label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit, !llvm.loop !77

_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit, %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.i, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr null, ptr %i.j, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.k, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb14ArenaAllocator7DestroyEv(ptr noundef nonnull align 8 captures(none) dereferenceable(72) initializes((24, 32), (64, 72)) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !24
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZN6duckdb10ArenaChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.b) #23, !inline_history !26
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #44, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.d, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb14ArenaAllocator4MoveERS0_(ptr noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(72) initializes((8, 16), (24, 32), (64, 72)) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.b, ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !24
  store ptr null, ptr %i.d, align 8, !tbaa !24
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !24
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZN6duckdb10ArenaChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.g) #23, !inline_history !26
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #44, !inline_history !26
  br label %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.l, ptr %i.m, align 8, !tbaa !63
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !24
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb14ArenaAllocator7DestroyEv.exit, label %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit
  tail call void @_ZN6duckdb10ArenaChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.n) #23, !inline_history !26
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #44, !inline_history !26
  br label %_ZN6duckdb14ArenaAllocator7DestroyEv.exit

_ZN6duckdb14ArenaAllocator7DestroyEv.exit:        ; preds = %_ZN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb10ArenaChunkEEclEPS1_.exit.i.i.i.i.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !64
  store i64 0, ptr %i.k, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN6duckdb14ArenaAllocator7GetHeadEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN6duckdb14ArenaAllocator7GetTailEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb14ArenaAllocator7IsEmptyEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.b, null
  ret i1 %.not.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK6duckdb14ArenaAllocator11SizeInBytesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.07 = phi ptr [ %i.g, %.preheader ], [ %i.b, %bb.a ] ; 2 uses
  %.056 = phi i64 [ %i.e, %.preheader ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7
  %i.e = add i64 %i.d, %.056                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !78

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.e, %.preheader ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK6duckdb14ArenaAllocator14AllocationSizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !63
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb16DatabaseInstance16GetBufferManagerEv(ptr noundef nonnull align 8 dereferenceable(1560) %0)
  ret ptr %i.a
end_hunk_0
