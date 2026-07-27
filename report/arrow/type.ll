inline.NumInlined: 11292
inline.NumDeleted: 4278
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_114InitStaticDataEv:bb.a
          cleanup
  br label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %bb.mu
  %i.arb = phi ptr [ %.040, %bb.mt ], [ %i.arc, %bb.mu ]
  %i.arc = getelementptr inbounds i8, ptr %i.arb, i64 -16 ; 3 uses
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.arc) #37
  %i.ard = icmp eq ptr %i.arc, %6
  br i1 %i.ard, label %.loopexit356, label %bb.mu

.loopexit356.loopexit:                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit298
  %i.are = landingpad { ptr, i32 }
          cleanup
  %i.arf = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.arf) #37
  %i.arg = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.arg) #37
  %i.arh = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.arh) #37
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  br label %.loopexit356

.loopexit356:                                     ; preds = %bb.mu, %.loopexit356.loopexit, %.thread347
  %.pn56 = phi { ptr, i32 } [ %i.are, %.loopexit356.loopexit ], [ %i.ael, %.thread347 ], [ %i.ara, %bb.mu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.mx

.loopexit354.loopexit371:                         ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit308
  %i.ari = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
  br label %.loopexit354

.loopexit354.loopexit:                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit311
  %i.arj = landingpad { ptr, i32 }
          cleanup
  %i.ark = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ark) #37
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
  br label %.loopexit354

.loopexit354:                                     ; preds = %.loopexit354.loopexit371, %.loopexit354.loopexit, %.thread349
  %.pn58 = phi { ptr, i32 } [ %i.arj, %.loopexit354.loopexit ], [ %i.aim, %.thread349 ], [ %i.ari, %.loopexit354.loopexit371 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.mx

bb.mv:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit327, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit324, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit321
  %.0 = phi ptr [ %i.aln, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit327 ], [ %i.ale, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit324 ], [ %i.akv, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit321 ]
  %i.arl = landingpad { ptr, i32 }
          cleanup
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %bb.mw
  %i.arm = phi ptr [ %.0, %bb.mv ], [ %i.arn, %bb.mw ]
  %i.arn = getelementptr inbounds i8, ptr %i.arm, i64 -16 ; 3 uses
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.arn) #37
  %i.aro = icmp eq ptr %i.arn, %8
  br i1 %i.aro, label %.loopexit, label %bb.mw

.loopexit.loopexit:                               ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit330
  %i.arp = landingpad { ptr, i32 }
          cleanup
  %i.arq = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.arq) #37
  %i.arr = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.arr) #37
  %i.ars = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ars) #37
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #37
  br label %.loopexit

.loopexit:                                        ; preds = %bb.mw, %.loopexit.loopexit, %.thread351
  %.pn60 = phi { ptr, i32 } [ %i.arp, %.loopexit.loopexit ], [ %i.akn, %.thread351 ], [ %i.arl, %bb.mw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.mx

bb.mx:                                            ; preds = %.loopexit, %.loopexit354, %.loopexit356, %.loopexit358, %.loopexit360, %.loopexit362, %.loopexit364, %.loopexit366, %.loopexit368
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %.loopexit ], [ %.pn58, %.loopexit354 ], [ %.pn56, %.loopexit356 ], [ %.pn54, %.loopexit358 ], [ %.pn52, %.loopexit360 ], [ %.pn50, %.loopexit362 ], [ %.pn48, %.loopexit364 ], [ %.pn46, %.loopexit366 ], [ %.pn, %.loopexit368 ]
  resume { ptr, i32 } %.pn60.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow11BinaryTypesEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [2 x %"class.std::shared_ptr"], align 16 ; 11 uses
  %1 = alloca %"class.std::allocator.48", align 1 ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN5arrow11BinaryTypesEvE5types acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.m, !prof !2197

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow11BinaryTypesEvE5types) #37
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #37
  %i.d = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6binaryEv()
          to label %bb.d unwind label %.thread    ; 0 uses

.thread:                                          ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow6binaryEvE6result, i64 8), align 8, !tbaa !355 ; 2 uses
  %i.g = load <2 x ptr>, ptr @_ZZN5arrow6binaryEvE6result, align 16, !tbaa !580
  store <2 x ptr> %i.g, ptr %0, align 16, !tbaa !580
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow12large_binaryEv()
          to label %bb.h unwind label %.loopexit.loopexit10 ; 0 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12large_binaryEvE6result, i64 8), align 8, !tbaa !355 ; 2 uses
  %i.p = load <2 x ptr>, ptr @_ZZN5arrow12large_binaryEvE6result, align 16, !tbaa !580
  store <2 x ptr> %i.p, ptr %i.n, align 16, !tbaa !580
  %.not.i.i.i5 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i5, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i6 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7

bb.k:                                             ; preds = %bb.i
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7: ; preds = %bb.h, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EEC2ESt16initializer_listIS3_ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5arrow11BinaryTypesEvE5types, ptr nonnull %0, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.l unwind label %.loopexit.loopexit

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #37
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  %i.w = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev, ptr nonnull @_ZZN5arrow11BinaryTypesEvE5types, ptr nonnull @__dso_handle) #37 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow11BinaryTypesEvE5types) #37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b, %bb.a
  ret ptr @_ZZN5arrow11BinaryTypesEvE5types

