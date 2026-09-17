Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/http2_server_transport?download=true
inline.NumInlined: 18827
inline.NumDeleted: 9060
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE13DequeueFramesEjjjRNS_15HPackCompressorERNS0_11FrameSenderEb:bb.a
bb.w:                                             ; preds = %bb.v
  %i.ax = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 2)
          to label %bb.x unwind label %bb.ac      ; 2 uses

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 23, ptr nonnull @.str.200)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit unwind label %bb.ac

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit: ; preds = %bb.x
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
          to label %.critedge56 unwind label %bb.ac

.critedge56:                                      ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  br label %.critedge57

bb.y:                                             ; preds = %.noexc82, %.noexc81, %bb.al, %_ZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE13HandleDequeue20AppendBufferedFramesEv.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.z:                                             ; preds = %bb.s
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aa:                                            ; preds = %bb.u
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ab:                                            ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit, %bb.x, %bb.w
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #50
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.pn43 = phi { ptr, i32 } [ %i.bc, %bb.ac ], [ %i.bb, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  br label %bb.aj

bb.ae:                                            ; preds = %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE7DequeueEjb.exit
  %i.bd = load i8, ptr %i.al, align 8, !tbaa !1149
  %.not.i.i = icmp eq i8 %i.bd, -1
  br i1 %.not.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.be = call ptr @__cxa_allocate_exception(i64 16) #44 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.be, align 8, !tbaa !161
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @.str.211, ptr %i.bf, align 8, !tbaa !469
  invoke void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #48
          to label %.noexc79 unwind label %.loopexit.split-lp

.noexc79:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEERN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS4_5Arena13PooledDeleterEEE13HandleDequeueEJSt7variantIJNSC_19InitialMetadataTypeENSC_20TrailingMetadataTypeES7_INS4_7MessageESA_ENSC_10HalfClosedEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(41) %11, ptr noundef nonnull align 8 dereferenceable(17) %12)
          to label %.critedge57 unwind label %.loopexit

.critedge57:                                      ; preds = %bb.t, %bb.ag, %.critedge56, %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit
  %i.bg = load i8, ptr %i.ak, align 8, !tbaa !1147, !range !406, !noundef !407
  %i.bh = trunc nuw i8 %i.bg to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !1147
  %i.bi = load i8, ptr %i.al, align 8
  %.not.i.i.i.i.i.i = icmp ne i8 %i.bi, -1
  %or.cond.not.i.i.i = select i1 %i.bh, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.ah, label %_ZNSt14_Optional_baseISt7variantIJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS1_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS1_7MessageES7_ENS9_10HalfClosedEEELb0ELb0EED2Ev.exit, !prof !475

bb.ah:                                            ; preds = %.critedge57
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS3_5Arena13PooledDeleterEEE19InitialMetadataTypeENSB_20TrailingMetadataTypeES6_INS3_7MessageES9_ENSB_10HalfClosedEEE8_M_resetEvEUlOT_E_JRSt7variantIJSC_SD_SF_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc.i.i.i.i.i unwind label %bb.ai

.noexc.i.i.i.i.i:                                 ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br label %_ZNSt14_Optional_baseISt7variantIJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS1_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS1_7MessageES7_ENS9_10HalfClosedEEELb0ELb0EED2Ev.exit

bb.ai:                                            ; preds = %bb.ah
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #46
  unreachable

_ZNSt14_Optional_baseISt7variantIJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS1_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS1_7MessageES7_ENS9_10HalfClosedEEELb0ELb0EED2Ev.exit: ; preds = %.critedge57, %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br i1 %i.at, label %bb.r, label %bb.al

