Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/type_manager?download=true
inline.NumInlined: 418
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4bzla4type11TypeManager7init_idEPNS0_8TypeDataE:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.aa ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.g, i64 %i.aa ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.ab = getelementptr i8, ptr %next.gep5, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !tbaa !28, !alias.scope !79
  %wide.load6 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !28, !alias.scope !79
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !28, !alias.scope !78
  store <2 x i64> %wide.load6, ptr %i.ac, align 8, !tbaa !28, !alias.scope !78
  store <2 x ptr> splat (ptr null), ptr %next.gep5, align 8, !tbaa !28, !alias.scope !79
  store <2 x ptr> splat (ptr null), ptr %i.ab, align 8, !tbaa !28, !alias.scope !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.preheader8:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.ae = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !28, !alias.scope !79
  store i64 %i.ae, ptr %.012.i.i.i.i.i, align 8, !tbaa !28, !alias.scope !78
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !28, !alias.scope !79
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !77

_ZNSt6vectorISt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorISt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.y, %middle.block ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.ak) #16
  br label %_ZNSt6vectorISt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !25
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.al, ptr %i.d, align 8, !tbaa !29
  br label %_ZNSt6vectorISt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  %i.am = load i64, ptr %0, align 8, !tbaa !82    ; 2 uses
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %0, align 8, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4bzla4type11TypeManager14find_or_createEPNS0_8TypeDataE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %i.b, ptr %2, align 8, !tbaa !56
  %i.c = call { ptr, i8 } @_ZNSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SH_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.fca.0.extract = extractvalue { ptr, i8 } %i.c, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.c, 1
  %i.d = trunc nuw i8 %.fca.1.extract to i1
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4bzla4type8TypeDataD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.e) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 72) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @_ZN4bzla4type11TypeManager7init_idEPNS0_8TypeDataE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.in = phi ptr [ %i.a, %bb.e ], [ %i.g, %bb.d ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !28
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @_ZN4bzla4type8TypeDataD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #7

declare void @_ZN4bzla4type8TypeDataC1EPNS0_11TypeManagerENS1_4KindERKSt6vectorINS_4TypeESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

declare void @_ZN4bzla4type8TypeDataC1EPNS0_11TypeManagerEm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i64 noundef) unnamed_addr #6

