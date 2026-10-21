Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Frontend?download=true
inline.NumInlined: 11237
inline.NumDeleted: 5660
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4Luau8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS7_RKNS_15TypeCheckLimitsEbSt8functionIFbSC_EE:bb.a

bb.bi:                                            ; preds = %bb.bk, %bb.bh
  %.pn.i.i = phi i64 [ %i.lu, %bb.bh ], [ %i.mb, %bb.bk ]
  %.0185.i.i = phi i64 [ 0, %bb.bh ], [ %i.ma, %bb.bk ]
  %.0196.i.i = and i64 %.pn.i.i, %i.lq            ; 2 uses
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %.0196.i.i
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !527 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.lk
  br i1 %i.ly, label %_ZNK4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lz = icmp eq ptr %i.lx, %i.ln
  br i1 %i.lz, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ma = add i64 %.0185.i.i, 1                   ; 3 uses
  %i.mb = add i64 %i.ma, %.0196.i.i
  %.not.i.i117 = icmp ugt i64 %i.ma, %i.lq
  br i1 %.not.i.i117, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112.thread, label %bb.bi, !llvm.loop !22

_ZNK4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit: ; preds = %bb.bi
  %.not.i.i118 = icmp eq ptr %.sroa.15.2472, %.sroa.31.3471
  br i1 %.not.i.i118, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNK4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit
  store ptr %i.lk, ptr %.sroa.15.2472, align 8, !tbaa !527
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.15.2472, i64 8
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit127

bb.bm:                                            ; preds = %_ZNK4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit
  %i.md = ptrtoint ptr %.sroa.15.2472 to i64
  %i.me = ptrtoint ptr %.sroa.0255.3474 to i64
  %i.mf = sub i64 %i.md, %i.me                    ; 6 uses
  %i.mg = icmp eq i64 %i.mf, 9223372036854775800
  br i1 %i.mg, label %.invoke, label %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i119

.invoke:                                          ; preds = %bb.bs, %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #37
          to label %.cont unwind label %.loopexit.split-lp325

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i119: ; preds = %bb.bm
  %i.mh = ashr exact i64 %i.mf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i120 = call i64 @llvm.umax.i64(i64 %i.mh, i64 1)
  %i.mi = add nsw i64 %.sroa.speculated.i.i.i.i120, %i.mh ; 2 uses
  %i.mj = icmp ult i64 %i.mi, %i.mh
  %i.mk = call i64 @llvm.umin.i64(i64 %i.mi, i64 1152921504606846975)
  %i.ml = select i1 %i.mj, i64 1152921504606846975, i64 %i.mk ; 3 uses
  %.not.i.i.i.i121 = icmp ne i64 %i.ml, 0
  call void @llvm.assume(i1 %.not.i.i.i.i121)
  %i.mm = shl nuw nsw i64 %i.ml, 3
  %i.mn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mm) #38
          to label %.noexc126 unwind label %.loopexit319 ; 4 uses

.noexc126:                                        ; preds = %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i119
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 %i.mf ; 2 uses
  store ptr %i.lk, ptr %i.mo, align 8, !tbaa !527
  %i.mp = icmp sgt i64 %i.mf, 0
  br i1 %i.mp, label %bb.bn, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i122

bb.bn:                                            ; preds = %.noexc126
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mn, ptr align 8 %.sroa.0255.3474, i64 %i.mf, i1 false)
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i122

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i122: ; preds = %bb.bn, %.noexc126
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %.not.i17.i.i.i123 = icmp eq ptr %.sroa.0255.3474, null
  br i1 %.not.i17.i.i.i123, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i124, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i122
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0255.3474, i64 noundef %i.mf) #36
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i124

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i124: ; preds = %bb.bo, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i122
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.ml
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit127

.loopexit319:                                     ; preds = %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i119, %bb.be
  %.sroa.31.3471.lcssa520 = phi ptr [ %.sroa.15.2472, %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i119 ], [ %.sroa.31.3471, %bb.be ]
  %lpad.loopexit321 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.i186, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us.i194, %bb.bc, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i204, %bb.ba, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i211, %bb.bk, %bb.bj, %bb.bf, %bb.bg, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i197, %bb.av
  %i.ms = invoke { ptr, ptr } @_ZN4Luau8Frontend13getSourceNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_15TypeCheckLimitsE(ptr noundef nonnull align 8 dereferenceable(2184) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.jf, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.bp unwind label %.loopexit324

bb.bp:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112.thread
  %i.mt = extractvalue { ptr, ptr } %i.ms, 0      ; 11 uses
  %.not49 = icmp eq ptr %i.mt, null
  br i1 %.not49, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit127, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not.i128 = icmp eq ptr %.sroa.15.2472, %.sroa.31.3471
  br i1 %.not.i128, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store ptr %i.mt, ptr %.sroa.15.2472, align 8, !tbaa !527
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit137

bb.bs:                                            ; preds = %bb.bq
  %i.mu = ptrtoint ptr %.sroa.15.2472 to i64
  %i.mv = ptrtoint ptr %.sroa.0255.3474 to i64
  %i.mw = sub i64 %i.mu, %i.mv                    ; 6 uses
  %i.mx = icmp eq i64 %i.mw, 9223372036854775800
  br i1 %i.mx, label %.invoke, label %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i129

_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i129: ; preds = %bb.bs
  %i.my = ashr exact i64 %i.mw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i130 = call i64 @llvm.umax.i64(i64 %i.my, i64 1)
  %i.mz = add nsw i64 %.sroa.speculated.i.i.i130, %i.my ; 2 uses
  %i.na = icmp ult i64 %i.mz, %i.my
  %i.nb = call i64 @llvm.umin.i64(i64 %i.mz, i64 1152921504606846975)
  %i.nc = select i1 %i.na, i64 1152921504606846975, i64 %i.nb ; 3 uses
  %.not.i.i.i131 = icmp ne i64 %i.nc, 0
  call void @llvm.assume(i1 %.not.i.i.i131)
  %i.nd = shl nuw nsw i64 %i.nc, 3
  %i.ne = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nd) #38
          to label %.noexc136 unwind label %.loopexit324 ; 4 uses

.noexc136:                                        ; preds = %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i129
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 %i.mw ; 2 uses
  store ptr %i.mt, ptr %i.nf, align 8, !tbaa !527
  %i.ng = icmp sgt i64 %i.mw, 0
  br i1 %i.ng, label %bb.bt, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i132

bb.bt:                                            ; preds = %.noexc136
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ne, ptr align 8 %.sroa.0255.3474, i64 %i.mw, i1 false)
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i132

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i132: ; preds = %bb.bt, %.noexc136
  %.not.i17.i.i133 = icmp eq ptr %.sroa.0255.3474, null
  br i1 %.not.i17.i.i133, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i134, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0255.3474, i64 noundef %i.mw) #36
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i134

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i134: ; preds = %bb.bu, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i132
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %i.nc
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit137

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit137: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i134, %bb.br
  %.sroa.31.14 = phi ptr [ %i.nh, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i134 ], [ %.sroa.31.3471, %bb.br ] ; 2 uses
  %.pn297 = phi ptr [ %i.nf, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i134 ], [ %.sroa.15.2472, %bb.br ]
  %.sroa.0255.14 = phi ptr [ %i.ne, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i134 ], [ %.sroa.0255.3474, %bb.br ] ; 2 uses
  %.sroa.15.9 = getelementptr inbounds nuw i8, ptr %.pn297, i64 8
  %i.ni = load i64, ptr %i.o, align 8, !tbaa !543 ; 3 uses
  %i.nj = load i64, ptr %i.p, align 8, !tbaa !544 ; 7 uses
  %i.nk = mul i64 %i.nj, 3
  %i.nl = lshr i64 %i.nk, 2
  %.not.i.i138 = icmp ult i64 %i.ni, %i.nl
  br i1 %.not.i.i138, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit137._ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i_crit_edge, label %bb.bv

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit137._ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i_crit_edge: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit137
  %.pre606 = load ptr, ptr %6, align 8, !tbaa !545
  br label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i

bb.bv:                                            ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit137
  %i.nm = icmp eq i64 %i.ni, 0
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !527 ; 10 uses
  br i1 %i.nm, label %.loopexit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nn = icmp eq ptr %i.mt, %.pre.i.i
  br i1 %i.nn, label %.loopexit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.no = add i64 %i.nj, -1                       ; 2 uses
  %i.np = ptrtoint ptr %i.mt to i64
  %i.nq = mul i64 %i.np, -4658895280553007687     ; 2 uses
  %i.nr = lshr i64 %i.nq, 31
  %i.ns = xor i64 %i.nr, %i.nq
  %i.nt = load ptr, ptr %6, align 8, !tbaa !545   ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %bb.bx
  %.pn.i.i.i = phi i64 [ %i.ns, %bb.bx ], [ %i.nz, %bb.ca ]
  %.0185.i.i.i = phi i64 [ 0, %bb.bx ], [ %i.ny, %bb.ca ]
  %.0196.i.i.i = and i64 %.pn.i.i.i, %i.no        ; 2 uses
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.0196.i.i.i
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !527 ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.mt
  br i1 %i.nw, label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nx = icmp eq ptr %i.nv, %.pre.i.i
  br i1 %i.nx, label %.loopexit.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ny = add i64 %.0185.i.i.i, 1                 ; 3 uses
  %i.nz = add i64 %i.ny, %.0196.i.i.i
  %.not.i.i.i139 = icmp ugt i64 %i.ny, %i.no
  br i1 %.not.i.i.i139, label %.loopexit.i.i, label %bb.by, !llvm.loop !22

