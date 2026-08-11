inline.NumInlined: 3027
inline.NumDeleted: 1523
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK7rocksdb21BloomLikeFilterPolicy38GetStandard128RibbonBuilderWithContextERKNS_21FilterBuildingContextE:bb.a
bb.ba:                                            ; preds = %bb.ay
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i27 = icmp eq i8 %i.ga, 0
  br i1 %.not.i.i.i27, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gb = add nsw i32 %i.fs, -1
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

bb.bc:                                            ; preds = %bb.ba
  %i.gc = atomicrmw volatile add ptr %i.fp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i29 = phi i32 [ %i.fs, %bb.bb ], [ %i.gc, %bb.bc ]
  %i.gd = icmp eq i32 %.0.i.i.i.i29, 1
  br i1 %i.gd, label %bb.bd, label %_ZNSt12__shared_ptrIN7rocksdb23CacheReservationManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, !prof !135

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #37
  br label %_ZNSt12__shared_ptrIN7rocksdb23CacheReservationManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30

_ZNSt12__shared_ptrIN7rocksdb23CacheReservationManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30: ; preds = %_ZNSt12__shared_ptrIN7rocksdb23CacheReservationManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret ptr %i.bl

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN7rocksdb27CacheReservationManagerImplILNS0_14CacheEntryRoleE8EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body31

.body:                                            ; preds = %bb.ap, %bb.aq
  %eh.lpad-body = phi { ptr, i32 } [ %i.ew, %bb.ap ], [ %i.ex, %bb.aq ]
  call void @_ZNSt12__shared_ptrIN7rocksdb23CacheReservationManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #37
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 648) #39
  br label %.body31

.body31:                                          ; preds = %bb.s, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb27CacheReservationManagerImplILNS1_14CacheEntryRoleE8EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i, %.body, %bb.be
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ge, %bb.be ], [ %i.bk, %bb.s ], [ %i.w, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb27CacheReservationManagerImplILNS1_14CacheEntryRoleE8EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i ]
  call void @_ZNSt12__shared_ptrIN7rocksdb23CacheReservationManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7rocksdb19BuiltinFilterPolicy21GetBuilderFromContextERKNS_21FilterBuildingContextE(ptr noundef nonnull align 8 dereferenceable(68) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53, !nonnull !59, !align !60
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !175  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(68) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN7rocksdb4test23LegacyBloomFilterPolicy10kClassNameEv() local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr @.str.10
}

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @_ZNK7rocksdb4test23LegacyBloomFilterPolicy21GetBuilderWithContextERKNS_21FilterBuildingContextE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !38   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 13
  br i1 %i.f, label %bb.c, label %_ZNK7rocksdb21BloomLikeFilterPolicy32GetLegacyBloomBuilderWithContextERKNS_21FilterBuildingContextE.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK7rocksdb21BloomLikeFilterPolicy32GetLegacyBloomBuilderWithContextERKNS_21FilterBuildingContextE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load atomic i8, ptr %i.i monotonic, align 8, !range !101, !noundef !59
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNK7rocksdb21BloomLikeFilterPolicy32GetLegacyBloomBuilderWithContextERKNS_21FilterBuildingContextE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store atomic i8 1, ptr %i.i seq_cst, align 8
  %i.l = icmp samesign ugt i32 %i.e, 19
  %.str.5..str.6.i = select i1 %i.l, ptr @.str.5, ptr @.str.6
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !100
  tail call void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 2, ptr noundef %i.m, ptr noundef nonnull @.str.7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 32), i32 noundef %i.e, ptr noundef nonnull %.str.5..str.6.i)
  br label %_ZNK7rocksdb21BloomLikeFilterPolicy32GetLegacyBloomBuilderWithContextERKNS_21FilterBuildingContextE.exit

