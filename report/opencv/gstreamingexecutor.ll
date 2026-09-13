Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gstreamingexecutor?download=true
inline.NumInlined: 9444
inline.NumDeleted: 4640
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN12_GLOBAL__N_118emitterActorThreadESt10shared_ptrIN2cv5gimpl14GIslandEmitterEERNS2_6stream1QESt6vectorIPS6_SaIS9_EESt8functionIFvvEE:bb.a
          to label %"_ZNSt10unique_ptrIiZNK2cv5gimpl12_GLOBAL__N_13$_0clEP20___itt_string_handleEUlPiE_ED2Ev.exit105" unwind label %.loopexit224, !inline_history !41

bb.dh:                                            ; preds = %bb.de
  invoke void %i.lf(ptr noundef nonnull %i.kv)
          to label %"_ZNSt10unique_ptrIiZNK2cv5gimpl12_GLOBAL__N_13$_0clEP20___itt_string_handleEUlPiE_ED2Ev.exit105.jt1" unwind label %.loopexit.split-lp225, !inline_history !41

bb.di:                                            ; preds = %bb.df
  invoke void %i.lj(ptr noundef nonnull %i.kx)
          to label %"_ZNSt10unique_ptrIiZNK2cv5gimpl12_GLOBAL__N_13$_0clEP20___itt_string_handleEUlPiE_ED2Ev.exit105.jt0" unwind label %.loopexit224, !inline_history !41

.loopexit224:                                     ; preds = %bb.dg, %bb.di
  %lpad.loopexit226 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dj

.loopexit.split-lp225:                            ; preds = %bb.dh
  %lpad.loopexit.split-lp227 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dj

bb.dj:                                            ; preds = %.loopexit.split-lp225, %.loopexit224
  %lpad.phi228 = phi { ptr, i32 } [ %lpad.loopexit226, %.loopexit224 ], [ %lpad.loopexit.split-lp227, %.loopexit.split-lp225 ]
  %i.ll = extractvalue { ptr, i32 } %lpad.phi228, 0
  call void @__clang_call_terminate(ptr %i.ll) #32
  unreachable

"_ZNSt10unique_ptrIiZNK2cv5gimpl12_GLOBAL__N_13$_0clEP20___itt_string_handleEUlPiE_ED2Ev.exit105": ; preds = %bb.da, %bb.dd, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  switch i32 %.0217, label %.loopexit134 [
    i32 0, label %.backedge.backedge
    i32 6, label %.backedge.backedge
  ]

"_ZNSt10unique_ptrIiZNK2cv5gimpl12_GLOBAL__N_13$_0clEP20___itt_string_handleEUlPiE_ED2Ev.exit105.jt1": ; preds = %bb.de, %bb.dh, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.loopexit134

"_ZNSt10unique_ptrIiZNK2cv5gimpl12_GLOBAL__N_13$_0clEP20___itt_string_handleEUlPiE_ED2Ev.exit105.jt0": ; preds = %bb.df, %bb.di, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %"_ZNSt10unique_ptrIiZNK2cv5gimpl12_GLOBAL__N_13$_0clEP20___itt_string_handleEUlPiE_ED2Ev.exit105.jt0", %"_ZNSt10unique_ptrIiZNK2cv5gimpl12_GLOBAL__N_13$_0clEP20___itt_string_handleEUlPiE_ED2Ev.exit105", %"_ZNSt10unique_ptrIiZNK2cv5gimpl12_GLOBAL__N_13$_0clEP20___itt_string_handleEUlPiE_ED2Ev.exit105"
  br label %.backedge, !llvm.loop !1245

