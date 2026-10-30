Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/bv_interpolator?download=true
inline.NumInlined: 2270
inline.NumDeleted: 1113
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4bzla2bv14BvInterpolator11interpolantERKSt6vectorINS_4NodeESaIS3_EES7_:bb.a
.lr.ph.i.i.i.i99:                                 ; preds = %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEED2Ev.exit, %.lr.ph.i.i.i.i99
  %.06.i.i.i.i100 = phi ptr [ %i.fk, %.lr.ph.i.i.i.i99 ], [ %i.fj, %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEED2Ev.exit ] ; 2 uses
  %i.fk = load ptr, ptr %.06.i.i.i.i100, align 8, !tbaa !64 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i100, i64 noundef 24) #21
  %.not.i.i.i.i101 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i101, label %_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants12VariableKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i99, !llvm.loop !3

_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants12VariableKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i99, %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEED2Ev.exit
  %i.fl = load ptr, ptr %5, align 8, !tbaa !58
  %i.fm = load i64, ptr %i.p, align 8, !tbaa !59
  %i.fn = shl i64 %i.fm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fl, i8 0, i64 %i.fn, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.fo = load ptr, ptr %5, align 8, !tbaa !58    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.o
  br i1 %i.fp, label %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants12VariableKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.fq = load i64, ptr %i.p, align 8, !tbaa !59
  %i.fr = shl i64 %i.fq, 3
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #21
  br label %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEED2Ev.exit

_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants12VariableKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.bs

bb.bo:                                            ; preds = %.body75, %bb.ar, %bb.ao
  %.pn58.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn, %.body75 ], [ %i.cw, %bb.ao ], [ %.pn, %bb.ar ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.an
  %.pn58.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn.pn, %bb.bo ], [ %i.cv, %bb.an ]
  call void @_ZN4bzla4util5TimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %9) #20
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.am
  %.pn58.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn, %bb.bp ], [ %i.cu, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.al, %bb.ak
  %.pn65.pn.pn = phi { ptr, i32 } [ %.pn65.pn, %bb.ak ], [ %.pn58.pn.pn.pn.pn.pn, %bb.bq ], [ %i.ct, %bb.al ]
  call void @_ZNSt13unordered_mapIN4bzla4NodeENS0_3sat12interpolants12VariableKindESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body

.body:                                            ; preds = %bb.k, %_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants12VariableKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.br
  %.pn65.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn, %bb.br ], [ %i.ao, %bb.k ], [ %i.ac, %_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants12VariableKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn65.pn.pn.pn

bb.bs:                                            ; preds = %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEED2Ev.exit, %bb.d, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla3Env2nmEv(ptr noundef nonnull align 8 dereferenceable(4048)) local_unnamed_addr #1

declare void @_ZN4bzla11NodeManager8mk_valueEb(ptr dead_on_unwind writable sret(%"class.bzla::Node") align 8, ptr noundef nonnull align 8 dereferenceable(216), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN4bzla4util5TimerC1ERNS0_14TimerStatisticE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2bv14BvInterpolator13label_clausesERSt13unordered_mapIlNS_3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS5_EEERKSt6vectorINS_4NodeESaISH_EES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph200:
  %4 = alloca %"struct.std::__detail::_AllocNode.625", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::unordered_set.478", align 8 ; 14 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 1, ptr %i.e, align 8, !tbaa !97
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %.not194 = icmp ne ptr %i.i, %i.k
  call void @llvm.assume(i1 %.not194)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph200, %._crit_edge
  %.sroa.098.0198 = phi ptr [ null, %.lr.ph200 ], [ %.sroa.098.1.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.095.0197 = phi ptr [ %i.i, %.lr.ph200 ], [ %i.s, %._crit_edge ] ; 2 uses
  %.sroa.29.0196 = phi ptr [ null, %.lr.ph200 ], [ %.sroa.29.1.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.13.0195 = phi ptr [ null, %.lr.ph200 ], [ %.sroa.13.1.lcssa, %._crit_edge ] ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !98, !nonnull !49, !align !50
  %i.o = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4bzla2bv13AigBitblaster4bitsERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(209) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.095.0197)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !100  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !100  ; 2 uses
  %.not120187 = icmp eq ptr %i.p, %i.r
  br i1 %.not120187, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit126, %bb.b
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.0195, %bb.b ], [ %.sroa.13.5, %.loopexit126 ] ; 2 uses
  %.sroa.29.1.lcssa = phi ptr [ %.sroa.29.0196, %bb.b ], [ %.sroa.29.10, %.loopexit126 ] ; 2 uses
  %.sroa.098.1.lcssa = phi ptr [ %.sroa.098.0198, %bb.b ], [ %.sroa.098.10, %.loopexit126 ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.095.0197, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.k
  br i1 %.not, label %.preheader, label %bb.a

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %bb.b, %.loopexit126
  %.sroa.098.1191 = phi ptr [ %.sroa.098.10, %.loopexit126 ], [ %.sroa.098.0198, %bb.b ] ; 7 uses
  %.sroa.091.0190 = phi ptr [ %i.br, %.loopexit126 ], [ %i.p, %bb.b ] ; 4 uses
  %.sroa.29.1189 = phi ptr [ %.sroa.29.10, %.loopexit126 ], [ %.sroa.29.0196, %bb.b ] ; 6 uses
  %.sroa.13.1188 = phi ptr [ %.sroa.13.5, %.loopexit126 ], [ %.sroa.13.0195, %bb.b ] ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.13.1188, %.sroa.29.1189
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.u = ptrtoint ptr %.sroa.091.0190 to i64
  store i64 %i.u, ptr %.sroa.13.1188, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.v = ptrtoint ptr %.sroa.29.1189 to i64
  %i.w = ptrtoint ptr %.sroa.098.1191 to i64
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.f, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc.a unwind label %.loopexit.split-lp128.loopexit.split-lp

.noexc.a:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i.i.a = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.a)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #23
          to label %.noexc37.a unwind label %.loopexit.split-lp128.loopexit.split-lp ; 5 uses

.noexc37.a:                                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  %i.ah = ptrtoint ptr %.sroa.091.0190 to i64
  store i64 %i.ah, ptr %i.ag, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.098.1191, %.sroa.29.1189
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc37.a, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.af, %.noexc37.a ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.098.1191, %.noexc37.a ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !217
  store i64 %i.ai, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !216
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %.sroa.29.1189
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc37.a
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.af, %.noexc37.a ], [ %i.ak, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.098.1191, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.1191, i64 noundef %i.x) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.13.1188, %bb.d ]
  %.sroa.29.10 = phi ptr [ %i.al, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.29.1189, %bb.d ] ; 4 uses
  %.sroa.098.10 = phi ptr [ %i.af, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.098.1191, %bb.d ] ; 4 uses
  %.sroa.13.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.a, align 4, !tbaa !94
  %i.an = load i64, ptr %.sroa.091.0190, align 8, !tbaa !102 ; 4 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit
  %i.ap = trunc i64 %i.an to i1
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = and i64 %i.an, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !105
  %i.au = sub nsw i64 0, %i.at
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit

bb.j:                                             ; preds = %bb.h
  %i.av = inttoptr i64 %i.an to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !105
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit

_ZNK4bzla8bitblast7AigNode6get_idEv.exit:         ; preds = %bb.j, %bb.i, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit
  %.0.i = phi i64 [ 0, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ], [ %i.au, %bb.i ], [ %i.ax, %bb.j ] ; 5 uses
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !63  ; 2 uses
  %i.az = urem i64 %.0.i, %i.ay                   ; 3 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !62
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i38, label %.loopexit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !64 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !29
  %i.bg = icmp eq i64 %.0.i, %i.bf
  br i1 %i.bg, label %.loopexit126, label %.lr.ph.i.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.bh = icmp eq i64 %.0.i, %i.bk
  br i1 %i.bh, label %.loopexit126, label %.lr.ph.i.i.i.i, !llvm.loop !5

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %bb.l
  %.020.i.i.i.i = phi ptr [ %i.bi, %bb.l ], [ %i.bd, %bb.k ]
  %i.bi = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !29 ; 2 uses
  %i.bl = urem i64 %i.bk, %i.ay
  %.not19.i.i.i.i = icmp eq i64 %i.bl, %i.az
  br i1 %.not19.i.i.i.i, label %bb.l, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !5

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.m
  br label %.loopexit.i.i, !llvm.loop !5

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %_ZNK4bzla8bitblast7AigNode6get_idEv.exit
  %i.bm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %.noexc39 unwind label %bb.n   ; 5 uses

.noexc39:                                         ; preds = %.loopexit.i.i
  store ptr null, ptr %i.bm, align 8, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %.0.i, ptr %i.bn, align 8, !tbaa !108
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 0, ptr %i.bo, align 8, !tbaa !109
  %i.bp = invoke ptr @_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants10ClauseKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.az, i64 noundef %.0.i, ptr noundef nonnull %i.bm, i64 noundef 1)
          to label %.loopexit126 unwind label %_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants10ClauseKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants10ClauseKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc39
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 24) #21
  br label %.body

.loopexit126:                                     ; preds = %bb.l, %.noexc39, %bb.k
  %.pn.i.i = phi ptr [ %i.bp, %.noexc39 ], [ %i.bd, %bb.k ], [ %i.bi, %bb.l ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i32 %i.am, ptr %.1.i.i, align 4, !tbaa !94
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.091.0190, i64 8 ; 2 uses
  %.not120 = icmp eq ptr %i.br, %i.r
  br i1 %.not120, label %._crit_edge, label %.lr.ph

.loopexit.split-lp128.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %lpad.loopexit.split-lp374 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %.loopexit.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader:                                       ; preds = %._crit_edge, %bb.af
  %.sroa.13.2 = phi ptr [ %.sroa.13.4, %bb.af ], [ %.sroa.13.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.29.4 = phi ptr [ %.sroa.29.7, %bb.af ], [ %.sroa.29.1.lcssa, %._crit_edge ] ; 9 uses
  %.sroa.098.4 = phi ptr [ %.sroa.098.7, %bb.af ], [ %.sroa.098.1.lcssa, %._crit_edge ] ; 10 uses
  %i.bt = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -8 ; 5 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !111 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !102 ; 4 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit41, label %bb.o

bb.o:                                             ; preds = %.preheader
  %i.bx = trunc i64 %i.bv to i1
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = and i64 %i.bv, -2
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !105
  %i.cc = sub nsw i64 0, %i.cb
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit41

bb.q:                                             ; preds = %bb.o
  %i.cd = inttoptr i64 %i.bv to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !105
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit41

_ZNK4bzla8bitblast7AigNode6get_idEv.exit41:       ; preds = %bb.q, %bb.p, %.preheader
  %.0.i40 = phi i64 [ 0, %.preheader ], [ %i.cc, %bb.p ], [ %i.cf, %bb.q ]
  store i64 %.0.i40, ptr %i.b, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %5, ptr %4, align 8, !tbaa !113
  %i.cg = invoke { ptr, i8 } @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKlSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIlLb0EEEEEEEESt4pairINS1_14_Node_iteratorIlLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.r unwind label %bb.ac

bb.r:                                             ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.fca.1.extract = extractvalue { ptr, i8 } %i.cg, 1
  %i.ch = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.ch, label %bb.s, label %bb.af

bb.s:                                             ; preds = %bb.r
  %i.ci = load i64, ptr %i.bu, align 8, !tbaa !102
  %i.cj = and i64 %i.ci, -2
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !102
  %.not119 = icmp eq i64 %i.cm, 0
  br i1 %.not119, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit76, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i44 = icmp eq ptr %i.bt, %.sroa.29.4
  br i1 %.not.i.i44, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = ptrtoint ptr %i.cl to i64
  store i64 %i.cn, ptr %i.bt, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit59

bb.v:                                             ; preds = %bb.t
  %i.co = ptrtoint ptr %.sroa.29.4 to i64
  %i.cp = ptrtoint ptr %.sroa.098.4 to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 4 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775800
  br i1 %i.cr, label %bb.w, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i45

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i45: ; preds = %bb.v
  %i.cs = ashr exact i64 %i.cq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i46 = call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i.i46, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = call i64 @llvm.umin.i64(i64 %i.ct, i64 1152921504606846975)
  %i.cw = select i1 %i.cu, i64 1152921504606846975, i64 %i.cv ; 3 uses
  %.not.i.i.i.i47 = icmp ne i64 %i.cw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i47)
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #23
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i45
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cq
  %i.da = ptrtoint ptr %i.cl to i64
  store i64 %i.da, ptr %i.cz, align 8
  %.not10.i.i.i.i.i.i48 = icmp eq ptr %.sroa.098.4, %.sroa.29.4
  br i1 %.not10.i.i.i.i.i.i48, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53, label %.lr.ph.i.i.i.i.i.i49

.lr.ph.i.i.i.i.i.i49:                             ; preds = %.noexc58, %.lr.ph.i.i.i.i.i.i49
  %.012.i.i.i.i.i.i50 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i49 ], [ %i.cy, %.noexc58 ] ; 2 uses
  %.0911.i.i.i.i.i.i51 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i49 ], [ %.sroa.098.4, %.noexc58 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.db = load i64, ptr %.0911.i.i.i.i.i.i51, align 8, !alias.scope !219
  store i64 %i.db, ptr %.012.i.i.i.i.i.i50, align 8, !alias.scope !218
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i51, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i50, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i52 = icmp eq ptr %i.dc, %.sroa.29.4
  br i1 %.not.i.i.i.i.i.i52, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53, label %.lr.ph.i.i.i.i.i.i49, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53: ; preds = %.lr.ph.i.i.i.i.i.i49, %.noexc58
  %.0.lcssa.i.i.i.i.i.i54 = phi ptr [ %i.cy, %.noexc58 ], [ %i.dd, %.lr.ph.i.i.i.i.i.i49 ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i54, i64 8
  %.not.i23.i.i.i55 = icmp eq ptr %.sroa.098.4, null
  br i1 %.not.i23.i.i.i55, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i56, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.4, i64 noundef %i.cq) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i56

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i56: ; preds = %bb.x, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit59

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit59: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i56, %bb.u
  %.sroa.13.6 = phi ptr [ %i.de, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i56 ], [ %.sroa.13.2, %bb.u ] ; 7 uses
  %.sroa.29.11 = phi ptr [ %i.df, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i56 ], [ %.sroa.29.4, %bb.u ] ; 2 uses
  %.sroa.098.11 = phi ptr [ %i.cy, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i56 ], [ %.sroa.098.4, %bb.u ] ; 7 uses
  %i.dg = load i64, ptr %i.bu, align 8
  %i.dh = and i64 %i.dg, -2
  %i.di = inttoptr i64 %i.dh to ptr
  %.0.i60 = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 2 uses
  %.not.i.i61 = icmp eq ptr %.sroa.13.6, %.sroa.29.11
  br i1 %.not.i.i61, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit59
  %i.dj = ptrtoint ptr %.0.i60 to i64
  store i64 %i.dj, ptr %.sroa.13.6, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.13.6, i64 8
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit76

bb.z:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit59
  %i.dl = ptrtoint ptr %.sroa.13.6 to i64
  %i.dm = ptrtoint ptr %.sroa.098.11 to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 4 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775800
  br i1 %i.do, label %bb.aa, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i62

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc74 unwind label %.loopexit.split-lp122.loopexit.split-lp

.noexc74:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i62: ; preds = %bb.z
  %i.dp = ashr exact i64 %i.dn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i63 = call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i.i63, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dq, i64 1152921504606846975)
  %i.dt = select i1 %i.dr, i64 1152921504606846975, i64 %i.ds ; 3 uses
  %.not.i.i.i.i64 = icmp ne i64 %i.dt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i64)
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #23
          to label %.noexc75 unwind label %.loopexit.split-lp122.loopexit.split-lp ; 5 uses

