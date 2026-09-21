Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/multiTracker?download=true
inline.NumInlined: 1088
inline.NumDeleted: 559
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv6legacy8tracking15MultiTrackerTLD10update_optERKNS_11_InputArrayE:bb.a
  %i.ws = sext i32 %i.wr to i64
  %i.wt = icmp slt i64 %indvars.iv.next371, %i.ws
  br i1 %i.wt, label %bb.bg, label %._crit_edge363, !llvm.loop !143

bb.eg:                                            ; preds = %.body225, %bb.cz, %bb.bf
  %.pn122.pn.pn = phi { ptr, i32 } [ %i.iy, %bb.bf ], [ %.pn122, %bb.cz ], [ %.pn117.pn.pn, %.body225 ] ; 2 uses
  %.not.i.i273 = icmp eq ptr %.sroa.0298.0471, null
  br i1 %.not.i.i273, label %.body166, label %.thread318

.thread318:                                       ; preds = %bb.dg, %bb.db, %bb.eg
  %.pn122.pn.pn321 = phi { ptr, i32 } [ %.pn122.pn.pn, %bb.eg ], [ %i.rf, %bb.db ], [ %i.sh, %bb.dg ]
  %i.wu = ptrtoint ptr %.sroa.17305.0472 to i64
  %i.wv = ptrtoint ptr %.sroa.0298.0471 to i64
  %i.ww = sub i64 %i.wu, %i.wv                    ; 2 uses
  %i.wx = ashr exact i64 %i.ww, 3
  %i.wy = sub nsw i64 0, %i.wx
  %i.wz = getelementptr inbounds [8 x i8], ptr %.sroa.17305.0472, i64 %i.wy
  call void @_ZdlPvm(ptr noundef %i.wz, i64 noundef %i.ww) #22
  br label %.body166

.body166:                                         ; preds = %.thread318, %bb.eg
  %.pn122.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn, %bb.eg ], [ %.pn122.pn.pn321, %.thread318 ] ; 2 uses
  %.not.i.i275 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i275, label %.body, label %bb.eh

bb.eh:                                            ; preds = %.body166.thread, %.body166
  %.pn122.pn.pn.pn476 = phi { ptr, i32 } [ %i.er, %.body166.thread ], [ %.pn122.pn.pn.pn, %.body166 ]
  %i.xa = phi ptr [ %i.eg, %.body166.thread ], [ %i.fa, %.body166 ] ; 2 uses
  %i.xb = phi ptr [ %i.ed, %.body166.thread ], [ %i.fb, %.body166 ]
  %i.xc = ptrtoint ptr %i.xa to i64
  %i.xd = ptrtoint ptr %i.xb to i64
  %i.xe = sub i64 %i.xc, %i.xd                    ; 2 uses
  %i.xf = ashr exact i64 %i.xe, 3
  %i.xg = sub nsw i64 0, %i.xf
  %i.xh = getelementptr inbounds [8 x i8], ptr %i.xa, i64 %i.xg
  call void @_ZdlPvm(ptr noundef %i.xh, i64 noundef %i.xe) #22
  br label %.body

