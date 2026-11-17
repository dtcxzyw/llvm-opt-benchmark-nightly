Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/os-test?download=true
inline.NumInlined: 2103
inline.NumDeleted: 573
begin_hunk_0_@_ZN30file_test_buffer_boundary_Test8TestBodyEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.x
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.aq = load ptr, ptr %5, align 8, !tbaa !39
  %i.ar = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 4091, ptr noundef %i.aq)
  invoke void @_ZN7testing8internal14CmpHelperSTREQEPKcS2_S2_S2_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.172, ptr noundef %i.ar, ptr noundef nonnull @.str.173)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.as = load i8, ptr %9, align 8, !tbaa !55, !range !59, !noundef !60
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.ak, label %bb.ab

bb.z:                                             ; preds = %_ZN7testing7MessageD2Ev.exit33, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit33 ], [ %i.t, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.an

bb.aa:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !41 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i35, label %_ZNK7testing15AssertionResult15failure_messageEv.exit36, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit36

_ZNK7testing15AssertionResult15failure_messageEv.exit36: ; preds = %bb.ad, %bb.ac
  %i.ay = phi ptr [ %i.ax, %bb.ad ], [ @.str.179, %bb.ac ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 565, ptr noundef %i.ay)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit36
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.az = load ptr, ptr %10, align 8, !tbaa !58   ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.az, null
  br i1 %.not.i.i37, label %_ZN7testing7MessageD2Ev.exit39, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38: ; preds = %bb.af
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(128) %i.az) #24, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit39

_ZN7testing7MessageD2Ev.exit39:                   ; preds = %bb.af, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ab
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit42

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit36
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn19 = phi { ptr, i32 } [ %i.bf, %bb.ai ], [ %i.be, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.bg = load ptr, ptr %10, align 8, !tbaa !58   ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i40, label %_ZN7testing7MessageD2Ev.exit42, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41: ; preds = %bb.aj
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(128) %i.bg) #24, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit42

_ZN7testing7MessageD2Ev.exit42:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41, %bb.aj, %bb.ag
  %.pn19.pn = phi { ptr, i32 } [ %i.bd, %bb.ag ], [ %.pn19, %bb.aj ], [ %.pn19, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  br label %bb.am

bb.ak:                                            ; preds = %bb.y, %_ZN7testing7MessageD2Ev.exit39
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !41 ; 4 uses
  %.not.i.i43 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i43, label %_ZN7testing15AssertionResultD2Ev.exit47, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !44 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i44: ; preds = %bb.al
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !45
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i44
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit47

_ZN7testing15AssertionResultD2Ev.exit47:          ; preds = %bb.ak, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZN3fmt3v1213buffered_fileD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3fmt3v1213buffered_fileD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZN3fmt3v124fileD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %i.d) #24
  call void @_ZN3fmt3v124fileD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.am:                                            ; preds = %_ZN7testing7MessageD2Ev.exit42, %bb.aa
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %_ZN7testing7MessageD2Ev.exit42 ], [ %i.au, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.z
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.am ], [ %.pn.pn.pn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZN3fmt3v1213buffered_fileD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.l
  %.pn19.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn, %bb.an ], [ %i.s, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ao
  %.pn25.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn, %bb.ao ], [ %lpad.loopexit.split-lp66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN3fmt3v1213buffered_fileD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp, %bb.c
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %.loopexit.split-lp ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZN3fmt3v124fileD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %i.d) #24
  call void @_ZN3fmt3v124fileD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn25.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #1

declare void @_ZN7testing8internal14CmpHelperSTREQEPKcS2_S2_S2_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN25file_test_io_putting_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.99", align 8 ; 6 uses
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.95", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.94", align 16 ; 4 uses
  %4 = alloca %"struct.fmt::v12::pipe", align 4   ; 9 uses
  %5 = alloca %"class.fmt::v12::buffered_file", align 8 ; 7 uses
  %6 = alloca %"class.fmt::v12::buffered_file", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %7 = alloca %"class.std::thread", align 8       ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN3fmt3v124pipeC1Ev(ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZN3fmt3v124file6fdopenEPKc(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v12::buffered_file") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull @.str.163)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  invoke void @_ZN3fmt3v124file6fdopenEPKc(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v12::buffered_file") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull @.str.88)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 0, ptr %7, align 8, !tbaa !79
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc19 unwind label %bb.j   ; 4 uses