.loopexit.i.i:                                    ; preds = %bb.ca, %bb.bz, %bb.bw, %bb.bv
  %i.oa = phi ptr [ %.pre.i.i, %bb.bv ], [ %i.mt, %bb.bw ], [ %.pre.i.i, %bb.bz ], [ %.pre.i.i, %bb.ca ] ; 2 uses
  %i.ob = icmp eq i64 %i.nj, 0                    ; 2 uses
  %i.oc = shl i64 %i.nj, 1                        ; 3 uses
  %spec.select.i.i.i = select i1 %i.ob, i64 16, i64 %i.oc ; 6 uses
  %.not.i.i.i.i140 = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %.not.i.i.i.i140, label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.loopexit.i.i
  %i.od = shl i64 %spec.select.i.i.i, 4
  %i.oe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.od) #40
          to label %.noexc144.preheader unwind label %.loopexit324 ; 7 uses

.noexc144.preheader:                              ; preds = %bb.cb
  %xtraiter = and i64 %spec.select.i.i.i, 2       ; 2 uses
  %i.of = icmp ult i64 %spec.select.i.i.i, 4
  br i1 %i.of, label %.noexc144.epil.preheader, label %.noexc144.preheader.new

.noexc144.preheader.new:                          ; preds = %.noexc144.preheader
  %unroll_iter = and i64 %spec.select.i.i.i, -4
  br label %.noexc144

.noexc144:                                        ; preds = %.noexc144, %.noexc144.preheader.new
  %.07.i.i.i.i.i = phi i64 [ 0, %.noexc144.preheader.new ], [ %i.or, %.noexc144 ] ; 5 uses
  %niter = phi i64 [ 0, %.noexc144.preheader.new ], [ %niter.next.3, %.noexc144 ]
  %i.og = getelementptr inbounds nuw [16 x i8], ptr %i.oe, i64 %.07.i.i.i.i.i ; 2 uses
  store ptr %.pre.i.i, ptr %i.og, align 8, !tbaa !527
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store i32 0, ptr %i.oh, align 8, !tbaa !220
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %i.oe, i64 %.07.i.i.i.i.i ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store ptr %.pre.i.i, ptr %i.oj, align 8, !tbaa !527
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  store i32 0, ptr %i.ok, align 8, !tbaa !220
  %i.ol = getelementptr inbounds nuw [16 x i8], ptr %i.oe, i64 %.07.i.i.i.i.i ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 32
  store ptr %.pre.i.i, ptr %i.om, align 8, !tbaa !527
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 40
  store i32 0, ptr %i.on, align 8, !tbaa !220
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %i.oe, i64 %.07.i.i.i.i.i ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 48
  store ptr %.pre.i.i, ptr %i.op, align 8, !tbaa !527
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 56
  store i32 0, ptr %i.oq, align 8, !tbaa !220
  %i.or = add nuw i64 %.07.i.i.i.i.i, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i.loopexit.unr-lcssa, label %.noexc144, !llvm.loop !23

_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.noexc144
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i, label %.noexc144.epil.preheader

.noexc144.epil.preheader:                         ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i.loopexit.unr-lcssa, %.noexc144.preheader
  %.07.i.i.i.i.i.epil.init = phi i64 [ 0, %.noexc144.preheader ], [ %i.or, %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1043 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1043)
  br label %.noexc144.epil

.noexc144.epil:                                   ; preds = %.noexc144.epil, %.noexc144.epil.preheader
  %.07.i.i.i.i.i.epil = phi i64 [ %i.ou, %.noexc144.epil ], [ %.07.i.i.i.i.i.epil.init, %.noexc144.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.noexc144.epil ], [ 0, %.noexc144.epil.preheader ]
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.oe, i64 %.07.i.i.i.i.i.epil ; 2 uses
  store ptr %.pre.i.i, ptr %i.os, align 8, !tbaa !527
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  store i32 0, ptr %i.ot, align 8, !tbaa !220
  %i.ou = add nuw i64 %.07.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i, label %.noexc144.epil, !llvm.loop !1333

_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i: ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i.loopexit.unr-lcssa, %.noexc144.epil, %.loopexit.i.i
  %.sroa.0.0.i.i.i = phi ptr [ null, %.loopexit.i.i ], [ %i.oe, %.noexc144.epil ], [ %i.oe, %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i.loopexit.unr-lcssa ] ; 6 uses
  %.pre32.i.i.i = load ptr, ptr %6, align 8, !tbaa !547 ; 3 uses
  br i1 %i.ob, label %._crit_edge27.i.i.i, label %.lr.ph26.i.i.i

.lr.ph26.i.i.i:                                   ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i
  %i.ov = add i64 %i.oc, -1                       ; 3 uses
  br label %bb.cd

._crit_edge27.i.i.i:                              ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i
  store ptr %.sroa.0.0.i.i.i, ptr %6, align 8, !tbaa !547
  store i64 16, ptr %i.p, align 8, !tbaa !218
  %.not.i11.i.i.i = icmp eq ptr %.pre32.i.i.i, null
  br i1 %.not.i11.i.i.i, label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge27.thread.i.i.i, %._crit_edge27.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.pre32.i.i.i) #34
  br label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i

bb.cd:                                            ; preds = %bb.cf, %.lr.ph26.i.i.i
  %.025.i.i.i = phi i64 [ 0, %.lr.ph26.i.i.i ], [ %i.ps, %bb.cf ] ; 2 uses
  %i.ow = getelementptr inbounds nuw [16 x i8], ptr %.pre32.i.i.i, i64 %.025.i.i.i ; 2 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !527 ; 6 uses
  %i.oy = load ptr, ptr %i.c, align 8, !tbaa !527
  %i.oz = icmp eq ptr %i.ox, %i.oy
  br i1 %i.oz, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pa = ptrtoint ptr %i.ox to i64
  %i.pb = mul i64 %i.pa, -4658895280553007687     ; 2 uses
  %i.pc = lshr i64 %i.pb, 31
  %i.pd = xor i64 %i.pc, %i.pb
  %.02131.i21.i.i.i = and i64 %i.pd, %i.ov        ; 2 uses
  %i.pe = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i.i, i64 %.02131.i21.i.i.i ; 3 uses
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !527 ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.oa
  br i1 %i.pg, label %._crit_edge.i.i.i143, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.ce
  %i.ph = icmp eq ptr %i.pf, %i.ox
  br i1 %i.ph, label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSQ_.exit.i.i.i, label %.lr.ph.i.i141

._crit_edge.i.i.i143:                             ; preds = %.lr.ph.i.i141, %bb.ce
  %.lcssa.i.i.i = phi ptr [ %i.pe, %bb.ce ], [ %i.pl, %.lr.ph.i.i141 ] ; 2 uses
  store ptr %i.ox, ptr %.lcssa.i.i.i, align 8, !tbaa !549
  br label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSQ_.exit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i141
  %i.pi = icmp eq ptr %i.pm, %i.ox
  br i1 %i.pi, label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSQ_.exit.i.i.i, label %.lr.ph.i.i141

.lr.ph.i.i141:                                    ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i
  %.02030.i22.i6.i.i = phi i64 [ %i.pj, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ]
  %.02131.i23.i5.i.i = phi i64 [ %.02131.i.i.i.i, %.lr.ph.i.i.i ], [ %.02131.i21.i.i.i, %.lr.ph.i.preheader.i.i ]
  %i.pj = add i64 %.02030.i22.i6.i.i, 1           ; 3 uses
  %i.pk = add i64 %i.pj, %.02131.i23.i5.i.i
  %.not.i12.i.i.i = icmp ule i64 %i.pj, %i.ov
  call void @llvm.assume(i1 %.not.i12.i.i.i)
  %.02131.i.i.i.i = and i64 %i.pk, %i.ov          ; 2 uses
  %i.pl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i.i, i64 %.02131.i.i.i.i ; 3 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !527 ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.oa
  br i1 %i.pn, label %._crit_edge.i.i.i143, label %.lr.ph.i.i.i

_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSQ_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i143, %.lr.ph.i.preheader.i.i
  %i.po = phi ptr [ %.lcssa.i.i.i, %._crit_edge.i.i.i143 ], [ %i.pe, %.lr.ph.i.preheader.i.i ], [ %i.pl, %.lr.ph.i.i.i ] ; 2 uses
  store ptr %i.ox, ptr %i.po, align 8, !tbaa !549
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !220
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  store i32 %i.pq, ptr %i.pr, align 8, !tbaa !550
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSQ_.exit.i.i.i, %bb.cd
  %i.ps = add nuw i64 %.025.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ps, %i.nj
  br i1 %exitcond.not.i.i.i, label %._crit_edge27.thread.i.i.i, label %bb.cd, !llvm.loop !24

._crit_edge27.thread.i.i.i:                       ; preds = %bb.cf
  store ptr %.sroa.0.0.i.i.i, ptr %6, align 8, !tbaa !547
  store i64 %i.oc, ptr %i.p, align 8, !tbaa !218
  br label %bb.cc