.noexc75:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i62
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn
  %i.dx = ptrtoint ptr %.0.i60 to i64
  store i64 %i.dx, ptr %i.dw, align 8
  %.not10.i.i.i.i.i.i65 = icmp eq ptr %.sroa.098.11, %.sroa.13.6
  br i1 %.not10.i.i.i.i.i.i65, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70, label %.lr.ph.i.i.i.i.i.i66

.lr.ph.i.i.i.i.i.i66:                             ; preds = %.noexc75, %.lr.ph.i.i.i.i.i.i66
  %.012.i.i.i.i.i.i67 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i66 ], [ %i.dv, %.noexc75 ] ; 2 uses
  %.0911.i.i.i.i.i.i68 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i66 ], [ %.sroa.098.11, %.noexc75 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.dy = load i64, ptr %.0911.i.i.i.i.i.i68, align 8, !alias.scope !221
  store i64 %i.dy, ptr %.012.i.i.i.i.i.i67, align 8, !alias.scope !220
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i68, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i69 = icmp eq ptr %i.dz, %.sroa.13.6
  br i1 %.not.i.i.i.i.i.i69, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70, label %.lr.ph.i.i.i.i.i.i66, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70: ; preds = %.lr.ph.i.i.i.i.i.i66, %.noexc75
  %.0.lcssa.i.i.i.i.i.i71 = phi ptr [ %i.dv, %.noexc75 ], [ %i.ea, %.lr.ph.i.i.i.i.i.i66 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i71, i64 8
  %.not.i23.i.i.i72 = icmp eq ptr %.sroa.098.11, null
  br i1 %.not.i23.i.i.i72, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.11, i64 noundef %i.dn) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73: ; preds = %bb.ab, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dt
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit76

bb.ac:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit76, %_ZNK4bzla8bitblast7AigNode6get_idEv.exit41
  %.sroa.29.5 = phi ptr [ %.sroa.29.6, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit76 ], [ %.sroa.29.4, %_ZNK4bzla8bitblast7AigNode6get_idEv.exit41 ]
  %.sroa.098.5 = phi ptr [ %.sroa.098.6, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit76 ], [ %.sroa.098.4, %_ZNK4bzla8bitblast7AigNode6get_idEv.exit41 ]
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i45, %bb.w
  %lpad.loopexit.split-lp351 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp122.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i62, %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit76: ; preds = %bb.y, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73, %bb.s
  %.sroa.13.3 = phi ptr [ %i.bt, %bb.s ], [ %i.eb, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73 ], [ %i.dk, %bb.y ] ; 2 uses
  %.sroa.29.6 = phi ptr [ %.sroa.29.4, %bb.s ], [ %i.ec, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73 ], [ %.sroa.29.11, %bb.y ] ; 4 uses
  %.sroa.098.6 = phi ptr [ %.sroa.098.4, %bb.s ], [ %i.dv, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73 ], [ %.sroa.098.11, %bb.y ] ; 4 uses
  %i.ee = invoke { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants10ClauseKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRlRS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.ac ; 0 uses

_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit76
  %i.ef = load i64, ptr %i.bu, align 8, !tbaa !102
  %i.eg = and i64 %i.ef, -2
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !105
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.el = load i64, ptr %i.b, align 8, !tbaa !29
  %i.em = sub nsw i64 0, %i.el
  store i64 %i.em, ptr %i.c, align 8, !tbaa !29
  %i.en = invoke { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants10ClauseKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJlRS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.ae ; 0 uses

_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.ai

bb.af:                                            ; preds = %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit, %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit, %bb.r
  %.sroa.13.4 = phi ptr [ %.sroa.13.3, %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit ], [ %.sroa.13.3, %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit ], [ %i.bt, %bb.r ] ; 3 uses
  %.sroa.29.7 = phi ptr [ %.sroa.29.6, %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit ], [ %.sroa.29.6, %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit ], [ %.sroa.29.4, %bb.r ] ; 2 uses
  %.sroa.098.7 = phi ptr [ %.sroa.098.6, %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit ], [ %.sroa.098.6, %_ZNSt13unordered_mapIlN4bzla3sat12interpolants10ClauseKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit ], [ %.sroa.098.4, %bb.r ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ep = icmp eq ptr %.sroa.098.7, %.sroa.13.4
  br i1 %i.ep, label %bb.ag, label %.preheader, !llvm.loop !215

bb.ag:                                            ; preds = %bb.af
  %i.eq = load ptr, ptr %i.f, align 8, !tbaa !114 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i79

.lr.ph.i.i.i.i79:                                 ; preds = %bb.ag, %.lr.ph.i.i.i.i79
  %.06.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i79 ], [ %i.eq, %bb.ag ] ; 2 uses
  %i.er = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #21
  %.not.i.i.i.i80 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i80, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i79, !llvm.loop !6

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i79, %bb.ag
  %i.es = load ptr, ptr %5, align 8, !tbaa !96
  %i.et = load i64, ptr %i.e, align 8, !tbaa !97
  %i.eu = shl i64 %i.et, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.es, i8 0, i64 %i.eu, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.ev = load ptr, ptr %5, align 8, !tbaa !96    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.d
  br i1 %i.ew, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit.a, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.ex = load i64, ptr %i.e, align 8, !tbaa !97
  %i.ey = shl i64 %i.ex, 3
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit.a

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit.a: ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ez = ptrtoint ptr %.sroa.29.7 to i64
  %i.fa = ptrtoint ptr %.sroa.13.4 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.7, i64 noundef %i.fb) #21
  ret void

bb.ai:                                            ; preds = %.loopexit.split-lp122.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.ae, %bb.ac
  %.sroa.29.8 = phi ptr [ %.sroa.29.5, %bb.ac ], [ %.sroa.29.4, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.29.6, %bb.ae ], [ %.sroa.13.6, %.loopexit.split-lp122.loopexit.split-lp ]
  %.sroa.098.8 = phi ptr [ %.sroa.098.5, %bb.ac ], [ %.sroa.098.4, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.098.6, %bb.ae ], [ %.sroa.098.11, %.loopexit.split-lp122.loopexit.split-lp ]
  %.pn.pn = phi { ptr, i32 } [ %i.ed, %bb.ac ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp.loopexit.split-lp ], [ %i.eo, %bb.ae ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp122.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp128.loopexit.split-lp, %bb.c, %bb.n, %_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants10ClauseKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.ai
  %.sroa.29.9 = phi ptr [ %.sroa.29.8, %bb.ai ], [ %.sroa.29.0196, %bb.c ], [ %.sroa.29.10, %bb.n ], [ %.sroa.29.10, %_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants10ClauseKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.sroa.29.1189, %.loopexit.split-lp128.loopexit.split-lp ]
  %.sroa.098.9 = phi ptr [ %.sroa.098.8, %bb.ai ], [ %.sroa.098.0198, %bb.c ], [ %.sroa.098.10, %bb.n ], [ %.sroa.098.10, %_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants10ClauseKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.sroa.098.1191, %.loopexit.split-lp128.loopexit.split-lp ] ; 3 uses
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ai ], [ %i.t, %bb.c ], [ %i.bs, %bb.n ], [ %i.bq, %_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants10ClauseKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %lpad.loopexit.split-lp374, %.loopexit.split-lp128.loopexit.split-lp ]
  call void @_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i81 = icmp eq ptr %.sroa.098.9, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit82, label %bb.aj

bb.aj:                                            ; preds = %.body
  %i.fc = ptrtoint ptr %.sroa.29.9 to i64
  %i.fd = ptrtoint ptr %.sroa.098.9 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.9, i64 noundef %i.fe) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit82

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit82: ; preds = %.body, %bb.aj
  resume { ptr, i32 } %.pn33.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2bv14BvInterpolator10label_varsERSt13unordered_mapIlNS_3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS5_EEERS2_INS_4NodeES5_S6_ISG_ES8_ISG_ESaISA_IKSG_S5_EEERKSt6vectorISG_SaISG_EESS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unordered_map.553", align 8 ; 13 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  tail call void @_ZN4bzla2bv14BvInterpolator12label_constsERSt13unordered_mapIlNS_3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS5_EEERS2_INS_4NodeES5_S6_ISG_ES8_ISG_ESaISA_IKSG_S5_EEERKSt6vectorISG_SaISG_EES5_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0)
  tail call void @_ZN4bzla2bv14BvInterpolator12label_constsERSt13unordered_mapIlNS_3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS5_EEERS2_INS_4NodeES5_S6_ISG_ES8_ISG_ESaISA_IKSG_S5_EEERKSt6vectorISG_SaISG_EES5_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1)
  tail call void @_ZN4bzla2bv14BvInterpolator21label_terms_and_leafsERSt13unordered_mapIlNS_3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS5_EEERS2_INS_4NodeES5_S6_ISG_ES8_ISG_ESaISA_IKSG_S5_EEERKSt6vectorISG_SaISG_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN4bzla2bv14BvInterpolator21label_terms_and_leafsERSt13unordered_mapIlNS_3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS5_EEERS2_INS_4NodeES5_S6_ISG_ES8_ISG_ESaISA_IKSG_S5_EEERKSt6vectorISG_SaISG_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 1, ptr %i.e, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %.not212330 = icmp eq ptr %i.i, %i.k
  br i1 %.not212330, label %._crit_edge337, label %.lr.ph336

.lr.ph336:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.b

