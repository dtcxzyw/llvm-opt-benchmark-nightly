Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/aig_bitblaster?download=true
inline.NumInlined: 1401
inline.NumDeleted: 546
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4bzla8bitblast7AigNodeD1Ev

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN4bzla2bv13AigBitblaster14count_aig_andsERKNS_4NodeERSt13unordered_setISt17reference_wrapperIKNS_8bitblast7AigNodeEESt4hashIS8_ESt8equal_toISA_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"class.std::vector.23", align 8    ; 15 uses
  %5 = alloca %"class.std::reference_wrapper.31", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !66
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4bzla2bv13AigBitblaster4bitsERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !297
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = load ptr, ptr %4, align 8, !tbaa !297    ; 2 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  invoke void @_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS4_S_IS3_SaIS3_EEEEEEvNSA_IPS5_S7_EET_SH_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.m, ptr %i.f, ptr %i.h)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !297
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42
  %i.o = phi ptr [ %i.de, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42 ], [ %.pre, %.preheader ]
  %.020 = phi i64 [ %.121, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42 ], [ 0, %.preheader ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69   ; 3 uses
  store ptr %i.p, ptr %i.d, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.q, ptr %5, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %2, ptr %3, align 8, !tbaa !299
  %i.r = invoke { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIKN4bzla8bitblast7AigNodeEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS3_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS5_S5_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.fca.1.extract = extractvalue { ptr, i8 } %i.r, 1
  %i.s = trunc i8 %.fca.1.extract to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %i.s, label %bb.f, label %._ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42thread-pre-split_crit_edge

._ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42thread-pre-split_crit_edge: ; preds = %bb.e
  %.pre56.pre = load ptr, ptr %i.d, align 8, !tbaa !297
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42thread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.q, align 8, !tbaa !53
  %i.u = and i64 %i.t, -2
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !53
  %.not = icmp eq i64 %i.x, 0
  %.pre56.pre57 = load ptr, ptr %i.d, align 8, !tbaa !297 ; 6 uses
  br i1 %.not, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = add i64 %.020, 1                         ; 2 uses
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !72
  %.not.i.i = icmp eq ptr %.pre56.pre57, %i.z
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.w to i64
  store i64 %i.aa, ptr %.pre56.pre57, align 8
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !71
  %.pre55 = load ptr, ptr %i.n, align 8, !tbaa !72
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %4, align 8, !tbaa !73    ; 7 uses
  %i.ae = ptrtoint ptr %.pre56.pre57 to i64       ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 4 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %.invoke, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke:                                          ; preds = %bb.l, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #17
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  %i.aq = ptrtoint ptr %i.w to i64
  store i64 %i.aq, ptr %i.ap, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ad, %.pre56.pre57
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc25
  %i.ar = ptrtoaddr ptr %i.ao to i64
  %i.as = add i64 %i.ae, -8
  %i.at = sub i64 %i.as, %i.af                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check81 = icmp ult i64 %i.at, 24
  %i.aw = sub i64 %i.af, %i.ar
  %diff.check83 = icmp ugt i64 %i.aw, -32
  %or.cond = or i1 %min.iters.check81, %diff.check83
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader99, label %vector.ph84

vector.ph84:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec85 = and i64 %i.av, 4611686018427387900   ; 3 uses
  %i.ax = shl i64 %n.vec85, 3                     ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ad, i64 %i.ax
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next92, %vector.body86 ] ; 2 uses
  %i.ba = shl i64 %index87, 3                     ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.ao, i64 %i.ba ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.ad, i64 %i.ba ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.bb = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load90 = load <2 x i64>, ptr %next.gep89, align 8, !alias.scope !301
  %wide.load91 = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !301
  %i.bc = getelementptr i8, ptr %next.gep88, i64 16
  store <2 x i64> %wide.load90, ptr %next.gep88, align 8, !alias.scope !300
  store <2 x i64> %wide.load91, ptr %i.bc, align 8, !alias.scope !300
  %index.next92 = add nuw i64 %index87, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next92, %n.vec85
  br i1 %i.bd, label %middle.block93, label %vector.body86, !llvm.loop !289

middle.block93:                                   ; preds = %vector.body86
  %cmp.n94 = icmp eq i64 %i.av, %n.vec85
  br i1 %cmp.n94, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader99

.lr.ph.i.i.i.i.i.i.preheader99:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block93
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block93 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.az, %middle.block93 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader99, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader99 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader99 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.be = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !301
  store i64 %i.be, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !300
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, %.pre56.pre57
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !290

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block93, %.noexc25
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ao, %.noexc25 ], [ %i.ay, %middle.block93 ], [ %i.bg, %.lr.ph.i.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.bk) #18
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ao, ptr %4, align 8, !tbaa !73
  store ptr %i.bh, ptr %i.d, align 8, !tbaa !71
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 2 uses
  store ptr %i.bl, ptr %i.n, align 8, !tbaa !72
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.h
  %i.bm = phi ptr [ %i.bl, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.pre55, %bb.h ] ; 4 uses
  %i.bn = phi ptr [ %i.bh, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ac, %bb.h ] ; 3 uses
  %6 = ptrtoaddr ptr %i.bm to i64
  %i.bo = load i64, ptr %i.q, align 8
  %i.bp = and i64 %i.bo, -2
  %i.bq = inttoptr i64 %i.bp to ptr
  %.0.i26 = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.bn, %i.bm
  br i1 %.not.i.i27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit
  %i.br = ptrtoint ptr %.0.i26 to i64
  store i64 %i.br, ptr %i.bn, align 8
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.d, align 8, !tbaa !71
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42thread-pre-split