_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i: ; preds = %bb.by, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit137._ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i_crit_edge, %bb.cc, %._crit_edge27.i.i.i
  %i.pt = phi ptr [ %.sroa.0.0.i.i.i, %bb.cc ], [ %.pre606, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit137._ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i_crit_edge ], [ %.sroa.0.0.i.i.i, %._crit_edge27.i.i.i ], [ %i.nt, %bb.by ] ; 2 uses
  %i.pu = phi i64 [ %spec.select.i.i.i, %bb.cc ], [ %i.nj, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit137._ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i_crit_edge ], [ 16, %._crit_edge27.i.i.i ], [ %i.nj, %bb.by ]
  %i.pv = add i64 %i.pu, -1                       ; 3 uses
  %i.pw = ptrtoint ptr %i.mt to i64
  %i.px = mul i64 %i.pw, -4658895280553007687     ; 2 uses
  %i.py = lshr i64 %i.px, 31
  %i.pz = xor i64 %i.py, %i.px
  %i.qa = load ptr, ptr %i.c, align 8, !tbaa !527 ; 2 uses
  %.02131.i7.i = and i64 %i.pv, %i.pz             ; 2 uses
  %i.qb = getelementptr inbounds nuw [16 x i8], ptr %i.pt, i64 %.02131.i7.i ; 3 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !527 ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.qa
  br i1 %i.qd, label %._crit_edge.i, label %.lr.ph.i142.preheader

.lr.ph.i142.preheader:                            ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i
  %i.qe = icmp eq ptr %i.qc, %i.mt
  br i1 %i.qe, label %.loopexit305, label %.lr.ph

._crit_edge.i:                                    ; preds = %.lr.ph, %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i
  %.lcssa.i = phi ptr [ %i.qb, %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i ], [ %i.qj, %.lr.ph ] ; 2 uses
  store ptr %i.mt, ptr %.lcssa.i, align 8, !tbaa !549
  %i.qf = add i64 %i.ni, 1
  store i64 %i.qf, ptr %i.o, align 8, !tbaa !543
  br label %.loopexit305

.lr.ph.i142:                                      ; preds = %.lr.ph
  %i.qg = icmp eq ptr %i.qk, %i.mt
  br i1 %i.qg, label %.loopexit305, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i142.preheader, %.lr.ph.i142
  %.02030.i8.i469 = phi i64 [ %i.qh, %.lr.ph.i142 ], [ 0, %.lr.ph.i142.preheader ]
  %.02131.i9.i468 = phi i64 [ %.02131.i.i, %.lr.ph.i142 ], [ %.02131.i7.i, %.lr.ph.i142.preheader ]
  %i.qh = add i64 %.02030.i8.i469, 1              ; 3 uses
  %i.qi = add i64 %i.qh, %.02131.i9.i468
  %.not.i3.i = icmp ule i64 %i.qh, %i.pv
  call void @llvm.assume(i1 %.not.i3.i)
  %.02131.i.i = and i64 %i.qi, %i.pv              ; 2 uses
  %i.qj = getelementptr inbounds nuw [16 x i8], ptr %i.pt, i64 %.02131.i.i ; 3 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !527 ; 2 uses
  %i.ql = icmp eq ptr %i.qk, %i.qa
  br i1 %i.ql, label %._crit_edge.i, label %.lr.ph.i142

.loopexit305:                                     ; preds = %.lr.ph.i142, %.lr.ph.i142.preheader, %._crit_edge.i
  %i.qm = phi ptr [ %.lcssa.i, %._crit_edge.i ], [ %i.qb, %.lr.ph.i142.preheader ], [ %i.qj, %.lr.ph.i142 ]
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store i32 0, ptr %i.qn, align 4, !tbaa !220
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit127

.loopexit324:                                     ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112.thread, %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i129, %bb.cb
  %.sroa.31.4.ph = phi ptr [ %.sroa.31.3471, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112.thread ], [ %.sroa.15.2472, %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i129 ], [ %.sroa.31.14, %bb.cb ]
  %.sroa.0255.4.ph = phi ptr [ %.sroa.0255.3474, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112.thread ], [ %.sroa.0255.3474, %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i129 ], [ %.sroa.0255.14, %bb.cb ]
  %lpad.loopexit326 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp325:                            ; preds = %.invoke
  %lpad.loopexit.split-lp327 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit127: ; preds = %bb.bp, %.loopexit305, %bb.bl, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i124, %_ZNKSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112
  %.sroa.31.6 = phi ptr [ %.sroa.31.3471, %_ZNKSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit ], [ %.sroa.31.3471, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112 ], [ %.sroa.31.3471, %bb.bl ], [ %i.mr, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i124 ], [ %.sroa.31.3471, %bb.bp ], [ %.sroa.31.14, %.loopexit305 ] ; 2 uses
  %.sroa.15.4 = phi ptr [ %.sroa.15.2472, %_ZNKSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit ], [ %.sroa.15.2472, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112 ], [ %i.mc, %bb.bl ], [ %i.mq, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i124 ], [ %.sroa.15.2472, %bb.bp ], [ %.sroa.15.9, %.loopexit305 ] ; 2 uses
  %.sroa.0255.6 = phi ptr [ %.sroa.0255.3474, %_ZNKSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit ], [ %.sroa.0255.3474, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112 ], [ %.sroa.0255.3474, %bb.bl ], [ %i.mn, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i124 ], [ %.sroa.0255.3474, %bb.bp ], [ %.sroa.0255.14, %.loopexit305 ] ; 2 uses
  %i.qo = load i64, ptr %i.ii, align 8, !tbaa !513 ; 3 uses
  %i.qp = add i64 %.sroa.7.0473, 1                ; 3 uses
  %i.qq = icmp ult i64 %i.qp, %i.qo
  br i1 %i.qq, label %.lr.ph.i146, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151

.lr.ph.i146:                                      ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit127
  %i.qr = load ptr, ptr %i.ih, align 8, !tbaa !514
  %i.qs = load i64, ptr %i.jd, align 8, !tbaa !140 ; 3 uses
  %i.qt = icmp eq i64 %i.qs, 0
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149, %.lr.ph.i146
  %.sroa.7.1 = phi i64 [ %i.qp, %.lr.ph.i146 ], [ %i.rb, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149 ] ; 4 uses
  %i.qu = getelementptr inbounds nuw [32 x i8], ptr %i.qr, i64 %.sroa.7.1 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !140
  %i.qx = icmp eq i64 %i.qw, %i.qs
  br i1 %i.qx, label %bb.ch, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.qt, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149, label %.split.i147

.split.i147:                                      ; preds = %bb.ch
  %i.qy = load ptr, ptr %i.jc, align 8, !tbaa !141
  %i.qz = load ptr, ptr %i.qu, align 8, !tbaa !141
  %bcmp.i.i.i148 = call i32 @bcmp(ptr %i.qz, ptr %i.qy, i64 %i.qs)
  %i.ra = icmp eq i32 %bcmp.i.i.i148, 0
  br i1 %i.ra, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149: ; preds = %.split.i147, %bb.ch
  %i.rb = add nuw i64 %.sroa.7.1, 1               ; 2 uses
  %exitcond.not.i150 = icmp eq i64 %i.rb, %i.qo
  br i1 %exitcond.not.i150, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151, label %bb.cg, !llvm.loop !21

_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151: ; preds = %bb.cg, %.split.i147, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit127
  %.sroa.7.2 = phi i64 [ %i.qp, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit127 ], [ %.sroa.7.1, %bb.cg ], [ %.sroa.7.1, %.split.i147 ], [ %i.qo, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149 ] ; 2 uses
  %.not296 = icmp eq i64 %.sroa.7.2, %i.ij
  br i1 %.not296, label %.loopexit313, label %bb.au