._crit_edge337:                                   ; preds = %._crit_edge, %bb.a
  %.sroa.35.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.35.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.15.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0178.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0178.1.lcssa, %._crit_edge ] ; 2 uses
  %i.m = load ptr, ptr %4, align 8, !tbaa !48     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48   ; 2 uses
  %.not213352 = icmp eq ptr %i.m, %i.o
  br i1 %.not213352, label %.preheader, label %.lr.ph358

.lr.ph358:                                        ; preds = %._crit_edge337
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph336, %._crit_edge
  %.sroa.0178.0334 = phi ptr [ null, %.lr.ph336 ], [ %.sroa.0178.1.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.15.0333 = phi ptr [ null, %.lr.ph336 ], [ %.sroa.15.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0175.0332 = phi ptr [ %i.i, %.lr.ph336 ], [ %i.v, %._crit_edge ] ; 2 uses
  %.sroa.35.0331 = phi ptr [ null, %.lr.ph336 ], [ %.sroa.35.1.lcssa, %._crit_edge ] ; 3 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !98, !nonnull !49, !align !50
  %i.r = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4bzla2bv13AigBitblaster4bitsERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(209) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0175.0332)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !100  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !100  ; 2 uses
  %.not216323 = icmp eq ptr %i.s, %i.u
  br i1 %.not216323, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit, %bb.c
  %.sroa.35.1.lcssa = phi ptr [ %.sroa.35.0331, %bb.c ], [ %.sroa.35.10, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %.sroa.15.1.lcssa = phi ptr [ %.sroa.15.0333, %bb.c ], [ %.sroa.15.6, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %.sroa.0178.1.lcssa = phi ptr [ %.sroa.0178.0334, %bb.c ], [ %.sroa.0178.10, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0175.0332, i64 8 ; 2 uses
  %.not212 = icmp eq ptr %i.v, %i.k
  br i1 %.not212, label %._crit_edge337, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph:                                           ; preds = %bb.c, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit
  %.sroa.0178.1327 = phi ptr [ %.sroa.0178.10, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ], [ %.sroa.0178.0334, %bb.c ] ; 7 uses
  %.sroa.15.1326 = phi ptr [ %.sroa.15.6, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ], [ %.sroa.15.0333, %bb.c ] ; 7 uses
  %.sroa.0171.0325 = phi ptr [ %i.ap, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ], [ %i.s, %bb.c ] ; 3 uses
  %.sroa.35.1324 = phi ptr [ %.sroa.35.10, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ], [ %.sroa.35.0331, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.15.1326, %.sroa.35.1324
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.x = ptrtoint ptr %.sroa.0171.0325 to i64
  store i64 %i.x, ptr %.sroa.15.1326, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.y = ptrtoint ptr %.sroa.15.1326 to i64
  %i.z = ptrtoint ptr %.sroa.0178.1327 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.g, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc.a unwind label %.loopexit.split-lp236.loopexit.split-lp

.noexc.a:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i.i.a = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.a)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #23
          to label %.noexc71 unwind label %.loopexit.split-lp236.loopexit.split-lp ; 5 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  %i.ak = ptrtoint ptr %.sroa.0171.0325 to i64
  store i64 %i.ak, ptr %i.aj, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0178.1327, %.sroa.15.1326
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc71, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.noexc71 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0178.1327, %.noexc71 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.al = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !258
  store i64 %i.al, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !257
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, %.sroa.15.1326
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc71
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ai, %.noexc71 ], [ %i.an, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0178.1327, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0178.1327, i64 noundef %i.aa) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.e
  %.sroa.35.10 = phi ptr [ %i.ao, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.35.1324, %bb.e ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.15.1326, %bb.e ]
  %.sroa.0178.10 = phi ptr [ %i.ai, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.0178.1327, %bb.e ] ; 2 uses
  %.sroa.15.6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0171.0325, i64 8 ; 2 uses
  %.not216 = icmp eq ptr %i.ap, %i.u
  br i1 %.not216, label %._crit_edge, label %.lr.ph

.loopexit.split-lp236.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.g
  %lpad.loopexit.split-lp675 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.preheader:                                       ; preds = %._crit_edge348, %._crit_edge337
  %.sroa.35.3.lcssa = phi ptr [ %.sroa.35.0.lcssa, %._crit_edge337 ], [ %.sroa.35.4.lcssa, %._crit_edge348 ]
  %.sroa.15.2.lcssa = phi ptr [ %.sroa.15.0.lcssa, %._crit_edge337 ], [ %.sroa.15.3.lcssa, %._crit_edge348 ]
  %.sroa.0178.3.lcssa = phi ptr [ %.sroa.0178.0.lcssa, %._crit_edge337 ], [ %.sroa.0178.4.lcssa, %._crit_edge348 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.p

bb.i:                                             ; preds = %.lr.ph358, %._crit_edge348
  %.sroa.0178.3356 = phi ptr [ %.sroa.0178.0.lcssa, %.lr.ph358 ], [ %.sroa.0178.4.lcssa, %._crit_edge348 ] ; 3 uses
  %.sroa.15.2355 = phi ptr [ %.sroa.15.0.lcssa, %.lr.ph358 ], [ %.sroa.15.3.lcssa, %._crit_edge348 ] ; 2 uses
  %.sroa.0165.0354 = phi ptr [ %i.m, %.lr.ph358 ], [ %i.ay, %._crit_edge348 ] ; 2 uses
  %.sroa.35.3353 = phi ptr [ %.sroa.35.0.lcssa, %.lr.ph358 ], [ %.sroa.35.4.lcssa, %._crit_edge348 ] ; 3 uses
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !98, !nonnull !49, !align !50
  %i.au = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4bzla2bv13AigBitblaster4bitsERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(209) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0165.0354)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !100 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !100 ; 2 uses
  %.not215341 = icmp eq ptr %i.av, %i.ax
  br i1 %.not215341, label %._crit_edge348, label %.lr.ph347

._crit_edge348:                                   ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit87, %bb.j
  %.sroa.35.4.lcssa = phi ptr [ %.sroa.35.3353, %bb.j ], [ %.sroa.35.11, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit87 ] ; 2 uses
  %.sroa.15.3.lcssa = phi ptr [ %.sroa.15.2355, %bb.j ], [ %.sroa.15.7, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit87 ] ; 2 uses
  %.sroa.0178.4.lcssa = phi ptr [ %.sroa.0178.3356, %bb.j ], [ %.sroa.0178.11, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit87 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0165.0354, i64 8 ; 2 uses
  %.not213 = icmp eq ptr %i.ay, %i.o
  br i1 %.not213, label %.preheader, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph347:                                        ; preds = %bb.j, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit87
  %.sroa.0178.4345 = phi ptr [ %.sroa.0178.11, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit87 ], [ %.sroa.0178.3356, %bb.j ] ; 7 uses
  %.sroa.15.3344 = phi ptr [ %.sroa.15.7, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit87 ], [ %.sroa.15.2355, %bb.j ] ; 7 uses
  %.sroa.0161.0343 = phi ptr [ %i.bs, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit87 ], [ %i.av, %bb.j ] ; 3 uses
  %.sroa.35.4342 = phi ptr [ %.sroa.35.11, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit87 ], [ %.sroa.35.3353, %bb.j ] ; 2 uses
  %.not.i.i72 = icmp eq ptr %.sroa.15.3344, %.sroa.35.4342
  br i1 %.not.i.i72, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph347
  %i.ba = ptrtoint ptr %.sroa.0161.0343 to i64
  store i64 %i.ba, ptr %.sroa.15.3344, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit87

bb.m:                                             ; preds = %.lr.ph347
  %i.bb = ptrtoint ptr %.sroa.15.3344 to i64
  %i.bc = ptrtoint ptr %.sroa.0178.4345 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.n, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i73

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc85 unwind label %.loopexit.split-lp231.loopexit.split-lp

.noexc85:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i73: ; preds = %bb.m
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i74 = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i74, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i75 = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i75)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #23
          to label %.noexc86 unwind label %.loopexit.split-lp231.loopexit.split-lp ; 5 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  %i.bn = ptrtoint ptr %.sroa.0161.0343 to i64
  store i64 %i.bn, ptr %i.bm, align 8
  %.not10.i.i.i.i.i.i76 = icmp eq ptr %.sroa.0178.4345, %.sroa.15.3344
  br i1 %.not10.i.i.i.i.i.i76, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i81, label %.lr.ph.i.i.i.i.i.i77

.lr.ph.i.i.i.i.i.i77:                             ; preds = %.noexc86, %.lr.ph.i.i.i.i.i.i77
  %.012.i.i.i.i.i.i78 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i77 ], [ %i.bl, %.noexc86 ] ; 2 uses
  %.0911.i.i.i.i.i.i79 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i77 ], [ %.sroa.0178.4345, %.noexc86 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i.i79, align 8, !alias.scope !260
  store i64 %i.bo, ptr %.012.i.i.i.i.i.i78, align 8, !alias.scope !259
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i79, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i78, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i80 = icmp eq ptr %i.bp, %.sroa.15.3344
  br i1 %.not.i.i.i.i.i.i80, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i81, label %.lr.ph.i.i.i.i.i.i77, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i81: ; preds = %.lr.ph.i.i.i.i.i.i77, %.noexc86
  %.0.lcssa.i.i.i.i.i.i82 = phi ptr [ %i.bl, %.noexc86 ], [ %i.bq, %.lr.ph.i.i.i.i.i.i77 ]
  %.not.i23.i.i.i83 = icmp eq ptr %.sroa.0178.4345, null
  br i1 %.not.i23.i.i.i83, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i84, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i81
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0178.4345, i64 noundef %i.bd) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i84

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i84: ; preds = %bb.o, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i81
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit87

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit87: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i84, %bb.l
  %.sroa.35.11 = phi ptr [ %i.br, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i84 ], [ %.sroa.35.4342, %bb.l ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i82.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i82, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i84 ], [ %.sroa.15.3344, %bb.l ]
  %.sroa.0178.11 = phi ptr [ %i.bl, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i84 ], [ %.sroa.0178.4345, %bb.l ] ; 2 uses
  %.sroa.15.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i82.pn, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0161.0343, i64 8 ; 2 uses
  %.not215 = icmp eq ptr %i.bs, %i.ax
  br i1 %.not215, label %._crit_edge348, label %.lr.ph347

.loopexit.split-lp231.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i73, %bb.n
  %lpad.loopexit.split-lp659 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.p:                                             ; preds = %.preheader, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit122
  %.sroa.35.6 = phi ptr [ %.sroa.35.7, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit122 ], [ %.sroa.35.3.lcssa, %.preheader ] ; 12 uses
  %.sroa.15.4 = phi ptr [ %.sroa.15.5, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit122 ], [ %.sroa.15.2.lcssa, %.preheader ] ; 5 uses
  %.sroa.0178.6 = phi ptr [ %.sroa.0178.7, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit122 ], [ %.sroa.0178.3.lcssa, %.preheader ] ; 13 uses
  %i.bt = getelementptr inbounds i8, ptr %.sroa.15.4, i64 -8 ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !111 ; 4 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !102 ; 4 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = trunc i64 %i.bv to i1
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.by = and i64 %i.bv, -2
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !105
  %i.cc = sub nsw i64 0, %i.cb
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit

bb.s:                                             ; preds = %bb.q
  %i.cd = inttoptr i64 %i.bv to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !105
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit

_ZNK4bzla8bitblast7AigNode6get_idEv.exit:         ; preds = %bb.s, %bb.r, %bb.p
  %.0.i = phi i64 [ 0, %bb.p ], [ %i.cc, %bb.r ], [ %i.cf, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cg = call noundef i64 @llvm.abs.i64(i64 %.0.i, i1 true)
  store i64 %i.cg, ptr %i.a, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 1, ptr %i.b, align 1, !tbaa !118
  %i.ch = invoke { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlbESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRlbEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZNSt13unordered_mapIlbSt4hashIlESt8equal_toIlESaISt4pairIKlbEEE7emplaceIJRlbEEES4_INSt8__detail14_Node_iteratorIS6_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.ad ; 2 uses

_ZNSt13unordered_mapIlbSt4hashIlESt8equal_toIlESaISt4pairIKlbEEE7emplaceIJRlbEEES4_INSt8__detail14_Node_iteratorIS6_Lb0ELb0EEEbEDpOT_.exit: ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit
  %.fca.1.extract8 = extractvalue { ptr, i8 } %i.ch, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ci = trunc nuw i8 %.fca.1.extract8 to i1
  br i1 %i.ci, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %_ZNSt13unordered_mapIlbSt4hashIlESt8equal_toIlESaISt4pairIKlbEEE7emplaceIJRlbEEES4_INSt8__detail14_Node_iteratorIS6_Lb0ELb0EEEbEDpOT_.exit
  %i.cj = load i64, ptr %i.bu, align 8, !tbaa !102
  %i.ck = and i64 %i.cj, -2
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !102
  %.not214 = icmp eq i64 %i.cn, 0
  br i1 %.not214, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit122, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i90 = icmp eq ptr %.sroa.15.4, %.sroa.35.6
  br i1 %.not.i.i90, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = ptrtoint ptr %i.cm to i64
  store i64 %i.co, ptr %.sroa.15.4, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit105

bb.w:                                             ; preds = %bb.u
  %i.cp = ptrtoint ptr %.sroa.35.6 to i64
  %i.cq = ptrtoint ptr %.sroa.0178.6 to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 4 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775800
  br i1 %i.cs, label %bb.x, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i91

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i91: ; preds = %bb.w
  %i.ct = ashr exact i64 %i.cr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i92 = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i.i92, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 1152921504606846975)
  %i.cx = select i1 %i.cv, i64 1152921504606846975, i64 %i.cw ; 3 uses
  %.not.i.i.i.i93 = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i93)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #23
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc104:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i91
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cr
  %i.db = ptrtoint ptr %i.cm to i64
  store i64 %i.db, ptr %i.da, align 8
  %.not10.i.i.i.i.i.i94 = icmp eq ptr %.sroa.0178.6, %.sroa.35.6
  br i1 %.not10.i.i.i.i.i.i94, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i99, label %.lr.ph.i.i.i.i.i.i95

.lr.ph.i.i.i.i.i.i95:                             ; preds = %.noexc104, %.lr.ph.i.i.i.i.i.i95
  %.012.i.i.i.i.i.i96 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i95 ], [ %i.cz, %.noexc104 ] ; 2 uses
  %.0911.i.i.i.i.i.i97 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i95 ], [ %.sroa.0178.6, %.noexc104 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.dc = load i64, ptr %.0911.i.i.i.i.i.i97, align 8, !alias.scope !262
  store i64 %i.dc, ptr %.012.i.i.i.i.i.i96, align 8, !alias.scope !261
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i97, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i96, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i98 = icmp eq ptr %i.dd, %.sroa.35.6
  br i1 %.not.i.i.i.i.i.i98, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i99, label %.lr.ph.i.i.i.i.i.i95, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i99: ; preds = %.lr.ph.i.i.i.i.i.i95, %.noexc104
  %.0.lcssa.i.i.i.i.i.i100 = phi ptr [ %i.cz, %.noexc104 ], [ %i.de, %.lr.ph.i.i.i.i.i.i95 ]
  %.not.i23.i.i.i101 = icmp eq ptr %.sroa.0178.6, null
  br i1 %.not.i23.i.i.i101, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i102, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i99
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0178.6, i64 noundef %i.cr) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i102

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i102: ; preds = %bb.y, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i99
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit105

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit105: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i102, %bb.v
  %.sroa.35.12 = phi ptr [ %i.df, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i102 ], [ %.sroa.35.6, %bb.v ] ; 5 uses
  %.0.lcssa.i.i.i.i.i.i100.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i100, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i102 ], [ %.sroa.15.4, %bb.v ] ; 4 uses
  %.sroa.0178.12 = phi ptr [ %i.cz, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i102 ], [ %.sroa.0178.6, %bb.v ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.i100.pn690 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i100.pn to i64
  %.sroa.15.8 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i100.pn, i64 8 ; 2 uses
  %i.dg = load i64, ptr %i.bu, align 8
  %i.dh = and i64 %i.dg, -2
  %i.di = inttoptr i64 %i.dh to ptr
  %.0.i106 = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 2 uses
  %.not.i.i107 = icmp eq ptr %.sroa.15.8, %.sroa.35.12
  br i1 %.not.i.i107, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit105
  %i.dj = ptrtoint ptr %.0.i106 to i64
  store i64 %i.dj, ptr %.sroa.15.8, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i100.pn, i64 16
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit122

bb.aa:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit105
  %i.dl = ptrtoint ptr %.sroa.35.12 to i64
  %i.dm = ptrtoint ptr %.sroa.0178.12 to i64      ; 2 uses
  %i.dn = sub i64 %i.dl, %i.dm                    ; 4 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775800
  br i1 %i.do, label %bb.ab, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i108

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc120 unwind label %.loopexit.split-lp226.loopexit.split-lp

.noexc120:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i108: ; preds = %bb.aa
  %i.dp = ashr exact i64 %i.dn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i109 = call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i.i109, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dq, i64 1152921504606846975)
  %i.dt = select i1 %i.dr, i64 1152921504606846975, i64 %i.ds ; 3 uses
  %.not.i.i.i.i110 = icmp ne i64 %i.dt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i110)
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #23
          to label %.noexc121 unwind label %.loopexit.split-lp226.loopexit.split-lp ; 6 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i108
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn
  %i.dx = ptrtoint ptr %.0.i106 to i64
  store i64 %i.dx, ptr %i.dw, align 8
  %.not10.i.i.i.i.i.i111 = icmp eq ptr %.sroa.0178.12, %.sroa.35.12
  br i1 %.not10.i.i.i.i.i.i111, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i116, label %.lr.ph.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i112.preheader:                  ; preds = %.noexc121
  %i.dy = sub i64 %.0.lcssa.i.i.i.i.i.i100.pn690, %i.dm ; 2 uses
  %i.dz = lshr i64 %i.dy, 3
  %i.ea = add nuw nsw i64 %i.dz, 1
  %xtraiter = and i64 %i.ea, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i112.prol.loopexit, label %.lr.ph.i.i.i.i.i.i112.prol