.loopexit:                                        ; preds = %bb.ag
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aa, %bb.ad
  %.pn46 = phi { ptr, i32 } [ %i.ba, %bb.aa ], [ %.pn43, %bb.ad ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt14_Optional_baseISt7variantIJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS1_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS1_7MessageES7_ENS9_10HalfClosedEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #44
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.z
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %bb.aj ], [ %i.az, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br label %bb.an

bb.al:                                            ; preds = %_ZNSt14_Optional_baseISt7variantIJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS1_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS1_7MessageES7_ENS9_10HalfClosedEEELb0ELb0EED2Ev.exit, %bb.r
  invoke void @_ZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE13HandleDequeue24MaybeAppendMessageFramesEv(ptr noundef nonnull align 8 dereferenceable(41) %11)
          to label %.noexc81 unwind label %bb.y

.noexc81:                                         ; preds = %bb.al
  invoke void @_ZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE13HandleDequeue27MaybeAppendEndOfStreamFrameEv(ptr noundef nonnull align 8 dereferenceable(41) %11)
          to label %.noexc82 unwind label %bb.y

.noexc82:                                         ; preds = %.noexc81
  invoke void @_ZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE13HandleDequeue33MaybeAppendTrailingMetadataFramesEv(ptr noundef nonnull align 8 dereferenceable(41) %11)
          to label %_ZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE13HandleDequeue20AppendBufferedFramesEv.exit unwind label %bb.y

_ZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE13HandleDequeue20AppendBufferedFramesEv.exit: ; preds = %.noexc82
  %i.bl = load i32, ptr %i.ad, align 8, !tbaa !1145
  %i.bm = sub i32 %4, %i.bl
  %i.bn = invoke noundef zeroext i1 @_ZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE32UpdateWritableStateDequeueLockedEj(ptr noundef nonnull align 64 dereferenceable(688) %1, i32 noundef %i.bm)
          to label %bb.am unwind label %bb.y

bb.am:                                            ; preds = %_ZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE13HandleDequeue20AppendBufferedFramesEv.exit
  %i.bo = zext i1 %i.bn to i8
  store i8 %i.bo, ptr %0, align 8, !tbaa !762
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.br = load i8, ptr %i.bq, align 64, !tbaa !1133
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !763
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load i32, ptr %i.ad, align 8, !tbaa !1145
  %i.bu = zext i32 %i.bt to i64
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !761
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load i8, ptr %i.ag, align 8, !tbaa !156
  store i8 %.sroa.0.0.copyload.i, ptr %i.bv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak, %bb.y
  %.pn49 = phi { ptr, i32 } [ %i.ay, %bb.y ], [ %.pn46.pn, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  br label %bb.aq

bb.ao:                                            ; preds = %bb.p, %bb.am
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #46
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.ao
  ret void

bb.aq:                                            ; preds = %bb.k, %bb.n, %bb.an, %bb.q
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %bb.an ], [ %i.aa, %bb.q ], [ %.pn, %bb.n ], [ %i.u, %bb.k ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit84 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #46
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit84:      ; preds = %bb.aq
  resume { ptr, i32 } %.pn49.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE23HandleResetStreamLockedEbRNS0_11FrameSenderE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.1556") align 8 %0, ptr noundef nonnull align 64 dereferenceable(688) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %class.anon.1593, align 1           ; 3 uses
  %5 = alloca %"class.std::optional.1580", align 8 ; 6 uses
  %6 = alloca %class.anon.1513, align 1           ; 3 uses
  %7 = alloca %class.anon.1507, align 8           ; 4 uses
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %10 = alloca %"class.std::variant.1448", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 33 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1136  ; 2 uses
  switch i8 %i.c, label %bb.u [
    i8 2, label %bb.b
    i8 1, label %bb.f
    i8 0, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE23HandleResetStreamLockedEbRNS0_11FrameSenderEENKUlvE_clEvE4site, i64 8) monotonic, align 8 ; 2 uses
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %.critedge18, label %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit23, !prof !179

_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit23: ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24) @_ZZZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE23HandleResetStreamLockedEbRNS0_11FrameSenderEENKUlvE_clEvE4site, i32 noundef %i.d)
  br i1 %i.f, label %bb.c, label %.critedge18

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.171, i32 noundef 874) #47
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 57, ptr nonnull @.str.201)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi58EEERS2_RAT__Kc.exit unwind label %bb.e

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi58EEERS2_RAT__Kc.exit: ; preds = %bb.d
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.critedge unwind label %bb.e

.critedge:                                        ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi58EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br label %.critedge18

.critedge18:                                      ; preds = %bb.b, %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit23, %.critedge
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 0, ptr %i.h, align 32, !tbaa !1132
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.649.0..sroa_idx, i8 0, i64 14, i1 false)
  br label %.sink.split

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi58EEERS2_RAT__Kc.exit, %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br label %bb.y

bb.f:                                             ; preds = %bb.a
  %i.j = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE23HandleResetStreamLockedEbRNS0_11FrameSenderEENKUlvE0_clEvE4site, i64 8) monotonic, align 8 ; 2 uses
  %i.k = icmp slt i32 %i.j, 2
  br i1 %i.k, label %.critedge21, label %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit, !prof !179

