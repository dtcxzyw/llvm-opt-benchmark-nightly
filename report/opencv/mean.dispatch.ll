Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/mean.dispatch?download=true
inline.NumInlined: 191
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN2cv4meanERKNS_11_InputArrayES2_:bb.a
.preheader181:                                    ; preds = %.split195
  %i.fs = add nuw i64 %.0, 1
  %i.ft = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %.split195 unwind label %.split211, !llvm.loop !270 ; 0 uses

.split211:                                        ; preds = %.preheader181
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.split.us:                                        ; preds = %.split211, %.split211.us.split.us.split, %.split211.us.split.us.split.us, %.split211.us.split, %.split.split.us, %.split.us.split.us.split.us.split.us.split.us, %.split.us.split.us.split.us.split
  %.pn123.pn = phi { ptr, i32 } [ %i.dk, %.split.us.split.us.split.us.split.us.split.us ], [ %i.fo, %.split.split.us ], [ %i.et, %.split.us.split.us.split.us.split ], [ %i.fu, %.split211 ], [ %i.fp, %.split211.us.split ], [ %i.eu, %.split211.us.split.us.split ], [ %i.dl, %.split211.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.az

bb.az:                                            ; preds = %.split.us, %bb.ak
  %.pn123.pn.pn = phi { ptr, i32 } [ %.pn123.pn, %.split.us ], [ %i.bx, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.bd

.split206.us:                                     ; preds = %.split195.us.split.us.split, %.split195.us.split.us.split.us, %.split195.us.split
  %.us-phi207 = phi i64 [ %.073.us.us.us, %.split195.us.split.us.split.us ], [ %.073.us, %.split195.us.split ], [ %.073.us.us, %.split195.us.split.us.split ]
  %.us-phi207.fr = freeze i64 %.us-phi207         ; 2 uses
  %.not122 = icmp eq i64 %.us-phi207.fr, 0
  %i.fv = uitofp i64 %.us-phi207.fr to double
  %i.fw = fdiv double 1.000000e+00, %i.fv
  br i1 %.not122, label %.split206.us.thread, label %bb.ba

.split206.us.thread:                              ; preds = %.split195, %.split206.us
  br label %bb.ba

bb.ba:                                            ; preds = %.split206.us, %.split206.us.thread
  %i.fx = phi double [ 0.000000e+00, %.split206.us.thread ], [ %i.fw, %.split206.us ]
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.fy = load <2 x double>, ptr %8, align 16, !tbaa !20, !noalias !276
  %i.fz = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gb = fmul <2 x double> %i.ga, %i.fy
  store <2 x double> %i.gb, ptr %0, align 8, !tbaa !20, !alias.scope !276
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gd = load <2 x double>, ptr %i.ad, align 16, !tbaa !20, !noalias !276
  %i.ge = fmul <2 x double> %i.ga, %i.gd
  store <2 x double> %i.ge, ptr %i.gc, align 8, !tbaa !20, !alias.scope !276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !12
  %.not.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #16
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.bd:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %bb.az, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.pn123.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.y ], [ %.pn123.pn.pn, %bb.az ], [ %.pn120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.as, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j
  %.pn123.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn.pn.pn, %bb.bd ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %bb.j ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #15
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.i
  %.pn123.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn.pn.pn.pn, %bb.be ], [ %i.p, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #15
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.h
  %.pn123.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn.pn.pn.pn.pn, %bb.bf ], [ %i.o, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %.pn123.pn.pn.pn.pn.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !277
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !26
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !40
  %i.g = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.g, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.i, ptr %i.h, align 1, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !278
  %i.l = load ptr, ptr %0, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef ptr @_ZN2cv10getSumFuncEi(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPPhi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN2cv10meanStdDevERKNS_11_InputArrayERKNS_12_OutputArrayES5_S2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator", align 1   ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %i.b = alloca [2 x ptr], align 16               ; 12 uses
  %25 = alloca %"class.cv::NAryMatIterator", align 8 ; 9 uses
  %i.c = alloca [512 x double], align 16          ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv10meanStdDevERKNS_11_InputArrayERKNS_12_OutputArrayES5_S2_E25__cv_trace_location_fn229)
  %i.d = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv10meanStdDevERKNS_11_InputArrayERKNS_12_OutputArrayES5_S2_, ptr noundef nonnull @.str.3, i32 noundef 231) #17
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %7, align 8, !tbaa !40     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.k = load i64, ptr %i.i, align 8, !tbaa !14
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn275 = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.eb

bb.i:                                             ; preds = %bb.b
  %i.m = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.c

bb.j:                                             ; preds = %bb.i
  br i1 %i.m, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.l unwind label %bb.c

bb.l:                                             ; preds = %bb.k
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.n unwind label %bb.c

bb.n:                                             ; preds = %bb.m
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.p unwind label %bb.c

bb.p:                                             ; preds = %bb.o
  %i.s = icmp eq i32 %i.r, 9
  br i1 %i.s, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv10meanStdDevERKNS_11_InputArrayERKNS_12_OutputArrayES5_S2_, ptr noundef nonnull @.str.3, i32 noundef 232) #17
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