.lr.ph.i.i.i.i.i.i112.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i112.prol
  %.012.i.i.i.i.i.i113.prol = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i112.prol ], [ %i.dv, %.lr.ph.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i114.prol = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i112.prol ], [ %.sroa.0178.12, %.lr.ph.i.i.i.i.i.i112.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i112.prol ], [ 0, %.lr.ph.i.i.i.i.i.i112.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.eb = load i64, ptr %.0911.i.i.i.i.i.i114.prol, align 8, !alias.scope !264
  store i64 %i.eb, ptr %.012.i.i.i.i.i.i113.prol, align 8, !alias.scope !263
  %i.ec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i114.prol, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i113.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i112.prol.loopexit, label %.lr.ph.i.i.i.i.i.i112.prol, !llvm.loop !234

.lr.ph.i.i.i.i.i.i112.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i112.prol, %.lr.ph.i.i.i.i.i.i112.preheader
  %.lcssa619.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i112.preheader ], [ %i.ed, %.lr.ph.i.i.i.i.i.i112.prol ]
  %.012.i.i.i.i.i.i113.unr = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i112.preheader ], [ %i.ed, %.lr.ph.i.i.i.i.i.i112.prol ]
  %.0911.i.i.i.i.i.i114.unr = phi ptr [ %.sroa.0178.12, %.lr.ph.i.i.i.i.i.i112.preheader ], [ %i.ec, %.lr.ph.i.i.i.i.i.i112.prol ]
  %i.ee = icmp ult i64 %i.dy, 56
  br i1 %i.ee, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i116, label %.lr.ph.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i112:                            ; preds = %.lr.ph.i.i.i.i.i.i112.prol.loopexit, %.lr.ph.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i113 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i113.unr, %.lr.ph.i.i.i.i.i.i112.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i114 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i112 ], [ %.0911.i.i.i.i.i.i114.unr, %.lr.ph.i.i.i.i.i.i112.prol.loopexit ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.ef = load i64, ptr %.0911.i.i.i.i.i.i114, align 8, !alias.scope !264
  store i64 %i.ef, ptr %.012.i.i.i.i.i.i113, align 8, !alias.scope !263
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i114, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i113, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.ei = load i64, ptr %i.eg, align 8, !alias.scope !266
  store i64 %i.ei, ptr %i.eh, align 8, !alias.scope !265
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i114, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i113, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.el = load i64, ptr %i.ej, align 8, !alias.scope !268
  store i64 %i.el, ptr %i.ek, align 8, !alias.scope !267
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i114, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i113, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.eo = load i64, ptr %i.em, align 8, !alias.scope !270
  store i64 %i.eo, ptr %i.en, align 8, !alias.scope !269
  %i.ep = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i114, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i113, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.er = load i64, ptr %i.ep, align 8, !alias.scope !272
  store i64 %i.er, ptr %i.eq, align 8, !alias.scope !271
  %i.es = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i114, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i113, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.eu = load i64, ptr %i.es, align 8, !alias.scope !274
  store i64 %i.eu, ptr %i.et, align 8, !alias.scope !273
  %i.ev = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i114, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i113, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.ex = load i64, ptr %i.ev, align 8, !alias.scope !276
  store i64 %i.ex, ptr %i.ew, align 8, !alias.scope !275
  %i.ey = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i114, i64 56 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i113, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.fa = load i64, ptr %i.ey, align 8, !alias.scope !278
  store i64 %i.fa, ptr %i.ez, align 8, !alias.scope !277
  %i.fb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i114, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i113, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i115.7 = icmp eq ptr %i.ey, %.0.lcssa.i.i.i.i.i.i100.pn
  br i1 %.not.i.i.i.i.i.i115.7, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i116, label %.lr.ph.i.i.i.i.i.i112, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i116: ; preds = %.lr.ph.i.i.i.i.i.i112.prol.loopexit, %.lr.ph.i.i.i.i.i.i112, %.noexc121
  %.0.lcssa.i.i.i.i.i.i117 = phi ptr [ %i.dv, %.noexc121 ], [ %.lcssa619.unr, %.lr.ph.i.i.i.i.i.i112.prol.loopexit ], [ %i.fc, %.lr.ph.i.i.i.i.i.i112 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i117, i64 8
  %.not.i23.i.i.i118 = icmp eq ptr %.sroa.0178.12, null
  br i1 %.not.i23.i.i.i118, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i119, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i116
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0178.12, i64 noundef %i.dn) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i119

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i119: ; preds = %bb.ac, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i116
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dt
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit122

bb.ad:                                            ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.bb

.loopexit.split-lp226.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i108, %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ae:                                            ; preds = %_ZNSt13unordered_mapIlbSt4hashIlESt8equal_toIlESaISt4pairIKlbEEE7emplaceIJRlbEEES4_INSt8__detail14_Node_iteratorIS6_Lb0ELb0EEEbEDpOT_.exit
  %.fca.0.extract7 = extractvalue { ptr, i8 } %i.ch, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %.fca.0.extract7, i64 16 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !121, !range !122, !noundef !49
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.af, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit122

bb.af:                                            ; preds = %bb.ae
  store i8 0, ptr %i.fg, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 2, ptr %i.c, align 4, !tbaa !69
  %i.fj = invoke { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants12VariableKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRlS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.ax ; 2 uses

_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit: ; preds = %bb.af
  %.fca.0.extract = extractvalue { ptr, i8 } %i.fj, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.fj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.fk = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.fk, label %bb.ag, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit122

bb.ag:                                            ; preds = %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit
  %i.fl = load i64, ptr %i.bu, align 8
  %i.fm = and i64 %i.fl, -2
  %i.fn = inttoptr i64 %i.fm to ptr               ; 2 uses
  %.0.i124 = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fo = load i64, ptr %.0.i124, align 8, !tbaa !102 ; 4 uses
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit126, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fq = trunc i64 %i.fo to i1
  br i1 %i.fq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fr = and i64 %i.fo, -2
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !105
  %i.fv = sub nsw i64 0, %i.fu
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit126

bb.aj:                                            ; preds = %bb.ah
  %i.fw = inttoptr i64 %i.fo to ptr
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !105
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit126

_ZNK4bzla8bitblast7AigNode6get_idEv.exit126:      ; preds = %bb.aj, %bb.ai, %bb.ag
  %.0.i125 = phi i64 [ 0, %bb.ag ], [ %i.fv, %bb.ai ], [ %i.fy, %bb.aj ]
  %i.fz = call noundef i64 @llvm.abs.i64(i64 %.0.i125, i1 true) ; 4 uses
  %i.ga = load i64, ptr %i.aq, align 8, !tbaa !123
  %.not.not.i.i.i = icmp eq i64 %i.ga, 0          ; 2 uses
  br i1 %.not.not.i.i.i, label %.preheader365, label %bb.al

.preheader365:                                    ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit126, %bb.ak
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.ak ], [ %i.as, %_ZNK4bzla8bitblast7AigNode6get_idEv.exit126 ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i.i138.invoke, label %bb.ak

bb.ak:                                            ; preds = %.preheader365
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !29
  %i.gd = icmp eq i64 %i.fz, %i.gc
  br i1 %i.gd, label %.loopexit219, label %.preheader365, !llvm.loop !7

bb.al:                                            ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit126
  %i.ge = load i64, ptr %i.ar, align 8, !tbaa !59 ; 2 uses
  %i.gf = urem i64 %i.fz, %i.ge                   ; 2 uses
  %i.gg = load ptr, ptr %1, align 8, !tbaa !58
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gf
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i138.invoke, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !64 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !29
  %i.gm = icmp eq i64 %i.fz, %i.gl
  br i1 %i.gm, label %.loopexit219, label %.lr.ph.i.i.i.i.i

bb.an:                                            ; preds = %bb.ao
  %i.gn = icmp eq i64 %i.fz, %i.gq
  br i1 %i.gn, label %.loopexit219, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.am, %bb.an
  %.020.i.i.i.i.i = phi ptr [ %i.go, %bb.an ], [ %i.gj, %bb.am ]
  %i.go = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i138.invoke, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !29 ; 2 uses
  %i.gr = urem i64 %i.gq, %i.ge
  %.not19.i.i.i.i.i = icmp eq i64 %i.gr, %i.gf
  br i1 %.not19.i.i.i.i.i, label %bb.an, label %..loopexit_crit_edge21.i.i.i.i.i137, !llvm.loop !8

.loopexit219:                                     ; preds = %bb.an, %bb.ak, %bb.am
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.ak ], [ %i.gj, %bb.am ], [ %i.go, %bb.an ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !69 ; 2 uses
  %.0.i128 = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.gu = load i64, ptr %.0.i128, align 8, !tbaa !102 ; 4 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit130, label %bb.ap

bb.ap:                                            ; preds = %.loopexit219
  %i.gw = trunc i64 %i.gu to i1
  br i1 %i.gw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gx = and i64 %i.gu, -2
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !105
  %i.hb = sub nsw i64 0, %i.ha
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit130

bb.ar:                                            ; preds = %bb.ap
  %i.hc = inttoptr i64 %i.gu to ptr
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !105
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit130

_ZNK4bzla8bitblast7AigNode6get_idEv.exit130:      ; preds = %bb.ar, %bb.aq, %.loopexit219
  %.0.i129 = phi i64 [ 0, %.loopexit219 ], [ %i.hb, %bb.aq ], [ %i.he, %bb.ar ]
  %i.hf = call noundef i64 @llvm.abs.i64(i64 %.0.i129, i1 true) ; 4 uses
  br i1 %.not.not.i.i.i, label %.preheader362, label %bb.at

.preheader362:                                    ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit130, %bb.as
  %.sroa.06.0.in.i.i.i140 = phi ptr [ %.sroa.06.0.i.i.i141, %bb.as ], [ %i.as, %_ZNK4bzla8bitblast7AigNode6get_idEv.exit130 ]
  %.sroa.06.0.i.i.i141 = load ptr, ptr %.sroa.06.0.in.i.i.i140, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i142 = icmp eq ptr %.sroa.06.0.i.i.i141, null
  br i1 %.not.i.i.i142, label %.loopexit.i.i138.invoke, label %bb.as

bb.as:                                            ; preds = %.preheader362
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i141, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !29
  %i.hi = icmp eq i64 %i.hf, %i.hh
  br i1 %i.hi, label %.loopexit, label %.preheader362, !llvm.loop !7

bb.at:                                            ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit130
  %i.hj = load i64, ptr %i.ar, align 8, !tbaa !59 ; 2 uses
  %i.hk = urem i64 %i.hf, %i.hj                   ; 2 uses
  %i.hl = load ptr, ptr %1, align 8, !tbaa !58
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hk
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i.i.i132 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.i132, label %.loopexit.i.i138.invoke, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !64 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !29
  %i.hr = icmp eq i64 %i.hf, %i.hq
  br i1 %i.hr, label %.loopexit, label %.lr.ph.i.i.i.i.i133

bb.av:                                            ; preds = %bb.aw
  %i.hs = icmp eq i64 %i.hf, %i.hv
  br i1 %i.hs, label %.loopexit, label %.lr.ph.i.i.i.i.i133, !llvm.loop !8

.lr.ph.i.i.i.i.i133:                              ; preds = %bb.au, %bb.av
  %.020.i.i.i.i.i134 = phi ptr [ %i.ht, %bb.av ], [ %i.ho, %bb.au ]
  %i.ht = load ptr, ptr %.020.i.i.i.i.i134, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i.i135 = icmp eq ptr %i.ht, null
  br i1 %.not18.i.i.i.i.i135, label %.loopexit.i.i138.invoke, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i.i133
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !29 ; 2 uses
  %i.hw = urem i64 %i.hv, %i.hj
  %.not19.i.i.i.i.i136 = icmp eq i64 %i.hw, %i.hk
  br i1 %.not19.i.i.i.i.i136, label %bb.av, label %..loopexit_crit_edge21.i.i.i.i.i137, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i.i137:              ; preds = %bb.ao, %bb.aw
end_hunk_0
begin_hunk_1_@_ZN4bzla2bv14BvInterpolator11label_lemmaERSt13unordered_mapIlNS_3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS5_EEERS2_IlNS4_10ClauseKindES7_S9_SaISA_ISB_SG_EEERS2_INS_4NodeES5_S6_ISL_ES8_ISL_ESaISA_IKSL_S5_EEERSO_:bb.a
bb.am:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4NodeENS0_3sat12interpolants12VariableKindESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEE4findERSA_.exit216
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !100
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !100
  %i.dj = icmp eq ptr %i.dg, %i.di
  br i1 %i.dj, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i207, i64 16
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !140
  invoke void @_ZN4bzla2bv14BvInterpolator9label_varERSt13unordered_mapIlNS_3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS5_EEERKSt6vectorINS_8bitblast7AigNodeESaISI_EES5_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i32 noundef %i.dl)
          to label %bb.ao unwind label %.loopexit.split-lp461.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp461.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_NS1_3sat12interpolants12VariableKindEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i208, %bb.ah, %.preheader576, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_NS1_3sat12interpolants12VariableKindEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i, %bb.ab, %.thread, %bb.ae, %bb.aa, %bb.s, %bb.z, %bb.l, %bb.k, %bb.j, %bb.ai, %bb.an, %_ZNSt13unordered_mapIN4bzla4NodeENS0_3sat12interpolants12VariableKindESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEE4findERSA_.exit216
  %lpad.loopexit.split-lp969 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp461

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.af, %bb.ad
  %i.dm = load ptr, ptr %i.m, align 8, !tbaa !131
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 2 uses
  store ptr %i.dn, ptr %i.m, align 8, !tbaa !131
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dn) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %_ZNSt13unordered_mapIN4bzla4NodeENS0_3sat12interpolants12VariableKindESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEE7emplaceIJRS1_S4_EEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit, %bb.ao
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.do = load ptr, ptr %6, align 8, !tbaa !48    ; 4 uses
  %i.dp = load ptr, ptr %i.m, align 8, !tbaa !48  ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, label %bb.h, !llvm.loop !279

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.critedge
  %.not.i.i1.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i
  %i.dr = load ptr, ptr %i.l, align 8, !tbaa !130
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.do to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.du) #21
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.dv = load ptr, ptr %i.g, align 8, !tbaa !141 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i ], [ %i.dv, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit ] ; 3 uses
  %i.dw = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %i.dx) #20
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #21
  %.not.i.i.i.i219 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i219, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !12

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit
  %i.dy = load ptr, ptr %5, align 8, !tbaa !126
  %i.dz = load i64, ptr %i.f, align 8, !tbaa !127
  %i.ea = shl i64 %i.dz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dy, i8 0, i64 %i.ea, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.eb = load ptr, ptr %5, align 8, !tbaa !126   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.e
  br i1 %i.ec, label %_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ed = load i64, ptr %i.f, align 8, !tbaa !127
  %i.ee = shl i64 %i.ed, 3
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #21
  br label %_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev.exit

