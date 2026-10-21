Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image_test?download=true
inline.NumInlined: 4995
inline.NumDeleted: 987
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN20Image_QoiRgbaIO_Test8TestBodyEv:bb.a
bb.iq:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit359, %_ZN7testing15AssertionResultD2Ev.exit431
  store i64 0, ptr %i.rt, align 8, !tbaa !81
  %i.abr = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !82 ; 2 uses
  %.not.i.i.i.i.i432 = icmp eq ptr %i.abs, null
  br i1 %.not.i.i.i.i.i432, label %_ZN4pbrt16ImageChannelDescD2Ev.exit, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.abt = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !83
  %i.abv = shl i64 %i.abu, 2
  %i.abw = load ptr, ptr %40, align 8, !tbaa !84  ; 2 uses
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !53
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 24
  %i.abz = load ptr, ptr %i.aby, align 8
  invoke void %i.abz(ptr noundef nonnull align 8 dereferenceable(8) %i.abw, ptr noundef nonnull %i.abs, i64 noundef %i.abv, i64 noundef 4)
          to label %_ZN4pbrt16ImageChannelDescD2Ev.exit unwind label %bb.is, !inline_history !3

bb.is:                                            ; preds = %bb.ir
  %i.aca = landingpad { ptr, i32 }
          catch ptr null
  %i.acb = extractvalue { ptr, i32 } %i.aca, 0
  call void @__clang_call_terminate(ptr %i.acb) #27
  unreachable

_ZN4pbrt16ImageChannelDescD2Ev.exit:              ; preds = %bb.iq, %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  br label %bb.it

bb.it:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit301, %_ZN7testing15AssertionResultD2Ev.exit279, %_ZN7testing15AssertionResultD2Ev.exit258, %_ZN4pbrt16ImageChannelDescD2Ev.exit
  %i.acc = getelementptr inbounds nuw i8, ptr %14, i64 408
  %i.acd = getelementptr inbounds nuw i8, ptr %14, i64 424
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !117
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.acc, ptr noundef %i.ace)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i unwind label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.acf = landingpad { ptr, i32 }
          catch ptr null
  %i.acg = extractvalue { ptr, i32 } %i.acf, 0
  call void @__clang_call_terminate(ptr %i.acg) #27
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i: ; preds = %bb.it
  %i.ach = getelementptr inbounds nuw i8, ptr %14, i64 360
  %i.aci = getelementptr inbounds nuw i8, ptr %14, i64 376
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !117
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ach, ptr noundef %i.acj)
          to label %_ZN4pbrt16ImageAndMetadataD2Ev.exit unwind label %bb.iv

bb.iv:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i
  %i.ack = landingpad { ptr, i32 }
          catch ptr null
  %i.acl = extractvalue { ptr, i32 } %i.ack, 0
  call void @__clang_call_terminate(ptr %i.acl) #27
  unreachable

_ZN4pbrt16ImageAndMetadataD2Ev.exit:              ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(456) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.acm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i433 = icmp eq ptr %i.acn, null
  br i1 %.not.i.i.i.i433, label %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEED2Ev.exit434, label %bb.iw

bb.iw:                                            ; preds = %_ZN4pbrt16ImageAndMetadataD2Ev.exit
  %i.aco = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !71
  %i.acq = load ptr, ptr %3, align 8, !tbaa !72   ; 2 uses
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !53
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 24
  %i.act = load ptr, ptr %i.acs, align 8
  invoke void %i.act(ptr noundef nonnull align 8 dereferenceable(8) %i.acq, ptr noundef nonnull %i.acn, i64 noundef %i.acp, i64 noundef 1)
          to label %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEED2Ev.exit434 unwind label %bb.ix, !inline_history !2

bb.ix:                                            ; preds = %bb.iw
  %i.acu = landingpad { ptr, i32 }
          catch ptr null
  %i.acv = extractvalue { ptr, i32 } %i.acu, 0
  call void @__clang_call_terminate(ptr %i.acv) #27
  unreachable

_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEED2Ev.exit434: ; preds = %_ZN4pbrt16ImageAndMetadataD2Ev.exit, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416: ; preds = %bb.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414, %bb.ik
  %.pn150.pn.pn.pn = phi { ptr, i32 } [ %.pn150.pn.pn, %bb.ik ], [ %i.aad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414 ], [ %i.aad, %bb.hv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25
  br label %bb.iy

bb.iy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit410, %bb.fy
  %.pn157.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn.pn.pn, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit410 ], [ %.pn150.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416 ], [ %.pn143.pn.pn, %bb.fy ] ; 2 uses
  store i64 0, ptr %i.rt, align 8, !tbaa !81
  %i.acw = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !82 ; 2 uses
  %.not.i.i.i.i.i435 = icmp eq ptr %i.acx, null
  br i1 %.not.i.i.i.i.i435, label %_ZN4pbrt16ImageChannelDescD2Ev.exit436, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.acy = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !83
  %i.ada = shl i64 %i.acz, 2
  %i.adb = load ptr, ptr %40, align 8, !tbaa !84  ; 2 uses
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !53
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 24
  %i.ade = load ptr, ptr %i.add, align 8
  invoke void %i.ade(ptr noundef nonnull align 8 dereferenceable(8) %i.adb, ptr noundef nonnull %i.acx, i64 noundef %i.ada, i64 noundef 4)
          to label %_ZN4pbrt16ImageChannelDescD2Ev.exit436 unwind label %bb.ja, !inline_history !3

bb.ja:                                            ; preds = %bb.iz
  %i.adf = landingpad { ptr, i32 }
          catch ptr null
  %i.adg = extractvalue { ptr, i32 } %i.adf, 0
  call void @__clang_call_terminate(ptr %i.adg) #27
  unreachable

_ZN4pbrt16ImageChannelDescD2Ev.exit436:           ; preds = %bb.iz, %bb.iy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.3
  %.pn157.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ry, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.3 ], [ %.pn157.pn.pn.pn.pn.pn, %bb.iy ], [ %.pn157.pn.pn.pn.pn.pn, %bb.iz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  br label %bb.jb

bb.jb:                                            ; preds = %_ZN4pbrt16ImageChannelDescD2Ev.exit436, %bb.fe, %bb.ei, %bb.dm, %bb.cs, %bb.bz, %bb.bd
  %.pn157.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn.pn.pn.pn.pn, %_ZN4pbrt16ImageChannelDescD2Ev.exit436 ], [ %.pn134.pn.pn, %bb.fe ], [ %.pn129.pn.pn, %bb.ei ], [ %.pn124.pn.pn, %bb.dm ], [ %.pn119.pn.pn, %bb.cs ], [ %.pn113.pn.pn, %bb.bz ], [ %.pn109.pn.pn, %bb.bd ]
  %i.adh = getelementptr inbounds nuw i8, ptr %14, i64 408
  %i.adi = getelementptr inbounds nuw i8, ptr %14, i64 424
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !117
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.adh, ptr noundef %i.adj)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i437 unwind label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.adk = landingpad { ptr, i32 }
          catch ptr null
  %i.adl = extractvalue { ptr, i32 } %i.adk, 0
  call void @__clang_call_terminate(ptr %i.adl) #27
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i437: ; preds = %bb.jb
  %i.adm = getelementptr inbounds nuw i8, ptr %14, i64 360
  %i.adn = getelementptr inbounds nuw i8, ptr %14, i64 376
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !117
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.adm, ptr noundef %i.ado)
          to label %_ZN4pbrt16ImageAndMetadataD2Ev.exit438 unwind label %bb.jd

bb.jd:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i437
  %i.adp = landingpad { ptr, i32 }
          catch ptr null
  %i.adq = extractvalue { ptr, i32 } %i.adp, 0
  call void @__clang_call_terminate(ptr %i.adq) #27
  unreachable

_ZN4pbrt16ImageAndMetadataD2Ev.exit438:           ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i437
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(456) %14) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223, %_ZN4pbrt16ImageAndMetadataD2Ev.exit438
  %.pn157.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn.pn.pn.pn.pn.pn, %_ZN4pbrt16ImageAndMetadataD2Ev.exit438 ], [ %i.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223 ], [ %i.hw, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.je

bb.je:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %.pn157.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %.pn102.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ]
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #25
  br label %bb.jf