bb.u:                                             ; preds = %bb.r
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %9, align 8, !tbaa !40     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %bb.u
  %i.y = load i64, ptr %i.w, align 8, !tbaa !14
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289, %bb.t
  %.pn = phi { ptr, i32 } [ %i.t, %bb.t ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ], [ %i.u, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.eb

bb.v:                                             ; preds = %bb.j, %bb.l, %bb.n, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.aa = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.v
  %i.ab = icmp eq i32 %i.aa, 65536
  br i1 %i.ab, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29, !noalias !302
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.ad)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.ae

bb.x:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.ae

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.ae = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc294 unwind label %bb.af

.noexc294:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.af = icmp eq i32 %i.ae, 65536
  br i1 %i.af, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.noexc294
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29, !noalias !303
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.ah)
          to label %_ZNK2cv11_InputArray6getMatEi.exit297 unwind label %bb.af

bb.z:                                             ; preds = %.noexc294
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit297 unwind label %bb.af

_ZNK2cv11_InputArray6getMatEi.exit297:            ; preds = %bb.y, %bb.z
  %i.ai = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit297
  br i1 %i.ai, label %bb.am, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aj = load i32, ptr %12, align 8, !tbaa !37
  %i.ak = and i32 %i.aj, 4095
  switch i32 %i.ak, label %bb.ah [
    i32 0, label %bb.ac
    i32 1, label %bb.ac
    i32 9, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.an = invoke noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %i.al, ptr noundef nonnull align 4 dereferenceable(52) %i.am)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.an, label %bb.am, label %bb.ah

bb.ae:                                            ; preds = %bb.x, %bb.w, %bb.v
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.af:                                            ; preds = %bb.z, %bb.y, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.ag:                                            ; preds = %bb.ac, %_ZNK2cv11_InputArray6getMatEi.exit297
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.ah:                                            ; preds = %bb.ab, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
end_hunk_0
begin_hunk_1_@_ZN2cv10meanStdDevERKNS_11_InputArrayERKNS_12_OutputArrayES5_S2_:bb.a
  br i1 %exitcond436.not, label %.loopexit369.us.us.us, label %.preheader366.us.us.us, !llvm.loop !290

.loopexit369.us.us.us:                            ; preds = %.preheader366.us.us.us, %middle.block510
  br i1 %i.ga, label %.preheader.us.us.us.preheader, label %.loopexit365.us.us.us