.loopexit313:                                     ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit, %.loopexit329, %.loopexit315, %bb.ai
  %.sroa.31.8 = phi ptr [ %.sroa.31.1482, %bb.ai ], [ %.sroa.31.1482, %.loopexit315 ], [ %.sroa.31.1482, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.sroa.31.12, %.loopexit329 ], [ %.sroa.31.12, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %.sroa.31.1482, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %.sroa.31.1482, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.sroa.31.6, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.sroa.31.12, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ] ; 2 uses
  %.sroa.0247.1 = phi ptr [ %.sroa.0247.0483, %bb.ai ], [ %.sroa.0247.0483, %.loopexit315 ], [ %.sroa.0247.0483, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.sroa.0247.4, %.loopexit329 ], [ %.sroa.0247.4, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %.sroa.0247.0483, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %.sroa.0247.0483, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.sroa.0247.4, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.sroa.0247.4, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ] ; 4 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0484, %bb.ai ], [ %i.v, %.loopexit315 ], [ %i.v, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.sroa.8.2, %.loopexit329 ], [ %.sroa.8.2, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %i.v, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %i.v, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.sroa.8.2, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.sroa.8.2, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ]
  %.sroa.14.1 = phi ptr [ %.sroa.14.0485, %bb.ai ], [ %.sroa.14.0485, %.loopexit315 ], [ %.sroa.14.0485, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.sroa.14.4, %.loopexit329 ], [ %.sroa.14.4, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %.sroa.14.0485, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %.sroa.14.0485, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.sroa.14.4, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.sroa.14.4, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ] ; 2 uses
  %.sroa.15.5 = phi ptr [ %i.s, %bb.ai ], [ %i.s, %.loopexit315 ], [ %i.s, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.sroa.15.7, %.loopexit329 ], [ %.sroa.15.7, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %i.s, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %i.s, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.sroa.15.4, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.sroa.15.7, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ] ; 2 uses
  %.sroa.0255.8 = phi ptr [ %.sroa.0255.1487, %bb.ai ], [ %.sroa.0255.1487, %.loopexit315 ], [ %.sroa.0255.1487, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.sroa.0255.12, %.loopexit329 ], [ %.sroa.0255.12, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %.sroa.0255.1487, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %.sroa.0255.1487, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.sroa.0255.6, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.sroa.0255.12, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ] ; 5 uses
  %.345 = phi i1 [ %i.hd, %bb.ai ], [ %.042488, %.loopexit315 ], [ %.042488, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.042488, %.loopexit329 ], [ %.042488, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %.042488, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %.042488, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.042488, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.042488, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.rc = icmp eq ptr %.sroa.0255.8, %.sroa.15.5
  br i1 %i.rc, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.loopexit313
  %.not.i.i.i152 = icmp eq ptr %.sroa.0247.1, null
  br i1 %.not.i.i.i152, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge
  %i.rd = ptrtoint ptr %.sroa.14.1 to i64
  %i.re = ptrtoint ptr %.sroa.0247.1 to i64
  %i.rf = sub i64 %i.rd, %i.re
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0247.1, i64 noundef %i.rf) #36
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.ci
  %.not.i.i.i153 = icmp eq ptr %.sroa.0255.8, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154thread-pre-split, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit.thread683

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit.thread683: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit
  %i.rg = ptrtoint ptr %.sroa.31.8 to i64
  %i.rh = ptrtoint ptr %.sroa.0255.8 to i64
  %i.ri = sub i64 %i.rg, %i.rh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0255.8, i64 noundef %i.ri) #36
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154thread-pre-split

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154thread-pre-split: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit.thread683, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit
  %.val65.pr = load ptr, ptr %6, align 8, !tbaa !545
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154thread-pre-split, %bb.b
  %.val65 = phi ptr [ %.val65.pr, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154thread-pre-split ], [ null, %bb.b ] ; 2 uses
  %.042.lcssa677682 = phi i1 [ %.345, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154thread-pre-split ], [ false, %bb.b ]
  %.not.i.i155 = icmp eq ptr %.val65, null
  br i1 %.not.i.i155, label %_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154
  call void @_ZdlPv(ptr noundef nonnull %.val65) #34
  br label %_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit

_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret i1 %.042.lcssa677682

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit324, %.loopexit.split-lp325, %.loopexit319, %.loopexit332, %.loopexit.split-lp333
  %.sroa.31.9 = phi ptr [ %.sroa.31.12, %.loopexit.split-lp333 ], [ %.sroa.31.4.ph, %.loopexit324 ], [ %.sroa.31.3471.lcssa520, %.loopexit319 ], [ %.sroa.31.2.ph, %.loopexit332 ], [ %.sroa.15.2472, %.loopexit.split-lp325 ], [ %.sroa.31.1482, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0247.2 = phi ptr [ %.sroa.0247.0483, %.loopexit.split-lp333 ], [ %.sroa.0247.4, %.loopexit324 ], [ %.sroa.0247.4, %.loopexit319 ], [ %.sroa.0247.0483, %.loopexit332 ], [ %.sroa.0247.4, %.loopexit.split-lp325 ], [ %.sroa.0247.0483, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.0485, %.loopexit.split-lp333 ], [ %.sroa.14.4, %.loopexit324 ], [ %.sroa.14.4, %.loopexit319 ], [ %.sroa.14.0485, %.loopexit332 ], [ %.sroa.14.4, %.loopexit.split-lp325 ], [ %.sroa.14.0485, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0255.9 = phi ptr [ %.sroa.0255.12, %.loopexit.split-lp333 ], [ %.sroa.0255.4.ph, %.loopexit324 ], [ %.sroa.0255.3474, %.loopexit319 ], [ %.sroa.0255.2.ph, %.loopexit332 ], [ %.sroa.0255.3474, %.loopexit.split-lp325 ], [ %.sroa.0255.1487, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp335, %.loopexit.split-lp333 ], [ %lpad.loopexit326, %.loopexit324 ], [ %lpad.loopexit321, %.loopexit319 ], [ %lpad.loopexit334, %.loopexit332 ], [ %lpad.loopexit.split-lp327, %.loopexit.split-lp325 ], [ %lpad.loopexit.split-lp946, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %.not.i.i.i156 = icmp eq ptr %.sroa.0247.2, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157, label %bb.ck

bb.ck:                                            ; preds = %.loopexit.split-lp
  %i.rj = ptrtoint ptr %.sroa.14.2 to i64
  %i.rk = ptrtoint ptr %.sroa.0247.2 to i64
  %i.rl = sub i64 %i.rj, %i.rk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0247.2, i64 noundef %i.rl) #36
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157: ; preds = %.loopexit.split-lp, %bb.ck
  %.not.i.i.i158 = icmp eq ptr %.sroa.0255.9, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit159, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157
  %i.rm = ptrtoint ptr %.sroa.31.9 to i64
  %i.rn = ptrtoint ptr %.sroa.0255.9 to i64
  %i.ro = sub i64 %i.rm, %i.rn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0255.9, i64 noundef %i.ro) #36
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit159

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit159: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157.thread, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157, %bb.cl
  %.pn57.pn.pn.pn.pn290295 = phi { ptr, i32 } [ %i.g, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157.thread ], [ %.pn57.pn.pn.pn, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157 ], [ %.pn57.pn.pn.pn, %bb.cl ]
  %.val64 = load ptr, ptr %6, align 8, !tbaa !545 ; 2 uses
  %.not.i.i160 = icmp eq ptr %.val64, null
  br i1 %.not.i.i160, label %_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit161, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit159
  call void @_ZdlPv(ptr noundef nonnull %.val64) #34
  br label %_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit161

_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit161: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit159, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %.pn57.pn.pn.pn.pn290295
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !243    ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEE:bb.a
  %i.we = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.wf = load ptr, ptr %i.r, align 8, !tbaa !231 ; 3 uses
  store ptr %i.wf, ptr %i.we, align 8, !tbaa !231
  %.not.i.i.i221 = icmp eq ptr %i.wf, null
  br i1 %.not.i.i.i221, label %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8 ; 3 uses
  %i.wh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !220
  %.not.i.i.i.i222 = icmp eq i8 %i.wh, 0
  br i1 %.not.i.i.i.i222, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wi = load i32, ptr %i.wg, align 4, !tbaa !109
  %i.wj = add nsw i32 %i.wi, 1
  store i32 %i.wj, ptr %i.wg, align 4, !tbaa !109
  br label %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit

bb.df:                                            ; preds = %bb.dd
  %i.wk = atomicrmw volatile add ptr %i.wg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit

_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit: ; preds = %bb.dc, %bb.de, %bb.df
  invoke void @_ZN4Luau8Frontend18sendQueueItemTasksESt10shared_ptrINS_19BuildQueueWorkStateEERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(2184) %1, ptr noundef nonnull align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.dg unwind label %bb.dn

bb.dg:                                            ; preds = %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit
  %i.wl = load ptr, ptr %i.we, align 8, !tbaa !231 ; 8 uses
  %.not.i.i223 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i223, label %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 8 ; 4 uses
  %i.wn = load atomic i64, ptr %i.wm acquire, align 8 ; 2 uses
  %i.wo = icmp eq i64 %i.wn, 4294967297
  %i.wp = trunc i64 %i.wn to i32                  ; 2 uses
  br i1 %i.wo, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.wm, align 8, !tbaa !233
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wl, i64 12
  store i32 0, ptr %i.wq, align 4, !tbaa !234
  %i.wr = load ptr, ptr %i.wl, align 8, !tbaa !236
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wt = load ptr, ptr %i.ws, align 8
  call void %i.wt(ptr noundef nonnull align 8 dereferenceable(16) %i.wl) #34, !inline_history !38
  %i.wu = load ptr, ptr %i.wl, align 8, !tbaa !236
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 24
  %i.ww = load ptr, ptr %i.wv, align 8
  call void %i.ww(ptr noundef nonnull align 8 dereferenceable(16) %i.wl) #34, !inline_history !38
  br label %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dj:                                            ; preds = %bb.dh
  %i.wx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !220
  %.not.i.i.i224 = icmp eq i8 %i.wx, 0
  br i1 %.not.i.i.i224, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.wy = add nsw i32 %i.wp, -1
  store i32 %i.wy, ptr %i.wm, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.wz = atomicrmw volatile add ptr %i.wm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i = phi i32 [ %i.wp, %bb.dk ], [ %i.wz, %bb.dl ]
  %i.xa = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.xa, label %bb.dm, label %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !120

bb.dm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wl) #34
  br label %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.dg, %bb.di, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.dm
  %i.xb = load ptr, ptr %17, align 8, !tbaa !711  ; 2 uses
  %i.xc = load ptr, ptr %i.uq, align 8, !tbaa !709 ; 2 uses
  %.not.i.i225 = icmp eq ptr %i.xc, %i.xb
  %spec.store.select = select i1 %.not.i.i225, ptr %i.xc, ptr %i.xb
  store ptr %spec.store.select, ptr %i.uq, align 8, !tbaa !709
  %.pre928 = load ptr, ptr %12, align 8, !tbaa !689
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