_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ef = load ptr, ptr %i.q, align 8, !tbaa !98, !nonnull !49, !align !50
  %i.eg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4bzla2bv13AigBitblaster4bitsERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(209) %i.ef, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store ptr %i.eh, ptr %11, align 8, !tbaa !96
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 1, ptr %i.ei, align 8, !tbaa !97
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ek, align 8, !tbaa !60
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false)
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !100 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !100 ; 2 uses
  %.not430553 = icmp eq ptr %i.em, %i.eo
  br i1 %.not430553, label %.preheader, label %.lr.ph558

.preheader:                                       ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit, %_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev.exit
  %.sroa.0382.0.lcssa = phi ptr [ null, %_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev.exit ], [ %.sroa.0382.5, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ]
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev.exit ], [ %.sroa.13.3, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ]
  %.sroa.29.0.lcssa = phi ptr [ null, %_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev.exit ], [ %.sroa.29.5, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.ax

.loopexit.split-lp461:                            ; preds = %.loopexit.split-lp461.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn161.pn = phi { ptr, i32 } [ %i.as, %bb.o ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn157421, %bb.y ], [ %i.ay, %bb.r ], [ %lpad.loopexit.split-lp969, %.loopexit.split-lp461.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp461, %bb.n
  %.pn161.pn.pn = phi { ptr, i32 } [ %.pn161.pn, %.loopexit.split-lp461 ], [ %i.ar, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.loopexit479
  %.pn161.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn, %bb.ar ], [ %.pn, %.loopexit479 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit338

.lr.ph558:                                        ; preds = %_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev.exit, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit
  %.sroa.0379.0557 = phi ptr [ %i.fk, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ], [ %i.em, %_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev.exit ] ; 3 uses
  %.sroa.29.0556 = phi ptr [ %.sroa.29.5, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ], [ null, %_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev.exit ] ; 6 uses
  %.sroa.13.0555 = phi ptr [ %.sroa.13.3, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ], [ null, %_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev.exit ] ; 3 uses
  %.sroa.0382.0554 = phi ptr [ %.sroa.0382.5, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ], [ null, %_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev.exit ] ; 7 uses
  %.not.i.i220 = icmp eq ptr %.sroa.13.0555, %.sroa.29.0556
  br i1 %.not.i.i220, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph558
  %i.es = ptrtoint ptr %.sroa.0379.0557 to i64
  store i64 %i.es, ptr %.sroa.13.0555, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit

bb.au:                                            ; preds = %.lr.ph558
  %i.et = ptrtoint ptr %.sroa.29.0556 to i64
  %i.eu = ptrtoint ptr %.sroa.0382.0554 to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 4 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775800
  br i1 %i.ew, label %bb.av, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc222 unwind label %.loopexit.split-lp456.loopexit.split-lp

.noexc222:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.ex = ashr exact i64 %i.ev, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ey = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ex ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  %i.fa = call i64 @llvm.umin.i64(i64 %i.ey, i64 1152921504606846975)
  %i.fb = select i1 %i.ez, i64 1152921504606846975, i64 %i.fa ; 3 uses
  %.not.i.i.i.i221 = icmp ne i64 %i.fb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i221)
  %i.fc = shl nuw nsw i64 %i.fb, 3
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #23
          to label %.noexc223 unwind label %.loopexit.split-lp456.loopexit.split-lp ; 5 uses

.noexc223:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ev
  %i.ff = ptrtoint ptr %.sroa.0379.0557 to i64
  store i64 %i.ff, ptr %i.fe, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0382.0554, %.sroa.29.0556
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc223, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i ], [ %i.fd, %.noexc223 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0382.0554, %.noexc223 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.fg = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !317
  store i64 %i.fg, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !316
  %i.fh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fh, %.sroa.29.0556
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc223
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fd, %.noexc223 ], [ %i.fi, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0382.0554, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0382.0554, i64 noundef %i.ev) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.at
  %.sroa.0382.5 = phi ptr [ %i.fd, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.0382.0554, %bb.at ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.13.0555, %bb.at ]
  %.sroa.29.5 = phi ptr [ %i.fj, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.29.0556, %bb.at ] ; 2 uses
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0379.0557, i64 8 ; 2 uses
  %.not430 = icmp eq ptr %i.fk, %i.eo
  br i1 %.not430, label %.preheader, label %.lr.ph558

.loopexit.split-lp456.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.av
  %lpad.loopexit.split-lp946 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.ax:                                            ; preds = %.preheader, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit258
  %.sroa.0382.1 = phi ptr [ %.sroa.0382.2, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit258 ], [ %.sroa.0382.0.lcssa, %.preheader ] ; 15 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit258 ], [ %.sroa.13.0.lcssa, %.preheader ] ; 10 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.2, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit258 ], [ %.sroa.29.0.lcssa, %.preheader ] ; 10 uses
  %i.fl = getelementptr inbounds i8, ptr %.sroa.13.1, i64 -8 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !111 ; 4 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !102 ; 4 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fp = trunc i64 %i.fn to i1
  br i1 %i.fp, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fq = and i64 %i.fn, -2
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !105
  %i.fu = sub nsw i64 0, %i.ft
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit

bb.ba:                                            ; preds = %bb.ay
  %i.fv = inttoptr i64 %i.fn to ptr
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !105
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit

_ZNK4bzla8bitblast7AigNode6get_idEv.exit:         ; preds = %bb.ba, %bb.az, %bb.ax
  %.0.i = phi i64 [ 0, %bb.ax ], [ %i.fu, %bb.az ], [ %i.fx, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.fy = call noundef i64 @llvm.abs.i64(i64 %.0.i, i1 true)
  store i64 %i.fy, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 3, ptr %i.d, align 4, !tbaa !69
  %i.fz = invoke { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants12VariableKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRlS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.bl ; 2 uses

_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit: ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit
  %.fca.1.extract = extractvalue { ptr, i8 } %i.fz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.ga = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.ga, label %bb.bb, label %bb.bm

bb.bb:                                            ; preds = %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit
  %i.gb = load i64, ptr %i.fm, align 8, !tbaa !102
  %i.gc = and i64 %i.gb, -2
  %i.gd = inttoptr i64 %i.gc to ptr
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24 ; 3 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !102
  %.not431 = icmp eq i64 %i.gf, 0
  br i1 %.not431, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit258, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i226 = icmp eq ptr %.sroa.13.1, %.sroa.29.1
  br i1 %.not.i.i226, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gg = ptrtoint ptr %i.ge to i64
  store i64 %i.gg, ptr %.sroa.13.1, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit241

bb.be:                                            ; preds = %bb.bc
  %i.gh = ptrtoint ptr %.sroa.13.1 to i64
  %i.gi = ptrtoint ptr %.sroa.0382.1 to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 4 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775800
  br i1 %i.gk, label %bb.bf, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i227

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc239 unwind label %.loopexit.split-lp446

.noexc239:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i227: ; preds = %bb.be
  %i.gl = ashr exact i64 %i.gj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i228 = call i64 @llvm.umax.i64(i64 %i.gl, i64 1)
  %i.gm = add nsw i64 %.sroa.speculated.i.i.i.i228, %i.gl ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gl
  %i.go = call i64 @llvm.umin.i64(i64 %i.gm, i64 1152921504606846975)
  %i.gp = select i1 %i.gn, i64 1152921504606846975, i64 %i.go ; 3 uses
  %.not.i.i.i.i229 = icmp ne i64 %i.gp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i229)
  %i.gq = shl nuw nsw i64 %i.gp, 3
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #23
          to label %.noexc240 unwind label %.loopexit445 ; 5 uses

.noexc240:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i227
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gj
  %i.gt = ptrtoint ptr %i.ge to i64
  store i64 %i.gt, ptr %i.gs, align 8
  %.not10.i.i.i.i.i.i230 = icmp eq ptr %.sroa.0382.1, %.sroa.13.1
  br i1 %.not10.i.i.i.i.i.i230, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i235, label %.lr.ph.i.i.i.i.i.i231

.lr.ph.i.i.i.i.i.i231:                            ; preds = %.noexc240, %.lr.ph.i.i.i.i.i.i231
  %.012.i.i.i.i.i.i232 = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i.i231 ], [ %i.gr, %.noexc240 ] ; 2 uses
  %.0911.i.i.i.i.i.i233 = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i231 ], [ %.sroa.0382.1, %.noexc240 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.gu = load i64, ptr %.0911.i.i.i.i.i.i233, align 8, !alias.scope !319
  store i64 %i.gu, ptr %.012.i.i.i.i.i.i232, align 8, !alias.scope !318
  %i.gv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i233, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i232, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i234 = icmp eq ptr %i.gv, %.sroa.13.1
  br i1 %.not.i.i.i.i.i.i234, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i235, label %.lr.ph.i.i.i.i.i.i231, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i235: ; preds = %.lr.ph.i.i.i.i.i.i231, %.noexc240
  %.0.lcssa.i.i.i.i.i.i236 = phi ptr [ %i.gr, %.noexc240 ], [ %i.gw, %.lr.ph.i.i.i.i.i.i231 ]
  %.not.i23.i.i.i237 = icmp eq ptr %.sroa.0382.1, null
  br i1 %.not.i23.i.i.i237, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i238, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i235
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0382.1, i64 noundef %i.gj) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i238

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i238: ; preds = %bb.bg, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i235
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gp
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit241

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit241: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i238, %bb.bd
  %.sroa.0382.6 = phi ptr [ %i.gr, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i238 ], [ %.sroa.0382.1, %bb.bd ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.i236.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i236, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i238 ], [ %.sroa.13.1, %bb.bd ] ; 4 uses
  %.sroa.29.6 = phi ptr [ %i.gx, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i238 ], [ %.sroa.29.1, %bb.bd ] ; 5 uses
  %.0.lcssa.i.i.i.i.i.i236.pn976 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i236.pn to i64
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i236.pn, i64 8 ; 2 uses
  %i.gy = load i64, ptr %i.fm, align 8
  %i.gz = and i64 %i.gy, -2
  %i.ha = inttoptr i64 %i.gz to ptr
  %.0.i242 = getelementptr inbounds nuw i8, ptr %i.ha, i64 32 ; 2 uses
  %.not.i.i243 = icmp eq ptr %.sroa.13.4, %.sroa.29.6
  br i1 %.not.i.i243, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit241
  %i.hb = ptrtoint ptr %.0.i242 to i64
  store i64 %i.hb, ptr %.sroa.13.4, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i236.pn, i64 16
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit258

bb.bi:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit241
  %i.hd = ptrtoint ptr %.sroa.29.6 to i64
  %i.he = ptrtoint ptr %.sroa.0382.6 to i64       ; 2 uses
  %i.hf = sub i64 %i.hd, %i.he                    ; 4 uses
  %i.hg = icmp eq i64 %i.hf, 9223372036854775800
  br i1 %i.hg, label %bb.bj, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i244

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc256 unwind label %.loopexit.split-lp451.loopexit.split-lp

.noexc256:                                        ; preds = %bb.bj
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i244: ; preds = %bb.bi
  %i.hh = ashr exact i64 %i.hf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i245 = call i64 @llvm.umax.i64(i64 %i.hh, i64 1)
  %i.hi = add nsw i64 %.sroa.speculated.i.i.i.i245, %i.hh ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.hh
  %i.hk = call i64 @llvm.umin.i64(i64 %i.hi, i64 1152921504606846975)
  %i.hl = select i1 %i.hj, i64 1152921504606846975, i64 %i.hk ; 3 uses
  %.not.i.i.i.i246 = icmp ne i64 %i.hl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i246)
  %i.hm = shl nuw nsw i64 %i.hl, 3
  %i.hn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #23
          to label %.noexc257 unwind label %.loopexit.split-lp451.loopexit.split-lp ; 6 uses

.noexc257:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i244
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hf
  %i.hp = ptrtoint ptr %.0.i242 to i64
  store i64 %i.hp, ptr %i.ho, align 8
  %.not10.i.i.i.i.i.i247 = icmp eq ptr %.sroa.0382.6, %.sroa.29.6
  br i1 %.not10.i.i.i.i.i.i247, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i252, label %.lr.ph.i.i.i.i.i.i248.preheader

.lr.ph.i.i.i.i.i.i248.preheader:                  ; preds = %.noexc257
  %i.hq = sub i64 %.0.lcssa.i.i.i.i.i.i236.pn976, %i.he ; 2 uses
  %i.hr = lshr i64 %i.hq, 3
  %i.hs = add nuw nsw i64 %i.hr, 1
  %xtraiter = and i64 %i.hs, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i248.prol.loopexit, label %.lr.ph.i.i.i.i.i.i248.prol

.lr.ph.i.i.i.i.i.i248.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i248.preheader, %.lr.ph.i.i.i.i.i.i248.prol
  %.012.i.i.i.i.i.i249.prol = phi ptr [ %i.hv, %.lr.ph.i.i.i.i.i.i248.prol ], [ %i.hn, %.lr.ph.i.i.i.i.i.i248.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i250.prol = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i.i248.prol ], [ %.sroa.0382.6, %.lr.ph.i.i.i.i.i.i248.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i248.prol ], [ 0, %.lr.ph.i.i.i.i.i.i248.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.ht = load i64, ptr %.0911.i.i.i.i.i.i250.prol, align 8, !alias.scope !321
  store i64 %i.ht, ptr %.012.i.i.i.i.i.i249.prol, align 8, !alias.scope !320
  %i.hu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250.prol, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i248.prol.loopexit, label %.lr.ph.i.i.i.i.i.i248.prol, !llvm.loop !289

.lr.ph.i.i.i.i.i.i248.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i248.prol, %.lr.ph.i.i.i.i.i.i248.preheader
  %.lcssa896.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i248.preheader ], [ %i.hv, %.lr.ph.i.i.i.i.i.i248.prol ]
  %.012.i.i.i.i.i.i249.unr = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i.i248.preheader ], [ %i.hv, %.lr.ph.i.i.i.i.i.i248.prol ]
  %.0911.i.i.i.i.i.i250.unr = phi ptr [ %.sroa.0382.6, %.lr.ph.i.i.i.i.i.i248.preheader ], [ %i.hu, %.lr.ph.i.i.i.i.i.i248.prol ]
  %i.hw = icmp ult i64 %i.hq, 56
  br i1 %i.hw, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i252, label %.lr.ph.i.i.i.i.i.i248

