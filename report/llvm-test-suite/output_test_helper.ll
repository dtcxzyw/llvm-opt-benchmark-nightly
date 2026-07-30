inline.NumInlined: 5586
inline.NumDeleted: 2028
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN8internal12_GLOBAL__N_110CheckCasesERKSt6vectorI8TestCaseSaIS2_EERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE:bb.a
.body.i:                                          ; preds = %bb.cd, %bb.bp, %bb.bo, %bb.aw, %bb.av, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit7.i.i.i69.i, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit7.i.i.i.i, %bb.v, %.loopexit.split-lp325.i, %.loopexit324.i
  %.pn61.i = phi { ptr, i32 } [ %i.bj, %bb.v ], [ %i.ca, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit7.i.i.i.i ], [ %i.cu, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit7.i.i.i69.i ], [ %lpad.phi333.i, %bb.bp ], [ %i.dz, %bb.av ], [ %i.ez, %bb.bo ], [ %i.ga, %bb.cd ], [ %lpad.phi.i, %bb.aw ], [ %lpad.loopexit326.i, %.loopexit324.i ], [ %lpad.loopexit.split-lp327.i, %.loopexit.split-lp325.i ]
  %i.gb = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.f
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i: ; preds = %.body.i
  %i.gd = load i64, ptr %i.f, align 8, !tbaa !19
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.gf = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.d
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.i
  %i.gh = load i64, ptr %i.d, align 8, !tbaa !19
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.body

bb.ce:                                            ; preds = %.invoke.i
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #34
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i157.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.gl = load ptr, ptr %10, align 8, !tbaa !223  ; 3 uses
  %i.gm = load ptr, ptr %i.h, align 8, !tbaa !221 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.gm, %i.gl
  br i1 %.not.i.i12, label %_ZNSt6vectorI8TestCaseSaIS0_EE9push_backERKS0_.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i157.i
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP8TestCaseEEvT_S4_(ptr noundef %i.gl, ptr noundef %i.gm)
          to label %_ZNSt6vectorI8TestCaseSaIS0_EE9push_backERKS0_.exit.sink.split unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #34
  unreachable

_ZNSt6vectorI8TestCaseSaIS0_EE9push_backERKS0_.exit.sink.split: ; preds = %bb.cf, %.noexc
  %.sink = phi ptr [ %i.ad, %.noexc ], [ %i.gl, %bb.cf ]
  store ptr %.sink, ptr %i.h, align 8, !tbaa !221
  br label %_ZNSt6vectorI8TestCaseSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI8TestCaseSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI8TestCaseSaIS0_EE9push_backERKS0_.exit.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i157.i, %bb.g
  %i.gp = add nuw i64 %.0147, 1                   ; 2 uses
  %i.gq = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.gr = load ptr, ptr %0, align 8, !tbaa !223   ; 2 uses
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = sdiv exact i64 %i.gu, 88
  %i.gw = icmp ult i64 %i.gp, %i.gv
  br i1 %i.gw, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !226
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8internal12_GLOBAL__N_112TestReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8internal12_GLOBAL__N_112TestReporterE, i64 16), ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN9benchmark17BenchmarkReporterESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZNSt6vectorIPN9benchmark17BenchmarkReporterESaIS2_EED2Ev.exit

_ZNSt6vectorIPN9benchmark17BenchmarkReporterESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN9benchmark17BenchmarkReporterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark11CSVReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9benchmark11CSVReporterE, i64 16), ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #34
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN9benchmark17BenchmarkReporterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #32
  ret void
}

; Function Attrs: nounwind
declare void @_ZN9benchmark17BenchmarkReporterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark15ConsoleReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN9benchmark15ConsoleReporterE, i64 16), ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #34
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN9benchmark17BenchmarkReporterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_Z9SubstrCntRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !14
  %i.e = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d, i64 noundef 0, i64 noundef %i.b) #32 ; 2 uses
  %.not12 = icmp eq i64 %i.e, -1
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.014 = phi i64 [ %i.j, %.lr.ph ], [ %i.e, %bb.b ]
  %.01013 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.b ]
  %i.f = add nuw nsw i32 %.01013, 1               ; 2 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.h = add i64 %i.g, %.014
  %i.i = load ptr, ptr %1, align 8, !tbaa !14
  %i.j = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i, i64 noundef %i.h, i64 noundef %i.g) #32 ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !227

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.f, %.lr.ph ]
  ret i32 %.011
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z21GetFileReporterOutputB5cxx11iPPc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::basic_ifstream", align 8 ; 12 uses
  %4 = alloca %"class.std::random_device", align 8 ; 12 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::basic_ifstream", align 8 ; 8 uses
  store i32 %1, ptr %i.c, align 4, !tbaa !4
  %i.d = sext i32 %1 to i64                       ; 5 uses
  %.idx = shl nsw i64 %i.d, 3                     ; 6 uses
  %i.e = icmp ugt i64 %.idx, 9223372036854775800
  br i1 %i.e, label %.noexc.i, label %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #35
  unreachable