bb.dn:                                            ; preds = %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit
  %i.xd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #34
  br label %.body291thread-pre-split

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %._crit_edge737, %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %._crit_edge744
  %i.xe = phi ptr [ %i.uq, %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.uq, %._crit_edge744 ], [ %i.hu, %._crit_edge737 ] ; 7 uses
  %i.xf = phi ptr [ %.pre928, %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.vq, %._crit_edge744 ], [ %i.hp, %._crit_edge737 ] ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 200
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !712
  %i.xi = icmp eq i64 %i.xh, 0
  br i1 %i.xi, label %bb.do, label %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit233

bb.do:                                            ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  store ptr %i.xf, ptr %19, align 8, !tbaa !689
  %i.xj = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.xk = load ptr, ptr %i.r, align 8, !tbaa !231 ; 3 uses
  store ptr %i.xk, ptr %i.xj, align 8, !tbaa !231
  %.not.i.i.i226 = icmp eq ptr %i.xk, null
  br i1 %.not.i.i.i226, label %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit228, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8 ; 3 uses
  %i.xm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !220
  %.not.i.i.i.i227 = icmp eq i8 %i.xm, 0
  br i1 %.not.i.i.i.i227, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.xn = load i32, ptr %i.xl, align 4, !tbaa !109
  %i.xo = add nsw i32 %i.xn, 1
  store i32 %i.xo, ptr %i.xl, align 4, !tbaa !109
  br label %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit228

bb.dr:                                            ; preds = %bb.dp
  %i.xp = atomicrmw volatile add ptr %i.xl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit228

_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit228: ; preds = %bb.do, %bb.dq, %bb.dr
  invoke void @_ZN4Luau8Frontend22sendQueueCycleItemTaskESt10shared_ptrINS_19BuildQueueWorkStateEE(ptr noundef nonnull align 8 dereferenceable(2184) %1, ptr noundef nonnull align 8 %19)
          to label %bb.ds unwind label %bb.dz

bb.ds:                                            ; preds = %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit228
  %i.xq = load ptr, ptr %i.xj, align 8, !tbaa !231 ; 8 uses
  %.not.i.i229 = icmp eq ptr %i.xq, null
  br i1 %.not.i.i229, label %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit233, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8 ; 4 uses
  %i.xs = load atomic i64, ptr %i.xr acquire, align 8 ; 2 uses
  %i.xt = icmp eq i64 %i.xs, 4294967297
  %i.xu = trunc i64 %i.xs to i32                  ; 2 uses
  br i1 %i.xt, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store i32 0, ptr %i.xr, align 8, !tbaa !233
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xq, i64 12
  store i32 0, ptr %i.xv, align 4, !tbaa !234
  %i.xw = load ptr, ptr %i.xq, align 8, !tbaa !236
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 16
  %i.xy = load ptr, ptr %i.xx, align 8
  call void %i.xy(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #34, !inline_history !38
  %i.xz = load ptr, ptr %i.xq, align 8, !tbaa !236
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 24
  %i.yb = load ptr, ptr %i.ya, align 8
  call void %i.yb(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #34, !inline_history !38
  br label %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit233

bb.dv:                                            ; preds = %bb.dt
  %i.yc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !220
  %.not.i.i.i230 = icmp eq i8 %i.yc, 0
  br i1 %.not.i.i.i230, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.yd = add nsw i32 %i.xu, -1
  store i32 %i.yd, ptr %i.xr, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i231

bb.dx:                                            ; preds = %bb.dv
  %i.ye = atomicrmw volatile add ptr %i.xr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i231

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i231: ; preds = %bb.dx, %bb.dw
  %.0.i.i.i.i232 = phi i32 [ %i.xu, %bb.dw ], [ %i.ye, %bb.dx ]
  %i.yf = icmp eq i32 %.0.i.i.i.i232, 1
  br i1 %i.yf, label %bb.dy, label %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit233, !prof !120

bb.dy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i231
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #34
  br label %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit233

bb.dz:                                            ; preds = %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit228
  %i.yg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #34
  br label %.body291thread-pre-split

_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit233: ; preds = %bb.dy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i231, %bb.du, %bb.ds, %_ZNSt6vectorImSaImEE5clearEv.exit
  %i.yh = load ptr, ptr %12, align 8, !tbaa !689  ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 208
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !1416
  %.not778 = icmp eq i64 %i.yj, 0
  br i1 %.not778, label %._crit_edge783, label %.lr.ph782

.lr.ph782:                                        ; preds = %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit233
  %i.yk = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.yn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.yo = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  br label %bb.ea

bb.ea:                                            ; preds = %.lr.ph782, %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit303
  %i.yq = phi ptr [ %i.yh, %.lr.ph782 ], [ %i.ahg, %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit303 ] ; 4 uses
  %.070781 = phi i8 [ 0, %.lr.ph782 ], [ %.7, %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit303 ] ; 2 uses
  %.sroa.0462.0780 = phi i64 [ undef, %.lr.ph782 ], [ %.sroa.0462.3, %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit303 ] ; 2 uses
  %.sroa.5463.0779 = phi i8 [ 0, %.lr.ph782 ], [ %.sroa.5463.3, %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit303 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 88 ; 2 uses
  store ptr %i.yr, ptr %20, align 8, !tbaa !1420
  store i8 0, ptr %i.yk, align 8, !tbaa !1421
  %i.ys = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.yr) #34 ; 2 uses
  %.not.i.i.i234 = icmp eq i32 %i.ys, 0
  br i1 %.not.i.i.i234, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ys) #37
          to label %.noexc235 unwind label %bb.em

.noexc235:                                        ; preds = %bb.eb
  unreachable

bb.ec:                                            ; preds = %bb.ea
  store i8 1, ptr %i.yk, align 8, !tbaa !1421
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 128
  %i.yu = load ptr, ptr %i.r, align 8, !tbaa !231 ; 10 uses
  %.not.i.i.i236 = icmp eq ptr %i.yu, null        ; 2 uses
  br i1 %.not.i.i.i236, label %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit238, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 8 ; 3 uses
  %i.yw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !220
  %.not.i.i.i.i237 = icmp eq i8 %i.yw, 0
  br i1 %.not.i.i.i.i237, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.yx = load i32, ptr %i.yv, align 4, !tbaa !109
  %i.yy = add nsw i32 %i.yx, 1
  store i32 %i.yy, ptr %i.yv, align 4, !tbaa !109
  br label %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit238

bb.ef:                                            ; preds = %bb.ed
  %i.yz = atomicrmw volatile add ptr %i.yv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit238

_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit238: ; preds = %bb.ec, %bb.ee, %bb.ef
  %i.za = getelementptr i8, ptr %i.yq, i64 176    ; 2 uses
  %.val.val4.i = load ptr, ptr %i.za, align 8, !tbaa !713
  %i.zb = getelementptr i8, ptr %i.yq, i64 184    ; 2 uses
  %.val.val25.i = load ptr, ptr %i.zb, align 8, !tbaa !713
  %.not6.i = icmp eq ptr %.val.val4.i, %.val.val25.i
  br i1 %.not6.i, label %.lr.ph.i239, label %"_ZNSt18condition_variable4waitIZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS1_15FrontendOptionsEESt8functionIFvSt6vectorIS6_IFvvEESaIS9_EEEES6_IFbmmEEE3$_2EEvRSt11unique_lockISt5mutexET_.exit"

.lr.ph.i239:                                      ; preds = %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit238, %.noexc241
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.yt, ptr noundef nonnull align 8 dereferenceable(9) %20)
          to label %.noexc241 unwind label %bb.en

.noexc241:                                        ; preds = %.lr.ph.i239
  %.val.val.i = load ptr, ptr %i.za, align 8, !tbaa !713
  %.val.val2.i = load ptr, ptr %i.zb, align 8, !tbaa !713
  %.not.i240 = icmp eq ptr %.val.val.i, %.val.val2.i
  br i1 %.not.i240, label %.lr.ph.i239, label %"_ZNSt18condition_variable4waitIZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS1_15FrontendOptionsEESt8functionIFvSt6vectorIS6_IFvvEESaIS9_EEEES6_IFbmmEEE3$_2EEvRSt11unique_lockISt5mutexET_.exit", !llvm.loop !1406

"_ZNSt18condition_variable4waitIZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS1_15FrontendOptionsEESt8functionIFvSt6vectorIS6_IFvvEESaIS9_EEEES6_IFbmmEEE3$_2EEvRSt11unique_lockISt5mutexET_.exit": ; preds = %.noexc241, %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit238
  br i1 %.not.i.i.i236, label %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit", label %bb.eg