declare void @_ZN4bzla4type8TypeDataC1EPNS0_11TypeManagerEmm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i64 noundef, i64 noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla4type11TypeManager15garbage_collectEPNS0_8TypeDataE(ptr noundef nonnull align 8 dereferenceable(96) initializes((8, 9)) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !85
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS2_EE5resetEPS2_.exit, %bb.a
  %.sroa.11.0 = phi ptr [ %i.d, %bb.a ], [ %.sroa.11.3, %_ZNSt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS2_EE5resetEPS2_.exit ]
  %.sroa.19.0 = phi ptr [ %i.d, %bb.a ], [ %.sroa.19.3, %_ZNSt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS2_EE5resetEPS2_.exit ] ; 4 uses
  %.sroa.034.0 = phi ptr [ %i.c, %bb.a ], [ %.sroa.034.3, %_ZNSt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS2_EE5resetEPS2_.exit ] ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.11.0, i64 -8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  store ptr %i.h, ptr %i.a, align 8, !tbaa !28
  %i.i = invoke noundef i64 @_ZNSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt13unordered_setIPN4bzla4type8TypeDataENS1_12TypeDataHashENS1_16TypeDataKeyEqualESaIS3_EE5eraseERKS3_.exit unwind label %.loopexit.split-lp48.loopexit.split-lp ; 0 uses

_ZNSt13unordered_setIPN4bzla4type8TypeDataENS1_12TypeDataHashENS1_16TypeDataKeyEqualESaIS3_EE5eraseERKS3_.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.k = invoke noundef i32 @_ZNK4bzla4type8TypeData8get_kindEv(ptr noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %bb.c unwind label %.loopexit.split-lp48.loopexit.split-lp

bb.c:                                             ; preds = %_ZNSt13unordered_setIPN4bzla4type8TypeDataENS1_12TypeDataHashENS1_16TypeDataKeyEqualESaIS3_EE5eraseERKS3_.exit
  %i.l = and i32 %i.k, -2
  %or.cond = icmp eq i32 %i.l, 4
  %.pre96 = load ptr, ptr %i.a, align 8, !tbaa !28 ; 5 uses
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.pre96, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre96, i64 64
  %i.o = load i8, ptr %i.n, align 8, !tbaa !40
  switch i8 %i.o, label %.invoke [
    i8 2, label %_ZSt3getISt6vectorIN4bzla4TypeESaIS2_EEJmSt4pairImmES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERT_RSt7variantIJDpT0_EE.exit
    i8 -1, label %.invoke.loopexit
  ], !prof !41

.invoke.loopexit:                                 ; preds = %bb.d
  br label %.invoke

.invoke:                                          ; preds = %bb.d, %.invoke.loopexit
  %.str.sink = phi ptr [ @.str, %.invoke.loopexit ], [ @.str.1, %bb.d ]
  %i.p = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.p, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.str.sink, ptr %i.q, align 8, !tbaa !47
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #18
          to label %.cont unwind label %.loopexit.split-lp48.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt3getISt6vectorIN4bzla4TypeESaIS2_EEJmSt4pairImmES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.pre96, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt3getISt6vectorIN4bzla4TypeESaIS2_EEJmSt4pairImmES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERT_RSt7variantIJDpT0_EE.exit
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  br label %.lr.ph

.loopexit.split-lp48.loopexit.split-lp:           ; preds = %bb.b, %_ZNSt13unordered_setIPN4bzla4type8TypeDataENS1_12TypeDataHashENS1_16TypeDataKeyEqualESaIS3_EE5eraseERKS3_.exit, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE9push_backERKS3_.exit
  %.077 = phi i64 [ %i.av, %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE9push_backERKS3_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.034.176 = phi ptr [ %.sroa.034.2, %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.034.0, %.lr.ph.preheader ] ; 6 uses
  %.sroa.19.175 = phi ptr [ %.sroa.19.2, %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.19.0, %.lr.ph.preheader ] ; 5 uses
  %.sroa.11.174 = phi ptr [ %.sroa.11.2, %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE9push_backERKS3_.exit ], [ %i.g, %.lr.ph.preheader ] ; 4 uses
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.077 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !86
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !86
  store ptr null, ptr %i.z, align 8, !tbaa !50
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.11.174, %.sroa.19.175
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.aa, ptr %.sroa.11.174, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.11.174, i64 8
  br label %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = ptrtoint ptr %.sroa.19.175 to i64
  %i.ah = ptrtoint ptr %.sroa.034.176 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.h, label %_ZNKSt6vectorIPN4bzla4type8TypeDataESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPN4bzla4type8TypeDataESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #20
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIPN4bzla4type8TypeDataESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  store ptr %i.aa, ptr %i.ar, align 8, !tbaa !28
  %i.as = icmp sgt i64 %i.ai, 0
  br i1 %i.as, label %bb.i, label %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

bb.i:                                             ; preds = %.noexc25
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %.sroa.034.176, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %.noexc25
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.176, i64 noundef %i.ai) #16
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  br label %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE9push_backERKS3_.exit

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIPN4bzla4type8TypeDataESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.h
  %lpad.loopexit.split-lp132 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %.lr.ph
  %.sroa.11.2 = phi ptr [ %.sroa.11.174, %.lr.ph ], [ %i.at, %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.af, %bb.f ] ; 2 uses
  %.sroa.19.2 = phi ptr [ %.sroa.19.175, %.lr.ph ], [ %i.au, %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.19.175, %bb.f ] ; 2 uses
  %.sroa.034.2 = phi ptr [ %.sroa.034.176, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.034.176, %bb.f ] ; 2 uses
  %i.av = add nuw i64 %.077, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %i.x
  br i1 %exitcond.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !83

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EE9push_backERKS3_.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZSt3getISt6vectorIN4bzla4TypeESaIS2_EEJmSt4pairImmES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERT_RSt7variantIJDpT0_EE.exit, %bb.c
  %i.aw = phi ptr [ %.pre96, %bb.c ], [ %.pre96, %_ZSt3getISt6vectorIN4bzla4TypeESaIS2_EEJmSt4pairImmES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERT_RSt7variantIJDpT0_EE.exit ], [ %.pre, %.loopexit.loopexit ]
  %.sroa.11.3 = phi ptr [ %i.g, %bb.c ], [ %i.g, %_ZSt3getISt6vectorIN4bzla4TypeESaIS2_EEJmSt4pairImmES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERT_RSt7variantIJDpT0_EE.exit ], [ %.sroa.11.2, %.loopexit.loopexit ] ; 3 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.0, %bb.c ], [ %.sroa.19.0, %_ZSt3getISt6vectorIN4bzla4TypeESaIS2_EEJmSt4pairImmES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERT_RSt7variantIJDpT0_EE.exit ], [ %.sroa.19.2, %.loopexit.loopexit ] ; 2 uses
  %.sroa.034.3 = phi ptr [ %.sroa.034.0, %bb.c ], [ %.sroa.034.0, %_ZSt3getISt6vectorIN4bzla4TypeESaIS2_EEJmSt4pairImmES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERT_RSt7variantIJDpT0_EE.exit ], [ %.sroa.034.2, %.loopexit.loopexit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !63
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8     ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !28 ; 3 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !28
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN4bzla4type8TypeDataEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4bzla4type8TypeDataEEclEPS2_.exit.i.i: ; preds = %.loopexit
  call void @_ZN4bzla4type8TypeDataD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.bc) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 72) #16
  br label %_ZNSt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %.loopexit, %_ZNKSt14default_deleteIN4bzla4type8TypeDataEEclEPS2_.exit.i.i
  %i.bd = icmp eq ptr %.sroa.034.3, %.sroa.11.3
  br i1 %i.bd, label %_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EED2Ev.exit, label %bb.b, !llvm.loop !84

