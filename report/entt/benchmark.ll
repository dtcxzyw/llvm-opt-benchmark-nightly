Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/benchmark?download=true
inline.NumInlined: 13778
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN24Benchmark_SortMulti_Test8TestBodyEv:bb.a
  %exitcond.not = icmp eq i64 %i.fx, 150000
  br i1 %exitcond.not, label %bb.e, label %bb.n, !llvm.loop !1968

.loopexit34:                                      ; preds = %.lr.ph.i.i.i14
  %lpad.loopexit36 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp35

.loopexit.split-lp35.loopexit:                    ; preds = %.lr.ph.i.i.i7
  %lpad.loopexit40 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp35

.loopexit.split-lp35.loopexit.split-lp:           ; preds = %.noexc17, %.loopexit43, %.noexc9, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit, %bb.n
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp35

"_ZN4entt14basic_registryINS_6entityESaIS1_EE4sortI8positionZN24Benchmark_SortMulti_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_.exit": ; preds = %._crit_edge.i.i.i, %"_ZNK4entt8std_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZN24Benchmark_SortMulti_Test8TestBodyEvE3$_0S0_JEEEvT0_T1_DpOT2_EUlT_SA_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorSO_EEvSB_T2_SF_DpOT0_.exit.thread.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.fy = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  store i64 %i.fy, ptr %1, align 8
  %i.fz = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedE8positionEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %9, i32 noundef -1823519222)
          to label %.noexc20 unwind label %.loopexit.split-lp ; 2 uses

.noexc20:                                         ; preds = %"_ZN4entt14basic_registryINS_6entityESaIS1_EE4sortI8positionZN24Benchmark_SortMulti_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT0_T1_DpOT2_.exit"
  %i.ga = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedE8velocityEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %9, i32 noundef 846470194)
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %.noexc20
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 32 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !241
  %i.ge = load ptr, ptr %i.gb, align 8, !tbaa !242
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = ashr exact i64 %i.gh, 2
  %i.gj = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7sort_asITkSt14input_iteratorNS_8internal19sparse_set_iteratorISt6vectorIS1_S2_EEEEES9_T_SA_(ptr noundef nonnull align 8 dereferenceable(80) %i.ga, ptr nonnull %i.gb, i64 %i.gi, ptr nonnull %i.gb, i64 0)
          to label %.noexc22 unwind label %.loopexit.split-lp ; 0 uses

.noexc22:                                         ; preds = %.noexc21
  invoke void @_ZN5timer7elapsedEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.o unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  ret void

.loopexit.split-lp35:                             ; preds = %.loopexit34, %.loopexit.split-lp35.loopexit.split-lp, %.loopexit.split-lp35.loopexit, %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit36, %.loopexit34 ], [ %lpad.loopexit40, %.loopexit.split-lp35.loopexit ], [ %lpad.loopexit.split-lp41, %.loopexit.split-lp35.loopexit.split-lp ]
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.position, align 8           ; 13 uses
  %2 = alloca %"class.std::reverse_iterator.1244", align 8 ; 4 uses
  %3 = alloca %"class.std::reverse_iterator.1244", align 8 ; 4 uses
  %4 = alloca %"class.std::reverse_iterator.1244", align 8 ; 5 uses
  %5 = alloca %"class.std::reverse_iterator.1244", align 8 ; 5 uses
  %6 = alloca %struct.timer, align 8              ; 4 uses
  %7 = alloca %struct.position, align 8           ; 5 uses
  %8 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %9 = alloca %"class.entt::basic_registry", align 8 ; 15 uses
  %i.a = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(336) %9, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.188, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = load ptr, ptr @_ZSt4cout, align 8, !tbaa !151
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170  ; 6 uses
  %.not.i.i.i32 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i32, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.b
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i8, ptr %i.i, align 8, !tbaa !176
  %.not.i1.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 67
  %i.l = load i8, ptr %i.k, align 1, !tbaa !177
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.h)
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.d
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(570) %i.h, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc34, %bb.c
  %.0.i.i.i = phi i8 [ %i.l, %bb.c ], [ %i.p, %.noexc34 ]
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZNSolsEPFRSoS_E.exit.preheader unwind label %.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit.preheader:                  ; preds = %.noexc36
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.e