bb.eg:                                            ; preds = %"_ZNSt18condition_variable4waitIZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS1_15FrontendOptionsEESt8functionIFvSt6vectorIS6_IFvvEESaIS9_EEEES6_IFbmmEEE3$_2EEvRSt11unique_lockISt5mutexET_.exit"
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yu, i64 8 ; 4 uses
  %i.zd = load atomic i64, ptr %i.zc acquire, align 8 ; 2 uses
  %i.ze = icmp eq i64 %i.zd, 4294967297
  %i.zf = trunc i64 %i.zd to i32                  ; 2 uses
  br i1 %i.ze, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i32 0, ptr %i.zc, align 8, !tbaa !233
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yu, i64 12
  store i32 0, ptr %i.zg, align 4, !tbaa !234
  %i.zh = load ptr, ptr %i.yu, align 8, !tbaa !236
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  %i.zj = load ptr, ptr %i.zi, align 8
  call void %i.zj(ptr noundef nonnull align 8 dereferenceable(16) %i.yu) #34, !inline_history !1407
  %i.zk = load ptr, ptr %i.yu, align 8, !tbaa !236
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 24
  %i.zm = load ptr, ptr %i.zl, align 8
  call void %i.zm(ptr noundef nonnull align 8 dereferenceable(16) %i.yu) #34, !inline_history !1407
  br label %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit"

bb.ei:                                            ; preds = %bb.eg
  %i.zn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !220
  %.not.i.i.i.i243 = icmp eq i8 %i.zn, 0
  br i1 %.not.i.i.i.i243, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.zo = add nsw i32 %i.zf, -1
  store i32 %i.zo, ptr %i.zc, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244

bb.ek:                                            ; preds = %bb.ei
  %i.zp = atomicrmw volatile add ptr %i.zc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244: ; preds = %bb.ek, %bb.ej
  %.0.i.i.i.i.i245 = phi i32 [ %i.zf, %bb.ej ], [ %i.zp, %bb.ek ]
  %i.zq = icmp eq i32 %.0.i.i.i.i.i245, 1
  br i1 %i.zq, label %bb.el, label %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit", !prof !120

bb.el:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yu) #34
  br label %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit"

"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit": ; preds = %"_ZNSt18condition_variable4waitIZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS1_15FrontendOptionsEESt8functionIFvSt6vectorIS6_IFvvEESaIS9_EEEES6_IFbmmEEE3$_2EEvRSt11unique_lockISt5mutexET_.exit", %bb.eh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244, %bb.el
  %i.zr = load ptr, ptr %12, align 8, !tbaa !689  ; 5 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 176
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !713 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 184
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !713 ; 2 uses
  %.not532765 = icmp eq ptr %i.zt, %i.zv
  br i1 %.not532765, label %.critedge138, label %.lr.ph770

bb.em:                                            ; preds = %bb.eb
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit271

bb.en:                                            ; preds = %.lr.ph.i239
  %i.zx = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev"(ptr %i.yu) #34
  br label %.body248