bb.l:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit
  %i.bu = load ptr, ptr %4, align 8, !tbaa !73    ; 7 uses
  %i.bv = ptrtoint ptr %i.bn to i64
  %i.bw = ptrtoint ptr %i.bu to i64               ; 4 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %.invoke, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i28

_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i28: ; preds = %bb.l
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i29 = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i.i29, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i.i30 = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i30)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #17
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bx
  %i.ch = ptrtoint ptr %.0.i26 to i64
  store i64 %i.ch, ptr %i.cg, align 8
  %.not10.i.i.i.i.i.i31 = icmp eq ptr %i.bu, %i.bm
  br i1 %.not10.i.i.i.i.i.i31, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i32.preheader

.lr.ph.i.i.i.i.i.i32.preheader:                   ; preds = %.noexc41
  %i.ci = ptrtoaddr ptr %i.cf to i64
  %i.cj = add i64 %6, -8
  %i.ck = sub i64 %i.cj, %i.bw                    ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ck, 24
  %i.cn = sub i64 %i.bw, %i.ci
  %diff.check = icmp ugt i64 %i.cn, -32
  %or.cond97 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond97, label %.lr.ph.i.i.i.i.i.i32.preheader98, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i32.preheader
  %n.vec = and i64 %i.cm, 4611686018427387900     ; 3 uses
  %i.co = shl i64 %n.vec, 3                       ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cf, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bu, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cf, i64 %i.cr ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.bu, i64 %i.cr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.cs = getelementptr i8, ptr %next.gep75, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep75, align 8, !alias.scope !303
  %wide.load76 = load <2 x i64>, ptr %i.cs, align 8, !alias.scope !303
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !302
  store <2 x i64> %wide.load76, ptr %i.ct, align 8, !alias.scope !302
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i32.preheader98