_ZNK7rocksdb21BloomLikeFilterPolicy32GetLegacyBloomBuilderWithContextERKNS_21FilterBuildingContextE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.n = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #40 ; 7 uses
  %i.o = load i32, ptr %i.d, align 4, !tbaa !38   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_122LegacyBloomBitsBuilderE, i64 16), ptr %i.n, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.o, ptr %i.r, align 8, !tbaa !102
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.t = sitofp i32 %i.o to double
  %i.u = fmul nnan double %i.t, 6.900000e-01
  %i.v = fptosi double %i.u to i32
  %spec.store.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %spec.store.select1.i.i.i = tail call noundef i32 @llvm.umin.i32(i32 %spec.store.select.i.i.i, i32 30)
  store i32 %spec.store.select1.i.i.i, ptr %i.s, align 4, !tbaa !110
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 -1, ptr %i.x, align 8, !tbaa !111
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.q, ptr %i.y, align 8, !tbaa !112
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNK7rocksdb21BloomLikeFilterPolicy32GetLegacyBloomBuilderWithContextERKNS_21FilterBuildingContextE.exit
  %.0 = phi ptr [ %i.n, %_ZNK7rocksdb21BloomLikeFilterPolicy32GetLegacyBloomBuilderWithContextERKNS_21FilterBuildingContextE.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN7rocksdb4test26FastLocalBloomFilterPolicy10kClassNameEv() local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr @.str.11
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK7rocksdb4test26FastLocalBloomFilterPolicy21GetBuilderWithContextERKNS_21FilterBuildingContextE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK7rocksdb21BloomLikeFilterPolicy35GetFastLocalBloomBuilderWithContextERKNS_21FilterBuildingContextE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(68) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN7rocksdb4test29Standard128RibbonFilterPolicy10kClassNameEv() local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr @.str.12
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK7rocksdb4test29Standard128RibbonFilterPolicy21GetBuilderWithContextERKNS_21FilterBuildingContextE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK7rocksdb21BloomLikeFilterPolicy38GetStandard128RibbonBuilderWithContextERKNS_21FilterBuildingContextE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(68) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZN7rocksdb19BuiltinFilterPolicy26GetBuiltinFilterBitsReaderERKNS_5SliceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = icmp ult i32 %i.c, 6
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_117AlwaysFalseFilterE, i64 16), ptr %i.e, align 8, !tbaa !16
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !178    ; 3 uses
  %i.g = add i32 %i.c, -5                         ; 5 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !43    ; 3 uses
  %1 = zext nneg i8 %i.j to i32
  %i.k = icmp slt i8 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  switch i8 %i.j, label %bb.h [
    i8 0, label %bb.e
    i8 -1, label %bb.f
    i8 -2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_116AlwaysTrueFilterE, i64 16), ptr %i.l, align 8, !tbaa !16
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef ptr @_ZN7rocksdb19BuiltinFilterPolicy18GetBloomBitsReaderERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef ptr @_ZN7rocksdb19BuiltinFilterPolicy19GetRibbonBitsReaderERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %bb.o

bb.h:                                             ; preds = %bb.d
  %i.o = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_116AlwaysTrueFilterE, i64 16), ptr %i.o, align 8, !tbaa !16
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  %i.p = and i64 %i.b, 4294967295
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %.0.copyload.i = load i32, ptr %i.r, align 1    ; 5 uses
  %i.s = shl i32 %.0.copyload.i, 6
  %i.t = icmp eq i32 %i.s, %i.g
  br i1 %i.t, label %_ZN7rocksdb18ConstexprFloorLog2IjEEiT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = icmp eq i32 %.0.copyload.i, 0
  br i1 %i.u, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = urem i32 %i.g, %.0.copyload.i
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.w = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_116AlwaysTrueFilterE, i64 16), ptr %i.w, align 8, !tbaa !16
  br label %bb.o

.preheader:                                       ; preds = %bb.k, %.preheader
  %.0 = phi i32 [ %i.z, %.preheader ], [ 0, %bb.k ] ; 3 uses
  %i.x = shl i32 %.0.copyload.i, %.0              ; 2 uses
  %i.y = icmp ult i32 %i.x, %i.g
  %i.z = add i32 %.0, 1
  br i1 %i.y, label %.preheader, label %bb.m, !llvm.loop !179

bb.m:                                             ; preds = %.preheader
  %.not36 = icmp eq i32 %i.x, %i.g
  br i1 %.not36, label %_ZN7rocksdb18ConstexprFloorLog2IjEEiT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_116AlwaysTrueFilterE, i64 16), ptr %i.aa, align 8, !tbaa !16
  br label %bb.o