.lr.ph770:                                        ; preds = %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit", %._crit_edge762
  %.pre930 = phi ptr [ %.pre930938, %._crit_edge762 ], [ %i.zr, %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit" ] ; 3 uses
  %i.zy = phi ptr [ %i.acx, %._crit_edge762 ], [ %i.zr, %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit" ] ; 4 uses
  %.1769 = phi i8 [ 0, %._crit_edge762 ], [ %.070781, %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit" ] ; 4 uses
  %.sroa.0458.0768 = phi ptr [ %i.acy, %._crit_edge762 ], [ %i.zt, %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit" ] ; 2 uses
  %.sroa.0462.1767 = phi i64 [ %spec.select546, %._crit_edge762 ], [ %.sroa.0462.0780, %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit" ]
  %.sroa.5463.1766 = phi i8 [ 0, %._crit_edge762 ], [ %.sroa.5463.0779, %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit" ]
  %i.zz = load i64, ptr %.sroa.0458.0768, align 8, !tbaa !218 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 64
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !585
  %i.aac = getelementptr inbounds nuw [200 x i8], ptr %i.aab, i64 %i.zz ; 10 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 192
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !686 ; 2 uses
  %.not533 = icmp eq ptr %i.aae, null             ; 3 uses
  %spec.select545 = select i1 %.not533, i8 %.sroa.5463.1766, i8 1 ; 3 uses
  %spec.select546 = select i1 %.not533, i64 %.sroa.0462.1767, i64 %i.zz ; 4 uses
  %i.aaf = load i8, ptr @_ZN5FFlag35DebugLuauCyclicRequireTypeInferenceE, align 8, !tbaa !430, !range !138, !noundef !139
  %i.aag = trunc nuw i8 %i.aaf to i1              ; 2 uses
  br i1 %i.aag, label %bb.eo, label %bb.es

bb.eo:                                            ; preds = %.lr.ph770
  %i.aah = trunc nuw i8 %spec.select545 to i1
  %i.aai = trunc nuw i8 %.1769 to i1
  %or.cond = select i1 %i.aah, i1 true, i1 %i.aai
  br i1 %or.cond, label %.loopexit559, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aac, i64 136
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !582 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aac, i64 144
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !582 ; 2 uses
  %.not535746 = icmp eq ptr %i.aak, %i.aam
  br i1 %.not535746, label %.loopexit559, label %.lr.ph749

.lr.ph749:                                        ; preds = %bb.ep, %bb.er
  %.sroa.0451.0747 = phi ptr [ %i.aas, %bb.er ], [ %i.aak, %bb.ep ] ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.sroa.0451.0747, i64 416
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !247 ; 2 uses
  %.not536 = icmp eq ptr %i.aao, null
  br i1 %.not536, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %.lr.ph749
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 945
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !583, !range !138, !noundef !139
  %i.aar = trunc nuw i8 %i.aaq to i1
  br i1 %i.aar, label %.critedge138, label %bb.er

bb.er:                                            ; preds = %.lr.ph749, %bb.eq
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.0451.0747, i64 544 ; 2 uses
  %.not535 = icmp eq ptr %i.aas, %i.aam
  br i1 %.not535, label %.loopexit559, label %.lr.ph749

bb.es:                                            ; preds = %.lr.ph770
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aac, i64 136
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !714
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 416
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !247 ; 2 uses
  %.not534 = icmp eq ptr %i.aaw, null
  br i1 %.not534, label %.loopexit559, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 945
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !583, !range !138, !noundef !139
  %i.aaz = trunc nuw i8 %i.aay to i1
  %spec.select = select i1 %i.aaz, i8 1, i8 %.1769
  br label %.loopexit559

.loopexit559:                                     ; preds = %bb.er, %bb.ep, %bb.et, %bb.es, %bb.eo
  %.5 = phi i8 [ %.1769, %bb.eo ], [ %spec.select, %bb.et ], [ %.1769, %bb.es ], [ 0, %bb.ep ], [ 0, %bb.er ] ; 2 uses
  %i.aba = trunc nuw i8 %spec.select545 to i1
  %i.abb = trunc nuw i8 %.5 to i1
  %or.cond5 = select i1 %i.aba, i1 true, i1 %i.abb
  br i1 %or.cond5, label %.critedge138, label %bb.eu

bb.eu:                                            ; preds = %.loopexit559
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  br i1 %.not533, label %bb.ey, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.eu
  store ptr %i.aae, ptr %7, align 8, !tbaa !686
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #34
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %7) #37
          to label %bb.ev unwind label %bb.ew

bb.ev:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.ew:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.abc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abd = load ptr, ptr %7, align 8, !tbaa !686
  %.not.i13.i = icmp eq ptr %i.abd, null
  br i1 %.not.i13.i, label %.body248, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #34
  br label %.body248

bb.ey:                                            ; preds = %bb.eu
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aac, i64 136
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !582 ; 3 uses
  br i1 %i.aag, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aac, i64 144
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !582 ; 2 uses
  %.not1819.i = icmp eq ptr %i.abf, %i.abh
  br i1 %.not1819.i, label %.loopexit558, label %.lr.ph.i247

.lr.ph.i247:                                      ; preds = %bb.ez, %.noexc250
  %.sroa.014.020.i = phi ptr [ %i.abi, %.noexc250 ], [ %i.abf, %bb.ez ] ; 2 uses
  invoke fastcc void @"_ZZN4Luau8Frontend16recordItemResultERKNS_14BuildQueueItemEENK3$_0clERKNS_20BuildQueueModuleInfoE"(ptr nonnull readonly align 8 dereferenceable(200) %i.aac, ptr nonnull align 8 dereferenceable(2184) %1, ptr noundef nonnull align 8 dereferenceable(544) %.sroa.014.020.i)
          to label %.noexc250 unwind label %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc250:                                        ; preds = %.lr.ph.i247
  %i.abi = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i, i64 544 ; 2 uses
  %.not18.i = icmp eq ptr %i.abi, %i.abh
  br i1 %.not18.i, label %.loopexit558, label %.lr.ph.i247

bb.fa:                                            ; preds = %bb.ey
  invoke fastcc void @"_ZZN4Luau8Frontend16recordItemResultERKNS_14BuildQueueItemEENK3$_0clERKNS_20BuildQueueModuleInfoE"(ptr nonnull readonly align 8 dereferenceable(200) %i.aac, ptr nonnull align 8 dereferenceable(2184) %1, ptr noundef nonnull align 8 dereferenceable(544) %i.abf)
          to label %.loopexit558 unwind label %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit558:                                     ; preds = %.noexc250, %bb.ez, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aac, i64 160
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !713 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aac, i64 168
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !713 ; 2 uses
  %.promoted750 = load ptr, ptr %i.xe, align 1    ; 2 uses
  %.promoted754 = load ptr, ptr %17, align 8      ; 2 uses
  %.not537758 = icmp eq ptr %i.abk, %i.abm
  br i1 %.not537758, label %._crit_edge762, label %.lr.ph761

.lr.ph761:                                        ; preds = %.loopexit558, %_ZNSt6vectorImSaImEE9push_backERKm.exit261
  %.pre930937 = phi ptr [ %.pre930936, %_ZNSt6vectorImSaImEE9push_backERKm.exit261 ], [ %.pre930, %.loopexit558 ] ; 3 uses
  %i.abn = phi ptr [ %i.act, %_ZNSt6vectorImSaImEE9push_backERKm.exit261 ], [ %.pre930, %.loopexit558 ] ; 4 uses
  %.sroa.0447.0759 = phi ptr [ %i.acw, %_ZNSt6vectorImSaImEE9push_backERKm.exit261 ], [ %i.abk, %.loopexit558 ] ; 2 uses
  %i.abo = phi ptr [ %i.acv, %_ZNSt6vectorImSaImEE9push_backERKm.exit261 ], [ %.promoted750, %.loopexit558 ] ; 7 uses
  %i.abp = phi ptr [ %i.acu, %_ZNSt6vectorImSaImEE9push_backERKm.exit261 ], [ %.promoted754, %.loopexit558 ] ; 8 uses
  %i.abq = load i64, ptr %.sroa.0447.0759, align 8, !tbaa !218 ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 64
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !585
  %i.abt = getelementptr inbounds nuw [200 x i8], ptr %i.abs, i64 %i.abq ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 184 ; 2 uses
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !1417
  %i.abw = add nsw i32 %i.abv, -1                 ; 2 uses
  store i32 %i.abw, ptr %i.abu, align 8, !tbaa !1417
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abt, i64 188
  %i.aby = load i8, ptr %i.abx, align 4, !tbaa !715, !range !138, !noundef !139
  %i.abz = trunc nuw i8 %i.aby to i1
  %i.aca = icmp ne i32 %i.abw, 0
  %or.cond136.not = select i1 %i.abz, i1 true, i1 %i.aca
  br i1 %or.cond136.not, label %_ZNSt6vectorImSaImEE9push_backERKm.exit261, label %bb.fb

bb.fb:                                            ; preds = %.lr.ph761
  %i.acb = load ptr, ptr %i.yl, align 8, !tbaa !710
  %.not.i252 = icmp eq ptr %i.abo, %i.acb
  br i1 %.not.i252, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  store i64 %i.abq, ptr %i.abo, align 8, !tbaa !218
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit261

bb.fd:                                            ; preds = %bb.fb
  %i.acd = ptrtoint ptr %i.abo to i64
  %i.ace = ptrtoint ptr %i.abp to i64
  %i.acf = sub i64 %i.acd, %i.ace                 ; 6 uses
  %i.acg = icmp eq i64 %i.acf, 9223372036854775800
  br i1 %i.acg, label %bb.fe, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i253

bb.fe:                                            ; preds = %bb.fd
  store ptr %i.abo, ptr %i.xe, align 1
  store ptr %i.abp, ptr %17, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #37
          to label %.noexc259 unwind label %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc259:                                        ; preds = %bb.fe
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i253: ; preds = %bb.fd
  %i.ach = ashr exact i64 %i.acf, 3               ; 3 uses
  %.sroa.speculated.i.i.i254 = call i64 @llvm.umax.i64(i64 %i.ach, i64 1)
  %i.aci = add nsw i64 %.sroa.speculated.i.i.i254, %i.ach ; 2 uses
  %i.acj = icmp ult i64 %i.aci, %i.ach
  %i.ack = call i64 @llvm.umin.i64(i64 %i.aci, i64 1152921504606846975)
  %i.acl = select i1 %i.acj, i64 1152921504606846975, i64 %i.ack ; 3 uses
  %.not.i.i.i255 = icmp ne i64 %i.acl, 0
  call void @llvm.assume(i1 %.not.i.i.i255)
  %i.acm = shl nuw nsw i64 %i.acl, 3
  %i.acn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acm) #38
          to label %.noexc260 unwind label %.loopexit551 ; 4 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i253
  %i.aco = getelementptr inbounds i8, ptr %i.acn, i64 %i.acf ; 2 uses
  store i64 %i.abq, ptr %i.aco, align 8, !tbaa !218
  %i.acp = icmp sgt i64 %i.acf, 0
  br i1 %i.acp, label %bb.ff, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i256

bb.ff:                                            ; preds = %.noexc260
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.acn, ptr align 8 %i.abp, i64 %i.acf, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i256

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i256: ; preds = %bb.ff, %.noexc260
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  %.not.i17.i.i257 = icmp eq ptr %i.abp, null
  br i1 %.not.i17.i.i257, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i258, label %bb.fg

bb.fg:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i256
  call void @_ZdlPvm(ptr noundef nonnull %i.abp, i64 noundef %i.acf) #36
  %.pre929 = load ptr, ptr %12, align 8, !tbaa !689 ; 2 uses
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i258

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i258: ; preds = %bb.fg, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i256
  %.pre930935 = phi ptr [ %.pre929, %bb.fg ], [ %.pre930937, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i256 ]
  %i.acr = phi ptr [ %.pre929, %bb.fg ], [ %i.abn, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i256 ]
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %i.acl
  store ptr %i.acs, ptr %i.yl, align 8, !tbaa !710
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit261

.loopexit551:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i253
  %lpad.loopexit553 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.abo, ptr %i.xe, align 1
  store ptr %i.abp, ptr %17, align 8
  br label %.body248

.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i247, %bb.fa, %bb.fe
  %lpad.loopexit.split-lp1374 = landingpad { ptr, i32 }
          cleanup
  br label %.body248

_ZNSt6vectorImSaImEE9push_backERKm.exit261:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i258, %bb.fc, %.lr.ph761
  %.pre930936 = phi ptr [ %.pre930935, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i258 ], [ %.pre930937, %bb.fc ], [ %.pre930937, %.lr.ph761 ] ; 2 uses
  %i.act = phi ptr [ %i.acr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i258 ], [ %i.abn, %bb.fc ], [ %i.abn, %.lr.ph761 ] ; 2 uses
  %i.acu = phi ptr [ %i.acn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i258 ], [ %i.abp, %bb.fc ], [ %i.abp, %.lr.ph761 ] ; 2 uses
  %i.acv = phi ptr [ %i.acq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i258 ], [ %i.acc, %bb.fc ], [ %i.abo, %.lr.ph761 ] ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.sroa.0447.0759, i64 8 ; 2 uses
  %.not537 = icmp eq ptr %i.acw, %i.abm
  br i1 %.not537, label %._crit_edge762, label %.lr.ph761

._crit_edge762:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit261, %.loopexit558
  %.pre930938 = phi ptr [ %.pre930, %.loopexit558 ], [ %.pre930936, %_ZNSt6vectorImSaImEE9push_backERKm.exit261 ]
  %i.acx = phi ptr [ %i.zy, %.loopexit558 ], [ %i.act, %_ZNSt6vectorImSaImEE9push_backERKm.exit261 ] ; 2 uses
  %.lcssa755 = phi ptr [ %.promoted754, %.loopexit558 ], [ %i.acu, %_ZNSt6vectorImSaImEE9push_backERKm.exit261 ]
  %.lcssa751 = phi ptr [ %.promoted750, %.loopexit558 ], [ %i.acv, %_ZNSt6vectorImSaImEE9push_backERKm.exit261 ]
  store ptr %.lcssa751, ptr %i.xe, align 1
  store ptr %.lcssa755, ptr %17, align 8
  %i.acy = getelementptr inbounds nuw i8, ptr %.sroa.0458.0768, i64 8 ; 2 uses
  %.not532 = icmp eq ptr %i.acy, %i.zv
  br i1 %.not532, label %.critedge138, label %.lr.ph770

.critedge138:                                     ; preds = %._crit_edge762, %.loopexit559, %bb.eq, %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit"
  %i.acz = phi ptr [ %i.zr, %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit" ], [ %i.zy, %bb.eq ], [ %i.zy, %.loopexit559 ], [ %i.acx, %._crit_edge762 ] ; 8 uses
  %.sroa.5463.3 = phi i8 [ %.sroa.5463.0779, %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit" ], [ 0, %bb.eq ], [ %spec.select545, %.loopexit559 ], [ 0, %._crit_edge762 ] ; 2 uses
  %.sroa.0462.3 = phi i64 [ %.sroa.0462.0780, %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit" ], [ %spec.select546, %bb.eq ], [ %spec.select546, %.loopexit559 ], [ %spec.select546, %._crit_edge762 ] ; 2 uses
  %.6 = phi i8 [ %.070781, %"_ZZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEEN3$_2D2Ev.exit" ], [ 1, %bb.eq ], [ %.5, %.loopexit559 ], [ 0, %._crit_edge762 ] ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 176
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acz, i64 184 ; 2 uses
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !709 ; 2 uses
  %i.add = load ptr, ptr %i.ada, align 8, !tbaa !711 ; 3 uses
  %i.ade = ptrtoint ptr %i.adc to i64
  %i.adf = ptrtoint ptr %i.add to i64
  %i.adg = sub i64 %i.ade, %i.adf
  %i.adh = ashr exact i64 %i.adg, 3
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acz, i64 200 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acz, i64 208
  %i.adk = load <2 x i64>, ptr %i.adi, align 8, !tbaa !218
  %i.adl = insertelement <2 x i64> poison, i64 %i.adh, i64 0
  %i.adm = shufflevector <2 x i64> %i.adl, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.adn = sub <2 x i64> %i.adk, %i.adm
  store <2 x i64> %i.adn, ptr %i.adi, align 8, !tbaa !218
  %.not.i.i262 = icmp eq ptr %i.adc, %i.add
  br i1 %.not.i.i262, label %_ZNSt6vectorImSaImEE5clearEv.exit264, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i263

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i263:     ; preds = %.critedge138
  store ptr %i.add, ptr %i.adb, align 8, !tbaa !709
  br label %_ZNSt6vectorImSaImEE5clearEv.exit264

_ZNSt6vectorImSaImEE5clearEv.exit264:             ; preds = %.critedge138, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i263
  %i.ado = load i8, ptr %i.yk, align 8, !tbaa !1421, !range !138, !noundef !139
  %i.adp = trunc nuw i8 %i.ado to i1
  br i1 %i.adp, label %bb.fh, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.fh:                                            ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit264
  %i.adq = load ptr, ptr %20, align 8, !tbaa !1420 ; 2 uses
  %.not.i.i265 = icmp eq ptr %i.adq, null
  br i1 %.not.i.i265, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.adr = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.adq) #34 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit264, %bb.fh, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  %i.ads = load ptr, ptr %i.ym, align 8, !tbaa !403
  %.not.i.i266.not = icmp eq ptr %i.ads, null
  br i1 %.not.i.i266.not, label %bb.fn, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.adt = getelementptr inbounds nuw i8, ptr %i.acz, i64 64
  %i.adu = getelementptr inbounds nuw i8, ptr %i.acz, i64 72
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !586
  %i.adw = load ptr, ptr %i.adt, align 8, !tbaa !585
  %i.adx = ptrtoint ptr %i.adv to i64
  %i.ady = ptrtoint ptr %i.adw to i64
  %i.adz = sub i64 %i.adx, %i.ady
  %i.aea = sdiv exact i64 %i.adz, 200             ; 2 uses
  %i.aeb = load i64, ptr %i.adj, align 8, !tbaa !1416
  %i.aec = sub i64 %i.aea, %i.aeb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.aec, ptr %i.b, align 8, !tbaa !218
  store i64 %i.aea, ptr %i.c, align 8, !tbaa !218
  %i.aed = load ptr, ptr %i.yn, align 8, !tbaa !1423
  %i.aee = invoke noundef zeroext i1 %i.aed(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.fk unwind label %.loopexit.split-lp561.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !inline_history !1408

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %spec.select139 = select i1 %i.aee, i8 %.6, i8 1
  br label %bb.fn

.body248:                                         ; preds = %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit551, %bb.ex, %bb.ew, %bb.en
  %.pn106.pn = phi { ptr, i32 } [ %i.zx, %bb.en ], [ %i.abc, %bb.ex ], [ %i.abc, %bb.ew ], [ %lpad.loopexit553, %.loopexit551 ], [ %lpad.loopexit.split-lp1374, %.loopexit.split-lp552.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.aef = load i8, ptr %i.yk, align 8, !tbaa !1421, !range !138, !noundef !139
  %i.aeg = trunc nuw i8 %i.aef to i1
  br i1 %i.aeg, label %bb.fl, label %_ZNSt11unique_lockISt5mutexED2Ev.exit271

bb.fl:                                            ; preds = %.body248
  %i.aeh = load ptr, ptr %20, align 8, !tbaa !1420 ; 2 uses
  %.not.i.i270 = icmp eq ptr %i.aeh, null
  br i1 %.not.i.i270, label %_ZNSt11unique_lockISt5mutexED2Ev.exit271, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aei = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aeh) #34 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit271

_ZNSt11unique_lockISt5mutexED2Ev.exit271:         ; preds = %bb.fm, %bb.fl, %.body248, %bb.em
  %.pn106.pn.pn = phi { ptr, i32 } [ %i.zw, %bb.em ], [ %.pn106.pn, %.body248 ], [ %.pn106.pn, %bb.fl ], [ %.pn106.pn, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %.body291thread-pre-split

.loopexit.split-lp561.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i212
  %lpad.loopexit571 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.uv, ptr %17, align 8
  br label %.body291

.loopexit.split-lp561.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i288, %bb.fj, %bb.gj
  %lpad.loopexit.split-lp1370 = landingpad { ptr, i32 }
          cleanup
  br label %.body291thread-pre-split

.loopexit.split-lp561.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body291

bb.fn:                                            ; preds = %bb.fk, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %.7 = phi i8 [ %spec.select139, %bb.fk ], [ %.6, %_ZNSt11unique_lockISt5mutexED2Ev.exit ] ; 2 uses
  %i.aej = load ptr, ptr %17, align 8, !tbaa !713
  %i.aek = load ptr, ptr %i.xe, align 8, !tbaa !713
  %i.ael = icmp eq ptr %i.aej, %i.aek
  br i1 %i.ael, label %_ZNSt6vectorImSaImEE5clearEv.exit282, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  store ptr %i.acz, ptr %21, align 8, !tbaa !689
  %i.aem = load ptr, ptr %i.r, align 8, !tbaa !231 ; 3 uses
  store ptr %i.aem, ptr %i.yo, align 8, !tbaa !231
  %.not.i.i.i272 = icmp eq ptr %i.aem, null
  br i1 %.not.i.i.i272, label %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit274, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 8 ; 3 uses
  %i.aeo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !220
  %.not.i.i.i.i273 = icmp eq i8 %i.aeo, 0
  br i1 %.not.i.i.i.i273, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aep = load i32, ptr %i.aen, align 4, !tbaa !109
  %i.aeq = add nsw i32 %i.aep, 1
  store i32 %i.aeq, ptr %i.aen, align 4, !tbaa !109
  br label %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit274

bb.fr:                                            ; preds = %bb.fp
  %i.aer = atomicrmw volatile add ptr %i.aen, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit274

_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit274: ; preds = %bb.fo, %bb.fq, %bb.fr
  invoke void @_ZN4Luau8Frontend18sendQueueItemTasksESt10shared_ptrINS_19BuildQueueWorkStateEERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(2184) %1, ptr noundef nonnull align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.fs unwind label %bb.fz

bb.fs:                                            ; preds = %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit274
  %i.aes = load ptr, ptr %i.yo, align 8, !tbaa !231 ; 8 uses
  %.not.i.i275 = icmp eq ptr %i.aes, null
  br i1 %.not.i.i275, label %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit279, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 8 ; 4 uses
  %i.aeu = load atomic i64, ptr %i.aet acquire, align 8 ; 2 uses
  %i.aev = icmp eq i64 %i.aeu, 4294967297
  %i.aew = trunc i64 %i.aeu to i32                ; 2 uses
  br i1 %i.aev, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  store i32 0, ptr %i.aet, align 8, !tbaa !233
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aes, i64 12
  store i32 0, ptr %i.aex, align 4, !tbaa !234
  %i.aey = load ptr, ptr %i.aes, align 8, !tbaa !236
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  %i.afa = load ptr, ptr %i.aez, align 8
  call void %i.afa(ptr noundef nonnull align 8 dereferenceable(16) %i.aes) #34, !inline_history !38
  %i.afb = load ptr, ptr %i.aes, align 8, !tbaa !236
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  %i.afd = load ptr, ptr %i.afc, align 8
  call void %i.afd(ptr noundef nonnull align 8 dereferenceable(16) %i.aes) #34, !inline_history !38
  br label %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit279

bb.fv:                                            ; preds = %bb.ft
  %i.afe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !220
  %.not.i.i.i276 = icmp eq i8 %i.afe, 0
  br i1 %.not.i.i.i276, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aff = add nsw i32 %i.aew, -1
  store i32 %i.aff, ptr %i.aet, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i277

bb.fx:                                            ; preds = %bb.fv
  %i.afg = atomicrmw volatile add ptr %i.aet, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i277

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i277: ; preds = %bb.fx, %bb.fw
  %.0.i.i.i.i278 = phi i32 [ %i.aew, %bb.fw ], [ %i.afg, %bb.fx ]
  %i.afh = icmp eq i32 %.0.i.i.i.i278, 1
  br i1 %i.afh, label %bb.fy, label %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit279, !prof !120

bb.fy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i277
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aes) #34
  br label %_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit279

_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit279: ; preds = %bb.fs, %bb.fu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i277, %bb.fy
  %i.afi = load ptr, ptr %17, align 8, !tbaa !711 ; 2 uses
  %i.afj = load ptr, ptr %i.xe, align 8, !tbaa !709 ; 2 uses
  %.not.i.i280 = icmp eq ptr %i.afj, %i.afi
  %spec.store.select530 = select i1 %.not.i.i280, ptr %i.afj, ptr %i.afi
  store ptr %spec.store.select530, ptr %i.xe, align 8, !tbaa !709
  %.pre931 = load ptr, ptr %12, align 8, !tbaa !689
  br label %_ZNSt6vectorImSaImEE5clearEv.exit282

bb.fz:                                            ; preds = %_ZNSt10shared_ptrIN4Luau19BuildQueueWorkStateEEC2ERKS2_.exit274
  %i.afk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #34
  br label %.body291thread-pre-split
end_hunk_1