.noexc19:                                         ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN25file_test_io_putting_Test8TestBodyEvE3$_0EEEEEE", i64 16), ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !250
  store ptr %i.d, ptr %1, align 8, !tbaa !81
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc19
  %i.f = load ptr, ptr %1, align 8, !tbaa !81     ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.f, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #24, !inline_history !242
  br label %bb.f

bb.e:                                             ; preds = %.noexc19
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !81     ; 3 uses
  %.not.i5.i = icmp eq ptr %i.k, null
  br i1 %.not.i5.i, label %.body, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i: ; preds = %bb.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #24, !inline_history !242
  br label %.body

bb.f:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.o = load ptr, ptr %6, align 8, !tbaa !39
  %i.p = call i32 @fseek(ptr noundef %i.o, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  br label %bb.k

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN3fmt3v1213buffered_file5closeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.o unwind label %bb.s

bb.h:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.i:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.j:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %12 = phi i64 [ 0, %bb.f ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %storemerge41 = phi i32 [ 0, %bb.f ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !251
  store i32 %storemerge41, ptr %3, align 16, !tbaa !45, !noalias !251
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.176, i64 3, i64 1, ptr nonnull %3)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !251
  %i.w = load ptr, ptr %6, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.x = load ptr, ptr %8, align 8, !tbaa !44
  %i.y = load i64, ptr %i.q, align 8, !tbaa !65
  store ptr %i.x, ptr %2, align 16, !tbaa !45
  store i64 %i.y, ptr %i.r, align 8, !tbaa !45
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.w, ptr nonnull @.str.65, i64 2, i64 13, ptr nonnull %2)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.z = load i64, ptr %i.q, align 8, !tbaa !65   ; 2 uses
  %i.aa = add i64 %12, %i.z                       ; 3 uses
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !64
  %i.ab = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.s
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.l
  %i.ad = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !45
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ag = add nuw nsw i32 %storemerge41, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, 20001
  br i1 %exitcond.not, label %bb.g, label %bb.k, !llvm.loop !245

bb.m:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.n:                                             ; preds = %.noexc
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.s
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.n
  %i.al = load i64, ptr %i.s, align 8, !tbaa !45
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.m
  %.pn12 = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.ai, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ah

bb.o:                                             ; preds = %bb.g
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.an = load i64, ptr %i.a, align 8, !tbaa !64, !noalias !252
  %i.ao = icmp eq i64 %i.an, %i.aa
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.t

bb.r:                                             ; preds = %bb.p
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.t

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.q, %bb.r
  %i.ap = load i8, ptr %9, align 8, !tbaa !55, !range !59, !noundef !60
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.ad, label %bb.u

bb.s:                                             ; preds = %bb.o, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.u:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !41 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.au, null
  br i1 %.not.i.i25, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !44
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.w, %bb.v
  %i.aw = phi ptr [ %i.av, %bb.w ], [ @.str.179, %bb.v ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 595, ptr noundef %i.aw)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ax = load ptr, ptr %10, align 8, !tbaa !58   ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i26, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.y
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #24, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ad

bb.z:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit29

bb.aa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.ab ], [ %i.bc, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.be = load ptr, ptr %10, align 8, !tbaa !58   ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.be, null
  br i1 %.not.i.i27, label %_ZN7testing7MessageD2Ev.exit29, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i28

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i28: ; preds = %bb.ac
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(128) %i.be) #24, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit29

_ZN7testing7MessageD2Ev.exit29:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i28, %bb.ac, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.z ], [ %.pn, %bb.ac ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  br label %bb.ag

bb.ad:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41 ; 4 uses
  %.not.i.i30 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i30, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !44 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !45
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.sroa.0.0.copyload.i.i = load i64, ptr %7, align 8, !tbaa !64
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZSt9terminatev() #30
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZN3fmt3v1213buffered_fileD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN3fmt3v1213buffered_fileD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN3fmt3v124fileD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %i.c) #24
  call void @_ZN3fmt3v124fileD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.ag:                                            ; preds = %_ZN7testing7MessageD2Ev.exit29, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit29 ], [ %i.as, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %.pn.pn.pn, %bb.ag ], [ %i.ar, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.sroa.0.0.copyload.i.i31 = load i64, ptr %7, align 8, !tbaa !64
  %.not.i32 = icmp eq i64 %.sroa.0.0.copyload.i.i31, 0
  br i1 %.not.i32, label %.body, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt9terminatev() #30
  unreachable

.body:                                            ; preds = %bb.ah, %bb.j, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i, %bb.e
  %.pn12.pn.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.v, %bb.j ], [ %i.j, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i ], [ %.pn12.pn, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZN3fmt3v1213buffered_fileD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  br label %bb.aj

end_hunk_0
