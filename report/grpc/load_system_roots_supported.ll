inline.NumInlined: 168
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@llvm.lifetime.end.p0
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core21CreateRootCertsBundleEPKc(ptr dead_on_unwind noalias writable sret(%struct.grpc_slice) align 8 %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 6 uses
  %3 = alloca %struct.FileData, align 8           ; 9 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %6 = alloca %struct.grpc_slice, align 8         ; 5 uses
  tail call void @grpc_empty_slice(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8 %0)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @opendir(ptr noundef nonnull %1) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EED2Ev.exit, label %.preheader85

.preheader85:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4096
  br label %bb.c

bb.c:                                             ; preds = %.preheader85, %bb.u
  %.sroa.17.0 = phi ptr [ %.sroa.17.1, %bb.u ], [ null, %.preheader85 ] ; 8 uses
  %.sroa.12.0 = phi ptr [ %.sroa.12.1, %bb.u ], [ null, %.preheader85 ] ; 7 uses
  %.sroa.078.0 = phi ptr [ %.sroa.078.1, %bb.u ], [ null, %.preheader85 ] ; 16 uses
  %.042 = phi i64 [ %.143, %bb.u ], [ 0, %.preheader85 ] ; 4 uses
  %i.g = invoke ptr @readdir(ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZN9grpc_core19GetAbsoluteFilePathEPKcS1_Pc(ptr noundef nonnull %1, ptr noundef nonnull %i.h, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.i = call i32 @stat(ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i32, ptr %i.d, align 8, !tbaa !13
  %i.l = and i32 %i.k, 61440
  %i.m = icmp eq i32 %i.l, 32768
  br i1 %i.m, label %bb.o, label %bb.u, !llvm.loop !17

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.1, i32 noundef 117) #18
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %.critedge
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 31, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit unwind label %bb.m

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit: ; preds = %bb.h
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4096EEERS2_RAT__c(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(4096) %3)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.m

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.i
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.u, !llvm.loop !17

bb.j:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.k:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.l:                                             ; preds = %.critedge
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i, %bb.h, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn57 = phi { ptr, i32 } [ %i.r, %bb.m ], [ %i.q, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.v

bb.o:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  store i64 %i.s, ptr %i.f, align 8, !tbaa !20
  %.not.i = icmp eq ptr %.sroa.12.0, %.sroa.17.0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %.sroa.12.0, ptr noundef nonnull readonly align 8 dereferenceable(4104) %3, i64 4104, i1 false), !tbaa.struct !22
  br label %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE9push_backERKS3_.exit

bb.q:                                             ; preds = %bb.o
  %i.t = ptrtoint ptr %.sroa.17.0 to i64
  %i.u = ptrtoint ptr %.sroa.078.0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775296
  br i1 %i.w, label %bb.r, label %_ZNKSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE12_M_check_lenEmS2_.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE12_M_check_lenEmS2_.exit.i.i: ; preds = %bb.q
  %i.x = sdiv exact i64 %i.v, 4104                ; 3 uses
  %i.y = icmp eq ptr %.sroa.17.0, %.sroa.078.0
  %.sroa.speculated.i.i.i = select i1 %i.y, i64 1, i64 %i.x
  %i.z = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.x
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 2247410340364224)
  %i.ac = select i1 %i.aa, i64 2247410340364224, i64 %i.ab ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ad = mul nuw nsw i64 %i.ac, 4104
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #21
          to label %.noexc70 unwind label %.loopexit ; 4 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE12_M_check_lenEmS2_.exit.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.v ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(4104) %3, i64 4104, i1 false), !tbaa.struct !22
  %i.ag = icmp sgt i64 %i.v, 0
  br i1 %i.ag, label %bb.s, label %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i

bb.s:                                             ; preds = %.noexc70
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %.sroa.078.0, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i

_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i: ; preds = %bb.s, %.noexc70
  %.not.i21.i.i = icmp eq ptr %.sroa.078.0, null
  br i1 %.not.i21.i.i, label %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.078.0, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i
  %i.ah = getelementptr inbounds nuw [4104 x i8], ptr %i.ae, i64 %i.ac
  br label %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.p
  %.sroa.17.2 = phi ptr [ %i.ah, %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.17.0, %bb.p ]
  %.pn84 = phi ptr [ %i.af, %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.12.0, %bb.p ]
  %.sroa.078.2 = phi ptr [ %i.ae, %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.078.0, %bb.p ]
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn84, i64 4104
  %i.ai = add i64 %i.s, %.042
  br label %bb.u

bb.u:                                             ; preds = %bb.g, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit, %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE9push_backERKS3_.exit
  %.sroa.17.1 = phi ptr [ %.sroa.17.0, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %.sroa.17.2, %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE9push_backERKS3_.exit ], [ %.sroa.17.0, %bb.g ]
  %.sroa.12.1 = phi ptr [ %.sroa.12.0, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %.sroa.12.2, %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE9push_backERKS3_.exit ], [ %.sroa.12.0, %bb.g ]
  %.sroa.078.1 = phi ptr [ %.sroa.078.0, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %.sroa.078.2, %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE9push_backERKS3_.exit ], [ %.sroa.078.0, %bb.g ]
  %.143 = phi i64 [ %.042, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %i.ai, %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE9push_backERKS3_.exit ], [ %.042, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.c

.loopexit:                                        ; preds = %_ZNKSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EE12_M_check_lenEmS2_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.k
  %.pn57.pn.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %.pn57, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ap

bb.w:                                             ; preds = %bb.d
  %i.aj = call i32 @closedir(ptr noundef nonnull %i.b) ; 0 uses
  %i.ak = add i64 %.042, 1
  %i.al = invoke ptr @gpr_zalloc(i64 noundef %i.ak)
          to label %.preheader unwind label %bb.x ; 2 uses

.preheader:                                       ; preds = %bb.w
  %7 = ptrtoint ptr %.sroa.078.0 to i64           ; 5 uses
  %.not133 = icmp eq ptr %.sroa.12.0, %.sroa.078.0
  br i1 %.not133, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.am = ptrtoint ptr %.sroa.12.0 to i64
  %i.an = sub i64 %i.am, %7
  %i.ao = sdiv exact i64 %i.an, 4104
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.al, %.preheader
  %.029.lcssa = phi i64 [ 0, %.preheader ], [ %.2, %bb.al ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @grpc_slice_new(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %6, ptr noundef %i.al, i64 noundef %.029.lcssa, ptr noundef nonnull @gpr_free)
          to label %bb.am unwind label %bb.ao

bb.x:                                             ; preds = %bb.w
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.al
  %.0131 = phi i64 [ %i.bf, %bb.al ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.029130 = phi i64 [ %.2, %bb.al ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4104 x i8], ptr %.sroa.078.0, i64 %.0131 ; 3 uses
  %i.ar = invoke i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.aq, i32 noundef 0)
          to label %bb.y unwind label %bb.ac      ; 3 uses

bb.y:                                             ; preds = %.lr.ph
  %.not49 = icmp eq i32 %i.ar, -1
  br i1 %.not49, label %bb.al, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4096
  %i.at = load i64, ptr %i.as, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 %.029130
  %i.av = invoke i64 @read(i32 noundef %i.ar, ptr noundef %i.au, i64 noundef %i.at)
          to label %bb.aa unwind label %bb.ad     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.aw = and i64 %i.av, 4294967295
  %.not50 = icmp eq i64 %i.aw, 4294967295
  br i1 %.not50, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %sext = shl i64 %i.av, 32
  %i.ax = ashr exact i64 %sext, 32
  %i.ay = add i64 %i.ax, %.029130
  br label %bb.ak

bb.ac:                                            ; preds = %.lr.ph
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ad:                                            ; preds = %bb.ak, %bb.z
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.1, i32 noundef 138) #18
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 21, ptr nonnull @.str.4)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit unwind label %bb.ai

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit: ; preds = %bb.af
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4096EEERS2_RAT__c(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(4096) %i.aq)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit73 unwind label %bb.ai

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit73: ; preds = %bb.ag
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.af, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.ai ], [ %i.bc, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.thread

bb.ak:                                            ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit73, %bb.ab
  %.1 = phi i64 [ %i.ay, %bb.ab ], [ %.029130, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit73 ]
  %i.be = invoke i32 @close(i32 noundef %i.ar)
          to label %bb.al unwind label %bb.ad     ; 0 uses

bb.al:                                            ; preds = %bb.ak, %bb.y
  %.2 = phi i64 [ %.029130, %bb.y ], [ %.1, %bb.ak ] ; 2 uses
  %i.bf = add nuw i64 %.0131, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %i.ao
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

bb.am:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.not.i.i.i74 = icmp eq ptr %.sroa.078.0, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bg = ptrtoint ptr %.sroa.17.0 to i64
  %i.bh = sub i64 %i.bg, %7
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.078.0, i64 noundef %i.bh) #22
  br label %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EED2Ev.exit