.lr.ph.i.i.i.i.i.i248:                            ; preds = %.lr.ph.i.i.i.i.i.i248.prol.loopexit, %.lr.ph.i.i.i.i.i.i248
  %.012.i.i.i.i.i.i249 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i248 ], [ %.012.i.i.i.i.i.i249.unr, %.lr.ph.i.i.i.i.i.i248.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i250 = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i.i248 ], [ %.0911.i.i.i.i.i.i250.unr, %.lr.ph.i.i.i.i.i.i248.prol.loopexit ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.hx = load i64, ptr %.0911.i.i.i.i.i.i250, align 8, !alias.scope !321
  store i64 %i.hx, ptr %.012.i.i.i.i.i.i249, align 8, !alias.scope !320
  %i.hy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.ia = load i64, ptr %i.hy, align 8, !alias.scope !323
  store i64 %i.ia, ptr %i.hz, align 8, !alias.scope !322
  %i.ib = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 16
  %i.ic = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.id = load i64, ptr %i.ib, align 8, !alias.scope !325
  store i64 %i.id, ptr %i.ic, align 8, !alias.scope !324
  %i.ie = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 24
  %i.if = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.ig = load i64, ptr %i.ie, align 8, !alias.scope !327
  store i64 %i.ig, ptr %i.if, align 8, !alias.scope !326
  %i.ih = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 32
  %i.ii = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.ij = load i64, ptr %i.ih, align 8, !alias.scope !329
  store i64 %i.ij, ptr %i.ii, align 8, !alias.scope !328
  %i.ik = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 40
  %i.il = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.im = load i64, ptr %i.ik, align 8, !alias.scope !331
  store i64 %i.im, ptr %i.il, align 8, !alias.scope !330
  %i.in = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 48
  %i.io = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.ip = load i64, ptr %i.in, align 8, !alias.scope !333
  store i64 %i.ip, ptr %i.io, align 8, !alias.scope !332
  %i.iq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 56 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.is = load i64, ptr %i.iq, align 8, !alias.scope !335
  store i64 %i.is, ptr %i.ir, align 8, !alias.scope !334
  %i.it = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 64
  %i.iu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i251.7 = icmp eq ptr %i.iq, %.0.lcssa.i.i.i.i.i.i236.pn
  br i1 %.not.i.i.i.i.i.i251.7, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i252, label %.lr.ph.i.i.i.i.i.i248, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i252: ; preds = %.lr.ph.i.i.i.i.i.i248.prol.loopexit, %.lr.ph.i.i.i.i.i.i248, %.noexc257
  %.0.lcssa.i.i.i.i.i.i253 = phi ptr [ %i.hn, %.noexc257 ], [ %.lcssa896.unr, %.lr.ph.i.i.i.i.i.i248.prol.loopexit ], [ %i.iu, %.lr.ph.i.i.i.i.i.i248 ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i253, i64 8
  %.not.i23.i.i.i254 = icmp eq ptr %.sroa.0382.6, null
  br i1 %.not.i23.i.i.i254, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i255, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i252
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0382.6, i64 noundef %i.hf) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i255

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i255: ; preds = %bb.bk, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i252
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hl
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit258

bb.bl:                                            ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.cw

.loopexit.split-lp451.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i244, %bb.bj
  %lpad.loopexit.split-lp888 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.bm:                                            ; preds = %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit
  %.fca.0.extract = extractvalue { ptr, i8 } %i.fz, 0
  %i.iy = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !68
  %i.ja = icmp eq i32 %i.iz, 3
  br i1 %i.ja, label %bb.bn, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit258

bb.bn:                                            ; preds = %bb.bm
  %i.jb = load i64, ptr %i.fm, align 8
  %i.jc = and i64 %i.jb, -2
  %i.jd = inttoptr i64 %i.jc to ptr               ; 2 uses
  %.0.i259 = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.je = load i64, ptr %.0.i259, align 8, !tbaa !102 ; 4 uses
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit261, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jg = trunc i64 %i.je to i1
  br i1 %i.jg, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jh = and i64 %i.je, -2
  %i.ji = inttoptr i64 %i.jh to ptr
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !105
  %i.jl = sub nsw i64 0, %i.jk
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit261

bb.bq:                                            ; preds = %bb.bo
  %i.jm = inttoptr i64 %i.je to ptr
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !105
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit261

_ZNK4bzla8bitblast7AigNode6get_idEv.exit261:      ; preds = %bb.bq, %bb.bp, %bb.bn
  %.0.i260 = phi i64 [ 0, %bb.bn ], [ %i.jl, %bb.bp ], [ %i.jo, %bb.bq ]
  %i.jp = call noundef i64 @llvm.abs.i64(i64 %.0.i260, i1 true) ; 4 uses
  %i.jq = load i64, ptr %i.ep, align 8, !tbaa !123
  %.not.not.i.i.i = icmp eq i64 %i.jq, 0          ; 2 uses
  br i1 %.not.not.i.i.i, label %.preheader571, label %bb.bs

.preheader571:                                    ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit261, %bb.br
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.br ], [ %i.er, %_ZNK4bzla8bitblast7AigNode6get_idEv.exit261 ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i262 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i262, label %.loopexit.i.i274.invoke, label %bb.br

bb.br:                                            ; preds = %.preheader571
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !29
  %i.jt = icmp eq i64 %i.jp, %i.js
  br i1 %i.jt, label %.loopexit440, label %.preheader571, !llvm.loop !7

bb.bs:                                            ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit261
  %i.ju = load i64, ptr %i.eq, align 8, !tbaa !59 ; 2 uses
  %i.jv = urem i64 %i.jp, %i.ju                   ; 2 uses
  %i.jw = load ptr, ptr %1, align 8, !tbaa !58
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.jv
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i274.invoke, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !64 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !29
  %i.kc = icmp eq i64 %i.jp, %i.kb
  br i1 %i.kc, label %.loopexit440, label %.lr.ph.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bv
  %i.kd = icmp eq i64 %i.jp, %i.kg
  br i1 %i.kd, label %.loopexit440, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bt, %bb.bu
  %.020.i.i.i.i.i = phi ptr [ %i.ke, %bb.bu ], [ %i.jz, %bb.bt ]
  %i.ke = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ke, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i274.invoke, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !29 ; 2 uses
  %i.kh = urem i64 %i.kg, %i.ju
  %.not19.i.i.i.i.i = icmp eq i64 %i.kh, %i.jv
  br i1 %.not19.i.i.i.i.i, label %bb.bu, label %..loopexit_crit_edge21.i.i.i.i.i273, !llvm.loop !8

.loopexit440:                                     ; preds = %bb.bu, %bb.br, %bb.bt
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.br ], [ %i.jz, %bb.bt ], [ %i.ke, %bb.bu ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !69 ; 3 uses
  %.0.i264 = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.kk = load i64, ptr %.0.i264, align 8, !tbaa !102 ; 4 uses
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit266, label %bb.bw

bb.bw:                                            ; preds = %.loopexit440
  %i.km = trunc i64 %i.kk to i1
  br i1 %i.km, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.kn = and i64 %i.kk, -2
  %i.ko = inttoptr i64 %i.kn to ptr
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !105
  %i.kr = sub nsw i64 0, %i.kq
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit266

bb.by:                                            ; preds = %bb.bw
  %i.ks = inttoptr i64 %i.kk to ptr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !105
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit266

_ZNK4bzla8bitblast7AigNode6get_idEv.exit266:      ; preds = %bb.by, %bb.bx, %.loopexit440
  %.0.i265 = phi i64 [ 0, %.loopexit440 ], [ %i.kr, %bb.bx ], [ %i.ku, %bb.by ]
  %i.kv = call noundef i64 @llvm.abs.i64(i64 %.0.i265, i1 true) ; 4 uses
  br i1 %.not.not.i.i.i, label %.preheader568, label %bb.ca

.preheader568:                                    ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit266, %bb.bz
  %.sroa.06.0.in.i.i.i276 = phi ptr [ %.sroa.06.0.i.i.i277, %bb.bz ], [ %i.er, %_ZNK4bzla8bitblast7AigNode6get_idEv.exit266 ]
  %.sroa.06.0.i.i.i277 = load ptr, ptr %.sroa.06.0.in.i.i.i276, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i278 = icmp eq ptr %.sroa.06.0.i.i.i277, null
  br i1 %.not.i.i.i278, label %.loopexit.i.i274.invoke, label %bb.bz

bb.bz:                                            ; preds = %.preheader568
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i277, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !29
  %i.ky = icmp eq i64 %i.kv, %i.kx
  br i1 %i.ky, label %.loopexit437, label %.preheader568, !llvm.loop !7

bb.ca:                                            ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit266
  %i.kz = load i64, ptr %i.eq, align 8, !tbaa !59 ; 2 uses
  %i.la = urem i64 %i.kv, %i.kz                   ; 2 uses
  %i.lb = load ptr, ptr %1, align 8, !tbaa !58
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.la
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i.i.i268 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i.i.i268, label %.loopexit.i.i274.invoke, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !64 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !29
  %i.lh = icmp eq i64 %i.kv, %i.lg
  br i1 %i.lh, label %.loopexit437, label %.lr.ph.i.i.i.i.i269

bb.cc:                                            ; preds = %bb.cd
  %i.li = icmp eq i64 %i.kv, %i.ll
  br i1 %i.li, label %.loopexit437, label %.lr.ph.i.i.i.i.i269, !llvm.loop !8

.lr.ph.i.i.i.i.i269:                              ; preds = %bb.cb, %bb.cc
  %.020.i.i.i.i.i270 = phi ptr [ %i.lj, %bb.cc ], [ %i.le, %bb.cb ]
  %i.lj = load ptr, ptr %.020.i.i.i.i.i270, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i.i271 = icmp eq ptr %i.lj, null
  br i1 %.not18.i.i.i.i.i271, label %.loopexit.i.i274.invoke, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i.i269
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !29 ; 2 uses
  %i.lm = urem i64 %i.ll, %i.kz
  %.not19.i.i.i.i.i272 = icmp eq i64 %i.lm, %i.la
  br i1 %.not19.i.i.i.i.i272, label %bb.cc, label %..loopexit_crit_edge21.i.i.i.i.i273, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i.i273:              ; preds = %bb.bv, %bb.cd
  br label %.loopexit.i.i274.invoke, !llvm.loop !8

.loopexit.i.i274.invoke:                          ; preds = %bb.ca, %bb.bs, %.lr.ph.i.i.i.i.i, %.preheader571, %.lr.ph.i.i.i.i.i269, %.preheader568, %..loopexit_crit_edge21.i.i.i.i.i273
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.32) #22
          to label %.loopexit.i.i274.cont unwind label %.loopexit.split-lp446

.loopexit.i.i274.cont:                            ; preds = %.loopexit.i.i274.invoke
  unreachable

.loopexit437:                                     ; preds = %bb.cc, %bb.bz, %bb.cb
  %.sroa.06.1.i.i.i275 = phi ptr [ %.sroa.06.0.i.i.i277, %bb.bz ], [ %i.le, %bb.cb ], [ %i.lj, %bb.cc ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i275, i64 16
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !69 ; 3 uses
  %i.lp = icmp ne i32 %i.kj, %i.lo
end_hunk_1
begin_hunk_2_@_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev:bb.a

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

declare void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4bzla11UnsupportedC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4bzla11UnsupportedE, i64 16), ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !33   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.f, ptr %i.a, align 8, !tbaa !29
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !31
  %i.i = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.i, ptr %i.c, align 8, !tbaa !32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !32
  store i8 %i.k, ptr %i.j, align 1, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !33
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.e:                                             ; preds = %.noexc.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4bzla11UnsupportedD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4bzla11UnsupportedE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !32
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noundef zeroext i1 @_ZN4bzla2bv8BvSolver7is_leafERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2bv14BvInterpolator9label_varERSt13unordered_mapIlNS_3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS5_EEERKSt6vectorINS_8bitblast7AigNodeESaISI_EES5_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode.625", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %5 = alloca %"class.std::unordered_set.478", align 8 ; 14 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 1, ptr %i.d, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %2, align 8, !tbaa !100    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100  ; 2 uses
  %.not114152 = icmp ne ptr %i.h, %i.j
  call void @llvm.assume(i1 %.not114152)
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit
  %.sroa.084.0156 = phi ptr [ %.sroa.084.6, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ], [ null, %bb.a ] ; 7 uses
  %.sroa.13.0155 = phi ptr [ %.sroa.13.4, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ], [ null, %bb.a ] ; 7 uses
  %.sroa.081.0154 = phi ptr [ %i.ac, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ], [ %i.h, %bb.a ] ; 3 uses
  %.sroa.31.0153 = phi ptr [ %.sroa.31.6, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ], [ null, %bb.a ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.0155, %.sroa.31.0153
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = ptrtoint ptr %.sroa.081.0154 to i64
  store i64 %i.k, ptr %.sroa.13.0155, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.l = ptrtoint ptr %.sroa.13.0155 to i64
  %i.m = ptrtoint ptr %.sroa.084.0156 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc.a unwind label %.loopexit.split-lp122.loopexit.split-lp

.noexc.a:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i.a = icmp ne i64 %i.t, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.a)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #23
          to label %.noexc30 unwind label %.loopexit.split-lp122.loopexit.split-lp ; 5 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %.sroa.081.0154 to i64
  store i64 %i.x, ptr %i.w, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.084.0156, %.sroa.13.0155
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc30, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %.noexc30 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.084.0156, %.noexc30 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.y = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !361
  store i64 %i.y, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !360
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, %.sroa.13.0155
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc30
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.v, %.noexc30 ], [ %i.aa, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.084.0156, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0156, i64 noundef %i.n) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.b
  %.sroa.31.6 = phi ptr [ %i.ab, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.31.0153, %bb.b ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.13.0155, %bb.b ]
  %.sroa.084.6 = phi ptr [ %i.v, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.084.0156, %bb.b ] ; 2 uses
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.081.0154, i64 8 ; 2 uses
  %.not114 = icmp eq ptr %i.ac, %i.j
  br i1 %.not114, label %.preheader, label %.lr.ph