_ZNSt6vectorIPN4bzla4type8TypeDataESaIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4bzla4type8TypeDataESt14default_deleteIS2_EE5resetEPS2_.exit
  store i8 0, ptr %i.b, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.be = ptrtoint ptr %.sroa.19.3 to i64
  %i.bf = ptrtoint ptr %.sroa.11.3 to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.3, i64 noundef %i.bg) #16
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp48.loopexit.split-lp
  %.sroa.19.4 = phi ptr [ %.sroa.19.0, %.loopexit.split-lp48.loopexit.split-lp ], [ %.sroa.19.175, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.034.4 = phi ptr [ %.sroa.034.0, %.loopexit.split-lp48.loopexit.split-lp ], [ %.sroa.034.176, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp48.loopexit.split-lp ], [ %lpad.loopexit.split-lp132, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bh = ptrtoint ptr %.sroa.19.4 to i64
  %i.bi = ptrtoint ptr %.sroa.034.4 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4, i64 noundef %i.bj) #16
  resume { ptr, i32 } %.pn.pn.pn
}

declare noundef i32 @_ZNK4bzla4type8TypeData8get_kindEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  ret ptr %i.b
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SH_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.c, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !20 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.e = load ptr, ptr %1, align 8, !tbaa !28
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.g = tail call noundef zeroext i1 @_ZNK4bzla4type16TypeDataKeyEqualclEPKNS0_8TypeDataES4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.e, ptr noundef %i.f)
  br i1 %i.g, label %_ZNSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit, label %bb.c, !llvm.loop !87