bb.dk:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73, %bb.ct, %bb.ci, %bb.bp
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn, %bb.ci ], [ %.pn47.pn, %bb.ct ], [ %i.el, %bb.bp ], [ %i.ed, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73 ]
  call void @_ZN2cv7GRunArgD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %12) #28
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.bd
  %.pn50.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn.pn, %bb.dk ], [ %i.dk, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.ak
  %.pn58 = phi { ptr, i32 } [ %i.cp, %bb.as ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %.pn50.pn.pn.pn.pn, %bb.dl ], [ %i.cb, %bb.ak ]
  %i.lm = load i64, ptr %9, align 8, !tbaa !404
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr @constinit.48, i64 %i.lm
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !145
  invoke void %i.lo(ptr noundef nonnull %i.bj)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_5gimpl6stream5StartENS4_4StopENS_7GRunArgENS4_6ResultENS3_9ExceptionEEED2Ev.exit106 unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.lp = landingpad { ptr, i32 }
          catch ptr null
  %i.lq = extractvalue { ptr, i32 } %i.lp, 0
  call void @__clang_call_terminate(ptr %i.lq) #32
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_5gimpl6stream5StartENS4_4StopENS_7GRunArgENS4_6ResultENS3_9ExceptionEEED2Ev.exit106: ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call fastcc void @"_ZNSt10unique_ptrIiZNK2cv5gimpl12_GLOBAL__N_13$_0clEP20___itt_string_handleEUlPiE_ED2Ev"(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #28
  br label %bb.do

bb.do:                                            ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_5gimpl6stream5StartENS4_4StopENS_7GRunArgENS4_6ResultENS3_9ExceptionEEED2Ev.exit106, %bb.aj
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %_ZN2cv4util7variantIJNS0_9monostateENS_5gimpl6stream5StartENS4_4StopENS_7GRunArgENS4_6ResultENS3_9ExceptionEEED2Ev.exit106 ], [ %i.ca, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.dq

.loopexit134:                                     ; preds = %bb.j, %"_ZNSt10unique_ptrIiZNK2cv5gimpl12_GLOBAL__N_13$_0clEP20___itt_string_handleEUlPiE_ED2Ev.exit105", %"_ZNSt10unique_ptrIiZNK2cv5gimpl12_GLOBAL__N_13$_0clEP20___itt_string_handleEUlPiE_ED2Ev.exit105.jt1", %bb.i
  %i.lr = load i64, ptr %5, align 8, !tbaa !404
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr @constinit.48, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !145
  %i.lu = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.lt(ptr noundef nonnull %i.lu)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_5gimpl6stream5StartENS4_4StopENS_7GRunArgENS4_6ResultENS3_9ExceptionEEED2Ev.exit107 unwind label %bb.dp

bb.dp:                                            ; preds = %.loopexit134
  %i.lv = landingpad { ptr, i32 }
          catch ptr null
  %i.lw = extractvalue { ptr, i32 } %i.lv, 0
  call void @__clang_call_terminate(ptr %i.lw) #32
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_5gimpl6stream5StartENS4_4StopENS_7GRunArgENS4_6ResultENS3_9ExceptionEEED2Ev.exit107: ; preds = %.loopexit134
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.dq:                                            ; preds = %bb.do, %bb.ai, %bb.ah, %bb.ag, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn61 = phi { ptr, i32 } [ %i.t, %bb.k ], [ %.pn58.pn, %bb.do ], [ %i.bz, %bb.ai ], [ %i.by, %bb.ah ], [ %i.bx, %bb.ag ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %bb.c ]
  %i.lx = load i64, ptr %5, align 8, !tbaa !404
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr @constinit.48, i64 %i.lx
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !145
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.lz(ptr noundef nonnull %i.ma)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_5gimpl6stream5StartENS4_4StopENS_7GRunArgENS4_6ResultENS3_9ExceptionEEED2Ev.exit108 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.mb = landingpad { ptr, i32 }
          catch ptr null
  %i.mc = extractvalue { ptr, i32 } %i.mb, 0
  call void @__clang_call_terminate(ptr %i.mc) #32
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_5gimpl6stream5StartENS4_4StopENS_7GRunArgENS4_6ResultENS3_9ExceptionEEED2Ev.exit108: ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn61

bb.ds:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73
  %i.md = landingpad { ptr, i32 }
          catch ptr null
  %i.me = extractvalue { ptr, i32 } %i.md, 0
  call void @__clang_call_terminate(ptr %i.me) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv5gimpl18GStreamingExecutor12Synchronizer5startEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ade::Handle.207", align 8   ; 6 uses
  %2 = alloca %"class.std::unique_ptr.667", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.154", align 1 ; 3 uses
  %5 = alloca %"class.std::vector.319", align 16  ; 17 uses
  %6 = alloca %"class.std::vector.50", align 16   ; 6 uses
  %7 = alloca %"class.ade::Handle", align 8       ; 6 uses
  %8 = alloca %"struct.ade::util::Range::MapRange.178", align 8 ; 7 uses
  %9 = alloca %"class.std::thread", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !190  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !191  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 4                   ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.bh, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv5gimpl18GStreamingExecutor5startEv, ptr noundef nonnull @.str.1, i32 noundef 1267) #30
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !183    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.o = load i64, ptr %i.m, align 8, !tbaa !139
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt6vectorIPN2cv5gimpl6stream1QESaIS4_EED2Ev.exit66

bb.h:                                             ; preds = %bb.b
  %i.q = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.q, label %.noexc, label %_ZNSt6vectorIPN2cv5gimpl6stream1QESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

.noexc:                                           ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #30
  unreachable

_ZNSt6vectorIPN2cv5gimpl6stream1QESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.h
  %i.r = ashr exact i64 %i.g, 1                   ; 4 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #31 ; 7 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.h
  store ptr null, ptr %i.s, align 8, !tbaa !197
  %10 = getelementptr i8, ptr %i.s, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.r, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !197
  %i.u = getelementptr i8, ptr %i.s, i64 %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !190  ; 3 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !191  ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4                  ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 384307168202282325
  br i1 %i.ab, label %bb.i, label %_ZNSt6vectorIS_IPN2cv5gimpl6stream1QESaIS4_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN2cv5gimpl6stream1QESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #30
          to label %.noexc29 unwind label %.thread

.noexc29:                                         ; preds = %bb.i
  unreachable

_ZNSt6vectorIS_IPN2cv5gimpl6stream1QESaIS4_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i: ; preds = %_ZNSt6vectorIPN2cv5gimpl6stream1QESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i28 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i.i28, label %_ZNSt12_Vector_baseISt6vectorIPN2cv5gimpl6stream1QESaIS5_EESaIS7_EEC2EmRKS8_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt6vectorIPN2cv5gimpl6stream1QESaIS5_EESaIS7_EEC2EmRKS8_.exit.thread.i: ; preds = %_ZNSt6vectorIS_IPN2cv5gimpl6stream1QESaIS4_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  store i64 0, ptr %5, align 16
  br label %bb.j

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IPN2cv5gimpl6stream1QESaIS4_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.ac = mul nuw nsw i64 %i.aa, 24               ; 3 uses
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #31
          to label %.noexc30 unwind label %.thread ; 4 uses

.noexc30:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ad, ptr %5, align 16, !tbaa !426
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.aa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %i.ac, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ad, i64 %i.ac
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !227, !noalias !1263
  %.pre120 = load ptr, ptr %i.b, align 8, !tbaa !227, !noalias !1263
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIPN2cv5gimpl6stream1QESaIS5_EESaIS7_EEC2EmRKS8_.exit.thread.i, %.noexc30
  %i.af = phi ptr [ %i.v, %_ZNSt12_Vector_baseISt6vectorIPN2cv5gimpl6stream1QESaIS5_EESaIS7_EEC2EmRKS8_.exit.thread.i ], [ %.pre120, %.noexc30 ] ; 2 uses
  %i.ag = phi ptr [ %i.w, %_ZNSt12_Vector_baseISt6vectorIPN2cv5gimpl6stream1QESaIS5_EESaIS7_EEC2EmRKS8_.exit.thread.i ], [ %.pre, %.noexc30 ] ; 2 uses
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIPN2cv5gimpl6stream1QESaIS5_EESaIS7_EEC2EmRKS8_.exit.thread.i ], [ %i.ae, %.noexc30 ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIPN2cv5gimpl6stream1QESaIS5_EESaIS7_EEC2EmRKS8_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc30 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.ai, align 16, !tbaa !424
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !423
  %i.aj = icmp eq ptr %i.ag, %i.af
  br i1 %i.aj, label %_ZNK3ade4util5Range13IterableRangeINS1_8ZipRangeIJNS1_9IotaRangeImLi1EEERSt6vectorINS_6HandleINS_4NodeEEESaIS9_EEEEEE8iteratorneERKSF_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.m

_ZNK3ade4util5Range13IterableRangeINS1_8ZipRangeIJNS1_9IotaRangeImLi1EEERSt6vectorINS_6HandleINS_4NodeEEESaIS9_EEEEEE8iteratorneERKSF_.exit: ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit49, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %9, align 8, !tbaa !442
  %i.ar = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #31
          to label %.noexc31 unwind label %bb.bf  ; 8 uses

.noexc31:                                         ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8ZipRangeIJNS1_9IotaRangeImLi1EEERSt6vectorINS_6HandleINS_4NodeEEESaIS9_EEEEEE8iteratorneERKSF_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt6vectorIPN2cv5gimpl6stream1QESaIS8_EES3_ISA_SaISA_EEESA_SC_EEEEEE, i64 16), ptr %i.ar, align 8, !tbaa !95
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load <2 x ptr>, ptr %5, align 16, !tbaa !443
  store <2 x ptr> %i.at, ptr %i.as, align 8, !tbaa !443
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = load ptr, ptr %i.ai, align 16, !tbaa !424
  store ptr %i.av, ptr %i.au, align 8, !tbaa !424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr %i.s, ptr %i.aw, align 8, !tbaa !201
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.u, ptr %i.ax, align 8, !tbaa !200
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store ptr %i.t, ptr %i.ay, align 8, !tbaa !323
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store ptr @_ZN12_GLOBAL__N_115syncActorThreadESt6vectorIPN2cv5gimpl6stream1QESaIS5_EES0_IS7_SaIS7_EE, ptr %i.az, align 8, !tbaa !1265
  store ptr %i.ar, ptr %2, align 8, !tbaa !445
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc31
  %i.ba = load ptr, ptr %2, align 8, !tbaa !445   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %bb.bb, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.k
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) #28, !inline_history !1256
  br label %bb.bb