_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit: ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24) @_ZZZN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE23HandleResetStreamLockedEbRNS0_11FrameSenderEENKUlvE0_clEvE4site, i32 noundef %i.j)
  br i1 %i.l, label %bb.g, label %.critedge21

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.171, i32 noundef 882) #47
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 2)
          to label %bb.h unwind label %bb.o       ; 2 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 67, ptr nonnull @.str.202)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi68EEERS2_RAT__Kc.exit unwind label %bb.o

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi68EEERS2_RAT__Kc.exit: ; preds = %bb.h
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.critedge20 unwind label %bb.o

.critedge20:                                      ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi68EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %.critedge21

.critedge21:                                      ; preds = %bb.f, %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit, %.critedge20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i8 0, ptr %i.n, align 32, !tbaa !1132
  br i1 %2, label %bb.i, label %bb.q

bb.i:                                             ; preds = %.critedge21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 16, !tbaa !1150
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1151
  %.sroa.542.0.insert.ext = zext i32 %i.r to i64
  %.sroa.542.0.insert.shift = shl nuw i64 %.sroa.542.0.insert.ext, 32
  %.sroa.041.0.insert.ext = zext i32 %i.p to i64
  %.sroa.041.0.insert.insert = or disjoint i64 %.sroa.542.0.insert.shift, %.sroa.041.0.insert.ext
  store i64 %.sroa.041.0.insert.insert, ptr %10, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 3 uses
  store i8 3, ptr %i.s, align 8, !tbaa !718
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !722, !nonnull !407, !align !723
  %i.v = invoke noundef i64 @_ZN9grpc_core19GetFrameMemoryUsageERKSt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEE(ptr noundef nonnull align 8 dereferenceable(145) %10)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !724
  %i.y = add i64 %i.x, %i.v
  store i64 %i.y, ptr %i.w, align 8, !tbaa !724
  %i.z = load ptr, ptr %3, align 8, !tbaa !725, !nonnull !407, !align !723 ; 6 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !455, !noalias !2652 ; 2 uses
  %i.ab = trunc i64 %i.aa to i1                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !2652
  %.sink.i.i.i = select i1 %i.ab, i64 %i.ad, i64 8
  %.sink1.i.i.i = lshr i64 %i.aa, 1               ; 2 uses
  %.not.i.i = icmp eq i64 %.sink1.i.i.i, %.sink.i.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j, !prof !166

bb.j:                                             ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !2652
  %.sink2.i.i.i = select i1 %i.ab, ptr %i.af, ptr %i.ae
  %i.ag = getelementptr inbounds nuw [152 x i8], ptr %.sink2.i.i.i, i64 %.sink1.i.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144 ; 2 uses
  store i8 -1, ptr %i.ah, align 8, !tbaa !718
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  store ptr %i.ag, ptr %7, align 8, !tbaa !728
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEC1EOSG_EUlOT_T0_E_JSt7variantIJS5_S6_S7_S8_S9_SA_SB_SC_SD_SE_SF_EEEEDcOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(145) %10)
          to label %_ZNSt7variantIJN9grpc_core14Http2DataFrameENS0_16Http2HeaderFrameENS0_22Http2ContinuationFrameENS0_19Http2RstStreamFrameENS0_18Http2SettingsFrameENS0_14Http2PingFrameENS0_16Http2GoawayFrameENS0_22Http2WindowUpdateFrameENS0_18Http2SecurityFrameENS0_17Http2UnknownFrameENS0_15Http2EmptyFrameEEEC2EOSC_.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #46
  unreachable

_ZNSt7variantIJN9grpc_core14Http2DataFrameENS0_16Http2HeaderFrameENS0_22Http2ContinuationFrameENS0_19Http2RstStreamFrameENS0_18Http2SettingsFrameENS0_14Http2PingFrameENS0_16Http2GoawayFrameENS0_22Http2WindowUpdateFrameENS0_18Http2SecurityFrameENS0_17Http2UnknownFrameENS0_15Http2EmptyFrameEEEC2EOSC_.exit.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  %i.ak = load i8, ptr %i.s, align 8, !tbaa !718  ; 2 uses
  store i8 %i.ak, ptr %i.ah, align 8, !tbaa !718
  %i.al = load i64, ptr %i.z, align 8, !tbaa !455
  %i.am = add i64 %i.al, 2
  store i64 %i.am, ptr %i.z, align 8, !tbaa !455
  br label %_ZN9grpc_core5http211FrameSender15AddRegularFrameEOSt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEE.exit