.loopexit.loopexit10:                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #37
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #37
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #37
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit10, %.loopexit.loopexit, %.thread
  %.pn = phi { ptr, i32 } [ %i.y, %.loopexit.loopexit ], [ %i.e, %.thread ], [ %i.x, %.loopexit.loopexit10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow11BinaryTypesEvE5types) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EEC2ESt16initializer_listIS3_ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx6 = shl nuw nsw i64 %2, 4                  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx6
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE11_M_allocateEm.exit.thread.i, label %.lr.ph.i.i.i.i.preheader.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE11_M_allocateEm.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %4 = getelementptr inbounds nuw i8, ptr null, i64 %.idx6
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %5, align 8, !tbaa !2600
  br label %.loopexit

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.b = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx6) #36 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !923
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !2600
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.011.i.i.i.i.i = phi ptr [ %i.n, %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.b, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.m, %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !355  ; 2 uses
  %i.g = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !580
  store <2 x ptr> %i.g, ptr %.011.i.i.i.i.i, align 8, !tbaa !580
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.a
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2699

.loopexit:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE11_M_allocateEm.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE11_M_allocateEm.exit.thread.i ], [ %i.n, %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.o, align 8, !tbaa !920
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow11StringTypesEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [2 x %"class.std::shared_ptr"], align 16 ; 11 uses
  %1 = alloca %"class.std::allocator.48", align 1 ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN5arrow11StringTypesEvE5types acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.m, !prof !2197

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow11StringTypesEvE5types) #37
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #37
  %i.d = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4utf8Ev()
          to label %bb.d unwind label %.thread    ; 0 uses

.thread:                                          ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow4utf8EvE6result, i64 8), align 8, !tbaa !355 ; 2 uses
  %i.g = load <2 x ptr>, ptr @_ZZN5arrow4utf8EvE6result, align 16, !tbaa !580
  store <2 x ptr> %i.g, ptr %0, align 16, !tbaa !580
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow10large_utf8Ev()
          to label %bb.h unwind label %.loopexit.loopexit10 ; 0 uses

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow10large_utf8EvE6result, i64 8), align 8, !tbaa !355 ; 2 uses
  %i.p = load <2 x ptr>, ptr @_ZZN5arrow10large_utf8EvE6result, align 16, !tbaa !580
  store <2 x ptr> %i.p, ptr %i.n, align 16, !tbaa !580
  %.not.i.i.i5 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i5, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i6 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7

bb.k:                                             ; preds = %bb.i
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7: ; preds = %bb.h, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EEC2ESt16initializer_listIS3_ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5arrow11StringTypesEvE5types, ptr nonnull %0, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.l unwind label %.loopexit.loopexit

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #37
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  %i.w = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev, ptr nonnull @_ZZN5arrow11StringTypesEvE5types, ptr nonnull @__dso_handle) #37 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow11StringTypesEvE5types) #37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b, %bb.a
  ret ptr @_ZZN5arrow11StringTypesEvE5types

.loopexit.loopexit10:                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #37
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #37
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #37
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit10, %.loopexit.loopexit, %.thread
  %.pn = phi { ptr, i32 } [ %i.y, %.loopexit.loopexit ], [ %i.e, %.thread ], [ %i.x, %.loopexit.loopexit10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow11StringTypesEvE5types) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow15BinaryViewTypesEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.anon.1013, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #37
  store ptr @_ZN5arrow12_GLOBAL__N_114InitStaticDataEv, ptr %0, align 8, !tbaa !580
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !580
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv, ptr %i.b, align 8, !tbaa !580
  %i.c = invoke noundef i32 @pthread_once(ptr noundef nonnull @_ZN5arrow12_GLOBAL__N_123static_data_initializedE, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i:                ; preds = %bb.a
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #39
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 8, !tbaa !580
  store ptr null, ptr %i.b, align 8, !tbaa !580
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  resume { ptr, i32 } %i.d

_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !580
  store ptr null, ptr %i.b, align 8, !tbaa !580
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  ret ptr @_ZN5arrow12_GLOBAL__N_119g_binary_view_typesE
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow14SignedIntTypesEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.anon.1013, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #37
  store ptr @_ZN5arrow12_GLOBAL__N_114InitStaticDataEv, ptr %0, align 8, !tbaa !580
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !580
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv, ptr %i.b, align 8, !tbaa !580
  %i.c = invoke noundef i32 @pthread_once(ptr noundef nonnull @_ZN5arrow12_GLOBAL__N_123static_data_initializedE, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i:                ; preds = %bb.a
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #39
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 8, !tbaa !580
  store ptr null, ptr %i.b, align 8, !tbaa !580
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  resume { ptr, i32 } %i.d

_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !580
  store ptr null, ptr %i.b, align 8, !tbaa !580
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  ret ptr @_ZN5arrow12_GLOBAL__N_118g_signed_int_typesE
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow16UnsignedIntTypesEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
end_hunk_0
