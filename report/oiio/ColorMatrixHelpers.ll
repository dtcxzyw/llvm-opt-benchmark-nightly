inline.NumInlined: 207
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16OpenColorIO_v2_515rgb2xyz_from_xyERKNS_9PrimariesE:bb.a
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.r
  %.pn = phi { ptr, i32 } [ %i.gr, %bb.aq ], [ %i.cq, %bb.r ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  br label %.body

bb.as:                                            ; preds = %bb.ap
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  %i.gt = load atomic i64, ptr %i.gs acquire, align 8 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 4294967297
  %i.gv = trunc i64 %i.gt to i32                  ; 2 uses
  br i1 %i.gu, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.gs, align 8, !tbaa !10
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gw, align 4, !tbaa !12
  %i.gx = load ptr, ptr %i.gq, align 8, !tbaa !13
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #13, !inline_history !28
  %i.ha = load ptr, ptr %i.gq, align 8, !tbaa !13
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #13, !inline_history !28
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.au:                                            ; preds = %bb.as
  %i.hd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.hd, 0
  br i1 %.not.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.he = add nsw i32 %i.gv, -1
  store i32 %i.he, ptr %i.gs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.hf = atomicrmw volatile add ptr %i.gs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i = phi i32 [ %i.gv, %bb.av ], [ %i.hf, %bb.aw ]
  %i.hg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hg, label %bb.ax, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #13
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ap, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.hh = load ptr, ptr %i.f, align 8, !tbaa !15  ; 8 uses
  %.not.i.i44 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i44, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.hi, align 8, !tbaa !10
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !12
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !13
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #13, !inline_history !28
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !13
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #13, !inline_history !28
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48

bb.ba:                                            ; preds = %bb.ay
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i45 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i45, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46

bb.bc:                                            ; preds = %bb.ba
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i47 = phi i32 [ %i.hl, %bb.bb ], [ %i.hv, %bb.bc ]
  %i.hw = icmp eq i32 %.0.i.i.i.i47, 1
  br i1 %i.hw, label %bb.bd, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48, !prof !30

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #13
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

.body:                                            ; preds = %bb.n, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i42, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ar ], [ %i.bz, %bb.n ], [ %i.bq, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i42 ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  br label %bb.be

bb.be:                                            ; preds = %.body, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.by, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.be ], [ %i.bx, %bb.l ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK16OpenColorIO_v2_512MatrixOpData11MatrixArray7inverseEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !12
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !31
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520build_vonkries_adaptERKNS_12MatrixOpData7OffsetsES3_NS_16AdaptationMethodE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr", align 8   ; 10 uses
  %5 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %6 = alloca %"class.OpenColorIO_v2_5::MatrixOpData::Offsets", align 8 ; 6 uses
  %7 = alloca %"class.OpenColorIO_v2_5::MatrixOpData::Offsets", align 8 ; 6 uses
  %8 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %9 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #14, !noalias !32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !10, !noalias !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !12, !noalias !32
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !13, !noalias !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData11MatrixArrayC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !32

common.resume:                                    ; preds = %bb.ax, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.e, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #15, !noalias !32
  br label %common.resume

_ZSt11make_sharedIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8, !tbaa !15, !alias.scope !32
  store ptr %i.d, ptr %4, align 8, !tbaa !19, !alias.scope !32
  %i.g = icmp eq i32 %3, 2
  %i.h = select i1 %i.g, ptr @_ZZN16OpenColorIO_v2_520build_vonkries_adaptERKNS_12MatrixOpData7OffsetsES3_NS_16AdaptationMethodEE19CONE_RESP_MAT_CAT02, ptr @_ZZN16OpenColorIO_v2_520build_vonkries_adaptERKNS_12MatrixOpData7OffsetsES3_NS_16AdaptationMethodEE22CONE_RESP_MAT_BRADFORD
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData11MatrixArray7setRGBAEPKd(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.c:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.j = load ptr, ptr %4, align 8, !tbaa !26
  invoke void @_ZNK16OpenColorIO_v2_512MatrixOpData11MatrixArray7inverseEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %bb.d unwind label %bb.al

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.k = load ptr, ptr %4, align 8, !tbaa !26
  invoke void @_ZNK16OpenColorIO_v2_512MatrixOpData11MatrixArray5innerERKNS0_7OffsetsE(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::MatrixOpData::Offsets") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.am

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.l = load ptr, ptr %4, align 8, !tbaa !26
  invoke void @_ZNK16OpenColorIO_v2_512MatrixOpData11MatrixArray5innerERKNS0_7OffsetsE(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::MatrixOpData::Offsets") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.an

bb.f:                                             ; preds = %bb.e
  %i.m = load double, ptr %7, align 8, !tbaa !21
  %i.n = load double, ptr %6, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %10 = load <2 x double>, ptr %i.o, align 8, !tbaa !21
  %11 = load <2 x double>, ptr %i.p, align 8, !tbaa !21
  %12 = fdiv <2 x double> %10, %11                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.q = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #14
          to label %.noexc unwind label %bb.ao    ; 6 uses

.noexc:                                           ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 1, ptr %i.r, align 8, !tbaa !10, !noalias !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 1, ptr %i.s, align 4, !tbaa !12, !noalias !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.q, align 8, !tbaa !13, !noalias !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 11 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData11MatrixArrayC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %bb.g unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i18, !noalias !35

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i18: ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 64) #15, !noalias !35
  br label %.body

bb.g:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.v, align 8, !tbaa !15, !alias.scope !35
  store ptr %i.t, ptr %8, align 8, !tbaa !19, !alias.scope !35
  %i.w = fdiv double %i.m, %i.n
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 noundef 0, double noundef %i.w)
          to label %bb.h unwind label %bb.ap

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %13 = extractelement <2 x double> %12, i64 0
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 noundef 5, double noundef %13)
          to label %bb.i unwind label %bb.ap

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %14 = extractelement <2 x double> %12, i64 1
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 noundef 10, double noundef %14)
          to label %bb.j unwind label %bb.ap

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 noundef 15, double noundef 1.000000e+00)
          to label %bb.k unwind label %bb.ap

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %5, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  invoke void @_ZNK16OpenColorIO_v2_512MatrixOpData11MatrixArray5innerERKSt10shared_ptrIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.l unwind label %bb.aq

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK16OpenColorIO_v2_512MatrixOpData11MatrixArray5innerERKSt10shared_ptrIS1_E(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.m unwind label %bb.ar

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15 ; 8 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.am, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !12
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #13, !inline_history !28
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #13, !inline_history !28
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.ap, %bb.q ], [ %i.az, %bb.r ]
  %i.ba = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ba, label %bb.s, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #13
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !15  ; 8 uses
  %.not.i.i20 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i20, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bc, align 8, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !12
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #13, !inline_history !28
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #13, !inline_history !28
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24

bb.v:                                             ; preds = %bb.t
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i21 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i21, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

bb.x:                                             ; preds = %bb.v
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i23 = phi i32 [ %i.bf, %bb.w ], [ %i.bp, %bb.x ]
  %i.bq = icmp eq i32 %.0.i.i.i.i23, 1
  br i1 %i.bq, label %bb.y, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24, !prof !30

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #13
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !15 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bt, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !12
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #13, !inline_history !28
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #13, !inline_history !28
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29

bb.ab:                                            ; preds = %bb.z
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i26 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i26, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.ad:                                            ; preds = %bb.ab
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i28 = phi i32 [ %i.bw, %bb.ac ], [ %i.cg, %bb.ad ]
  %i.ch = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.ch, label %bb.ae, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29, !prof !30

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #13
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.ci = load ptr, ptr %i.f, align 8, !tbaa !15  ; 8 uses
  %.not.i.i30 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i30, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34, label %bb.af

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cj, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !12
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #13, !inline_history !28
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #13, !inline_history !28
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34

bb.ah:                                            ; preds = %bb.af
end_hunk_0