.preheader:                                       ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !216
  %i.w = invoke noundef zeroext i16 @_ZN4entt14basic_registryINS_6entityESaIS1_EE7destroyES1_(ptr noundef nonnull align 8 dereferenceable(336) %9, i32 noundef %i.v)
          to label %bb.o unwind label %bb.r       ; 0 uses

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit43

.loopexit.split-lp:                               ; preds = %bb.a, %.loopexit48.2, %"_ZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEv.exit.i", %bb.b, %bb.d, %.noexc34, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc36
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit43

bb.e:                                             ; preds = %_ZNSolsEPFRSoS_E.exit.preheader, %_ZNSolsEPFRSoS_E.exit
  %storemerge57 = phi i64 [ 0, %_ZNSolsEPFRSoS_E.exit.preheader ], [ %i.ar, %_ZNSolsEPFRSoS_E.exit ] ; 5 uses
  %i.x = invoke noundef i32 @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEE8generateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.s)
          to label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit unwind label %.loopexit.split-lp50 ; 3 uses

_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit: ; preds = %bb.e
  %i.y = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedE8positionEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %9, i32 noundef -1823519222)
          to label %.noexc unwind label %.loopexit.split-lp50 ; 4 uses

.noexc:                                           ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 %storemerge57, ptr %7, align 8, !tbaa !270
  store i64 %storemerge57, ptr %i.t, align 8, !tbaa !274
  %i.z = invoke { ptr, i64 } @_ZN4entt13basic_storageI8positionNS_6entityESaIS1_EE15emplace_elementIJS1_EEEDaS2_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.y, i32 noundef %i.x, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc17 unwind label %.loopexit.split-lp50 ; 0 uses

.noexc17:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 112 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !231
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !217 ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !218 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not5.i.i.i, label %.loopexit54, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.noexc17
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc18, %.lr.ph.preheader.i.i.i
  %.06.i.i.i = phi i64 [ %i.ak, %.noexc18 ], [ %i.aj, %.lr.ph.preheader.i.i.i ]
  %i.ak = add i64 %.06.i.i.i, -1                  ; 3 uses
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !218
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !220
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !221
  invoke void %i.ao(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(336) %i.ac, i32 noundef %i.x)
          to label %.noexc18 unwind label %.loopexit49, !inline_history !32

.noexc18:                                         ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %.loopexit54, label %.lr.ph.i.i.i, !llvm.loop !5

.loopexit54:                                      ; preds = %.noexc18, %.noexc17
  %i.aq = urem i64 %storemerge57, 50000
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.f, label %_ZNSolsEPFRSoS_E.exit

bb.f:                                             ; preds = %.loopexit54
  %10 = udiv exact i64 %storemerge57, 12500
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 %10
  store i32 %i.x, ptr %11, align 4, !tbaa !216
  br label %_ZNSolsEPFRSoS_E.exit

.loopexit49:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit51 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit43

.loopexit.split-lp50:                             ; preds = %bb.e, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit, %.noexc
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit43

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.f, %.loopexit54
  %i.ar = add nuw nsw i64 %storemerge57, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, 150000
  br i1 %exitcond.not, label %.preheader, label %bb.e, !llvm.loop !1970

.noexc19:                                         ; preds = %.loopexit48.2
  %i.as = getelementptr inbounds nuw i8, ptr %i.hv, i64 64
  %i.at = load i8, ptr %i.as, align 8, !tbaa !246
  %i.au = icmp eq i8 %i.at, 2
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc19
  %i.av = getelementptr inbounds nuw i8, ptr %i.hv, i64 72
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !247
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !244, !noalias !1977
  br label %bb.i