.preheader.us.us.us.preheader:                    ; preds = %.loopexit369.us.us.us
  br i1 %min.iters.check, label %.preheader.us.us.us.preheader555, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.us.preheader ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.1, i64 %index ; 2 uses
  %wide.load = load <2 x i32>, ptr %i.ik, align 4, !tbaa !13
  %i.il = sitofp <2 x i32> %wide.load to <2 x double>
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %index ; 2 uses
  %wide.load500 = load <2 x double>, ptr %i.im, align 8, !tbaa !20
  %i.in = fadd <2 x double> %wide.load500, %i.il
  store <2 x double> %i.in, ptr %i.im, align 8, !tbaa !20
  store <2 x i32> zeroinitializer, ptr %i.ik, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.io = icmp eq i64 %index.next, %n.vec
  br i1 %i.io, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit365.us.us.us, label %.preheader.us.us.us.preheader555

.preheader.us.us.us.preheader555:                 ; preds = %.preheader.us.us.us.preheader, %middle.block
  %indvars.iv437.ph = phi i64 [ 0, %.preheader.us.us.us.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader555, %.preheader.us.us.us
  %indvars.iv437 = phi i64 [ %indvars.iv.next438, %.preheader.us.us.us ], [ %indvars.iv437.ph, %.preheader.us.us.us.preheader555 ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.1, i64 %indvars.iv437 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !13
  %i.ir = sitofp i32 %i.iq to double
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv437 ; 2 uses
  %i.it = load double, ptr %i.is, align 8, !tbaa !20
  %i.iu = fadd double %i.it, %i.ir
  store double %i.iu, ptr %i.is, align 8, !tbaa !20
  store i32 0, ptr %i.ip, align 4, !tbaa !13
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %exitcond441.not = icmp eq i64 %indvars.iv.next438, %i.fs
  br i1 %exitcond441.not, label %.loopexit365.us.us.us, label %.preheader.us.us.us, !llvm.loop !292

.loopexit365.us.us.us:                            ; preds = %.preheader368.us.us.us, %.preheader.us.us.us, %middle.block524, %middle.block, %.loopexit369.us.us.us, %bb.dg
  %.2.us.us.us = phi i64 [ %i.hf, %bb.dg ], [ 0, %.loopexit369.us.us.us ], [ 0, %middle.block ], [ 0, %middle.block524 ], [ 0, %.preheader.us.us.us ], [ 0, %.preheader368.us.us.us ] ; 2 uses
  %i.iv = sext i32 %.sroa.speculated328.us.us.us to i64 ; 2 uses
  %i.iw = mul nsw i64 %.0177, %i.iv
  %i.ix = load ptr, ptr %i.b, align 16, !tbaa !49
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iw ; 2 uses
  store ptr %i.iy, ptr %i.b, align 16, !tbaa !49
  %i.iz = load ptr, ptr %i.gu, align 8, !tbaa !49 ; 2 uses
  %.not274.us.us.us = icmp eq ptr %i.iz, null
  br i1 %.not274.us.us.us, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %.loopexit365.us.us.us
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 %i.iv ; 2 uses
  store ptr %i.ja, ptr %i.gu, align 8, !tbaa !49
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.loopexit365.us.us.us
  %i.jb = phi ptr [ %i.ja, %bb.di ], [ null, %.loopexit365.us.us.us ]
  %i.jc = add nsw i32 %.0184385.us.us.us, %.0343  ; 2 uses
  %i.jd = icmp slt i32 %i.jc, %i.fy
  br i1 %i.jd, label %bb.de, label %._crit_edge.split.us.us.us, !llvm.loop !293

._crit_edge.split.us.us.us:                       ; preds = %bb.dj
  %i.je = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %25)
          to label %switch.lookup unwind label %.split408.us.split.us, !llvm.loop !294 ; 0 uses

.split.us.split.us.split.us:                      ; preds = %bb.de
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.split408.us

.split408.us.split.us:                            ; preds = %._crit_edge.split.us.us.us
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %.split408.us

.split392.us.split:                               ; preds = %.split392.us, %._crit_edge.split.us399
  %.0180.us = phi i64 [ %i.jo, %._crit_edge.split.us399 ], [ 0, %.split392.us ] ; 2 uses
  %.0.us = phi i64 [ %i.jy, %._crit_edge.split.us399 ], [ 0, %.split392.us ] ; 2 uses
  %i.jh = load i64, ptr %i.gs, align 8, !tbaa !48
  %i.ji = icmp ult i64 %.0.us, %i.jh
  br i1 %i.ji, label %.preheader370.us.preheader, label %.split403.us

.preheader370.us.preheader:                       ; preds = %.split392.us.split
  %.pre458 = load ptr, ptr %i.b, align 16, !tbaa !49
  %.pre459 = load ptr, ptr %i.gu, align 8, !tbaa !49
  br label %.preheader370.us

.preheader370.us:                                 ; preds = %.preheader370.us.preheader, %bb.dm
  %i.jj = phi ptr [ %i.jv, %bb.dm ], [ %.pre459, %.preheader370.us.preheader ]
  %i.jk = phi ptr [ %i.js, %bb.dm ], [ %.pre458, %.preheader370.us.preheader ]
  %.1181387.us394 = phi i64 [ %i.jo, %bb.dm ], [ %.0180.us, %.preheader370.us.preheader ]
  %.0184385.us396 = phi i32 [ %i.jw, %bb.dm ], [ 0, %.preheader370.us.preheader ] ; 2 uses
  %i.jl = sub nsw i32 %i.fy, %.0184385.us396
  %.sroa.speculated328.us397 = call i32 @llvm.smin.i32(i32 %.0343, i32 %i.jl) ; 2 uses
  %i.jm = invoke noundef i32 %i.eu(ptr noundef %i.jk, ptr noundef %i.jj, ptr noundef nonnull %.0179, ptr noundef nonnull %.1, i32 noundef %.sroa.speculated328.us397, i32 noundef %i.bb)
          to label %bb.dk unwind label %.split.split.us

bb.dk:                                            ; preds = %.preheader370.us
  %i.jn = sext i32 %i.jm to i64
  %i.jo = add nsw i64 %.1181387.us394, %i.jn      ; 2 uses
  %i.jp = sext i32 %.sroa.speculated328.us397 to i64 ; 2 uses
  %i.jq = mul nsw i64 %.0177, %i.jp
  %i.jr = load ptr, ptr %i.b, align 16, !tbaa !49
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jq ; 2 uses
  store ptr %i.js, ptr %i.b, align 16, !tbaa !49
  %i.jt = load ptr, ptr %i.gu, align 8, !tbaa !49 ; 2 uses
  %.not274.us398 = icmp eq ptr %i.jt, null
  br i1 %.not274.us398, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 %i.jp ; 2 uses
  store ptr %i.ju, ptr %i.gu, align 8, !tbaa !49
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.jv = phi ptr [ %i.ju, %bb.dl ], [ null, %bb.dk ]
  %i.jw = add nsw i32 %.0184385.us396, %.0343     ; 2 uses
  %i.jx = icmp slt i32 %i.jw, %i.fy
  br i1 %i.jx, label %.preheader370.us, label %._crit_edge.split.us399, !llvm.loop !293

._crit_edge.split.us399:                          ; preds = %bb.dm
  %i.jy = add nuw i64 %.0.us, 1
  %i.jz = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %25)
          to label %.split392.us.split unwind label %.split408.us.split, !llvm.loop !294 ; 0 uses