bb.l:                                             ; preds = %.noexc
  %i.an = invoke noundef nonnull align 8 dereferenceable(145) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageISt7variantIJN9grpc_core14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEELm8ESaISG_EE15EmplaceBackSlowIJSG_EEERSG_DpOT_(ptr noundef nonnull align 8 dereferenceable(1545) %i.z, ptr noundef nonnull align 8 dereferenceable(145) %10)
          to label %._ZN9grpc_core5http211FrameSender15AddRegularFrameEOSt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEE.exit_crit_edge unwind label %bb.p ; 0 uses

._ZN9grpc_core5http211FrameSender15AddRegularFrameEOSt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEE.exit_crit_edge: ; preds = %bb.l
  %.pre = load i8, ptr %i.s, align 8, !tbaa !718
  br label %_ZN9grpc_core5http211FrameSender15AddRegularFrameEOSt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEE.exit

_ZN9grpc_core5http211FrameSender15AddRegularFrameEOSt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEE.exit: ; preds = %._ZN9grpc_core5http211FrameSender15AddRegularFrameEOSt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEE.exit_crit_edge, %_ZNSt7variantIJN9grpc_core14Http2DataFrameENS0_16Http2HeaderFrameENS0_22Http2ContinuationFrameENS0_19Http2RstStreamFrameENS0_18Http2SettingsFrameENS0_14Http2PingFrameENS0_16Http2GoawayFrameENS0_22Http2WindowUpdateFrameENS0_18Http2SecurityFrameENS0_17Http2UnknownFrameENS0_15Http2EmptyFrameEEEC2EOSC_.exit.i.i
  %i.ao = phi i8 [ %.pre, %._ZN9grpc_core5http211FrameSender15AddRegularFrameEOSt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEE.exit_crit_edge ], [ %i.ak, %_ZNSt7variantIJN9grpc_core14Http2DataFrameENS0_16Http2HeaderFrameENS0_22Http2ContinuationFrameENS0_19Http2RstStreamFrameENS0_18Http2SettingsFrameENS0_14Http2PingFrameENS0_16Http2GoawayFrameENS0_22Http2WindowUpdateFrameENS0_18Http2SecurityFrameENS0_17Http2UnknownFrameENS0_15Http2EmptyFrameEEEC2EOSC_.exit.i.i ]
  %.not.i.i34 = icmp eq i8 %i.ao, -1
  br i1 %.not.i.i34, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit, label %bb.m, !prof !166

bb.m:                                             ; preds = %_ZN9grpc_core5http211FrameSender15AddRegularFrameEOSt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS3_16Http2HeaderFrameENS3_22Http2ContinuationFrameENS3_19Http2RstStreamFrameENS3_18Http2SettingsFrameENS3_14Http2PingFrameENS3_16Http2GoawayFrameENS3_22Http2WindowUpdateFrameENS3_18Http2SecurityFrameENS3_17Http2UnknownFrameENS3_15Http2EmptyFrameEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S5_S6_S7_S8_S9_SA_SB_SC_SD_SE_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(145) %10)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #46
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit: ; preds = %_ZN9grpc_core5http211FrameSender15AddRegularFrameEOSt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEE.exit, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  br label %bb.q

bb.o:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi68EEERS2_RAT__Kc.exit, %bb.h, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %bb.y

bb.p:                                             ; preds = %bb.l, %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %10) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  br label %bb.y