_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr null, i64 %.idx
  br label %_ZNSt6vectorIPcSaIS0_EEC2IPS0_vEET_S5_RKS1_.exit

_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #36 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 3 uses
  %i.i = icmp samesign ugt i64 %.idx, 8
  br i1 %i.i, label %bb.b, label %8, !prof !228

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 8 %2, i64 %.idx, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EEC2IPS0_vEET_S5_RKS1_.exit

8:                                                ; preds = %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i
  %9 = icmp eq i32 %1, 1
  br i1 %9, label %bb.c, label %_ZNSt6vectorIPcSaIS0_EEC2IPS0_vEET_S5_RKS1_.exit

bb.c:                                             ; preds = %8
  %i.j = load ptr, ptr %2, align 8, !tbaa !229
  store ptr %i.j, ptr %i.g, align 8, !tbaa !229
  br label %_ZNSt6vectorIPcSaIS0_EEC2IPS0_vEET_S5_RKS1_.exit

_ZNSt6vectorIPcSaIS0_EEC2IPS0_vEET_S5_RKS1_.exit: ; preds = %bb.c, %8, %bb.b, %.thread.i.i
  %.sroa.19.5 = phi ptr [ %i.f, %.thread.i.i ], [ %i.h, %bb.b ], [ %i.h, %bb.c ], [ %i.h, %8 ] ; 11 uses
  %.sroa.055.5 = phi ptr [ null, %.thread.i.i ], [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %8 ] ; 14 uses
  %i.k = ptrtoint ptr %.sroa.19.5 to i64
  %i.l = ptrtoint ptr %.sroa.055.5 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 7 uses
  %i.n = ashr exact i64 %i.m, 3
  %i.o = icmp eq i64 %i.n, %i.d
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EEC2IPS0_vEET_S5_RKS1_.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21GetFileReporterOutputB5cxx11iPPc) #34
  unreachable

bb.e:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EEC2IPS0_vEET_S5_RKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %.ptr15.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  store ptr %.ptr15.i.i, ptr %5, align 8, !tbaa !46, !alias.scope !236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %.ptr15.i.i, ptr noundef nonnull align 1 dereferenceable(11) @.str.294, i64 11, i1 false)
  store i64 11, ptr %i.p, align 8, !tbaa !47, !alias.scope !236
  store i8 0, ptr %i.q, align 1, !tbaa !19, !alias.scope !236
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.e
  %.sroa.09.014.idx.i.i = phi i64 [ %.sroa.09.014.add.i.i, %bb.u ], [ 16, %bb.e ] ; 2 uses
  %.sroa.09.014.ptr.i.i = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.09.014.idx.i.i ; 2 uses
  %i.r = load i8, ptr %.sroa.09.014.ptr.i.i, align 1, !tbaa !19, !alias.scope !236
  %i.s = icmp eq i8 %i.r, 37
  br i1 %i.s, label %bb.f, label %bb.u

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.t = load atomic i8, ptr @_ZGVZL13RandomHexCharvE2rd acquire, align 8, !noalias !236
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.n, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.v = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL13RandomHexCharvE2rd) #32
  %.not.i.i.i16 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i16, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !236
  invoke void @_ZNSt13random_deviceC2Ev(ptr noundef nonnull align 8 dereferenceable(5000) %4)
          to label %bb.i unwind label %.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.w = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %4)
          to label %_ZNSt13random_deviceclEv.exit.i.i.i unwind label %.loopexit22.i

_ZNSt13random_deviceclEv.exit.i.i.i:              ; preds = %bb.i
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  store i64 %i.x, ptr @_ZZL13RandomHexCharvE2rd, align 8, !tbaa !105, !noalias !236
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_ZNSt13random_deviceclEv.exit.i.i.i
  %store_forwarded82 = phi i64 [ %i.x, %_ZNSt13random_deviceclEv.exit.i.i.i ], [ %i.ak, %bb.k ] ; 2 uses
  %.011.i.i.i.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit.i.i.i ], [ %i.al, %bb.k ] ; 4 uses
  %i.y = getelementptr [8 x i8], ptr @_ZZL13RandomHexCharvE2rd, i64 %.011.i.i.i.i.i
  %i.z = lshr i64 %store_forwarded82, 30
  %i.aa = xor i64 %i.z, %store_forwarded82
  %i.ab = mul nuw nsw i64 %i.aa, 1812433253
  %i.ac = add nuw i64 %i.ab, %.011.i.i.i.i.i      ; 2 uses
  %i.ad = and i64 %i.ac, 4294967295               ; 2 uses
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !105, !noalias !236
  %i.ae = add nuw nsw i64 %.011.i.i.i.i.i, 1      ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ae, 624
  br i1 %exitcond.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr [8 x i8], ptr @_ZZL13RandomHexCharvE2rd, i64 %i.ae
  %i.ag = lshr i64 %i.ad, 30
  %i.ah = xor i64 %i.ag, %i.ac
  %i.ai = mul i64 %i.ah, 1812433253
  %i.aj = add i64 %i.ai, %i.ae
  %i.ak = and i64 %i.aj, 4294967295               ; 2 uses
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !105, !noalias !236
  %i.al = add nuw nsw i64 %.011.i.i.i.i.i, 2
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  store i64 624, ptr getelementptr inbounds nuw (i8, ptr @_ZZL13RandomHexCharvE2rd, i64 4992), align 8, !tbaa !237, !noalias !236
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %4)
          to label %_ZNSt13random_deviceD2Ev.exit.i.i.i unwind label %.loopexit27.i

