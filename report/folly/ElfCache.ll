Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ElfCache?download=true
inline.NumInlined: 691
inline.NumDeleted: 427
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5folly10symbolizer8ElfCache7getFileENS_5RangeIPKcEE:bb.a
  store ptr %i.ae, ptr %6, align 8, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.bk = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ar, %bb.t ], [ %i.ae, %bb.u ], [ %i.au, %bb.p ]
  store i64 0, ptr %i.ao, align 8, !tbaa !74
  store i8 0, ptr %i.bk, align 1, !tbaa !61
  %i.bl = load ptr, ptr %6, align 8, !tbaa !80    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ae
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bn = load i64, ptr %i.ae, align 8, !tbaa !61
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bp = load ptr, ptr %5, align 8, !tbaa !82    ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i8 0, ptr %7, align 1, !tbaa !58
  %i.bs = call { i32, ptr } @_ZN5folly10symbolizer7ElfFile13openAndFollowEPKcRKNS1_7OptionsE(ptr noundef nonnull align 8 dereferenceable(576) %i.bq, ptr noundef %i.br, ptr noundef nonnull align 1 dereferenceable(1) %7) #21
  %i.bt = extractvalue { i32, ptr } %i.bs, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19

bb.w:                                             ; preds = %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc9.i.i.i, %.noexc.i.i.i, %.noexc.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.aj

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = invoke { ptr, i8 } @_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEES5_INSE_14_Node_iteratorISC_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNSt13unordered_mapIN5folly5RangeIPKcEESt10shared_ptrINS0_10symbolizer8ElfCache5EntryEENS0_4HashESt8equal_toIS4_ESaISt4pairIKS4_S9_EEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.ac

_ZNSt13unordered_mapIN5folly5RangeIPKcEESt10shared_ptrINS0_10symbolizer8ElfCache5EntryEENS0_4HashESt8equal_toIS4_ESaISt4pairIKS4_S9_EEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit: ; preds = %bb.y
  %.fca.0.extract = extractvalue { ptr, i8 } %i.bw, 0 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.by = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !59, !noalias !204 ; 2 uses
  %i.ca = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !60, !noalias !204
  %i.cb = getelementptr inbounds nuw i8, <2 x ptr> %i.ca, <2 x i64> <i64 32, i64 0>
  store <2 x ptr> %i.cb, ptr %0, align 8, !tbaa !60, !alias.scope !204
  %.not.i.i.i.i17 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i17, label %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19, label %bb.z

bb.z:                                             ; preds = %_ZNSt13unordered_mapIN5folly5RangeIPKcEESt10shared_ptrINS0_10symbolizer8ElfCache5EntryEENS0_4HashESt8equal_toIS4_ESaISt4pairIKS4_S9_EEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61, !noalias !204
  %.not.i.i.i.i.i18 = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i18, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !62, !noalias !204
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !62, !noalias !204
  br label %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19

bb.ab:                                            ; preds = %bb.z
  %i.cg = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4, !noalias !204 ; 0 uses
  br label %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19

bb.ac:                                            ; preds = %bb.y
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19: ; preds = %bb.ab, %bb.aa, %_ZNSt13unordered_mapIN5folly5RangeIPKcEESt10shared_ptrINS0_10symbolizer8ElfCache5EntryEENS0_4HashESt8equal_toIS4_ESaISt4pairIKS4_S9_EEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit, %bb.v
  %i.ci = load ptr, ptr %i.r, align 8, !tbaa !59  ; 8 uses
  %.not.i.i20 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i20, label %_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cj, align 8, !tbaa !69
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !70
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #21, !call_target !87, !inline_history !196
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #21, !call_target !102, !inline_history !196
  br label %_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i = phi i32 [ %i.cm, %bb.ag ], [ %i.cw, %bb.ah ]
  %i.cx = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cx, label %bb.ai, label %_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !79

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #21
  br label %_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit

bb.aj:                                            ; preds = %bb.ac, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.ac ], [ %i.bv, %bb.x ]
  call void @_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aj ], [ %i.bu, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.al

_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit: ; preds = %bb.f, %bb.e, %bb.c, %_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cy = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 0 uses
  ret void

bb.al:                                            ; preds = %bb.ak, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ak ], [ %i.q, %bb.g ]
  %i.cz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly10symbolizer8ElfCacheD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10symbolizer8ElfCacheE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly10symbolizer8ElfCacheD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10symbolizer8ElfCacheE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #21, !inline_history !205
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly10symbolizer18SignalSafeElfCache4PathC2EPKcmRKNS_19reentrant_allocatorIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  tail call void @_ZN5folly6detail24reentrant_allocator_baseC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = add i64 %2, 1                            ; 4 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE7reserveEm.exit, label %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = tail call noundef ptr @_ZN5folly6detail24reentrant_allocator_base8allocateEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, i64 noundef 1) #21 ; 10 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !31   ; 9 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !32   ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit.i
  %4 = ptrtoaddr ptr %i.i to i64                  ; 3 uses
  %i.j = ptrtoaddr ptr %i.h to i64
  %5 = sub i64 %4, %i.j                           ; 7 uses
  %min.iters.check = icmp ult i64 %5, 8
  %6 = ptrtoaddr ptr %i.g to i64
  %7 = ptrtoaddr ptr %i.h to i64
  %i.k = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.k, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i64 %5, 32
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %5, 24
  %n.vec = and i64 %5, -32                        ; 5 uses
  %i.m = getelementptr i8, ptr %i.g, i64 %n.vec
  %i.n = getelementptr i8, ptr %i.h, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.h, i64 %index ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.o = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep15, align 1, !tbaa !61, !alias.scope !228, !noalias !227
  %wide.load16 = load <16 x i8>, ptr %i.o, align 1, !tbaa !61, !alias.scope !228, !noalias !227
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !61, !alias.scope !227, !noalias !228
  store <16 x i8> %wide.load16, ptr %i.p, align 1, !tbaa !61, !alias.scope !227, !noalias !228
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !149

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %5, -8                       ; 4 uses
  %i.r = getelementptr i8, ptr %i.g, i64 %n.vec18
  %i.s = getelementptr i8, ptr %i.h, i64 %n.vec18
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %next.gep20 = getelementptr i8, ptr %i.g, i64 %index19
  %next.gep21 = getelementptr i8, ptr %i.h, i64 %index19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %wide.load22 = load <8 x i8>, ptr %next.gep21, align 1, !tbaa !61, !alias.scope !228, !noalias !227
  store <8 x i8> %wide.load22, ptr %next.gep20, align 1, !tbaa !61, !alias.scope !227, !noalias !228
  %index.next23 = add nuw i64 %index19, 8         ; 2 uses
  %i.t = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !210

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %5, %n.vec18
  br i1 %cmp.n24, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.i.i.i.ph = phi ptr [ %i.h, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.i.i.i.ph27 = ptrtoaddr ptr %.0911.i.i.i.i.ph to i64 ; 2 uses
  %i.u = sub i64 %4, %.0911.i.i.i.i.ph27
  %xtraiter = and i64 %i.u, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.012.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.prol ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.prol ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.v = load i8, ptr %.0911.i.i.i.i.prol, align 1, !tbaa !61, !alias.scope !228, !noalias !227
  store i8 %i.v, ptr %.012.i.i.i.i.prol, align 1, !tbaa !61, !alias.scope !227, !noalias !228
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.prol, i64 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !211

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.012.i.i.i.i.unr = phi ptr [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.i.prol ]
  %.0911.i.i.i.i.unr = phi ptr [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.i.prol ]
  %i.y = sub i64 %.0911.i.i.i.i.ph27, %4
  %i.z = icmp ugt i64 %i.y, -8
  br i1 %i.z, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.aa = load i8, ptr %.0911.i.i.i.i, align 1, !tbaa !61, !alias.scope !228, !noalias !227
  store i8 %i.aa, ptr %.012.i.i.i.i, align 1, !tbaa !61, !alias.scope !227, !noalias !228
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !61, !alias.scope !230, !noalias !229
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !61, !alias.scope !229, !noalias !230
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 2
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !61, !alias.scope !232, !noalias !231
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !61, !alias.scope !231, !noalias !232
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 3
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !61, !alias.scope !234, !noalias !233
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !61, !alias.scope !233, !noalias !234
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !61, !alias.scope !236, !noalias !235
  store i8 %i.am, ptr %i.al, align 1, !tbaa !61, !alias.scope !235, !noalias !236
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 5
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !61, !alias.scope !238, !noalias !237
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !61, !alias.scope !237, !noalias !238
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 6
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !61, !alias.scope !240, !noalias !239
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !61, !alias.scope !239, !noalias !240
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 7
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.av = load i8, ptr %i.at, align 1, !tbaa !61, !alias.scope !242, !noalias !241
  store i8 %i.av, ptr %i.au, align 1, !tbaa !61, !alias.scope !241, !noalias !242
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i.7 = icmp eq ptr %i.aw, %i.i
  br i1 %.not.i.i.i.i.7, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !226

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !31
  br label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i: ; preds = %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit.i
  %i.ay = phi ptr [ %.pr.i, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i ], [ %i.h, %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.ay, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !151
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZN5folly6detail24reentrant_allocator_base10deallocateEPvm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay, i64 noundef %i.bc) #21
  br label %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit.i: ; preds = %bb.d, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i
  store ptr %i.g, ptr %i.b, align 8, !tbaa !31
  store ptr %i.g, ptr %i.f, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  store ptr %i.bd, ptr %i.e, align 8, !tbaa !151
  br label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE7reserveEm.exit

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit.i, %bb.c
  %i.be = phi ptr [ %i.g, %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit.i ], [ null, %bb.c ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.be, ptr noundef %1, ptr noundef %i.bf)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !61
  %i.bi = invoke ptr @_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS3_EEOc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS3_EEOc.exit unwind label %bb.f ; 0 uses

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS3_EEOc.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.f:                                             ; preds = %bb.e, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE7reserveEm.exit, %bb.b
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #22
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare void @_ZN5folly6detail24reentrant_allocator_baseC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef ptr @_ZN5folly6detail24reentrant_allocator_base8allocateEmm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN5folly6detail24reentrant_allocator_base10deallocateEPvm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 24 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 20 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 10 uses
  %i.l = sub i64 %i.j, %i.k
  %.not54 = icmp ult i64 %i.l, %i.d
  br i1 %.not54, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.k, %i.m                       ; 14 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %iter.check176, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit

iter.check176:                                    ; preds = %bb.c
  %i.p = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %i.p ; 6 uses
  %min.iters.check160 = icmp ult i64 %i.d, 8
  br i1 %min.iters.check160, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check161

vector.main.loop.iter.check161:                   ; preds = %iter.check176
  %min.iters.check162 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check162, label %vec.epilog.ph180, label %vector.ph163

vector.ph163:                                     ; preds = %vector.main.loop.iter.check161
  %i.r = and i64 %i.d, 24
  %n.vec164 = and i64 %i.d, -32                   ; 5 uses
  %i.s = getelementptr i8, ptr %i.i, i64 %n.vec164
  %i.t = getelementptr i8, ptr %i.q, i64 %n.vec164
  br label %vector.body165

vector.body165:                                   ; preds = %vector.ph163, %vector.body165
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next171, %vector.body165 ] ; 3 uses
  %next.gep167 = getelementptr i8, ptr %i.i, i64 %index166 ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.q, i64 %index166 ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <16 x i8>, ptr %next.gep168, align 1, !tbaa !61
  %wide.load170 = load <16 x i8>, ptr %i.u, align 1, !tbaa !61
  %i.v = getelementptr i8, ptr %next.gep167, i64 16
  store <16 x i8> %wide.load169, ptr %next.gep167, align 1, !tbaa !61
  store <16 x i8> %wide.load170, ptr %i.v, align 1, !tbaa !61
  %index.next171 = add nuw i64 %index166, 32      ; 2 uses
  %i.w = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.w, label %middle.block172, label %vector.body165, !llvm.loop !243