bb.jf:                                            ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.3, %bb.je
  %.pn157.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.je ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.3 ], [ %i.ex, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.adr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i439 = icmp eq ptr %i.ads, null
  br i1 %.not.i.i.i.i439, label %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEED2Ev.exit440, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.adt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !71
  %i.adv = load ptr, ptr %3, align 8, !tbaa !72   ; 2 uses
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !53
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 24
  %i.ady = load ptr, ptr %i.adx, align 8
  invoke void %i.ady(ptr noundef nonnull align 8 dereferenceable(8) %i.adv, ptr noundef nonnull %i.ads, i64 noundef %i.adu, i64 noundef 1)
          to label %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEED2Ev.exit440 unwind label %bb.jh, !inline_history !2

bb.jh:                                            ; preds = %bb.jg
  %i.adz = landingpad { ptr, i32 }
          catch ptr null
  %i.aea = extractvalue { ptr, i32 } %i.adz, 0
  call void @__clang_call_terminate(ptr %i.aea) #27
  unreachable

_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEED2Ev.exit440: ; preds = %bb.jf, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn157.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23Image_SampleSimple_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i:
  %1 = alloca %"class.pbrt::Bounds2.64", align 16 ; 4 uses
  %2 = alloca %"class.pstd::vector.4", align 8    ; 8 uses
  %3 = alloca %"class.pbrt::Image", align 8       ; 7 uses
  %4 = alloca %"class.pstd::vector.4", align 8    ; 8 uses
  %5 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 12 uses
  %6 = alloca %"class.pbrt::PiecewiseConstant2D", align 8 ; 15 uses
  %7 = alloca %"class.pbrt::Array2D", align 8     ; 11 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %8 = alloca %"class.pbrt::Point2.51", align 8   ; 6 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.d = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25 ; 5 uses
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %2, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 16, i64 noundef 4), !inline_history !12 ; 7 uses
  store i64 4, ptr %i.g, align 8, !tbaa !67
  store ptr %i.l, ptr %i.f, align 8, !tbaa !66
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.l, align 4, !tbaa !77
  store i64 4, ptr %i.h, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.m = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25 ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  store i64 %i.n, ptr %4, align 8, !tbaa !102
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 16, i64 noundef 4)
          to label %.noexc unwind label %bb.n, !inline_history !7 ; 17 uses

.noexc:                                           ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %.pre.i = load i64, ptr %i.q, align 8, !tbaa !64 ; 11 uses
  %.pre.i.pre.i = load ptr, ptr %i.o, align 8, !tbaa !66 ; 14 uses
  %.not13.i.i = icmp eq i64 %.pre.i, 0
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc
  %.pre.i.pre.i107 = ptrtoaddr ptr %.pre.i.pre.i to i64
  %i.v = ptrtoaddr ptr %i.u to i64
  %min.iters.check = icmp ult i64 %.pre.i, 4
  %i.w = sub i64 %.pre.i.pre.i107, %i.v
  %diff.check = icmp ugt i64 %i.w, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i42.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp ult i64 %.pre.i, 32
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %.pre.i, 28
  %n.vec = and i64 %.pre.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load = load <8 x float>, ptr %i.z, align 4, !tbaa !77
  %wide.load109 = load <8 x float>, ptr %i.aa, align 4, !tbaa !77
  %wide.load110 = load <8 x float>, ptr %i.ab, align 4, !tbaa !77
  %wide.load111 = load <8 x float>, ptr %i.ac, align 4, !tbaa !77
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  store <8 x float> %wide.load, ptr %i.y, align 4, !tbaa !77
  store <8 x float> %wide.load109, ptr %i.ad, align 4, !tbaa !77
  store <8 x float> %wide.load110, ptr %i.ae, align 4, !tbaa !77
  store <8 x float> %wide.load111, ptr %i.af, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !440

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i42.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec112 = and i64 %.pre.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index113 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index113
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %index113
  %wide.load114 = load <4 x float>, ptr %i.ai, align 4, !tbaa !77
  store <4 x float> %wide.load114, ptr %i.ah, align 4, !tbaa !77
  %index.next115 = add nuw i64 %index113, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next115, %n.vec112
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !441

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n116 = icmp eq i64 %.pre.i, %n.vec112
  br i1 %cmp.n116, label %._crit_edge.thread.i.i, label %.lr.ph.i.i42.preheader

.lr.ph.i.i42.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec112, %vec.epilog.middle.block ] ; 4 uses
  %i.ak = sub i64 %.pre.i, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.ak, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i42.prol.loopexit, label %.lr.ph.i.i42.prol

.lr.ph.i.i42.prol:                                ; preds = %.lr.ph.i.i42.preheader, %.lr.ph.i.i42.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i42.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i42.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i42.prol ], [ 0, %.lr.ph.i.i42.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.i.i.prol
  %i.an = load float, ptr %i.am, align 4, !tbaa !77
  store float %i.an, ptr %i.al, align 4, !tbaa !77
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i42.prol.loopexit, label %.lr.ph.i.i42.prol, !llvm.loop !442

.lr.ph.i.i42.prol.loopexit:                       ; preds = %.lr.ph.i.i42.prol, %.lr.ph.i.i42.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i42.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i42.prol ]
  %i.ao = sub i64 %indvars.iv.i.i.ph, %.pre.i
  %i.ap = icmp ugt i64 %i.ao, -8
  br i1 %i.ap, label %._crit_edge.thread.i.i, label %.lr.ph.i.i42

._crit_edge.i.i:                                  ; preds = %.noexc
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.pre.i, null
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i42.prol.loopexit, %.lr.ph.i.i42, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !67
  %i.ar = shl i64 %i.aq, 2
  %i.as = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull %.pre.i.pre.i, i64 noundef %i.ar, i64 noundef 4)
          to label %.lr.ph.i unwind label %bb.n, !inline_history !7

.lr.ph.i.i42:                                     ; preds = %.lr.ph.i.i42.prol.loopexit, %.lr.ph.i.i42
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i42 ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i42.prol.loopexit ] ; 10 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.i.i
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !77
  store float %i.ay, ptr %i.aw, align 4, !tbaa !77
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !77
  store float %i.bb, ptr %i.az, align 4, !tbaa !77
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.1
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.1
  %i.be = load float, ptr %i.bd, align 4, !tbaa !77
  store float %i.be, ptr %i.bc, align 4, !tbaa !77
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.2
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.2
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !77
  store float %i.bh, ptr %i.bf, align 4, !tbaa !77
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.3
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.3
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !77
  store float %i.bk, ptr %i.bi, align 4, !tbaa !77
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.4
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !77
  store float %i.bn, ptr %i.bl, align 4, !tbaa !77
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.5
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.5
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !77
  store float %i.bq, ptr %i.bo, align 4, !tbaa !77
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.6
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.6
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !77
  store float %i.bt, ptr %i.br, align 4, !tbaa !77
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %.pre.i
  br i1 %exitcond.not.i.i.7, label %._crit_edge.thread.i.i, label %.lr.ph.i.i42, !llvm.loop !443

.lr.ph.i:                                         ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  store i64 4, ptr %i.p, align 8, !tbaa !67
  store ptr %i.u, ptr %i.o, align 8, !tbaa !66
  %i.bu = load float, ptr %i.l, align 4, !tbaa !77
  store float %i.bu, ptr %i.u, align 4, !tbaa !77
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !77
  store float %i.bx, ptr %i.bv, align 4, !tbaa !77
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !77
  store float %i.ca, ptr %i.by, align 4, !tbaa !77
  %i.cb = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !77
  store float %i.cd, ptr %i.cb, align 4, !tbaa !77
  store i64 4, ptr %i.q, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.ce, ptr %5, align 8, !tbaa !31
  store i8 89, ptr %i.ce, align 8, !tbaa !32
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.cf, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.cg, align 1, !tbaa !32
  invoke void @_ZN4pbrt5ImageC1EN4pstd6vectorIfNS1_3pmr21polymorphic_allocatorIfEEEENS_6Point2IiEENS1_4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr nofree noundef nonnull align 8 dereferenceable(32) %4, i64 8589934594, ptr nonnull %5, i64 1)
          to label %bb.a unwind label %bb.o

bb.a:                                             ; preds = %.lr.ph.i
  %i.ch = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !32
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  store i64 0, ptr %i.q, align 8, !tbaa !64
  %i.cm = load ptr, ptr %i.o, align 8, !tbaa !66  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = load i64, ptr %i.p, align 8, !tbaa !67
  %i.co = shl i64 %i.cn, 2
  %i.cp = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !53
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull %i.cm, i64 noundef %i.co, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.c, !inline_history !1

bb.c:                                             ; preds = %bb.b
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #27
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !447
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1, align 16, !noalias !447
  %i.cv = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25, !noalias !447
  invoke void @_ZN4pbrt5Image23GetSamplingDistributionIZNS0_23GetSamplingDistributionEvEUlNS_6Point2IfEEE_EENS_7Array2DIfEET_RKNS_7Bounds2IfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Array2D") align 8 %7, ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr %i.cv)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !447
  %i.cw = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !147
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %7, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %.sroa.2.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i to i32
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !103
  %i.db = sub nsw i32 %i.da, %.sroa.0.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !105
  %i.de = sub nsw i32 %i.dd, %.sroa.2.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.df = mul nsw i32 %i.de, %i.db
  %i.dg = sext i32 %i.df to i64
  invoke void @_ZN4pbrt19PiecewiseConstant2DC2EN4pstd4spanIKfEEiiNS_7Bounds2IfEENS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr %i.cy, i64 %i.dg, i32 noundef %i.db, i32 noundef %i.de, <2 x float> zeroinitializer, <2 x float> splat (float 1.000000e+00), ptr %i.cw)
          to label %_ZN4pbrt19PiecewiseConstant2DC2ERKNS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit unwind label %bb.q