.body:                                            ; preds = %bb.eh, %.body166, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i
  %.pn122.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ee, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i ], [ %.pn122.pn.pn.pn476, %bb.eh ], [ %.pn122.pn.pn.pn, %.body166 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.xi = load ptr, ptr %17, align 8, !tbaa !31   ; 3 uses
  %.not.i.i.i277 = icmp eq ptr %i.xi, null
  br i1 %.not.i.i.i277, label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit278, label %bb.ei

bb.ei:                                            ; preds = %.body
  %i.xj = ptrtoint ptr %.sink.i154 to i64
  %i.xk = ptrtoint ptr %i.xi to i64
  %i.xl = sub i64 %i.xj, %i.xk
  call void @_ZdlPvm(ptr noundef nonnull %i.xi, i64 noundef %i.xl) #22
  br label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit278

_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit278:  ; preds = %bb.ei, %.body, %bb.ao
  %.pn122.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ga, %bb.ao ], [ %.pn122.pn.pn.pn.pn, %.body ], [ %.pn122.pn.pn.pn.pn, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #19
  br label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit278, %bb.an
  %.pn122.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit278 ], [ %i.fz, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @_ZNSt6vectorIS_IN2cv5Rect_IdEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #19
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.am
  %.pn122.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn.pn.pn.pn.pn, %bb.ej ], [ %i.fy, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @_ZNSt6vectorIS_IN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #19
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.al
  %.pn122.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn.pn.pn.pn.pn.pn, %bb.ek ], [ %i.fx, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #19
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ak
  %.pn122.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn.pn.pn.pn.pn.pn.pn, %bb.el ], [ %i.fw, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.aj, %bb.w, %bb.u, %bb.t
  %.pn122.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.em ], [ %i.fv, %bb.aj ], [ %i.bk, %bb.u ], [ %i.bm, %bb.w ], [ %i.bj, %bb.t ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZNSt12__shared_ptrIN2cv8tracking4impl3tld4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn122.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8tracking4impl10detect_allERKNS_3MatES4_RSt6vectorINS_5Rect_IdEESaIS7_EERS5_IS5_INS1_3tld11TLDDetector12LabeledPatchESaISD_EESaISF_EERS5_IbSaIbEERS5_INS_3PtrINS_6legacy8tracking7TrackerEEESaISQ_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.128", align 1 ; 3 uses
  %11 = alloca %"class.cv::Mat_", align 8         ; 9 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %13 = alloca %"class.std::vector.95", align 8   ; 19 uses
  %14 = alloca %"class.std::vector.95", align 8   ; 16 uses
  %15 = alloca %"class.cv::Mat_.121", align 8     ; 12 uses
  %16 = alloca %"class.cv::Mat_.121", align 8     ; 12 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.cv::Rect_", align 16       ; 7 uses
  %i.a = load ptr, ptr %5, align 8, !tbaa !59
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95, !noalias !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21, !noalias !206 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN2cv6detail8tracking12TrackerModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !206
  %.not.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !23, !noalias !206
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !23, !noalias !206
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4, !noalias !206 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.g, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #19, !inline_history !2
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #19, !inline_history !2
  br label %_ZNSt12__shared_ptrIN2cv6detail8tracking12TrackerModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.g, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.h ], [ %i.x, %bb.i ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.j, label %_ZNSt12__shared_ptrIN2cv6detail8tracking12TrackerModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #19
  br label %_ZNSt12__shared_ptrIN2cv6detail8tracking12TrackerModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv6detail8tracking12TrackerModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 680
  %.sroa.0.0.copyload.i = load i64, ptr %i.z, align 8 ; 5 uses
  %.sroa.0621.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %.sroa.10627.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %22 = bitcast i64 %.sroa.0.0.copyload.i to <2 x i32> ; 2 uses
  %.sroa.10627.0.extract.trunc = trunc nuw i64 %.sroa.10627.0.extract.shift to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35
  %i.ac = load ptr, ptr %5, align 8, !tbaa !59
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = lshr exact i64 %i.af, 4                 ; 3 uses
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12__shared_ptrIN2cv6detail8tracking12TrackerModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aj = load ptr, ptr %3, align 8, !tbaa !69    ; 3 uses
  %i.ak = and i64 %i.af, 34359738352
  %i.al = icmp eq i64 %i.ak, 16
  br i1 %i.al, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ag, 2147483646
  br label %bb.r

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit.1
  %i.am = and i64 %i.af, 16
  %lcmp.mod.not = icmp eq i64 %i.am, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod962 = trunc i64 %i.ag to i1
  tail call void @llvm.assume(i1 %lcmp.mod962)
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %indvars.iv.epil.init ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !91 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !114
  %.not.i.i248.epil = icmp eq ptr %i.aq, %i.ao
  br i1 %.not.i.i248.epil, label %._crit_edge, label %_ZSt8_DestroyIPN2cv8tracking4impl3tld11TLDDetector12LabeledPatchES5_EvT_S7_RSaIT0_E.exit.i.i.epil

_ZSt8_DestroyIPN2cv8tracking4impl3tld11TLDDetector12LabeledPatchES5_EvT_S7_RSaIT0_E.exit.i.i.epil: ; preds = %.epil.preheader
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !114
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZSt8_DestroyIPN2cv8tracking4impl3tld11TLDDetector12LabeledPatchES5_EvT_S7_RSaIT0_E.exit.i.i.epil, %.epil.preheader, %_ZNSt12__shared_ptrIN2cv6detail8tracking12TrackerModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef 15, i32 noundef 15, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #19
  %23 = sdiv <2 x i32> %22, splat (i32 10)        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !207 ; 6 uses
  %i.at = icmp slt i32 %i.as, 3
  br i1 %i.at, label %bb.n, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 109) #20
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc
  unreachable

