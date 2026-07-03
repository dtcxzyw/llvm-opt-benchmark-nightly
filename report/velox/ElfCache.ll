inline.NumInlined: 691
inline.NumDeleted: 427
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5folly10symbolizer8ElfCache7getFileENS_5RangeIPKcEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bj = load ptr, ptr %5, align 8, !tbaa !71    ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i8 0, ptr %7, align 1, !tbaa !56
  %i.bm = call { i32, ptr } @_ZN5folly10symbolizer7ElfFile13openAndFollowEPKcRKNS1_7OptionsE(ptr noundef nonnull align 8 dereferenceable(576) %i.bk, ptr noundef %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %7) #21
  %i.bn = extractvalue { i32, ptr } %i.bm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.x, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19

bb.v:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc9.i.i.i, %.noexc.i.i.i, %.noexc.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ai

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = invoke { ptr, i8 } @_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEES5_INSE_14_Node_iteratorISC_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNSt13unordered_mapIN5folly5RangeIPKcEESt10shared_ptrINS0_10symbolizer8ElfCache5EntryEENS0_4HashESt8equal_toIS4_ESaISt4pairIKS4_S9_EEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.ab

_ZNSt13unordered_mapIN5folly5RangeIPKcEESt10shared_ptrINS0_10symbolizer8ElfCache5EntryEENS0_4HashESt8equal_toIS4_ESaISt4pairIKS4_S9_EEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit: ; preds = %bb.x
  %.fca.0.extract = extractvalue { ptr, i8 } %i.bq, 0 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !71, !noalias !98
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store ptr %i.bt, ptr %0, align 8, !tbaa !55, !alias.scope !98
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !58, !noalias !98 ; 3 uses
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !58, !alias.scope !98
  %.not.i.i.i.i17 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i17, label %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19, label %bb.y

bb.y:                                             ; preds = %_ZNSt13unordered_mapIN5folly5RangeIPKcEESt10shared_ptrINS0_10symbolizer8ElfCache5EntryEENS0_4HashESt8equal_toIS4_ESaISt4pairIKS4_S9_EEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60, !noalias !98
  %.not.i.i.i.i.i18 = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i18, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !7, !noalias !98
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !7, !noalias !98
  br label %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19

bb.aa:                                            ; preds = %bb.y
  %i.cb = atomicrmw volatile add ptr %i.bx, i32 1 acq_rel, align 4, !noalias !98 ; 0 uses
  br label %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19

bb.ab:                                            ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19: ; preds = %bb.aa, %bb.z, %_ZNSt13unordered_mapIN5folly5RangeIPKcEESt10shared_ptrINS0_10symbolizer8ElfCache5EntryEENS0_4HashESt8equal_toIS4_ESaISt4pairIKS4_S9_EEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit, %bb.u
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !58  ; 8 uses
  %.not.i.i20 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i20, label %_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.ce, align 8, !tbaa !77
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !79
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !61
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #21, !call_target !101, !inline_history !169
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !61
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #21, !call_target !133, !inline_history !169
  br label %_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i = phi i32 [ %i.ch, %bb.af ], [ %i.cr, %bb.ag ]
  %i.cs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cs, label %bb.ah, label %_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !96

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #21
  br label %_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit19, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit

bb.ai:                                            ; preds = %bb.ab, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.ab ], [ %i.bp, %bb.w ]
  call void @_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ai ], [ %i.bo, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ak

_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE.exit: ; preds = %bb.f, %bb.e, %bb.c, %_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ct = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 0 uses
  ret void

bb.ak:                                            ; preds = %bb.aj, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aj ], [ %i.r, %bb.g ]
  %i.cu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly10symbolizer8ElfCacheD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10symbolizer8ElfCacheE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly10symbolizer8ElfCacheD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10symbolizer8ElfCacheE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #21, !inline_history !170
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
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25   ; 9 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !28   ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit.i
  %i.j = ptrtoaddr ptr %i.h to i64
  %i.k = ptrtoaddr ptr %i.g to i64
  %i.l = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.n, 8
  %i.o = sub i64 %i.j, %i.k
  %diff.check = icmp ugt i64 %i.o, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i64 %i.n, 128
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.n, 120
  %n.vec = and i64 %i.n, -128                     ; 5 uses
  %i.p = getelementptr i8, ptr %i.g, i64 %n.vec
  %i.q = getelementptr i8, ptr %i.h, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %index ; 4 uses
  %next.gep15 = getelementptr i8, ptr %i.h, i64 %index ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.r = getelementptr i8, ptr %next.gep15, i64 32
  %i.s = getelementptr i8, ptr %next.gep15, i64 64
  %i.t = getelementptr i8, ptr %next.gep15, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep15, align 1, !tbaa !60, !alias.scope !174, !noalias !171
  %wide.load16 = load <32 x i8>, ptr %i.r, align 1, !tbaa !60, !alias.scope !174, !noalias !171
  %wide.load17 = load <32 x i8>, ptr %i.s, align 1, !tbaa !60, !alias.scope !174, !noalias !171
  %wide.load18 = load <32 x i8>, ptr %i.t, align 1, !tbaa !60, !alias.scope !174, !noalias !171
  %i.u = getelementptr i8, ptr %next.gep, i64 32
  %i.v = getelementptr i8, ptr %next.gep, i64 64
  %i.w = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !60, !alias.scope !171, !noalias !174
  store <32 x i8> %wide.load16, ptr %i.u, align 1, !tbaa !60, !alias.scope !171, !noalias !174
  store <32 x i8> %wide.load17, ptr %i.v, align 1, !tbaa !60, !alias.scope !171, !noalias !174
  store <32 x i8> %wide.load18, ptr %i.w, align 1, !tbaa !60, !alias.scope !171, !noalias !174
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !179

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.n, -8                     ; 4 uses
  %i.y = getelementptr i8, ptr %i.g, i64 %n.vec21
  %i.z = getelementptr i8, ptr %i.h, i64 %n.vec21
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %next.gep23 = getelementptr i8, ptr %i.g, i64 %index22
  %next.gep24 = getelementptr i8, ptr %i.h, i64 %index22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %wide.load25 = load <8 x i8>, ptr %next.gep24, align 1, !tbaa !60, !alias.scope !174, !noalias !171
  store <8 x i8> %wide.load25, ptr %next.gep23, align 1, !tbaa !60, !alias.scope !171, !noalias !174
  %index.next26 = add nuw i64 %index22, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next26, %n.vec21
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !180

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.n, %n.vec21
  br i1 %cmp.n27, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.i.i.i.ph = phi ptr [ %i.h, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.i.i.i.ph30 = ptrtoint ptr %.0911.i.i.i.i.ph to i64 ; 2 uses
  %i.ab = sub i64 %i.l, %.0911.i.i.i.i.ph30
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.012.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.prol ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.prol ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.ac = load i8, ptr %.0911.i.i.i.i.prol, align 1, !tbaa !60, !alias.scope !174, !noalias !171
  store i8 %i.ac, ptr %.012.i.i.i.i.prol, align 1, !tbaa !60, !alias.scope !171, !noalias !174
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.prol, i64 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !181

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.012.i.i.i.i.unr = phi ptr [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.prol ]
  %.0911.i.i.i.i.unr = phi ptr [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.prol ]
  %i.af = sub i64 %.0911.i.i.i.i.ph30, %i.l
  %i.ag = icmp ugt i64 %i.af, -8
  br i1 %i.ag, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.ah = load i8, ptr %.0911.i.i.i.i, align 1, !tbaa !60, !alias.scope !174, !noalias !171
  store i8 %i.ah, ptr %.012.i.i.i.i, align 1, !tbaa !60, !alias.scope !171, !noalias !174
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !60, !alias.scope !185, !noalias !183
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !60, !alias.scope !183, !noalias !185
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.an = load i8, ptr %i.al, align 1, !tbaa !60, !alias.scope !189, !noalias !187
  store i8 %i.an, ptr %i.am, align 1, !tbaa !60, !alias.scope !187, !noalias !189
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !60, !alias.scope !193, !noalias !191
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !60, !alias.scope !191, !noalias !193
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !60, !alias.scope !197, !noalias !195
  store i8 %i.at, ptr %i.as, align 1, !tbaa !60, !alias.scope !195, !noalias !197
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 5
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !60, !alias.scope !201, !noalias !199
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !60, !alias.scope !199, !noalias !201
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 6
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !60, !alias.scope !205, !noalias !203
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !60, !alias.scope !203, !noalias !205
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 7
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !60, !alias.scope !209, !noalias !207
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !60, !alias.scope !207, !noalias !209
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i.7 = icmp eq ptr %i.bd, %i.i
  br i1 %.not.i.i.i.i.7, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !211

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !25
  br label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i: ; preds = %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit.i
  %i.bf = phi ptr [ %.pr.i, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i ], [ %i.h, %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.bf, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !212
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZN5folly6detail24reentrant_allocator_base10deallocateEPvm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.bf, i64 noundef %i.bj) #21
  br label %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit.i: ; preds = %bb.d, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i
  store ptr %i.g, ptr %i.b, align 8, !tbaa !25
  store ptr %i.g, ptr %i.f, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  store ptr %i.bk, ptr %i.e, align 8, !tbaa !212
  br label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE7reserveEm.exit

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit.i, %bb.c
  %i.bl = phi ptr [ %i.g, %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit.i ], [ null, %bb.c ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.bl, ptr noundef %1, ptr noundef %i.bm)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE7reserveEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !60
  %i.bp = invoke ptr @_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS3_EEOc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.bo, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS3_EEOc.exit unwind label %bb.f ; 0 uses

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS3_EEOc.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.f:                                             ; preds = %bb.e, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE7reserveEm.exit, %bb.b
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #22
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
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 24 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !212
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 20 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 10 uses
  %i.l = sub i64 %i.j, %i.k
  %.not54 = icmp ult i64 %i.l, %i.d
  br i1 %.not54, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.k, %i.m                       ; 14 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %iter.check186, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit

iter.check186:                                    ; preds = %bb.c
  %i.p = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %i.p ; 6 uses
  %min.iters.check167 = icmp ult i64 %i.d, 8
  br i1 %min.iters.check167, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check168

vector.main.loop.iter.check168:                   ; preds = %iter.check186
  %min.iters.check169 = icmp ult i64 %i.d, 128
  br i1 %min.iters.check169, label %vec.epilog.ph190, label %vector.ph170

vector.ph170:                                     ; preds = %vector.main.loop.iter.check168
  %n.mod.vf171 = and i64 %i.d, 120
  %n.vec172 = and i64 %i.d, -128                  ; 5 uses
  %i.r = getelementptr i8, ptr %i.i, i64 %n.vec172
  %i.s = getelementptr i8, ptr %i.q, i64 %n.vec172
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph170
  %index174 = phi i64 [ 0, %vector.ph170 ], [ %index.next181, %vector.body173 ] ; 3 uses
  %next.gep175 = getelementptr i8, ptr %i.i, i64 %index174 ; 4 uses
  %next.gep176 = getelementptr i8, ptr %i.q, i64 %index174 ; 4 uses
  %i.t = getelementptr i8, ptr %next.gep176, i64 32
  %i.u = getelementptr i8, ptr %next.gep176, i64 64
  %i.v = getelementptr i8, ptr %next.gep176, i64 96
  %wide.load177 = load <32 x i8>, ptr %next.gep176, align 1, !tbaa !60
  %wide.load178 = load <32 x i8>, ptr %i.t, align 1, !tbaa !60
  %wide.load179 = load <32 x i8>, ptr %i.u, align 1, !tbaa !60
  %wide.load180 = load <32 x i8>, ptr %i.v, align 1, !tbaa !60
  %i.w = getelementptr i8, ptr %next.gep175, i64 32
  %i.x = getelementptr i8, ptr %next.gep175, i64 64
  %i.y = getelementptr i8, ptr %next.gep175, i64 96
  store <32 x i8> %wide.load177, ptr %next.gep175, align 1, !tbaa !60
  store <32 x i8> %wide.load178, ptr %i.w, align 1, !tbaa !60
  store <32 x i8> %wide.load179, ptr %i.x, align 1, !tbaa !60
  store <32 x i8> %wide.load180, ptr %i.y, align 1, !tbaa !60
  %index.next181 = add nuw i64 %index174, 128     ; 2 uses
  %i.z = icmp eq i64 %index.next181, %n.vec172
  br i1 %i.z, label %middle.block182, label %vector.body173, !llvm.loop !214

middle.block182:                                  ; preds = %vector.body173
  %cmp.n183 = icmp eq i64 %i.d, %n.vec172
  br i1 %cmp.n183, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit, label %vec.epilog.iter.check188

vec.epilog.iter.check188:                         ; preds = %middle.block182
  %min.epilog.iters.check189 = icmp eq i64 %n.mod.vf171, 0
  br i1 %min.epilog.iters.check189, label %.lr.ph.i.i.preheader, label %vec.epilog.ph190, !prof !179

vec.epilog.ph190:                                 ; preds = %vector.main.loop.iter.check168, %vec.epilog.iter.check188
  %vec.epilog.resume.val184 = phi i64 [ %n.vec172, %vec.epilog.iter.check188 ], [ 0, %vector.main.loop.iter.check168 ]
  %n.vec192 = and i64 %i.d, -8                    ; 4 uses
  %i.aa = getelementptr i8, ptr %i.i, i64 %n.vec192
  %i.ab = getelementptr i8, ptr %i.q, i64 %n.vec192
  br label %vec.epilog.vector.body193

vec.epilog.vector.body193:                        ; preds = %vec.epilog.vector.body193, %vec.epilog.ph190
  %index194 = phi i64 [ %vec.epilog.resume.val184, %vec.epilog.ph190 ], [ %index.next198, %vec.epilog.vector.body193 ] ; 3 uses
  %next.gep195 = getelementptr i8, ptr %i.i, i64 %index194
  %next.gep196 = getelementptr i8, ptr %i.q, i64 %index194
  %wide.load197 = load <8 x i8>, ptr %next.gep196, align 1, !tbaa !60
  store <8 x i8> %wide.load197, ptr %next.gep195, align 1, !tbaa !60
  %index.next198 = add nuw i64 %index194, 8       ; 2 uses
  %i.ac = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.ac, label %vec.epilog.middle.block199, label %vec.epilog.vector.body193, !llvm.loop !215

vec.epilog.middle.block199:                       ; preds = %vec.epilog.vector.body193
  %cmp.n200 = icmp eq i64 %i.d, %n.vec192
  br i1 %cmp.n200, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check186, %vec.epilog.iter.check188, %vec.epilog.middle.block199
  %.09.i.i.ph = phi ptr [ %i.i, %iter.check186 ], [ %i.r, %vec.epilog.iter.check188 ], [ %i.aa, %vec.epilog.middle.block199 ]
  %.sroa.05.08.i.i.ph = phi ptr [ %i.q, %iter.check186 ], [ %i.s, %vec.epilog.iter.check188 ], [ %i.ab, %vec.epilog.middle.block199 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.05.08.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.sroa.05.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ad = load i8, ptr %.sroa.05.08.i.i, align 1, !tbaa !60
  store i8 %i.ad, ptr %.09.i.i, align 1, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1
  %i.ag = icmp eq ptr %i.ae, %i.i
  br i1 %i.ag, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !216

_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block199, %middle.block182
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.d
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !28
  %i.aj = ptrtoint ptr %i.q to i64
  %i.ak = sub i64 %i.aj, %i.m                     ; 4 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %bb.d, label %bb.e, !prof !217

bb.d:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit
  %i.am = sub nsw i64 0, %i.ak
  %i.an = getelementptr inbounds i8, ptr %i.i, i64 %i.am
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %1, i64 %i.ak, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit
  %i.ao = icmp eq i64 %i.ak, 1
  br i1 %i.ao, label %bb.f, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds i8, ptr %i.i, i64 -1
  %i.aq = load i8, ptr %1, align 1, !tbaa !60
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !60
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.d, %bb.e, %bb.f
  %i.ar = icmp sgt i64 %i.d, 1
  br i1 %i.ar, label %bb.g, label %bb.h, !prof !217

bb.g:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit

bb.h:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %i.as = icmp eq i64 %i.d, 1
  br i1 %i.as, label %bb.i, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit

bb.i:                                             ; preds = %bb.h
  %i.at = load i8, ptr %2, align 1, !tbaa !60
  store i8 %i.at, ptr %1, align 1, !tbaa !60
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.au = getelementptr inbounds i8, ptr %2, i64 %i.n ; 6 uses
  %.not10.i = icmp eq ptr %i.au, %3
  br i1 %.not10.i, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %i.av = add i64 %i.b, %i.m
  %i.aw = add i64 %i.k, %i.c
  %i.ax = sub i64 %i.av, %i.aw                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.ax, 8
  %i.ay = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.ay, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check113 = icmp ult i64 %i.ax, 128
  br i1 %min.iters.check113, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ax, 120
  %n.vec = and i64 %i.ax, -128                    ; 5 uses
  %i.az = getelementptr i8, ptr %i.i, i64 %n.vec
  %i.ba = getelementptr i8, ptr %i.au, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %index ; 4 uses
  %next.gep114 = getelementptr i8, ptr %i.au, i64 %index ; 4 uses
  %i.bb = getelementptr i8, ptr %next.gep114, i64 32
  %i.bc = getelementptr i8, ptr %next.gep114, i64 64
  %i.bd = getelementptr i8, ptr %next.gep114, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep114, align 1, !tbaa !60
  %wide.load115 = load <32 x i8>, ptr %i.bb, align 1, !tbaa !60
  %wide.load116 = load <32 x i8>, ptr %i.bc, align 1, !tbaa !60
  %wide.load117 = load <32 x i8>, ptr %i.bd, align 1, !tbaa !60
  %i.be = getelementptr i8, ptr %next.gep, i64 32
  %i.bf = getelementptr i8, ptr %next.gep, i64 64
  %i.bg = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !60
  store <32 x i8> %wide.load115, ptr %i.be, align 1, !tbaa !60
  store <32 x i8> %wide.load116, ptr %i.bf, align 1, !tbaa !60
  store <32 x i8> %wide.load117, ptr %i.bg, align 1, !tbaa !60
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !179

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec120 = and i64 %i.ax, -8                   ; 4 uses
  %i.bi = getelementptr i8, ptr %i.i, i64 %n.vec120
  %i.bj = getelementptr i8, ptr %i.au, i64 %n.vec120
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %next.gep122 = getelementptr i8, ptr %i.i, i64 %index121
  %next.gep123 = getelementptr i8, ptr %i.au, i64 %index121
  %wide.load124 = load <8 x i8>, ptr %next.gep123, align 1, !tbaa !60
  store <8 x i8> %wide.load124, ptr %next.gep122, align 1, !tbaa !60
  %index.next125 = add nuw i64 %index121, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next125, %n.vec120
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !219

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %i.ax, %n.vec120
  br i1 %cmp.n126, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.ph = phi ptr [ %i.au, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.ph324 = ptrtoint ptr %.0911.i.ph to i64 ; 2 uses
  %i.bl = sub i64 %i.b, %.0911.i.ph324
  %xtraiter = and i64 %i.bl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.012.i.prol = phi ptr [ %i.bo, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0911.i.prol = phi ptr [ %i.bn, %.lr.ph.i.prol ], [ %.0911.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bm = load i8, ptr %.0911.i.prol, align 1, !tbaa !60
  store i8 %i.bm, ptr %.012.i.prol, align 1, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.prol, i64 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !220

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i.preheader ], [ %i.bo, %.lr.ph.i.prol ]
  %.0911.i.unr = phi ptr [ %.0911.i.ph, %.lr.ph.i.preheader ], [ %i.bn, %.lr.ph.i.prol ]
  %i.bp = sub i64 %.0911.i.ph324, %i.b
  %i.bq = icmp ugt i64 %i.bp, -8
  br i1 %i.bq, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi ptr [ %i.co, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.0911.i = phi ptr [ %i.cn, %.lr.ph.i ], [ %.0911.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.br = load i8, ptr %.0911.i, align 1, !tbaa !60
  store i8 %i.br, ptr %.012.i, align 1, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !60
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !60
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i, i64 2
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i, i64 2
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !60
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !60
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i, i64 3
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i, i64 3
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !60
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !60
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !60
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !60
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i, i64 5
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i, i64 5
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !60
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !60
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i, i64 6
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i, i64 6
  %i.cj = load i8, ptr %i.ch, align 1, !tbaa !60
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !60
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i, i64 7
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i, i64 7
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !60
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %.not.i.7 = icmp eq ptr %i.cn, %3
  br i1 %.not.i.7, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !221

_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !28
  br label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit

_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %i.cp = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit.loopexit ], [ %i.i, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.cq = ptrtoaddr ptr %i.cp to i64
  %i.cr = sub nuw i64 %i.d, %i.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr ; 8 uses
  store ptr %i.cs, ptr %i.h, align 8, !tbaa !28
  %i.ct = icmp eq ptr %1, %i.i
  br i1 %i.ct, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59, label %iter.check150

iter.check150:                                    ; preds = %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit
  %min.iters.check131 = icmp ult i64 %i.n, 8
  br i1 %min.iters.check131, label %.lr.ph.i.i55.preheader, label %vector.memcheck129

vector.memcheck129:                               ; preds = %iter.check150
  %i.cu = add i64 %i.cq, %i.b
  %i.cv = add i64 %i.k, %i.c
  %i.cw = sub i64 %i.cv, %i.cu
  %diff.check130 = icmp ugt i64 %i.cw, -128
  br i1 %diff.check130, label %.lr.ph.i.i55.preheader, label %vector.main.loop.iter.check132

vector.main.loop.iter.check132:                   ; preds = %vector.memcheck129
  %min.iters.check133 = icmp ult i64 %i.n, 128
  br i1 %min.iters.check133, label %vec.epilog.ph154, label %vector.ph134

vector.ph134:                                     ; preds = %vector.main.loop.iter.check132
  %n.mod.vf135 = and i64 %i.n, 120
  %n.vec136 = and i64 %i.n, -128                  ; 5 uses
  %i.cx = getelementptr i8, ptr %i.cs, i64 %n.vec136
  %i.cy = getelementptr i8, ptr %1, i64 %n.vec136
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph134
  %index138 = phi i64 [ 0, %vector.ph134 ], [ %index.next145, %vector.body137 ] ; 3 uses
  %next.gep139 = getelementptr i8, ptr %i.cs, i64 %index138 ; 4 uses
  %next.gep140 = getelementptr i8, ptr %1, i64 %index138 ; 4 uses
  %i.cz = getelementptr i8, ptr %next.gep140, i64 32
  %i.da = getelementptr i8, ptr %next.gep140, i64 64
  %i.db = getelementptr i8, ptr %next.gep140, i64 96
  %wide.load141 = load <32 x i8>, ptr %next.gep140, align 1, !tbaa !60
  %wide.load142 = load <32 x i8>, ptr %i.cz, align 1, !tbaa !60
  %wide.load143 = load <32 x i8>, ptr %i.da, align 1, !tbaa !60
  %wide.load144 = load <32 x i8>, ptr %i.db, align 1, !tbaa !60
  %i.dc = getelementptr i8, ptr %next.gep139, i64 32
  %i.dd = getelementptr i8, ptr %next.gep139, i64 64
  %i.de = getelementptr i8, ptr %next.gep139, i64 96
  store <32 x i8> %wide.load141, ptr %next.gep139, align 1, !tbaa !60
  store <32 x i8> %wide.load142, ptr %i.dc, align 1, !tbaa !60
  store <32 x i8> %wide.load143, ptr %i.dd, align 1, !tbaa !60
  store <32 x i8> %wide.load144, ptr %i.de, align 1, !tbaa !60
  %index.next145 = add nuw i64 %index138, 128     ; 2 uses
  %i.df = icmp eq i64 %index.next145, %n.vec136
  br i1 %i.df, label %middle.block146, label %vector.body137, !llvm.loop !222

middle.block146:                                  ; preds = %vector.body137
  %cmp.n147 = icmp eq i64 %i.n, %n.vec136
  br i1 %cmp.n147, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit, label %vec.epilog.iter.check152

vec.epilog.iter.check152:                         ; preds = %middle.block146
  %min.epilog.iters.check153 = icmp eq i64 %n.mod.vf135, 0
  br i1 %min.epilog.iters.check153, label %.lr.ph.i.i55.preheader, label %vec.epilog.ph154, !prof !179

vec.epilog.ph154:                                 ; preds = %vector.main.loop.iter.check132, %vec.epilog.iter.check152
  %vec.epilog.resume.val148 = phi i64 [ %n.vec136, %vec.epilog.iter.check152 ], [ 0, %vector.main.loop.iter.check132 ]
  %n.vec156 = and i64 %i.n, -8                    ; 4 uses
  %i.dg = getelementptr i8, ptr %i.cs, i64 %n.vec156
  %i.dh = getelementptr i8, ptr %1, i64 %n.vec156
  br label %vec.epilog.vector.body157

vec.epilog.vector.body157:                        ; preds = %vec.epilog.vector.body157, %vec.epilog.ph154
  %index158 = phi i64 [ %vec.epilog.resume.val148, %vec.epilog.ph154 ], [ %index.next162, %vec.epilog.vector.body157 ] ; 3 uses
  %next.gep159 = getelementptr i8, ptr %i.cs, i64 %index158
  %next.gep160 = getelementptr i8, ptr %1, i64 %index158
  %wide.load161 = load <8 x i8>, ptr %next.gep160, align 1, !tbaa !60
  store <8 x i8> %wide.load161, ptr %next.gep159, align 1, !tbaa !60
  %index.next162 = add nuw i64 %index158, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next162, %n.vec156
  br i1 %i.di, label %vec.epilog.middle.block163, label %vec.epilog.vector.body157, !llvm.loop !223

vec.epilog.middle.block163:                       ; preds = %vec.epilog.vector.body157
  %cmp.n164 = icmp eq i64 %i.n, %n.vec156
  br i1 %cmp.n164, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %vector.memcheck129, %iter.check150, %vec.epilog.iter.check152, %vec.epilog.middle.block163
  %.09.i.i56.ph = phi ptr [ %i.cs, %iter.check150 ], [ %i.cs, %vector.memcheck129 ], [ %i.cx, %vec.epilog.iter.check152 ], [ %i.dg, %vec.epilog.middle.block163 ] ; 2 uses
  %.sroa.05.08.i.i57.ph = phi ptr [ %1, %iter.check150 ], [ %1, %vector.memcheck129 ], [ %i.cy, %vec.epilog.iter.check152 ], [ %i.dh, %vec.epilog.middle.block163 ] ; 3 uses
  %.sroa.05.08.i.i57.ph325 = ptrtoint ptr %.sroa.05.08.i.i57.ph to i64 ; 2 uses
  %i.dj = sub i64 %i.k, %.sroa.05.08.i.i57.ph325
  %xtraiter326 = and i64 %i.dj, 7                 ; 2 uses
  %lcmp.mod327.not = icmp eq i64 %xtraiter326, 0
  br i1 %lcmp.mod327.not, label %.lr.ph.i.i55.prol.loopexit, label %.lr.ph.i.i55.prol

.lr.ph.i.i55.prol:                                ; preds = %.lr.ph.i.i55.preheader, %.lr.ph.i.i55.prol
  %.09.i.i56.prol = phi ptr [ %i.dm, %.lr.ph.i.i55.prol ], [ %.09.i.i56.ph, %.lr.ph.i.i55.preheader ] ; 2 uses
  %.sroa.05.08.i.i57.prol = phi ptr [ %i.dl, %.lr.ph.i.i55.prol ], [ %.sroa.05.08.i.i57.ph, %.lr.ph.i.i55.preheader ] ; 2 uses
  %prol.iter328 = phi i64 [ %prol.iter328.next, %.lr.ph.i.i55.prol ], [ 0, %.lr.ph.i.i55.preheader ]
  %i.dk = load i8, ptr %.sroa.05.08.i.i57.prol, align 1, !tbaa !60
  store i8 %i.dk, ptr %.09.i.i56.prol, align 1, !tbaa !60
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57.prol, i64 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.09.i.i56.prol, i64 1 ; 2 uses
  %prol.iter328.next = add i64 %prol.iter328, 1   ; 2 uses
  %prol.iter328.cmp.not = icmp eq i64 %prol.iter328.next, %xtraiter326
  br i1 %prol.iter328.cmp.not, label %.lr.ph.i.i55.prol.loopexit, label %.lr.ph.i.i55.prol, !llvm.loop !224

.lr.ph.i.i55.prol.loopexit:                       ; preds = %.lr.ph.i.i55.prol, %.lr.ph.i.i55.preheader
  %.09.i.i56.unr = phi ptr [ %.09.i.i56.ph, %.lr.ph.i.i55.preheader ], [ %i.dm, %.lr.ph.i.i55.prol ]
  %.sroa.05.08.i.i57.unr = phi ptr [ %.sroa.05.08.i.i57.ph, %.lr.ph.i.i55.preheader ], [ %i.dl, %.lr.ph.i.i55.prol ]
  %i.dn = sub i64 %.sroa.05.08.i.i57.ph325, %i.k
  %i.do = icmp ugt i64 %i.dn, -8
  br i1 %i.do, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit, label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.prol.loopexit, %.lr.ph.i.i55
  %.09.i.i56 = phi ptr [ %i.em, %.lr.ph.i.i55 ], [ %.09.i.i56.unr, %.lr.ph.i.i55.prol.loopexit ] ; 9 uses
  %.sroa.05.08.i.i57 = phi ptr [ %i.el, %.lr.ph.i.i55 ], [ %.sroa.05.08.i.i57.unr, %.lr.ph.i.i55.prol.loopexit ] ; 9 uses
  %i.dp = load i8, ptr %.sroa.05.08.i.i57, align 1, !tbaa !60
  store i8 %i.dp, ptr %.09.i.i56, align 1, !tbaa !60
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 1
  %i.ds = load i8, ptr %i.dq, align 1, !tbaa !60
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !60
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 2
  %i.du = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 2
  %i.dv = load i8, ptr %i.dt, align 1, !tbaa !60
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !60
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 3
  %i.dx = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 3
  %i.dy = load i8, ptr %i.dw, align 1, !tbaa !60
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !60
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 4
  %i.eb = load i8, ptr %i.dz, align 1, !tbaa !60
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !60
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 5
  %i.ed = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 5
  %i.ee = load i8, ptr %i.ec, align 1, !tbaa !60
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !60
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 6
  %i.eg = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 6
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !60
  store i8 %i.eh, ptr %i.eg, align 1, !tbaa !60
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 7
  %i.ej = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 7
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !60
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !60
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i57, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.09.i.i56, i64 8
  %i.en = icmp eq ptr %i.el, %i.i
  br i1 %i.en, label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit, label %.lr.ph.i.i55, !llvm.loop !225

_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit: ; preds = %.lr.ph.i.i55.prol.loopexit, %.lr.ph.i.i55, %vec.epilog.middle.block163, %middle.block146
  %.pre93 = load ptr, ptr %i.h, align 8, !tbaa !28
  br label %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59

_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59: ; preds = %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit, %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit
  %i.eo = phi ptr [ %.pre93, %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59.loopexit ], [ %i.cs, %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.n
  store ptr %i.ep, ptr %i.h, align 8, !tbaa !28
  %i.eq = icmp sgt i64 %i.n, 1
  br i1 %i.eq, label %bb.j, label %bb.k, !prof !217

bb.j:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.n, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit59
  %i.er = icmp eq i64 %i.n, 1
  br i1 %i.er, label %bb.l, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit

bb.l:                                             ; preds = %bb.k
  %i.es = load i8, ptr %2, align 1, !tbaa !60
  store i8 %i.es, ptr %1, align 1, !tbaa !60
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcN5folly19reentrant_allocatorIcEEEEEET0_T_SC_SB_.exit

bb.m:                                             ; preds = %bb.b
  %i.et = load ptr, ptr %i.e, align 8, !tbaa !25  ; 9 uses
  %i.eu = ptrtoint ptr %i.et to i64               ; 4 uses
  %i.ev = sub i64 %i.k, %i.eu                     ; 4 uses
  %i.ew = sub i64 9223372036854775807, %i.ev
  %i.ex = icmp ult i64 %i.ew, %i.d
  br i1 %i.ex, label %bb.n, label %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #24
  unreachable

_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit: ; preds = %bb.m
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ev, i64 %i.d)
  %i.ey = add i64 %.sroa.speculated.i, %i.ev      ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ev
  %i.fa = tail call i64 @llvm.umin.i64(i64 %i.ey, i64 9223372036854775807)
  %i.fb = select i1 %i.ez, i64 9223372036854775807, i64 %i.fa ; 3 uses
  %.not.i61 = icmp eq i64 %i.fb, 0
  br i1 %.not.i61, label %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit
  %i.fc = tail call noundef ptr @_ZN5folly6detail24reentrant_allocator_base8allocateEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fb, i64 noundef 1) #21
  br label %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit, %bb.o
  %i.fd = phi ptr [ %i.fc, %bb.o ], [ null, %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit ] ; 9 uses
  %i.fe = icmp eq ptr %i.et, %1
  br i1 %i.fe, label %iter.check263, label %iter.check224

iter.check224:                                    ; preds = %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit
  %i.ff = ptrtoaddr ptr %i.fd to i64
  %i.fg = sub i64 %i.a, %i.eu                     ; 7 uses
  %min.iters.check205 = icmp ult i64 %i.fg, 8
  %i.fh = sub i64 %i.eu, %i.ff
  %diff.check204 = icmp ugt i64 %i.fh, -128
  %or.cond319 = or i1 %min.iters.check205, %diff.check204
  br i1 %or.cond319, label %.lr.ph.i.i62.preheader, label %vector.main.loop.iter.check206

vector.main.loop.iter.check206:                   ; preds = %iter.check224
  %min.iters.check207 = icmp ult i64 %i.fg, 128
  br i1 %min.iters.check207, label %vec.epilog.ph228, label %vector.ph208

vector.ph208:                                     ; preds = %vector.main.loop.iter.check206
  %n.mod.vf209 = and i64 %i.fg, 120
  %n.vec210 = and i64 %i.fg, -128                 ; 5 uses
  %i.fi = getelementptr i8, ptr %i.fd, i64 %n.vec210 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.et, i64 %n.vec210
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph208
  %index212 = phi i64 [ 0, %vector.ph208 ], [ %index.next219, %vector.body211 ] ; 3 uses
  %next.gep213 = getelementptr i8, ptr %i.fd, i64 %index212 ; 4 uses
  %next.gep214 = getelementptr i8, ptr %i.et, i64 %index212 ; 4 uses
  %i.fk = getelementptr i8, ptr %next.gep214, i64 32
  %i.fl = getelementptr i8, ptr %next.gep214, i64 64
  %i.fm = getelementptr i8, ptr %next.gep214, i64 96
  %wide.load215 = load <32 x i8>, ptr %next.gep214, align 1, !tbaa !60
  %wide.load216 = load <32 x i8>, ptr %i.fk, align 1, !tbaa !60
  %wide.load217 = load <32 x i8>, ptr %i.fl, align 1, !tbaa !60
  %wide.load218 = load <32 x i8>, ptr %i.fm, align 1, !tbaa !60
  %i.fn = getelementptr i8, ptr %next.gep213, i64 32
  %i.fo = getelementptr i8, ptr %next.gep213, i64 64
  %i.fp = getelementptr i8, ptr %next.gep213, i64 96
  store <32 x i8> %wide.load215, ptr %next.gep213, align 1, !tbaa !60
  store <32 x i8> %wide.load216, ptr %i.fn, align 1, !tbaa !60
  store <32 x i8> %wide.load217, ptr %i.fo, align 1, !tbaa !60
  store <32 x i8> %wide.load218, ptr %i.fp, align 1, !tbaa !60
  %index.next219 = add nuw i64 %index212, 128     ; 2 uses
  %i.fq = icmp eq i64 %index.next219, %n.vec210
  br i1 %i.fq, label %middle.block220, label %vector.body211, !llvm.loop !226

middle.block220:                                  ; preds = %vector.body211
  %cmp.n221 = icmp eq i64 %i.fg, %n.vec210
  br i1 %cmp.n221, label %iter.check263, label %vec.epilog.iter.check226

vec.epilog.iter.check226:                         ; preds = %middle.block220
  %min.epilog.iters.check227 = icmp eq i64 %n.mod.vf209, 0
  br i1 %min.epilog.iters.check227, label %.lr.ph.i.i62.preheader, label %vec.epilog.ph228, !prof !179

vec.epilog.ph228:                                 ; preds = %vector.main.loop.iter.check206, %vec.epilog.iter.check226
  %vec.epilog.resume.val222 = phi i64 [ %n.vec210, %vec.epilog.iter.check226 ], [ 0, %vector.main.loop.iter.check206 ]
  %n.vec230 = and i64 %i.fg, -8                   ; 4 uses
  %i.fr = getelementptr i8, ptr %i.fd, i64 %n.vec230 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.et, i64 %n.vec230
  br label %vec.epilog.vector.body231

vec.epilog.vector.body231:                        ; preds = %vec.epilog.vector.body231, %vec.epilog.ph228
  %index232 = phi i64 [ %vec.epilog.resume.val222, %vec.epilog.ph228 ], [ %index.next236, %vec.epilog.vector.body231 ] ; 3 uses
  %next.gep233 = getelementptr i8, ptr %i.fd, i64 %index232
  %next.gep234 = getelementptr i8, ptr %i.et, i64 %index232
  %wide.load235 = load <8 x i8>, ptr %next.gep234, align 1, !tbaa !60
  store <8 x i8> %wide.load235, ptr %next.gep233, align 1, !tbaa !60
  %index.next236 = add nuw i64 %index232, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next236, %n.vec230
  br i1 %i.ft, label %vec.epilog.middle.block237, label %vec.epilog.vector.body231, !llvm.loop !227

vec.epilog.middle.block237:                       ; preds = %vec.epilog.vector.body231
  %cmp.n238 = icmp eq i64 %i.fg, %n.vec230
  br i1 %cmp.n238, label %iter.check263, label %.lr.ph.i.i62.preheader

.lr.ph.i.i62.preheader:                           ; preds = %iter.check224, %vec.epilog.iter.check226, %vec.epilog.middle.block237
  %.09.i.i63.ph = phi ptr [ %i.fd, %iter.check224 ], [ %i.fi, %vec.epilog.iter.check226 ], [ %i.fr, %vec.epilog.middle.block237 ] ; 2 uses
  %.sroa.05.08.i.i64.ph = phi ptr [ %i.et, %iter.check224 ], [ %i.fj, %vec.epilog.iter.check226 ], [ %i.fs, %vec.epilog.middle.block237 ] ; 3 uses
  %.sroa.05.08.i.i64.ph329 = ptrtoint ptr %.sroa.05.08.i.i64.ph to i64 ; 2 uses
  %i.fu = sub i64 %i.a, %.sroa.05.08.i.i64.ph329
  %xtraiter330 = and i64 %i.fu, 7                 ; 2 uses
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %.lr.ph.i.i62.prol.loopexit, label %.lr.ph.i.i62.prol

.lr.ph.i.i62.prol:                                ; preds = %.lr.ph.i.i62.preheader, %.lr.ph.i.i62.prol
  %.09.i.i63.prol = phi ptr [ %i.fx, %.lr.ph.i.i62.prol ], [ %.09.i.i63.ph, %.lr.ph.i.i62.preheader ] ; 2 uses
  %.sroa.05.08.i.i64.prol = phi ptr [ %i.fw, %.lr.ph.i.i62.prol ], [ %.sroa.05.08.i.i64.ph, %.lr.ph.i.i62.preheader ] ; 2 uses
  %prol.iter332 = phi i64 [ %prol.iter332.next, %.lr.ph.i.i62.prol ], [ 0, %.lr.ph.i.i62.preheader ]
  %i.fv = load i8, ptr %.sroa.05.08.i.i64.prol, align 1, !tbaa !60
  store i8 %i.fv, ptr %.09.i.i63.prol, align 1, !tbaa !60
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64.prol, i64 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.09.i.i63.prol, i64 1 ; 3 uses
  %prol.iter332.next = add i64 %prol.iter332, 1   ; 2 uses
  %prol.iter332.cmp.not = icmp eq i64 %prol.iter332.next, %xtraiter330
  br i1 %prol.iter332.cmp.not, label %.lr.ph.i.i62.prol.loopexit, label %.lr.ph.i.i62.prol, !llvm.loop !228

.lr.ph.i.i62.prol.loopexit:                       ; preds = %.lr.ph.i.i62.prol, %.lr.ph.i.i62.preheader
  %.lcssa323.unr = phi ptr [ poison, %.lr.ph.i.i62.preheader ], [ %i.fx, %.lr.ph.i.i62.prol ]
  %.09.i.i63.unr = phi ptr [ %.09.i.i63.ph, %.lr.ph.i.i62.preheader ], [ %i.fx, %.lr.ph.i.i62.prol ]
  %.sroa.05.08.i.i64.unr = phi ptr [ %.sroa.05.08.i.i64.ph, %.lr.ph.i.i62.preheader ], [ %i.fw, %.lr.ph.i.i62.prol ]
  %i.fy = sub i64 %.sroa.05.08.i.i64.ph329, %i.a
  %i.fz = icmp ugt i64 %i.fy, -8
  br i1 %i.fz, label %iter.check263, label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62.prol.loopexit, %.lr.ph.i.i62
  %.09.i.i63 = phi ptr [ %i.gx, %.lr.ph.i.i62 ], [ %.09.i.i63.unr, %.lr.ph.i.i62.prol.loopexit ] ; 9 uses
  %.sroa.05.08.i.i64 = phi ptr [ %i.gw, %.lr.ph.i.i62 ], [ %.sroa.05.08.i.i64.unr, %.lr.ph.i.i62.prol.loopexit ] ; 9 uses
  %i.ga = load i8, ptr %.sroa.05.08.i.i64, align 1, !tbaa !60
  store i8 %i.ga, ptr %.09.i.i63, align 1, !tbaa !60
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 1
  %i.gd = load i8, ptr %i.gb, align 1, !tbaa !60
  store i8 %i.gd, ptr %i.gc, align 1, !tbaa !60
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 2
  %i.gf = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 2
  %i.gg = load i8, ptr %i.ge, align 1, !tbaa !60
  store i8 %i.gg, ptr %i.gf, align 1, !tbaa !60
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 3
  %i.gi = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 3
  %i.gj = load i8, ptr %i.gh, align 1, !tbaa !60
  store i8 %i.gj, ptr %i.gi, align 1, !tbaa !60
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 4
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !60
  store i8 %i.gm, ptr %i.gl, align 1, !tbaa !60
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 5
  %i.go = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 5
  %i.gp = load i8, ptr %i.gn, align 1, !tbaa !60
  store i8 %i.gp, ptr %i.go, align 1, !tbaa !60
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 6
  %i.gr = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 6
  %i.gs = load i8, ptr %i.gq, align 1, !tbaa !60
  store i8 %i.gs, ptr %i.gr, align 1, !tbaa !60
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 7
  %i.gu = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 7
  %i.gv = load i8, ptr %i.gt, align 1, !tbaa !60
  store i8 %i.gv, ptr %i.gu, align 1, !tbaa !60
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i64, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.09.i.i63, i64 8 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %1
  br i1 %i.gy, label %iter.check263, label %.lr.ph.i.i62, !llvm.loop !229

iter.check263:                                    ; preds = %.lr.ph.i.i62.prol.loopexit, %.lr.ph.i.i62, %middle.block220, %vec.epilog.middle.block237, %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit
  %.0.lcssa.i.i65 = phi ptr [ %i.fd, %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE11_M_allocateEm.exit ], [ %i.fr, %vec.epilog.middle.block237 ], [ %i.fi, %middle.block220 ], [ %.lcssa323.unr, %.lr.ph.i.i62.prol.loopexit ], [ %i.gx, %.lr.ph.i.i62 ] ; 6 uses
  %min.iters.check244 = icmp ult i64 %i.d, 8
  %.0.lcssa.i.i65242 = ptrtoaddr ptr %.0.lcssa.i.i65 to i64
  %i.gz = sub i64 %i.c, %.0.lcssa.i.i65242
  %diff.check243 = icmp ugt i64 %i.gz, -128
  %or.cond320 = select i1 %min.iters.check244, i1 true, i1 %diff.check243
  br i1 %or.cond320, label %.lr.ph.i67.preheader, label %vector.main.loop.iter.check245

vector.main.loop.iter.check245:                   ; preds = %iter.check263
  %min.iters.check246 = icmp ult i64 %i.d, 128
  br i1 %min.iters.check246, label %vec.epilog.ph267, label %vector.ph247

vector.ph247:                                     ; preds = %vector.main.loop.iter.check245
  %n.mod.vf248 = and i64 %i.d, 120
  %n.vec249 = and i64 %i.d, -128                  ; 5 uses
  %i.ha = getelementptr i8, ptr %.0.lcssa.i.i65, i64 %n.vec249 ; 2 uses
  %i.hb = getelementptr i8, ptr %2, i64 %n.vec249
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph247
  %index251 = phi i64 [ 0, %vector.ph247 ], [ %index.next258, %vector.body250 ] ; 3 uses
  %next.gep252 = getelementptr i8, ptr %.0.lcssa.i.i65, i64 %index251 ; 4 uses
  %next.gep253 = getelementptr i8, ptr %2, i64 %index251 ; 4 uses
  %i.hc = getelementptr i8, ptr %next.gep253, i64 32
  %i.hd = getelementptr i8, ptr %next.gep253, i64 64
  %i.he = getelementptr i8, ptr %next.gep253, i64 96
  %wide.load254 = load <32 x i8>, ptr %next.gep253, align 1, !tbaa !60
  %wide.load255 = load <32 x i8>, ptr %i.hc, align 1, !tbaa !60
  %wide.load256 = load <32 x i8>, ptr %i.hd, align 1, !tbaa !60
  %wide.load257 = load <32 x i8>, ptr %i.he, align 1, !tbaa !60
  %i.hf = getelementptr i8, ptr %next.gep252, i64 32
  %i.hg = getelementptr i8, ptr %next.gep252, i64 64
  %i.hh = getelementptr i8, ptr %next.gep252, i64 96
  store <32 x i8> %wide.load254, ptr %next.gep252, align 1, !tbaa !60
  store <32 x i8> %wide.load255, ptr %i.hf, align 1, !tbaa !60
  store <32 x i8> %wide.load256, ptr %i.hg, align 1, !tbaa !60
  store <32 x i8> %wide.load257, ptr %i.hh, align 1, !tbaa !60
  %index.next258 = add nuw i64 %index251, 128     ; 2 uses
  %i.hi = icmp eq i64 %index.next258, %n.vec249
  br i1 %i.hi, label %middle.block259, label %vector.body250, !llvm.loop !230

middle.block259:                                  ; preds = %vector.body250
  %cmp.n260 = icmp eq i64 %i.d, %n.vec249
  br i1 %cmp.n260, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72, label %vec.epilog.iter.check265

vec.epilog.iter.check265:                         ; preds = %middle.block259
  %min.epilog.iters.check266 = icmp eq i64 %n.mod.vf248, 0
  br i1 %min.epilog.iters.check266, label %.lr.ph.i67.preheader, label %vec.epilog.ph267, !prof !179

vec.epilog.ph267:                                 ; preds = %vector.main.loop.iter.check245, %vec.epilog.iter.check265
  %vec.epilog.resume.val261 = phi i64 [ %n.vec249, %vec.epilog.iter.check265 ], [ 0, %vector.main.loop.iter.check245 ]
  %n.vec269 = and i64 %i.d, -8                    ; 4 uses
  %i.hj = getelementptr i8, ptr %.0.lcssa.i.i65, i64 %n.vec269 ; 2 uses
  %i.hk = getelementptr i8, ptr %2, i64 %n.vec269
  br label %vec.epilog.vector.body270

vec.epilog.vector.body270:                        ; preds = %vec.epilog.vector.body270, %vec.epilog.ph267
  %index271 = phi i64 [ %vec.epilog.resume.val261, %vec.epilog.ph267 ], [ %index.next275, %vec.epilog.vector.body270 ] ; 3 uses
  %next.gep272 = getelementptr i8, ptr %.0.lcssa.i.i65, i64 %index271
  %next.gep273 = getelementptr i8, ptr %2, i64 %index271
  %wide.load274 = load <8 x i8>, ptr %next.gep273, align 1, !tbaa !60
  store <8 x i8> %wide.load274, ptr %next.gep272, align 1, !tbaa !60
  %index.next275 = add nuw i64 %index271, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next275, %n.vec269
  br i1 %i.hl, label %vec.epilog.middle.block276, label %vec.epilog.vector.body270, !llvm.loop !231

vec.epilog.middle.block276:                       ; preds = %vec.epilog.vector.body270
  %cmp.n277 = icmp eq i64 %i.d, %n.vec269
  br i1 %cmp.n277, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72, label %.lr.ph.i67.preheader

.lr.ph.i67.preheader:                             ; preds = %iter.check263, %vec.epilog.iter.check265, %vec.epilog.middle.block276
  %.012.i68.ph = phi ptr [ %.0.lcssa.i.i65, %iter.check263 ], [ %i.ha, %vec.epilog.iter.check265 ], [ %i.hj, %vec.epilog.middle.block276 ] ; 2 uses
  %.0911.i69.ph = phi ptr [ %2, %iter.check263 ], [ %i.hb, %vec.epilog.iter.check265 ], [ %i.hk, %vec.epilog.middle.block276 ] ; 3 uses
  %.0911.i69.ph333 = ptrtoint ptr %.0911.i69.ph to i64 ; 2 uses
  %i.hm = sub i64 %i.b, %.0911.i69.ph333
  %xtraiter334 = and i64 %i.hm, 7                 ; 2 uses
  %lcmp.mod335.not = icmp eq i64 %xtraiter334, 0
  br i1 %lcmp.mod335.not, label %.lr.ph.i67.prol.loopexit, label %.lr.ph.i67.prol

.lr.ph.i67.prol:                                  ; preds = %.lr.ph.i67.preheader, %.lr.ph.i67.prol
  %.012.i68.prol = phi ptr [ %i.hp, %.lr.ph.i67.prol ], [ %.012.i68.ph, %.lr.ph.i67.preheader ] ; 2 uses
  %.0911.i69.prol = phi ptr [ %i.ho, %.lr.ph.i67.prol ], [ %.0911.i69.ph, %.lr.ph.i67.preheader ] ; 2 uses
  %prol.iter336 = phi i64 [ %prol.iter336.next, %.lr.ph.i67.prol ], [ 0, %.lr.ph.i67.preheader ]
  %i.hn = load i8, ptr %.0911.i69.prol, align 1, !tbaa !60
  store i8 %i.hn, ptr %.012.i68.prol, align 1, !tbaa !60
  %i.ho = getelementptr inbounds nuw i8, ptr %.0911.i69.prol, i64 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i68.prol, i64 1 ; 3 uses
  %prol.iter336.next = add i64 %prol.iter336, 1   ; 2 uses
  %prol.iter336.cmp.not = icmp eq i64 %prol.iter336.next, %xtraiter334
  br i1 %prol.iter336.cmp.not, label %.lr.ph.i67.prol.loopexit, label %.lr.ph.i67.prol, !llvm.loop !232

.lr.ph.i67.prol.loopexit:                         ; preds = %.lr.ph.i67.prol, %.lr.ph.i67.preheader
  %.lcssa322.unr = phi ptr [ poison, %.lr.ph.i67.preheader ], [ %i.hp, %.lr.ph.i67.prol ]
  %.012.i68.unr = phi ptr [ %.012.i68.ph, %.lr.ph.i67.preheader ], [ %i.hp, %.lr.ph.i67.prol ]
  %.0911.i69.unr = phi ptr [ %.0911.i69.ph, %.lr.ph.i67.preheader ], [ %i.ho, %.lr.ph.i67.prol ]
  %i.hq = sub i64 %.0911.i69.ph333, %i.b
  %i.hr = icmp ugt i64 %i.hq, -8
  br i1 %i.hr, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.lr.ph.i67.prol.loopexit, %.lr.ph.i67
  %.012.i68 = phi ptr [ %i.ip, %.lr.ph.i67 ], [ %.012.i68.unr, %.lr.ph.i67.prol.loopexit ] ; 9 uses
  %.0911.i69 = phi ptr [ %i.io, %.lr.ph.i67 ], [ %.0911.i69.unr, %.lr.ph.i67.prol.loopexit ] ; 9 uses
  %i.hs = load i8, ptr %.0911.i69, align 1, !tbaa !60
  store i8 %i.hs, ptr %.012.i68, align 1, !tbaa !60
  %i.ht = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.012.i68, i64 1
  %i.hv = load i8, ptr %i.ht, align 1, !tbaa !60
  store i8 %i.hv, ptr %i.hu, align 1, !tbaa !60
  %i.hw = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 2
  %i.hx = getelementptr inbounds nuw i8, ptr %.012.i68, i64 2
  %i.hy = load i8, ptr %i.hw, align 1, !tbaa !60
  store i8 %i.hy, ptr %i.hx, align 1, !tbaa !60
  %i.hz = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 3
  %i.ia = getelementptr inbounds nuw i8, ptr %.012.i68, i64 3
  %i.ib = load i8, ptr %i.hz, align 1, !tbaa !60
  store i8 %i.ib, ptr %i.ia, align 1, !tbaa !60
  %i.ic = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %.012.i68, i64 4
  %i.ie = load i8, ptr %i.ic, align 1, !tbaa !60
  store i8 %i.ie, ptr %i.id, align 1, !tbaa !60
  %i.if = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 5
  %i.ig = getelementptr inbounds nuw i8, ptr %.012.i68, i64 5
  %i.ih = load i8, ptr %i.if, align 1, !tbaa !60
  store i8 %i.ih, ptr %i.ig, align 1, !tbaa !60
  %i.ii = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 6
  %i.ij = getelementptr inbounds nuw i8, ptr %.012.i68, i64 6
  %i.ik = load i8, ptr %i.ii, align 1, !tbaa !60
  store i8 %i.ik, ptr %i.ij, align 1, !tbaa !60
  %i.il = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 7
  %i.im = getelementptr inbounds nuw i8, ptr %.012.i68, i64 7
  %i.in = load i8, ptr %i.il, align 1, !tbaa !60
  store i8 %i.in, ptr %i.im, align 1, !tbaa !60
  %i.io = getelementptr inbounds nuw i8, ptr %.0911.i69, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.012.i68, i64 8 ; 2 uses
  %.not.i70.7 = icmp eq ptr %i.io, %3
  br i1 %.not.i70.7, label %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72, label %.lr.ph.i67, !llvm.loop !233

_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72: ; preds = %.lr.ph.i67.prol.loopexit, %.lr.ph.i67, %vec.epilog.middle.block276, %middle.block259
  %.lcssa111 = phi ptr [ %i.hj, %vec.epilog.middle.block276 ], [ %i.ha, %middle.block259 ], [ %.lcssa322.unr, %.lr.ph.i67.prol.loopexit ], [ %i.ip, %.lr.ph.i67 ] ; 7 uses
  %i.iq = icmp eq ptr %1, %i.i
  br i1 %i.iq, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77, label %iter.check302

iter.check302:                                    ; preds = %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72
  %.lcssa111281 = ptrtoaddr ptr %.lcssa111 to i64
  %i.ir = sub i64 %i.k, %i.a                      ; 7 uses
  %min.iters.check283 = icmp ult i64 %i.ir, 8
  %i.is = sub i64 %i.a, %.lcssa111281
  %diff.check282 = icmp ugt i64 %i.is, -128
  %or.cond321 = select i1 %min.iters.check283, i1 true, i1 %diff.check282
  br i1 %or.cond321, label %.lr.ph.i.i73.preheader, label %vector.main.loop.iter.check284

vector.main.loop.iter.check284:                   ; preds = %iter.check302
  %min.iters.check285 = icmp ult i64 %i.ir, 128
  br i1 %min.iters.check285, label %vec.epilog.ph306, label %vector.ph286

vector.ph286:                                     ; preds = %vector.main.loop.iter.check284
  %n.mod.vf287 = and i64 %i.ir, 120
  %n.vec288 = and i64 %i.ir, -128                 ; 5 uses
  %i.it = getelementptr i8, ptr %.lcssa111, i64 %n.vec288 ; 2 uses
  %i.iu = getelementptr i8, ptr %1, i64 %n.vec288
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph286
  %index290 = phi i64 [ 0, %vector.ph286 ], [ %index.next297, %vector.body289 ] ; 3 uses
  %next.gep291 = getelementptr i8, ptr %.lcssa111, i64 %index290 ; 4 uses
  %next.gep292 = getelementptr i8, ptr %1, i64 %index290 ; 4 uses
  %i.iv = getelementptr i8, ptr %next.gep292, i64 32
  %i.iw = getelementptr i8, ptr %next.gep292, i64 64
  %i.ix = getelementptr i8, ptr %next.gep292, i64 96
  %wide.load293 = load <32 x i8>, ptr %next.gep292, align 1, !tbaa !60
  %wide.load294 = load <32 x i8>, ptr %i.iv, align 1, !tbaa !60
  %wide.load295 = load <32 x i8>, ptr %i.iw, align 1, !tbaa !60
  %wide.load296 = load <32 x i8>, ptr %i.ix, align 1, !tbaa !60
  %i.iy = getelementptr i8, ptr %next.gep291, i64 32
  %i.iz = getelementptr i8, ptr %next.gep291, i64 64
  %i.ja = getelementptr i8, ptr %next.gep291, i64 96
  store <32 x i8> %wide.load293, ptr %next.gep291, align 1, !tbaa !60
  store <32 x i8> %wide.load294, ptr %i.iy, align 1, !tbaa !60
  store <32 x i8> %wide.load295, ptr %i.iz, align 1, !tbaa !60
  store <32 x i8> %wide.load296, ptr %i.ja, align 1, !tbaa !60
  %index.next297 = add nuw i64 %index290, 128     ; 2 uses
  %i.jb = icmp eq i64 %index.next297, %n.vec288
  br i1 %i.jb, label %middle.block298, label %vector.body289, !llvm.loop !234

middle.block298:                                  ; preds = %vector.body289
  %cmp.n299 = icmp eq i64 %i.ir, %n.vec288
  br i1 %cmp.n299, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77, label %vec.epilog.iter.check304

vec.epilog.iter.check304:                         ; preds = %middle.block298
  %min.epilog.iters.check305 = icmp eq i64 %n.mod.vf287, 0
  br i1 %min.epilog.iters.check305, label %.lr.ph.i.i73.preheader, label %vec.epilog.ph306, !prof !179

vec.epilog.ph306:                                 ; preds = %vector.main.loop.iter.check284, %vec.epilog.iter.check304
  %vec.epilog.resume.val300 = phi i64 [ %n.vec288, %vec.epilog.iter.check304 ], [ 0, %vector.main.loop.iter.check284 ]
  %n.vec308 = and i64 %i.ir, -8                   ; 4 uses
  %i.jc = getelementptr i8, ptr %.lcssa111, i64 %n.vec308 ; 2 uses
  %i.jd = getelementptr i8, ptr %1, i64 %n.vec308
  br label %vec.epilog.vector.body309

vec.epilog.vector.body309:                        ; preds = %vec.epilog.vector.body309, %vec.epilog.ph306
  %index310 = phi i64 [ %vec.epilog.resume.val300, %vec.epilog.ph306 ], [ %index.next314, %vec.epilog.vector.body309 ] ; 3 uses
  %next.gep311 = getelementptr i8, ptr %.lcssa111, i64 %index310
  %next.gep312 = getelementptr i8, ptr %1, i64 %index310
  %wide.load313 = load <8 x i8>, ptr %next.gep312, align 1, !tbaa !60
  store <8 x i8> %wide.load313, ptr %next.gep311, align 1, !tbaa !60
  %index.next314 = add nuw i64 %index310, 8       ; 2 uses
  %i.je = icmp eq i64 %index.next314, %n.vec308
  br i1 %i.je, label %vec.epilog.middle.block315, label %vec.epilog.vector.body309, !llvm.loop !235

vec.epilog.middle.block315:                       ; preds = %vec.epilog.vector.body309
  %cmp.n316 = icmp eq i64 %i.ir, %n.vec308
  br i1 %cmp.n316, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77, label %.lr.ph.i.i73.preheader

.lr.ph.i.i73.preheader:                           ; preds = %iter.check302, %vec.epilog.iter.check304, %vec.epilog.middle.block315
  %.09.i.i74.ph = phi ptr [ %.lcssa111, %iter.check302 ], [ %i.it, %vec.epilog.iter.check304 ], [ %i.jc, %vec.epilog.middle.block315 ] ; 2 uses
  %.sroa.05.08.i.i75.ph = phi ptr [ %1, %iter.check302 ], [ %i.iu, %vec.epilog.iter.check304 ], [ %i.jd, %vec.epilog.middle.block315 ] ; 3 uses
  %.sroa.05.08.i.i75.ph337 = ptrtoint ptr %.sroa.05.08.i.i75.ph to i64 ; 2 uses
  %i.jf = sub i64 %i.k, %.sroa.05.08.i.i75.ph337
  %xtraiter338 = and i64 %i.jf, 7                 ; 2 uses
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %.lr.ph.i.i73.prol.loopexit, label %.lr.ph.i.i73.prol

.lr.ph.i.i73.prol:                                ; preds = %.lr.ph.i.i73.preheader, %.lr.ph.i.i73.prol
  %.09.i.i74.prol = phi ptr [ %i.ji, %.lr.ph.i.i73.prol ], [ %.09.i.i74.ph, %.lr.ph.i.i73.preheader ] ; 2 uses
  %.sroa.05.08.i.i75.prol = phi ptr [ %i.jh, %.lr.ph.i.i73.prol ], [ %.sroa.05.08.i.i75.ph, %.lr.ph.i.i73.preheader ] ; 2 uses
  %prol.iter340 = phi i64 [ %prol.iter340.next, %.lr.ph.i.i73.prol ], [ 0, %.lr.ph.i.i73.preheader ]
  %i.jg = load i8, ptr %.sroa.05.08.i.i75.prol, align 1, !tbaa !60
  store i8 %i.jg, ptr %.09.i.i74.prol, align 1, !tbaa !60
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75.prol, i64 1 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.09.i.i74.prol, i64 1 ; 3 uses
  %prol.iter340.next = add i64 %prol.iter340, 1   ; 2 uses
  %prol.iter340.cmp.not = icmp eq i64 %prol.iter340.next, %xtraiter338
  br i1 %prol.iter340.cmp.not, label %.lr.ph.i.i73.prol.loopexit, label %.lr.ph.i.i73.prol, !llvm.loop !236

.lr.ph.i.i73.prol.loopexit:                       ; preds = %.lr.ph.i.i73.prol, %.lr.ph.i.i73.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i73.preheader ], [ %i.ji, %.lr.ph.i.i73.prol ]
  %.09.i.i74.unr = phi ptr [ %.09.i.i74.ph, %.lr.ph.i.i73.preheader ], [ %i.ji, %.lr.ph.i.i73.prol ]
  %.sroa.05.08.i.i75.unr = phi ptr [ %.sroa.05.08.i.i75.ph, %.lr.ph.i.i73.preheader ], [ %i.jh, %.lr.ph.i.i73.prol ]
  %i.jj = sub i64 %.sroa.05.08.i.i75.ph337, %i.k
  %i.jk = icmp ugt i64 %i.jj, -8
  br i1 %i.jk, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77, label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %.lr.ph.i.i73.prol.loopexit, %.lr.ph.i.i73
  %.09.i.i74 = phi ptr [ %i.ki, %.lr.ph.i.i73 ], [ %.09.i.i74.unr, %.lr.ph.i.i73.prol.loopexit ] ; 9 uses
  %.sroa.05.08.i.i75 = phi ptr [ %i.kh, %.lr.ph.i.i73 ], [ %.sroa.05.08.i.i75.unr, %.lr.ph.i.i73.prol.loopexit ] ; 9 uses
  %i.jl = load i8, ptr %.sroa.05.08.i.i75, align 1, !tbaa !60
  store i8 %i.jl, ptr %.09.i.i74, align 1, !tbaa !60
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 1
  %i.jn = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 1
  %i.jo = load i8, ptr %i.jm, align 1, !tbaa !60
  store i8 %i.jo, ptr %i.jn, align 1, !tbaa !60
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 2
  %i.jq = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 2
  %i.jr = load i8, ptr %i.jp, align 1, !tbaa !60
  store i8 %i.jr, ptr %i.jq, align 1, !tbaa !60
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 3
  %i.jt = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 3
  %i.ju = load i8, ptr %i.js, align 1, !tbaa !60
  store i8 %i.ju, ptr %i.jt, align 1, !tbaa !60
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 4
  %i.jw = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 4
  %i.jx = load i8, ptr %i.jv, align 1, !tbaa !60
  store i8 %i.jx, ptr %i.jw, align 1, !tbaa !60
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 5
  %i.jz = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 5
  %i.ka = load i8, ptr %i.jy, align 1, !tbaa !60
  store i8 %i.ka, ptr %i.jz, align 1, !tbaa !60
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 6
  %i.kc = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 6
  %i.kd = load i8, ptr %i.kb, align 1, !tbaa !60
  store i8 %i.kd, ptr %i.kc, align 1, !tbaa !60
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 7
  %i.kf = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 7
  %i.kg = load i8, ptr %i.ke, align 1, !tbaa !60
  store i8 %i.kg, ptr %i.kf, align 1, !tbaa !60
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i75, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.09.i.i74, i64 8 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.i
  br i1 %i.kj, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77, label %.lr.ph.i.i73, !llvm.loop !237

_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77: ; preds = %.lr.ph.i.i73.prol.loopexit, %.lr.ph.i.i73, %middle.block298, %vec.epilog.middle.block315, %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72
  %.0.lcssa.i.i76 = phi ptr [ %.lcssa111, %_ZSt22__uninitialized_copy_aIPKcPcN5folly19reentrant_allocatorIcEEET0_T_S7_S6_RT1_.exit72 ], [ %i.jc, %vec.epilog.middle.block315 ], [ %i.it, %middle.block298 ], [ %.lcssa.unr, %.lr.ph.i.i73.prol.loopexit ], [ %i.ki, %.lr.ph.i.i73 ]
  %.not.i78 = icmp eq ptr %i.et, null
  br i1 %.not.i78, label %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77
  %i.kk = load ptr, ptr %i.f, align 8, !tbaa !212
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = sub i64 %i.kl, %i.eu
  tail call void @_ZN5folly6detail24reentrant_allocator_base10deallocateEPvm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.et, i64 noundef %i.km) #21
  br label %_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcN5folly19reentrant_allocatorIcEEE13_M_deallocateEPcm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_N5folly19reentrant_allocatorIcEEET0_T_S5_S4_RT1_.exit77, %bb.p
  store ptr %i.fd, ptr %i.e, align 8, !tbaa !25
  store ptr %.0.lcssa.i.i76, ptr %i.h, align 8, !tbaa !28
  %i.kn = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fb
  store ptr %i.kn, ptr %i.f, align 8, !tbaa !212
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 11 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = sub i64 %i.c, %i.d                       ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !212
  %.not = icmp eq ptr %i.g, %i.i
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %1, %i.g
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %2, align 1, !tbaa !60
  store i8 %i.k, ptr %i.g, align 1, !tbaa !60
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.m, ptr %i.f, align 8, !tbaa !28
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !60
  store i8 %i.p, ptr %i.g, align 1, !tbaa !60
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !28   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %i.f, align 8, !tbaa !28
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.c                       ; 4 uses
  %i.v = icmp sgt i64 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.f, !prof !217

bb.e:                                             ; preds = %bb.d
  %i.w = sub nsw i64 0, %i.u
  %i.x = getelementptr inbounds i8, ptr %i.q, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.n, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %i.u, 1
  br i1 %i.y, label %bb.g, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEOT_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.n, align 1, !tbaa !60
  store i8 %i.z, ptr %i.s, align 1, !tbaa !60
  br label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEOT_.exit

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEOT_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aa = load i8, ptr %2, align 1, !tbaa !60
  store i8 %i.aa, ptr %i.n, align 1, !tbaa !60
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
  %i.al = load i8, ptr %2, align 1, !tbaa !60
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !60
  %.not10.i.i.i.i = icmp eq ptr %i.b, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit.i
  %i.am = ptrtoaddr ptr %i.aj to i64
  %min.iters.check = icmp ult i64 %i.e, 8
  %i.an = sub i64 %i.d, %i.am
  %diff.check = icmp ugt i64 %i.an, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check22 = icmp ult i64 %i.e, 128
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.e, 120
  %n.vec = and i64 %i.e, -128                     ; 5 uses
  %i.ao = getelementptr i8, ptr %i.aj, i64 %n.vec ; 2 uses
  %i.ap = getelementptr i8, ptr %i.b, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %index ; 4 uses
  %next.gep23 = getelementptr i8, ptr %i.b, i64 %index ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.aq = getelementptr i8, ptr %next.gep23, i64 32
  %i.ar = getelementptr i8, ptr %next.gep23, i64 64
  %i.as = getelementptr i8, ptr %next.gep23, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep23, align 1, !tbaa !60, !alias.scope !241, !noalias !238
  %wide.load24 = load <32 x i8>, ptr %i.aq, align 1, !tbaa !60, !alias.scope !241, !noalias !238
  %wide.load25 = load <32 x i8>, ptr %i.ar, align 1, !tbaa !60, !alias.scope !241, !noalias !238
  %wide.load26 = load <32 x i8>, ptr %i.as, align 1, !tbaa !60, !alias.scope !241, !noalias !238
  %i.at = getelementptr i8, ptr %next.gep, i64 32
  %i.au = getelementptr i8, ptr %next.gep, i64 64
  %i.av = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !60, !alias.scope !238, !noalias !241
  store <32 x i8> %wide.load24, ptr %i.at, align 1, !tbaa !60, !alias.scope !238, !noalias !241
  store <32 x i8> %wide.load25, ptr %i.au, align 1, !tbaa !60, !alias.scope !238, !noalias !241
  store <32 x i8> %wide.load26, ptr %i.av, align 1, !tbaa !60, !alias.scope !238, !noalias !241
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !179

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %i.e, -8                     ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aj, i64 %n.vec29 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.b, i64 %n.vec29
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %next.gep31 = getelementptr i8, ptr %i.aj, i64 %index30
  %next.gep32 = getelementptr i8, ptr %i.b, i64 %index30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %wide.load33 = load <8 x i8>, ptr %next.gep32, align 1, !tbaa !60, !alias.scope !241, !noalias !238
  store <8 x i8> %wide.load33, ptr %next.gep31, align 1, !tbaa !60, !alias.scope !238, !noalias !241
  %index.next34 = add nuw i64 %index30, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next34, %n.vec29
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !244

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %i.e, %n.vec29
  br i1 %cmp.n35, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.aj, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.i.i.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.i.i.i.ph78 = ptrtoint ptr %.0911.i.i.i.i.ph to i64 ; 2 uses
  %i.ba = sub i64 %i.c, %.0911.i.i.i.i.ph78
  %xtraiter = and i64 %i.ba, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.012.i.i.i.i.prol = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.prol ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.prol ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.bb = load i8, ptr %.0911.i.i.i.i.prol, align 1, !tbaa !60, !alias.scope !241, !noalias !238
  store i8 %i.bb, ptr %.012.i.i.i.i.prol, align 1, !tbaa !60, !alias.scope !238, !noalias !241
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.prol, i64 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !245

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa77.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.prol ]
  %.012.i.i.i.i.unr = phi ptr [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.prol ]
  %.0911.i.i.i.i.unr = phi ptr [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.i.i.prol ]
  %i.be = sub i64 %.0911.i.i.i.i.ph78, %i.c
  %i.bf = icmp ugt i64 %i.be, -8
  br i1 %i.bf, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.bg = load i8, ptr %.0911.i.i.i.i, align 1, !tbaa !60, !alias.scope !241, !noalias !238
  store i8 %i.bg, ptr %.012.i.i.i.i, align 1, !tbaa !60, !alias.scope !238, !noalias !241
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !60, !alias.scope !248, !noalias !246
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !60, !alias.scope !246, !noalias !248
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !60, !alias.scope !252, !noalias !250
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !60, !alias.scope !250, !noalias !252
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 3
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !60, !alias.scope !256, !noalias !254
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !60, !alias.scope !254, !noalias !256
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.bs = load i8, ptr %i.bq, align 1, !tbaa !60, !alias.scope !260, !noalias !258
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !60, !alias.scope !258, !noalias !260
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 5
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !60, !alias.scope !264, !noalias !262
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !60, !alias.scope !262, !noalias !264
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 6
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !60, !alias.scope !268, !noalias !266
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !60, !alias.scope !266, !noalias !268
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 7
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.cb = load i8, ptr %i.bz, align 1, !tbaa !60, !alias.scope !272, !noalias !270
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !60, !alias.scope !270, !noalias !272
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.7 = icmp eq ptr %i.cc, %1
  br i1 %.not.i.i.i.i.7, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !274

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aj, %_ZNKSt6vectorIcN5folly19reentrant_allocatorIcEEE12_M_check_lenEmPKc.exit.i ], [ %i.ax, %vec.epilog.middle.block ], [ %i.ao, %middle.block ], [ %.lcssa77.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.cd, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 1 ; 6 uses
  %.not10.i.i.i16.i = icmp eq ptr %1, %i.g
  br i1 %.not10.i.i.i16.i, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i, label %vector.memcheck38

vector.memcheck38:                                ; preds = %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i
  %.0.lcssa.i.i.i.i39 = ptrtoaddr ptr %.0.lcssa.i.i.i.i to i64
  %3 = sub i64 %i.ac, %i.c                        ; 7 uses
  %min.iters.check41 = icmp ult i64 %3, 8
  %i.cf = sub i64 %.0.lcssa.i.i.i.i39, %i.c
  %diff.check40 = icmp ult i64 %i.cf, 127
  %or.cond77 = select i1 %min.iters.check41, i1 true, i1 %diff.check40
  br i1 %or.cond77, label %.lr.ph.i.i.i17.i.preheader, label %vector.main.loop.iter.check42

vector.main.loop.iter.check42:                    ; preds = %vector.memcheck38
  %min.iters.check43 = icmp ult i64 %3, 128
  br i1 %min.iters.check43, label %vec.epilog.ph64, label %vector.ph44

vector.ph44:                                      ; preds = %vector.main.loop.iter.check42
  %n.mod.vf45 = and i64 %3, 120
  %n.vec46 = and i64 %3, -128                     ; 5 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 %n.vec46 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.ab, i64 %n.vec46
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph44
  %index48 = phi i64 [ 0, %vector.ph44 ], [ %index.next55, %vector.body47 ] ; 3 uses
  %next.gep49 = getelementptr i8, ptr %i.ce, i64 %index48 ; 4 uses
  %next.gep50 = getelementptr i8, ptr %i.ab, i64 %index48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.ci = getelementptr i8, ptr %next.gep50, i64 32
  %i.cj = getelementptr i8, ptr %next.gep50, i64 64
  %i.ck = getelementptr i8, ptr %next.gep50, i64 96
  %wide.load51 = load <32 x i8>, ptr %next.gep50, align 1, !tbaa !60, !alias.scope !278, !noalias !275
  %wide.load52 = load <32 x i8>, ptr %i.ci, align 1, !tbaa !60, !alias.scope !278, !noalias !275
  %wide.load53 = load <32 x i8>, ptr %i.cj, align 1, !tbaa !60, !alias.scope !278, !noalias !275
  %wide.load54 = load <32 x i8>, ptr %i.ck, align 1, !tbaa !60, !alias.scope !278, !noalias !275
  %i.cl = getelementptr i8, ptr %next.gep49, i64 32
  %i.cm = getelementptr i8, ptr %next.gep49, i64 64
  %i.cn = getelementptr i8, ptr %next.gep49, i64 96
  store <32 x i8> %wide.load51, ptr %next.gep49, align 1, !tbaa !60, !alias.scope !275, !noalias !278
  store <32 x i8> %wide.load52, ptr %i.cl, align 1, !tbaa !60, !alias.scope !275, !noalias !278
  store <32 x i8> %wide.load53, ptr %i.cm, align 1, !tbaa !60, !alias.scope !275, !noalias !278
  store <32 x i8> %wide.load54, ptr %i.cn, align 1, !tbaa !60, !alias.scope !275, !noalias !278
  %index.next55 = add nuw i64 %index48, 128       ; 2 uses
  %i.co = icmp eq i64 %index.next55, %n.vec46
  br i1 %i.co, label %middle.block56, label %vector.body47, !llvm.loop !280

middle.block56:                                   ; preds = %vector.body47
  %cmp.n57 = icmp eq i64 %3, %n.vec46
  br i1 %cmp.n57, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i, label %vec.epilog.iter.check62

vec.epilog.iter.check62:                          ; preds = %middle.block56
  %min.epilog.iters.check63 = icmp eq i64 %n.mod.vf45, 0
  br i1 %min.epilog.iters.check63, label %.lr.ph.i.i.i17.i.preheader, label %vec.epilog.ph64, !prof !179

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check42, %vec.epilog.iter.check62
  %vec.epilog.resume.val58 = phi i64 [ %n.vec46, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check42 ]
  %n.vec66 = and i64 %3, -8                       ; 4 uses
  %i.cp = getelementptr i8, ptr %i.ce, i64 %n.vec66 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ab, i64 %n.vec66
  br label %vec.epilog.vector.body67

vec.epilog.vector.body67:                         ; preds = %vec.epilog.vector.body67, %vec.epilog.ph64
  %index68 = phi i64 [ %vec.epilog.resume.val58, %vec.epilog.ph64 ], [ %index.next72, %vec.epilog.vector.body67 ] ; 3 uses
  %next.gep69 = getelementptr i8, ptr %i.ce, i64 %index68
  %next.gep70 = getelementptr i8, ptr %i.ab, i64 %index68
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %wide.load71 = load <8 x i8>, ptr %next.gep70, align 1, !tbaa !60, !alias.scope !278, !noalias !275
  store <8 x i8> %wide.load71, ptr %next.gep69, align 1, !tbaa !60, !alias.scope !275, !noalias !278
  %index.next72 = add nuw i64 %index68, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next72, %n.vec66
  br i1 %i.cr, label %vec.epilog.middle.block73, label %vec.epilog.vector.body67, !llvm.loop !281

vec.epilog.middle.block73:                        ; preds = %vec.epilog.vector.body67
  %cmp.n74 = icmp eq i64 %3, %n.vec66
  br i1 %cmp.n74, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i.preheader

.lr.ph.i.i.i17.i.preheader:                       ; preds = %vector.memcheck38, %vec.epilog.iter.check62, %vec.epilog.middle.block73
  %.012.i.i.i18.i.ph = phi ptr [ %i.ce, %vector.memcheck38 ], [ %i.cg, %vec.epilog.iter.check62 ], [ %i.cp, %vec.epilog.middle.block73 ] ; 2 uses
  %.0911.i.i.i19.i.ph = phi ptr [ %i.ab, %vector.memcheck38 ], [ %i.ch, %vec.epilog.iter.check62 ], [ %i.cq, %vec.epilog.middle.block73 ] ; 3 uses
  %.0911.i.i.i19.i.ph79 = ptrtoint ptr %.0911.i.i.i19.i.ph to i64 ; 2 uses
  %i.cs = sub i64 %i.ac, %.0911.i.i.i19.i.ph79
  %xtraiter80 = and i64 %i.cs, 7                  ; 2 uses
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph.i.i.i17.i.prol.loopexit, label %.lr.ph.i.i.i17.i.prol

.lr.ph.i.i.i17.i.prol:                            ; preds = %.lr.ph.i.i.i17.i.preheader, %.lr.ph.i.i.i17.i.prol
  %.012.i.i.i18.i.prol = phi ptr [ %i.cv, %.lr.ph.i.i.i17.i.prol ], [ %.012.i.i.i18.i.ph, %.lr.ph.i.i.i17.i.preheader ] ; 2 uses
  %.0911.i.i.i19.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i17.i.prol ], [ %.0911.i.i.i19.i.ph, %.lr.ph.i.i.i17.i.preheader ] ; 2 uses
  %prol.iter82 = phi i64 [ %prol.iter82.next, %.lr.ph.i.i.i17.i.prol ], [ 0, %.lr.ph.i.i.i17.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.ct = load i8, ptr %.0911.i.i.i19.i.prol, align 1, !tbaa !60, !alias.scope !278, !noalias !275
  store i8 %i.ct, ptr %.012.i.i.i18.i.prol, align 1, !tbaa !60, !alias.scope !275, !noalias !278
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i.prol, i64 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i.prol, i64 1 ; 3 uses
  %prol.iter82.next = add i64 %prol.iter82, 1     ; 2 uses
  %prol.iter82.cmp.not = icmp eq i64 %prol.iter82.next, %xtraiter80
  br i1 %prol.iter82.cmp.not, label %.lr.ph.i.i.i17.i.prol.loopexit, label %.lr.ph.i.i.i17.i.prol, !llvm.loop !282

.lr.ph.i.i.i17.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i17.i.prol, %.lr.ph.i.i.i17.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i17.i.preheader ], [ %i.cv, %.lr.ph.i.i.i17.i.prol ]
  %.012.i.i.i18.i.unr = phi ptr [ %.012.i.i.i18.i.ph, %.lr.ph.i.i.i17.i.preheader ], [ %i.cv, %.lr.ph.i.i.i17.i.prol ]
  %.0911.i.i.i19.i.unr = phi ptr [ %.0911.i.i.i19.i.ph, %.lr.ph.i.i.i17.i.preheader ], [ %i.cu, %.lr.ph.i.i.i17.i.prol ]
  %i.cw = sub i64 %.0911.i.i.i19.i.ph79, %i.ac
  %i.cx = icmp ugt i64 %i.cw, -8
  br i1 %i.cx, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i.i.i17.i.prol.loopexit, %.lr.ph.i.i.i17.i
  %.012.i.i.i18.i = phi ptr [ %i.dv, %.lr.ph.i.i.i17.i ], [ %.012.i.i.i18.i.unr, %.lr.ph.i.i.i17.i.prol.loopexit ] ; 9 uses
  %.0911.i.i.i19.i = phi ptr [ %i.du, %.lr.ph.i.i.i17.i ], [ %.0911.i.i.i19.i.unr, %.lr.ph.i.i.i17.i.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.cy = load i8, ptr %.0911.i.i.i19.i, align 1, !tbaa !60, !alias.scope !278, !noalias !275
  store i8 %i.cy, ptr %.012.i.i.i18.i, align 1, !tbaa !60, !alias.scope !275, !noalias !278
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 1
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !60, !alias.scope !285, !noalias !283
  store i8 %i.db, ptr %i.da, align 1, !tbaa !60, !alias.scope !283, !noalias !285
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !60, !alias.scope !289, !noalias !287
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !60, !alias.scope !287, !noalias !289
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 3
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !60, !alias.scope !293, !noalias !291
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !60, !alias.scope !291, !noalias !293
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !60, !alias.scope !297, !noalias !295
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !60, !alias.scope !295, !noalias !297
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 5
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !60, !alias.scope !301, !noalias !299
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !60, !alias.scope !299, !noalias !301
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 6
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !60, !alias.scope !305, !noalias !303
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !60, !alias.scope !303, !noalias !305
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 7
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !60, !alias.scope !309, !noalias !307
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !60, !alias.scope !307, !noalias !309
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i20.i.7 = icmp eq ptr %i.du, %i.g
  br i1 %.not.i.i.i20.i.7, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i, !llvm.loop !311

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i17.i.prol.loopexit, %.lr.ph.i.i.i17.i, %middle.block56, %vec.epilog.middle.block73, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i
  %.0.lcssa.i.i.i21.i = phi ptr [ %i.ce, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i ], [ %i.cp, %vec.epilog.middle.block73 ], [ %i.cg, %middle.block56 ], [ %.lcssa.unr, %.lr.ph.i.i.i17.i.prol.loopexit ], [ %i.dv, %.lr.ph.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.b, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i
  %i.dw = load ptr, ptr %i.h, align 8, !tbaa !212
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.d
  tail call void @_ZN5folly6detail24reentrant_allocator_base10deallocateEPvm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, i64 noundef %i.dy) #21
  br label %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit

_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit: ; preds = %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i, %bb.j
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !25
  store ptr %.0.lcssa.i.i.i21.i, ptr %i.f, align 8, !tbaa !28
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store ptr %i.dz, ptr %i.h, align 8, !tbaa !212
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEOT_.exit, %_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.e
  ret ptr %i.eb
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
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNR5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEE5valueEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9intrusive7bstbaseINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvLb1EmLNS0_10algo_typesE6EvED2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.e
  %.01115.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %bb.e ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 3 uses
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not13.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  store ptr %i.i, ptr %i.f, align 8, !tbaa !64
  store ptr %.01115.i.i.i.i.i.i, ptr %i.h, align 8, !tbaa !65
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01115.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive7bstbaseINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvLb1EmLNS0_10algo_typesE6EvED2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !66

_ZN5boost9intrusive7bstbaseINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvLb1EmLNS0_10algo_typesE6EvED2Ev.exit.i.i.i: ; preds = %bb.e, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = invoke noundef ptr @_ZNSt14_Fwd_list_baseIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19reentrant_allocatorIS3_EEE14_M_erase_afterEPSt19_Fwd_list_node_baseS8_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull %i.m, ptr noundef null)
          to label %_ZN5folly10symbolizer18SignalSafeElfCache5StateD2Ev.exit.i.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZN5boost9intrusive7bstbaseINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvLb1EmLNS0_10algo_typesE6EvED2Ev.exit.i.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #22
  unreachable

_ZN5folly10symbolizer18SignalSafeElfCache5StateD2Ev.exit.i.i: ; preds = %_ZN5boost9intrusive7bstbaseINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvLb1EmLNS0_10algo_typesE6EvED2Ev.exit.i.i.i
  tail call void @_ZN5folly6detail24reentrant_allocator_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #21
  tail call void @_ZN5folly6detail24reentrant_allocator_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #21
  br label %_ZNR5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEE5valueEv.exit

_ZNR5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEE5valueEv.exit: ; preds = %_ZN5folly10symbolizer18SignalSafeElfCache5StateD2Ev.exit.i.i, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 16, ptr %2, align 8, !tbaa !312
  store i64 12, ptr %i.q, align 8, !tbaa !314
  call void @_ZN5folly6detail24reentrant_allocator_baseC2ERKNS_27reentrant_allocator_optionsE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN5folly6detail24reentrant_allocator_baseC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(72) %0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN5folly6detail24reentrant_allocator_baseC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  call void @_ZN5folly6detail24reentrant_allocator_baseC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.s, align 8, !tbaa !32
  call void @_ZN5folly6detail24reentrant_allocator_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @_ZN5folly6detail24reentrant_allocator_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
end_hunk_0