bb.q:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit, %.critedge21
  %.sroa.043.0 = phi i8 [ 1, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit ], [ 0, %.critedge21 ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt14_Optional_baseIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryELb0ELb0EED2Ev.exit.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call void @_ZN9grpc_core9ArenaSpscINS_5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS_7MessageES8_ENSA_10HalfClosedEEEE5EntryELb1EE3PopEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1580") align 8 %5, ptr noundef nonnull align 64 dereferenceable(160) %i.at)
  %i.aw = load i8, ptr %i.au, align 8, !tbaa !1153, !range !406, !noundef !407
  %i.ax = trunc nuw i8 %i.aw to i1                ; 2 uses
  store i8 0, ptr %i.au, align 8, !tbaa !1153
  %i.ay = load i8, ptr %i.av, align 8
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.ay, -1
  %or.cond.not.i.i.i.i = select i1 %i.ax, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.s, label %_ZNSt14_Optional_baseIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryELb0ELb0EED2Ev.exit.i, !prof !475

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS3_5Arena13PooledDeleterEEE19InitialMetadataTypeENSB_20TrailingMetadataTypeES6_INS3_7MessageES9_ENSB_10HalfClosedEEE8_M_resetEvEUlOT_E_JRSt7variantIJSC_SD_SF_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.t

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %_ZNSt14_Optional_baseIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryELb0ELb0EED2Ev.exit.i

bb.t:                                             ; preds = %bb.s
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #46
  unreachable

_ZNSt14_Optional_baseIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryELb0ELb0EED2Ev.exit.i: ; preds = %.noexc.i.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br i1 %i.ax, label %bb.r, label %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5ClearEv.exit, !llvm.loop !2651

_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5ClearEv.exit: ; preds = %_ZNSt14_Optional_baseIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryELb0ELb0EED2Ev.exit.i
  store i8 2, ptr %i.b, align 1, !tbaa !1136
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6.0..sroa_idx, i8 0, i64 14, i1 false)
  %12 = load i8, ptr %i.n, align 32, !tbaa !1132, !range !406, !noundef !407
  br label %.sink.split

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #44
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.171, i32 noundef 900, ptr noundef nonnull @.str.150) #47
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 28, ptr nonnull @.str.203)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi29EEERS2_RAT__Kc.exit unwind label %bb.w

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi29EEERS2_RAT__Kc.exit: ; preds = %bb.u
  %i.bb = load i8, ptr %i.b, align 1, !tbaa !1136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bb, ptr %i.a, align 1, !tbaa !156
  %i.bc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIhEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi29EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit38 unwind label %bb.w

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit38: ; preds = %bb.v
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #46
  unreachable

bb.w:                                             ; preds = %bb.v, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi29EEERS2_RAT__Kc.exit, %bb.u
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #46
  unreachable

.sink.split:                                      ; preds = %.critedge18, %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5ClearEv.exit
  %.sink59 = phi i8 [ %12, %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5ClearEv.exit ], [ 0, %.critedge18 ]
  %.sroa.043.0.sink = phi i8 [ %.sroa.043.0, %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5ClearEv.exit ], [ 0, %.critedge18 ]
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %14 = load i8, ptr %13, align 64, !tbaa !1133
  store i8 %.sink59, ptr %0, align 8, !tbaa !457
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %14, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !1139
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.043.0.sink, ptr %.sroa.640.0..sroa_idx, align 8, !tbaa !156
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i8 [ %i.c, %bb.a ], [ 1, %.sink.split ]
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %15, align 8, !tbaa !1138
  ret void

bb.y:                                             ; preds = %bb.p, %bb.o, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.as, %bb.p ], [ %i.ar, %bb.o ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseISt7variantIJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS1_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS1_7MessageES7_ENS9_10HalfClosedEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.1593, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1147, !range !406, !noundef !407
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !1147
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8
  %.not.i.i.i.i.i = icmp ne i8 %i.e, -1
  %or.cond.not.i.i = select i1 %i.c, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZNSt17_Optional_payloadISt7variantIJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS1_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS1_7MessageES7_ENS9_10HalfClosedEEELb0ELb0ELb0EED2Ev.exit, !prof !475

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS3_5Arena13PooledDeleterEEE19InitialMetadataTypeENSB_20TrailingMetadataTypeES6_INS3_7MessageES9_ENSB_10HalfClosedEEE8_M_resetEvEUlOT_E_JRSt7variantIJSC_SD_SF_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(25) %0)
          to label %.noexc.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  br label %_ZNSt17_Optional_payloadISt7variantIJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS1_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS1_7MessageES7_ENS9_10HalfClosedEEELb0ELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #46
  unreachable