bb.m:                                             ; preds = %.noexc
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %9, align 8, !tbaa !117   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !22
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.body

bb.n:                                             ; preds = %._crit_edge
  %i.ba = icmp sgt i32 %i.as, 0
  br i1 %i.ba, label %bb.o, label %.thread.i

.thread.i:                                        ; preds = %bb.n
  %i.bb = icmp eq i32 %i.as, 0
  %i.bc = zext i1 %i.bb to i32
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.be = icmp eq i32 %i.as, 2
  %i.bf = zext i1 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !23 ; 2 uses
  %.not.i = icmp eq i32 %i.as, 1
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %i.bd, align 4, !tbaa !23
  br label %bb.s

bb.q:                                             ; preds = %bb.o, %.thread.i
  %i.bj = phi i32 [ %i.bc, %.thread.i ], [ %i.bh, %bb.o ]
  %i.bk = icmp sgt i32 %i.as, -1
  %i.bl = zext i1 %i.bk to i32
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit.1, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit.1 ]
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !91 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !114
  %.not.i.i248 = icmp eq ptr %i.bp, %i.bn
  br i1 %.not.i.i248, label %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv8tracking4impl3tld11TLDDetector12LabeledPatchES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8tracking4impl3tld11TLDDetector12LabeledPatchES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %bb.r
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !114
  br label %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit

_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit: ; preds = %bb.r, %_ZSt8_DestroyIPN2cv8tracking4impl3tld11TLDDetector12LabeledPatchES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !91 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !114
  %.not.i.i248.1 = icmp eq ptr %i.bu, %i.bs
  br i1 %.not.i.i248.1, label %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit.1, label %_ZSt8_DestroyIPN2cv8tracking4impl3tld11TLDDetector12LabeledPatchES5_EvT_S7_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPN2cv8tracking4impl3tld11TLDDetector12LabeledPatchES5_EvT_S7_RSaIT0_E.exit.i.i.1: ; preds = %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !114
  br label %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit.1

_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit.1: ; preds = %_ZSt8_DestroyIPN2cv8tracking4impl3tld11TLDDetector12LabeledPatchES5_EvT_S7_RSaIT0_E.exit.i.i.1, %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.r, !llvm.loop !177

bb.s:                                             ; preds = %bb.p, %bb.q
  %i.bv = phi i32 [ %i.bh, %bb.p ], [ %i.bj, %bb.q ]
  %i.bw = phi i32 [ %i.bi, %bb.p ], [ %i.bl, %bb.q ]
  %i.bx = sitofp i32 %i.bv to double
  %i.by = sitofp i32 %i.bw to double
  %.sroa.0609.0.vec.insert = insertelement <2 x double> poison, double %i.bx, i64 0
  %.sroa.0609.8.vec.insert620 = insertelement <2 x double> %.sroa.0609.0.vec.insert, double %i.by, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.bz = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ca = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 4                 ; 3 uses
  %i.cf = icmp ugt i64 %i.ce, 384307168202282325
  br i1 %i.cf, label %bb.t, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc249 unwind label %bb.ae

.noexc249:                                        ; preds = %bb.t
  unreachable

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.s
  %.not.i.i.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EEC2EmRKS5_.exit260, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.cg = mul nuw nsw i64 %i.ce, 24               ; 3 uses
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #21
          to label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EEC2EmRKS5_.exit unwind label %bb.ae ; 6 uses

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EEC2EmRKS5_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.ce
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ch, i8 0, i64 %i.cg, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ch, i64 %i.cg ; 3 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 3 uses
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %.pre766 = load ptr, ptr %5, align 8, !tbaa !59 ; 2 uses
  %.pre773 = ptrtoint ptr %.pre to i64
  %.pre774 = ptrtoint ptr %.pre766 to i64         ; 3 uses
  %i.ck = sub i64 %.pre773, %.pre774
  %i.cl = ashr exact i64 %i.ck, 4                 ; 3 uses
  %i.cm = icmp ugt i64 %i.cl, 384307168202282325
  br i1 %i.cm, label %bb.u, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i251