.thread:                                          ; preds = %bb.c, %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !28
  %i.i = tail call noundef i64 @_ZNK4bzla4type12TypeDataHashclEPKNS0_8TypeDataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.h) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23
  %i.l = urem i64 %i.i, %i.k                      ; 3 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !64
  %.not36 = icmp eq i64 %i.m, 0
  br i1 %.not36, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.n = load ptr, ptr %0, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.l
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !65   ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.r = phi i64 [ %.pre.i.i, %bb.f ], [ %i.aa, %bb.h ]
  %.015.i.i = phi ptr [ %i.p, %bb.f ], [ %.0.i.i, %bb.h ]
  %.0.i.i = phi ptr [ %i.q, %bb.f ], [ %i.x, %bb.h ] ; 3 uses
  %i.s = icmp eq i64 %i.i, %i.r
  br i1 %i.s, label %_ZNKSt8__detail15_Hashtable_baseIPN4bzla4type8TypeDataES4_NS_9_IdentityENS2_16TypeDataKeyEqualENS2_12TypeDataHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIPN4bzla4type8TypeDataES4_NS_9_IdentityENS2_16TypeDataKeyEqualENS2_12TypeDataHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIPN4bzla4type8TypeDataES4_NS_9_IdentityENS2_16TypeDataKeyEqualENS2_12TypeDataHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.u = load ptr, ptr %1, align 8, !tbaa !28
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.w = tail call noundef zeroext i1 @_ZNK4bzla4type16TypeDataKeyEqualclEPKNS0_8TypeDataES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.u, ptr noundef %i.v)
  br i1 %i.w, label %_ZNKSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIPN4bzla4type8TypeDataES4_NS_9_IdentityENS2_16TypeDataKeyEqualENS2_12TypeDataHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIPN4bzla4type8TypeDataES4_NS_9_IdentityENS2_16TypeDataKeyEqualENS2_12TypeDataHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIPN4bzla4type8TypeDataES4_NS_9_IdentityENS2_16TypeDataKeyEqualENS2_12TypeDataHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i, %bb.g
  %i.x = load ptr, ptr %.0.i.i, align 8, !tbaa !20 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIPN4bzla4type8TypeDataES4_NS_9_IdentityENS2_16TypeDataKeyEqualENS2_12TypeDataHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i
  %i.y = load i64, ptr %i.j, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !67  ; 2 uses
  %i.ab = urem i64 %i.aa, %i.y
  %.not19.i.i = icmp eq i64 %i.ab, %i.l
  br i1 %.not19.i.i, label %bb.g, label %.critedge, !llvm.loop !88

_ZNKSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIPN4bzla4type8TypeDataES4_NS_9_IdentityENS2_16TypeDataKeyEqualENS2_12TypeDataHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i
  %i.ac = load ptr, ptr %.015.i.i, align 8, !tbaa !20 ; 2 uses
  %.not18 = icmp eq ptr %i.ac, null
  br i1 %.not18, label %.critedge, label %_ZNSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIPN4bzla4type8TypeDataES4_NS_9_IdentityENS2_16TypeDataKeyEqualENS2_12TypeDataHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i, %bb.h, %bb.e, %_ZNKSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, %.thread
  %i.ad = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 4 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %1, align 8, !tbaa !28
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !28
  %i.ag = invoke ptr @_ZNSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.l, i64 noundef %i.i, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZNSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %_ZNSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 24) #16
  resume { ptr, i32 } %i.ah

_ZNSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.d, %.critedge, %_ZNKSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit
  %.sroa.031.1 = phi ptr [ %i.ac, %_ZNKSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit ], [ %i.ag, %.critedge ], [ %.sroa.028.0, %bb.d ]
  %.sroa.432.1 = phi i8 [ 0, %_ZNKSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit ], [ 1, %.critedge ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !64
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIPN4bzla4type8TypeDataES3_SaIS3_ENSt8__detail9_IdentityENS1_16TypeDataKeyEqualENS1_12TypeDataHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #17 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !89
  invoke void @__cxa_rethrow() #18
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
end_hunk_0