.loopexit27.i:                                    ; preds = %bb.l
  %lpad.loopexit29.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.loopexit.split-lp28.i:                           ; preds = %bb.ae
  %lpad.loopexit.split-lp30.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp28.i, %.loopexit27.i
  %lpad.phi31.i = phi { ptr, i32 } [ %lpad.loopexit29.i, %.loopexit27.i ], [ %lpad.loopexit.split-lp30.i, %.loopexit.split-lp28.i ]
  %i.am = extractvalue { ptr, i32 } %lpad.phi31.i, 0
  call void @__clang_call_terminate(ptr %i.am) #34
  unreachable

_ZNSt13random_deviceD2Ev.exit.i.i.i:              ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !236
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL13RandomHexCharvE2rd) #32
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt13random_deviceD2Ev.exit.i.i.i, %bb.g, %bb.f
  %i.an = load atomic i8, ptr @_ZGVZL13RandomHexCharvE5mrand acquire, align 8, !noalias !236
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.o, label %bb.q, !prof !8

bb.o:                                             ; preds = %bb.n
  %i.ap = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL13RandomHexCharvE5mrand) #32
  %.not4.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not4.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr @_ZZL13RandomHexCharvE5mrand, align 4, !tbaa !239, !noalias !236
  store i32 15, ptr getelementptr inbounds nuw (i8, ptr @_ZZL13RandomHexCharvE5mrand, i64 4), align 4, !tbaa !241, !noalias !236
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL13RandomHexCharvE5mrand) #32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.aq = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) @_ZZL13RandomHexCharvE5mrand, ptr noundef nonnull align 8 dereferenceable(5000) @_ZZL13RandomHexCharvE2rd, ptr noundef nonnull align 4 dereferenceable(8) @_ZZL13RandomHexCharvE5mrand)
          to label %bb.t unwind label %.loopexit32.i ; 2 uses

.loopexit.i:                                      ; preds = %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13random_deviceD2Ev.exit7.i.i.i

.loopexit.split-lp.i:                             ; preds = %bb.aa
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13random_deviceD2Ev.exit7.i.i.i

.loopexit22.i:                                    ; preds = %bb.i
  %lpad.loopexit24.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp23.i:                           ; preds = %bb.ab
  %lpad.loopexit.split-lp25.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp23.i, %.loopexit22.i
  %lpad.phi26.i = phi { ptr, i32 } [ %lpad.loopexit24.i, %.loopexit22.i ], [ %lpad.loopexit.split-lp25.i, %.loopexit.split-lp23.i ]
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %4)
          to label %_ZNSt13random_deviceD2Ev.exit7.i.i.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #34
  unreachable

_ZNSt13random_deviceD2Ev.exit7.i.i.i:             ; preds = %bb.r, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi26.i, %bb.r ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !236
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL13RandomHexCharvE2rd) #32
  br label %.body.i.i

bb.t:                                             ; preds = %bb.q
  %i.at = icmp slt i32 %i.aq, 10
  %i.au = trunc i32 %i.aq to i8
  %.v.i.i.i.i = select i1 %i.at, i8 48, i8 87
  %i.av = add i8 %.v.i.i.i.i, %i.au
  store i8 %i.av, ptr %.sroa.09.014.ptr.i.i, align 1, !tbaa !19, !alias.scope !236
  br label %bb.u

.loopexit32.i:                                    ; preds = %bb.q
  %lpad.loopexit34.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp33.i:                           ; preds = %bb.ai
  %lpad.loopexit.split-lp35.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp33.i, %.loopexit32.i, %_ZNSt13random_deviceD2Ev.exit7.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %_ZNSt13random_deviceD2Ev.exit7.i.i.i ], [ %lpad.loopexit34.i, %.loopexit32.i ], [ %lpad.loopexit.split-lp35.i, %.loopexit.split-lp33.i ] ; 2 uses
  %i.aw = load ptr, ptr %5, align 8, !tbaa !14, !alias.scope !236 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %.ptr15.i.i
  br i1 %i.ax, label %.body17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.body.i.i
  %i.ay = load i64, ptr %.ptr15.i.i, align 8, !tbaa !19, !alias.scope !236
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #33
  br label %.body17

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.sroa.09.014.add.i.i = add nuw nsw i64 %.sroa.09.014.idx.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.09.014.add.i.i, 27
  br i1 %.not.i.i, label %_ZL17GetRandomFileNameB5cxx11v.exit.i, label %.lr.ph.i.i

_ZL17GetRandomFileNameB5cxx11v.exit.i:            ; preds = %bb.u
end_hunk_0