_ZN4pbrt19PiecewiseConstant2DC2ERKNS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit: ; preds = %bb.d
  %i.dh = load ptr, ptr %i.cx, align 8, !tbaa !147 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i48, label %_ZN4pbrt7Array2DIfED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt19PiecewiseConstant2DC2ERKNS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit
  %i.di = load i32, ptr %i.dc, align 4, !tbaa !105
  %.sroa.0.0.copyload.i.i = load i64, ptr %7, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i to i32
  %i.dj = sub nsw i32 %i.di, %.sroa.2.0.extract.trunc.i.i.i
  %i.dk = load i32, ptr %i.cz, align 8, !tbaa !103
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.dl = sub nsw i32 %i.dk, %.sroa.0.0.extract.trunc.i.i.i
  %i.dm = mul nsw i32 %i.dj, %i.dl
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dp = shl nsw i64 %i.dn, 2
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !148 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !53
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  invoke void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull %i.dh, i64 noundef %i.dp, i64 noundef 4)
          to label %_ZN4pbrt7Array2DIfED2Ev.exit unwind label %bb.f, !inline_history !13

bb.f:                                             ; preds = %bb.e
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZN4pbrt7Array2DIfED2Ev.exit:                     ; preds = %_ZN4pbrt19PiecewiseConstant2DC2ERKNS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  br label %bb.s

bb.g:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit69
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i64 0, ptr %i.ea, align 8, !tbaa !64
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i.i.i49 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i49, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !67
  %i.eg = shl i64 %i.ef, 2
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !68 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  invoke void %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull %i.ec, i64 noundef %i.eg, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i unwind label %bb.i, !inline_history !1

bb.i:                                             ; preds = %bb.h
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #27
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i: ; preds = %bb.h, %bb.g
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 0, ptr %i.en, align 8, !tbaa !64
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i1.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !67
  %i.es = shl i64 %i.er, 2
  %i.et = load ptr, ptr %i.dz, align 8, !tbaa !68 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !53
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  invoke void %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull %i.ep, i64 noundef %i.es, i64 noundef 4)
          to label %bb.l unwind label %bb.k, !inline_history !1

bb.k:                                             ; preds = %bb.j
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #27
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ez) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.fa = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  invoke void %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.l, i64 noundef 16, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit51 unwind label %bb.m, !inline_history !1

bb.m:                                             ; preds = %bb.l
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #27
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit51: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.n:                                             ; preds = %._crit_edge.thread.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.o:                                             ; preds = %.lr.ph.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  %i.fh = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.o
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !32
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #25
  br label %bb.bp

bb.p:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.d
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt7Array2DIfED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn28 = phi { ptr, i32 } [ %i.fn, %bb.q ], [ %i.fm, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bo

bb.s:                                             ; preds = %_ZN4pbrt7Array2DIfED2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit69
  %.0987 = phi i32 [ 0, %_ZN4pbrt7Array2DIfED2Ev.exit ], [ %i.in, %_ZN7testing15AssertionResultD2Ev.exit69 ]
  %.sroa.071.086 = phi i64 [ -8846114313915602277, %_ZN4pbrt7Array2DIfED2Ev.exit ], [ %i.fr, %_ZN7testing15AssertionResultD2Ev.exit69 ] ; 2 uses
  %i.fo = mul i64 %.sroa.071.086, 6364136223846793005
  %i.fp = add i64 %i.fo, -2720673578348880933     ; 2 uses
  %i.fq = mul i64 %i.fp, 6364136223846793005
  %i.fr = add i64 %i.fq, -2720673578348880933
  %i.fs = insertelement <2 x i64> poison, i64 %.sroa.071.086, i64 0
  %i.ft = insertelement <2 x i64> %i.fs, i64 %i.fp, i64 1 ; 3 uses
  %i.fu = lshr <2 x i64> %i.ft, splat (i64 45)
  %i.fv = lshr <2 x i64> %i.ft, splat (i64 27)
  %i.fw = xor <2 x i64> %i.fu, %i.fv
  %i.fx = trunc <2 x i64> %i.fw to <2 x i32>      ; 2 uses
  %i.fy = lshr <2 x i64> %i.ft, splat (i64 59)
  %i.fz = trunc nuw nsw <2 x i64> %i.fy to <2 x i32>
  %i.ga = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.fx, <2 x i32> %i.fx, <2 x i32> %i.fz)
  %i.gb = uitofp <2 x i32> %i.ga to <2 x float>
  %i.gc = fmul nnan <2 x float> %i.gb, splat (float f0x2F800000) ; 2 uses
  %i.gd = fcmp olt <2 x float> %i.gc, splat (float f0x3F7FFFFF)
  %i.ge = select <2 x i1> %i.gd, <2 x float> %i.gc, <2 x float> splat (float f0x3F7FFFFF)
end_hunk_0
begin_hunk_1_@_ZN7testing8internal11CmpHelperLEIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.r = load i64, ptr %i.p, align 8, !tbaa !32
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.t = load ptr, ptr %6, align 8, !tbaa !35     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !32
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.aa = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.aa, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !48  ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !32
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #27
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIfdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.u
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !32
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.t
  %.pn = phi { ptr, i32 } [ %i.an, %bb.t ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.ao, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.am, %bb.s ] ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.v
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !32
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt19PiecewiseConstant2DD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.b, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67
  %i.h = shl i64 %i.g, 2
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.d, i64 noundef %i.h, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i unwind label %bb.c, !inline_history !1

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #27
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.o, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !66   ; 2 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i1.i, label %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !67
  %i.t = shl i64 %i.s, 2
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.q, i64 noundef %i.t, i64 noundef 4)
          to label %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit unwind label %bb.e, !inline_history !1

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #27
  unreachable

_ZN4pbrt19PiecewiseConstant1DD2Ev.exit:           ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.aa) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23Image_SampleLinear_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.pbrt::Bounds2.64", align 16 ; 4 uses
  %3 = alloca %"class.pstd::vector.4", align 8    ; 8 uses
  %4 = alloca %"class.pbrt::Image", align 8       ; 7 uses
  %5 = alloca %"class.pstd::vector.4", align 8    ; 8 uses
  %6 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 12 uses
  %7 = alloca %"class.pbrt::PiecewiseConstant2D", align 8 ; 15 uses
  %8 = alloca %"class.pbrt::Array2D", align 8     ; 11 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %10 = alloca %"class.testing::Message", align 8 ; 13 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25 ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %3, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.e
  %i.i = ptrtoaddr ptr %i.gq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25 ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  store i64 %i.k, ptr %5, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %.not.i.not.i = icmp eq i64 %i.gu, 0
  br i1 %.not.i.not.i, label %._crit_edge.i.i69, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = shl i64 %i.gu, 2                         ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %iter.check217, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i: ; preds = %bb.c
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.o, i64 noundef 4)
          to label %.noexc unwind label %bb.y, !inline_history !7 ; 14 uses

.noexc:                                           ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %.pre.i = load i64, ptr %i.n, align 8, !tbaa !64 ; 11 uses
  %.pre.i.pre.i = load ptr, ptr %i.l, align 8, !tbaa !66 ; 14 uses
  %.not13.i.i = icmp eq i64 %.pre.i, 0
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %iter.check183

iter.check183:                                    ; preds = %.noexc
  %.pre.i.pre.i165 = ptrtoaddr ptr %.pre.i.pre.i to i64
  %i.u = ptrtoaddr ptr %i.t to i64
  %min.iters.check166 = icmp ult i64 %.pre.i, 4
  %i.v = sub i64 %.pre.i.pre.i165, %i.u
  %diff.check168 = icmp ugt i64 %i.v, -128
  %or.cond = select i1 %min.iters.check166, i1 true, i1 %diff.check168
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check169

vector.main.loop.iter.check169:                   ; preds = %iter.check183
  %min.iters.check170 = icmp ult i64 %.pre.i, 32
  br i1 %min.iters.check170, label %vec.epilog.ph187, label %vector.ph171

vector.ph171:                                     ; preds = %vector.main.loop.iter.check169
  %i.w = and i64 %.pre.i, 28
  %n.vec172 = and i64 %.pre.i, -32                ; 4 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.ph171, %vector.body173
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next179, %vector.body173 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index174 ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %index174 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %wide.load175 = load <8 x float>, ptr %i.y, align 4, !tbaa !77
  %wide.load176 = load <8 x float>, ptr %i.z, align 4, !tbaa !77
  %wide.load177 = load <8 x float>, ptr %i.aa, align 4, !tbaa !77
  %wide.load178 = load <8 x float>, ptr %i.ab, align 4, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store <8 x float> %wide.load175, ptr %i.x, align 4, !tbaa !77
  store <8 x float> %wide.load176, ptr %i.ac, align 4, !tbaa !77
  store <8 x float> %wide.load177, ptr %i.ad, align 4, !tbaa !77
  store <8 x float> %wide.load178, ptr %i.ae, align 4, !tbaa !77
  %index.next179 = add nuw i64 %index174, 32      ; 2 uses
  %i.af = icmp eq i64 %index.next179, %n.vec172
  br i1 %i.af, label %middle.block180, label %vector.body173, !llvm.loop !449

middle.block180:                                  ; preds = %vector.body173
  %cmp.n181 = icmp eq i64 %.pre.i, %n.vec172
  br i1 %cmp.n181, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check185

vec.epilog.iter.check185:                         ; preds = %middle.block180
  %min.epilog.iters.check186 = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check186, label %.lr.ph.i.i.preheader, label %vec.epilog.ph187, !prof !99

