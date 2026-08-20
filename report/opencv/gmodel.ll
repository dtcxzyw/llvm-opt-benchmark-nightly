inline.NumInlined: 2208
inline.NumDeleted: 1157
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv5gimpl6GModel6linkInERN3ade10TypedGraphIJNS0_8NodeTypeENS0_5InputENS0_6OutputENS0_2OpENS0_4DataENS0_10ConstValueENS0_6IslandENS0_8ProtocolENS0_17OriginalInputMetaENS0_10OutputMetaENS0_7JournalENS2_6passes19TopologicalSortDataENS0_17DataObjectCounterENS0_11IslandModelENS0_14ActiveBackendsENS0_18CustomMetaFunctionENS0_9StreamingENS0_12DeserializedENS0_13HasIntrinsicsENS0_10DesyncPathENS0_10DesyncEdgeENS0_14DesynchronizedENS0_11CompileArgsEEEENS2_6HandleINS2_4NodeEEESW_m:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.lf = load <2 x i32>, ptr %i.fd, align 8, !tbaa !23
  %i.lg = shufflevector <2 x i32> %i.lf, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.lg, ptr %22, align 8, !tbaa !23
  %i.lh = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  store i64 0, ptr %i.lh, align 8, !tbaa !105
  invoke void @_ZN2cv4GArgC2INS_5gimpl6RcDescETnNSt9enable_ifIXntsr6detail7is_gargIT_EE5valueEiE4typeELi0EEEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(48) %22)
          to label %bb.ct unwind label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.li = load ptr, ptr %i.fe, align 8, !tbaa !87
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %i.li, i64 %4 ; 2 uses
  %i.lk = load i64, ptr %21, align 8
  store i64 %i.lk, ptr %i.lj, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !39
  store ptr null, ptr %i.lm, align 8, !tbaa !39
  %i.lo = load ptr, ptr %i.ll, align 8, !tbaa !39 ; 3 uses
  store ptr %i.ln, ptr %i.ll, align 8, !tbaa !39
  %.not.i.i.i.i.i.i126 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i.i.i126, label %_ZN2cv4GArgaSEOS0_.exit, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %bb.ct
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !25
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(8) %i.lo) #18, !inline_history !257
  br label %_ZN2cv4GArgaSEOS0_.exit

_ZN2cv4GArgaSEOS0_.exit:                          ; preds = %bb.ct, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i
  %i.ls = load ptr, ptr %i.lm, align 8, !tbaa !39 ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i127, label %_ZN2cv4GArgD2Ev.exit, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i: ; preds = %_ZN2cv4GArgaSEOS0_.exit
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !25
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(8) %i.ls) #18, !inline_history !258
  br label %_ZN2cv4GArgD2Ev.exit

_ZN2cv4GArgD2Ev.exit:                             ; preds = %_ZN2cv4GArgaSEOS0_.exit, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i
  %i.lw = load i64, ptr %i.lh, align 8, !tbaa !105
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr @constinit.12, i64 %i.lw
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !22
  %i.lz = getelementptr inbounds nuw i8, ptr %22, i64 16
  invoke void %i.ly(ptr noundef nonnull %i.lz)
          to label %_ZN2cv5gimpl6RcDescD2Ev.exit unwind label %bb.cu

bb.cu:                                            ; preds = %_ZN2cv4GArgD2Ev.exit
  %i.ma = landingpad { ptr, i32 }
          catch ptr null
  %i.mb = extractvalue { ptr, i32 } %i.ma, 0
  call void @__clang_call_terminate(ptr %i.mb) #21
  unreachable

_ZN2cv5gimpl6RcDescD2Ev.exit:                     ; preds = %_ZN2cv4GArgD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  ret void

bb.cv:                                            ; preds = %.noexc122, %bb.cq
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %.body117