bb.l:                                             ; preds = %.noexc31
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %2, align 8, !tbaa !445   ; 3 uses
  %.not.i7.i = icmp eq ptr %i.bf, null
  br i1 %.not.i7.i, label %.thread108, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i8.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i8.i: ; preds = %bb.l
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !95
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #28, !inline_history !1256
  br label %.thread108

.thread:                                          ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.m:                                             ; preds = %.lr.ph, %_ZN3ade6HandleINS_4NodeEED2Ev.exit49
  %.sroa.0.0116 = phi ptr [ %i.ag, %.lr.ph ], [ %i.eq, %_ZN3ade6HandleINS_4NodeEED2Ev.exit49 ] ; 3 uses
  %.sroa.10.0115 = phi i64 [ 0, %.lr.ph ], [ %i.ep, %_ZN3ade6HandleINS_4NodeEED2Ev.exit49 ] ; 4 uses
  %i.bk = load ptr, ptr %.sroa.0.0116, align 8, !tbaa !143
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0116, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !144, !nonnull !135, !noundef !135 ; 11 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12 ; 10 uses
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !139
  %.not.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !140
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !140
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.br = atomicrmw volatile add ptr %i.bn, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bs = load ptr, ptr %i.ak, align 8, !tbaa !195
  %i.bt = getelementptr inbounds nuw [232 x i8], ptr %i.bs, i64 %.sroa.10.0115
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.10.0115
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bv = load ptr, ptr %i.al, align 8, !tbaa !427, !nonnull !135, !align !428
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 7 uses
  %i.bx = load atomic i32, ptr %i.bw monotonic, align 8, !noalias !1266
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.p ], [ %i.cb, %bb.q ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i)
  %i.by = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.bz = cmpxchg weak ptr %i.bw, i32 %.06.i.i.i.i.i.i.i, i32 %i.by acq_rel monotonic, align 8, !noalias !1266 ; 2 uses
  %i.ca = extractvalue { i32, i1 } %i.bz, 1
  %i.cb = extractvalue { i32, i1 } %i.bz, 0
  br i1 %i.ca, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.q, !llvm.loop !1

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.cc = load atomic i32, ptr %i.bw monotonic, align 8, !noalias !1266 ; 0 uses
  %i.cd = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  store i32 0, ptr %i.bw, align 8, !tbaa !165
  store i32 0, ptr %i.bn, align 4, !tbaa !166
  %i.cg = load ptr, ptr %i.bm, align 8, !tbaa !95
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28, !inline_history !8
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !95
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28, !inline_history !8
  br label %bb.w

bb.s:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !139
  %.not.i.i.i1.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i1.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = add nsw i32 %i.cf, -1
  store i32 %i.cn, ptr %i.bw, align 8, !tbaa !140
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.co = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
end_hunk_0