vec.epilog.ph187:                                 ; preds = %vector.main.loop.iter.check169, %vec.epilog.iter.check185
  %vec.epilog.resume.val182 = phi i64 [ %n.vec172, %vec.epilog.iter.check185 ], [ 0, %vector.main.loop.iter.check169 ]
  %n.vec188 = and i64 %.pre.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body189

vec.epilog.vector.body189:                        ; preds = %vec.epilog.vector.body189, %vec.epilog.ph187
  %index190 = phi i64 [ %vec.epilog.resume.val182, %vec.epilog.ph187 ], [ %index.next192, %vec.epilog.vector.body189 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index190
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %index190
  %wide.load191 = load <4 x float>, ptr %i.ah, align 4, !tbaa !77
  store <4 x float> %wide.load191, ptr %i.ag, align 4, !tbaa !77
  %index.next192 = add nuw i64 %index190, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next192, %n.vec188
  br i1 %i.ai, label %vec.epilog.middle.block193, label %vec.epilog.vector.body189, !llvm.loop !450

vec.epilog.middle.block193:                       ; preds = %vec.epilog.vector.body189
  %cmp.n194 = icmp eq i64 %.pre.i, %n.vec188
  br i1 %cmp.n194, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check183, %vec.epilog.iter.check185, %vec.epilog.middle.block193
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check183 ], [ %n.vec172, %vec.epilog.iter.check185 ], [ %n.vec188, %vec.epilog.middle.block193 ] ; 4 uses
  %i.aj = sub i64 %.pre.i, %indvars.iv.i.i.ph
  %xtraiter237 = and i64 %i.aj, 7                 ; 2 uses
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter239 = phi i64 [ %prol.iter239.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.prol
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.i.i.prol
  %i.am = load float, ptr %i.al, align 4, !tbaa !77
  store float %i.am, ptr %i.ak, align 4, !tbaa !77
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter239.next = add i64 %prol.iter239, 1   ; 2 uses
  %prol.iter239.cmp.not = icmp eq i64 %prol.iter239.next, %xtraiter237
  br i1 %prol.iter239.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !451

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.an = sub i64 %indvars.iv.i.i.ph, %.pre.i
  %i.ao = icmp ugt i64 %i.an, -8
  br i1 %i.ao, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.noexc
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.pre.i, null
  br i1 %.not.i.i.i.i.i, label %iter.check217, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block180, %vec.epilog.middle.block193, %._crit_edge.i.i
  %i.ap = load i64, ptr %i.m, align 8, !tbaa !67
  %i.aq = shl i64 %i.ap, 2
  %i.ar = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull %.pre.i.pre.i, i64 noundef %i.aq, i64 noundef 4)
          to label %iter.check217 unwind label %bb.y, !inline_history !7

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.i.i
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !77
  store float %i.ax, ptr %i.av, align 4, !tbaa !77
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i
  %i.ba = load float, ptr %i.az, align 4, !tbaa !77
  store float %i.ba, ptr %i.ay, align 4, !tbaa !77
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.1
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.1
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !77
  store float %i.bd, ptr %i.bb, align 4, !tbaa !77
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.2
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.2
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !77
  store float %i.bg, ptr %i.be, align 4, !tbaa !77
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.3
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.3
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !77
  store float %i.bj, ptr %i.bh, align 4, !tbaa !77
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.4
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !77
  store float %i.bm, ptr %i.bk, align 4, !tbaa !77
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.5
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.5
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !77
  store float %i.bp, ptr %i.bn, align 4, !tbaa !77
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.6
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.6
  %i.bs = load float, ptr %i.br, align 4, !tbaa !77
  store float %i.bs, ptr %i.bq, align 4, !tbaa !77
end_hunk_1
begin_hunk_2_@_ZN23Image_SampleLinear_Test8TestBodyEv:bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 96
  store <8 x float> %wide.load, ptr %i.ev, align 4, !tbaa !77
  store <8 x float> %wide.load154, ptr %i.fa, align 4, !tbaa !77
  store <8 x float> %wide.load155, ptr %i.fb, align 4, !tbaa !77
  store <8 x float> %wide.load156, ptr %i.fc, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !459

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre24.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i64, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i60.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec157 = and i64 %.pre24.i, -4               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index158 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %index158
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index158
  %wide.load159 = load <4 x float>, ptr %i.ff, align 4, !tbaa !77
  store <4 x float> %wide.load159, ptr %i.fe, align 4, !tbaa !77
  %index.next160 = add nuw i64 %index158, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next160, %n.vec157
  br i1 %i.fg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !460

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %.pre24.i, %n.vec157
  br i1 %cmp.n161, label %._crit_edge.thread.i.i64, label %.lr.ph.i.i60.preheader

.lr.ph.i.i60.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i61.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec157, %vec.epilog.middle.block ] ; 4 uses
  %i.fh = sub i64 %.pre24.i, %indvars.iv.i.i61.ph
  %xtraiter = and i64 %i.fh, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i60.prol.loopexit, label %.lr.ph.i.i60.prol

.lr.ph.i.i60.prol:                                ; preds = %.lr.ph.i.i60.preheader, %.lr.ph.i.i60.prol
  %indvars.iv.i.i61.prol = phi i64 [ %indvars.iv.next.i.i62.prol, %.lr.ph.i.i60.prol ], [ %indvars.iv.i.i61.ph, %.lr.ph.i.i60.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i60.prol ], [ 0, %.lr.ph.i.i60.preheader ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i61.prol
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i61.prol
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !77
  store float %i.fk, ptr %i.fi, align 4, !tbaa !77
  %indvars.iv.next.i.i62.prol = add nuw nsw i64 %indvars.iv.i.i61.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i60.prol.loopexit, label %.lr.ph.i.i60.prol, !llvm.loop !461

.lr.ph.i.i60.prol.loopexit:                       ; preds = %.lr.ph.i.i60.prol, %.lr.ph.i.i60.preheader
  %indvars.iv.i.i61.unr = phi i64 [ %indvars.iv.i.i61.ph, %.lr.ph.i.i60.preheader ], [ %indvars.iv.next.i.i62.prol, %.lr.ph.i.i60.prol ]
  %i.fl = sub i64 %indvars.iv.i.i61.ph, %.pre24.i
  %i.fm = icmp ugt i64 %i.fl, -8
  br i1 %i.fm, label %._crit_edge.thread.i.i64, label %.lr.ph.i.i60

._crit_edge.i.i65:                                ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i58
  %.not.i.i.i.i.i66 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i.i.i66, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i, label %._crit_edge.thread.i.i64

._crit_edge.thread.i.i64:                         ; preds = %.lr.ph.i.i60.prol.loopexit, %.lr.ph.i.i60, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i65
  %i.fn = load i64, ptr %i.g, align 8, !tbaa !67
  %i.fo = shl i64 %i.fn, 2
  %i.fp = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  invoke void %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %.pre.i.i, i64 noundef %i.fo, i64 noundef 4)
          to label %.noexc68 unwind label %bb.k, !inline_history !458

.noexc68:                                         ; preds = %._crit_edge.thread.i.i64
  %.pre2.pre.i = load i64, ptr %i.h, align 8, !tbaa !64
  br label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i: ; preds = %.noexc68, %._crit_edge.i.i65
  %.pre2.i = phi i64 [ %.pre2.pre.i, %.noexc68 ], [ 0, %._crit_edge.i.i65 ]
  store i64 %spec.select.i, ptr %i.g, align 8, !tbaa !67
  store ptr %.0.i.i.i.i.i, ptr %i.f, align 8, !tbaa !66
  br label %bb.j

.lr.ph.i.i60:                                     ; preds = %.lr.ph.i.i60.prol.loopexit, %.lr.ph.i.i60
  %indvars.iv.i.i61 = phi i64 [ %indvars.iv.next.i.i62.7, %.lr.ph.i.i60 ], [ %indvars.iv.i.i61.unr, %.lr.ph.i.i60.prol.loopexit ] ; 10 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i61
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i61
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !77
  store float %i.fu, ptr %i.fs, align 4, !tbaa !77
  %indvars.iv.next.i.i62 = add nuw nsw i64 %indvars.iv.i.i61, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i62
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i62
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !77
  store float %i.fx, ptr %i.fv, align 4, !tbaa !77
  %indvars.iv.next.i.i62.1 = add nuw nsw i64 %indvars.iv.i.i61, 2 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i62.1
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i62.1
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !77
  store float %i.ga, ptr %i.fy, align 4, !tbaa !77
  %indvars.iv.next.i.i62.2 = add nuw nsw i64 %indvars.iv.i.i61, 3 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i62.2
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i62.2
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !77
  store float %i.gd, ptr %i.gb, align 4, !tbaa !77
  %indvars.iv.next.i.i62.3 = add nuw nsw i64 %indvars.iv.i.i61, 4 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i62.3
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i62.3
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !77
  store float %i.gg, ptr %i.ge, align 4, !tbaa !77
  %indvars.iv.next.i.i62.4 = add nuw nsw i64 %indvars.iv.i.i61, 5 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i62.4
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i62.4
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !77
  store float %i.gj, ptr %i.gh, align 4, !tbaa !77
  %indvars.iv.next.i.i62.5 = add nuw nsw i64 %indvars.iv.i.i61, 6 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i62.5
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i62.5
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !77
  store float %i.gm, ptr %i.gk, align 4, !tbaa !77
  %indvars.iv.next.i.i62.6 = add nuw nsw i64 %indvars.iv.i.i61, 7 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i62.6
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i62.6
  %i.gp = load float, ptr %i.go, align 4, !tbaa !77
  store float %i.gp, ptr %i.gn, align 4, !tbaa !77
  %indvars.iv.next.i.i62.7 = add nuw nsw i64 %indvars.iv.i.i61, 8 ; 2 uses
  %exitcond.not.i.i63.7 = icmp eq i64 %indvars.iv.next.i.i62.7, %.pre24.i
  br i1 %exitcond.not.i.i63.7, label %._crit_edge.thread.i.i64, label %.lr.ph.i.i60, !llvm.loop !462