bb.cw:                                            ; preds = %bb.cs
  %i.md = landingpad { ptr, i32 }
          cleanup
  %i.me = load i64, ptr %i.lh, align 8, !tbaa !105
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr @constinit.12, i64 %i.me
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !22
  %i.mh = getelementptr inbounds nuw i8, ptr %22, i64 16
  invoke void %i.mg(ptr noundef nonnull %i.mh)
          to label %_ZN2cv5gimpl6RcDescD2Ev.exit128 unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mi = landingpad { ptr, i32 }
          catch ptr null
  %i.mj = extractvalue { ptr, i32 } %i.mi, 0
  call void @__clang_call_terminate(ptr %i.mj) #21
  unreachable

_ZN2cv5gimpl6RcDescD2Ev.exit128:                  ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %.body117

.body117:                                         ; preds = %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i110, %bb.cp, %_ZNSt10unique_ptrIN3ade7details8Metadata18MetadataHolderBaseESt14default_deleteIS3_EED2Ev.exit7.i.i, %bb.cv, %_ZN2cv5gimpl6RcDescD2Ev.exit128
  %.pn29 = phi { ptr, i32 } [ %i.md, %_ZN2cv5gimpl6RcDescD2Ev.exit128 ], [ %i.kg, %bb.cl ], [ %i.la, %_ZNSt10unique_ptrIN3ade7details8Metadata18MetadataHolderBaseESt14default_deleteIS3_EED2Ev.exit7.i.i ], [ %i.kg, %bb.cp ], [ %i.kg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i110 ], [ %i.mc, %bb.cv ]
  call void @_ZN3ade6HandleINS_4EdgeEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  br label %common.resume
}