_ZN7rocksdb18ConstexprFloorLog2IjEEiT_.exit:      ; preds = %bb.i, %bb.m
  %.1 = phi i32 [ %.0, %bb.m ], [ 6, %bb.i ]
  %i.ab = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #40 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_121LegacyBloomBitsReaderE, i64 16), ptr %i.ab, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.f, ptr %i.ac, align 8, !tbaa !180
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %1, ptr %i.ad, align 8, !tbaa !184
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i32 %.0.copyload.i, ptr %i.ae, align 4, !tbaa !185
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i32 %.1, ptr %i.af, align 8, !tbaa !186
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %_ZN7rocksdb18ConstexprFloorLog2IjEEiT_.exit, %bb.n, %bb.l, %bb.b
  %.2 = phi ptr [ %i.e, %bb.b ], [ %i.o, %bb.h ], [ %i.l, %bb.e ], [ %i.m, %bb.f ], [ %i.n, %bb.g ], [ %i.ab, %_ZN7rocksdb18ConstexprFloorLog2IjEEiT_.exit ], [ %i.w, %bb.l ], [ %i.aa, %bb.n ]
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZN7rocksdb19BuiltinFilterPolicy18GetBloomBitsReaderERKNS_5SliceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !176  ; 4 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = add i32 %i.c, -5
  %i.e = load ptr, ptr %0, align 8, !tbaa !178    ; 4 uses
  %i.f = add i64 %i.b, 4294967292
  %i.g = and i64 %i.f, 4294967295
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !43
  %i.j = add i64 %i.b, 4294967293
  %i.k = and i64 %i.j, 4294967295
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !43    ; 2 uses
  %i.n = and i8 %i.m, 31                          ; 2 uses
  %i.o = zext nneg i8 %i.n to i32
  %.off = add nsw i8 %i.n, -1
  %switch = icmp ult i8 %.off, 30
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_116AlwaysTrueFilterE, i64 16), ptr %i.p, align 8, !tbaa !16
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.q = and i64 %i.b, 4294967295
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -2
  %.0.copyload.i = load i16, ptr %i.s, align 1
  %.not = icmp eq i16 %.0.copyload.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_116AlwaysTrueFilterE, i64 16), ptr %i.t, align 8, !tbaa !16
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i8 %i.i, 0
  %i.v = icmp ult i8 %i.m, 32
  %or.cond3 = and i1 %i.u, %i.v
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #40 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_124FastLocalBloomBitsReaderE, i64 16), ptr %i.w, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.e, ptr %i.x, align 8, !tbaa !187
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %i.o, ptr %i.y, align 8, !tbaa !189
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 %i.d, ptr %i.z, align 4, !tbaa !190
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aa = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_116AlwaysTrueFilterE, i64 16), ptr %i.aa, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.1 = phi ptr [ %i.p, %bb.b ], [ %i.t, %bb.d ], [ %i.w, %bb.f ], [ %i.aa, %bb.g ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZN7rocksdb19BuiltinFilterPolicy19GetRibbonBitsReaderERKNS_5SliceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !176  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !178    ; 5 uses
  %i.d = add i64 %i.b, 4294967293
  %i.e = and i64 %i.d, 4294967295
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !43
  %i.h = zext i8 %i.g to i32
  %i.i = add i64 %i.b, 4294967294
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !43
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = or disjoint i32 %i.n, %i.h
  %i.p = add i64 %i.b, 4294967295
  %i.q = and i64 %i.p, 4294967295
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !43
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 16
  %i.v = or disjoint i32 %i.o, %i.u               ; 6 uses
  %i.w = icmp samesign ult i32 %i.v, 2
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_116AlwaysTrueFilterE, i64 16), ptr %i.x, align 8, !tbaa !16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.y = add i64 %i.b, 4294967292
  %i.z = and i64 %i.y, 4294967295
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !43
  %i.ac = add i64 %i.b, 4294967291
  %i.ad = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #40 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_127Standard128RibbonBitsReaderE, i64 16), ptr %i.ad, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.c, ptr %i.ae, align 8, !tbaa !191
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
end_hunk_0