bb.j:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i, %bb.g, %bb.f
  %i.gq = phi ptr [ %.0.i.i.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i ], [ %i.ec, %bb.g ], [ %i.ec, %bb.f ] ; 17 uses
  %i.gr = phi i64 [ %spec.select.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i ], [ %i.ed, %bb.g ], [ %i.ee, %bb.f ] ; 3 uses
  %i.gs = phi i64 [ %.pre2.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i ], [ %i.ed, %bb.g ], [ %i.ed, %bb.f ] ; 5 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gs
  store float %i.ej, ptr %i.gt, align 4, !tbaa !77
  %i.gu = add i64 %i.gs, 1                        ; 14 uses
  store i64 %i.gu, ptr %i.h, align 8, !tbaa !64
  %i.gv = add nuw nsw i32 %.038111, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gv, 500
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !463

bb.k:                                             ; preds = %._crit_edge.thread.i.i64, %bb.i
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

._crit_edge.i.i69:                                ; preds = %vec.epilog.scalar.ph218.prol.loopexit, %vec.epilog.scalar.ph218, %middle.block214, %vec.epilog.middle.block227, %bb.b
  store i64 %i.gu, ptr %i.n, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.gx, ptr %6, align 8, !tbaa !31
  store i8 89, ptr %i.gx, align 8, !tbaa !32
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.gy, align 8, !tbaa !34
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.gz, align 1, !tbaa !32
  invoke void @_ZN4pbrt5ImageC1EN4pstd6vectorIfNS1_3pmr21polymorphic_allocatorIfEEEENS_6Point2IiEENS1_4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr nofree noundef nonnull align 8 dereferenceable(32) %5, i64 2147483648500, ptr nonnull %6, i64 1)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %._crit_edge.i.i69
  %i.ha = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !32
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i64 0, ptr %i.n, align 8, !tbaa !64
  %i.hf = load ptr, ptr %i.l, align 8, !tbaa !66  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hg = load i64, ptr %i.m, align 8, !tbaa !67
  %i.hh = shl i64 %i.hg, 2
  %i.hi = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !53
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  invoke void %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef nonnull %i.hf, i64 noundef %i.hh, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.n, !inline_history !1

bb.n:                                             ; preds = %bb.m
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #27
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !467
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2, align 16, !noalias !467
  %i.ho = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25, !noalias !467
  invoke void @_ZN4pbrt5Image23GetSamplingDistributionIZNS0_23GetSamplingDistributionEvEUlNS_6Point2IfEEE_EENS_7Array2DIfEET_RKNS_7Bounds2IfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Array2D") align 8 %8, ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr %i.ho)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !467
  %i.hp = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25
  %i.hq = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !147
  %i.hs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %8, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %.sroa.2.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i to i32
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !103
  %i.hu = sub nsw i32 %i.ht, %.sroa.0.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !105
  %i.hx = sub nsw i32 %i.hw, %.sroa.2.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.hy = mul nsw i32 %i.hx, %i.hu
  %i.hz = sext i32 %i.hy to i64
  invoke void @_ZN4pbrt19PiecewiseConstant2DC2EN4pstd4spanIKfEEiiNS_7Bounds2IfEENS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr %i.hr, i64 %i.hz, i32 noundef %i.hu, i32 noundef %i.hx, <2 x float> zeroinitializer, <2 x float> splat (float 1.000000e+00), ptr %i.hp)
          to label %_ZN4pbrt19PiecewiseConstant2DC2ERKNS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit unwind label %bb.ab

_ZN4pbrt19PiecewiseConstant2DC2ERKNS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit: ; preds = %bb.o
  %i.ia = load ptr, ptr %i.hq, align 8, !tbaa !147 ; 2 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i73, label %_ZN4pbrt7Array2DIfED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4pbrt19PiecewiseConstant2DC2ERKNS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit
  %i.ib = load i32, ptr %i.hv, align 4, !tbaa !105
  %.sroa.0.0.copyload.i.i = load i64, ptr %8, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i to i32
  %i.ic = sub nsw i32 %i.ib, %.sroa.2.0.extract.trunc.i.i.i
  %i.id = load i32, ptr %i.hs, align 8, !tbaa !103
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.ie = sub nsw i32 %i.id, %.sroa.0.0.extract.trunc.i.i.i
  %i.if = mul nsw i32 %i.ic, %i.ie
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ii = shl nsw i64 %i.ig, 2
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !148 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !53
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8
  invoke void %i.im(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef nonnull %i.ia, i64 noundef %i.ii, i64 noundef 4)
          to label %_ZN4pbrt7Array2DIfED2Ev.exit unwind label %bb.q, !inline_history !13

bb.q:                                             ; preds = %bb.p
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  call void @__clang_call_terminate(ptr %i.io) #27
  unreachable

_ZN4pbrt7Array2DIfED2Ev.exit:                     ; preds = %_ZN4pbrt19PiecewiseConstant2DC2ERKNS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  br label %bb.ad

bb.r:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.is = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 104
  store i64 0, ptr %i.it, align 8, !tbaa !64
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.iw = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ix = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !67
  %i.iz = shl i64 %i.iy, 2
  %i.ja = load ptr, ptr %i.iw, align 8, !tbaa !68 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !53
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8
  invoke void %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, ptr noundef nonnull %i.iv, i64 noundef %i.iz, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i unwind label %bb.t, !inline_history !1

bb.t:                                             ; preds = %bb.s
  %i.je = landingpad { ptr, i32 }
          catch ptr null
  %i.jf = extractvalue { ptr, i32 } %i.je, 0
  call void @__clang_call_terminate(ptr %i.jf) #27
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i: ; preds = %bb.s, %bb.r
  %i.jg = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 0, ptr %i.jg, align 8, !tbaa !64
  %i.jh = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !67
  %i.jl = shl i64 %i.jk, 2
  %i.jm = load ptr, ptr %i.is, align 8, !tbaa !68 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !53
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8
  invoke void %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull %i.ji, i64 noundef %i.jl, i64 noundef 4)
          to label %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit unwind label %bb.v, !inline_history !1

bb.v:                                             ; preds = %bb.u
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #27
  unreachable

_ZN4pbrt19PiecewiseConstant2DD2Ev.exit:           ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i, %bb.u
  %i.js = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.js) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  store i64 0, ptr %i.h, align 8, !tbaa !64
  %.not.i.i.i.i74 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i74, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit75, label %bb.w