_ZNSt17_Optional_payloadISt7variantIJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS1_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS1_7MessageES7_ENS9_10HalfClosedEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %.noexc.i.i.i.i
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsImEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIhEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core9ArenaSpscINS_5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS_7MessageES8_ENSA_10HalfClosedEEEE5EntryELb1EE3PopEv(ptr dead_on_unwind noalias writable sret(%"class.std::optional.1580") align 8 %0, ptr noundef nonnull align 64 dereferenceable(88) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1593, align 1           ; 3 uses
  %3 = alloca %class.anon.1593, align 1           ; 3 uses
  %4 = alloca %"struct.grpc_core::http2::SimpleQueue<std::variant<grpc_core::http2::StreamDataQueue<std::unique_ptr<grpc_metadata_batch, grpc_core::Arena::PooledDeleter>>::InitialMetadataType, grpc_core::http2::StreamDataQueue<std::unique_ptr<grpc_metadata_batch, grpc_core::Arena::PooledDeleter>>::TrailingMetadataType, std::unique_ptr<grpc_core::Message, grpc_core::Arena::PooledDeleter>, grpc_core::http2::StreamDataQueue<std::unique_ptr<grpc_metadata_batch, grpc_core::Arena::PooledDeleter>>::HalfClosed>>::Entry", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.e, align 8, !tbaa !1153
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !1149  ; 6 uses
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.i, 3   ; 2 uses
  br i1 %switch.i.i.i.i.i.i.i.i, label %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryC2EOSH_.exit.thread, label %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryC2EOSH_.exit

_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryC2EOSH_.exit.thread: ; preds = %bb.c
  %i.j = load i8, ptr %i.f, align 8, !tbaa !457   ; 2 uses
  store i8 %i.j, ptr %4, align 8, !tbaa !457
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !454
  store i64 %i.m, ptr %i.k, align 8, !tbaa !454
  store ptr null, ptr %i.l, align 8, !tbaa !454
  store i8 %i.i, ptr %i.g, align 8, !tbaa !1149
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1161
  store i32 %i.p, ptr %i.n, align 8, !tbaa !1161
  br label %bb.d

_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryC2EOSH_.exit: ; preds = %bb.c
  store i8 %i.i, ptr %i.g, align 8, !tbaa !1149
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1161
  store i32 %i.s, ptr %i.q, align 8, !tbaa !1161
  %.not.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i, label %_ZNSt8optionalIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryEEC2ISI_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISJ_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESM_ISN_ISt10in_place_tSU_EESt16is_constructibleISI_JSQ_EESt14is_convertibleISQ_SI_EEEbE4typeELb1EEEOSQ_.exit.thread12, label %bb.d, !prof !1162

_ZNSt8optionalIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryEEC2ISI_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISJ_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESM_ISN_ISt10in_place_tSU_EESt16is_constructibleISI_JSQ_EESt14is_convertibleISQ_SI_EEEbE4typeELb1EEEOSQ_.exit.thread12: ; preds = %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryC2EOSH_.exit
  store atomic ptr %i.c, ptr %i.a release, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.i, ptr %i.t, align 8, !tbaa !1149
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.q, align 8, !tbaa !1161
  store i32 %i.v, ptr %i.u, align 8, !tbaa !1161
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !1153
  br label %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryD2Ev.exit8

bb.d:                                             ; preds = %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryC2EOSH_.exit.thread, %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryC2EOSH_.exit
  %i.x = phi i8 [ %i.j, %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryC2EOSH_.exit.thread ], [ undef, %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryC2EOSH_.exit ]
  %i.y = phi ptr [ %i.n, %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryC2EOSH_.exit.thread ], [ %i.q, %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryC2EOSH_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS3_5Arena13PooledDeleterEEE19InitialMetadataTypeENSB_20TrailingMetadataTypeES6_INS3_7MessageES9_ENSB_10HalfClosedEEE8_M_resetEvEUlOT_E_JRSt7variantIJSC_SD_SF_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(28) %i.f)
          to label %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #46
  unreachable

_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryD2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  store atomic ptr %i.c, ptr %i.a release, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %switch.i.i.i.i.i.i.i.i, label %_ZNSt8optionalIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryEEC2ISI_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISJ_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESM_ISN_ISt10in_place_tSU_EESt16is_constructibleISI_JSQ_EESt14is_convertibleISQ_SI_EEEbE4typeELb1EEEOSQ_.exit.thread, label %_ZNSt8optionalIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryEEC2ISI_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISJ_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESM_ISN_ISt10in_place_tSU_EESt16is_constructibleISI_JSQ_EESt14is_convertibleISQ_SI_EEEbE4typeELb1EEEOSQ_.exit

_ZNSt8optionalIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryEEC2ISI_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISJ_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESM_ISN_ISt10in_place_tSU_EESt16is_constructibleISI_JSQ_EESt14is_convertibleISQ_SI_EEEbE4typeELb1EEEOSQ_.exit.thread: ; preds = %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryD2Ev.exit
  store i8 %i.x, ptr %0, align 8, !tbaa !457
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !454
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !454
  store ptr null, ptr %i.ad, align 8, !tbaa !454
  br label %_ZNSt8optionalIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryEEC2ISI_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISJ_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESM_ISN_ISt10in_place_tSU_EESt16is_constructibleISI_JSQ_EESt14is_convertibleISQ_SI_EEEbE4typeELb1EEEOSQ_.exit

_ZNSt8optionalIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryEEC2ISI_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISJ_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESM_ISN_ISt10in_place_tSU_EESt16is_constructibleISI_JSQ_EESt14is_convertibleISQ_SI_EEEbE4typeELb1EEEOSQ_.exit: ; preds = %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryD2Ev.exit, %_ZNSt8optionalIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryEEC2ISI_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISJ_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESM_ISN_ISt10in_place_tSU_EESt16is_constructibleISI_JSQ_EESt14is_convertibleISQ_SI_EEEbE4typeELb1EEEOSQ_.exit.thread
  store i8 %i.i, ptr %i.ab, align 8, !tbaa !1149
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.y, align 8, !tbaa !1161
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !1161
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ah, align 8, !tbaa !1153
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS3_5Arena13PooledDeleterEEE19InitialMetadataTypeENSB_20TrailingMetadataTypeES6_INS3_7MessageES9_ENSB_10HalfClosedEEE8_M_resetEvEUlOT_E_JRSt7variantIJSC_SD_SF_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(28) %4)
          to label %.noexc.i.i7 unwind label %bb.f