declare void @_ZN3ade4Node7inEdgesEv(ptr dead_on_unwind writable sret(%"struct.ade::util::Range::MapRange") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !55
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.d, ptr %i.a, align 8, !tbaa !57
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !56
  %i.g = load i64, ptr %i.a, align 8, !tbaa !57
  store i64 %i.g, ptr %i.b, align 8, !tbaa !23
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !23
  store i8 %i.i, ptr %i.h, align 1, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !48
  %i.l = load ptr, ptr %0, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3ade6HandleINS_4EdgeEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIN3ade4EdgeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt10__weak_ptrIN3ade4EdgeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !259
  br label %_ZNSt10__weak_ptrIN3ade4EdgeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN3ade4EdgeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4GArgC2INS_5gimpl6RcDescETnNSt9enable_ifIXntsr6detail7is_gargIT_EE5valueEiE4typeELi0EEEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::gimpl::RcDesc", align 16 ; 9 uses
  store i32 1, ptr %0, align 8, !tbaa !260
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !269
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv6detail9WrapValueINS_5gimpl6RcDescEvE4wrapERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::gimpl::RcDesc") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.c = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19
          to label %.noexc unwind label %bb.e     ; 4 uses

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_5gimpl6RcDescEEE, i64 16), ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %3 = load i64, ptr %i.e, align 8, !tbaa !105
  %4 = load <2 x i64>, ptr %2, align 16
  store <2 x i64> %4, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @constinit.13, i64 %3
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void %i.g(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #21
  unreachable

bb.c:                                             ; preds = %.noexc
  store ptr %i.c, ptr %i.b, align 8, !tbaa !39
  %i.l = load i64, ptr %i.e, align 8, !tbaa !105
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @constinit.12, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  invoke void %i.n(ptr noundef nonnull %i.i)
          to label %_ZN2cv5gimpl6RcDescD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #21
  unreachable

_ZN2cv5gimpl6RcDescD2Ev.exit:                     ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !105
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @constinit.12, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void %i.u(ptr noundef nonnull %i.v)
          to label %_ZN2cv5gimpl6RcDescD2Ev.exit3 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #21
  unreachable

_ZN2cv5gimpl6RcDescD2Ev.exit3:                    ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv5gimpl6GModel7linkOutERN3ade10TypedGraphIJNS0_8NodeTypeENS0_5InputENS0_6OutputENS0_2OpENS0_4DataENS0_10ConstValueENS0_6IslandENS0_8ProtocolENS0_17OriginalInputMetaENS0_10OutputMetaENS0_7JournalENS2_6passes19TopologicalSortDataENS0_17DataObjectCounterENS0_11IslandModelENS0_14ActiveBackendsENS0_18CustomMetaFunctionENS0_9StreamingENS0_12DeserializedENS0_13HasIntrinsicsENS0_10DesyncPathENS0_10DesyncEdgeENS0_14DesynchronizedENS0_11CompileArgsEEEENS2_6HandleINS2_4NodeEEESW_m(ptr dead_on_unwind noalias writable sret(%"class.ade::Handle.58") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, ptr noundef align 8 %2, ptr noundef align 8 %3, i64 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.230", align 8 ; 7 uses
  %6 = alloca %"class.ade::details::MetadataId", align 8 ; 5 uses
  %7 = alloca %"class.ade::Handle.58", align 16   ; 5 uses
  %8 = alloca %"class.ade::details::MetadataId", align 8 ; 6 uses
  %9 = alloca %"class.ade::Handle.58", align 16   ; 5 uses
  %10 = alloca %"class.ade::details::MetadataId", align 8 ; 6 uses
  %11 = alloca %"class.ade::Handle", align 16     ; 5 uses
  %12 = alloca %"class.ade::details::MetadataId", align 8 ; 6 uses
  %13 = alloca %"class.ade::Handle", align 16     ; 5 uses
  %14 = alloca %"struct.ade::util::Range::MapRange", align 8 ; 7 uses
  %15 = alloca %"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<ade::Edge **, std::vector<ade::Edge *>>>, ade::Node::HandleMapper>>::iterator", align 8 ; 10 uses
  %16 = alloca %"class.ade::Handle.58", align 16  ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"struct.ade::util::Range::MapRange.66", align 8 ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %22 = alloca %"struct.cv::gimpl::RcDesc", align 8 ; 9 uses
  %23 = alloca %"struct.cv::gimpl::RcDesc", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !270, !nonnull !134, !noundef !134 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 8, !noalias !270
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.d, %bb.a ], [ %i.h, %bb.b ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i)
  %i.e = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.f = cmpxchg weak ptr %i.c, i32 %.06.i.i.i.i.i.i.i, i32 %i.e acq_rel monotonic, align 8, !noalias !270 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  %i.h = extractvalue { i32, i1 } %i.f, 0
  br i1 %i.g, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.b, !llvm.loop !208

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = load atomic i32, ptr %i.c monotonic, align 8, !noalias !270
  %.not.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.j = load ptr, ptr %2, align 8, !tbaa !209, !noalias !270
  br label %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i

_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i:     ; preds = %bb.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.k = phi ptr [ %i.j, %bb.c ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i ] ; 2 uses
  %i.l = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i
  store i32 0, ptr %i.c, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !99
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !212
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !212
  br label %_ZNK3ade6HandleINS_4NodeEEptEv.exit

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN3ade4NodeEE4lockEv.exit.i.i
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i1.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.c, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.x, %bb.g ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.h, label %_ZNK3ade6HandleINS_4NodeEEptEv.exit, !prof !67

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNK3ade6HandleINS_4NodeEEptEv.exit

_ZNK3ade6HandleINS_4NodeEEptEv.exit:              ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  call void @_ZN3ade4Node8outEdgesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange") align 8 %14, ptr noundef nonnull align 8 dereferenceable(72) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %15, ptr noundef nonnull align 8 dereferenceable(17) %14, i64 17, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !213, !alias.scope !273
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %15, align 8, !tbaa !224  ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !224
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3ade6HandleINS_4NodeEEptEv.exit
  %.sroa.5154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.5154.0.copyload = load ptr, ptr %.sroa.5154.0..sroa_idx, align 8
  %.sroa.0153.0.copyload = load ptr, ptr %14, align 8
  %i.ae = icmp eq ptr %.sroa.0153.0.copyload, %.sroa.5154.0.copyload
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit
  %i.aj = phi ptr [ %i.ab, %.lr.ph ], [ %i.jh, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit ]
  %i.ak = load i8, ptr %i.z, align 8, !tbaa !213, !range !225, !noundef !134
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond = select i1 %i.al, i1 %i.ae, i1 false
  br i1 %or.cond, label %._crit_edge, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEEE8iteratorneERKSJ_.exit

._crit_edge:                                      ; preds = %_ZN3ade6HandleINS_4EdgeEED2Ev.exit, %bb.i, %_ZNK3ade6HandleINS_4NodeEEptEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.am = load i64, ptr %1, align 8, !tbaa !8, !noalias !276
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !276 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %2, align 8, !tbaa !22, !noalias !276
  store <2 x ptr> %i.aq, ptr %13, align 16, !tbaa !22, !noalias !276
  %.not.i.i.i.i.i39 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i39, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 12 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !276
  %.not.i.i.i.i.i.i40 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i.i40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !24, !noalias !276
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !24, !noalias !276
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4, !noalias !276 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i:         ; preds = %bb.l, %bb.k, %._crit_edge
  %i.aw = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN3ade5Graph8metadataENS_6HandleINS_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.an, ptr noundef nonnull align 8 %13)
          to label %bb.m unwind label %bb.r, !noalias !276 ; 5 uses