.split.split.us:                                  ; preds = %.preheader370.us
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %.split408.us

.split408.us.split:                               ; preds = %._crit_edge.split.us399
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %.split408.us

.split392:                                        ; preds = %bb.dd, %.preheader370
  %.0 = phi i64 [ %i.ke, %.preheader370 ], [ 0, %bb.dd ] ; 2 uses
  %i.kc = load i64, ptr %i.gs, align 8, !tbaa !48
  %i.kd = icmp ult i64 %.0, %i.kc
  br i1 %i.kd, label %.preheader370, label %.split403.us.thread

.preheader370:                                    ; preds = %.split392
  %i.ke = add nuw i64 %.0, 1
  %i.kf = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %25)
          to label %.split392 unwind label %.split408, !llvm.loop !294 ; 0 uses

.split403.us:                                     ; preds = %.split392.us.split, %switch.lookup
  %.us-phi404 = phi i64 [ %.0180.us.us, %switch.lookup ], [ %.0180.us, %.split392.us.split ]
  %.us-phi404.fr = freeze i64 %.us-phi404         ; 2 uses
  %.not261 = icmp eq i64 %.us-phi404.fr, 0
  %i.kg = sitofp i64 %.us-phi404.fr to double
  %i.kh = fdiv double 1.000000e+00, %i.kg
  br i1 %.not261, label %.split403.us.thread, label %bb.dn