.noexc.i.i7:                                      ; preds = %_ZNSt8optionalIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryEEC2ISI_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISJ_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESM_ISN_ISt10in_place_tSU_EESt16is_constructibleISI_JSQ_EESt14is_convertibleISQ_SI_EEEbE4typeELb1EEEOSQ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryD2Ev.exit8

bb.f:                                             ; preds = %_ZNSt8optionalIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryEEC2ISI_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISJ_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESM_ISN_ISt10in_place_tSU_EESt16is_constructibleISI_JSQ_EESt14is_convertibleISQ_SI_EEEbE4typeELb1EEEOSQ_.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #46
  unreachable

_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryD2Ev.exit8: ; preds = %_ZNSt8optionalIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryEEC2ISI_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISJ_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESM_ISN_ISt10in_place_tSU_EESt16is_constructibleISI_JSQ_EESt14is_convertibleISQ_SI_EEEbE4typeELb1EEEOSQ_.exit.thread12, %.noexc.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.g

bb.g:                                             ; preds = %_ZN9grpc_core5http211SimpleQueueISt7variantIJNS0_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE19InitialMetadataTypeENS9_20TrailingMetadataTypeES4_INS_7MessageES7_ENS9_10HalfClosedEEEE5EntryD2Ev.exit8, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.1593, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1153, !range !406, !noundef !407
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !1153
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8
  %.not.i.i.i.i.i.i = icmp ne i8 %i.e, -1
  %or.cond.not.i.i = select i1 %i.c, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZNSt17_Optional_payloadIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryELb0ELb0ELb0EED2Ev.exit, !prof !475

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5http215StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS3_5Arena13PooledDeleterEEE19InitialMetadataTypeENSB_20TrailingMetadataTypeES6_INS3_7MessageES9_ENSB_10HalfClosedEEE8_M_resetEvEUlOT_E_JRSt7variantIJSC_SD_SF_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(33) %0)
          to label %.noexc.i.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  br label %_ZNSt17_Optional_payloadIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryELb0ELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #46
  unreachable

_ZNSt17_Optional_payloadIN9grpc_core5http211SimpleQueueISt7variantIJNS1_15StreamDataQueueISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEE19InitialMetadataTypeENSA_20TrailingMetadataTypeES5_INS0_7MessageES8_ENSA_10HalfClosedEEEE5EntryELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %.noexc.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_0