bb.m:                                             ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !18, !noalias !276 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS2_5InputENS2_6OutputENS2_2OpENS2_4DataENS2_10ConstValueENS2_6IslandENS2_8ProtocolENS2_17OriginalInputMetaENS2_10OutputMetaENS2_7JournalENS_6passes19TopologicalSortDataENS2_17DataObjectCounterENS2_11IslandModelENS2_14ActiveBackendsENS2_18CustomMetaFunctionENS2_9StreamingENS2_12DeserializedENS2_13HasIntrinsicsENS2_10DesyncPathENS2_10DesyncEdgeENS2_14DesynchronizedENS2_11CompileArgsEEE8metadataERKNS_6HandleINS_4NodeEEE.exit, label %bb.n

end_hunk_0
begin_hunk_1_@_ZNK3ade7details8Metadata14MetadataHolderIN2cv5gimpl10ConstValueEE5cloneEv:bb.a
  resume { ptr, i32 } %i.d
}

declare void @_ZN2cv7GRunArgC1EOS0_(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(272)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEE6cctr_hIS2_E4helpEPNSt15aligned_storageILm32ELm8EE4typeEPKSI_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEE6cctr_hIS8_E4helpEPNSt15aligned_storageILm32ELm8EE4typeEPKSI_(ptr noundef %0, ptr noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN2cv6detail9VectorRefEEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !22
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !22
  br label %_ZNSt8functionIFvRN2cv6detail9VectorRefEEEC2ERKS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.f

_ZNSt8functionIFvRN2cv6detail9VectorRefEEEC2ERKS5_.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEE6cctr_hISC_E4helpEPNSt15aligned_storageILm32ELm8EE4typeEPKSI_(ptr noundef %0, ptr noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN2cv6detail9OpaqueRefEEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !22
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !22
  br label %_ZNSt8functionIFvRN2cv6detail9OpaqueRefEEEC2ERKS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.f

_ZNSt8functionIFvRN2cv6detail9OpaqueRefEEEC2ERKS5_.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6cctr_hIS2_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPKSD_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6cctr_hIS3_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPKSD_(ptr noundef %0, ptr noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 17, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !653  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !638  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !67

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #19
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !638
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !653
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !641
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !642  ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !642
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 4
  br i1 %i.t, label %bb.d, label %bb.e, !prof !69

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.o, i64 %i.s, i1 false)
  br label %_ZN2cv8GMatDescC2ERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.s, 4
  br i1 %i.u, label %bb.f, label %_ZN2cv8GMatDescC2ERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.o, align 4, !tbaa !24
  store i32 %i.v, ptr %i.k, align 4, !tbaa !24
  br label %_ZN2cv8GMatDescC2ERKS0_.exit

_ZN2cv8GMatDescC2ERKS0_.exit:                     ; preds = %bb.d, %bb.e, %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !653
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6cctr_hIS4_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPKSD_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6cctr_hIS5_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPKSD_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6cctr_hIS6_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPKSD_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEE6cctr_hIS7_E4helpEPNSt15aligned_storageILm48ELm8EE4typeEPKSD_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !643
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3ade7details8Metadata3setIN2cv5gimpl4DataEEEvRKNS0_10MetadataIdEOT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.230", align 8 ; 7 uses
  %i.a = tail call noundef i64 @_ZNSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS4_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.b = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #19, !noalias !654 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3ade7details8Metadata14MetadataHolderIN2cv5gimpl4DataEEE, i64 16), ptr %i.b, align 8, !tbaa !25, !noalias !654
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = load i64, ptr %i.d, align 8, !tbaa !154, !noalias !654
  %5 = load <2 x i64>, ptr %2, align 8, !noalias !654
  store <2 x i64> %5, ptr %i.c, align 8, !noalias !654
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @constinit.18, i64 %4
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22, !noalias !654
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void %i.f(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2EOS8_.exit.i.i.i unwind label %bb.b, !noalias !654

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21, !noalias !654
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2EOS8_.exit.i.i.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !105, !noalias !654 ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !105, !noalias !654
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @constinit.13, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22, !noalias !654
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72
  invoke void %i.o(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q)
          to label %_ZN3ade7details8Metadata12createHolderIN2cv5gimpl4DataEEESt10unique_ptrINS1_18MetadataHolderBaseESt14default_deleteIS7_EEOT_.exit unwind label %bb.c, !noalias !654

bb.c:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2EOS8_.exit.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #21, !noalias !654
  unreachable

_ZN3ade7details8Metadata12createHolderIN2cv5gimpl4DataEEESt10unique_ptrINS1_18MetadataHolderBaseESt14default_deleteIS7_EEOT_.exit: ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2EOS8_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.v = load i64, ptr %i.u, align 8, !noalias !654
  store i64 %i.v, ptr %i.t, align 8, !noalias !654
  store ptr %i.b, ptr %3, align 8, !tbaa !33, !alias.scope !654
  %i.w = invoke { ptr, i8 } @_ZNSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS4_SA_EEES3_INSD_14_Node_iteratorISB_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt13unordered_mapIN3ade7details10MetadataIdESt10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS5_EENS4_6IdHashESt8equal_toIS2_ESaISt4pairIKS2_S8_EEE7emplaceIJRSD_S8_EEESC_INSt8__detail14_Node_iteratorISE_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.d ; 0 uses

_ZNSt13unordered_mapIN3ade7details10MetadataIdESt10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS5_EENS4_6IdHashESt8equal_toIS2_ESaISt4pairIKS2_S8_EEE7emplaceIJRSD_S8_EEESC_INSt8__detail14_Node_iteratorISE_Lb0ELb1EEEbEDpOT_.exit: ; preds = %_ZN3ade7details8Metadata12createHolderIN2cv5gimpl4DataEEESt10unique_ptrINS1_18MetadataHolderBaseESt14default_deleteIS7_EEOT_.exit
  %i.x = load ptr, ptr %3, align 8, !tbaa !33     ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3ade7details8Metadata18MetadataHolderBaseESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN3ade7details8Metadata18MetadataHolderBaseEEclEPS3_.exit.i

_ZNKSt14default_deleteIN3ade7details8Metadata18MetadataHolderBaseEEclEPS3_.exit.i: ; preds = %_ZNSt13unordered_mapIN3ade7details10MetadataIdESt10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS5_EENS4_6IdHashESt8equal_toIS2_ESaISt4pairIKS2_S8_EEE7emplaceIJRSD_S8_EEESC_INSt8__detail14_Node_iteratorISE_Lb0ELb1EEEbEDpOT_.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #18, !inline_history !649
  br label %_ZNSt10unique_ptrIN3ade7details8Metadata18MetadataHolderBaseESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN3ade7details8Metadata18MetadataHolderBaseESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt13unordered_mapIN3ade7details10MetadataIdESt10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS5_EENS4_6IdHashESt8equal_toIS2_ESaISt4pairIKS2_S8_EEE7emplaceIJRSD_S8_EEESC_INSt8__detail14_Node_iteratorISE_Lb0ELb1EEEbEDpOT_.exit, %_ZNKSt14default_deleteIN3ade7details8Metadata18MetadataHolderBaseEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.d:                                             ; preds = %_ZN3ade7details8Metadata12createHolderIN2cv5gimpl4DataEEESt10unique_ptrINS1_18MetadataHolderBaseESt14default_deleteIS7_EEOT_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i5 = icmp eq ptr %i.ac, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN3ade7details8Metadata18MetadataHolderBaseESt14default_deleteIS3_EED2Ev.exit7, label %_ZNKSt14default_deleteIN3ade7details8Metadata18MetadataHolderBaseEEclEPS3_.exit.i6

_ZNKSt14default_deleteIN3ade7details8Metadata18MetadataHolderBaseEEclEPS3_.exit.i6: ; preds = %bb.d
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #18, !inline_history !649
  br label %_ZNSt10unique_ptrIN3ade7details8Metadata18MetadataHolderBaseESt14default_deleteIS3_EED2Ev.exit7

_ZNSt10unique_ptrIN3ade7details8Metadata18MetadataHolderBaseESt14default_deleteIS3_EED2Ev.exit7: ; preds = %bb.d, %_ZNKSt14default_deleteIN3ade7details8Metadata18MetadataHolderBaseEEclEPS3_.exit.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.ab
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3ade7details8Metadata14MetadataHolderIN2cv5gimpl4DataEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3ade7details8Metadata14MetadataHolderIN2cv5gimpl4DataEEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @constinit.12, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void %i.d(ptr noundef nonnull %i.e)
          to label %_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEED2Ev.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable

_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEED2Ev.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !154
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @constinit.17, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void %i.k(ptr noundef nonnull %i.l)
          to label %_ZN2cv5gimpl4DataD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEED2Ev.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #21
  unreachable

_ZN2cv5gimpl4DataD2Ev.exit:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3ade7details8Metadata14MetadataHolderIN2cv5gimpl4DataEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3ade7details8Metadata14MetadataHolderIN2cv5gimpl4DataEEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @constinit.12, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void %i.d(ptr noundef nonnull %i.e)
          to label %_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEED2Ev.exit.i.i unwind label %bb.b, !inline_history !657

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21, !inline_history !657
  unreachable

_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEED2Ev.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !154
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @constinit.17, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void %i.k(ptr noundef nonnull %i.l)
          to label %_ZN3ade7details8Metadata14MetadataHolderIN2cv5gimpl4DataEED2Ev.exit unwind label %bb.c, !inline_history !657

bb.c:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEED2Ev.exit.i.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #21, !inline_history !657
  unreachable

_ZN3ade7details8Metadata14MetadataHolderIN2cv5gimpl4DataEED2Ev.exit: ; preds = %_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK3ade7details8Metadata14MetadataHolderIN2cv5gimpl4DataEE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.230") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #19 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3ade7details8Metadata14MetadataHolderIN2cv5gimpl4DataEEE, i64 16), ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN2cv5gimpl4DataC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.c)
          to label %_ZN3ade7details8Metadata14MetadataHolderIN2cv5gimpl4DataEEC2ERKS6_.exit unwind label %bb.b, !inline_history !658

_ZN3ade7details8Metadata14MetadataHolderIN2cv5gimpl4DataEEC2ERKS6_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #20
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv5gimpl4DataC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  switch i64 %i.d, label %default.switch.case.unreachable [
    i64 0, label %call.0
    i64 1, label %call.1
    i64 2, label %call.2
    i64 3, label %call.3
    i64 4, label %call.4
    i64 5, label %call.5
  ], !prof !596

default.switch.case.unreachable:                  ; preds = %bb.a
  unreachable

call.0:                                           ; preds = %bb.a
end_hunk_1