bb.ao:                                            ; preds = %._crit_edge
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ap

bb.ap:                                            ; preds = %bb.x, %bb.ao, %bb.v, %bb.j
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn, %bb.v ], [ %i.o, %bb.j ], [ %i.ap, %bb.x ], [ %i.bi, %bb.ao ] ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %.sroa.078.0, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EED2Ev.exit76, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.ap
  %.pre = ptrtoint ptr %.sroa.078.0 to i64
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.ad, %bb.aj, %bb.ac
  %.pre-phi = phi i64 [ %.pre, %..thread_crit_edge ], [ %7, %bb.ad ], [ %7, %bb.aj ], [ %7, %bb.ac ]
  %.pn57.pn.pn.pn82 = phi { ptr, i32 } [ %.pn57.pn.pn.pn, %..thread_crit_edge ], [ %i.ba, %bb.ad ], [ %.pn, %bb.aj ], [ %i.az, %bb.ac ]
  %i.bj = ptrtoint ptr %.sroa.17.0 to i64
  %i.bk = sub i64 %i.bj, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.078.0, i64 noundef %i.bk) #22
  br label %_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EED2Ev.exit76

_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EED2Ev.exit76: ; preds = %bb.ap, %.thread
  %.pn57.pn.pn.pn83 = phi { ptr, i32 } [ %.pn57.pn.pn.pn, %bb.ap ], [ %.pn57.pn.pn.pn82, %.thread ]
  resume { ptr, i32 } %.pn57.pn.pn.pn83