bb.h:                                             ; preds = %.noexc19
  %i.ax = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !241
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !242 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ba, %bb.h ] ; 4 uses
  %i.bg = phi i64 [ %i.aw, %bb.g ], [ %i.be, %bb.h ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.hv, i64 32 ; 2 uses
  %.idx.i.i.i.i.i = shl nsw i64 %i.bg, 2
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 %.idx.i.i.i.i.i ; 2 uses
  %i.bj = ptrtoint ptr %i.bi to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bk = icmp eq i64 %i.bg, 0
  br i1 %i.bk, label %"_ZNK4entt8std_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_S0_JEEEvSD_T1_DpOT2_EUlSA_SD_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorST_EEvSH_T2_SA_DpOT0_.exit.thread.i.i.i.i.i", label %bb.j

"_ZNK4entt8std_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_S0_JEEEvSD_T1_DpOT2_EUlSA_SD_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorST_EEvSH_T2_SA_DpOT0_.exit.thread.i.i.i.i.i": ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEv.exit.i"

bb.j:                                             ; preds = %bb.i
  %i.bl = ptrtoint ptr %i.bf to i64
  store i64 %i.bj, ptr %4, align 8, !tbaa !244
  store i64 %i.bl, ptr %5, align 8, !tbaa !244
  %i.bm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bn = shl nuw nsw i64 %i.bm, 1
  %i.bo = sub nuw nsw i64 126, %i.bn
  call fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_NS3_8std_sortEJEEEvSM_T1_DpOT2_EUlSJ_SM_E_EEEvSJ_SJ_SM_SR_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %5, i64 noundef %i.bo, ptr nonnull readonly %i.hv)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bp = icmp sgt i64 %i.bg, 16
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4entt8std_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_S0_JEEEvSD_T1_DpOT2_EUlSA_SD_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorST_EEvSH_T2_SA_DpOT0_.exit.thread35.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.j
  store i64 %i.bj, ptr %2, align 8, !tbaa !244
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 -64 ; 2 uses
  call fastcc void @"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_NS3_8std_sortEJEEEvSM_T1_DpOT2_EUlSJ_SM_E_EEEvSJ_SJ_SM_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nonnull %i.bq, ptr nonnull readonly %i.hv)
  %i.br = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.hv, i64 80
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !243 ; 3 uses
  %.val.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !266 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNS3_14basic_registryIS4_S7_E4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_NS3_8std_sortEJEEEvSM_T1_DpOT2_EUlSJ_SM_E_EEEvSJ_SM_.exit.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.03.04.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.bt, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNS3_14basic_registryIS4_S7_E4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_NS3_8std_sortEJEEEvSM_T1_DpOT2_EUlSJ_SM_E_EEEvSJ_SM_.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.sroa.03.04.i.i.i.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !216 ; 2 uses
  %i.bv = and i32 %i.bu, 1048575
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = lshr i64 %i.bw, 12
  %i.by = and i64 %i.bw, 4095
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !244
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.by
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.cc = phi ptr [ %.sroa.03.04.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 4 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !216 ; 2 uses
  %i.ce = load i32, ptr %i.cb, align 4, !tbaa !216
  %i.cf = and i32 %i.ce, 1048575
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = lshr i64 %i.cg, 10
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val.val3.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !268
  %i.ck = and i64 %i.cg, 1023
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cm = and i32 %i.cd, 1048575
  %i.cn = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.co = lshr i64 %i.cn, 12
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !244
  %i.cr = and i64 %i.cn, 4095
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !216
  %i.cu = and i32 %i.ct, 1048575
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cw = lshr i64 %i.cv, 10
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val.val3.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !268
  %i.cz = and i64 %i.cv, 1023
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cz ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cl, align 8, !tbaa !270
  %i.db = getelementptr i8, ptr %i.cl, i64 8
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.db, align 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.da, align 8, !tbaa !270
  %i.dc = getelementptr i8, ptr %i.da, i64 8
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dc, align 8
  %i.dd = icmp ugt i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.de = icmp ugt i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.df = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %i.df, label %bb.m, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNS3_14basic_registryIS4_S7_E4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_NS3_8std_sortEJEEEvSM_T1_DpOT2_EUlSJ_SM_E_EEEvSJ_SM_.exit.i.i.i.i.i.i.i.i.i.i"

bb.m:                                             ; preds = %bb.l
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.dg = getelementptr inbounds i8, ptr %i.cc, i64 -4
  store i32 %i.cd, ptr %i.dg, align 4, !tbaa !216
  br label %bb.l, !llvm.loop !34

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNS3_14basic_registryIS4_S7_E4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_NS3_8std_sortEJEEEvSM_T1_DpOT2_EUlSJ_SM_E_EEEvSJ_SM_.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.l
  %i.dh = getelementptr inbounds i8, ptr %i.cc, i64 -4
  store i32 %i.bu, ptr %i.dh, align 4, !tbaa !216
  %i.di = icmp eq ptr %i.bt, %i.bf
  br i1 %i.di, label %.lr.ph28.i.i.i.i.i, label %bb.k, !llvm.loop !1973

"_ZNK4entt8std_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_S0_JEEEvSD_T1_DpOT2_EUlSA_SD_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorST_EEvSH_T2_SA_DpOT0_.exit.thread35.i.i.i.i.i": ; preds = %bb.j
  store i64 %i.bj, ptr %3, align 8, !tbaa !244
  call fastcc void @"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_NS3_8std_sortEJEEEvSM_T1_DpOT2_EUlSJ_SM_E_EEEvSJ_SJ_SM_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %i.bf, ptr nonnull readonly %i.hv)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %.pre31.i.i.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !243
  br label %.lr.ph28.i.i.i.i.i

.lr.ph28.i.i.i.i.i:                               ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNS3_14basic_registryIS4_S7_E4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_NS3_8std_sortEJEEEvSM_T1_DpOT2_EUlSJ_SM_E_EEEvSJ_SM_.exit.i.i.i.i.i.i.i.i.i.i", %"_ZNK4entt8std_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_S0_JEEEvSD_T1_DpOT2_EUlSA_SD_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorST_EEvSH_T2_SA_DpOT0_.exit.thread35.i.i.i.i.i"
  %.pre31.i.i.i.i.i = phi ptr [ %.pre31.i.i.pre.i.i.i, %"_ZNK4entt8std_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_S0_JEEEvSD_T1_DpOT2_EUlSA_SD_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorST_EEvSH_T2_SA_DpOT0_.exit.thread35.i.i.i.i.i" ], [ %.val.val.i.i.i.i.i.i.i.i.i.i.i, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZNS3_14basic_registryIS4_S7_E4sortI8positionZZN34Benchmark_AlmostSortedStdSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_NS3_8std_sortEJEEEvSM_T1_DpOT2_EUlSJ_SM_E_EEEvSJ_SM_.exit.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %.pre.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !242
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i, %.lr.ph28.i.i.i.i.i
  %i.dk = phi ptr [ %.pre31.i.i.i.i.i, %.lr.ph28.i.i.i.i.i ], [ %i.fg, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.dl = phi ptr [ %.pre.i.i.i.i.i, %.lr.ph28.i.i.i.i.i ], [ %i.fh, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.027.i.i.i.i.i = phi i64 [ 0, %.lr.ph28.i.i.i.i.i ], [ %i.fi, %._crit_edge.i.i.i.i.i ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.027.i.i.i.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !216
  %i.do = and i32 %i.dn, 1048575
  %i.dp = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dq = lshr i64 %i.dp, 12
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !244
  %i.dt = and i64 %i.dp, 4095
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !216
  %i.dw = and i32 %i.dv, 1048575
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %.not24.i.i.i.i.i = icmp eq i64 %.027.i.i.i.i.i, %i.dx
  br i1 %.not24.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %.noexc20
  %i.dy = phi ptr [ %i.fb, %.noexc20 ], [ %i.dk, %bb.n ]
  %i.dz = phi ptr [ %i.es, %.noexc20 ], [ %i.dl, %bb.n ] ; 2 uses
  %.01426.i.i.i.i.i = phi i64 [ %.02325.i.i.i.i.i, %.noexc20 ], [ %.027.i.i.i.i.i, %bb.n ] ; 3 uses
  %.02325.i.i.i.i.i = phi i64 [ %i.el, %.noexc20 ], [ %i.dx, %bb.n ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.02325.i.i.i.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !216
  %i.ec = and i32 %i.eb, 1048575
  %i.ed = zext nneg i32 %i.ec to i64              ; 2 uses
  %i.ee = lshr i64 %i.ed, 12
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !244
  %i.eh = and i64 %i.ed, 4095
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !216
  %i.ek = and i32 %i.ej, 1048575
  %i.el = zext nneg i32 %i.ek to i64              ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.01426.i.i.i.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !216
  %i.eo = load ptr, ptr %i.hv, align 8, !tbaa !151
end_hunk_0
begin_hunk_1_@_ZN4entt14basic_registryINS_6entityESaIS1_EE7destroyES1_:bb.a
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE10sparse_ptrES1_.exit.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE10sparse_ptrES1_.exit.i: ; preds = %bb.b
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.pre-phi13
  %i.am = load i32, ptr %i.al, align 4, !tbaa !216
  %i.an = lshr i32 %i.am, 20
  %i.ao = trunc nuw nsw i32 %i.an to i16
  br label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit: ; preds = %._crit_edge, %bb.b, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE10sparse_ptrES1_.exit.i
  %i.ap = phi i16 [ %i.ao, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE10sparse_ptrES1_.exit.i ], [ 4095, %._crit_edge ], [ 4095, %bb.b ]
  ret i16 %i.ap

bb.c:                                             ; preds = %.lr.ph, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit
  %.07 = phi i64 [ %i.h, %.lr.ph ], [ %i.ar, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit ]
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !259
  %i.ar = add i64 %.07, -1                        ; 3 uses
  %i.as = getelementptr inbounds [32 x i8], ptr %i.aq, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !265 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !245
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !243 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = icmp ult i64 %i.k, %i.bc
  br i1 %i.bd, label %bb.d, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit

bb.d:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.k
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i: ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.l
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !216 ; 2 uses
  %i.bi = xor i32 %i.bh, %i.m
  %i.bj = icmp ult i32 %i.bi, 1048575
  br i1 %i.bj, label %bb.e, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit

bb.e:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.bl = and i32 %i.bh, 1048575                  ; 2 uses
  %narrow.i.i.i = add nuw nsw i32 %i.bl, 1
  %i.bm = zext nneg i32 %narrow.i.i.i to i64
  %i.bn = zext nneg i32 %i.bl to i64
  %i.bo = load ptr, ptr %i.au, align 8, !tbaa !151
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr nonnull %i.bk, i64 %i.bm, ptr nonnull %i.bk, i64 %i.bn), !inline_history !1979
  br label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6removeES1_.exit: ; preds = %bb.c, %bb.d, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i, %bb.e
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !29
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN40Benchmark_AlmostSortedInsertionSort_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.position, align 8           ; 13 uses
  %2 = alloca %struct.timer, align 8              ; 4 uses
  %3 = alloca %struct.position, align 8           ; 5 uses
  %4 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %5 = alloca %"class.entt::basic_registry", align 8 ; 15 uses
  %i.a = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(336) %5, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.191, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = load ptr, ptr @_ZSt4cout, align 8, !tbaa !151
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170  ; 6 uses
  %.not.i.i.i32 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i32, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.b
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i8, ptr %i.i, align 8, !tbaa !176
  %.not.i1.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 67
  %i.l = load i8, ptr %i.k, align 1, !tbaa !177
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.h)
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.d
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(570) %i.h, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc34, %bb.c
  %.0.i.i.i = phi i8 [ %i.l, %bb.c ], [ %i.p, %.noexc34 ]
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZNSolsEPFRSoS_E.exit.preheader unwind label %.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit.preheader:                  ; preds = %.noexc36
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.e

.preheader:                                       ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !216
  %i.w = invoke noundef zeroext i16 @_ZN4entt14basic_registryINS_6entityESaIS1_EE7destroyES1_(ptr noundef nonnull align 8 dereferenceable(336) %5, i32 noundef %i.v)
          to label %bb.m unwind label %bb.p       ; 0 uses

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit43

.loopexit.split-lp:                               ; preds = %bb.a, %.loopexit48.2, %"_ZZN40Benchmark_AlmostSortedInsertionSort_Test8TestBodyEvENK3$_0clEv.exit.i", %bb.b, %bb.d, %.noexc34, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc36
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit43

bb.e:                                             ; preds = %_ZNSolsEPFRSoS_E.exit.preheader, %_ZNSolsEPFRSoS_E.exit
  %storemerge56 = phi i64 [ 0, %_ZNSolsEPFRSoS_E.exit.preheader ], [ %i.ar, %_ZNSolsEPFRSoS_E.exit ] ; 5 uses
  %i.x = invoke noundef i32 @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEE8generateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.s)
          to label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit unwind label %.loopexit.split-lp50 ; 3 uses

_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit: ; preds = %bb.e
  %i.y = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedE8positionEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %5, i32 noundef -1823519222)
          to label %.noexc unwind label %.loopexit.split-lp50 ; 4 uses

.noexc:                                           ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %storemerge56, ptr %3, align 8, !tbaa !270
  store i64 %storemerge56, ptr %i.t, align 8, !tbaa !274
  %i.z = invoke { ptr, i64 } @_ZN4entt13basic_storageI8positionNS_6entityESaIS1_EE15emplace_elementIJS1_EEEDaS2_bDpOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.y, i32 noundef %i.x, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc17 unwind label %.loopexit.split-lp50 ; 0 uses

.noexc17:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 112 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !231
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !217 ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !218 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not5.i.i.i, label %.loopexit54, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.noexc17
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc18, %.lr.ph.preheader.i.i.i
  %.06.i.i.i = phi i64 [ %i.ak, %.noexc18 ], [ %i.aj, %.lr.ph.preheader.i.i.i ]
  %i.ak = add i64 %.06.i.i.i, -1                  ; 3 uses
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !218
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !220
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !221
  invoke void %i.ao(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(336) %i.ac, i32 noundef %i.x)
          to label %.noexc18 unwind label %.loopexit49, !inline_history !32

.noexc18:                                         ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %.loopexit54, label %.lr.ph.i.i.i, !llvm.loop !5

.loopexit54:                                      ; preds = %.noexc18, %.noexc17
  %i.aq = urem i64 %storemerge56, 50000
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.f, label %_ZNSolsEPFRSoS_E.exit

bb.f:                                             ; preds = %.loopexit54
  %6 = udiv exact i64 %storemerge56, 12500
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 %6
  store i32 %i.x, ptr %7, align 4, !tbaa !216
  br label %_ZNSolsEPFRSoS_E.exit

.loopexit49:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit51 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit43

.loopexit.split-lp50:                             ; preds = %bb.e, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit, %.noexc
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit43

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.f, %.loopexit54
  %i.ar = add nuw nsw i64 %storemerge56, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, 150000
  br i1 %exitcond.not, label %.preheader, label %bb.e, !llvm.loop !1980

.noexc19:                                         ; preds = %.loopexit48.2
  %i.as = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.as, align 8      ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %.val4.i.i.i = load ptr, ptr %i.at, align 8     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  %i.av = load i8, ptr %i.au, align 8, !tbaa !246
  %i.aw = icmp eq i8 %i.av, 2
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc19
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !247
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !244, !noalias !1988
  br label %bb.i

bb.h:                                             ; preds = %.noexc19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !241
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !242 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bh = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.bc, %bb.h ] ; 3 uses
  %i.bi = phi i64 [ %i.ay, %bb.g ], [ %i.bg, %bb.h ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %.idx.i.i.i.i.i = shl nsw i64 %i.bi, 2
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 %.idx.i.i.i.i.i ; 3 uses
  %or.cond.i.i.i.i.i = icmp slt i64 %i.bi, 2
  br i1 %or.cond.i.i.i.i.i, label %"_ZNK4entt14insertion_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZZN40Benchmark_AlmostSortedInsertionSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_S0_JEEEvSD_T1_DpOT2_EUlSA_SD_E_TkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorST_EEvSD_SH_SA_.exit.i.i.i.i.i", label %.lr.ph17.i.i.i.i.i.i

.lr.ph17.i.i.i.i.i.i:                             ; preds = %bb.i
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -4
  br label %bb.j

bb.j:                                             ; preds = %.critedge.i.i.i.i.i.i, %.lr.ph17.i.i.i.i.i.i
  %.sroa.08.016.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph17.i.i.i.i.i.i ], [ %i.bm, %.critedge.i.i.i.i.i.i ] ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.08.016.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !216 ; 2 uses
  %i.bo = icmp ugt ptr %i.bk, %.sroa.08.016.i.i.i.i.i.i
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j
  %i.bp = and i32 %i.bn, 1048575
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.br = lshr i64 %i.bq, 12
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !244
  %i.bu = and i64 %i.bq, 4095
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bu
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i
  %.sroa.04.012.i.i.i.i.i.i = phi ptr [ %.sroa.08.016.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.cz, %bb.l ] ; 4 uses
  %i.bw = load i32, ptr %.sroa.04.012.i.i.i.i.i.i, align 4, !tbaa !216 ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !216
  %i.by = and i32 %i.bx, 1048575
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = lshr i64 %i.bz, 10
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val4.i.i.i, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !268
  %i.cd = and i64 %i.bz, 1023
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cd ; 2 uses
  %i.cf = and i32 %i.bw, 1048575
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = lshr i64 %i.cg, 12
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !244
  %i.ck = and i64 %i.cg, 4095
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !216
  %i.cn = and i32 %i.cm, 1048575
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = lshr i64 %i.co, 10
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val4.i.i.i, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !268
  %i.cs = and i64 %i.co, 1023
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cs ; 2 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ce, align 8, !tbaa !270
  %i.cu = getelementptr i8, ptr %i.ce, i64 8
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 8
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.ct, align 8, !tbaa !270
  %i.cv = getelementptr i8, ptr %i.ct, i64 8
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.cv, align 8
  %i.cw = icmp ugt i64 %.val.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i
  %i.cx = icmp ugt i64 %.val2.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %bb.l, label %.critedge.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.04.012.i.i.i.i.i.i, i64 4 ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.04.012.i.i.i.i.i.i, i64 -4
  store i32 %i.bw, ptr %i.da, align 4, !tbaa !216
  %i.db = icmp ugt ptr %i.bk, %i.cz
  br i1 %i.db, label %bb.k, label %.critedge.i.i.i.i.i.i, !llvm.loop !1983

.critedge.i.i.i.i.i.i:                            ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.04.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.08.016.i.i.i.i.i.i, %bb.j ], [ %i.cz, %bb.l ], [ %.sroa.04.012.i.i.i.i.i.i, %bb.k ]
  %i.dc = getelementptr inbounds i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i.i, i64 -4
  store i32 %i.bn, ptr %i.dc, align 4, !tbaa !216
  %.not11.i.i.i.i.i.i = icmp ult ptr %i.bh, %i.bm
  br i1 %.not11.i.i.i.i.i.i, label %bb.j, label %"_ZNK4entt14insertion_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZZN40Benchmark_AlmostSortedInsertionSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_S0_JEEEvSD_T1_DpOT2_EUlSA_SD_E_TkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorST_EEvSD_SH_SA_.exit.i.i.i.i.i", !llvm.loop !1984