bb.w:                                             ; preds = %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit
  %i.jt = shl i64 %i.gr, 2
  %i.ju = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8
  invoke void %i.jw(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.gq, i64 noundef %i.jt, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit75 unwind label %bb.x, !inline_history !1

bb.x:                                             ; preds = %bb.w
  %i.jx = landingpad { ptr, i32 }
          catch ptr null
  %i.jy = extractvalue { ptr, i32 } %i.jx, 0
  call void @__clang_call_terminate(ptr %i.jy) #27
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit75: ; preds = %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.y:                                             ; preds = %._crit_edge.thread.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.z:                                             ; preds = %._crit_edge.i.i69
  %i.ka = landingpad { ptr, i32 }
          cleanup
  %i.kb = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.z
  %i.ke = load i64, ptr %i.kc, align 8, !tbaa !32
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.kf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #25
  br label %bb.bg

bb.aa:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.o
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt7Array2DIfED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn42 = phi { ptr, i32 } [ %i.kh, %bb.ab ], [ %i.kg, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bf

bb.ad:                                            ; preds = %_ZN4pbrt7Array2DIfED2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit
  %.0114 = phi i32 [ 0, %_ZN4pbrt7Array2DIfED2Ev.exit ], [ %i.no, %_ZN7testing15AssertionResultD2Ev.exit ]
  %.sroa.092.0113 = phi i64 [ -8846114313915602277, %_ZN4pbrt7Array2DIfED2Ev.exit ], [ %i.kl, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  %i.ki = mul i64 %.sroa.092.0113, 6364136223846793005
  %i.kj = add i64 %i.ki, -2720673578348880933     ; 2 uses
  %i.kk = mul i64 %i.kj, 6364136223846793005
  %i.kl = add i64 %i.kk, -2720673578348880933
  %i.km = insertelement <2 x i64> poison, i64 %.sroa.092.0113, i64 0
  %i.kn = insertelement <2 x i64> %i.km, i64 %i.kj, i64 1 ; 3 uses
  %i.ko = lshr <2 x i64> %i.kn, splat (i64 45)
  %i.kp = lshr <2 x i64> %i.kn, splat (i64 27)
  %i.kq = xor <2 x i64> %i.ko, %i.kp
  %i.kr = trunc <2 x i64> %i.kq to <2 x i32>      ; 2 uses
  %i.ks = lshr <2 x i64> %i.kn, splat (i64 59)
end_hunk_2
begin_hunk_3_@_ZN23Image_SampleLinear_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ly = load ptr, ptr %10, align 8, !tbaa !51
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lz, ptr noundef nonnull @.str.197, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit unwind label %bb.at ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.mb = load ptr, ptr %10, align 8, !tbaa !51
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = fpext float %i.la to double
  %i.me = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.mc, double noundef %i.md)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit unwind label %bb.at ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit
  %i.mf = load ptr, ptr %10, align 8, !tbaa !51
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mg, ptr noundef nonnull @.str.198, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit unwind label %bb.at ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.mi = load ptr, ptr %10, align 8, !tbaa !51
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load float, ptr %i.a, align 4, !tbaa !77
  %i.ml = fpext float %i.mk to double
  %i.mm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.mj, double noundef %i.ml)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit85 unwind label %bb.at ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit85:         ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.mn = load ptr, ptr %i.ir, align 8, !tbaa !48 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i86, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.al

bb.al:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit85
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !35
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.al, %_ZN7testing7MessagelsIfEERS0_RKT_.exit85
  %i.mp = phi ptr [ %i.mo, %bb.al ], [ @.str.253, %_ZN7testing7MessagelsIfEERS0_RKT_.exit85 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef 647, ptr noundef %i.mp)
          to label %bb.am unwind label %bb.au

bb.am:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.an unwind label %bb.av

bb.an:                                            ; preds = %bb.am
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.mq = load ptr, ptr %10, align 8, !tbaa !51
  %.not.i.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mr = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.ar

.noexc.i.i:                                       ; preds = %bb.ao
  br i1 %i.mr, label %bb.ap, label %_ZN7testing7MessageD2Ev.exit

bb.ap:                                            ; preds = %.noexc.i.i
  %i.ms = load ptr, ptr %10, align 8, !tbaa !51   ; 3 uses
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %_ZN7testing7MessageD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mu = load ptr, ptr %i.ms, align 8, !tbaa !53
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(128) %i.ms) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.ar:                                            ; preds = %bb.ao
  %i.mx = landingpad { ptr, i32 }
          catch ptr null
  %i.my = extractvalue { ptr, i32 } %i.mx, 0
  call void @__clang_call_terminate(ptr %i.my) #27
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.an, %.noexc.i.i, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ay

bb.as:                                            ; preds = %bb.ai
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.at:                                            ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.aj
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.am
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn44 = phi { ptr, i32 } [ %i.nc, %bb.av ], [ %i.nb, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body

.body:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %bb.aw
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %bb.aw ], [ %i.na, %bb.at ], [ %i.lt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  br label %bb.ax

bb.ax:                                            ; preds = %.body, %bb.as
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %.body ], [ %i.mz, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  br label %bb.bd

bb.ay:                                            ; preds = %bb.af, %_ZN7testing7MessageD2Ev.exit
  %i.nd = load ptr, ptr %i.ir, align 8, !tbaa !48
  %.not.i.i.i87 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i87, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ne = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i88 unwind label %bb.bc

.noexc.i.i88:                                     ; preds = %bb.az
  br i1 %i.ne, label %bb.ba, label %_ZN7testing15AssertionResultD2Ev.exit

bb.ba:                                            ; preds = %.noexc.i.i88
  %i.nf = load ptr, ptr %i.ir, align 8, !tbaa !48 ; 4 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.nh = load ptr, ptr %i.nf, align 8, !tbaa !35 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 16 ; 2 uses
  %i.nj = icmp eq ptr %i.nh, %i.ni
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bb
  %i.nk = load i64, ptr %i.ni, align 8, !tbaa !32
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nf, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.bc:                                            ; preds = %bb.az
  %i.nm = landingpad { ptr, i32 }
          catch ptr null
  %i.nn = extractvalue { ptr, i32 } %i.nm, 0
  call void @__clang_call_terminate(ptr %i.nn) #27
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ay, %.noexc.i.i88, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.no = add nuw nsw i32 %.0114, 1               ; 2 uses
  %exitcond116.not = icmp eq i32 %i.no, 1000
  br i1 %exitcond116.not, label %bb.r, label %bb.ad, !llvm.loop !466

bb.bd:                                            ; preds = %bb.ax, %bb.ah
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn, %bb.ax ], [ %i.lh, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ag
  %.pn44.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn, %bb.bd ], [ %i.lg, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN4pbrt19PiecewiseConstant2DD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #25
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ac
  %.pn44.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn.pn, %bb.be ], [ %.pn42, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #25
  br label %bb.bg

bb.bg:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %bb.bf
  %.pn44.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn.pn.pn.pn, %bb.bf ], [ %i.ka, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %i.jz, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.k
  %.pn53 = phi { ptr, i32 } [ %i.gw, %bb.k ], [ %.pn44.pn.pn.pn.pn.pn.pn.pn, %bb.bg ]
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn53
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23Image_SampleSinCos_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.pbrt::Bounds2.64", align 16 ; 4 uses
  %3 = alloca %"class.pstd::vector.4", align 8    ; 8 uses
  %4 = alloca %"class.pbrt::Image", align 8       ; 7 uses
  %5 = alloca %"class.pstd::vector.4", align 8    ; 8 uses
  %6 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 12 uses
  %7 = alloca %"class.pbrt::PiecewiseConstant2D", align 8 ; 15 uses
  %8 = alloca %"class.pbrt::Array2D", align 8     ; 11 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %10 = alloca %"class.testing::Message", align 8 ; 13 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25 ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %3, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.e
  %i.i = ptrtoaddr ptr %i.gz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25 ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  store i64 %i.k, ptr %5, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %.not.i.not.i = icmp eq i64 %i.hd, 0
  br i1 %.not.i.not.i, label %._crit_edge.i.i73, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = shl i64 %i.hd, 2                         ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %iter.check226, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i: ; preds = %bb.c
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.o, i64 noundef 4)
          to label %.noexc unwind label %bb.y, !inline_history !7 ; 14 uses

.noexc:                                           ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %.pre.i = load i64, ptr %i.n, align 8, !tbaa !64 ; 11 uses
  %.pre.i.pre.i = load ptr, ptr %i.l, align 8, !tbaa !66 ; 14 uses
  %.not13.i.i = icmp eq i64 %.pre.i, 0
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %iter.check192

iter.check192:                                    ; preds = %.noexc
  %.pre.i.pre.i174 = ptrtoaddr ptr %.pre.i.pre.i to i64
  %i.u = ptrtoaddr ptr %i.t to i64
  %min.iters.check175 = icmp ult i64 %.pre.i, 4
  %i.v = sub i64 %.pre.i.pre.i174, %i.u
  %diff.check177 = icmp ugt i64 %i.v, -128
  %or.cond = select i1 %min.iters.check175, i1 true, i1 %diff.check177
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check178

vector.main.loop.iter.check178:                   ; preds = %iter.check192
  %min.iters.check179 = icmp ult i64 %.pre.i, 32
  br i1 %min.iters.check179, label %vec.epilog.ph196, label %vector.ph180

vector.ph180:                                     ; preds = %vector.main.loop.iter.check178
  %i.w = and i64 %.pre.i, 28
  %n.vec181 = and i64 %.pre.i, -32                ; 4 uses
  br label %vector.body182

vector.body182:                                   ; preds = %vector.ph180, %vector.body182
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body182 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index183 ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %index183 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %wide.load184 = load <8 x float>, ptr %i.y, align 4, !tbaa !77
  %wide.load185 = load <8 x float>, ptr %i.z, align 4, !tbaa !77
  %wide.load186 = load <8 x float>, ptr %i.aa, align 4, !tbaa !77
  %wide.load187 = load <8 x float>, ptr %i.ab, align 4, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store <8 x float> %wide.load184, ptr %i.x, align 4, !tbaa !77
  store <8 x float> %wide.load185, ptr %i.ac, align 4, !tbaa !77
  store <8 x float> %wide.load186, ptr %i.ad, align 4, !tbaa !77
  store <8 x float> %wide.load187, ptr %i.ae, align 4, !tbaa !77
  %index.next188 = add nuw i64 %index183, 32      ; 2 uses
  %i.af = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.af, label %middle.block189, label %vector.body182, !llvm.loop !468

middle.block189:                                  ; preds = %vector.body182
  %cmp.n190 = icmp eq i64 %.pre.i, %n.vec181
  br i1 %cmp.n190, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check194

vec.epilog.iter.check194:                         ; preds = %middle.block189
  %min.epilog.iters.check195 = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check195, label %.lr.ph.i.i.preheader, label %vec.epilog.ph196, !prof !99