bb.u:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EEC2EmRKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc258 unwind label %bb.af

.noexc258:                                        ; preds = %bb.u
  unreachable

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i251: ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EEC2EmRKS5_.exit
  %i.cn = icmp eq ptr %.pre, %.pre766
  br i1 %i.cn, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EEC2EmRKS5_.exit260, label %.lr.ph.preheader.i.i.i.i.i253

.lr.ph.preheader.i.i.i.i.i253:                    ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i251
  %i.co = mul nuw nsw i64 %i.cl, 24               ; 3 uses
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #21
          to label %.noexc259 unwind label %bb.af ; 4 uses

.noexc259:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i253
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.cl
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cp, i8 0, i64 %i.co, i1 false)
  %scevgep.i.i.i.i.i254 = getelementptr i8, ptr %i.cp, i64 %i.co
  %i.cr = ptrtoint ptr %i.cq to i64
  %.pre767 = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %.pre768 = load ptr, ptr %5, align 8, !tbaa !59 ; 2 uses
  %.pre776 = ptrtoint ptr %.pre767 to i64
  %.pre778 = ptrtoint ptr %.pre768 to i64
  %i.cs = icmp eq ptr %.pre767, %.pre768
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EEC2EmRKS5_.exit260

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EEC2EmRKS5_.exit260: ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i, %.noexc259, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i251
  %.sroa.0587.0885902 = phi ptr [ %i.ch, %.noexc259 ], [ %i.ch, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i251 ], [ null, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 9 uses
  %.sink.i889901 = phi i64 [ %i.cj, %.noexc259 ], [ %i.cj, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i251 ], [ 0, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i893900 = phi ptr [ %scevgep.i.i.i.i.i, %.noexc259 ], [ %scevgep.i.i.i.i.i, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i251 ], [ null, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 4 uses
  %.pre-phi779 = phi i64 [ %.pre778, %.noexc259 ], [ %.pre774, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i251 ], [ %i.cb, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %.pre-phi777 = phi i64 [ %.pre776, %.noexc259 ], [ %.pre774, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i251 ], [ %i.cb, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %.not.i.i.i.i261 = phi i1 [ %i.cs, %.noexc259 ], [ true, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i251 ], [ true, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %.sroa.0575.0 = phi ptr [ %i.cp, %.noexc259 ], [ null, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i251 ], [ null, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 12 uses
  %.sink.i255 = phi i64 [ %i.cr, %.noexc259 ], [ 0, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i251 ], [ 0, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i256 = phi ptr [ %scevgep.i.i.i.i.i254, %.noexc259 ], [ null, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i251 ], [ null, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 4 uses
  %i.ct = sub i64 %.pre-phi777, %.pre-phi779
  %i.cu = ashr exact i64 %i.ct, 4                 ; 3 uses
  %i.cv = icmp ugt i64 %i.cu, 384307168202282325
  br i1 %i.cv, label %bb.v, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.v:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EEC2EmRKS5_.exit260
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc266 unwind label %bb.ag

.noexc266:                                        ; preds = %bb.v
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EEC2EmRKS5_.exit260
  br i1 %.not.i.i.i.i261, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit277, label %.lr.ph.preheader.i.i.i.i.i262

.lr.ph.preheader.i.i.i.i.i262:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.cw = mul nuw nsw i64 %i.cu, 24               ; 3 uses
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #21
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit unwind label %bb.ag ; 6 uses

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit:    ; preds = %.lr.ph.preheader.i.i.i.i.i262
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.cu
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cx, i8 0, i64 %i.cw, i1 false)
  %scevgep.i.i.i.i.i263 = getelementptr i8, ptr %i.cx, i64 %i.cw ; 3 uses
  %i.cz = ptrtoint ptr %i.cy to i64               ; 3 uses
  %.pre769 = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %.pre770 = load ptr, ptr %5, align 8, !tbaa !59 ; 2 uses
  %.pre780 = ptrtoint ptr %.pre769 to i64
  %.pre782 = ptrtoint ptr %.pre770 to i64
  %i.da = sub i64 %.pre780, %.pre782
  %i.db = ashr exact i64 %i.da, 4                 ; 3 uses
  %i.dc = icmp ugt i64 %i.db, 384307168202282325
  br i1 %i.dc, label %bb.w, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i268

bb.w:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc275 unwind label %bb.ah

.noexc275:                                        ; preds = %bb.w
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i268: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit
  %i.dd = icmp eq ptr %.pre769, %.pre770
  br i1 %i.dd, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit277, label %.lr.ph.preheader.i.i.i.i.i270

.lr.ph.preheader.i.i.i.i.i270:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i268
  %i.de = mul nuw nsw i64 %i.db, 24               ; 3 uses
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #21
          to label %.noexc276 unwind label %bb.ah ; 4 uses

.noexc276:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i270
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.db
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.df, i8 0, i64 %i.de, i1 false)
  %scevgep.i.i.i.i.i271 = getelementptr i8, ptr %i.df, i64 %i.de
  %i.dh = ptrtoint ptr %i.dg to i64
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit277

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit277: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.noexc276, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i268
  %.sroa.0565.0912928 = phi ptr [ %i.cx, %.noexc276 ], [ %i.cx, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i268 ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 9 uses
  %.sink.i264916927 = phi i64 [ %i.cz, %.noexc276 ], [ %i.cz, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i268 ], [ 0, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i265920926 = phi ptr [ %scevgep.i.i.i.i.i263, %.noexc276 ], [ %scevgep.i.i.i.i.i263, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i268 ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %.sroa.0556.0 = phi ptr [ %i.df, %.noexc276 ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i268 ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 12 uses
  %.sink.i272 = phi i64 [ %i.dh, %.noexc276 ], [ 0, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i268 ], [ 0, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i273 = phi ptr [ %scevgep.i.i.i.i.i271, %.noexc276 ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i268 ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 7 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !120 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !121
  %.not.i278 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not.i278, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit277
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.dj, ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %.noexc279 unwind label %bb.ai

.noexc279:                                        ; preds = %bb.x
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !120
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 208
  store ptr %i.dn, ptr %i.di, align 8, !tbaa !120
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit

bb.y:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit277
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.dj, ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit unwind label %bb.ai

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc279, %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 7 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !120 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  %.not.i281 = icmp eq ptr %i.dp, %i.dr
  br i1 %.not.i281, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.dp, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %.noexc282 unwind label %bb.ai

.noexc282:                                        ; preds = %bb.z
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !120
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 208
  store ptr %i.dt, ptr %i.do, align 8, !tbaa !120
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit284

bb.aa:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.dp, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit284 unwind label %bb.ai

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit284: ; preds = %bb.aa, %.noexc282
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 16
  %24 = extractelement <2 x i32> %23, i64 0       ; 2 uses
  %i.eb = sitofp i32 %24 to double
  %25 = sitofp <2 x i32> %22 to <2 x double>      ; 5 uses
  %26 = extractelement <2 x i32> %23, i64 1       ; 2 uses
  %i.ec = sitofp i32 %26 to double
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.eg = mul nsw i32 %.sroa.10627.0.extract.trunc, %.sroa.0621.0.extract.trunc
  %i.eh = sitofp i32 %i.eg to double
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.el = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.en = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %19, i64 20
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ev = sext i32 %26 to i64
  %i.ew = ashr i64 %.sroa.0.0.copyload.i, 32
  %i.ex = sext i32 %24 to i64
  %sext = shl i64 %.sroa.0.0.copyload.i, 32
  %i.ey = ashr exact i64 %sext, 32
  %i.ez = extractelement <2 x double> %25, i64 0  ; 2 uses
  %i.fa = extractelement <2 x double> %25, i64 1
  %i.fb = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit284, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit329
  %indvars.iv743 = phi i64 [ 0, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit284 ], [ %indvars.iv.next744, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit329 ] ; 6 uses
  %.sroa.0609.0 = phi <2 x double> [ %.sroa.0609.8.vec.insert620, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit284 ], [ %i.mj, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit329 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #19
  %i.fd = load i32, ptr %15, align 8, !tbaa !208
  %i.fe = and i32 %i.fd, -4096
  %i.ff = or disjoint i32 %i.fe, 6
  store i32 %i.ff, ptr %15, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #19
  %i.fg = load i32, ptr %16, align 8, !tbaa !208
  %i.fh = and i32 %i.fg, -4096
  %i.fi = or disjoint i32 %i.fh, 6
  store i32 %i.fi, ptr %16, align 8, !tbaa !208
  %i.fj = load ptr, ptr %13, align 8, !tbaa !122
  %i.fk = getelementptr inbounds nuw [208 x i8], ptr %i.fj, i64 %indvars.iv743
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i32 0, ptr %i.du, align 8, !tbaa !64
  store i32 0, ptr %i.dv, align 4, !tbaa !65
  store i32 16842752, ptr %6, align 8, !tbaa !66
  store ptr %i.fk, ptr %i.dw, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 0, ptr %i.dy, align 8
  store i32 -2113863674, ptr %7, align 8, !tbaa !66
  store ptr %15, ptr %i.dx, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i64 0, ptr %i.ea, align 8
  store i32 -2113863674, ptr %8, align 8, !tbaa !66
  store ptr %16, ptr %i.dz, align 8, !tbaa !62
  invoke void @_ZN2cv8integralERKNS_11_InputArrayERKNS_12_OutputArrayES5_ii(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 6, i32 noundef -1)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.fl = load ptr, ptr %13, align 8, !tbaa !122
  %i.fm = getelementptr inbounds nuw [208 x i8], ptr %i.fl, i64 %indvars.iv743
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !209
  %i.fp = sitofp i32 %i.fo to double
  %i.fq = fsub double %i.fp, %i.ez
  %i.fr = fdiv double %i.fq, %i.eb
  %i.fs = call double @llvm.floor.f64(double %i.fr)
  %i.ft = fptosi double %i.fs to i32              ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph692.preheader, label %._crit_edge693

.lr.ph692.preheader:                              ; preds = %bb.ac
  %wide.trip.count741 = zext nneg i32 %i.ft to i64
  %i.fv = trunc nuw nsw i64 %indvars.iv743 to i32
  %i.fw = trunc nuw nsw i64 %indvars.iv743 to i32
  br label %.lr.ph692

bb.ad:                                            ; preds = %bb.k
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.t
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit481

bb.af:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i253, %bb.u
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit470

bb.ag:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i262, %bb.v
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit459

bb.ah:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i270, %bb.w
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit448

bb.ai:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit437

bb.aj:                                            ; preds = %bb.bl, %bb.bk, %bb.bh, %bb.bg, %bb.ab
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.lr.ph692:                                        ; preds = %.lr.ph692.preheader, %._crit_edge689
  %indvars.iv738 = phi i64 [ 0, %.lr.ph692.preheader ], [ %indvars.iv.next739, %._crit_edge689 ] ; 2 uses
  %i.ge = load ptr, ptr %13, align 8, !tbaa !122
  %i.gf = getelementptr inbounds nuw [208 x i8], ptr %i.ge, i64 %indvars.iv743
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !210
  %i.gi = sitofp i32 %i.gh to double
  %i.gj = fsub double %i.gi, %i.fa
  %i.gk = fdiv double %i.gj, %i.ec
  %i.gl = call double @llvm.floor.f64(double %i.gk)
  %i.gm = fptosi double %i.gl to i32              ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph688, label %._crit_edge689

.lr.ph688:                                        ; preds = %.lr.ph692
  %i.go = mul nsw i64 %indvars.iv738, %i.ex       ; 6 uses
  %i.gp = add nsw i64 %i.go, %i.ey                ; 4 uses
  %.sroa.0532.0.insert.ext = and i64 %i.go, 4294967295
  %wide.trip.count736 = zext nneg i32 %i.gm to i64
  %.pre771 = load ptr, ptr %i.aa, align 8, !tbaa !35
  %.pre772 = load ptr, ptr %5, align 8, !tbaa !59
  br label %bb.ak

._crit_edge689:                                   ; preds = %._crit_edge685, %.lr.ph692
  %indvars.iv.next739 = add nuw nsw i64 %indvars.iv738, 1 ; 2 uses
  %exitcond742.not = icmp eq i64 %indvars.iv.next739, %wide.trip.count741
  br i1 %exitcond742.not, label %._crit_edge693, label %.lr.ph692, !llvm.loop !178

bb.ak:                                            ; preds = %.lr.ph688, %._crit_edge685
  %i.gq = phi ptr [ %.pre772, %.lr.ph688 ], [ %i.is, %._crit_edge685 ] ; 3 uses
  %i.gr = phi ptr [ %.pre771, %.lr.ph688 ], [ %i.it, %._crit_edge685 ] ; 2 uses
  %indvars.iv733 = phi i64 [ 0, %.lr.ph688 ], [ %indvars.iv.next734, %._crit_edge685 ] ; 2 uses
  %i.gs = mul nsw i64 %indvars.iv733, %i.ev       ; 4 uses
  %i.gt = load i32, ptr %i.ed, align 4, !tbaa !211
  %i.gu = icmp slt i32 %i.gt, 2                   ; 2 uses
  %i.gv = load ptr, ptr %i.ee, align 8, !tbaa !212 ; 2 uses
  %i.gw = load i64, ptr %i.ef, align 8            ; 2 uses
  %i.gx = mul i64 %i.gw, %i.gs
  %.sink.idx.i = select i1 %i.gu, i64 0, i64 %i.gx
  %.sink.i286 = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sink.idx.i ; 2 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %.sink.i286, i64 %i.go
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !29
  %i.ha = getelementptr inbounds [8 x i8], ptr %.sink.i286, i64 %i.gp
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !29
  %i.hc = add nsw i64 %i.gs, %i.ew                ; 2 uses
  %i.hd = mul i64 %i.gw, %i.hc
  %.sink.idx.i289 = select i1 %i.gu, i64 0, i64 %i.hd
  %.sink.i290 = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sink.idx.i289 ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %.sink.i290, i64 %i.go
  %i.hf = load double, ptr %i.he, align 8, !tbaa !29
  %i.hg = getelementptr inbounds [8 x i8], ptr %.sink.i290, i64 %i.gp
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !29
  %i.hi = load i32, ptr %i.ei, align 4, !tbaa !211
  %i.hj = icmp slt i32 %i.hi, 2                   ; 2 uses
  %i.hk = load ptr, ptr %i.ej, align 8, !tbaa !212 ; 2 uses
  %i.hl = load i64, ptr %i.ek, align 8            ; 2 uses
  %i.hm = mul i64 %i.hl, %i.gs
  %.sink.idx.i293 = select i1 %i.hj, i64 0, i64 %i.hm
  %.sink.i294 = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.sink.idx.i293 ; 2 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %.sink.i294, i64 %i.go
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !29
  %i.hp = getelementptr inbounds [8 x i8], ptr %.sink.i294, i64 %i.gp
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !29
  %i.hr = mul i64 %i.hl, %i.hc
  %.sink.idx.i297 = select i1 %i.hj, i64 0, i64 %i.hr
  %.sink.i298 = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.sink.idx.i297 ; 2 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %.sink.i298, i64 %i.go
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !29
  %i.hu = getelementptr inbounds [8 x i8], ptr %.sink.i298, i64 %i.gp
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !29
  %i.hw = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.hx = insertelement <2 x double> %i.hw, double %i.ho, i64 1
  %i.hy = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hz = insertelement <2 x double> %i.hy, double %i.hv, i64 1
  %i.ia = fadd <2 x double> %i.hx, %i.hz
  %i.ib = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %i.hq, i64 1
  %i.id = fsub <2 x double> %i.ia, %i.ic
  %i.ie = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.if = insertelement <2 x double> %i.ie, double %i.ht, i64 1
  %i.ig = fsub <2 x double> %i.id, %i.if
  %i.ih = fdiv <2 x double> %i.ig, %i.fc          ; 2 uses
  %i.ii = extractelement <2 x double> %i.ih, i64 0 ; 2 uses
  %i.ij = fneg double %i.ii
  %i.ik = extractelement <2 x double> %i.ih, i64 1
  %i.il = call double @llvm.fmuladd.f64(double %i.ij, double %i.ii, double %i.ik)
  %i.im = ptrtoint ptr %i.gr to i64
  %i.in = ptrtoint ptr %i.gq to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = lshr exact i64 %i.io, 4
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph684, label %._crit_edge685

.lr.ph684:                                        ; preds = %bb.ak
  %.sroa.6537.0.insert.ext = shl i64 %i.gs, 32
  %.sroa.0532.0.insert.insert = or disjoint i64 %.sroa.6537.0.insert.ext, %.sroa.0532.0.insert.ext ; 2 uses
  br label %bb.al

._crit_edge685:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.ak
  %i.is = phi ptr [ %i.gq, %bb.ak ], [ %i.md, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.it = phi ptr [ %i.gr, %bb.ak ], [ %i.mc, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
end_hunk_0