"_ZNK4entt14insertion_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZZN40Benchmark_AlmostSortedInsertionSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_S0_JEEEvSD_T1_DpOT2_EUlSA_SD_E_TkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorST_EEvSD_SH_SA_.exit.i.i.i.i.i": ; preds = %.critedge.i.i.i.i.i.i, %bb.i
  %.not30.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not30.i.i.i.i.i, label %"_ZZN40Benchmark_AlmostSortedInsertionSort_Test8TestBodyEvENK3$_0clEv.exit.i", label %.lr.ph28.i.i.i.i.i

.lr.ph28.i.i.i.i.i:                               ; preds = %"_ZNK4entt14insertion_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZZN40Benchmark_AlmostSortedInsertionSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_S0_JEEEvSD_T1_DpOT2_EUlSA_SD_E_TkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorST_EEvSD_SH_SA_.exit.i.i.i.i.i", %._crit_edge.i.i.i.i.i
  %i.dd = phi ptr [ %i.ez, %._crit_edge.i.i.i.i.i ], [ %.val.i.i.i, %"_ZNK4entt14insertion_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZZN40Benchmark_AlmostSortedInsertionSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_S0_JEEEvSD_T1_DpOT2_EUlSA_SD_E_TkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorST_EEvSD_SH_SA_.exit.i.i.i.i.i" ] ; 3 uses
  %i.de = phi ptr [ %i.fa, %._crit_edge.i.i.i.i.i ], [ %i.bh, %"_ZNK4entt14insertion_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZZN40Benchmark_AlmostSortedInsertionSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_S0_JEEEvSD_T1_DpOT2_EUlSA_SD_E_TkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorST_EEvSD_SH_SA_.exit.i.i.i.i.i" ] ; 3 uses
  %.027.i.i.i.i.i = phi i64 [ %i.fb, %._crit_edge.i.i.i.i.i ], [ 0, %"_ZNK4entt14insertion_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortI8positionZZN40Benchmark_AlmostSortedInsertionSort_Test8TestBodyEvENK3$_0clEvEUlRKT_RKT0_E_S0_JEEEvSD_T1_DpOT2_EUlSA_SD_E_TkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorST_EEvSD_SH_SA_.exit.i.i.i.i.i" ] ; 4 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.027.i.i.i.i.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !216
  %i.dh = and i32 %i.dg, 1048575
  %i.di = zext nneg i32 %i.dh to i64              ; 2 uses
  %i.dj = lshr i64 %i.di, 12
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !244
  %i.dm = and i64 %i.di, 4095
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !216
  %i.dp = and i32 %i.do, 1048575
  %i.dq = zext nneg i32 %i.dp to i64              ; 2 uses
  %.not24.i.i.i.i.i = icmp eq i64 %.027.i.i.i.i.i, %i.dq
  br i1 %.not24.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph28.i.i.i.i.i, %.noexc20
  %i.dr = phi ptr [ %i.eu, %.noexc20 ], [ %i.dd, %.lr.ph28.i.i.i.i.i ]
  %i.ds = phi ptr [ %i.el, %.noexc20 ], [ %i.de, %.lr.ph28.i.i.i.i.i ] ; 2 uses
  %.01426.i.i.i.i.i = phi i64 [ %.02325.i.i.i.i.i, %.noexc20 ], [ %.027.i.i.i.i.i, %.lr.ph28.i.i.i.i.i ] ; 3 uses
  %.02325.i.i.i.i.i = phi i64 [ %i.ee, %.noexc20 ], [ %i.dq, %.lr.ph28.i.i.i.i.i ] ; 4 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.02325.i.i.i.i.i
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !216
  %i.dv = and i32 %i.du, 1048575
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = lshr i64 %i.dw, 12
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !244
  %i.ea = and i64 %i.dw, 4095
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !216
  %i.ed = and i32 %i.ec, 1048575
  %i.ee = zext nneg i32 %i.ed to i64              ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.01426.i.i.i.i.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !216
  %i.eh = load ptr, ptr %i.ho, align 8, !tbaa !151
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(80) %i.ho, i64 noundef %.02325.i.i.i.i.i, i64 noundef %i.ee)
          to label %.noexc20 unwind label %.loopexit, !inline_history !1985