vec.epilog.ph196:                                 ; preds = %vector.main.loop.iter.check178, %vec.epilog.iter.check194
  %vec.epilog.resume.val191 = phi i64 [ %n.vec181, %vec.epilog.iter.check194 ], [ 0, %vector.main.loop.iter.check178 ]
  %n.vec197 = and i64 %.pre.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body198

vec.epilog.vector.body198:                        ; preds = %vec.epilog.vector.body198, %vec.epilog.ph196
  %index199 = phi i64 [ %vec.epilog.resume.val191, %vec.epilog.ph196 ], [ %index.next201, %vec.epilog.vector.body198 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index199
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %index199
  %wide.load200 = load <4 x float>, ptr %i.ah, align 4, !tbaa !77
  store <4 x float> %wide.load200, ptr %i.ag, align 4, !tbaa !77
  %index.next201 = add nuw i64 %index199, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next201, %n.vec197
  br i1 %i.ai, label %vec.epilog.middle.block202, label %vec.epilog.vector.body198, !llvm.loop !469

vec.epilog.middle.block202:                       ; preds = %vec.epilog.vector.body198
  %cmp.n203 = icmp eq i64 %.pre.i, %n.vec197
  br i1 %cmp.n203, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check192, %vec.epilog.iter.check194, %vec.epilog.middle.block202
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check192 ], [ %n.vec181, %vec.epilog.iter.check194 ], [ %n.vec197, %vec.epilog.middle.block202 ] ; 4 uses
  %i.aj = sub i64 %.pre.i, %indvars.iv.i.i.ph
  %xtraiter245 = and i64 %i.aj, 7                 ; 2 uses
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter247 = phi i64 [ %prol.iter247.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.prol
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.i.i.prol
  %i.am = load float, ptr %i.al, align 4, !tbaa !77
  store float %i.am, ptr %i.ak, align 4, !tbaa !77
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter247.next = add i64 %prol.iter247, 1   ; 2 uses
  %prol.iter247.cmp.not = icmp eq i64 %prol.iter247.next, %xtraiter245
  br i1 %prol.iter247.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !470

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.an = sub i64 %indvars.iv.i.i.ph, %.pre.i
  %i.ao = icmp ugt i64 %i.an, -8
  br i1 %i.ao, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.noexc
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.pre.i, null
  br i1 %.not.i.i.i.i.i, label %iter.check226, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block189, %vec.epilog.middle.block202, %._crit_edge.i.i
  %i.ap = load i64, ptr %i.m, align 8, !tbaa !67
  %i.aq = shl i64 %i.ap, 2
  %i.ar = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull %.pre.i.pre.i, i64 noundef %i.aq, i64 noundef 4)
          to label %iter.check226 unwind label %bb.y, !inline_history !7

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.i.i
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !77
  store float %i.ax, ptr %i.av, align 4, !tbaa !77
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i
  %i.ba = load float, ptr %i.az, align 4, !tbaa !77
  store float %i.ba, ptr %i.ay, align 4, !tbaa !77
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.1
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.1
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !77
  store float %i.bd, ptr %i.bb, align 4, !tbaa !77
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.2
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.2
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !77
  store float %i.bg, ptr %i.be, align 4, !tbaa !77
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.3
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.3
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !77
  store float %i.bj, ptr %i.bh, align 4, !tbaa !77
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.4
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !77
  store float %i.bm, ptr %i.bk, align 4, !tbaa !77
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.5
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.5
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !77
  store float %i.bp, ptr %i.bn, align 4, !tbaa !77
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.6
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.6
  %i.bs = load float, ptr %i.br, align 4, !tbaa !77
  store float %i.bs, ptr %i.bq, align 4, !tbaa !77
end_hunk_3
begin_hunk_4_@_ZN23Image_SampleSinCos_Test8TestBodyEv:bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 96
  store <8 x float> %wide.load, ptr %i.fe, align 4, !tbaa !77
  store <8 x float> %wide.load163, ptr %i.fj, align 4, !tbaa !77
  store <8 x float> %wide.load164, ptr %i.fk, align 4, !tbaa !77
  store <8 x float> %wide.load165, ptr %i.fl, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !477

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre24.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i68, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i64.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec166 = and i64 %.pre24.i, -4               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index167 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next169, %vec.epilog.vector.body ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %index167
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index167
  %wide.load168 = load <4 x float>, ptr %i.fo, align 4, !tbaa !77
  store <4 x float> %wide.load168, ptr %i.fn, align 4, !tbaa !77
  %index.next169 = add nuw i64 %index167, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next169, %n.vec166
  br i1 %i.fp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !478

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n170 = icmp eq i64 %.pre24.i, %n.vec166
  br i1 %cmp.n170, label %._crit_edge.thread.i.i68, label %.lr.ph.i.i64.preheader

.lr.ph.i.i64.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i65.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec166, %vec.epilog.middle.block ] ; 4 uses
  %i.fq = sub i64 %.pre24.i, %indvars.iv.i.i65.ph
  %xtraiter = and i64 %i.fq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i64.prol.loopexit, label %.lr.ph.i.i64.prol

.lr.ph.i.i64.prol:                                ; preds = %.lr.ph.i.i64.preheader, %.lr.ph.i.i64.prol
  %indvars.iv.i.i65.prol = phi i64 [ %indvars.iv.next.i.i66.prol, %.lr.ph.i.i64.prol ], [ %indvars.iv.i.i65.ph, %.lr.ph.i.i64.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i64.prol ], [ 0, %.lr.ph.i.i64.preheader ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i65.prol
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i65.prol
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !77
  store float %i.ft, ptr %i.fr, align 4, !tbaa !77
  %indvars.iv.next.i.i66.prol = add nuw nsw i64 %indvars.iv.i.i65.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i64.prol.loopexit, label %.lr.ph.i.i64.prol, !llvm.loop !479

.lr.ph.i.i64.prol.loopexit:                       ; preds = %.lr.ph.i.i64.prol, %.lr.ph.i.i64.preheader
  %indvars.iv.i.i65.unr = phi i64 [ %indvars.iv.i.i65.ph, %.lr.ph.i.i64.preheader ], [ %indvars.iv.next.i.i66.prol, %.lr.ph.i.i64.prol ]
  %i.fu = sub i64 %indvars.iv.i.i65.ph, %.pre24.i
  %i.fv = icmp ugt i64 %i.fu, -8
  br i1 %i.fv, label %._crit_edge.thread.i.i68, label %.lr.ph.i.i64

._crit_edge.i.i69:                                ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i62
  %.not.i.i.i.i.i70 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i.i.i70, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i, label %._crit_edge.thread.i.i68

._crit_edge.thread.i.i68:                         ; preds = %.lr.ph.i.i64.prol.loopexit, %.lr.ph.i.i64, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i69
  %i.fw = load i64, ptr %i.g, align 8, !tbaa !67
  %i.fx = shl i64 %i.fw, 2
  %i.fy = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  invoke void %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %.pre.i.i, i64 noundef %i.fx, i64 noundef 4)
          to label %.noexc72 unwind label %bb.k, !inline_history !4

.noexc72:                                         ; preds = %._crit_edge.thread.i.i68
  %.pre2.pre.i = load i64, ptr %i.h, align 8, !tbaa !64
  br label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i: ; preds = %.noexc72, %._crit_edge.i.i69
  %.pre2.i = phi i64 [ %.pre2.pre.i, %.noexc72 ], [ 0, %._crit_edge.i.i69 ]
  store i64 %spec.select.i, ptr %i.g, align 8, !tbaa !67
  store ptr %.0.i.i.i.i.i, ptr %i.f, align 8, !tbaa !66
  br label %bb.j

.lr.ph.i.i64:                                     ; preds = %.lr.ph.i.i64.prol.loopexit, %.lr.ph.i.i64
  %indvars.iv.i.i65 = phi i64 [ %indvars.iv.next.i.i66.7, %.lr.ph.i.i64 ], [ %indvars.iv.i.i65.unr, %.lr.ph.i.i64.prol.loopexit ] ; 10 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i65
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i65
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !77
  store float %i.gd, ptr %i.gb, align 4, !tbaa !77
  %indvars.iv.next.i.i66 = add nuw nsw i64 %indvars.iv.i.i65, 1 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i66
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i66
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !77
  store float %i.gg, ptr %i.ge, align 4, !tbaa !77
  %indvars.iv.next.i.i66.1 = add nuw nsw i64 %indvars.iv.i.i65, 2 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i66.1
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i66.1
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !77
  store float %i.gj, ptr %i.gh, align 4, !tbaa !77
  %indvars.iv.next.i.i66.2 = add nuw nsw i64 %indvars.iv.i.i65, 3 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i66.2
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i66.2
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !77
  store float %i.gm, ptr %i.gk, align 4, !tbaa !77
  %indvars.iv.next.i.i66.3 = add nuw nsw i64 %indvars.iv.i.i65, 4 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i66.3
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i66.3
  %i.gp = load float, ptr %i.go, align 4, !tbaa !77
  store float %i.gp, ptr %i.gn, align 4, !tbaa !77
  %indvars.iv.next.i.i66.4 = add nuw nsw i64 %indvars.iv.i.i65, 5 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i66.4
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i66.4
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !77
  store float %i.gs, ptr %i.gq, align 4, !tbaa !77
  %indvars.iv.next.i.i66.5 = add nuw nsw i64 %indvars.iv.i.i65, 6 ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i66.5
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i66.5
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !77
  store float %i.gv, ptr %i.gt, align 4, !tbaa !77
  %indvars.iv.next.i.i66.6 = add nuw nsw i64 %indvars.iv.i.i65, 7 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i66.6
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i66.6
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !77
  store float %i.gy, ptr %i.gw, align 4, !tbaa !77
  %indvars.iv.next.i.i66.7 = add nuw nsw i64 %indvars.iv.i.i65, 8 ; 2 uses
  %exitcond.not.i.i67.7 = icmp eq i64 %indvars.iv.next.i.i66.7, %.pre24.i
  br i1 %exitcond.not.i.i67.7, label %._crit_edge.thread.i.i68, label %.lr.ph.i.i64, !llvm.loop !480