.lr.ph.i.i.i.i.i.i32.preheader98:                 ; preds = %.lr.ph.i.i.i.i.i.i32.preheader, %middle.block
  %.012.i.i.i.i.i.i33.ph = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i32.preheader ], [ %i.cp, %middle.block ]
  %.0911.i.i.i.i.i.i34.ph = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i32.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %.lr.ph.i.i.i.i.i.i32.preheader98, %.lr.ph.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i33 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i32 ], [ %.012.i.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i.i32.preheader98 ] ; 2 uses
  %.0911.i.i.i.i.i.i34 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i32 ], [ %.0911.i.i.i.i.i.i34.ph, %.lr.ph.i.i.i.i.i.i32.preheader98 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.cv = load i64, ptr %.0911.i.i.i.i.i.i34, align 8, !alias.scope !303
  store i64 %i.cv, ptr %.012.i.i.i.i.i.i33, align 8, !alias.scope !302
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i34, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i33, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i35 = icmp eq ptr %i.cw, %i.bm
  br i1 %.not.i.i.i.i.i.i35, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i32, !llvm.loop !295

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i32, %middle.block, %.noexc41
  %.0.lcssa.i.i.i.i.i.i37 = phi ptr [ %i.cf, %.noexc41 ], [ %i.cp, %middle.block ], [ %i.cx, %.lr.ph.i.i.i.i.i.i32 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i37, i64 8 ; 2 uses
  %.not.i23.i.i.i38 = icmp eq ptr %i.bu, null
  br i1 %.not.i23.i.i.i38, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i39, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i36
  %i.cz = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.db) #18
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i39

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i39: ; preds = %bb.m, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i36
  store ptr %i.cf, ptr %4, align 8, !tbaa !73
  store ptr %i.cy, ptr %i.d, align 8, !tbaa !71
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.dc, ptr %i.n, align 8, !tbaa !72
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42

bb.n:                                             ; preds = %bb.d
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i28, %.invoke, %bb.a, %bb.b, %bb.c
  %lpad.loopexit.split-lp100 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42thread-pre-split: ; preds = %._ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42thread-pre-split_crit_edge, %bb.f, %bb.k
  %.pre56 = phi ptr [ %i.bt, %bb.k ], [ %.pre56.pre57, %bb.f ], [ %.pre56.pre, %._ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42thread-pre-split_crit_edge ]
  %.121.ph = phi i64 [ %i.y, %bb.k ], [ %.020, %bb.f ], [ %.020, %._ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42thread-pre-split_crit_edge ]
  %.pr = load ptr, ptr %4, align 8, !tbaa !297
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42thread-pre-split, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i39
  %i.de = phi ptr [ %.pre56, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42thread-pre-split ], [ %i.cy, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i39 ] ; 3 uses
  %i.df = phi ptr [ %.pr, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42thread-pre-split ], [ %i.cf, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i39 ] ; 3 uses
  %.121 = phi i64 [ %.121.ph, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42thread-pre-split ], [ %i.y, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i39 ] ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.de
  br i1 %i.dg, label %bb.o, label %bb.d, !llvm.loop !296

bb.o:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit42
  %.not.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #18
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i64 %.121

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.n ], [ %lpad.loopexit.split-lp100, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dl = load ptr, ptr %4, align 8, !tbaa !73    ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit44, label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !72
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #18
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit44

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EED2Ev.exit44: ; preds = %.loopexit.split-lp, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8__detail12_Insert_baseIN4bzla4NodeESt4pairIKS2_St6vectorINS1_8bitblast7AigNodeESaIS7_EEESaISA_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIRS4_JEEES3_INS_14_Node_iteratorISA_Lb0ELb1EEEbENS_20_Node_const_iteratorISA_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<bzla::Node, std::pair<const bzla::Node, std::vector<bzla::bitblast::AigNode>>, std::allocator<std::pair<const bzla::Node, std::vector<bzla::bitblast::AigNode>>>, std::__detail::_Select1st, std::equal_to<bzla::Node>, std::hash<bzla::Node>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = tail call noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !56
  %i.d = urem i64 %i.a, %i.c                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.p, %bb.d ]
  %.015.i.i = phi ptr [ %i.g, %bb.b ], [ %.0.i.i, %bb.d ]
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.d ] ; 3 uses
  %i.j = icmp eq i64 %i.a, %i.i
  br i1 %i.j, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorINS1_8bitblast7AigNodeESaIS7_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorINS1_8bitblast7AigNodeESaIS7_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorINS1_8bitblast7AigNodeESaIS7_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.l = tail call noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.k)
  br i1 %i.l, label %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorINS1_8bitblast7AigNodeESaIS7_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorINS1_8bitblast7AigNodeESaIS7_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorINS1_8bitblast7AigNodeESaIS7_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i, %bb.c
  %i.m = load ptr, ptr %.0.i.i, align 8, !tbaa !55 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.m, null
  br i1 %.not18.i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorINS1_8bitblast7AigNodeESaIS7_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i
  %i.n = load i64, ptr %i.b, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !60   ; 2 uses
  %i.q = urem i64 %i.p, %i.n
  %.not19.i.i = icmp eq i64 %i.q, %i.d
  br i1 %.not19.i.i, label %bb.c, label %.critedge, !llvm.loop !2

_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorINS1_8bitblast7AigNodeESaIS7_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i
  %i.r = load ptr, ptr %.015.i.i, align 8, !tbaa !55 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.critedge, label %bb.j

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_St6vectorINS1_8bitblast7AigNodeESaIS7_EEENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i, %bb.d, %bb.a, %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %0, ptr %3, align 8, !tbaa !304
  %i.s = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #17 ; 6 uses
  store ptr null, ptr %i.s, align 8, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS3_EESS_IJEEEEEPNSB_16_Hashtable_allocISaINSB_10_Hash_nodeIS9_Lb1EEEEEEDpOT_.exit unwind label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #16 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 48) #18
  invoke void @__cxa_rethrow() #19
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.g

common.resume:                                    ; preds = %bb.f, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.x, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #20
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS3_EESS_IJEEEEEPNSB_16_Hashtable_allocISaINSB_10_Hash_nodeIS9_Lb1EEEEEEDpOT_.exit: ; preds = %.critedge
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr %i.s, ptr %i.aa, align 8, !tbaa !79
  %i.ac = invoke ptr @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSB_10_Hash_nodeIS9_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.d, i64 noundef %i.a, ptr noundef nonnull %i.s, i64 noundef 1)
          to label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.i

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS3_EESS_IJEEEEEPNSB_16_Hashtable_allocISaINSB_10_Hash_nodeIS9_Lb1EEEEEEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS3_EESS_IJEEEEEPNSB_16_Hashtable_allocISaINSB_10_Hash_nodeIS9_Lb1EEEEEEDpOT_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume

bb.j:                                             ; preds = %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.023.0 = phi ptr [ %i.ac, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.r, %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.023.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSB_10_Hash_nodeIS9_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #16 ; 0 uses
end_hunk_0