.noexc20:                                         ; preds = %.lr.ph.i.i.i.i.i
  %i.ek = trunc i64 %.01426.i.i.i.i.i to i32
  %i.el = load ptr, ptr %i.bj, align 8, !tbaa !242 ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.01426.i.i.i.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !216
  %i.eo = and i32 %i.ek, 1048575
  %i.ep = and i32 %i.en, -1048576
  %i.eq = or disjoint i32 %i.ep, %i.eo
  %i.er = and i32 %i.eg, 1048575
  %i.es = zext nneg i32 %i.er to i64              ; 2 uses
  %i.et = lshr i64 %i.es, 12
  %i.eu = load ptr, ptr %i.as, align 8, !tbaa !243 ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !244
  %i.ex = and i64 %i.es, 4095
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ex
  store i32 %i.eq, ptr %i.ey, align 4, !tbaa !216
  %.not.i.i.i.i.i = icmp eq i64 %.02325.i.i.i.i.i, %i.ee
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1986

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc20, %.lr.ph28.i.i.i.i.i
  %i.ez = phi ptr [ %i.dd, %.lr.ph28.i.i.i.i.i ], [ %i.eu, %.noexc20 ]
  %i.fa = phi ptr [ %i.de, %.lr.ph28.i.i.i.i.i ], [ %i.el, %.noexc20 ]
  %i.fb = add nuw i64 %.027.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fb, %i.bi
end_hunk_1