bb.j:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i, %bb.g, %bb.f
  %i.gz = phi ptr [ %.0.i.i.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i ], [ %i.ee, %bb.g ], [ %i.ee, %bb.f ] ; 17 uses
  %i.ha = phi i64 [ %spec.select.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i ], [ %i.ef, %bb.g ], [ %i.eg, %bb.f ] ; 3 uses
  %i.hb = phi i64 [ %.pre2.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i ], [ %i.ef, %bb.g ], [ %i.ef, %bb.f ] ; 5 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hb
  store float %i.es, ptr %i.hc, align 4, !tbaa !77
  %i.hd = add i64 %i.hb, 1                        ; 14 uses
  store i64 %i.hd, ptr %i.h, align 8, !tbaa !64
  %i.he = add nuw nsw i32 %.041120, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.he, 500
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !481

bb.k:                                             ; preds = %._crit_edge.thread.i.i68, %bb.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

._crit_edge.i.i73:                                ; preds = %vec.epilog.scalar.ph227.prol.loopexit, %vec.epilog.scalar.ph227, %middle.block223, %vec.epilog.middle.block236, %bb.b
  store i64 %i.hd, ptr %i.n, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.hg, ptr %6, align 8, !tbaa !31
  store i8 89, ptr %i.hg, align 8, !tbaa !32
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.hh, align 8, !tbaa !34
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.hi, align 1, !tbaa !32
  invoke void @_ZN4pbrt5ImageC1EN4pstd6vectorIfNS1_3pmr21polymorphic_allocatorIfEEEENS_6Point2IiEENS1_4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr nofree noundef nonnull align 8 dereferenceable(32) %5, i64 2147483648500, ptr nonnull %6, i64 1)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %._crit_edge.i.i73
  %i.hj = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !32
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i64 0, ptr %i.n, align 8, !tbaa !64
  %i.ho = load ptr, ptr %i.l, align 8, !tbaa !66  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hp = load i64, ptr %i.m, align 8, !tbaa !67
  %i.hq = shl i64 %i.hp, 2
  %i.hr = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !53
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8
  invoke void %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef nonnull %i.ho, i64 noundef %i.hq, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.n, !inline_history !1

bb.n:                                             ; preds = %bb.m
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #27
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !485
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2, align 16, !noalias !485
  %i.hx = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25, !noalias !485
  invoke void @_ZN4pbrt5Image23GetSamplingDistributionIZNS0_23GetSamplingDistributionEvEUlNS_6Point2IfEEE_EENS_7Array2DIfEET_RKNS_7Bounds2IfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Array2D") align 8 %8, ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr %i.hx)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !485
  %i.hy = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !147
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %8, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %.sroa.2.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i to i32
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !103
  %i.id = sub nsw i32 %i.ic, %.sroa.0.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !105
  %i.ig = sub nsw i32 %i.if, %.sroa.2.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.ih = mul nsw i32 %i.ig, %i.id
  %i.ii = sext i32 %i.ih to i64
  invoke void @_ZN4pbrt19PiecewiseConstant2DC2EN4pstd4spanIKfEEiiNS_7Bounds2IfEENS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr %i.ia, i64 %i.ii, i32 noundef %i.id, i32 noundef %i.ig, <2 x float> zeroinitializer, <2 x float> splat (float 1.000000e+00), ptr %i.hy)
          to label %_ZN4pbrt19PiecewiseConstant2DC2ERKNS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit unwind label %bb.ab

_ZN4pbrt19PiecewiseConstant2DC2ERKNS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit: ; preds = %bb.o
  %i.ij = load ptr, ptr %i.hz, align 8, !tbaa !147 ; 2 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i.i77, label %_ZN4pbrt7Array2DIfED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4pbrt19PiecewiseConstant2DC2ERKNS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit
  %i.ik = load i32, ptr %i.ie, align 4, !tbaa !105
  %.sroa.0.0.copyload.i.i = load i64, ptr %8, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i to i32
  %i.il = sub nsw i32 %i.ik, %.sroa.2.0.extract.trunc.i.i.i
  %i.im = load i32, ptr %i.ib, align 8, !tbaa !103
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.in = sub nsw i32 %i.im, %.sroa.0.0.extract.trunc.i.i.i
  %i.io = mul nsw i32 %i.il, %i.in
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ir = shl nsw i64 %i.ip, 2
  %i.is = load ptr, ptr %i.iq, align 8, !tbaa !148 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !53
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  invoke void %i.iv(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef nonnull %i.ij, i64 noundef %i.ir, i64 noundef 4)
          to label %_ZN4pbrt7Array2DIfED2Ev.exit unwind label %bb.q, !inline_history !13

bb.q:                                             ; preds = %bb.p
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #27
  unreachable

_ZN4pbrt7Array2DIfED2Ev.exit:                     ; preds = %_ZN4pbrt19PiecewiseConstant2DC2ERKNS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  br label %bb.ad

bb.r:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 104
  store i64 0, ptr %i.jc, align 8, !tbaa !64
  %i.jd = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jf = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.jg = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !67
  %i.ji = shl i64 %i.jh, 2
  %i.jj = load ptr, ptr %i.jf, align 8, !tbaa !68 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !53
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8
  invoke void %i.jm(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef nonnull %i.je, i64 noundef %i.ji, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i unwind label %bb.t, !inline_history !1

bb.t:                                             ; preds = %bb.s
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #27
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i: ; preds = %bb.s, %bb.r
  %i.jp = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 0, ptr %i.jp, align 8, !tbaa !64
  %i.jq = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !67
  %i.ju = shl i64 %i.jt, 2
  %i.jv = load ptr, ptr %i.jb, align 8, !tbaa !68 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !53
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8
  invoke void %i.jy(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef nonnull %i.jr, i64 noundef %i.ju, i64 noundef 4)
          to label %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit unwind label %bb.v, !inline_history !1

bb.v:                                             ; preds = %bb.u
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #27
  unreachable

_ZN4pbrt19PiecewiseConstant2DD2Ev.exit:           ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i, %bb.u
  %i.kb = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.kb) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  store i64 0, ptr %i.h, align 8, !tbaa !64
  %.not.i.i.i.i78 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i78, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit79, label %bb.w

bb.w:                                             ; preds = %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit
  %i.kc = shl i64 %i.ha, 2
  %i.kd = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8
  invoke void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.gz, i64 noundef %i.kc, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit79 unwind label %bb.x, !inline_history !1

bb.x:                                             ; preds = %bb.w
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  call void @__clang_call_terminate(ptr %i.kh) #27
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit79: ; preds = %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.y:                                             ; preds = %._crit_edge.thread.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.z:                                             ; preds = %._crit_edge.i.i73
  %i.kj = landingpad { ptr, i32 }
          cleanup
  %i.kk = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.z
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #25
  br label %bb.bg

bb.aa:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.o
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt7Array2DIfED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn45 = phi { ptr, i32 } [ %i.kq, %bb.ab ], [ %i.kp, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bf

bb.ad:                                            ; preds = %_ZN4pbrt7Array2DIfED2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit
  %.0123 = phi i32 [ 0, %_ZN4pbrt7Array2DIfED2Ev.exit ], [ %i.oh, %_ZN7testing15AssertionResultD2Ev.exit ]
  %.sroa.098.0122 = phi i64 [ -8846114313915602277, %_ZN4pbrt7Array2DIfED2Ev.exit ], [ %i.ku, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  %i.kr = mul i64 %.sroa.098.0122, 6364136223846793005
  %i.ks = add i64 %i.kr, -2720673578348880933     ; 2 uses
  %i.kt = mul i64 %i.ks, 6364136223846793005
  %i.ku = add i64 %i.kt, -2720673578348880933
  %i.kv = insertelement <2 x i64> poison, i64 %.sroa.098.0122, i64 0
  %i.kw = insertelement <2 x i64> %i.kv, i64 %i.ks, i64 1 ; 3 uses
  %i.kx = lshr <2 x i64> %i.kw, splat (i64 45)
  %i.ky = lshr <2 x i64> %i.kw, splat (i64 27)
  %i.kz = xor <2 x i64> %i.kx, %i.ky
  %i.la = trunc <2 x i64> %i.kz to <2 x i32>      ; 2 uses
  %i.lb = lshr <2 x i64> %i.kw, splat (i64 59)
end_hunk_4