.loopexit.split-lp122.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.d
  %lpad.loopexit.split-lp243 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.preheader:                                       ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit, %bb.v
  %.sroa.31.1 = phi ptr [ %.sroa.31.3, %bb.v ], [ %.sroa.31.6, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ] ; 8 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.3, %bb.v ], [ %.sroa.13.4, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %.sroa.084.1 = phi ptr [ %.sroa.084.3, %bb.v ], [ %.sroa.084.6, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit ] ; 9 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.13.1, i64 -8 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !111 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !102 ; 4 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.ah = trunc i64 %i.af to i1
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = and i64 %i.af, -2
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !105
  %i.am = sub nsw i64 0, %i.al
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit

bb.h:                                             ; preds = %bb.f
  %i.an = inttoptr i64 %i.af to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !105
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit

_ZNK4bzla8bitblast7AigNode6get_idEv.exit:         ; preds = %bb.h, %bb.g, %.preheader
  %.0.i = phi i64 [ 0, %.preheader ], [ %i.am, %bb.g ], [ %i.ap, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.aq = call noundef i64 @llvm.abs.i64(i64 %.0.i, i1 true)
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %5, ptr %4, align 8, !tbaa !113
  %i.ar = invoke { ptr, i8 } @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKlSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIlLb0EEEEEEEESt4pairINS1_14_Node_iteratorIlLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.fca.1.extract6 = extractvalue { ptr, i8 } %i.ar, 1
  %i.as = trunc nuw i8 %.fca.1.extract6 to i1
  br i1 %i.as, label %.critedge, label %bb.v

.critedge:                                        ; preds = %bb.i
  %i.at = load i64, ptr %i.ae, align 8, !tbaa !102
  %i.au = and i64 %i.at, -2
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !102
  %.not115 = icmp eq i64 %i.ax, 0
  br i1 %.not115, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit65, label %bb.j

bb.j:                                             ; preds = %.critedge
  %.not.i.i33 = icmp eq ptr %i.ad, %.sroa.31.1
  br i1 %.not.i.i33, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = ptrtoint ptr %i.aw to i64
  store i64 %i.ay, ptr %i.ad, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit48

bb.l:                                             ; preds = %bb.j
  %i.az = ptrtoint ptr %.sroa.31.1 to i64
  %i.ba = ptrtoint ptr %.sroa.084.1 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.m, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i34

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i34: ; preds = %bb.l
  %i.bd = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i35 = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i35, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i.i.i.i36 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i36)
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #23
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i34
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb
  %i.bl = ptrtoint ptr %i.aw to i64
  store i64 %i.bl, ptr %i.bk, align 8
  %.not10.i.i.i.i.i.i37 = icmp eq ptr %.sroa.084.1, %.sroa.31.1
  br i1 %.not10.i.i.i.i.i.i37, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i42, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i39 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i38 ], [ %i.bj, %.noexc47 ] ; 2 uses
  %.0911.i.i.i.i.i.i40 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i38 ], [ %.sroa.084.1, %.noexc47 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.bm = load i64, ptr %.0911.i.i.i.i.i.i40, align 8, !alias.scope !363
  store i64 %i.bm, ptr %.012.i.i.i.i.i.i39, align 8, !alias.scope !362
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i40, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i39, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i41 = icmp eq ptr %i.bn, %.sroa.31.1
  br i1 %.not.i.i.i.i.i.i41, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i42, label %.lr.ph.i.i.i.i.i.i38, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i42: ; preds = %.lr.ph.i.i.i.i.i.i38, %.noexc47
  %.0.lcssa.i.i.i.i.i.i43 = phi ptr [ %i.bj, %.noexc47 ], [ %i.bo, %.lr.ph.i.i.i.i.i.i38 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i43, i64 8
  %.not.i23.i.i.i44 = icmp eq ptr %.sroa.084.1, null
  br i1 %.not.i23.i.i.i44, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i45, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i42
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.1, i64 noundef %i.bb) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i45

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i45: ; preds = %bb.n, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i42
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit48

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit48: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i45, %bb.k
  %.sroa.31.7 = phi ptr [ %i.bq, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i45 ], [ %.sroa.31.1, %bb.k ] ; 6 uses
  %.sroa.13.5 = phi ptr [ %i.bp, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i45 ], [ %.sroa.13.1, %bb.k ] ; 3 uses
  %.sroa.084.7 = phi ptr [ %i.bj, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i45 ], [ %.sroa.084.1, %bb.k ] ; 7 uses
  %i.br = load i64, ptr %i.ae, align 8
  %i.bs = and i64 %i.br, -2
  %i.bt = inttoptr i64 %i.bs to ptr
  %.0.i49 = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  %.not.i.i50 = icmp eq ptr %.sroa.13.5, %.sroa.31.7
  br i1 %.not.i.i50, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit48
  %i.bu = ptrtoint ptr %.0.i49 to i64
  store i64 %i.bu, ptr %.sroa.13.5, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.13.5, i64 8
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit65

bb.p:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit48
  %i.bw = ptrtoint ptr %.sroa.31.7 to i64
  %i.bx = ptrtoint ptr %.sroa.084.7 to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 4 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %bb.q, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i51

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc63 unwind label %.loopexit.split-lp117.loopexit.split-lp

.noexc63:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i51: ; preds = %bb.p
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i52 = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i52, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i.i.i53 = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i.i53)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #23
          to label %.noexc64 unwind label %.loopexit.split-lp117.loopexit.split-lp ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i51
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  %i.ci = ptrtoint ptr %.0.i49 to i64
  store i64 %i.ci, ptr %i.ch, align 8
  %.not10.i.i.i.i.i.i54 = icmp eq ptr %.sroa.084.7, %.sroa.31.7
  br i1 %.not10.i.i.i.i.i.i54, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i59, label %.lr.ph.i.i.i.i.i.i55

.lr.ph.i.i.i.i.i.i55:                             ; preds = %.noexc64, %.lr.ph.i.i.i.i.i.i55
  %.012.i.i.i.i.i.i56 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i55 ], [ %i.cg, %.noexc64 ] ; 2 uses
  %.0911.i.i.i.i.i.i57 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i55 ], [ %.sroa.084.7, %.noexc64 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.cj = load i64, ptr %.0911.i.i.i.i.i.i57, align 8, !alias.scope !365
  store i64 %i.cj, ptr %.012.i.i.i.i.i.i56, align 8, !alias.scope !364
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i57, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i56, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i58 = icmp eq ptr %i.ck, %.sroa.31.7
  br i1 %.not.i.i.i.i.i.i58, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i59, label %.lr.ph.i.i.i.i.i.i55, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i59: ; preds = %.lr.ph.i.i.i.i.i.i55, %.noexc64
  %.0.lcssa.i.i.i.i.i.i60 = phi ptr [ %i.cg, %.noexc64 ], [ %i.cl, %.lr.ph.i.i.i.i.i.i55 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i60, i64 8
  %.not.i23.i.i.i61 = icmp eq ptr %.sroa.084.7, null
  br i1 %.not.i23.i.i.i61, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i62, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i59
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.7, i64 noundef %i.by) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i62

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i62: ; preds = %bb.r, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i59
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit65

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit, %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i34, %bb.m
  %lpad.loopexit.split-lp222 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp117.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i51, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit65: ; preds = %bb.o, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i62, %.critedge
  %.sroa.31.2 = phi ptr [ %.sroa.31.1, %.critedge ], [ %i.cn, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i62 ], [ %.sroa.31.7, %bb.o ] ; 4 uses
  %.sroa.13.2 = phi ptr [ %i.ad, %.critedge ], [ %i.cm, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i62 ], [ %i.bv, %bb.o ] ; 3 uses
  %.sroa.084.2 = phi ptr [ %.sroa.084.1, %.critedge ], [ %i.cg, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i62 ], [ %.sroa.084.7, %bb.o ] ; 4 uses
  %i.co = invoke { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlN4bzla3sat12interpolants12VariableKindEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRlRS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.u ; 2 uses

_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit65
  %.fca.1.extract = extractvalue { ptr, i8 } %i.co, 1
  %i.cp = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.cp, label %bb.v, label %bb.s

bb.s:                                             ; preds = %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit
  %.fca.0.extract = extractvalue { ptr, i8 } %i.co, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !68 ; 2 uses
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !69
  %.not = icmp eq i32 %i.cr, %i.cs
  %.not27 = icmp eq i32 %i.cr, 2
  %or.cond = or i1 %.not27, %.not
  br i1 %or.cond, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 2, ptr %i.cq, align 8, !tbaa !68
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit65
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit, %bb.s, %bb.t, %bb.i
  %.sroa.31.3 = phi ptr [ %.sroa.31.1, %bb.i ], [ %.sroa.31.2, %bb.t ], [ %.sroa.31.2, %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit ], [ %.sroa.31.2, %bb.s ] ; 2 uses
  %.sroa.13.3 = phi ptr [ %i.ad, %bb.i ], [ %.sroa.13.2, %bb.t ], [ %.sroa.13.2, %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit ], [ %.sroa.13.2, %bb.s ] ; 3 uses
  %.sroa.084.3 = phi ptr [ %.sroa.084.1, %bb.i ], [ %.sroa.084.2, %bb.t ], [ %.sroa.084.2, %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlRS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit ], [ %.sroa.084.2, %bb.s ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.cu = icmp eq ptr %.sroa.084.3, %.sroa.13.3
  br i1 %i.cu, label %bb.w, label %.preheader, !llvm.loop !359

bb.w:                                             ; preds = %bb.v
  %i.cv = load ptr, ptr %i.e, align 8, !tbaa !114 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i ], [ %i.cv, %bb.w ] ; 2 uses
  %i.cw = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #21
  %.not.i.i.i.i67 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i67, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.w
  %i.cx = load ptr, ptr %5, align 8, !tbaa !96
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !97
  %i.cz = shl i64 %i.cy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %i.cz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %5, align 8, !tbaa !96    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.c
  br i1 %i.db, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit.a, label %bb.x

bb.x:                                             ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.dc = load i64, ptr %i.d, align 8, !tbaa !97
  %i.dd = shl i64 %i.dc, 3
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit.a

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit.a: ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.de = ptrtoint ptr %.sroa.31.3 to i64
  %i.df = ptrtoint ptr %.sroa.13.3 to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.3, i64 noundef %i.dg) #21
  ret void

bb.y:                                             ; preds = %.loopexit.split-lp117.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.u
  %.sroa.31.4 = phi ptr [ %.sroa.31.2, %bb.u ], [ %.sroa.31.1, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.31.7, %.loopexit.split-lp117.loopexit.split-lp ]
  %.sroa.084.4 = phi ptr [ %.sroa.084.2, %bb.u ], [ %.sroa.084.1, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.084.7, %.loopexit.split-lp117.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.u ], [ %lpad.loopexit.split-lp222, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp117.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp122.loopexit.split-lp, %bb.y
  %.sroa.31.5 = phi ptr [ %.sroa.31.4, %bb.y ], [ %.sroa.13.0155, %.loopexit.split-lp122.loopexit.split-lp ]
  %.sroa.084.5 = phi ptr [ %.sroa.084.4, %bb.y ], [ %.sroa.084.0156, %.loopexit.split-lp122.loopexit.split-lp ] ; 3 uses
  %.pn28 = phi { ptr, i32 } [ %.pn, %bb.y ], [ %lpad.loopexit.split-lp243, %.loopexit.split-lp122.loopexit.split-lp ]
  call void @_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i68 = icmp eq ptr %.sroa.084.5, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit69, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dh = ptrtoint ptr %.sroa.31.5 to i64
  %i.di = ptrtoint ptr %.sroa.084.5 to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.5, i64 noundef %i.dj) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit69

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit69: ; preds = %bb.z, %bb.aa
  resume { ptr, i32 } %.pn28
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !129    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #20
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !13

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !129
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !130
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #21
  br label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %i.d) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #21
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !127
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %0, align 8, !tbaa !126    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !127
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblastlsERSoRKNS0_7AigNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla3sat12interpolantslsERSoNS1_10ClauseKindE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2bv14BvInterpolator12label_constsERSt13unordered_mapIlNS_3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS5_EEERS2_INS_4NodeES5_S6_ISG_ES8_ISG_ESaISA_IKSG_S5_EEERKSt6vectorISG_SaISG_EES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::unordered_map.513", align 8 ; 13 uses
  %6 = alloca %"class.std::vector.190", align 8   ; 14 uses
  %7 = alloca %"class.bzla::Node", align 8        ; 18 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %8 = alloca %"class.bzla::Node", align 8        ; 8 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 1, ptr %i.d, align 8, !tbaa !127
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.h = load ptr, ptr %3, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN4bzla4NodeESaIS1_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvT_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.h, ptr %i.j)
          to label %_ZNSt6vectorIN4bzla4NodeESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEvEET_SA_RKS2_.exit.preheader unwind label %bb.b

_ZNSt6vectorIN4bzla4NodeESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEvEET_SA_RKS2_.exit.preheader: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !48
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEvEET_SA_RKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %6, align 8, !tbaa !129    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !130
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #21
  br label %.body

_ZNSt6vectorIN4bzla4NodeESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEvEET_SA_RKS2_.exit: ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEvEET_SA_RKS2_.exit.preheader, %bb.ap
  %i.v = phi ptr [ %.pre, %_ZNSt6vectorIN4bzla4NodeESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEvEET_SA_RKS2_.exit.preheader ], [ %i.bw, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEvEET_SA_RKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 1, ptr %i.b, align 1, !tbaa !118
  %i.x = invoke { ptr, i8 } @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_bESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS1_bEEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEE7emplaceIJRS1_bEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.i ; 2 uses

_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEE7emplaceIJRS1_bEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit: ; preds = %bb.d
  %.fca.1.extract11 = extractvalue { ptr, i8 } %i.x, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.y = trunc nuw i8 %.fca.1.extract11 to i1
  br i1 %i.y, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZNSt13unordered_mapIN4bzla4NodeEbSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_bEEE7emplaceIJRS1_bEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.aa = invoke noundef ptr @_ZNK4bzla4Node5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.f unwind label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.ab = invoke noundef ptr @_ZNK4bzla4Node3endEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.g unwind label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.ad = ptrtoint ptr %i.z to i64
end_hunk_2