.split403.us.thread:                              ; preds = %.split392, %.split403.us
  br label %bb.dn

bb.dn:                                            ; preds = %.split403.us, %.split403.us.thread
  %i.ki = phi double [ 0.000000e+00, %.split403.us.thread ], [ %i.kh, %.split403.us ] ; 2 uses
  br label %bb.do

.split408:                                        ; preds = %.preheader370
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %.split408.us

bb.do:                                            ; preds = %bb.dn, %bb.do
  %indvars.iv442 = phi i64 [ 0, %bb.dn ], [ %indvars.iv.next443, %bb.do ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv442 ; 2 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !20
  %i.km = fmul double %i.ki, %i.kl                ; 3 uses
  store double %i.km, ptr %i.kk, align 8, !tbaa !20
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv442 ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !20
  %i.kp = fneg double %i.km
  %i.kq = fmul double %i.km, %i.kp
  %i.kr = call double @llvm.fmuladd.f64(double %i.ko, double %i.ki, double %i.kq) ; 2 uses
  %i.ks = fcmp olt double %i.kr, 0.000000e+00
  %.sroa.speculated = select i1 %i.ks, double 0.000000e+00, double %i.kr
  %i.kt = call double @sqrt(double noundef %.sroa.speculated) #15
  store double %i.kt, ptr %i.kn, align 8, !tbaa !20
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %exitcond446.not = icmp eq i64 %indvars.iv.next443, %i.fs
  br i1 %exitcond446.not, label %bb.dp, label %bb.do, !llvm.loop !295

bb.dp:                                            ; preds = %bb.do
  %i.ku = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.dq unwind label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.ku, label %bb.dr, label %.loopexit

bb.dr:                                            ; preds = %bb.dq
  %i.kv = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !306 ; 7 uses
  %min.iters.check528 = icmp samesign ult i32 %i.ba, 7
  %26 = ptrtoaddr ptr %i.kw to i64
  %i.kx = ptrtoaddr ptr %i.c to i64
  %i.ky = sub i64 %i.kx, %26
  %diff.check = icmp ugt i64 %i.ky, -32
  %or.cond554 = select i1 %min.iters.check528, i1 true, i1 %diff.check
  br i1 %or.cond554, label %scalar.ph527.preheader, label %vector.ph529

vector.ph529:                                     ; preds = %bb.dr
  %n.vec530 = and i64 %i.fs, 252                  ; 3 uses
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph529
  %index532 = phi i64 [ 0, %vector.ph529 ], [ %index.next535, %vector.body531 ] ; 3 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index532 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %wide.load533 = load <2 x double>, ptr %i.kz, align 16, !tbaa !20
  %wide.load534 = load <2 x double>, ptr %i.la, align 16, !tbaa !20
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %index532 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store <2 x double> %wide.load533, ptr %i.lb, align 8, !tbaa !20
  store <2 x double> %wide.load534, ptr %i.lc, align 8, !tbaa !20
  %index.next535 = add nuw i64 %index532, 4       ; 2 uses
  %i.ld = icmp eq i64 %index.next535, %n.vec530
  br i1 %i.ld, label %middle.block536, label %vector.body531, !llvm.loop !296

middle.block536:                                  ; preds = %vector.body531
  %cmp.n537 = icmp eq i64 %n.vec530, %i.fs
  br i1 %cmp.n537, label %.loopexit, label %scalar.ph527.preheader

scalar.ph527.preheader:                           ; preds = %bb.dr, %middle.block536
  %indvars.iv447.ph = phi i64 [ 0, %bb.dr ], [ %n.vec530, %middle.block536 ] ; 3 uses
  %i.le = and i32 %i.az, 127
  %i.lf = zext nneg i32 %i.le to i64              ; 2 uses
  %i.lg = add nuw nsw i64 %i.lf, 1
  %i.lh = sub nsw i64 %i.lf, %indvars.iv447.ph
  %xtraiter = and i64 %i.lg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph527.prol.loopexit, label %scalar.ph527.prol

scalar.ph527.prol:                                ; preds = %scalar.ph527.preheader, %scalar.ph527.prol
  %indvars.iv447.prol = phi i64 [ %indvars.iv.next448.prol, %scalar.ph527.prol ], [ %indvars.iv447.ph, %scalar.ph527.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph527.prol ], [ 0, %scalar.ph527.preheader ]
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv447.prol
  %i.lj = load double, ptr %i.li, align 8, !tbaa !20
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv447.prol
  store double %i.lj, ptr %i.lk, align 8, !tbaa !20
  %indvars.iv.next448.prol = add nuw nsw i64 %indvars.iv447.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph527.prol.loopexit, label %scalar.ph527.prol, !llvm.loop !297

scalar.ph527.prol.loopexit:                       ; preds = %scalar.ph527.prol, %scalar.ph527.preheader
  %indvars.iv447.unr = phi i64 [ %indvars.iv447.ph, %scalar.ph527.preheader ], [ %indvars.iv.next448.prol, %scalar.ph527.prol ]
  %i.ll = icmp ult i64 %i.lh, 3
  br i1 %i.ll, label %.loopexit, label %scalar.ph527

scalar.ph527:                                     ; preds = %scalar.ph527.prol.loopexit, %scalar.ph527
  %indvars.iv447 = phi i64 [ %indvars.iv.next448.3, %scalar.ph527 ], [ %indvars.iv447.unr, %scalar.ph527.prol.loopexit ] ; 6 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv447
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !20
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv447
  store double %i.ln, ptr %i.lo, align 8, !tbaa !20
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next448
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !20
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv.next448
  store double %i.lq, ptr %i.lr, align 8, !tbaa !20
  %indvars.iv.next448.1 = add nuw nsw i64 %indvars.iv447, 2 ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next448.1
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !20
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv.next448.1
  store double %i.lt, ptr %i.lu, align 8, !tbaa !20
  %indvars.iv.next448.2 = add nuw nsw i64 %indvars.iv447, 3 ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next448.2
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !20
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv.next448.2
  store double %i.lw, ptr %i.lx, align 8, !tbaa !20
  %indvars.iv.next448.3 = add nuw nsw i64 %indvars.iv447, 4 ; 2 uses
  %exitcond451.not.3 = icmp eq i64 %indvars.iv.next448.3, %i.fs
  br i1 %exitcond451.not.3, label %.loopexit, label %scalar.ph527, !llvm.loop !298

bb.ds:                                            ; preds = %.loopexit, %bb.dp
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %.split408.us

.loopexit:                                        ; preds = %scalar.ph527.prol.loopexit, %scalar.ph527, %middle.block536, %bb.dq
  %i.lz = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.dt unwind label %bb.ds

bb.dt:                                            ; preds = %.loopexit
  br i1 %i.lz, label %bb.du, label %.critedge

bb.du:                                            ; preds = %bb.dt
  %i.ma = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !306 ; 7 uses
  %min.iters.check542 = icmp samesign ult i32 %i.ba, 17
  br i1 %min.iters.check542, label %scalar.ph541.preheader, label %vector.memcheck539

vector.memcheck539:                               ; preds = %bb.du
  %i.mc = ptrtoaddr ptr %i.mb to i64
  %27 = ptrtoaddr ptr %i.c to i64
  %i.md = shl nuw nsw i32 %i.az, 3
  %i.me = and i32 %i.md, 1016
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = add i64 %27, %i.mf
  %i.mh = sub i64 %i.mc, %i.mg
  %i.mi = add i64 %i.mh, -9
  %diff.check540 = icmp ult i64 %i.mi, 31
  br i1 %diff.check540, label %scalar.ph541.preheader, label %vector.ph543

vector.ph543:                                     ; preds = %vector.memcheck539
  %n.vec544 = and i64 %i.fs, 252                  ; 3 uses
  br label %vector.body545

vector.body545:                                   ; preds = %vector.body545, %vector.ph543
  %index546 = phi i64 [ 0, %vector.ph543 ], [ %index.next549, %vector.body545 ] ; 3 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %index546 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %wide.load547 = load <2 x double>, ptr %i.mj, align 8, !tbaa !20
  %wide.load548 = load <2 x double>, ptr %i.mk, align 8, !tbaa !20
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %index546 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  store <2 x double> %wide.load547, ptr %i.ml, align 8, !tbaa !20
  store <2 x double> %wide.load548, ptr %i.mm, align 8, !tbaa !20
  %index.next549 = add nuw i64 %index546, 4       ; 2 uses
  %i.mn = icmp eq i64 %index.next549, %n.vec544
  br i1 %i.mn, label %middle.block550, label %vector.body545, !llvm.loop !299

middle.block550:                                  ; preds = %vector.body545
  %cmp.n551 = icmp eq i64 %n.vec544, %i.fs
  br i1 %cmp.n551, label %.critedge, label %scalar.ph541.preheader

scalar.ph541.preheader:                           ; preds = %vector.memcheck539, %bb.du, %middle.block550
  %indvars.iv452.ph = phi i64 [ 0, %vector.memcheck539 ], [ 0, %bb.du ], [ %n.vec544, %middle.block550 ] ; 3 uses
  %i.mo = and i32 %i.az, 127
  %i.mp = zext nneg i32 %i.mo to i64              ; 2 uses
  %i.mq = add nuw nsw i64 %i.mp, 1
  %i.mr = sub nsw i64 %i.mp, %indvars.iv452.ph
  %xtraiter565 = and i64 %i.mq, 3                 ; 2 uses
  %lcmp.mod566.not = icmp eq i64 %xtraiter565, 0
  br i1 %lcmp.mod566.not, label %scalar.ph541.prol.loopexit, label %scalar.ph541.prol

scalar.ph541.prol:                                ; preds = %scalar.ph541.preheader, %scalar.ph541.prol
  %indvars.iv452.prol = phi i64 [ %indvars.iv.next453.prol, %scalar.ph541.prol ], [ %indvars.iv452.ph, %scalar.ph541.preheader ] ; 3 uses
  %prol.iter567 = phi i64 [ %prol.iter567.next, %scalar.ph541.prol ], [ 0, %scalar.ph541.preheader ]
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv452.prol
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !20
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv452.prol
  store double %i.mt, ptr %i.mu, align 8, !tbaa !20
  %indvars.iv.next453.prol = add nuw nsw i64 %indvars.iv452.prol, 1 ; 2 uses
  %prol.iter567.next = add i64 %prol.iter567, 1   ; 2 uses
  %prol.iter567.cmp.not = icmp eq i64 %prol.iter567.next, %xtraiter565
  br i1 %prol.iter567.cmp.not, label %scalar.ph541.prol.loopexit, label %scalar.ph541.prol, !llvm.loop !300

scalar.ph541.prol.loopexit:                       ; preds = %scalar.ph541.prol, %scalar.ph541.preheader
  %indvars.iv452.unr = phi i64 [ %indvars.iv452.ph, %scalar.ph541.preheader ], [ %indvars.iv.next453.prol, %scalar.ph541.prol ]
  %i.mv = icmp ult i64 %i.mr, 3
  br i1 %i.mv, label %.critedge, label %scalar.ph541

scalar.ph541:                                     ; preds = %scalar.ph541.prol.loopexit, %scalar.ph541
  %indvars.iv452 = phi i64 [ %indvars.iv.next453.3, %scalar.ph541 ], [ %indvars.iv452.unr, %scalar.ph541.prol.loopexit ] ; 6 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv452
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !20
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv452
  store double %i.mx, ptr %i.my, align 8, !tbaa !20
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.next453
  %i.na = load double, ptr %i.mz, align 8, !tbaa !20
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv.next453
  store double %i.na, ptr %i.nb, align 8, !tbaa !20
  %indvars.iv.next453.1 = add nuw nsw i64 %indvars.iv452, 2 ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.next453.1
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !20
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv.next453.1
  store double %i.nd, ptr %i.ne, align 8, !tbaa !20
  %indvars.iv.next453.2 = add nuw nsw i64 %indvars.iv452, 3 ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.next453.2
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !20
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv.next453.2
  store double %i.ng, ptr %i.nh, align 8, !tbaa !20
  %indvars.iv.next453.3 = add nuw nsw i64 %indvars.iv452, 4 ; 2 uses
  %exitcond456.not.3 = icmp eq i64 %indvars.iv.next453.3, %i.fs
  br i1 %exitcond456.not.3, label %.critedge, label %scalar.ph541, !llvm.loop !301

.critedge:                                        ; preds = %scalar.ph541.prol.loopexit, %scalar.ph541, %middle.block550, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.ni = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !12
  %.not.i = icmp eq i32 %i.nj, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.dv

bb.dv:                                            ; preds = %.critedge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.nk = landingpad { ptr, i32 }
          catch ptr null
  %i.nl = extractvalue { ptr, i32 } %i.nk, 0
  call void @__clang_call_terminate(ptr %i.nl) #16
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.critedge, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret void

.split408.us:                                     ; preds = %.split408, %.split408.us.split.us, %.split408.us.split, %.split.split.us, %.split.us.split.us.split.us, %bb.ds
  %.pn262.pn = phi { ptr, i32 } [ %i.ly, %bb.ds ], [ %i.jf, %.split.us.split.us.split.us ], [ %i.ka, %.split.split.us ], [ %i.kj, %.split408 ], [ %i.kb, %.split408.us.split ], [ %i.jg, %.split408.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.dx

bb.dx:                                            ; preds = %.split408.us, %bb.db
  %.pn262.pn.pn = phi { ptr, i32 } [ %.pn262.pn, %.split408.us ], [ %i.gb, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.body

.body:                                            ; preds = %bb.ct, %bb.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %bb.dx, %bb.ck, %bb.cg, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %bb.bu, %bb.ba, %bb.ar
  %.pn262.pn.pn.pn.pn = phi { ptr, i32 } [ %i.er, %bb.ck ], [ %i.dk, %bb.bv ], [ %i.el, %bb.cg ], [ %i.bx, %bb.bb ], [ %.pn242, %bb.bu ], [ %i.bf, %bb.ar ], [ %.pn237, %bb.ba ], [ %.pn239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ %.pn245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %.pn262.pn.pn, %bb.dx ], [ %.pn259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %i.fg, %bb.ct ], [ %i.fd, %bb.cr ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.dy

bb.dy:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %bb.ag
  %.pn262.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn262.pn.pn.pn.pn, %.body ], [ %.pn235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ], [ %i.aq, %bb.ag ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #15
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.af
  %.pn262.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn262.pn.pn.pn.pn.pn, %bb.dy ], [ %i.ap, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #15
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.ae
  %.pn262.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn262.pn.pn.pn.pn.pn.pn, %bb.dz ], [ %i.ao, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn275.pn = phi { ptr, i32 } [ %.pn275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn262.pn.pn.pn.pn.pn.pn.pn, %bb.ea ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %i.e, %bb.c ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  resume { ptr, i32 } %.pn275.pn
}

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

declare noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2cv12_OutputArray9fixedSizeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
end_hunk_1