_ZNSt6vectorIZN9grpc_core21CreateRootCertsBundleEPKcE8FileDataSaIS3_EED2Ev.exit: ; preds = %bb.an, %bb.am, %bb.b, %bb.a
  ret void
}

declare void @grpc_empty_slice(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #2

declare ptr @readdir(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4096EEERS2_RAT__c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(4096) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  tail call void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE1EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.a, ptr nonnull %1)
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @gpr_zalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #6

declare void @grpc_slice_new(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare void @gpr_free(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core19LoadSystemRootCertsEv(ptr dead_on_unwind noalias writable sret(%struct.grpc_slice) align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 25 uses
  %1 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 23 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 42 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %struct.grpc_slice, align 8         ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %struct.grpc_slice, align 8         ; 6 uses
  %7 = alloca %struct.grpc_slice, align 8         ; 21 uses
  tail call void @grpc_empty_slice(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8 %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.c = load atomic ptr, ptr @_ZN9grpc_core10ConfigVars12config_vars_E acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN9grpc_core10ConfigVars3GetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(312) ptr @_ZN9grpc_core10ConfigVars4LoadEv()
  br label %_ZN9grpc_core10ConfigVars3GetEv.exit

_ZN9grpc_core10ConfigVars3GetEv.exit:             ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  call void @_ZNK9grpc_core10ConfigVars17SystemSslRootsDirB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(312) %.0.i)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29   ; 5 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.j, label %bb.c

bb.c:                                             ; preds = %_ZN9grpc_core10ConfigVars3GetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !32
  %i.i = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %i.f, ptr %i.b, align 8, !tbaa !24
  %i.j = icmp ugt i64 %i.f, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %._crit_edge.i.i.thread unwind label %bb.h ; 2 uses

._crit_edge.i.i.thread:                           ; preds = %.noexc.i
  store ptr %i.k, ptr %5, align 8, !tbaa !33
  %i.l = load i64, ptr %i.b, align 8, !tbaa !24
  store i64 %i.l, ptr %i.h, align 8, !tbaa !23
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.c
  %cond = icmp eq i64 %i.f, 1
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.i, align 1, !tbaa !23
  store i8 %i.m, ptr %i.h, align 8, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.n = phi ptr [ %i.k, %._crit_edge.i.i.thread ], [ %i.h, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.i, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load i64, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !29
  %i.q = load ptr, ptr %5, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.s = load ptr, ptr %5, align 8, !tbaa !33
  invoke void @_ZN9grpc_core21CreateRootCertsBundleEPKc(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %4, ptr noundef %i.s)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !26
  %i.t = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.v = load i64, ptr %i.h, align 8, !tbaa !23
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.j

bb.h:                                             ; preds = %.noexc.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.h
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.i
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !23
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.h
  %.pn = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ak

end_hunk_0