middle.block172:                                  ; preds = %vector.body165
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EET_SB_St20forward_iterator_tag:bb.a
  br i1 %cmp.n189, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check176, %vec.epilog.iter.check178, %vec.epilog.middle.block188
  %.09.i.i.ph = phi ptr [ %i.i, %iter.check176 ], [ %i.s, %vec.epilog.iter.check178 ], [ %i.x, %vec.epilog.middle.block188 ]
  %.sroa.05.08.i.i.ph = phi ptr [ %i.q, %iter.check176 ], [ %i.t, %vec.epilog.iter.check178 ], [ %i.y, %vec.epilog.middle.block188 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.05.08.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.05.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.aa = load i8, ptr %.sroa.05.08.i.i, align 1, !tbaa !61
  store i8 %i.aa, ptr %.09.i.i, align 1, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1
  %i.ad = icmp eq ptr %i.ab, %i.i
  br i1 %i.ad, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !245

_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block188, %middle.block172
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.d
  store ptr %i.af, ptr %i.h, align 8, !tbaa !32
  %i.ag = ptrtoint ptr %i.q to i64
  %i.ah = sub i64 %i.ag, %i.m                     ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !153

bb.d:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit
  %i.aj = sub nsw i64 0, %i.ah
  %i.ak = getelementptr inbounds i8, ptr %i.i, i64 %i.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr align 1 %1, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit
  %i.al = icmp eq i64 %i.ah, 1
  br i1 %i.al, label %bb.f, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds i8, ptr %i.i, i64 -1
  %i.an = load i8, ptr %1, align 1, !tbaa !61
  store i8 %i.an, ptr %i.am, align 1, !tbaa !61
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.d, %bb.e, %bb.f
  %i.ao = icmp sgt i64 %i.d, 1
  br i1 %i.ao, label %bb.g, label %bb.h, !prof !153

bb.g:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit

bb.h:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %i.ap = icmp eq i64 %i.d, 1
  br i1 %i.ap, label %bb.i, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = load i8, ptr %2, align 1, !tbaa !61
  store i8 %i.aq, ptr %1, align 1, !tbaa !61
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %i.n ; 6 uses
  %.not10.i = icmp eq ptr %i.ar, %3
  br i1 %.not10.i, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %i.as = add i64 %i.b, %i.m
  %i.at = add i64 %i.k, %i.c
  %i.au = sub i64 %i.as, %i.at                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.au, 8
  %i.av = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.av, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check113 = icmp ult i64 %i.au, 32
  br i1 %min.iters.check113, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %i.au, 24
  %n.vec = and i64 %i.au, -32                     ; 5 uses
  %i.ax = getelementptr i8, ptr %i.i, i64 %n.vec
  %i.ay = getelementptr i8, ptr %i.ar, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %index ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.ar, i64 %index ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep114, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep114, align 1, !tbaa !61
  %wide.load115 = load <16 x i8>, ptr %i.az, align 1, !tbaa !61
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !61
  store <16 x i8> %wide.load115, ptr %i.ba, align 1, !tbaa !61
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !149

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec117 = and i64 %i.au, -8                   ; 4 uses
  %i.bc = getelementptr i8, ptr %i.i, i64 %n.vec117
  %i.bd = getelementptr i8, ptr %i.ar, i64 %n.vec117
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 3 uses
  %next.gep119 = getelementptr i8, ptr %i.i, i64 %index118
  %next.gep120 = getelementptr i8, ptr %i.ar, i64 %index118
  %wide.load121 = load <8 x i8>, ptr %next.gep120, align 1, !tbaa !61
  store <8 x i8> %wide.load121, ptr %next.gep119, align 1, !tbaa !61
  %index.next122 = add nuw i64 %index118, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !247

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %i.au, %n.vec117
  br i1 %cmp.n123, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.ph = phi ptr [ %i.ar, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.ph301 = ptrtoaddr ptr %.0911.i.ph to i64 ; 2 uses
  %i.bf = sub i64 %i.b, %.0911.i.ph301
  %xtraiter = and i64 %i.bf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.012.i.prol = phi ptr [ %i.bi, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0911.i.prol = phi ptr [ %i.bh, %.lr.ph.i.prol ], [ %.0911.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bg = load i8, ptr %.0911.i.prol, align 1, !tbaa !61
  store i8 %i.bg, ptr %.012.i.prol, align 1, !tbaa !61
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.prol, i64 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !248

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %.0911.i.unr = phi ptr [ %.0911.i.ph, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i.prol ]
  %i.bj = sub i64 %.0911.i.ph301, %i.b
  %i.bk = icmp ugt i64 %i.bj, -8
  br i1 %i.bk, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi ptr [ %i.ci, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.0911.i = phi ptr [ %i.ch, %.lr.ph.i ], [ %.0911.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.bl = load i8, ptr %.0911.i, align 1, !tbaa !61
  store i8 %i.bl, ptr %.012.i, align 1, !tbaa !61
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !61
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i, i64 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i, i64 2
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !61
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !61
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i, i64 3
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i, i64 3
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !61
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !61
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !61
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !61
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i, i64 5
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i, i64 5
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !61
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !61
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i, i64 6
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i, i64 6
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !61
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !61
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i, i64 7
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i, i64 7
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !61
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !61
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %.not.i.7 = icmp eq ptr %i.ch, %3
  br i1 %.not.i.7, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !249

_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !32
  br label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit

_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %i.cj = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit ], [ %i.i, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.ck = sub nuw i64 %i.d, %i.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck ; 8 uses
  store ptr %i.cl, ptr %i.h, align 8, !tbaa !32
  %i.cm = icmp eq ptr %1, %i.i
  br i1 %i.cm, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59, label %iter.check144

iter.check144:                                    ; preds = %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit
  %min.iters.check128 = icmp ult i64 %i.n, 8
  br i1 %min.iters.check128, label %.lr.ph.i.i55.preheader, label %vector.memcheck126

vector.memcheck126:                               ; preds = %iter.check144
  %4 = ptrtoaddr ptr %i.cj to i64
  %i.cn = add i64 %i.k, %i.c
  %i.co = add i64 %4, %i.b
  %i.cp = sub i64 %i.cn, %i.co
  %diff.check127 = icmp ugt i64 %i.cp, -32
  br i1 %diff.check127, label %.lr.ph.i.i55.preheader, label %vector.main.loop.iter.check129

vector.main.loop.iter.check129:                   ; preds = %vector.memcheck126
  %min.iters.check130 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check130, label %vec.epilog.ph148, label %vector.ph131

vector.ph131:                                     ; preds = %vector.main.loop.iter.check129
  %i.cq = and i64 %i.n, 24
  %n.vec132 = and i64 %i.n, -32                   ; 5 uses
  %i.cr = getelementptr i8, ptr %i.cl, i64 %n.vec132
  %i.cs = getelementptr i8, ptr %1, i64 %n.vec132
  br label %vector.body133

vector.body133:                                   ; preds = %vector.ph131, %vector.body133
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next139, %vector.body133 ] ; 3 uses
  %next.gep135 = getelementptr i8, ptr %i.cl, i64 %index134 ; 2 uses
  %next.gep136 = getelementptr i8, ptr %1, i64 %index134 ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep136, i64 16
  %wide.load137 = load <16 x i8>, ptr %next.gep136, align 1, !tbaa !61
  %wide.load138 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !61
  %i.cu = getelementptr i8, ptr %next.gep135, i64 16
  store <16 x i8> %wide.load137, ptr %next.gep135, align 1, !tbaa !61
  store <16 x i8> %wide.load138, ptr %i.cu, align 1, !tbaa !61
  %index.next139 = add nuw i64 %index134, 32      ; 2 uses
  %i.cv = icmp eq i64 %index.next139, %n.vec132
  br i1 %i.cv, label %middle.block140, label %vector.body133, !llvm.loop !250

middle.block140:                                  ; preds = %vector.body133
  %cmp.n141 = icmp eq i64 %i.n, %n.vec132
  br i1 %cmp.n141, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit, label %vec.epilog.iter.check146

vec.epilog.iter.check146:                         ; preds = %middle.block140
  %min.epilog.iters.check147 = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check147, label %.lr.ph.i.i55.preheader, label %vec.epilog.ph148, !prof !149

vec.epilog.ph148:                                 ; preds = %vector.main.loop.iter.check129, %vec.epilog.iter.check146
  %vec.epilog.resume.val142 = phi i64 [ %n.vec132, %vec.epilog.iter.check146 ], [ 0, %vector.main.loop.iter.check129 ]
  %n.vec149 = and i64 %i.n, -8                    ; 4 uses
  %i.cw = getelementptr i8, ptr %i.cl, i64 %n.vec149
  %i.cx = getelementptr i8, ptr %1, i64 %n.vec149
  br label %vec.epilog.vector.body150

vec.epilog.vector.body150:                        ; preds = %vec.epilog.vector.body150, %vec.epilog.ph148
  %index151 = phi i64 [ %vec.epilog.resume.val142, %vec.epilog.ph148 ], [ %index.next155, %vec.epilog.vector.body150 ] ; 3 uses
  %next.gep152 = getelementptr i8, ptr %i.cl, i64 %index151
  %next.gep153 = getelementptr i8, ptr %1, i64 %index151
  %wide.load154 = load <8 x i8>, ptr %next.gep153, align 1, !tbaa !61
  store <8 x i8> %wide.load154, ptr %next.gep152, align 1, !tbaa !61
  %index.next155 = add nuw i64 %index151, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next155, %n.vec149
  br i1 %i.cy, label %vec.epilog.middle.block156, label %vec.epilog.vector.body150, !llvm.loop !251

vec.epilog.middle.block156:                       ; preds = %vec.epilog.vector.body150
  %cmp.n157 = icmp eq i64 %i.n, %n.vec149
  br i1 %cmp.n157, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %iter.check144, %vector.memcheck126, %vec.epilog.iter.check146, %vec.epilog.middle.block156
  %.09.i.i56.ph = phi ptr [ %i.cl, %iter.check144 ], [ %i.cl, %vector.memcheck126 ], [ %i.cr, %vec.epilog.iter.check146 ], [ %i.cw, %vec.epilog.middle.block156 ] ; 2 uses
  %.sroa.05.08.i.i57.ph = phi ptr [ %1, %iter.check144 ], [ %1, %vector.memcheck126 ], [ %i.cs, %vec.epilog.iter.check146 ], [ %i.cx, %vec.epilog.middle.block156 ] ; 3 uses
  %.sroa.05.08.i.i57.ph302 = ptrtoaddr ptr %.sroa.05.08.i.i57.ph to i64 ; 2 uses
  %i.cz = sub i64 %i.k, %.sroa.05.08.i.i57.ph302
  %xtraiter303 = and i64 %i.cz, 7                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br i1 %lcmp.mod304.not, label %.lr.ph.i.i55.prol.loopexit, label %.lr.ph.i.i55.prol

.lr.ph.i.i55.prol:                                ; preds = %.lr.ph.i.i55.preheader, %.lr.ph.i.i55.prol
  %.09.i.i56.prol = phi ptr [ %i.dc, %.lr.ph.i.i55.prol ], [ %.09.i.i56.ph, %.lr.ph.i.i55.preheader ] ; 2 uses
  %.sroa.05.08.i.i57.prol = phi ptr [ %i.db, %.lr.ph.i.i55.prol ], [ %.sroa.05.08.i.i57.ph, %.lr.ph.i.i55.preheader ] ; 2 uses
  %prol.iter305 = phi i64 [ %prol.iter305.next, %.lr.ph.i.i55.prol ], [ 0, %.lr.ph.i.i55.preheader ]
  %i.da = load i8, ptr %.sroa.05.08.i.i57.prol, align 1, !tbaa !61
  store i8 %i.da, ptr %.09.i.i56.prol, align 1, !tbaa !61
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57.prol, i64 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.09.i.i56.prol, i64 1 ; 2 uses
  %prol.iter305.next = add i64 %prol.iter305, 1   ; 2 uses
  %prol.iter305.cmp.not = icmp eq i64 %prol.iter305.next, %xtraiter303
  br i1 %prol.iter305.cmp.not, label %.lr.ph.i.i55.prol.loopexit, label %.lr.ph.i.i55.prol, !llvm.loop !252

.lr.ph.i.i55.prol.loopexit:                       ; preds = %.lr.ph.i.i55.prol, %.lr.ph.i.i55.preheader
  %.09.i.i56.unr = phi ptr [ %.09.i.i56.ph, %.lr.ph.i.i55.preheader ], [ %i.dc, %.lr.ph.i.i55.prol ]
  %.sroa.05.08.i.i57.unr = phi ptr [ %.sroa.05.08.i.i57.ph, %.lr.ph.i.i55.preheader ], [ %i.db, %.lr.ph.i.i55.prol ]
  %i.dd = sub i64 %.sroa.05.08.i.i57.ph302, %i.k
  %i.de = icmp ugt i64 %i.dd, -8
  br i1 %i.de, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit, label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.prol.loopexit, %.lr.ph.i.i55
  %.09.i.i56 = phi ptr [ %i.ec, %.lr.ph.i.i55 ], [ %.09.i.i56.unr, %.lr.ph.i.i55.prol.loopexit ] ; 9 uses
  %.sroa.05.08.i.i57 = phi ptr [ %i.eb, %.lr.ph.i.i55 ], [ %.sroa.05.08.i.i57.unr, %.lr.ph.i.i55.prol.loopexit ] ; 9 uses
  %i.df = load i8, ptr %.sroa.05.08.i.i57, align 1, !tbaa !61
  store i8 %i.df, ptr %.09.i.i56, align 1, !tbaa !61
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 1
  %i.di = load i8, ptr %i.dg, align 1, !tbaa !61
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !61
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 2
  %i.dk = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 2
  %i.dl = load i8, ptr %i.dj, align 1, !tbaa !61
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !61
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 3
  %i.dn = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 3
  %i.do = load i8, ptr %i.dm, align 1, !tbaa !61
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !61
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 4
  %i.dr = load i8, ptr %i.dp, align 1, !tbaa !61
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !61
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 5
  %i.dt = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 5
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !61
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !61
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 6
  %i.dw = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 6
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !61
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !61
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 7
  %i.dz = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 7
  %i.ea = load i8, ptr %i.dy, align 1, !tbaa !61
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !61
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 8
  %i.ed = icmp eq ptr %i.eb, %i.i
  br i1 %i.ed, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit, label %.lr.ph.i.i55, !llvm.loop !253

_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit: ; preds = %.lr.ph.i.i55.prol.loopexit, %.lr.ph.i.i55, %vec.epilog.middle.block156, %middle.block140
  %.pre93 = load ptr, ptr %i.h, align 8, !tbaa !32
  br label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59

_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59: ; preds = %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit, %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit
  %i.ee = phi ptr [ %.pre93, %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit ], [ %i.cl, %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.n
  store ptr %i.ef, ptr %i.h, align 8, !tbaa !32
  %i.eg = icmp sgt i64 %i.n, 1
  br i1 %i.eg, label %bb.j, label %bb.k, !prof !153

bb.j:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.n, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59
  %i.eh = icmp eq i64 %i.n, 1
  br i1 %i.eh, label %bb.l, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit

bb.l:                                             ; preds = %bb.k
  %i.ei = load i8, ptr %2, align 1, !tbaa !61
  store i8 %i.ei, ptr %1, align 1, !tbaa !61
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit

bb.m:                                             ; preds = %bb.b
  %i.ej = load ptr, ptr %i.e, align 8, !tbaa !31  ; 9 uses
  %i.ek = ptrtoint ptr %i.ej to i64               ; 4 uses
  %i.el = sub i64 %i.k, %i.ek                     ; 4 uses
  %i.em = sub i64 9223372036854775807, %i.el
  %i.en = icmp ult i64 %i.em, %i.d
  br i1 %i.en, label %bb.n, label %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #24
  unreachable

_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit: ; preds = %bb.m
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.el, i64 %i.d)
  %i.eo = add i64 %.sroa.speculated.i, %i.el      ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.el
  %i.eq = tail call i64 @llvm.umin.i64(i64 %i.eo, i64 9223372036854775807)
  %i.er = select i1 %i.ep, i64 9223372036854775807, i64 %i.eq ; 3 uses
  %.not.i61 = icmp eq i64 %i.er, 0
  br i1 %.not.i61, label %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit
  %i.es = tail call noundef ptr @_ZN5folly6detail24reentrant_allocator_base8allocateEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.er, i64 noundef 1) #21
  br label %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit, %bb.o
  %i.et = phi ptr [ %i.es, %bb.o ], [ null, %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit ] ; 9 uses
  %i.eu = icmp eq ptr %i.ej, %1
  br i1 %i.eu, label %iter.check245, label %iter.check210

iter.check210:                                    ; preds = %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit
  %i.ev = sub i64 %i.a, %i.ek                     ; 7 uses
  %min.iters.check194 = icmp ult i64 %i.ev, 8
  %5 = ptrtoaddr ptr %i.et to i64
  %i.ew = sub i64 %i.ek, %5
  %diff.check193 = icmp ugt i64 %i.ew, -32
  %or.cond296 = or i1 %min.iters.check194, %diff.check193
  br i1 %or.cond296, label %.lr.ph.i.i62.preheader, label %vector.main.loop.iter.check195

vector.main.loop.iter.check195:                   ; preds = %iter.check210
  %min.iters.check196 = icmp ult i64 %i.ev, 32
  br i1 %min.iters.check196, label %vec.epilog.ph214, label %vector.ph197

vector.ph197:                                     ; preds = %vector.main.loop.iter.check195
  %i.ex = and i64 %i.ev, 24
  %n.vec198 = and i64 %i.ev, -32                  ; 5 uses
  %i.ey = getelementptr i8, ptr %i.et, i64 %n.vec198 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ej, i64 %n.vec198
  br label %vector.body199

vector.body199:                                   ; preds = %vector.ph197, %vector.body199
  %index200 = phi i64 [ 0, %vector.ph197 ], [ %index.next205, %vector.body199 ] ; 3 uses
  %next.gep201 = getelementptr i8, ptr %i.et, i64 %index200 ; 2 uses
  %next.gep202 = getelementptr i8, ptr %i.ej, i64 %index200 ; 2 uses
  %i.fa = getelementptr i8, ptr %next.gep202, i64 16
  %wide.load203 = load <16 x i8>, ptr %next.gep202, align 1, !tbaa !61
  %wide.load204 = load <16 x i8>, ptr %i.fa, align 1, !tbaa !61
  %i.fb = getelementptr i8, ptr %next.gep201, i64 16
  store <16 x i8> %wide.load203, ptr %next.gep201, align 1, !tbaa !61
  store <16 x i8> %wide.load204, ptr %i.fb, align 1, !tbaa !61
  %index.next205 = add nuw i64 %index200, 32      ; 2 uses
  %i.fc = icmp eq i64 %index.next205, %n.vec198
  br i1 %i.fc, label %middle.block206, label %vector.body199, !llvm.loop !254

middle.block206:                                  ; preds = %vector.body199
  %cmp.n207 = icmp eq i64 %i.ev, %n.vec198
  br i1 %cmp.n207, label %iter.check245, label %vec.epilog.iter.check212

vec.epilog.iter.check212:                         ; preds = %middle.block206
  %min.epilog.iters.check213 = icmp eq i64 %i.ex, 0
  br i1 %min.epilog.iters.check213, label %.lr.ph.i.i62.preheader, label %vec.epilog.ph214, !prof !149

vec.epilog.ph214:                                 ; preds = %vector.main.loop.iter.check195, %vec.epilog.iter.check212
  %vec.epilog.resume.val208 = phi i64 [ %n.vec198, %vec.epilog.iter.check212 ], [ 0, %vector.main.loop.iter.check195 ]
  %n.vec215 = and i64 %i.ev, -8                   ; 4 uses
  %i.fd = getelementptr i8, ptr %i.et, i64 %n.vec215 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ej, i64 %n.vec215
  br label %vec.epilog.vector.body216

vec.epilog.vector.body216:                        ; preds = %vec.epilog.vector.body216, %vec.epilog.ph214
  %index217 = phi i64 [ %vec.epilog.resume.val208, %vec.epilog.ph214 ], [ %index.next221, %vec.epilog.vector.body216 ] ; 3 uses
  %next.gep218 = getelementptr i8, ptr %i.et, i64 %index217
  %next.gep219 = getelementptr i8, ptr %i.ej, i64 %index217
  %wide.load220 = load <8 x i8>, ptr %next.gep219, align 1, !tbaa !61
  store <8 x i8> %wide.load220, ptr %next.gep218, align 1, !tbaa !61
  %index.next221 = add nuw i64 %index217, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next221, %n.vec215
  br i1 %i.ff, label %vec.epilog.middle.block222, label %vec.epilog.vector.body216, !llvm.loop !255

vec.epilog.middle.block222:                       ; preds = %vec.epilog.vector.body216
  %cmp.n223 = icmp eq i64 %i.ev, %n.vec215
  br i1 %cmp.n223, label %iter.check245, label %.lr.ph.i.i62.preheader

.lr.ph.i.i62.preheader:                           ; preds = %iter.check210, %vec.epilog.iter.check212, %vec.epilog.middle.block222
  %.09.i.i63.ph = phi ptr [ %i.et, %iter.check210 ], [ %i.ey, %vec.epilog.iter.check212 ], [ %i.fd, %vec.epilog.middle.block222 ] ; 2 uses
  %.sroa.05.08.i.i64.ph = phi ptr [ %i.ej, %iter.check210 ], [ %i.ez, %vec.epilog.iter.check212 ], [ %i.fe, %vec.epilog.middle.block222 ] ; 3 uses
  %.sroa.05.08.i.i64.ph306 = ptrtoaddr ptr %.sroa.05.08.i.i64.ph to i64 ; 2 uses
  %i.fg = sub i64 %i.a, %.sroa.05.08.i.i64.ph306
  %xtraiter307 = and i64 %i.fg, 7                 ; 2 uses
  %lcmp.mod308.not = icmp eq i64 %xtraiter307, 0
  br i1 %lcmp.mod308.not, label %.lr.ph.i.i62.prol.loopexit, label %.lr.ph.i.i62.prol

.lr.ph.i.i62.prol:                                ; preds = %.lr.ph.i.i62.preheader, %.lr.ph.i.i62.prol
  %.09.i.i63.prol = phi ptr [ %i.fj, %.lr.ph.i.i62.prol ], [ %.09.i.i63.ph, %.lr.ph.i.i62.preheader ] ; 2 uses
  %.sroa.05.08.i.i64.prol = phi ptr [ %i.fi, %.lr.ph.i.i62.prol ], [ %.sroa.05.08.i.i64.ph, %.lr.ph.i.i62.preheader ] ; 2 uses
  %prol.iter309 = phi i64 [ %prol.iter309.next, %.lr.ph.i.i62.prol ], [ 0, %.lr.ph.i.i62.preheader ]
  %i.fh = load i8, ptr %.sroa.05.08.i.i64.prol, align 1, !tbaa !61
  store i8 %i.fh, ptr %.09.i.i63.prol, align 1, !tbaa !61
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64.prol, i64 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.09.i.i63.prol, i64 1 ; 3 uses
  %prol.iter309.next = add i64 %prol.iter309, 1   ; 2 uses
  %prol.iter309.cmp.not = icmp eq i64 %prol.iter309.next, %xtraiter307
  br i1 %prol.iter309.cmp.not, label %.lr.ph.i.i62.prol.loopexit, label %.lr.ph.i.i62.prol, !llvm.loop !256

.lr.ph.i.i62.prol.loopexit:                       ; preds = %.lr.ph.i.i62.prol, %.lr.ph.i.i62.preheader
  %.lcssa300.unr = phi ptr [ poison, %.lr.ph.i.i62.preheader ], [ %i.fj, %.lr.ph.i.i62.prol ]
  %.09.i.i63.unr = phi ptr [ %.09.i.i63.ph, %.lr.ph.i.i62.preheader ], [ %i.fj, %.lr.ph.i.i62.prol ]
  %.sroa.05.08.i.i64.unr = phi ptr [ %.sroa.05.08.i.i64.ph, %.lr.ph.i.i62.preheader ], [ %i.fi, %.lr.ph.i.i62.prol ]
  %i.fk = sub i64 %.sroa.05.08.i.i64.ph306, %i.a
  %i.fl = icmp ugt i64 %i.fk, -8
  br i1 %i.fl, label %iter.check245, label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62.prol.loopexit, %.lr.ph.i.i62
  %.09.i.i63 = phi ptr [ %i.gj, %.lr.ph.i.i62 ], [ %.09.i.i63.unr, %.lr.ph.i.i62.prol.loopexit ] ; 9 uses
  %.sroa.05.08.i.i64 = phi ptr [ %i.gi, %.lr.ph.i.i62 ], [ %.sroa.05.08.i.i64.unr, %.lr.ph.i.i62.prol.loopexit ] ; 9 uses
  %i.fm = load i8, ptr %.sroa.05.08.i.i64, align 1, !tbaa !61
  store i8 %i.fm, ptr %.09.i.i63, align 1, !tbaa !61
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 1
  %i.fp = load i8, ptr %i.fn, align 1, !tbaa !61
  store i8 %i.fp, ptr %i.fo, align 1, !tbaa !61
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 2
  %i.fr = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 2
  %i.fs = load i8, ptr %i.fq, align 1, !tbaa !61
  store i8 %i.fs, ptr %i.fr, align 1, !tbaa !61
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 3
  %i.fu = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 3
  %i.fv = load i8, ptr %i.ft, align 1, !tbaa !61
  store i8 %i.fv, ptr %i.fu, align 1, !tbaa !61
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 4
  %i.fx = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 4
  %i.fy = load i8, ptr %i.fw, align 1, !tbaa !61
  store i8 %i.fy, ptr %i.fx, align 1, !tbaa !61
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 5
  %i.ga = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 5
  %i.gb = load i8, ptr %i.fz, align 1, !tbaa !61
  store i8 %i.gb, ptr %i.ga, align 1, !tbaa !61
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 6
  %i.gd = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 6
  %i.ge = load i8, ptr %i.gc, align 1, !tbaa !61
  store i8 %i.ge, ptr %i.gd, align 1, !tbaa !61
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 7
  %i.gg = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 7
  %i.gh = load i8, ptr %i.gf, align 1, !tbaa !61
  store i8 %i.gh, ptr %i.gg, align 1, !tbaa !61
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 8 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %1
  br i1 %i.gk, label %iter.check245, label %.lr.ph.i.i62, !llvm.loop !257

iter.check245:                                    ; preds = %.lr.ph.i.i62.prol.loopexit, %.lr.ph.i.i62, %middle.block206, %vec.epilog.middle.block222, %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit
  %.0.lcssa.i.i65 = phi ptr [ %i.et, %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit ], [ %i.fd, %vec.epilog.middle.block222 ], [ %i.ey, %middle.block206 ], [ %.lcssa300.unr, %.lr.ph.i.i62.prol.loopexit ], [ %i.gj, %.lr.ph.i.i62 ] ; 6 uses
  %min.iters.check229 = icmp ult i64 %i.d, 8
  %.0.lcssa.i.i65227 = ptrtoaddr ptr %.0.lcssa.i.i65 to i64
  %i.gl = sub i64 %i.c, %.0.lcssa.i.i65227
  %diff.check228 = icmp ugt i64 %i.gl, -32
  %or.cond297 = select i1 %min.iters.check229, i1 true, i1 %diff.check228
  br i1 %or.cond297, label %.lr.ph.i67.preheader, label %vector.main.loop.iter.check230

vector.main.loop.iter.check230:                   ; preds = %iter.check245
  %min.iters.check231 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check231, label %vec.epilog.ph249, label %vector.ph232

vector.ph232:                                     ; preds = %vector.main.loop.iter.check230
  %i.gm = and i64 %i.d, 24
  %n.vec233 = and i64 %i.d, -32                   ; 5 uses
  %i.gn = getelementptr i8, ptr %.0.lcssa.i.i65, i64 %n.vec233 ; 2 uses
  %i.go = getelementptr i8, ptr %2, i64 %n.vec233
  br label %vector.body234

vector.body234:                                   ; preds = %vector.ph232, %vector.body234
  %index235 = phi i64 [ 0, %vector.ph232 ], [ %index.next240, %vector.body234 ] ; 3 uses
  %next.gep236 = getelementptr i8, ptr %.0.lcssa.i.i65, i64 %index235 ; 2 uses
  %next.gep237 = getelementptr i8, ptr %2, i64 %index235 ; 2 uses
  %i.gp = getelementptr i8, ptr %next.gep237, i64 16
  %wide.load238 = load <16 x i8>, ptr %next.gep237, align 1, !tbaa !61
  %wide.load239 = load <16 x i8>, ptr %i.gp, align 1, !tbaa !61
  %i.gq = getelementptr i8, ptr %next.gep236, i64 16
  store <16 x i8> %wide.load238, ptr %next.gep236, align 1, !tbaa !61
  store <16 x i8> %wide.load239, ptr %i.gq, align 1, !tbaa !61
  %index.next240 = add nuw i64 %index235, 32      ; 2 uses
  %i.gr = icmp eq i64 %index.next240, %n.vec233
  br i1 %i.gr, label %middle.block241, label %vector.body234, !llvm.loop !258

middle.block241:                                  ; preds = %vector.body234
  %cmp.n242 = icmp eq i64 %i.d, %n.vec233
  br i1 %cmp.n242, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72, label %vec.epilog.iter.check247

vec.epilog.iter.check247:                         ; preds = %middle.block241
  %min.epilog.iters.check248 = icmp eq i64 %i.gm, 0
  br i1 %min.epilog.iters.check248, label %.lr.ph.i67.preheader, label %vec.epilog.ph249, !prof !149

vec.epilog.ph249:                                 ; preds = %vector.main.loop.iter.check230, %vec.epilog.iter.check247
  %vec.epilog.resume.val243 = phi i64 [ %n.vec233, %vec.epilog.iter.check247 ], [ 0, %vector.main.loop.iter.check230 ]
  %n.vec250 = and i64 %i.d, -8                    ; 4 uses
  %i.gs = getelementptr i8, ptr %.0.lcssa.i.i65, i64 %n.vec250 ; 2 uses
  %i.gt = getelementptr i8, ptr %2, i64 %n.vec250
  br label %vec.epilog.vector.body251

vec.epilog.vector.body251:                        ; preds = %vec.epilog.vector.body251, %vec.epilog.ph249
  %index252 = phi i64 [ %vec.epilog.resume.val243, %vec.epilog.ph249 ], [ %index.next256, %vec.epilog.vector.body251 ] ; 3 uses
  %next.gep253 = getelementptr i8, ptr %.0.lcssa.i.i65, i64 %index252
  %next.gep254 = getelementptr i8, ptr %2, i64 %index252
  %wide.load255 = load <8 x i8>, ptr %next.gep254, align 1, !tbaa !61
  store <8 x i8> %wide.load255, ptr %next.gep253, align 1, !tbaa !61
  %index.next256 = add nuw i64 %index252, 8       ; 2 uses
  %i.gu = icmp eq i64 %index.next256, %n.vec250
  br i1 %i.gu, label %vec.epilog.middle.block257, label %vec.epilog.vector.body251, !llvm.loop !259

vec.epilog.middle.block257:                       ; preds = %vec.epilog.vector.body251
  %cmp.n258 = icmp eq i64 %i.d, %n.vec250
  br i1 %cmp.n258, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72, label %.lr.ph.i67.preheader

.lr.ph.i67.preheader:                             ; preds = %iter.check245, %vec.epilog.iter.check247, %vec.epilog.middle.block257
  %.012.i68.ph = phi ptr [ %.0.lcssa.i.i65, %iter.check245 ], [ %i.gn, %vec.epilog.iter.check247 ], [ %i.gs, %vec.epilog.middle.block257 ] ; 2 uses
  %.0911.i69.ph = phi ptr [ %2, %iter.check245 ], [ %i.go, %vec.epilog.iter.check247 ], [ %i.gt, %vec.epilog.middle.block257 ] ; 3 uses
  %.0911.i69.ph310 = ptrtoaddr ptr %.0911.i69.ph to i64 ; 2 uses
  %i.gv = sub i64 %i.b, %.0911.i69.ph310
  %xtraiter311 = and i64 %i.gv, 7                 ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.lr.ph.i67.prol.loopexit, label %.lr.ph.i67.prol

.lr.ph.i67.prol:                                  ; preds = %.lr.ph.i67.preheader, %.lr.ph.i67.prol
  %.012.i68.prol = phi ptr [ %i.gy, %.lr.ph.i67.prol ], [ %.012.i68.ph, %.lr.ph.i67.preheader ] ; 2 uses
  %.0911.i69.prol = phi ptr [ %i.gx, %.lr.ph.i67.prol ], [ %.0911.i69.ph, %.lr.ph.i67.preheader ] ; 2 uses
  %prol.iter313 = phi i64 [ %prol.iter313.next, %.lr.ph.i67.prol ], [ 0, %.lr.ph.i67.preheader ]
  %i.gw = load i8, ptr %.0911.i69.prol, align 1, !tbaa !61
  store i8 %i.gw, ptr %.012.i68.prol, align 1, !tbaa !61
  %i.gx = getelementptr inbounds nuw i8, ptr %.0911.i69.prol, i64 1 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i68.prol, i64 1 ; 3 uses
  %prol.iter313.next = add i64 %prol.iter313, 1   ; 2 uses
  %prol.iter313.cmp.not = icmp eq i64 %prol.iter313.next, %xtraiter311
  br i1 %prol.iter313.cmp.not, label %.lr.ph.i67.prol.loopexit, label %.lr.ph.i67.prol, !llvm.loop !260

.lr.ph.i67.prol.loopexit:                         ; preds = %.lr.ph.i67.prol, %.lr.ph.i67.preheader
  %.lcssa299.unr = phi ptr [ poison, %.lr.ph.i67.preheader ], [ %i.gy, %.lr.ph.i67.prol ]
  %.012.i68.unr = phi ptr [ %.012.i68.ph, %.lr.ph.i67.preheader ], [ %i.gy, %.lr.ph.i67.prol ]
  %.0911.i69.unr = phi ptr [ %.0911.i69.ph, %.lr.ph.i67.preheader ], [ %i.gx, %.lr.ph.i67.prol ]
  %i.gz = sub i64 %.0911.i69.ph310, %i.b
  %i.ha = icmp ugt i64 %i.gz, -8
  br i1 %i.ha, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.lr.ph.i67.prol.loopexit, %.lr.ph.i67
  %.012.i68 = phi ptr [ %i.hy, %.lr.ph.i67 ], [ %.012.i68.unr, %.lr.ph.i67.prol.loopexit ] ; 9 uses
  %.0911.i69 = phi ptr [ %i.hx, %.lr.ph.i67 ], [ %.0911.i69.unr, %.lr.ph.i67.prol.loopexit ] ; 9 uses
  %i.hb = load i8, ptr %.0911.i69, align 1, !tbaa !61
  store i8 %i.hb, ptr %.012.i68, align 1, !tbaa !61
  %i.hc = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 1
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i68, i64 1
  %i.he = load i8, ptr %i.hc, align 1, !tbaa !61
  store i8 %i.he, ptr %i.hd, align 1, !tbaa !61
  %i.hf = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 2
  %i.hg = getelementptr inbounds nuw i8, ptr %.012.i68, i64 2
  %i.hh = load i8, ptr %i.hf, align 1, !tbaa !61
  store i8 %i.hh, ptr %i.hg, align 1, !tbaa !61
  %i.hi = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 3
  %i.hj = getelementptr inbounds nuw i8, ptr %.012.i68, i64 3
  %i.hk = load i8, ptr %i.hi, align 1, !tbaa !61
  store i8 %i.hk, ptr %i.hj, align 1, !tbaa !61
  %i.hl = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %.012.i68, i64 4
  %i.hn = load i8, ptr %i.hl, align 1, !tbaa !61
  store i8 %i.hn, ptr %i.hm, align 1, !tbaa !61
  %i.ho = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 5
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i68, i64 5
  %i.hq = load i8, ptr %i.ho, align 1, !tbaa !61
  store i8 %i.hq, ptr %i.hp, align 1, !tbaa !61
  %i.hr = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 6
  %i.hs = getelementptr inbounds nuw i8, ptr %.012.i68, i64 6
  %i.ht = load i8, ptr %i.hr, align 1, !tbaa !61
  store i8 %i.ht, ptr %i.hs, align 1, !tbaa !61
  %i.hu = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 7
  %i.hv = getelementptr inbounds nuw i8, ptr %.012.i68, i64 7
  %i.hw = load i8, ptr %i.hu, align 1, !tbaa !61
  store i8 %i.hw, ptr %i.hv, align 1, !tbaa !61
  %i.hx = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 8 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.012.i68, i64 8 ; 2 uses
  %.not.i70.7 = icmp eq ptr %i.hx, %3
  br i1 %.not.i70.7, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72, label %.lr.ph.i67, !llvm.loop !261

_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72: ; preds = %.lr.ph.i67.prol.loopexit, %.lr.ph.i67, %vec.epilog.middle.block257, %middle.block241
  %.lcssa111 = phi ptr [ %i.gs, %vec.epilog.middle.block257 ], [ %i.gn, %middle.block241 ], [ %.lcssa299.unr, %.lr.ph.i67.prol.loopexit ], [ %i.hy, %.lr.ph.i67 ] ; 7 uses
  %i.hz = icmp eq ptr %1, %i.i
  br i1 %i.hz, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77, label %iter.check280

iter.check280:                                    ; preds = %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72
  %i.ia = sub i64 %i.k, %i.a                      ; 7 uses
  %min.iters.check264 = icmp ult i64 %i.ia, 8
  %6 = ptrtoaddr ptr %.lcssa111 to i64
  %i.ib = sub i64 %i.a, %6
  %diff.check263 = icmp ugt i64 %i.ib, -32
  %or.cond298 = select i1 %min.iters.check264, i1 true, i1 %diff.check263
  br i1 %or.cond298, label %.lr.ph.i.i73.preheader, label %vector.main.loop.iter.check265

vector.main.loop.iter.check265:                   ; preds = %iter.check280
  %min.iters.check266 = icmp ult i64 %i.ia, 32
  br i1 %min.iters.check266, label %vec.epilog.ph284, label %vector.ph267

vector.ph267:                                     ; preds = %vector.main.loop.iter.check265
  %i.ic = and i64 %i.ia, 24
  %n.vec268 = and i64 %i.ia, -32                  ; 5 uses
  %i.id = getelementptr i8, ptr %.lcssa111, i64 %n.vec268 ; 2 uses
  %i.ie = getelementptr i8, ptr %1, i64 %n.vec268
  br label %vector.body269

vector.body269:                                   ; preds = %vector.ph267, %vector.body269
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next275, %vector.body269 ] ; 3 uses
  %next.gep271 = getelementptr i8, ptr %.lcssa111, i64 %index270 ; 2 uses
  %next.gep272 = getelementptr i8, ptr %1, i64 %index270 ; 2 uses
  %i.if = getelementptr i8, ptr %next.gep272, i64 16
  %wide.load273 = load <16 x i8>, ptr %next.gep272, align 1, !tbaa !61
  %wide.load274 = load <16 x i8>, ptr %i.if, align 1, !tbaa !61
  %i.ig = getelementptr i8, ptr %next.gep271, i64 16
  store <16 x i8> %wide.load273, ptr %next.gep271, align 1, !tbaa !61
  store <16 x i8> %wide.load274, ptr %i.ig, align 1, !tbaa !61
  %index.next275 = add nuw i64 %index270, 32      ; 2 uses
  %i.ih = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.ih, label %middle.block276, label %vector.body269, !llvm.loop !262

middle.block276:                                  ; preds = %vector.body269
  %cmp.n277 = icmp eq i64 %i.ia, %n.vec268
  br i1 %cmp.n277, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77, label %vec.epilog.iter.check282

vec.epilog.iter.check282:                         ; preds = %middle.block276
  %min.epilog.iters.check283 = icmp eq i64 %i.ic, 0
  br i1 %min.epilog.iters.check283, label %.lr.ph.i.i73.preheader, label %vec.epilog.ph284, !prof !149

vec.epilog.ph284:                                 ; preds = %vector.main.loop.iter.check265, %vec.epilog.iter.check282
  %vec.epilog.resume.val278 = phi i64 [ %n.vec268, %vec.epilog.iter.check282 ], [ 0, %vector.main.loop.iter.check265 ]
  %n.vec285 = and i64 %i.ia, -8                   ; 4 uses
  %i.ii = getelementptr i8, ptr %.lcssa111, i64 %n.vec285 ; 2 uses
  %i.ij = getelementptr i8, ptr %1, i64 %n.vec285
  br label %vec.epilog.vector.body286

vec.epilog.vector.body286:                        ; preds = %vec.epilog.vector.body286, %vec.epilog.ph284
  %index287 = phi i64 [ %vec.epilog.resume.val278, %vec.epilog.ph284 ], [ %index.next291, %vec.epilog.vector.body286 ] ; 3 uses
  %next.gep288 = getelementptr i8, ptr %.lcssa111, i64 %index287
  %next.gep289 = getelementptr i8, ptr %1, i64 %index287
  %wide.load290 = load <8 x i8>, ptr %next.gep289, align 1, !tbaa !61
  store <8 x i8> %wide.load290, ptr %next.gep288, align 1, !tbaa !61
  %index.next291 = add nuw i64 %index287, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next291, %n.vec285
  br i1 %i.ik, label %vec.epilog.middle.block292, label %vec.epilog.vector.body286, !llvm.loop !263

vec.epilog.middle.block292:                       ; preds = %vec.epilog.vector.body286
  %cmp.n293 = icmp eq i64 %i.ia, %n.vec285
  br i1 %cmp.n293, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77, label %.lr.ph.i.i73.preheader

.lr.ph.i.i73.preheader:                           ; preds = %iter.check280, %vec.epilog.iter.check282, %vec.epilog.middle.block292
  %.09.i.i74.ph = phi ptr [ %.lcssa111, %iter.check280 ], [ %i.id, %vec.epilog.iter.check282 ], [ %i.ii, %vec.epilog.middle.block292 ] ; 2 uses
  %.sroa.05.08.i.i75.ph = phi ptr [ %1, %iter.check280 ], [ %i.ie, %vec.epilog.iter.check282 ], [ %i.ij, %vec.epilog.middle.block292 ] ; 3 uses
  %.sroa.05.08.i.i75.ph314 = ptrtoaddr ptr %.sroa.05.08.i.i75.ph to i64 ; 2 uses
  %i.il = sub i64 %i.k, %.sroa.05.08.i.i75.ph314
  %xtraiter315 = and i64 %i.il, 7                 ; 2 uses
  %lcmp.mod316.not = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod316.not, label %.lr.ph.i.i73.prol.loopexit, label %.lr.ph.i.i73.prol

.lr.ph.i.i73.prol:                                ; preds = %.lr.ph.i.i73.preheader, %.lr.ph.i.i73.prol
  %.09.i.i74.prol = phi ptr [ %i.io, %.lr.ph.i.i73.prol ], [ %.09.i.i74.ph, %.lr.ph.i.i73.preheader ] ; 2 uses
  %.sroa.05.08.i.i75.prol = phi ptr [ %i.in, %.lr.ph.i.i73.prol ], [ %.sroa.05.08.i.i75.ph, %.lr.ph.i.i73.preheader ] ; 2 uses
  %prol.iter317 = phi i64 [ %prol.iter317.next, %.lr.ph.i.i73.prol ], [ 0, %.lr.ph.i.i73.preheader ]
  %i.im = load i8, ptr %.sroa.05.08.i.i75.prol, align 1, !tbaa !61
  store i8 %i.im, ptr %.09.i.i74.prol, align 1, !tbaa !61
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75.prol, i64 1 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.09.i.i74.prol, i64 1 ; 3 uses
  %prol.iter317.next = add i64 %prol.iter317, 1   ; 2 uses
  %prol.iter317.cmp.not = icmp eq i64 %prol.iter317.next, %xtraiter315
  br i1 %prol.iter317.cmp.not, label %.lr.ph.i.i73.prol.loopexit, label %.lr.ph.i.i73.prol, !llvm.loop !264

.lr.ph.i.i73.prol.loopexit:                       ; preds = %.lr.ph.i.i73.prol, %.lr.ph.i.i73.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i73.preheader ], [ %i.io, %.lr.ph.i.i73.prol ]
  %.09.i.i74.unr = phi ptr [ %.09.i.i74.ph, %.lr.ph.i.i73.preheader ], [ %i.io, %.lr.ph.i.i73.prol ]
  %.sroa.05.08.i.i75.unr = phi ptr [ %.sroa.05.08.i.i75.ph, %.lr.ph.i.i73.preheader ], [ %i.in, %.lr.ph.i.i73.prol ]
  %i.ip = sub i64 %.sroa.05.08.i.i75.ph314, %i.k
  %i.iq = icmp ugt i64 %i.ip, -8
  br i1 %i.iq, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77, label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %.lr.ph.i.i73.prol.loopexit, %.lr.ph.i.i73
  %.09.i.i74 = phi ptr [ %i.jo, %.lr.ph.i.i73 ], [ %.09.i.i74.unr, %.lr.ph.i.i73.prol.loopexit ] ; 9 uses
  %.sroa.05.08.i.i75 = phi ptr [ %i.jn, %.lr.ph.i.i73 ], [ %.sroa.05.08.i.i75.unr, %.lr.ph.i.i73.prol.loopexit ] ; 9 uses
  %i.ir = load i8, ptr %.sroa.05.08.i.i75, align 1, !tbaa !61
  store i8 %i.ir, ptr %.09.i.i74, align 1, !tbaa !61
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 1
  %i.it = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 1
  %i.iu = load i8, ptr %i.is, align 1, !tbaa !61
  store i8 %i.iu, ptr %i.it, align 1, !tbaa !61
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 2
  %i.iw = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 2
  %i.ix = load i8, ptr %i.iv, align 1, !tbaa !61
  store i8 %i.ix, ptr %i.iw, align 1, !tbaa !61
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 3
  %i.iz = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 3
  %i.ja = load i8, ptr %i.iy, align 1, !tbaa !61
  store i8 %i.ja, ptr %i.iz, align 1, !tbaa !61
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 4
  %i.jc = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 4
  %i.jd = load i8, ptr %i.jb, align 1, !tbaa !61
  store i8 %i.jd, ptr %i.jc, align 1, !tbaa !61
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 5
  %i.jf = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 5
  %i.jg = load i8, ptr %i.je, align 1, !tbaa !61
  store i8 %i.jg, ptr %i.jf, align 1, !tbaa !61
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 6
  %i.ji = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 6
  %i.jj = load i8, ptr %i.jh, align 1, !tbaa !61
  store i8 %i.jj, ptr %i.ji, align 1, !tbaa !61
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 7
  %i.jl = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 7
  %i.jm = load i8, ptr %i.jk, align 1, !tbaa !61
  store i8 %i.jm, ptr %i.jl, align 1, !tbaa !61
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 8 ; 2 uses
  %i.jp = icmp eq ptr %i.jn, %i.i
  br i1 %i.jp, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77, label %.lr.ph.i.i73, !llvm.loop !265

_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77: ; preds = %.lr.ph.i.i73.prol.loopexit, %.lr.ph.i.i73, %middle.block276, %vec.epilog.middle.block292, %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72
  %.0.lcssa.i.i76 = phi ptr [ %.lcssa111, %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72 ], [ %i.ii, %vec.epilog.middle.block292 ], [ %i.id, %middle.block276 ], [ %.lcssa.unr, %.lr.ph.i.i73.prol.loopexit ], [ %i.jo, %.lr.ph.i.i73 ]
  %.not.i78 = icmp eq ptr %i.ej, null
  br i1 %.not.i78, label %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77
  %i.jq = load ptr, ptr %i.f, align 8, !tbaa !151
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = sub i64 %i.jr, %i.ek
  tail call void @_ZN5folly6detail24reentrant_allocator_base10deallocateEPvm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ej, i64 noundef %i.js) #21
  br label %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77, %bb.p
  store ptr %i.et, ptr %i.e, align 8, !tbaa !31
  store ptr %.0.lcssa.i.i76, ptr %i.h, align 8, !tbaa !32
  %i.jt = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  store ptr %i.jt, ptr %i.f, align 8, !tbaa !151
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS3_EEOc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 11 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = sub i64 %i.c, %i.d                       ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151
  %.not = icmp eq ptr %i.g, %i.i
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %1, %i.g
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %2, align 1, !tbaa !61
  store i8 %i.k, ptr %i.g, align 1, !tbaa !61
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.m, ptr %i.f, align 8, !tbaa !32
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !61
  store i8 %i.p, ptr %i.g, align 1, !tbaa !61
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !32   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %i.f, align 8, !tbaa !32
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.c                       ; 4 uses
  %i.v = icmp sgt i64 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.f, !prof !153

bb.e:                                             ; preds = %bb.d
  %i.w = sub nsw i64 0, %i.u
  %i.x = getelementptr inbounds i8, ptr %i.q, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.n, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %i.u, 1
  br i1 %i.y, label %bb.g, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEOT_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.n, align 1, !tbaa !61
  store i8 %i.z, ptr %i.s, align 1, !tbaa !61
  br label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEOT_.exit

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEOT_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aa = load i8, ptr %2, align 1, !tbaa !61
  store i8 %i.aa, ptr %i.n, align 1, !tbaa !61
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 5 uses
  %i.ac = ptrtoint ptr %i.g to i64                ; 4 uses
  %i.ad = sub i64 %i.ac, %i.d                     ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775807
  br i1 %i.ae, label %bb.i, label %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #24
  unreachable

_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.af = add i64 %.sroa.speculated.i.i, %i.ad    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 9223372036854775807)
  %i.ai = select i1 %i.ag, i64 9223372036854775807, i64 %i.ah ; 3 uses
  %.not.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.aj = tail call noundef ptr @_ZN5folly6detail24reentrant_allocator_base8allocateEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ai, i64 noundef 1) #21 ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.e
  %i.al = load i8, ptr %2, align 1, !tbaa !61
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !61
  %.not10.i.i.i.i = icmp eq ptr %i.b, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit.i
  %min.iters.check = icmp ult i64 %i.e, 8
  %3 = ptrtoaddr ptr %i.aj to i64
  %i.am = sub i64 %i.d, %3
  %diff.check = icmp ugt i64 %i.am, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check22 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %i.e, 24
  %n.vec = and i64 %i.e, -32                      ; 5 uses
  %i.ao = getelementptr i8, ptr %i.aj, i64 %n.vec ; 2 uses
  %i.ap = getelementptr i8, ptr %i.b, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %index ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.aq = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep23, align 1, !tbaa !61, !alias.scope !309, !noalias !308
  %wide.load24 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !61, !alias.scope !309, !noalias !308
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !61, !alias.scope !308, !noalias !309
  store <16 x i8> %wide.load24, ptr %i.ar, align 1, !tbaa !61, !alias.scope !308, !noalias !309
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !269

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !149

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.e, -8                     ; 4 uses
  %i.at = getelementptr i8, ptr %i.aj, i64 %n.vec26 ; 2 uses
  %i.au = getelementptr i8, ptr %i.b, i64 %n.vec26
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %next.gep28 = getelementptr i8, ptr %i.aj, i64 %index27
  %next.gep29 = getelementptr i8, ptr %i.b, i64 %index27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %wide.load30 = load <8 x i8>, ptr %next.gep29, align 1, !tbaa !61, !alias.scope !309, !noalias !308
  store <8 x i8> %wide.load30, ptr %next.gep28, align 1, !tbaa !61, !alias.scope !308, !noalias !309
  %index.next31 = add nuw i64 %index27, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next31, %n.vec26
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !270

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %i.e, %n.vec26
  br i1 %cmp.n32, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.aj, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.i.i.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.i.i.i.ph72 = ptrtoaddr ptr %.0911.i.i.i.i.ph to i64 ; 2 uses
  %i.aw = sub i64 %i.c, %.0911.i.i.i.i.ph72
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.012.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i.i.i.prol ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.prol ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.ax = load i8, ptr %.0911.i.i.i.i.prol, align 1, !tbaa !61, !alias.scope !309, !noalias !308
  store i8 %i.ax, ptr %.012.i.i.i.i.prol, align 1, !tbaa !61, !alias.scope !308, !noalias !309
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.prol, i64 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !271

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa71.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.i.prol ]
  %.012.i.i.i.i.unr = phi ptr [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.i.prol ]
  %.0911.i.i.i.i.unr = phi ptr [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.prol ]
  %i.ba = sub i64 %.0911.i.i.i.i.ph72, %i.c
  %i.bb = icmp ugt i64 %i.ba, -8
  br i1 %i.bb, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.bc = load i8, ptr %.0911.i.i.i.i, align 1, !tbaa !61, !alias.scope !309, !noalias !308
  store i8 %i.bc, ptr %.012.i.i.i.i, align 1, !tbaa !61, !alias.scope !308, !noalias !309
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !61, !alias.scope !311, !noalias !310
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !61, !alias.scope !310, !noalias !311
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !61, !alias.scope !313, !noalias !312
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !61, !alias.scope !312, !noalias !313
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !61, !alias.scope !315, !noalias !314
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !61, !alias.scope !314, !noalias !315
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !61, !alias.scope !317, !noalias !316
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !61, !alias.scope !316, !noalias !317
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 5
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !61, !alias.scope !319, !noalias !318
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !61, !alias.scope !318, !noalias !319
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 6
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !61, !alias.scope !321, !noalias !320
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !61, !alias.scope !320, !noalias !321
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 7
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !61, !alias.scope !323, !noalias !322
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !61, !alias.scope !322, !noalias !323
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.7 = icmp eq ptr %i.by, %1
  br i1 %.not.i.i.i.i.7, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !286

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aj, %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit.i ], [ %i.at, %vec.epilog.middle.block ], [ %i.ao, %middle.block ], [ %.lcssa71.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.bz, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 1 ; 6 uses
  %.not10.i.i.i16.i = icmp eq ptr %1, %i.g
  br i1 %.not10.i.i.i16.i, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i, label %iter.check54

iter.check54:                                     ; preds = %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i
  %i.cb = sub i64 %i.ac, %i.c                     ; 7 uses
  %min.iters.check38 = icmp ult i64 %i.cb, 8
  %4 = ptrtoaddr ptr %.0.lcssa.i.i.i.i to i64
  %i.cc = sub i64 %4, %i.c
  %diff.check37 = icmp ult i64 %i.cc, 31
  %or.cond70 = select i1 %min.iters.check38, i1 true, i1 %diff.check37
  br i1 %or.cond70, label %.lr.ph.i.i.i17.i.preheader, label %vector.main.loop.iter.check39

vector.main.loop.iter.check39:                    ; preds = %iter.check54
  %min.iters.check40 = icmp ult i64 %i.cb, 32
  br i1 %min.iters.check40, label %vec.epilog.ph58, label %vector.ph41

vector.ph41:                                      ; preds = %vector.main.loop.iter.check39
  %i.cd = and i64 %i.cb, 24
  %n.vec42 = and i64 %i.cb, -32                   ; 5 uses
  %i.ce = getelementptr i8, ptr %i.ca, i64 %n.vec42 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ab, i64 %n.vec42
  br label %vector.body43

vector.body43:                                    ; preds = %vector.ph41, %vector.body43
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 3 uses
  %next.gep45 = getelementptr i8, ptr %i.ca, i64 %index44 ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.ab, i64 %index44 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.cg = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <16 x i8>, ptr %next.gep46, align 1, !tbaa !61, !alias.scope !325, !noalias !324
  %wide.load48 = load <16 x i8>, ptr %i.cg, align 1, !tbaa !61, !alias.scope !325, !noalias !324
  %i.ch = getelementptr i8, ptr %next.gep45, i64 16
  store <16 x i8> %wide.load47, ptr %next.gep45, align 1, !tbaa !61, !alias.scope !324, !noalias !325
  store <16 x i8> %wide.load48, ptr %i.ch, align 1, !tbaa !61, !alias.scope !324, !noalias !325
  %index.next49 = add nuw i64 %index44, 32        ; 2 uses
  %i.ci = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ci, label %middle.block50, label %vector.body43, !llvm.loop !290

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.cb, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i, label %vec.epilog.iter.check56

vec.epilog.iter.check56:                          ; preds = %middle.block50
  %min.epilog.iters.check57 = icmp eq i64 %i.cd, 0
  br i1 %min.epilog.iters.check57, label %.lr.ph.i.i.i17.i.preheader, label %vec.epilog.ph58, !prof !149

vec.epilog.ph58:                                  ; preds = %vector.main.loop.iter.check39, %vec.epilog.iter.check56
  %vec.epilog.resume.val52 = phi i64 [ %n.vec42, %vec.epilog.iter.check56 ], [ 0, %vector.main.loop.iter.check39 ]
  %n.vec59 = and i64 %i.cb, -8                    ; 4 uses
  %i.cj = getelementptr i8, ptr %i.ca, i64 %n.vec59 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ab, i64 %n.vec59
  br label %vec.epilog.vector.body60

vec.epilog.vector.body60:                         ; preds = %vec.epilog.vector.body60, %vec.epilog.ph58
  %index61 = phi i64 [ %vec.epilog.resume.val52, %vec.epilog.ph58 ], [ %index.next65, %vec.epilog.vector.body60 ] ; 3 uses
  %next.gep62 = getelementptr i8, ptr %i.ca, i64 %index61
  %next.gep63 = getelementptr i8, ptr %i.ab, i64 %index61
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %wide.load64 = load <8 x i8>, ptr %next.gep63, align 1, !tbaa !61, !alias.scope !325, !noalias !324
  store <8 x i8> %wide.load64, ptr %next.gep62, align 1, !tbaa !61, !alias.scope !324, !noalias !325
  %index.next65 = add nuw i64 %index61, 8         ; 2 uses
  %i.cl = icmp eq i64 %index.next65, %n.vec59
  br i1 %i.cl, label %vec.epilog.middle.block66, label %vec.epilog.vector.body60, !llvm.loop !291

vec.epilog.middle.block66:                        ; preds = %vec.epilog.vector.body60
  %cmp.n67 = icmp eq i64 %i.cb, %n.vec59
  br i1 %cmp.n67, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i.preheader

.lr.ph.i.i.i17.i.preheader:                       ; preds = %iter.check54, %vec.epilog.iter.check56, %vec.epilog.middle.block66
  %.012.i.i.i18.i.ph = phi ptr [ %i.ca, %iter.check54 ], [ %i.ce, %vec.epilog.iter.check56 ], [ %i.cj, %vec.epilog.middle.block66 ] ; 2 uses
  %.0911.i.i.i19.i.ph = phi ptr [ %i.ab, %iter.check54 ], [ %i.cf, %vec.epilog.iter.check56 ], [ %i.ck, %vec.epilog.middle.block66 ] ; 3 uses
  %.0911.i.i.i19.i.ph73 = ptrtoaddr ptr %.0911.i.i.i19.i.ph to i64 ; 2 uses
  %i.cm = sub i64 %i.ac, %.0911.i.i.i19.i.ph73
  %xtraiter74 = and i64 %i.cm, 7                  ; 2 uses
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.lr.ph.i.i.i17.i.prol.loopexit, label %.lr.ph.i.i.i17.i.prol

.lr.ph.i.i.i17.i.prol:                            ; preds = %.lr.ph.i.i.i17.i.preheader, %.lr.ph.i.i.i17.i.prol
  %.012.i.i.i18.i.prol = phi ptr [ %i.cp, %.lr.ph.i.i.i17.i.prol ], [ %.012.i.i.i18.i.ph, %.lr.ph.i.i.i17.i.preheader ] ; 2 uses
  %.0911.i.i.i19.i.prol = phi ptr [ %i.co, %.lr.ph.i.i.i17.i.prol ], [ %.0911.i.i.i19.i.ph, %.lr.ph.i.i.i17.i.preheader ] ; 2 uses
  %prol.iter76 = phi i64 [ %prol.iter76.next, %.lr.ph.i.i.i17.i.prol ], [ 0, %.lr.ph.i.i.i17.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.cn = load i8, ptr %.0911.i.i.i19.i.prol, align 1, !tbaa !61, !alias.scope !325, !noalias !324
  store i8 %i.cn, ptr %.012.i.i.i18.i.prol, align 1, !tbaa !61, !alias.scope !324, !noalias !325
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i.prol, i64 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i.prol, i64 1 ; 3 uses
  %prol.iter76.next = add i64 %prol.iter76, 1     ; 2 uses
  %prol.iter76.cmp.not = icmp eq i64 %prol.iter76.next, %xtraiter74
  br i1 %prol.iter76.cmp.not, label %.lr.ph.i.i.i17.i.prol.loopexit, label %.lr.ph.i.i.i17.i.prol, !llvm.loop !292

.lr.ph.i.i.i17.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i17.i.prol, %.lr.ph.i.i.i17.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i17.i.preheader ], [ %i.cp, %.lr.ph.i.i.i17.i.prol ]
  %.012.i.i.i18.i.unr = phi ptr [ %.012.i.i.i18.i.ph, %.lr.ph.i.i.i17.i.preheader ], [ %i.cp, %.lr.ph.i.i.i17.i.prol ]
  %.0911.i.i.i19.i.unr = phi ptr [ %.0911.i.i.i19.i.ph, %.lr.ph.i.i.i17.i.preheader ], [ %i.co, %.lr.ph.i.i.i17.i.prol ]
  %i.cq = sub i64 %.0911.i.i.i19.i.ph73, %i.ac
  %i.cr = icmp ugt i64 %i.cq, -8
  br i1 %i.cr, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i.i.i17.i.prol.loopexit, %.lr.ph.i.i.i17.i
  %.012.i.i.i18.i = phi ptr [ %i.dp, %.lr.ph.i.i.i17.i ], [ %.012.i.i.i18.i.unr, %.lr.ph.i.i.i17.i.prol.loopexit ] ; 9 uses
  %.0911.i.i.i19.i = phi ptr [ %i.do, %.lr.ph.i.i.i17.i ], [ %.0911.i.i.i19.i.unr, %.lr.ph.i.i.i17.i.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.cs = load i8, ptr %.0911.i.i.i19.i, align 1, !tbaa !61, !alias.scope !325, !noalias !324
  store i8 %i.cs, ptr %.012.i.i.i18.i, align 1, !tbaa !61, !alias.scope !324, !noalias !325
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !61, !alias.scope !327, !noalias !326
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !61, !alias.scope !326, !noalias !327
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !61, !alias.scope !329, !noalias !328
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !61, !alias.scope !328, !noalias !329
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 3
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !61, !alias.scope !331, !noalias !330
  store i8 %i.db, ptr %i.da, align 1, !tbaa !61, !alias.scope !330, !noalias !331
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !61, !alias.scope !333, !noalias !332
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !61, !alias.scope !332, !noalias !333
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 5
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !61, !alias.scope !335, !noalias !334
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !61, !alias.scope !334, !noalias !335
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 6
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !61, !alias.scope !337, !noalias !336
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !61, !alias.scope !336, !noalias !337
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 7
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !61, !alias.scope !339, !noalias !338
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !61, !alias.scope !338, !noalias !339
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i20.i.7 = icmp eq ptr %i.do, %i.g
  br i1 %.not.i.i.i20.i.7, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i, !llvm.loop !307

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i17.i.prol.loopexit, %.lr.ph.i.i.i17.i, %middle.block50, %vec.epilog.middle.block66, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i
  %.0.lcssa.i.i.i21.i = phi ptr [ %i.ca, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i ], [ %i.cj, %vec.epilog.middle.block66 ], [ %i.ce, %middle.block50 ], [ %.lcssa.unr, %.lr.ph.i.i.i17.i.prol.loopexit ], [ %i.dp, %.lr.ph.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.b, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.dr, %i.d
  tail call void @_ZN5folly6detail24reentrant_allocator_base10deallocateEPvm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, i64 noundef %i.ds) #21
  br label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit: ; preds = %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i, %bb.j
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !31
  store ptr %.0.lcssa.i.i.i21.i, ptr %i.f, align 8, !tbaa !32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store ptr %i.dt, ptr %i.h, align 8, !tbaa !151
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEOT_.exit, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %i.e
  ret ptr %i.dv
}

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(64) ptr @_ZN5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEE7emplaceIJEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::reentrant_allocator.2", align 8 ; 5 uses
  %2 = alloca %"class.folly::reentrant_allocator_options", align 8 ; 5 uses
  %3 = alloca %"class.folly::reentrant_allocator.5", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !65, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNR5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEE5valueEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9intrusive7bstbaseINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvLb1EmLNS0_10algo_typesE6EvED2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.e
end_hunk_1
