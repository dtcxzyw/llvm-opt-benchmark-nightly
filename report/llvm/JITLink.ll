Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/JITLink?download=true
inline.NumInlined: 3592
inline.NumDeleted: 1662
begin_hunk_0_@_ZN4llvm7jitlink9LinkGraphD2Ev:bb.a

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ga, align 8, !tbaa !114
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !115
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !117
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  tail call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #26, !inline_history !3
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !117
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  tail call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #26, !inline_history !3
  br label %_ZNSt12__shared_ptrIN4llvm3orc16SymbolStringPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i23 = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i23, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.gd, %bb.u ], [ %i.gn, %bb.v ]
  %i.go = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.go, label %bb.w, label %_ZNSt12__shared_ptrIN4llvm3orc16SymbolStringPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !118

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #26
  br label %_ZNSt12__shared_ptrIN4llvm3orc16SymbolStringPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4llvm3orc16SymbolStringPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4llvm6TripleD2Ev.exit, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !27 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN4llvm3orc16SymbolStringPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !41
  %i.gu = add i64 %i.gt, 1
  tail call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4llvm3orc16SymbolStringPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #26
  ret void

bb.x:                                             ; preds = %.lr.ph64, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_3orc24NonOwningSymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EELb0EEENS5_9LinkGraph30GetExternalSymbolMapEntryValueES7_EESD_St20forward_iterator_tagS7_lPS7_S7_EppEv.exit
  %.pn139 = phi i64 [ %i.az, %.lr.ph64 ], [ %i.hw, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_3orc24NonOwningSymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EELb0EEENS5_9LinkGraph30GetExternalSymbolMapEntryValueES7_EESD_St20forward_iterator_tagS7_lPS7_S7_EppEv.exit ] ; 2 uses
  %.sroa.034.063 = getelementptr i8, ptr %i.ac, i64 %.pn139
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.034.063, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !121
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !90 ; 2 uses
  %i.gy = ptrtoint ptr %i.gx to i64
  %notsub.i.i.i.i24 = add i64 %i.gy, -1
  %i.gz = icmp ult i64 %notsub.i.i.i.i24, -32
  br i1 %i.gz, label %bb.y, label %_ZN4llvm7jitlink6SymbolD2Ev.exit25

bb.y:                                             ; preds = %bb.x
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hb = atomicrmw sub ptr %i.ha, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm7jitlink6SymbolD2Ev.exit25

_ZN4llvm7jitlink6SymbolD2Ev.exit25:               ; preds = %bb.x, %bb.y
  %i.hc = add i64 %.pn139, 16
  %i.hd = ashr exact i64 %i.hc, 4                 ; 3 uses
  %.not.i.i.i26 = icmp ult i64 %i.hd, %i.ak
  br i1 %.not.i.i.i26, label %bb.z, label %._crit_edge65.loopexit

bb.z:                                             ; preds = %_ZN4llvm7jitlink6SymbolD2Ev.exit25
  %i.he = lshr i64 %i.hd, 5                       ; 3 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !70
  %i.hh = trunc nuw i64 %i.hd to i32
  %i.hi = and i32 %i.hh, 31
  %i.hj = shl nsw i32 -1, %i.hi
  %i.hk = and i32 %i.hg, %i.hj                    ; 2 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %.lr.ph.i.i.i32.preheader, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_3orc24NonOwningSymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EELb0EEENS5_9LinkGraph30GetExternalSymbolMapEntryValueES7_EESD_St20forward_iterator_tagS7_lPS7_S7_EppEv.exit

.lr.ph.i.i.i32.preheader:                         ; preds = %bb.z
  %i.hm = add nuw nsw i64 %i.he, 1                ; 2 uses
  %i.hn = icmp eq i64 %i.hm, %i.bb
  br i1 %i.hn, label %._crit_edge65.loopexit, label %.lr.ph155

.lr.ph.i.i.i32:                                   ; preds = %.lr.ph155
  %i.ho = add i64 %i.hq, 1                        ; 2 uses
  %i.hp = icmp eq i64 %i.ho, %i.bb
  br i1 %i.hp, label %._crit_edge65.loopexit, label %.lr.ph155, !llvm.loop !2

.lr.ph155:                                        ; preds = %.lr.ph.i.i.i32.preheader, %.lr.ph.i.i.i32
  %i.hq = phi i64 [ %i.ho, %.lr.ph.i.i.i32 ], [ %i.hm, %.lr.ph.i.i.i32.preheader ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !70 ; 2 uses
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph.i.i.i32, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_3orc24NonOwningSymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EELb0EEENS5_9LinkGraph30GetExternalSymbolMapEntryValueES7_EESD_St20forward_iterator_tagS7_lPS7_S7_EppEv.exit, !llvm.loop !2

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_3orc24NonOwningSymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EELb0EEENS5_9LinkGraph30GetExternalSymbolMapEntryValueES7_EESD_St20forward_iterator_tagS7_lPS7_S7_EppEv.exit: ; preds = %.lr.ph155, %bb.z
  %.012.lcssa.i.i.i29 = phi i64 [ %i.he, %bb.z ], [ %i.hq, %.lr.ph155 ]
  %.0.lcssa.i.i.i30 = phi i32 [ %i.hk, %bb.z ], [ %i.hs, %.lr.ph155 ]
  %i.hu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i30, i1 true)
  %.idx.i.i.i31 = shl i64 %.012.lcssa.i.i.i29, 9
  %i.hv = shl nuw nsw i32 %i.hu, 4
  %.idx138 = zext nneg i32 %i.hv to i64
  %i.hw = or disjoint i64 %.idx.i.i.i31, %.idx138 ; 2 uses
  %.not51 = icmp eq i64 %i.hw, %.idx137
  br i1 %.not51, label %._crit_edge65.loopexit, label %bb.x
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not6.i = icmp eq i32 %i.d, 0
  br i1 %.not6.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.h = ptrtoint ptr %.07.i to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %sum.shift.i = lshr i64 %i.j, 10
  %i.k = trunc i64 %sum.shift.i to i32
  %i.l = and i32 %i.k, 33554431
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.l, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.m to i64
  %i.n = shl nuw nsw i64 4096, %.sroa.speculated.i.i
  %i.o = load ptr, ptr %.07.i, align 8, !tbaa !125
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.o, i64 noundef %i.n, i64 noundef 16) #26
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.f
  br i1 %.not.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit, label %.lr.ph.i, !llvm.loop !336

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !123  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !124  ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not10.i = icmp eq i32 %i.t, 0
  br i1 %.not10.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit, label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit, %.lr.ph.i1
  %.011.i = phi ptr [ %i.z, %.lr.ph.i1 ], [ %i.r, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit ] ; 3 uses
  %i.w = load ptr, ptr %.011.i, align 8, !tbaa !338
  %i.x = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !339
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.w, i64 noundef %i.y, i64 noundef 16) #26
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i, i64 16 ; 2 uses
  %.not.i2 = icmp eq ptr %i.z, %i.v
  br i1 %.not.i2, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit, label %.lr.ph.i1

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit: ; preds = %.lr.ph.i1
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !123
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit
  %i.aa = phi ptr [ %.pre, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit ], [ %i.r, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit
  tail call void @free(ptr noundef %i.aa) #26
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit, %bb.b
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !123 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #26
  br label %_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit

_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.46") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(312) %1, ptr nofree noundef align 8 captures(none) dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.5.i.i26.i.i.i.i.i = alloca <{ [4 x i8], i64, i8, [7 x i8] }>, align 4 ; 4 uses
  %4 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %.sroa.5.i.i12.i.i.i.i.i = alloca <{ [4 x i8], i64, i8, [7 x i8] }>, align 4 ; 4 uses
  %.sroa.5.i.i.i.i.i.i.i = alloca <{ [4 x i8], i64, i8, [7 x i8] }>, align 4 ; 4 uses
  %5 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %6 = alloca %"class.std::optional.51", align 8  ; 10 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !128    ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j
  %.not186 = icmp eq i64 %i.k, 8
  br i1 %.not186, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !80
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.l = phi ptr [ %i.b, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa184 = phi ptr [ %i.h, %bb.a ], [ %i.aq, %._crit_edge.loopexit ]
  %i.m = getelementptr inbounds i8, ptr %.lcssa184, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80   ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 8, !tbaa !42
  %.sroa.0.0.copyload.i75 = load i64, ptr %i.l, align 8, !tbaa !42
  %i.o = sub i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i75 ; 2 uses
  %i.p = sub i64 %i.f, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %i.p, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, -5
  store i64 %i.v, ptr %i.t, align 8
  %i.w = load ptr, ptr %2, align 8, !tbaa !131    ; 3 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %.not170189 = icmp eq ptr %i.w, %i.x
  br i1 %.not170189, label %._crit_edge193, label %.lr.ph192

.lr.ph192:                                        ; preds = %._crit_edge
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %.lobit = and i64 %i.aa, 4
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.ab = phi ptr [ %i.ar, %.lr.ph ], [ %i.a, %bb.a ] ; 3 uses
  %.064187 = phi i64 [ %i.ag, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.064187
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !80 ; 4 uses
  %.sroa.0.0.copyload.i76 = load i64, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !80
  %.sroa.0.0.copyload.i77 = load i64, ptr %i.ae, align 8, !tbaa !42
  %i.af = sub i64 %.sroa.0.0.copyload.i76, %.sroa.0.0.copyload.i77
  %i.ag = add i64 %.064187, 1                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !80
  %.sroa.0.0.copyload.i78 = load i64, ptr %i.ai, align 8, !tbaa !42
  %i.aj = sub i64 %.sroa.0.0.copyload.i78, %.sroa.0.0.copyload.i76
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %i.aj, ptr %i.am, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, -5
  store i64 %i.ap, ptr %i.an, align 8
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !130 ; 2 uses
  %i.ar = load ptr, ptr %2, align 8, !tbaa !131   ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = add nsw i64 %i.av, -2
  %.not = icmp eq i64 %.064187, %i.aw
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !340

._crit_edge193:                                   ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 4 uses
  store i8 0, ptr %i.ax, align 8, !tbaa !366
  %.not66 = icmp eq ptr %3, null                  ; 6 uses
  %spec.store.select = select i1 %.not66, ptr %6, ptr %3 ; 7 uses
  %.sroa.gep112 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %spec.store.select.sroa.sel = select i1 %.not66, ptr %i.ax, ptr %.sroa.gep112 ; 2 uses
  %i.ay = load i8, ptr %spec.store.select.sroa.sel, align 8, !tbaa !366, !range !367, !noundef !132
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %"_ZN4llvm4sortIRNS_11SmallVectorIPNS_7jitlink6SymbolELj8EEEZNS2_9LinkGraph14splitBlockImplESt6vectorIPNS2_5BlockESaISA_EEPSt8optionalIS5_EE3$_0EEvOT_T0_.exit", label %_ZN4llvm11SmallVectorIPNS_7jitlink6SymbolELj8EED2Ev.exit

bb.b:                                             ; preds = %.lr.ph192, %bb.b
  %.sroa.0159.0190 = phi ptr [ %i.w, %.lr.ph192 ], [ %i.bf, %bb.b ] ; 2 uses
  %i.ba = load ptr, ptr %.sroa.0159.0190, align 8, !tbaa !80
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = and i64 %i.bc, -5
  %i.be = or disjoint i64 %i.bd, %.lobit
  store i64 %i.be, ptr %i.bb, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0159.0190, i64 8 ; 2 uses
  %.not170 = icmp eq ptr %i.bf, %i.x
  br i1 %.not170, label %._crit_edge193, label %bb.b

_ZN4llvm11SmallVectorIPNS_7jitlink6SymbolELj8EED2Ev.exit: ; preds = %._crit_edge193
  %spec.store.select.sroa.sel118.v.sroa.sel.v.sroa.sel.v = select i1 %.not66, ptr %6, ptr %3
  %spec.store.select.sroa.sel118.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel118.v.sroa.sel.v.sroa.sel.v, i64 16
  store ptr %spec.store.select.sroa.sel118.v.sroa.sel.v.sroa.sel, ptr %spec.store.select, align 8, !tbaa !123
  %spec.store.select.sroa.sel121.v.sroa.sel.v.sroa.sel.v = select i1 %.not66, ptr %6, ptr %3
  %spec.store.select.sroa.sel121.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %spec.store.select.sroa.sel121.v.sroa.sel.v.sroa.sel.v, i64 8 ; 5 uses
  store i32 0, ptr %spec.store.select.sroa.sel121.v.sroa.sel.v.sroa.sel, align 8, !tbaa !124
  %spec.store.select.sroa.sel124.v.sroa.sel.v.sroa.sel.v = select i1 %.not66, ptr %6, ptr %3
  %spec.store.select.sroa.sel124.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel124.v.sroa.sel.v.sroa.sel.v, i64 12 ; 2 uses
  store i32 8, ptr %spec.store.select.sroa.sel124.v.sroa.sel.v.sroa.sel, align 4, !tbaa !133
  store i8 1, ptr %spec.store.select.sroa.sel, align 8, !tbaa !366
  %i.bg = load ptr, ptr %2, align 8, !tbaa !131
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !80
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !56 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !85, !noalias !368
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !86, !noalias !368 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 76
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !87, !noalias !368 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !88, !noalias !368
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = zext i32 %i.bp to i64                   ; 4 uses
  %.idx327 = shl nuw nsw i64 %i.bt, 3             ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.bp, 0
  %or.cond.i.i = select i1 %i.bs, i1 true, i1 %.not.i.not.i.i.i.i
  br i1 %or.cond.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorIPNS_7jitlink6SymbolELj8EEEZNS2_9LinkGraph14splitBlockImplESt6vectorIPNS2_5BlockESaISA_EEPSt8optionalIS5_EE3$_0EEvOT_T0_.exit", label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_7jitlink6SymbolELj8EED2Ev.exit
  %i.bu = add nuw nsw i64 %i.bt, 31
  %i.bv = lshr i64 %i.bu, 5                       ; 2 uses
  %i.bw = load i32, ptr %i.bn, align 4, !tbaa !70, !noalias !369 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN4llvm7jitlink7Section7symbolsEv.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.by = icmp eq i64 %i.bv, 1
  br i1 %i.by, label %"_ZN4llvm4sortIRNS_11SmallVectorIPNS_7jitlink6SymbolELj8EEEZNS2_9LinkGraph14splitBlockImplESt6vectorIPNS2_5BlockESaISA_EEPSt8optionalIS5_EE3$_0EEvOT_T0_.exit", label %.lr.ph353

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph353
  %i.bz = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.bv
  br i1 %i.ca, label %"_ZN4llvm4sortIRNS_11SmallVectorIPNS_7jitlink6SymbolELj8EEEZNS2_9LinkGraph14splitBlockImplESt6vectorIPNS2_5BlockESaISA_EEPSt8optionalIS5_EE3$_0EEvOT_T0_.exit", label %.lr.ph353, !llvm.loop !1

.lr.ph353:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.cb = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !70, !noalias !369 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i, !llvm.loop !1

._crit_edge.i.loopexit.i.i.i.i:                   ; preds = %.lr.ph353
  %i.cf = shl i64 %i.cb, 8
  br label %_ZN4llvm7jitlink7Section7symbolsEv.exit

_ZN4llvm7jitlink7Section7symbolsEv.exit:          ; preds = %bb.c, %._crit_edge.i.loopexit.i.i.i.i
  %.012.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.cf, %._crit_edge.i.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.bw, %bb.c ], [ %i.cd, %._crit_edge.i.loopexit.i.i.i.i ]
  %i.cg = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.ch = shl nuw nsw i32 %i.cg, 3
  %.idx = zext nneg i32 %i.ch to i64
  %i.ci = or disjoint i64 %.012.lcssa.i.i.i.i.i, %.idx ; 2 uses
  %.not171194 = icmp eq i64 %i.ci, %.idx327
  br i1 %.not171194, label %"_ZN4llvm4sortIRNS_11SmallVectorIPNS_7jitlink6SymbolELj8EEEZNS2_9LinkGraph14splitBlockImplESt6vectorIPNS2_5BlockESaISA_EEPSt8optionalIS5_EE3$_0EEvOT_T0_.exit", label %.lr.ph196

.lr.ph196:                                        ; preds = %_ZN4llvm7jitlink7Section7symbolsEv.exit
  %i.cj = add nuw nsw i64 %i.bt, 31
  %i.ck = lshr i64 %i.cj, 5                       ; 2 uses
  br label %bb.o

._crit_edge197:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7jitlink6SymbolELb1EE9push_backES3_.exit, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.val.pre = load ptr, ptr %spec.store.select, align 8, !tbaa !123 ; 17 uses
  %.val72.pre = load i32, ptr %spec.store.select.sroa.sel121.v.sroa.sel.v.sroa.sel, align 8, !tbaa !124 ; 4 uses
  %i.cl = zext i32 %.val72.pre to i64             ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.cl, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.pre, i64 %.idx.i ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.val72.pre, 0
  br i1 %.not.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorIPNS_7jitlink6SymbolELj8EEEZNS2_9LinkGraph14splitBlockImplESt6vectorIPNS2_5BlockESaISA_EEPSt8optionalIS5_EE3$_0EEvOT_T0_.exit", label %bb.d

bb.d:                                             ; preds = %._crit_edge197
  %i.cn = ptrtoint ptr %.val.pre to i64
  %i.co = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cp = shl nuw nsw i64 %i.co, 1
  %i.cq = xor i64 %i.cp, 126
  call fastcc void @"_ZSt16__introsort_loopIPPN4llvm7jitlink6SymbolElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_T0_T1_"(ptr noundef %.val.pre, ptr noundef nonnull %i.cm, i64 noundef %i.cq)
  %i.cr = icmp ugt i32 %.val72.pre, 16
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val.pre, i64 8 ; 2 uses
  br i1 %i.cr, label %.preheader.i.i.i, label %bb.i

.preheader.i.i.i:                                 ; preds = %bb.d, %_ZSt13move_backwardIPPN4llvm7jitlink6SymbolES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i
  %.022.i.idx.i.i.i.i.i = phi i64 [ %.022.i.add.i.i.i.i.i, %_ZSt13move_backwardIPPN4llvm7jitlink6SymbolES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i ], [ 8, %bb.d ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEE:bb.a

.preheader173:                                    ; preds = %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit"
  %i.hr = load ptr, ptr %spec.store.select, align 8, !tbaa !123
  %i.hs = zext i32 %i.iz to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hs
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !89 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !62
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.hx, align 8, !tbaa !42 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8            ; 2 uses
  %i.ia = and i64 %i.hz, 144115188075855871
  %i.ib = add i64 %i.ia, %.sroa.0.0.copyload.i.i
  %i.ic = load ptr, ptr %2, align 8, !tbaa !131   ; 2 uses
  %i.id = getelementptr [8 x i8], ptr %i.ic, i64 %.063199 ; 2 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !80
  %.sroa.0.0.copyload.i85 = load i64, ptr %i.if, align 8, !tbaa !42
  %i.ig = icmp ult i64 %i.ib, %.sroa.0.0.copyload.i85
  br i1 %i.ig, label %.lr.ph358, label %.critedge, !llvm.loop !352

.lr.ph358:                                        ; preds = %.preheader173.preheader, %.preheader173
  %i.ih = phi ptr [ %i.id, %.preheader173 ], [ %i.hn, %.preheader173.preheader ]
  %i.ii = phi i64 [ %i.hz, %.preheader173 ], [ %i.hj, %.preheader173.preheader ] ; 2 uses
  %i.ij = phi ptr [ %i.hy, %.preheader173 ], [ %i.hi, %.preheader173.preheader ]
  %.sroa.0.0.copyload.i.i357 = phi i64 [ %.sroa.0.0.copyload.i.i, %.preheader173 ], [ %.sroa.0.0.copyload.i.i355, %.preheader173.preheader ]
  %i.ik = phi ptr [ %i.hw, %.preheader173 ], [ %i.hg, %.preheader173.preheader ]
  %i.il = phi ptr [ %i.hv, %.preheader173 ], [ %i.hf, %.preheader173.preheader ]
  %i.im = load ptr, ptr %i.ih, align 8, !tbaa !80 ; 3 uses
  %i.in = add i64 %i.ii, %.sroa.0.0.copyload.i.i357
  %.sroa.0.0.copyload.i.i86 = load i64, ptr %i.im, align 8, !tbaa !42
  %i.io = sub i64 %i.in, %.sroa.0.0.copyload.i.i86
  %i.ip = and i64 %i.io, 144115188075855871       ; 2 uses
  %i.iq = and i64 %i.ii, -144115188075855872
  %i.ir = or disjoint i64 %i.ip, %i.iq
  store i64 %i.ir, ptr %i.ij, align 8
  store ptr %i.im, ptr %i.ik, align 8, !tbaa !62
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 24 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !63
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !38 ; 2 uses
  %i.iw = icmp ugt i64 %i.it, %i.iv
  br i1 %i.iw, label %bb.t, label %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit"

bb.t:                                             ; preds = %.lr.ph358
  %i.ix = sub i64 %i.iv, %i.ip
  store i64 %i.ix, ptr %i.is, align 8, !tbaa !63
  br label %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit"

"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit": ; preds = %.lr.ph358, %bb.t
  %i.iy = load i32, ptr %spec.store.select.sroa.sel136.v.sroa.sel.v.sroa.sel, align 8, !tbaa !124
  %i.iz = add i32 %i.iy, -1                       ; 5 uses
  store i32 %i.iz, ptr %spec.store.select.sroa.sel136.v.sroa.sel.v.sroa.sel, align 8, !tbaa !124
  %.not.i84 = icmp eq i32 %i.iz, 0
  br i1 %.not.i84, label %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit..critedge_crit_edge", label %.preheader173, !llvm.loop !352

"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit..critedge_crit_edge": ; preds = %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit"
  %.pre249 = load ptr, ptr %2, align 8, !tbaa !131
  br label %.critedge, !llvm.loop !352

.critedge:                                        ; preds = %.preheader173, %.preheader173.preheader, %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit..critedge_crit_edge"
  %i.ja = phi i32 [ 0, %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit..critedge_crit_edge" ], [ %i.gz, %.preheader173.preheader ], [ %i.iz, %.preheader173 ] ; 2 uses
  %i.jb = phi ptr [ %.pre249, %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit..critedge_crit_edge" ], [ %i.hm, %.preheader173.preheader ], [ %i.ic, %.preheader173 ]
  %i.jc = phi i32 [ 0, %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit..critedge_crit_edge" ], [ %i.ha, %.preheader173.preheader ], [ %i.iz, %.preheader173 ]
  %i.jd = add i64 %.063199, 1
  %i.je = load ptr, ptr %i.g, align 8, !tbaa !130
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jb to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = ashr exact i64 %i.jh, 3
  %i.jj = add nsw i64 %i.ji, -2
  %.not67 = icmp eq i64 %.063199, %i.jj
  br i1 %.not67, label %._crit_edge201, label %.lr.ph200, !llvm.loop !353

._crit_edge201:                                   ; preds = %.critedge, %.lr.ph200, %"_ZN4llvm4sortIRNS_11SmallVectorIPNS_7jitlink6SymbolELj8EEEZNS2_9LinkGraph14splitBlockImplESt6vectorIPNS2_5BlockESaISA_EEPSt8optionalIS5_EE3$_0EEvOT_T0_.exit"
  %i.jk = phi i32 [ %.pre250, %"_ZN4llvm4sortIRNS_11SmallVectorIPNS_7jitlink6SymbolELj8EEEZNS2_9LinkGraph14splitBlockImplESt6vectorIPNS2_5BlockESaISA_EEPSt8optionalIS5_EE3$_0EEvOT_T0_.exit" ], [ %i.ja, %.critedge ], [ %i.gz, %.lr.ph200 ] ; 2 uses
  %.not.i87203 = icmp eq i32 %i.jk, 0
  br i1 %.not.i87203, label %._crit_edge206, label %.lr.ph205

.lr.ph205:                                        ; preds = %._crit_edge201, %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit90"
  %i.jl = phi i32 [ %i.kk, %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit90" ], [ %i.jk, %._crit_edge201 ] ; 2 uses
  %i.jm = load ptr, ptr %spec.store.select, align 8, !tbaa !123
  %i.jn = zext i32 %i.jl to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jn
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 -8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !89 ; 3 uses
  %i.jr = add i32 %i.jl, -1
  store i32 %i.jr, ptr %spec.store.select.sroa.sel136.v.sroa.sel.v.sroa.sel, align 8, !tbaa !124
  %i.js = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !80 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !62
  %.sroa.0.0.copyload.i.i.i88 = load i64, ptr %i.jw, align 8, !tbaa !42
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 16 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8            ; 2 uses
  %i.jz = add i64 %i.jy, %.sroa.0.0.copyload.i.i.i88
  %.sroa.0.0.copyload.i.i89 = load i64, ptr %i.ju, align 8, !tbaa !42
  %i.ka = sub i64 %i.jz, %.sroa.0.0.copyload.i.i89
  %i.kb = and i64 %i.ka, 144115188075855871       ; 2 uses
  %i.kc = and i64 %i.jy, -144115188075855872
  %i.kd = or disjoint i64 %i.kb, %i.kc
  store i64 %i.kd, ptr %i.jx, align 8
  store ptr %i.ju, ptr %i.jv, align 8, !tbaa !62
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jq, i64 24 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !63
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !38 ; 2 uses
  %i.ki = icmp ugt i64 %i.kf, %i.kh
  br i1 %i.ki, label %bb.u, label %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit90"

bb.u:                                             ; preds = %.lr.ph205
  %i.kj = sub i64 %i.kh, %i.kb
  store i64 %i.kj, ptr %i.ke, align 8, !tbaa !63
  br label %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit90"

"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit90": ; preds = %.lr.ph205, %bb.u
  %i.kk = load i32, ptr %spec.store.select.sroa.sel136.v.sroa.sel.v.sroa.sel, align 8, !tbaa !124 ; 2 uses
  %.not.i87 = icmp eq i32 %i.kk, 0
  br i1 %.not.i87, label %._crit_edge206, label %.lr.ph205, !llvm.loop !354

._crit_edge206:                                   ; preds = %"_ZZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEEENK3$_1clERS9_RS3_.exit90", %._crit_edge201
  %i.kl = load i8, ptr %i.ax, align 8, !tbaa !366, !range !367, !noundef !132
  %i.km = trunc nuw i8 %i.kl to i1
  store i8 0, ptr %i.ax, align 8, !tbaa !366
  br i1 %i.km, label %bb.v, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIPNS0_7jitlink6SymbolELj8EEELb0ELb0EED2Ev.exit

bb.v:                                             ; preds = %._crit_edge206
  %i.kn = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIPNS0_7jitlink6SymbolELj8EEELb0ELb0EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.kn) #26
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIPNS0_7jitlink6SymbolELj8EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIPNS0_7jitlink6SymbolELj8EEELb0ELb0EED2Ev.exit: ; preds = %._crit_edge206, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.kq = load ptr, ptr %2, align 8, !tbaa !131
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !80 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 40 ; 3 uses
  %.val73 = load ptr, ptr %i.ks, align 8, !tbaa !135 ; 17 uses
  %i.kt = getelementptr i8, ptr %i.kr, i64 48     ; 4 uses
  %.val74 = load ptr, ptr %i.kt, align 8, !tbaa !135 ; 7 uses
  %.not.i.i.i.i91 = icmp eq ptr %.val73, %.val74
  br i1 %.not.i.i.i.i91, label %"_ZN4llvm4sortIRSt6vectorINS_7jitlink4EdgeESaIS3_EEZNS2_9LinkGraph14splitBlockImplES1_IPNS2_5BlockESaIS9_EEPSt8optionalINS_11SmallVectorIPNS2_6SymbolELj8EEEEE3$_2EEvOT_T0_.exit", label %bb.x

bb.x:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm11SmallVectorIPNS0_7jitlink6SymbolELj8EEELb0ELb0EED2Ev.exit
  %i.ku = ptrtoint ptr %.val74 to i64
  %i.kv = ptrtoint ptr %.val73 to i64             ; 2 uses
  %i.kw = sub i64 %i.ku, %i.kv                    ; 2 uses
  %i.kx = ashr exact i64 %i.kw, 5
  %i.ky = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.kx, i1 true)
  %i.kz = shl nuw nsw i64 %i.ky, 1
  %i.la = xor i64 %i.kz, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_T0_T1_"(ptr %.val73, ptr %.val74, i64 noundef %i.la)
  %i.lb = icmp sgt i64 %i.kw, 512
  br i1 %i.lb, label %.lr.ph.i.i.i.i.i.i92, label %.preheader.i27.i.i.i.i.i

.lr.ph.i.i.i.i.i.i92:                             ; preds = %bb.x
  %i.lc = getelementptr i8, ptr %.val73, i64 8
  %scevgep.i.i.i.i.i93 = getelementptr i8, ptr %.val73, i64 32
  br label %bb.y

bb.y:                                             ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i92
  %.sroa.0.019.i.idx.i.i.i.i.i = phi i64 [ 32, %.lr.ph.i.i.i.i.i.i92 ], [ %.sroa.0.019.i.add.i.i.i.i.i, %bb.ad ] ; 4 uses
  %.pn18.i.i.i.i.i.i = phi ptr [ %.val73, %.lr.ph.i.i.i.i.i.i92 ], [ %.sroa.0.019.i.ptr.i.i.i.i.i, %bb.ad ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val73, i64 %.sroa.0.019.i.idx.i.i.i.i.i ; 5 uses
  %i.ld = getelementptr i8, ptr %.pn18.i.i.i.i.i.i, i64 40
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.ld, align 8, !tbaa !69 ; 4 uses
  %.val1.i.i.i.i.i.i.i = load i32, ptr %i.lc, align 8, !tbaa !69
  %i.le = icmp ult i32 %.val.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i
  br i1 %i.le, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i.ptr.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !136
  %i.lf = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i.i.i, 32
  br i1 %i.lf, label %bb.aa, label %bb.ab, !prof !134

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i93, ptr noundef nonnull align 8 dereferenceable(1) %.val73, i64 %.sroa.0.019.i.idx.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.lg = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.lg, ptr noundef nonnull align 8 dereferenceable(25) %.val73, i64 25, i1 false), !tbaa.struct !136
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.val73, ptr noundef nonnull align 8 dereferenceable(25) %5, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %.sroa.03.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.019.i.ptr.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !137
  %i.lh = getelementptr i8, ptr %.pn18.i.i.i.i.i.i, i64 8
  %.val2.i11.i.i.i.i.i.i.i = load i32, ptr %i.lh, align 8, !tbaa !69
  %i.li = icmp ult i32 %.val.i.i.i.i.i.i.i, %.val2.i11.i.i.i.i.i.i.i
  br i1 %i.li, label %.lr.ph.i.i.i.i.i.i.i95, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i95:                           ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i.i95
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i95 ], [ %.sroa.0.019.i.ptr.i.i.i.i.i, %bb.ac ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.08.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.0.i.i.i.i.i.i.i, i64 25, i1 false), !tbaa.struct !136
  %i.lj = getelementptr i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 -56
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %i.lj, align 8, !tbaa !69
  %i.lk = icmp ult i32 %.val.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i
  br i1 %i.lk, label %.lr.ph.i.i.i.i.i.i.i95, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !355

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i95, %bb.ac
  %.sroa.08.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i.i.i, %bb.ac ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i95 ] ; 3 uses
  store ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i.i, i64 8
  store i32 %.val.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !tbaa !70
  %.sroa.5.0..sroa_idx7.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.0..sroa_idx7.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i.i.i.i.i.i, i64 13, i1 false), !tbaa.struct !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  br label %bb.ad

bb.ad:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i
  %.sroa.0.019.i.add.i.i.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i.i.i, 32 ; 2 uses
  %.not.i.i.i.i.i.i94 = icmp eq i64 %.sroa.0.019.i.add.i.i.i.i.i, 512
  br i1 %.not.i.i.i.i.i.i94, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_T0_.exit.i.i.i.i.i", label %bb.y, !llvm.loop !356

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_T0_.exit.i.i.i.i.i": ; preds = %bb.ad
  %i.ll = getelementptr inbounds nuw i8, ptr %.val73, i64 512 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.ll, %.val74
  br i1 %.not6.i.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorINS_7jitlink4EdgeESaIS3_EEZNS2_9LinkGraph14splitBlockImplES1_IPNS2_5BlockESaIS9_EEPSt8optionalINS_11SmallVectorIPNS2_6SymbolELj8EEEEE3$_2EEvOT_T0_.exit", label %.lr.ph.i13.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i:                             ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_T0_.exit.i.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i17.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.lq, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i17.i.i.i.i.i" ], [ %i.ll, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_T0_.exit.i.i.i.i.i" ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i.i.i.i)
  %.sroa.03.0.copyload.i.i14.i.i.i.i.i = load ptr, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !70 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.i12.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i15.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !137
  %i.lm = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 -24
  %.val2.i11.i.i16.i.i.i.i.i = load i32, ptr %i.lm, align 8, !tbaa !69
  %i.ln = icmp ult i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i, %.val2.i11.i.i16.i.i.i.i.i
  br i1 %i.ln, label %.lr.ph.i.i22.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i17.i.i.i.i.i"

.lr.ph.i.i22.i.i.i.i.i:                           ; preds = %.lr.ph.i13.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i
  %.sroa.08.012.i.i23.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i24.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i24.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.012.i.i23.i.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.08.012.i.i23.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.0.i.i24.i.i.i.i.i, i64 25, i1 false), !tbaa.struct !136
  %i.lo = getelementptr i8, ptr %.sroa.08.012.i.i23.i.i.i.i.i, i64 -56
  %.val2.i.i.i25.i.i.i.i.i = load i32, ptr %i.lo, align 8, !tbaa !69
  %i.lp = icmp ult i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i, %.val2.i.i.i25.i.i.i.i.i
  br i1 %i.lp, label %.lr.ph.i.i22.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i17.i.i.i.i.i", !llvm.loop !355

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i17.i.i.i.i.i": ; preds = %.lr.ph.i.i22.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i
  %.sroa.08.0.lcssa.i.i18.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i ], [ %.sroa.0.0.i.i24.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i ] ; 3 uses
  store ptr %.sroa.03.0.copyload.i.i14.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i18.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx5.i.i19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i18.i.i.i.i.i, i64 8
  store i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx5.i.i19.i.i.i.i.i, align 8, !tbaa !70
  %.sroa.5.0..sroa_idx7.i.i20.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i18.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.0..sroa_idx7.i.i20.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i12.i.i.i.i.i, i64 13, i1 false), !tbaa.struct !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i.i.i.i)
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i21.i.i.i.i.i = icmp eq ptr %i.lq, %.val74
  br i1 %.not.i21.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorINS_7jitlink4EdgeESaIS3_EEZNS2_9LinkGraph14splitBlockImplES1_IPNS2_5BlockESaIS9_EEPSt8optionalINS_11SmallVectorIPNS2_6SymbolELj8EEEEE3$_2EEvOT_T0_.exit", label %.lr.ph.i13.i.i.i.i.i, !llvm.loop !357

.preheader.i27.i.i.i.i.i:                         ; preds = %bb.x
  %.sroa.0.016.i28.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val73, i64 32 ; 2 uses
  %.not17.i29.i.i.i.i.i = icmp eq ptr %.sroa.0.016.i28.i.i.i.i.i, %.val74
  br i1 %.not17.i29.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorINS_7jitlink4EdgeESaIS3_EEZNS2_9LinkGraph14splitBlockImplES1_IPNS2_5BlockESaIS9_EEPSt8optionalINS_11SmallVectorIPNS2_6SymbolELj8EEEEE3$_2EEvOT_T0_.exit", label %.lr.ph.i30.i.i.i.i.i

.lr.ph.i30.i.i.i.i.i:                             ; preds = %.preheader.i27.i.i.i.i.i
  %i.lr = getelementptr i8, ptr %.val73, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ak, %.lr.ph.i30.i.i.i.i.i
  %.sroa.0.019.i31.i.i.i.i.i = phi ptr [ %.sroa.0.016.i28.i.i.i.i.i, %.lr.ph.i30.i.i.i.i.i ], [ %.sroa.0.0.i42.i.i.i.i.i, %bb.ak ] ; 7 uses
  %.pn18.i32.i.i.i.i.i = phi ptr [ %.val73, %.lr.ph.i30.i.i.i.i.i ], [ %.sroa.0.019.i31.i.i.i.i.i, %bb.ak ] ; 5 uses
  %i.ls = getelementptr i8, ptr %.pn18.i32.i.i.i.i.i, i64 40
  %.val.i.i33.i.i.i.i.i = load i32, ptr %i.ls, align 8, !tbaa !69 ; 4 uses
  %.val1.i.i34.i.i.i.i.i = load i32, ptr %i.lr, align 8, !tbaa !69
  %i.lt = icmp ult i32 %.val.i.i33.i.i.i.i.i, %.val1.i.i34.i.i.i.i.i
  br i1 %i.lt, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i31.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !136
  %i.lu = ptrtoint ptr %.sroa.0.019.i31.i.i.i.i.i to i64
  %i.lv = sub i64 %i.lu, %i.kv                    ; 3 uses
  %i.lw = ashr exact i64 %i.lv, 5                 ; 2 uses
  %i.lx = icmp sgt i64 %i.lw, 1
  br i1 %i.lx, label %bb.ag, label %bb.ah, !prof !134

bb.ag:                                            ; preds = %bb.af
  %i.ly = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i.i.i, i64 64
  %i.lz = sub nsw i64 0, %i.lw
  %i.ma = getelementptr inbounds [32 x i8], ptr %i.ly, i64 %i.lz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ma, ptr noundef nonnull align 8 dereferenceable(1) %.val73, i64 %i.lv, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.mb = icmp eq i64 %i.lv, 32
  br i1 %i.mb, label %bb.ai, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.mc = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.mc, ptr noundef nonnull align 8 dereferenceable(25) %.val73, i64 25, i1 false), !tbaa.struct !136
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.val73, ptr noundef nonnull align 8 dereferenceable(25) %4, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i26.i.i.i.i.i)
  %.sroa.03.0.copyload.i.i35.i.i.i.i.i = load ptr, ptr %.sroa.0.019.i31.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.5.0..sroa_idx.i.i36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i.i.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.i26.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i36.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !137
  %i.md = getelementptr i8, ptr %.pn18.i32.i.i.i.i.i, i64 8
  %.val2.i11.i.i37.i.i.i.i.i = load i32, ptr %i.md, align 8, !tbaa !69
  %i.me = icmp ult i32 %.val.i.i33.i.i.i.i.i, %.val2.i11.i.i37.i.i.i.i.i
  br i1 %i.me, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i38.i.i.i.i.i"

.lr.ph.i.i44.i.i.i.i.i:                           ; preds = %bb.aj, %.lr.ph.i.i44.i.i.i.i.i
  %.sroa.08.012.i.i45.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i46.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ], [ %.sroa.0.019.i31.i.i.i.i.i, %bb.aj ] ; 3 uses
  %.sroa.0.0.i.i46.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.012.i.i45.i.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.08.012.i.i45.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.0.i.i46.i.i.i.i.i, i64 25, i1 false), !tbaa.struct !136
  %i.mf = getelementptr i8, ptr %.sroa.08.012.i.i45.i.i.i.i.i, i64 -56
  %.val2.i.i.i47.i.i.i.i.i = load i32, ptr %i.mf, align 8, !tbaa !69
  %i.mg = icmp ult i32 %.val.i.i33.i.i.i.i.i, %.val2.i.i.i47.i.i.i.i.i
  br i1 %i.mg, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i38.i.i.i.i.i", !llvm.loop !355

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i38.i.i.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i.i.i, %bb.aj
  %.sroa.08.0.lcssa.i.i39.i.i.i.i.i = phi ptr [ %.sroa.0.019.i31.i.i.i.i.i, %bb.aj ], [ %.sroa.0.0.i.i46.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ] ; 3 uses
  store ptr %.sroa.03.0.copyload.i.i35.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i39.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx5.i.i40.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i39.i.i.i.i.i, i64 8
  store i32 %.val.i.i33.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx5.i.i40.i.i.i.i.i, align 8, !tbaa !70
  %.sroa.5.0..sroa_idx7.i.i41.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i39.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.0..sroa_idx7.i.i41.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i26.i.i.i.i.i, i64 13, i1 false), !tbaa.struct !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i26.i.i.i.i.i)
  br label %bb.ak

bb.ak:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i38.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i
  %.sroa.0.0.i42.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i31.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i43.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i42.i.i.i.i.i, %.val74
  br i1 %.not.i43.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorINS_7jitlink4EdgeESaIS3_EEZNS2_9LinkGraph14splitBlockImplES1_IPNS2_5BlockESaIS9_EEPSt8optionalINS_11SmallVectorIPNS2_6SymbolELj8EEEEE3$_2EEvOT_T0_.exit", label %bb.ae, !llvm.loop !356

"_ZN4llvm4sortIRSt6vectorINS_7jitlink4EdgeESaIS3_EEZNS2_9LinkGraph14splitBlockImplES1_IPNS2_5BlockESaIS9_EEPSt8optionalINS_11SmallVectorIPNS2_6SymbolELj8EEEEE3$_2EEvOT_T0_.exit": ; preds = %bb.ak, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_.exit.i17.i.i.i.i.i", %_ZNSt14_Optional_baseIN4llvm11SmallVectorIPNS0_7jitlink6SymbolELj8EEELb0ELb0EED2Ev.exit, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_T0_.exit.i.i.i.i.i", %.preheader.i27.i.i.i.i.i
  %i.mh = load ptr, ptr %i.g, align 8, !tbaa !130 ; 2 uses
  %i.mi = load ptr, ptr %2, align 8, !tbaa !131   ; 3 uses
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = sub i64 %i.mj, %i.mk
  %i.mm = ashr exact i64 %i.ml, 3
  %.062213 = add nsw i64 %i.mm, -1                ; 2 uses
  %.not68214 = icmp eq i64 %.062213, 0
  br i1 %.not68214, label %._crit_edge217, label %.lr.ph216.preheader

.lr.ph216.preheader:                              ; preds = %"_ZN4llvm4sortIRSt6vectorINS_7jitlink4EdgeESaIS3_EEZNS2_9LinkGraph14splitBlockImplES1_IPNS2_5BlockESaIS9_EEPSt8optionalINS_11SmallVectorIPNS2_6SymbolELj8EEEEE3$_2EEvOT_T0_.exit"
  %.pre251 = load ptr, ptr %i.ks, align 8, !tbaa !135 ; 2 uses
  %.pre252 = load ptr, ptr %i.kt, align 8, !tbaa !135 ; 2 uses
  br label %.lr.ph216

.lr.ph216:                                        ; preds = %.lr.ph216.preheader, %.loopexit
  %.promoted254 = phi ptr [ %.promoted255, %.loopexit ], [ %.pre252, %.lr.ph216.preheader ] ; 3 uses
  %i.mn = phi ptr [ %i.pm, %.loopexit ], [ %.pre251, %.lr.ph216.preheader ] ; 4 uses
  %i.mo = phi ptr [ %i.pn, %.loopexit ], [ %i.mi, %.lr.ph216.preheader ] ; 5 uses
  %i.mp = phi ptr [ %i.po, %.loopexit ], [ %.pre252, %.lr.ph216.preheader ] ; 4 uses
  %i.mq = phi ptr [ %i.pp, %.loopexit ], [ %.pre251, %.lr.ph216.preheader ] ; 4 uses
  %.062215 = phi i64 [ %.062, %.loopexit ], [ %.062213, %.lr.ph216.preheader ] ; 3 uses
  %i.mr = icmp eq ptr %i.mq, %i.mp
  br i1 %i.mr, label %._crit_edge217.loopexit, label %bb.al

bb.al:                                            ; preds = %.lr.ph216
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %.062215
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !80 ; 3 uses
  %.sroa.0.0.copyload.i96 = load i64, ptr %i.mt, align 8, !tbaa !42
  %i.mu = load ptr, ptr %i.mo, align 8, !tbaa !80
  %.sroa.0.0.copyload.i97 = load i64, ptr %i.mu, align 8, !tbaa !42
  %i.mv = sub i64 %.sroa.0.0.copyload.i96, %.sroa.0.0.copyload.i97
  %i.mw = trunc i64 %i.mv to i32                  ; 3 uses
  %i.mx = getelementptr inbounds i8, ptr %i.mp, i64 -24
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !69
  %i.mz = icmp ult i32 %i.my, %i.mw
  br i1 %i.mz, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.na = ptrtoint ptr %i.mp to i64               ; 2 uses
  %i.nb = ptrtoint ptr %i.mq to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = ashr exact i64 %i.nc, 5                 ; 2 uses
  %.061361 = add nsw i64 %i.nd, -1                ; 3 uses
  %.not69362 = icmp eq i64 %.061361, 0
  br i1 %.not69362, label %.critedge2, label %.lr.ph366

bb.an:                                            ; preds = %.lr.ph366
  %.061 = add i64 %.061364, -1                    ; 3 uses
  %.not69 = icmp eq i64 %.061, 0
  br i1 %.not69, label %.critedge2, label %.lr.ph366, !llvm.loop !358

.lr.ph366:                                        ; preds = %bb.am, %bb.an
  %.061364 = phi i64 [ %.061, %bb.an ], [ %.061361, %bb.am ] ; 3 uses
  %.061.in363 = phi i64 [ %.061364, %bb.an ], [ %i.nd, %bb.am ]
  %i.ne = getelementptr [32 x i8], ptr %i.mq, i64 %.061.in363
  %i.nf = getelementptr i8, ptr %i.ne, i64 -56
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !69
  %.not70 = icmp ult i32 %i.ng, %i.mw
  br i1 %.not70, label %..critedge2_crit_edge368, label %bb.an, !llvm.loop !358

..critedge2_crit_edge368:                         ; preds = %.lr.ph366
  br label %.critedge2, !llvm.loop !358

.critedge2:                                       ; preds = %bb.an, %..critedge2_crit_edge368, %bb.am
  %.061.lcssa = phi i64 [ %.061361, %bb.am ], [ %.061364, %..critedge2_crit_edge368 ], [ %.061, %bb.an ] ; 4 uses
  %i.nh = ptrtoint ptr %i.mn to i64               ; 3 uses
  %i.ni = sub i64 %i.na, %i.nh
  %i.nj = ashr exact i64 %i.ni, 5
  %.not71207 = icmp eq i64 %.061.lcssa, %i.nj
  br i1 %.not71207, label %.critedge2..preheader_crit_edge, label %.lr.ph209.preheader

.critedge2..preheader_crit_edge:                  ; preds = %.critedge2
  %.pre258 = ptrtoint ptr %.promoted254 to i64
  %.pre259 = sub i64 %.pre258, %i.nh
  %.pre261 = ashr exact i64 %.pre259, 5
  br label %.preheader

.lr.ph209.preheader:                              ; preds = %.critedge2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  %.pre253 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !138
  br label %.lr.ph209

.preheader:                                       ; preds = %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit, %.critedge2..preheader_crit_edge
  %.pre-phi262 = phi i64 [ %.pre261, %.critedge2..preheader_crit_edge ], [ %i.pf, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit ]
  %.promoted = phi ptr [ %.promoted254, %.critedge2..preheader_crit_edge ], [ %i.pa, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.nk = phi ptr [ %i.mn, %.critedge2..preheader_crit_edge ], [ %i.pb, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit ] ; 4 uses
  %i.nl = phi ptr [ %i.mo, %.critedge2..preheader_crit_edge ], [ %i.or, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %.lcssa175 = phi i64 [ %i.nh, %.critedge2..preheader_crit_edge ], [ %i.pd, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit ]
  %i.nm = icmp ugt i64 %.pre-phi262, %.061.lcssa
  br i1 %i.nm, label %.lr.ph211, label %.loopexit

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit
  %i.nn = phi ptr [ %i.ov, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit ], [ %.pre253, %.lr.ph209.preheader ] ; 5 uses
  %i.no = phi ptr [ %i.ot, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit ], [ %i.mt, %.lr.ph209.preheader ] ; 3 uses
  %i.np = phi ptr [ %i.pb, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit ], [ %i.mn, %.lr.ph209.preheader ]
  %.0208 = phi i64 [ %i.oz, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit ], [ %.061.lcssa, %.lr.ph209.preheader ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 40 ; 2 uses
  %i.nr = getelementptr inbounds nuw [32 x i8], ptr %i.np, i64 %.0208 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 48 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.no, i64 56 ; 3 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !92
  %.not.i.i = icmp eq ptr %i.nn, %i.nu
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nn, ptr noundef nonnull align 8 dereferenceable(32) %i.nr, i64 32, i1 false), !tbaa.struct !136
  %i.nv = load ptr, ptr %i.ns, align 8, !tbaa !138
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  store ptr %i.nw, ptr %i.ns, align 8, !tbaa !138
  br label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit

bb.ap:                                            ; preds = %.lr.ph209
  %i.nx = load ptr, ptr %i.nq, align 8, !tbaa !91 ; 5 uses
  %i.ny = ptrtoint ptr %i.nn to i64
  %i.nz = ptrtoint ptr %i.nx to i64               ; 2 uses
  %i.oa = sub i64 %i.ny, %i.nz                    ; 3 uses
  %i.ob = icmp eq i64 %i.oa, 9223372036854775776
  br i1 %i.ob, label %bb.aq, label %_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #28
  unreachable

_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ap
  %i.oc = ashr exact i64 %i.oa, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.oc, i64 1)
  %i.od = add nsw i64 %.sroa.speculated.i.i.i.i, %i.oc ; 2 uses
  %i.oe = icmp ult i64 %i.od, %i.oc
  %i.of = call i64 @llvm.umin.i64(i64 %i.od, i64 288230376151711743)
  %i.og = select i1 %i.oe, i64 288230376151711743, i64 %i.of ; 3 uses
  %.not.i.i.i.i98 = icmp ne i64 %i.og, 0
  call void @llvm.assume(i1 %.not.i.i.i.i98)
  %i.oh = shl nuw nsw i64 %i.og, 5
  %i.oi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oh) #29 ; 5 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.oa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oj, ptr noundef nonnull align 8 dereferenceable(32) %i.nr, i64 32, i1 false), !tbaa.struct !136
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.nx, %i.nn
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i99

.lr.ph.i.i.i.i.i.i99:                             ; preds = %_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i99
  %.012.i.i.i.i.i.i = phi ptr [ %i.ol, %.lr.ph.i.i.i.i.i.i99 ], [ %i.oi, %_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ok, %.lr.ph.i.i.i.i.i.i99 ], [ %i.nx, %_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !136, !alias.scope !370
  %i.ok = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i100 = icmp eq ptr %i.ok, %i.nn
  br i1 %.not.i.i.i.i.i.i100, label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i99, !llvm.loop !4

_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i99, %_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.oi, %_ZNKSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ol, %.lr.ph.i.i.i.i.i.i99 ]
  %i.om = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32
  %.not.i23.i.i.i = icmp eq ptr %i.nx, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.on = load ptr, ptr %i.nt, align 8, !tbaa !92
  %i.oo = ptrtoint ptr %i.on to i64
  %i.op = sub i64 %i.oo, %i.nz
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef %i.op) #27
  br label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ar, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.oi, ptr %i.nq, align 8, !tbaa !91
  store ptr %i.om, ptr %i.ns, align 8, !tbaa !138
  %i.oq = getelementptr inbounds nuw [32 x i8], ptr %i.oi, i64 %i.og
  store ptr %i.oq, ptr %i.nt, align 8, !tbaa !92
  br label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.ao, %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.or = load ptr, ptr %2, align 8, !tbaa !131   ; 2 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %.062215
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !80 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 48
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !135 ; 2 uses
  %i.ow = getelementptr inbounds i8, ptr %i.ov, i64 -24 ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !69
  %i.oy = sub i32 %i.ox, %i.mw
  store i32 %i.oy, ptr %i.ow, align 8, !tbaa !69
  %i.oz = add i64 %.0208, 1                       ; 2 uses
  %i.pa = load ptr, ptr %i.kt, align 8, !tbaa !138 ; 2 uses
  %i.pb = load ptr, ptr %i.ks, align 8, !tbaa !91 ; 3 uses
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = ptrtoint ptr %i.pb to i64               ; 2 uses
  %i.pe = sub i64 %i.pc, %i.pd
  %i.pf = ashr exact i64 %i.pe, 5                 ; 2 uses
  %.not71 = icmp eq i64 %i.oz, %i.pf
  br i1 %.not71, label %.preheader, label %.lr.ph209, !llvm.loop !362

.lr.ph211:                                        ; preds = %.preheader, %.lr.ph211
  %i.pg = phi ptr [ %i.ph, %.lr.ph211 ], [ %.promoted, %.preheader ]
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 -32 ; 5 uses
  %i.pi = ptrtoint ptr %i.ph to i64
  %i.pj = sub i64 %i.pi, %.lcssa175
  %i.pk = ashr exact i64 %i.pj, 5
  %i.pl = icmp ugt i64 %i.pk, %.061.lcssa
  br i1 %i.pl, label %.lr.ph211, label %..loopexit_crit_edge, !llvm.loop !363

..loopexit_crit_edge:                             ; preds = %.lr.ph211
  store ptr %i.ph, ptr %i.kt, align 8, !tbaa !138
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %..loopexit_crit_edge, %bb.al
  %.promoted255 = phi ptr [ %.promoted, %.preheader ], [ %i.ph, %..loopexit_crit_edge ], [ %.promoted254, %bb.al ]
  %i.pm = phi ptr [ %i.nk, %.preheader ], [ %i.nk, %..loopexit_crit_edge ], [ %i.mn, %bb.al ]
  %i.pn = phi ptr [ %i.nl, %.preheader ], [ %i.nl, %..loopexit_crit_edge ], [ %i.mo, %bb.al ] ; 2 uses
  %i.po = phi ptr [ %.promoted, %.preheader ], [ %i.ph, %..loopexit_crit_edge ], [ %i.mp, %bb.al ]
  %i.pp = phi ptr [ %i.nk, %.preheader ], [ %i.nk, %..loopexit_crit_edge ], [ %i.mq, %bb.al ]
  %.062 = add i64 %.062215, -1                    ; 2 uses
  %.not68 = icmp eq i64 %.062, 0
  br i1 %.not68, label %._crit_edge217.loopexit, label %.lr.ph216, !llvm.loop !364

._crit_edge217.loopexit:                          ; preds = %.lr.ph216, %.loopexit
  %i.pq = phi ptr [ %i.mo, %.lr.ph216 ], [ %i.pn, %.loopexit ]
  %.pre257 = load ptr, ptr %i.g, align 8, !tbaa !130
  br label %._crit_edge217

._crit_edge217:                                   ; preds = %._crit_edge217.loopexit, %"_ZN4llvm4sortIRSt6vectorINS_7jitlink4EdgeESaIS3_EEZNS2_9LinkGraph14splitBlockImplES1_IPNS2_5BlockESaIS9_EEPSt8optionalINS_11SmallVectorIPNS2_6SymbolELj8EEEEE3$_2EEvOT_T0_.exit"
  %i.pr = phi ptr [ %.pre257, %._crit_edge217.loopexit ], [ %i.mh, %"_ZN4llvm4sortIRSt6vectorINS_7jitlink4EdgeESaIS3_EEZNS2_9LinkGraph14splitBlockImplES1_IPNS2_5BlockESaIS9_EEPSt8optionalINS_11SmallVectorIPNS2_6SymbolELj8EEEEE3$_2EEvOT_T0_.exit" ]
  %i.ps = phi ptr [ %i.pq, %._crit_edge217.loopexit ], [ %i.mi, %"_ZN4llvm4sortIRSt6vectorINS_7jitlink4EdgeESaIS3_EEZNS2_9LinkGraph14splitBlockImplES1_IPNS2_5BlockESaIS9_EEPSt8optionalINS_11SmallVectorIPNS2_6SymbolELj8EEEEE3$_2EEvOT_T0_.exit" ]
  store ptr %i.ps, ptr %0, align 8, !tbaa !131
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pr, ptr %i.pt, align 8, !tbaa !130
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !139
  store ptr %i.pw, ptr %i.pu, align 8, !tbaa !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7jitlink9LinkGraph4dumpERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %3 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %4 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %.sroa.5.i.i26.i.i.i.i.i = alloca <{ [4 x i8], i64, i8, [7 x i8] }>, align 4 ; 4 uses
  %5 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %.sroa.5.i.i12.i.i.i.i.i = alloca <{ [4 x i8], i64, i8, [7 x i8] }>, align 4 ; 4 uses
  %.sroa.5.i.i.i.i.i.i.i = alloca <{ [4 x i8], i64, i8, [7 x i8] }>, align 4 ; 4 uses
  %6 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %7 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %8 = alloca %"class.llvm::DenseMap.69", align 8 ; 11 uses
  %9 = alloca %"class.llvm::iterator_range.71", align 8 ; 14 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.std::vector.46", align 8   ; 9 uses
  %11 = alloca %"class.llvm::iterator_range", align 8 ; 11 uses
  %12 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %13 = alloca %"class.llvm::formatv_object.13", align 8 ; 11 uses
  %14 = alloca %"class.llvm::formatv_object.109", align 8 ; 11 uses
  %15 = alloca %"class.llvm::formatv_object.109", align 8 ; 11 uses
  %16 = alloca %"class.llvm::formatv_object.114", align 8 ; 11 uses
  %17 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 19 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 61 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 11
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.38, i64 noundef 11) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.e, ptr noundef nonnull align 1 dereferenceable(11) @.str.38, i64 11, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  store ptr %i.l, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %1, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.n, i64 noundef %i.p) #26 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 12
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull @.str.39, i64 noundef 12) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit82

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.u, ptr noundef nonnull align 1 dereferenceable(12) @.str.39, i64 12, i1 false)
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit82

_ZN4llvm11raw_ostreamlsEPKc.exit82:               ; preds = %bb.d, %bb.e
  %.0.i.i81 = phi ptr [ %i.z, %bb.d ], [ %i.q, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i81, ptr noundef %i.ad, i64 noundef %i.af) #26 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, 2
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82
  %i.ap = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull @.str.40, i64 noundef 2) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82
  store i16 2601, ptr %i.ak, align 1
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85

_ZN4llvm11raw_ostreamlsEPKc.exit85:               ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN4llvm7jitlink9LinkGraph15defined_symbolsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.71") align 8 %9, ptr noundef nonnull align 8 dereferenceable(312) %0)
  %.sroa.0526.0.copyload = load ptr, ptr %9, align 8 ; 2 uses
  %.sroa.7528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.7528.0.copyload = load ptr, ptr %.sroa.7528.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.8531.0.copyload = load ptr, ptr %.sroa.8531.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.9534.0.copyload = load ptr, ptr %.sroa.9534.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  %.sroa.10539.0.copyload = load ptr, ptr %.sroa.10539.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 80
  %.sroa.11544.0.copyload = load ptr, ptr %.sroa.11544.0..sroa_idx, align 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 112
  %.sroa.0522.0.copyload = load ptr, ptr %i.as, align 8 ; 2 uses
  %.sroa.4524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 192
  %.sroa.4524.0.copyload = load ptr, ptr %.sroa.4524.0..sroa_idx, align 8 ; 2 uses
  %i.at = icmp ne ptr %.sroa.0526.0.copyload, %.sroa.0522.0.copyload
  %i.au = icmp ne ptr %.sroa.11544.0.copyload, %.sroa.4524.0.copyload
  %.not3.i660 = select i1 %i.at, i1 true, i1 %i.au
  br i1 %.not3.i660, label %.lr.ph666, label %._crit_edge

.lr.ph666:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit85
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 104
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.20552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 96
  %.sroa.20552.0.copyload = load ptr, ptr %.sroa.20552.0..sroa_idx, align 8
  %.sroa.18549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 88
  %.sroa.18549.0.copyload = load ptr, ptr %.sroa.18549.0..sroa_idx, align 8
  %i.av = ptrtoint ptr %.sroa.7528.0.copyload to i64
  %i.aw = ptrtoint ptr %.sroa.8531.0.copyload to i64 ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 24                ; 2 uses
  %i.az = add nsw i64 %i.ay, 31
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit, %_ZN4llvm11raw_ostreamlsEPKc.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bb = load ptr, ptr %8, align 8, !tbaa !142, !noalias !497
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !143, !noalias !497 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !144, !noalias !497 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !145, !noalias !497
  %i.bi = icmp eq i32 %i.bh, 0
  %i.bj = zext i32 %i.bf to i64                   ; 4 uses
  %.idx957 = shl nuw nsw i64 %i.bj, 5             ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.bf, 0
  %or.cond = select i1 %i.bi, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %._crit_edge670, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bk = add nuw nsw i64 %i.bj, 31
  %i.bl = lshr i64 %i.bk, 5                       ; 2 uses
  %i.bm = load i32, ptr %i.bd, align 4, !tbaa !70, !noalias !498 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.bo = icmp eq i64 %i.bl, 1
  br i1 %i.bo, label %._crit_edge670, label %.lr.ph1028

.lr.ph.i.i.i:                                     ; preds = %.lr.ph1028
  %i.bp = add nuw nsw i64 %i.br, 1                ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.bl
  br i1 %i.bq, label %._crit_edge670, label %.lr.ph1028, !llvm.loop !375

.lr.ph1028:                                       ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.br = phi i64 [ %i.bp, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !70, !noalias !498 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !375

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph1028
  %i.bv = shl i64 %i.br, 10
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E5beginEv.exit: ; preds = %bb.h, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.h ], [ %i.bv, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.bm, %bb.h ], [ %i.bt, %._crit_edge.i.loopexit.i.i ]
  %i.bw = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.bx = shl nuw nsw i32 %i.bw, 5
  %.idx956 = zext nneg i32 %i.bx to i64
  %i.by = or disjoint i64 %.012.lcssa.i.i.i, %.idx956 ; 2 uses
  %.not667 = icmp eq i64 %i.by, %.idx957
  br i1 %.not667, label %._crit_edge670, label %.lr.ph669

.lr.ph669:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E5beginEv.exit
  %i.bz = add nuw nsw i64 %i.bj, 31
  %i.ca = lshr i64 %i.bz, 5                       ; 2 uses
  br label %bb.t

bb.i:                                             ; preds = %.lr.ph666, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit
  %.sroa.11544.0665 = phi ptr [ %.sroa.11544.0.copyload, %.lr.ph666 ], [ %.sroa.11544.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 2 uses
  %.sroa.18549.0664 = phi ptr [ %.sroa.18549.0.copyload, %.lr.ph666 ], [ %.sroa.18549.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 6 uses
  %.sroa.0526.0663 = phi ptr [ %.sroa.0526.0.copyload, %.lr.ph666 ], [ %.sroa.0526.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 5 uses
  %.sroa.22.0662 = phi ptr [ %.sroa.22.0.copyload, %.lr.ph666 ], [ %.sroa.22.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %.sroa.20552.0661 = phi ptr [ %.sroa.20552.0.copyload, %.lr.ph666 ], [ %.sroa.20552.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %i.cb = load ptr, ptr %.sroa.11544.0665, align 8, !tbaa !89 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !62
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !80
  %i.ce = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
end_hunk_1
begin_hunk_2_@_ZN4llvm7jitlink9LinkGraph4dumpERNS_11raw_ostreamE:bb.a
  %i.xr = ptrtoint ptr %i.xp to i64
  %i.xs = ptrtoint ptr %i.xq to i64
  %i.xt = sub i64 %i.xr, %i.xs                    ; 2 uses
  br i1 %.not602, label %bb.ci, label %bb.cb

bb.cb:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit
  %i.xu = icmp ult i64 %i.xt, 13
  br i1 %i.xu, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.xv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.48, i64 noundef 13) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit163

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.xq, ptr noundef nonnull align 1 dereferenceable(13) @.str.48, i64 13, i1 false)
  %i.xw = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 13
  store ptr %i.xx, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit163

_ZN4llvm11raw_ostreamlsEPKc.exit163:              ; preds = %bb.cc, %bb.cd
  %i.xy = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !151 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !151 ; 2 uses
  %.not603681 = icmp eq ptr %i.xz, %i.yb
  br i1 %.not603681, label %_ZN4llvm11raw_ostreamlsEPKc.exit172, label %.lr.ph683

.lr.ph683:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit163, %_ZN4llvm11raw_ostreamlsEPKc.exit169
  %.sroa.0456.0682 = phi ptr [ %i.yv, %_ZN4llvm11raw_ostreamlsEPKc.exit169 ], [ %i.xz, %_ZN4llvm11raw_ostreamlsEPKc.exit163 ] ; 2 uses
  %i.yc = load ptr, ptr %.sroa.0456.0682, align 8, !tbaa !89
  %i.yd = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.ye = load ptr, ptr %i.d, align 8, !tbaa !55  ; 2 uses
  %i.yf = ptrtoint ptr %i.yd to i64
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = sub i64 %i.yf, %i.yg
  %i.yi = icmp ult i64 %i.yh, 6
  br i1 %i.yi, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.lr.ph683
  %i.yj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.49, i64 noundef 6) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit166

bb.cf:                                            ; preds = %.lr.ph683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ye, ptr noundef nonnull align 1 dereferenceable(6) @.str.49, i64 6, i1 false)
  %i.yk = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 6
  store ptr %i.yl, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit166

_ZN4llvm11raw_ostreamlsEPKc.exit166:              ; preds = %bb.ce, %bb.cf
  %.0.i.i165 = phi ptr [ %i.yj, %bb.ce ], [ %1, %bb.cf ] ; 4 uses
  %i.ym = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm7jitlinklsERNS_11raw_ostreamERKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i165, ptr noundef nonnull align 8 dereferenceable(32) %i.yc) ; 0 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.0.i.i165, i64 24
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !54
  %i.yp = getelementptr inbounds nuw i8, ptr %.0.i.i165, i64 32 ; 3 uses
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !55 ; 2 uses
  %i.yr = icmp eq ptr %i.yo, %i.yq
  br i1 %i.yr, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit166
  %i.ys = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i165, ptr noundef nonnull @.str.47, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit169

bb.ch:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit166
  store i8 10, ptr %i.yq, align 1
  %i.yt = load ptr, ptr %i.yp, align 8, !tbaa !55
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 1
  store ptr %i.yu, ptr %i.yp, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit169

_ZN4llvm11raw_ostreamlsEPKc.exit169:              ; preds = %bb.cg, %bb.ch
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.0456.0682, i64 8 ; 2 uses
  %.not603 = icmp eq ptr %i.yv, %i.yb
  br i1 %.not603, label %_ZN4llvm11raw_ostreamlsEPKc.exit172, label %.lr.ph683

bb.ci:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit
  %i.yw = icmp ult i64 %i.xt, 15
  br i1 %i.yw, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.yx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.50, i64 noundef 15) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit172

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.xq, ptr noundef nonnull align 1 dereferenceable(15) @.str.50, i64 15, i1 false)
  %i.yy = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 15
  store ptr %i.yz, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit172

_ZN4llvm11raw_ostreamlsEPKc.exit172:              ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit169, %_ZN4llvm11raw_ostreamlsEPKc.exit163, %bb.ck, %bb.cj
  %i.za = getelementptr inbounds nuw i8, ptr %i.tn, i64 40 ; 2 uses
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !135
  %i.zc = getelementptr inbounds nuw i8, ptr %i.tn, i64 48 ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !135
  %i.ze = icmp eq ptr %i.zb, %i.zd
  %i.zf = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.zg = load ptr, ptr %i.d, align 8, !tbaa !55  ; 3 uses
  %i.zh = ptrtoint ptr %i.zf to i64
  %i.zi = ptrtoint ptr %i.zg to i64
  %i.zj = sub i64 %i.zh, %i.zi                    ; 2 uses
  br i1 %i.ze, label %bb.ec, label %bb.cl

bb.cl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit172
  %i.zk = icmp ult i64 %i.zj, 11
  br i1 %i.zk, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.zl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.51, i64 noundef 11) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit175

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.zg, ptr noundef nonnull align 1 dereferenceable(11) @.str.51, i64 11, i1 false)
  %i.zm = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 11
  store ptr %i.zn, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit175

_ZN4llvm11raw_ostreamlsEPKc.exit175:              ; preds = %bb.cm, %bb.cn
  %i.zo = load ptr, ptr %i.za, align 8, !tbaa !135 ; 3 uses
  %i.zp = load ptr, ptr %i.zc, align 8, !tbaa !135 ; 3 uses
  %.not84.i = icmp eq ptr %i.zo, %i.zp
  br i1 %.not84.i, label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit175
  %i.zq = ptrtoint ptr %i.zp to i64
  %i.zr = ptrtoint ptr %i.zo to i64
  %i.zs = sub i64 %i.zq, %i.zr                    ; 3 uses
  %i.zt = icmp ugt i64 %i.zs, 9223372036854775776
  br i1 %i.zt, label %bb.cp, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm7jitlink4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i

bb.cp:                                            ; preds = %bb.co
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #28
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm7jitlink4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i: ; preds = %bb.co
  %i.zu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zs) #29 ; 19 uses
  br label %.lr.ph.i.i.i.i58.i

.lr.ph.i.i.i.i58.i:                               ; preds = %.lr.ph.i.i.i.i58.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm7jitlink4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i
  %.09.i.i.i.i59.i.idx = phi i64 [ %.09.i.i.i.i59.i.add, %.lr.ph.i.i.i.i58.i ], [ 0, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm7jitlink4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i ] ; 4 uses
  %.sroa.04.08.i.i.i.i60.i = phi ptr [ %i.zv, %.lr.ph.i.i.i.i58.i ], [ %i.zo, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm7jitlink4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i ] ; 2 uses
  %.09.i.i.i.i59.i.ptr = getelementptr inbounds nuw i8, ptr %i.zu, i64 %.09.i.i.i.i59.i.idx ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i59.i.ptr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.08.i.i.i.i60.i, i64 32, i1 false), !tbaa.struct !136
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i60.i, i64 32 ; 2 uses
  %.09.i.i.i.i59.i.add = add nuw nsw i64 %.09.i.i.i.i59.i.idx, 32 ; 4 uses
  %.not.i.i.i.i61.i = icmp eq ptr %i.zv, %i.zp
  br i1 %.not.i.i.i.i61.i, label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag.exit.thread575, label %.lr.ph.i.i.i.i58.i, !llvm.loop !441

_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag.exit.thread575: ; preds = %.lr.ph.i.i.i.i58.i
  %.ptr.le = getelementptr inbounds nuw i8, ptr %i.zu, i64 %.09.i.i.i.i59.i.add ; 3 uses
  %i.zw = ptrtoint ptr %i.zu to i64
  %i.zx = lshr exact i64 %.09.i.i.i.i59.i.add, 5
  %i.zy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.zx, i1 true)
  %i.zz = shl nuw nsw i64 %i.zy, 1
  %i.aaa = xor i64 %i.zz, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_T0_T1_"(ptr nonnull %i.zu, ptr nonnull %.ptr.le, i64 noundef %i.aaa)
  %i.aab = icmp samesign ugt i64 %.09.i.i.i.i59.i.idx, 511
  br i1 %i.aab, label %.lr.ph.i.i.i.i.i.i177, label %.preheader.i27.i.i.i.i.i

.lr.ph.i.i.i.i.i.i177:                            ; preds = %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag.exit.thread575
  %i.aac = getelementptr i8, ptr %i.zu, i64 8
  %scevgep.i.i.i.i.i178 = getelementptr i8, ptr %i.zu, i64 32
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cv, %.lr.ph.i.i.i.i.i.i177
  %.sroa.0.019.i.idx.i.i.i.i.i179 = phi i64 [ 32, %.lr.ph.i.i.i.i.i.i177 ], [ %.sroa.0.019.i.add.i.i.i.i.i184, %bb.cv ] ; 4 uses
  %.pn18.i.i.i.i.i.i180 = phi ptr [ %i.zu, %.lr.ph.i.i.i.i.i.i177 ], [ %.sroa.0.019.i.ptr.i.i.i.i.i181, %bb.cv ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i.i.i181 = getelementptr inbounds nuw i8, ptr %i.zu, i64 %.sroa.0.019.i.idx.i.i.i.i.i179 ; 5 uses
  %i.aad = getelementptr i8, ptr %.pn18.i.i.i.i.i.i180, i64 40
  %.val.i.i.i.i.i.i.i182 = load i32, ptr %i.aad, align 8, !tbaa !69 ; 4 uses
  %.val1.i.i.i.i.i.i.i183 = load i32, ptr %i.aac, align 8, !tbaa !69
  %i.aae = icmp ult i32 %.val.i.i.i.i.i.i.i182, %.val1.i.i.i.i.i.i.i183
  br i1 %i.aae, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i.ptr.i.i.i.i.i181, i64 32, i1 false), !tbaa.struct !136
  %i.aaf = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i.i.i179, 32
  br i1 %i.aaf, label %bb.cs, label %bb.ct, !prof !134

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i178, ptr noundef nonnull align 8 dereferenceable(1) %i.zu, i64 %.sroa.0.019.i.idx.i.i.i.i.i179, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.aag = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i180, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.aag, ptr noundef nonnull align 8 dereferenceable(25) %i.zu, i64 25, i1 false), !tbaa.struct !136
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i: ; preds = %bb.ct, %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.zu, ptr noundef nonnull align 8 dereferenceable(25) %6, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %.sroa.03.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.019.i.ptr.i.i.i.i.i181, align 8, !tbaa !89
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i180, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !137
  %i.aah = getelementptr i8, ptr %.pn18.i.i.i.i.i.i180, i64 8
  %.val2.i11.i.i.i.i.i.i.i = load i32, ptr %i.aah, align 8, !tbaa !69
  %i.aai = icmp ult i32 %.val.i.i.i.i.i.i.i182, %.val2.i11.i.i.i.i.i.i.i
  br i1 %i.aai, label %.lr.ph.i.i.i.i.i.i.i188, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i188:                          ; preds = %bb.cu, %.lr.ph.i.i.i.i.i.i.i188
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i189, %.lr.ph.i.i.i.i.i.i.i188 ], [ %.sroa.0.019.i.ptr.i.i.i.i.i181, %bb.cu ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i189 = getelementptr inbounds i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.08.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.0.i.i.i.i.i.i.i189, i64 25, i1 false), !tbaa.struct !136
  %i.aaj = getelementptr i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 -56
  %.val2.i.i.i.i.i.i.i.i190 = load i32, ptr %i.aaj, align 8, !tbaa !69
  %i.aak = icmp ult i32 %.val.i.i.i.i.i.i.i182, %.val2.i.i.i.i.i.i.i.i190
  br i1 %i.aak, label %.lr.ph.i.i.i.i.i.i.i188, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !442

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i188, %bb.cu
  %.sroa.08.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i.i.i181, %bb.cu ], [ %.sroa.0.0.i.i.i.i.i.i.i189, %.lr.ph.i.i.i.i.i.i.i188 ] ; 3 uses
  store ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i.i, i64 8
  store i32 %.val.i.i.i.i.i.i.i182, ptr %.sroa.4.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !tbaa !70
  %.sroa.5.0..sroa_idx7.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.0..sroa_idx7.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i.i.i.i.i.i, i64 13, i1 false), !tbaa.struct !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  br label %bb.cv

bb.cv:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i
  %.sroa.0.019.i.add.i.i.i.i.i184 = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i.i.i179, 32 ; 2 uses
  %.not.i.i.i.i.i.i185 = icmp eq i64 %.sroa.0.019.i.add.i.i.i.i.i184, 512
  br i1 %.not.i.i.i.i.i.i185, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_T0_.exit.i.i.i.i.i", label %bb.cq, !llvm.loop !443

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_T0_.exit.i.i.i.i.i": ; preds = %bb.cv
  %.not6.i.i.i.i.i.i186 = icmp eq i64 %.09.i.i.i.i59.i.add, 512
  br i1 %.not6.i.i.i.i.i.i186, label %.lr.ph686.preheader, label %.lr.ph.i13.i.i.i.i.i.preheader

.lr.ph.i13.i.i.i.i.i.preheader:                   ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_T0_.exit.i.i.i.i.i"
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zu, i64 512
  br label %.lr.ph.i13.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i.i.preheader, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i17.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i187 = phi ptr [ %i.aaq, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i17.i.i.i.i.i" ], [ %i.aal, %.lr.ph.i13.i.i.i.i.i.preheader ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i.i.i.i)
  %.sroa.03.0.copyload.i.i14.i.i.i.i.i = load ptr, ptr %.sroa.0.07.i.i.i.i.i.i187, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i187, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !70 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i187, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.i12.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i15.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !137
  %i.aam = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i.i187, i64 -24
  %.val2.i11.i.i16.i.i.i.i.i = load i32, ptr %i.aam, align 8, !tbaa !69
  %i.aan = icmp ult i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i, %.val2.i11.i.i16.i.i.i.i.i
  br i1 %i.aan, label %.lr.ph.i.i22.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i17.i.i.i.i.i"

.lr.ph.i.i22.i.i.i.i.i:                           ; preds = %.lr.ph.i13.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i
  %.sroa.08.012.i.i23.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i24.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i187, %.lr.ph.i13.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i24.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.012.i.i23.i.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.08.012.i.i23.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.0.i.i24.i.i.i.i.i, i64 25, i1 false), !tbaa.struct !136
  %i.aao = getelementptr i8, ptr %.sroa.08.012.i.i23.i.i.i.i.i, i64 -56
  %.val2.i.i.i25.i.i.i.i.i = load i32, ptr %i.aao, align 8, !tbaa !69
  %i.aap = icmp ult i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i, %.val2.i.i.i25.i.i.i.i.i
  br i1 %i.aap, label %.lr.ph.i.i22.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i17.i.i.i.i.i", !llvm.loop !442

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i17.i.i.i.i.i": ; preds = %.lr.ph.i.i22.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i
  %.sroa.08.0.lcssa.i.i18.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i187, %.lr.ph.i13.i.i.i.i.i ], [ %.sroa.0.0.i.i24.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i ] ; 3 uses
  store ptr %.sroa.03.0.copyload.i.i14.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i18.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx5.i.i19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i18.i.i.i.i.i, i64 8
  store i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx5.i.i19.i.i.i.i.i, align 8, !tbaa !70
  %.sroa.5.0..sroa_idx7.i.i20.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i18.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.0..sroa_idx7.i.i20.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i12.i.i.i.i.i, i64 13, i1 false), !tbaa.struct !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i.i.i.i)
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i187, i64 32 ; 2 uses
  %.not.i21.i.i.i.i.i = icmp eq ptr %i.aaq, %.ptr.le
  br i1 %.not.i21.i.i.i.i.i, label %.lr.ph686.preheader, label %.lr.ph.i13.i.i.i.i.i, !llvm.loop !444

.preheader.i27.i.i.i.i.i:                         ; preds = %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag.exit.thread575
  %.not17.i29.i.i.i.i.i = icmp samesign eq i64 %.09.i.i.i.i59.i.idx, 0
  br i1 %.not17.i29.i.i.i.i.i, label %.lr.ph686.preheader, label %.lr.ph.i30.i.i.i.i.i

.lr.ph686.preheader:                              ; preds = %bb.dc, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i17.i.i.i.i.i", %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_T0_.exit.i.i.i.i.i", %.preheader.i27.i.i.i.i.i
  br label %.lr.ph686

.lr.ph.i30.i.i.i.i.i:                             ; preds = %.preheader.i27.i.i.i.i.i
  %i.aar = getelementptr i8, ptr %i.zu, i64 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.dc, %.lr.ph.i30.i.i.i.i.i
  %.pn18.i32.i.i.i.i.i = phi ptr [ %i.zu, %.lr.ph.i30.i.i.i.i.i ], [ %.sroa.0.019.i31.i.i.i.i.i, %bb.dc ] ; 5 uses
  %.sroa.0.019.i31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i.i.i, i64 32 ; 8 uses
  %i.aas = getelementptr i8, ptr %.pn18.i32.i.i.i.i.i, i64 40
  %.val.i.i33.i.i.i.i.i = load i32, ptr %i.aas, align 8, !tbaa !69 ; 4 uses
  %.val1.i.i34.i.i.i.i.i = load i32, ptr %i.aar, align 8, !tbaa !69
  %i.aat = icmp ult i32 %.val.i.i33.i.i.i.i.i, %.val1.i.i34.i.i.i.i.i
  br i1 %i.aat, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i31.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !136
  %i.aau = ptrtoint ptr %.sroa.0.019.i31.i.i.i.i.i to i64
  %i.aav = sub i64 %i.aau, %i.zw                  ; 3 uses
  %i.aaw = ashr exact i64 %i.aav, 5               ; 2 uses
  %i.aax = icmp sgt i64 %i.aaw, 1
  br i1 %i.aax, label %bb.cy, label %bb.cz, !prof !134

bb.cy:                                            ; preds = %bb.cx
  %i.aay = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i.i.i, i64 64
  %i.aaz = sub nsw i64 0, %i.aaw
  %i.aba = getelementptr inbounds [32 x i8], ptr %i.aay, i64 %i.aaz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aba, ptr noundef nonnull align 8 dereferenceable(1) %i.zu, i64 %i.aav, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.abb = icmp eq i64 %i.aav, 32
  br i1 %i.abb, label %bb.da, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.019.i31.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %i.zu, i64 25, i1 false), !tbaa.struct !136
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i: ; preds = %bb.da, %bb.cz, %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.zu, ptr noundef nonnull align 8 dereferenceable(25) %5, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.dc

bb.db:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i26.i.i.i.i.i)
  %.sroa.03.0.copyload.i.i35.i.i.i.i.i = load ptr, ptr %.sroa.0.019.i31.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.5.0..sroa_idx.i.i36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i.i.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.i26.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i36.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !137
  %i.abc = getelementptr i8, ptr %.pn18.i32.i.i.i.i.i, i64 8
  %.val2.i11.i.i37.i.i.i.i.i = load i32, ptr %i.abc, align 8, !tbaa !69
  %i.abd = icmp ult i32 %.val.i.i33.i.i.i.i.i, %.val2.i11.i.i37.i.i.i.i.i
  br i1 %i.abd, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i38.i.i.i.i.i"

.lr.ph.i.i44.i.i.i.i.i:                           ; preds = %bb.db, %.lr.ph.i.i44.i.i.i.i.i
  %.sroa.08.012.i.i45.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i46.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ], [ %.sroa.0.019.i31.i.i.i.i.i, %bb.db ] ; 3 uses
  %.sroa.0.0.i.i46.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.012.i.i45.i.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.08.012.i.i45.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.0.i.i46.i.i.i.i.i, i64 25, i1 false), !tbaa.struct !136
  %i.abe = getelementptr i8, ptr %.sroa.08.012.i.i45.i.i.i.i.i, i64 -56
  %.val2.i.i.i47.i.i.i.i.i = load i32, ptr %i.abe, align 8, !tbaa !69
  %i.abf = icmp ult i32 %.val.i.i33.i.i.i.i.i, %.val2.i.i.i47.i.i.i.i.i
  br i1 %i.abf, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i38.i.i.i.i.i", !llvm.loop !442

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i38.i.i.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i.i.i, %bb.db
  %.sroa.08.0.lcssa.i.i39.i.i.i.i.i = phi ptr [ %.sroa.0.019.i31.i.i.i.i.i, %bb.db ], [ %.sroa.0.0.i.i46.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ] ; 3 uses
  store ptr %.sroa.03.0.copyload.i.i35.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i39.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx5.i.i40.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i39.i.i.i.i.i, i64 8
  store i32 %.val.i.i33.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx5.i.i40.i.i.i.i.i, align 8, !tbaa !70
  %.sroa.5.0..sroa_idx7.i.i41.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i39.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.0..sroa_idx7.i.i41.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i26.i.i.i.i.i, i64 13, i1 false), !tbaa.struct !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i26.i.i.i.i.i)
  br label %bb.dc

bb.dc:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i38.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i
  %.not.i43.i.i.i.i.i = icmp eq ptr %.sroa.0.019.i31.i.i.i.i.i, %.09.i.i.i.i59.i.ptr
  br i1 %.not.i43.i.i.i.i.i, label %.lr.ph686.preheader, label %bb.cw, !llvm.loop !443

.loopexit:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit243
  call void @_ZdlPvm(ptr noundef nonnull %i.zu, i64 noundef %i.zs) #27
  br label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EED2Ev.exit

.lr.ph686:                                        ; preds = %.lr.ph686.preheader, %_ZN4llvm11raw_ostreamlsEPKc.exit243
  %.sroa.0440.0685 = phi ptr [ %i.afu, %_ZN4llvm11raw_ostreamlsEPKc.exit243 ], [ %i.zu, %.lr.ph686.preheader ] ; 7 uses
  %i.abg = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.abh = load ptr, ptr %i.d, align 8, !tbaa !55 ; 2 uses
  %i.abi = ptrtoint ptr %i.abg to i64
  %i.abj = ptrtoint ptr %i.abh to i64
  %i.abk = sub i64 %i.abi, %i.abj
  %i.abl = icmp ult i64 %i.abk, 6
  br i1 %i.abl, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.lr.ph686
  %i.abm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.49, i64 noundef 6) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit194

bb.de:                                            ; preds = %.lr.ph686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.abh, ptr noundef nonnull align 1 dereferenceable(6) @.str.49, i64 6, i1 false)
  %i.abn = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 6
  store ptr %i.abo, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit194

_ZN4llvm11raw_ostreamlsEPKc.exit194:              ; preds = %bb.dd, %bb.de
  %.0.i.i193 = phi ptr [ %i.abm, %bb.dd ], [ %1, %bb.de ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.tn, align 8, !tbaa !42
  %i.abp = getelementptr inbounds nuw i8, ptr %.sroa.0440.0685, i64 8 ; 2 uses
  %i.abq = load i32, ptr %i.abp, align 8, !tbaa !69
  %i.abr = zext i32 %i.abq to i64
  %i.abs = add i64 %.sroa.0.0.copyload.i.i, %i.abr
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr @.str.33, ptr %4, align 8, !tbaa !43, !alias.scope !516
  store i64 5, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i195, align 8, !tbaa !42, !alias.scope !516
  store ptr %i.lf, ptr %i.lg, align 8, !tbaa !45, !alias.scope !516
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i196, align 8, !tbaa !42, !alias.scope !516
  store i8 1, ptr %i.lh, align 8, !tbaa !50, !alias.scope !516
  store i64 %i.abs, ptr %i.li, align 8, !tbaa !42, !alias.scope !516
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_, ptr %i.lf, align 8, !alias.scope !516
  store i64 %i.lj, ptr %.sroa.4.0..sroa_idx.i.i.i.i197, align 8, !tbaa !41, !alias.scope !516
  %i.abt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i193, ptr noundef nonnull align 8 dereferenceable(33) %4) #26 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 24
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !54
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abt, i64 32 ; 3 uses
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !55 ; 2 uses
  %i.aby = ptrtoint ptr %i.abv to i64
  %i.abz = ptrtoint ptr %i.abx to i64
  %i.aca = sub i64 %i.aby, %i.abz
  %i.acb = icmp ult i64 %i.aca, 10
  br i1 %i.acb, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit194
  %i.acc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.abt, ptr noundef nonnull @.str.52, i64 noundef 10) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit200

bb.dg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.abx, ptr noundef nonnull align 1 dereferenceable(10) @.str.52, i64 10, i1 false)
  %i.acd = load ptr, ptr %i.abw, align 8, !tbaa !55
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 10
  store ptr %i.ace, ptr %i.abw, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit200

_ZN4llvm11raw_ostreamlsEPKc.exit200:              ; preds = %bb.df, %bb.dg
  %.0.i.i199 = phi ptr [ %i.acc, %bb.df ], [ %i.abt, %bb.dg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.acf = load i32, ptr %i.abp, align 8, !tbaa !69
  store ptr @.str.12, ptr %13, align 8, !tbaa !43, !alias.scope !517
  store i64 6, ptr %.sroa.22.0..sroa_idx.i.i.i.i201, align 8, !tbaa !42, !alias.scope !517
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !45, !alias.scope !517
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i202, align 8, !tbaa !42, !alias.scope !517
  store i8 1, ptr %i.lm, align 8, !tbaa !50, !alias.scope !517
  store i32 %i.acf, ptr %i.ln, align 4, !tbaa !70, !alias.scope !517
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIjEEEEvlS2_S3_, ptr %i.lk, align 8, !alias.scope !517
  store i64 %i.lo, ptr %.sroa.4.0..sroa_idx.i.i.i203, align 8, !tbaa !41, !alias.scope !517
  %i.acg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i199, ptr noundef nonnull align 8 dereferenceable(33) %13) #26 ; 3 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 24
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !54
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 32 ; 3 uses
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !55 ; 2 uses
  %i.acl = ptrtoint ptr %i.aci to i64
  %i.acm = ptrtoint ptr %i.ack to i64
  %i.acn = sub i64 %i.acl, %i.acm
  %i.aco = icmp ult i64 %i.acn, 12
  br i1 %i.aco, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit200
  %i.acp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.acg, ptr noundef nonnull @.str.53, i64 noundef 12) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit206

bb.di:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ack, ptr noundef nonnull align 1 dereferenceable(12) @.str.53, i64 12, i1 false)
  %i.acq = load ptr, ptr %i.acj, align 8, !tbaa !55
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 12
  store ptr %i.acr, ptr %i.acj, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit206

_ZN4llvm11raw_ostreamlsEPKc.exit206:              ; preds = %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.0440.0685, i64 16
  %i.act = load i64, ptr %i.acs, align 8, !tbaa !82 ; 3 uses
  %i.acu = icmp sgt i64 %i.act, -1
  br i1 %i.acu, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr @.str.54, ptr %14, align 8, !tbaa !43, !alias.scope !518
  store i64 7, ptr %.sroa.22.0..sroa_idx.i.i.i.i207, align 8, !tbaa !42, !alias.scope !518
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !45, !alias.scope !518
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i208, align 8, !tbaa !42, !alias.scope !518
  store i8 1, ptr %i.lw, align 8, !tbaa !50, !alias.scope !518
  store i64 %i.act, ptr %i.lx, align 8, !tbaa !42, !alias.scope !518
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIlEEEEvlS2_S3_, ptr %i.lu, align 8, !alias.scope !518
  store i64 %i.ly, ptr %.sroa.4.0..sroa_idx.i.i.i209, align 8, !tbaa !41, !alias.scope !518
  %i.acv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(33) %14) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.dl

bb.dk:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.acw = sub nsw i64 0, %i.act
  store ptr @.str.55, ptr %15, align 8, !tbaa !43, !alias.scope !519
  store i64 7, ptr %.sroa.22.0..sroa_idx.i.i.i.i210, align 8, !tbaa !42, !alias.scope !519
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !45, !alias.scope !519
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i211, align 8, !tbaa !42, !alias.scope !519
  store i8 1, ptr %i.lr, align 8, !tbaa !50, !alias.scope !519
  store i64 %i.acw, ptr %i.ls, align 8, !tbaa !42, !alias.scope !519
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIlEEEEvlS2_S3_, ptr %i.lp, align 8, !alias.scope !519
  store i64 %i.lt, ptr %.sroa.4.0..sroa_idx.i.i.i212, align 8, !tbaa !41, !alias.scope !519
  %i.acx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(33) %15) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.acy = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.acz = load ptr, ptr %i.d, align 8, !tbaa !55 ; 2 uses
  %i.ada = ptrtoint ptr %i.acy to i64
  %i.adb = ptrtoint ptr %i.acz to i64
  %i.adc = sub i64 %i.ada, %i.adb
  %i.add = icmp ult i64 %i.adc, 9
  br i1 %i.add, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.ade = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.56, i64 noundef 9) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit215

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.acz, ptr noundef nonnull align 1 dereferenceable(9) @.str.56, i64 9, i1 false)
  %i.adf = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 9
  store ptr %i.adg, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit215

_ZN4llvm11raw_ostreamlsEPKc.exit215:              ; preds = %bb.dm, %bb.dn
  %.0.i.i214 = phi ptr [ %i.ade, %bb.dm ], [ %1, %bb.dn ] ; 6 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %.sroa.0440.0685, i64 24
  %i.adi = load i8, ptr %i.adh, align 8, !tbaa !154
  %i.adj = load ptr, ptr %i.lz, align 8, !tbaa !185
  %i.adk = call noundef ptr %i.adj(i8 noundef zeroext %i.adi) #26, !inline_history !8 ; 4 uses
  %.not.i.i216 = icmp eq ptr %i.adk, null
  br i1 %.not.i.i216, label %_ZN4llvm11raw_ostreamlsEPKc.exit219, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit215
  %i.adl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.adk) #26 ; 5 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.0.i.i214, i64 24
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !54
  %i.ado = getelementptr inbounds nuw i8, ptr %.0.i.i214, i64 32 ; 3 uses
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !55 ; 2 uses
  %i.adq = ptrtoint ptr %i.adn to i64
  %i.adr = ptrtoint ptr %i.adp to i64
  %i.ads = sub i64 %i.adq, %i.adr
  %i.adt = icmp ugt i64 %i.adl, %i.ads
  br i1 %i.adt, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.adu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i214, ptr noundef nonnull %i.adk, i64 noundef %i.adl) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit219

bb.dp:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %.not.i2.i217 = icmp eq i64 %i.adl, 0
  br i1 %.not.i2.i217, label %_ZN4llvm11raw_ostreamlsEPKc.exit219, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adp, ptr nonnull align 1 %i.adk, i64 %i.adl, i1 false)
  %i.adv = load ptr, ptr %i.ado, align 8, !tbaa !55
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 %i.adl
  store ptr %i.adw, ptr %i.ado, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit219

_ZN4llvm11raw_ostreamlsEPKc.exit219:              ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit215, %bb.do, %bb.dp, %bb.dq
  %.0.i.i218 = phi ptr [ %i.adu, %bb.do ], [ %.0.i.i214, %bb.dq ], [ %.0.i.i214, %bb.dp ], [ %.0.i.i214, %_ZN4llvm11raw_ostreamlsEPKc.exit215 ] ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.0.i.i218, i64 24
end_hunk_2
begin_hunk_3_@"_ZSt16__introsort_loopIPPN4llvm7jitlink6SymbolElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_T0_T1_":bb.a

.lr.ph.i.i.i.i9.i:                                ; preds = %bb.i, %.thread.i.i24.i
  %.128.i2.i.i10.i = phi i64 [ %i.cm, %.thread.i.i24.i ], [ %.0.lcssa.i.i.i7.i, %bb.i ]
  %i.cq = getelementptr i8, ptr %i.bf, i64 8
  %.val14.val.i.i.i.i11.i = load ptr, ptr %i.cq, align 8, !tbaa !62
  %i.cr = getelementptr i8, ptr %i.bf, i64 16
  %.val14.val.val.i.i.i.i12.i = load i64, ptr %.val14.val.i.i.i.i11.i, align 8, !tbaa !42
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i9.i
  %.0133.i.i.i.i13.i = phi i64 [ %.128.i2.i.i10.i, %.lr.ph.i.i.i.i9.i ], [ %.048.i.i.i.i15.i, %bb.k ] ; 3 uses
  %.04.in.i.i.i.i14.i = add nsw i64 %.0133.i.i.i.i13.i, -1
  %.048.i.i.i.i15.i = lshr i64 %.04.in.i.i.i.i14.i, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.048.i.i.i.i15.i
  %.val.i.i.i.i16.i = load ptr, ptr %i.cs, align 8, !tbaa !89 ; 3 uses
  %i.ct = getelementptr i8, ptr %.val.i.i.i.i16.i, i64 8
  %.val.val.i.i.i.i17.i = load ptr, ptr %i.ct, align 8, !tbaa !62
  %i.cu = getelementptr i8, ptr %.val.i.i.i.i16.i, i64 16
  %.val.val15.i.i.i.i18.i = load i64, ptr %i.cu, align 8
  %.val14.val16.i.i.i.i19.i = load i64, ptr %i.cr, align 8
  %.val.val.val.i.i.i.i20.i = load i64, ptr %.val.val.i.i.i.i17.i, align 8, !tbaa !42
  %i.cv = and i64 %.val.val15.i.i.i.i18.i, 144115188075855871
  %i.cw = add i64 %.val.val.val.i.i.i.i20.i, %i.cv
  %i.cx = and i64 %.val14.val16.i.i.i.i19.i, 144115188075855871
  %i.cy = add i64 %i.cx, %.val14.val.val.i.i.i.i12.i
  %i.cz = icmp ugt i64 %i.cw, %i.cy
  br i1 %i.cz, label %bb.k, label %"_ZSt10__pop_heapIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_RT0_.exit.i21.i"

bb.k:                                             ; preds = %bb.j
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0133.i.i.i.i13.i
  store ptr %.val.i.i.i.i16.i, ptr %i.da, align 8, !tbaa !89
  %.not3.i.i23.i = icmp eq i64 %.048.i.i.i.i15.i, 0
  br i1 %.not3.i.i23.i, label %"_ZSt10__pop_heapIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_RT0_.exit.i21.i", label %bb.j, !llvm.loop !990

"_ZSt10__pop_heapIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_RT0_.exit.i21.i": ; preds = %bb.k, %bb.j, %bb.i
  %.013.lcssa.i.i.i.i22.i = phi i64 [ 0, %bb.i ], [ %.0133.i.i.i.i13.i, %bb.j ], [ 0, %bb.k ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i22.i
  store ptr %i.bf, ptr %i.db, align 8, !tbaa !89
  %i.dc = icmp sgt i64 %i.bi, 8
  br i1 %i.dc, label %.lr.ph.i5.i, label %"_ZSt14__partial_sortIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_T0_.exit", !llvm.loop !992

.lr.ph48:                                         ; preds = %.lr.ph, %bb.b
  %.0172447 = phi i64 [ %i.de, %bb.b ], [ %2, %.lr.ph ]
  %.02546 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.dd = phi i64 [ %i.eu, %bb.b ], [ %i.c, %.lr.ph ]
  %i.de = add nsw i64 %.0172447, -1               ; 3 uses
  %i.df = lshr i64 %i.dd, 4
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds i8, ptr %.02546, i64 -8 ; 3 uses
  %.val29.i.i = load ptr, ptr %i.e, align 8, !tbaa !89 ; 4 uses
  %.val30.i.i = load ptr, ptr %i.dg, align 8, !tbaa !89 ; 4 uses
  %i.di = getelementptr i8, ptr %.val29.i.i, i64 8
  %.val29.val.i.i = load ptr, ptr %i.di, align 8, !tbaa !62
  %i.dj = getelementptr i8, ptr %.val29.i.i, i64 16
  %.val29.val31.i.i = load i64, ptr %i.dj, align 8
  %i.dk = getelementptr i8, ptr %.val30.i.i, i64 8
  %.val30.val.i.i = load ptr, ptr %i.dk, align 8, !tbaa !62
  %i.dl = getelementptr i8, ptr %.val30.i.i, i64 16
  %.val30.val32.i.i = load i64, ptr %i.dl, align 8
  %.val29.val.val.i.i = load i64, ptr %.val29.val.i.i, align 8, !tbaa !42
  %.val30.val.val.i.i = load i64, ptr %.val30.val.i.i, align 8, !tbaa !42
  %i.dm = and i64 %.val29.val31.i.i, 144115188075855871
  %i.dn = add i64 %.val29.val.val.i.i, %i.dm      ; 3 uses
  %i.do = and i64 %.val30.val32.i.i, 144115188075855871
  %i.dp = add i64 %.val30.val.val.i.i, %i.do      ; 3 uses
  %i.dq = icmp ugt i64 %i.dn, %i.dp
  %.val28.i.i = load ptr, ptr %i.dh, align 8, !tbaa !89 ; 4 uses
  %i.dr = getelementptr i8, ptr %.val28.i.i, i64 8
  %.val28.val.i.i = load ptr, ptr %i.dr, align 8, !tbaa !62
  %i.ds = getelementptr i8, ptr %.val28.i.i, i64 16
  %.val28.val34.i.i = load i64, ptr %i.ds, align 8
  %.val28.val.val.i.i = load i64, ptr %.val28.val.i.i, align 8, !tbaa !42
  %i.dt = and i64 %.val28.val34.i.i, 144115188075855871
  %i.du = add i64 %i.dt, %.val28.val.val.i.i      ; 4 uses
  br i1 %i.dq, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph48
  %i.dv = icmp ugt i64 %i.dp, %i.du
  br i1 %i.dv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dw = load ptr, ptr %0, align 8, !tbaa !89
  store ptr %.val30.i.i, ptr %0, align 8, !tbaa !89
  store ptr %i.dw, ptr %i.dg, align 8, !tbaa !89
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.dx = icmp ugt i64 %i.dn, %i.du
  %i.dy = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  br i1 %i.dx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %.val28.i.i, ptr %0, align 8, !tbaa !89
  store ptr %i.dy, ptr %i.dh, align 8, !tbaa !89
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  store ptr %.val29.i.i, ptr %0, align 8, !tbaa !89
  store ptr %i.dy, ptr %i.e, align 8, !tbaa !89
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.q:                                             ; preds = %.lr.ph48
  %i.dz = icmp ugt i64 %i.dn, %i.du
  br i1 %i.dz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ea = load ptr, ptr %0, align 8, !tbaa !89
  store ptr %.val29.i.i, ptr %0, align 8, !tbaa !89
  store ptr %i.ea, ptr %i.e, align 8, !tbaa !89
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.eb = icmp ugt i64 %i.dp, %i.du
  %i.ec = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.val28.i.i, ptr %0, align 8, !tbaa !89
  store ptr %i.ec, ptr %i.dh, align 8, !tbaa !89
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.u:                                             ; preds = %bb.s
  store ptr %.val30.i.i, ptr %0, align 8, !tbaa !89
  store ptr %i.ec, ptr %i.dg, align 8, !tbaa !89
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader": ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i"

"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader", %bb.x
  %.013.i.i = phi ptr [ %.114.i.i, %bb.x ], [ %.02546, %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %.0.i.i = phi ptr [ %i.em, %bb.x ], [ %i.e, %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %.val15.i.i = load ptr, ptr %0, align 8, !tbaa !89 ; 2 uses
  %i.ed = getelementptr i8, ptr %.val15.i.i, i64 8
  %.val15.val.i.i = load ptr, ptr %i.ed, align 8, !tbaa !62
  %i.ee = getelementptr i8, ptr %.val15.i.i, i64 16
  %.val15.val17.i.i = load i64, ptr %i.ee, align 8
  %.val15.val.val.i.i = load i64, ptr %.val15.val.i.i, align 8, !tbaa !42
  %i.ef = and i64 %.val15.val17.i.i, 144115188075855871
  %i.eg = add i64 %.val15.val.val.i.i, %i.ef      ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i"
  %.1.i.i = phi ptr [ %.0.i.i, %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i" ], [ %i.em, %bb.v ] ; 8 uses
  %.1.val.i.i = load ptr, ptr %.1.i.i, align 8, !tbaa !89 ; 3 uses
  %i.eh = getelementptr i8, ptr %.1.val.i.i, i64 8
  %.1.val.val.i.i = load ptr, ptr %i.eh, align 8, !tbaa !62
  %i.ei = getelementptr i8, ptr %.1.val.i.i, i64 16
  %.1.val.val16.i.i = load i64, ptr %i.ei, align 8
  %.1.val.val.val.i.i = load i64, ptr %.1.val.val.i.i, align 8, !tbaa !42
  %i.ej = and i64 %.1.val.val16.i.i, 144115188075855871
  %i.ek = add i64 %.1.val.val.val.i.i, %i.ej
  %i.el = icmp ugt i64 %i.ek, %i.eg
  %i.em = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.el, label %bb.v, label %.preheader.i.i, !llvm.loop !993

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.v ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %.114.val.i.i = load ptr, ptr %.114.i.i, align 8, !tbaa !89 ; 3 uses
  %i.en = getelementptr i8, ptr %.114.val.i.i, i64 8
  %.114.val.val.i.i = load ptr, ptr %i.en, align 8, !tbaa !62
  %i.eo = getelementptr i8, ptr %.114.val.i.i, i64 16
  %.114.val.val19.i.i = load i64, ptr %i.eo, align 8
  %.114.val.val.val.i.i = load i64, ptr %.114.val.val.i.i, align 8, !tbaa !42
  %i.ep = and i64 %.114.val.val19.i.i, 144115188075855871
  %i.eq = add i64 %i.ep, %.114.val.val.val.i.i
  %i.er = icmp ugt i64 %i.eg, %i.eq
  br i1 %i.er, label %.preheader.i.i, label %bb.w, !llvm.loop !994

bb.w:                                             ; preds = %.preheader.i.i
  %i.es = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.es, label %bb.x, label %"_ZSt27__unguarded_partition_pivotIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEET_SL_SL_T0_.exit"

bb.x:                                             ; preds = %bb.w
  store ptr %.114.val.i.i, ptr %.1.i.i, align 8, !tbaa !89
  store ptr %.1.val.i.i, ptr %.114.i.i, align 8, !tbaa !89
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_SL_T0_.exit.i", !llvm.loop !995

"_ZSt27__unguarded_partition_pivotIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEET_SL_SL_T0_.exit": ; preds = %bb.w
  tail call fastcc void @"_ZSt16__introsort_loopIPPN4llvm7jitlink6SymbolElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_T0_T1_"(ptr noundef nonnull %.1.i.i, ptr noundef %.02546, i64 noundef %i.de)
  %i.et = ptrtoint ptr %.1.i.i to i64
  %i.eu = sub i64 %i.et, %i.a                     ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, 128
  br i1 %i.ev, label %bb.b, label %"_ZSt14__partial_sortIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_T0_.exit", !llvm.loop !988

"_ZSt14__partial_sortIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEET_SL_SL_T0_.exit", %"_ZSt10__pop_heapIPPN4llvm7jitlink6SymbolEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_9LinkGraph14splitBlockImplESt6vectorIPNS1_5BlockESaISB_EEPSt8optionalINS0_11SmallVectorIS3_Lj8EEEEE3$_0EEEvT_SL_SL_RT0_.exit.i21.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %3 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %4 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %5 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %6 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %7 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %8 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %9 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %.sroa.5.i.i9.i = alloca <{ [4 x i8], i64, i8 }>, align 4 ; 4 uses
  %.sroa.5.i.i.i = alloca <{ [4 x i8], i64, i8 }>, align 4 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i22 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i22, 5               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEET_SQ_SQ_T0_.exit"
  %i.j = icmp eq i64 %i.bz, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph40, !llvm.loop !996

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i25.lcssa = phi i64 [ %.fr.i22, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i25.lcssa, 5               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i25.lcssa, 32
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_SR_T1_T2_.exit.i.i.i", %._crit_edge
  %.08.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ap, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_SR_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.u = getelementptr inbounds [32 x i8], ptr %0, i64 %.08.i.i.i ; 3 uses
  %.sroa.09.0.copyload.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !89
  %.sroa.410.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.410.0.copyload.i.i.i = load i32, ptr %.sroa.410.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.sroa.511.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.511.0..sroa.0.0..sroa_idx.i.i.i, i64 13, i1 false)
  %i.v = icmp slt i64 %.08.i.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.041.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [32 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [32 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.val.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !69
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val1.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !69
  %i.ad = icmp ult i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.z, i64 %i.x ; 4 uses
  %i.ae = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.af, ptr noundef nonnull align 8 dereferenceable(25) %i.ae, i64 25, i1 false), !tbaa.struct !136
  %i.ag = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !997

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.t, ptr noundef nonnull align 8 dereferenceable(25) %i.s, i64 25, i1 false), !tbaa.struct !136
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i.i, %.08.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_SR_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val.i.i.i.i.i.i = load i32, ptr %i.ak, align 8, !tbaa !69
  %i.al = icmp ult i32 %.val.i.i.i.i.i.i, %.sroa.410.0.copyload.i.i.i
  br i1 %i.al, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_SR_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.010.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.am, ptr noundef nonnull align 8 dereferenceable(25) %i.aj, i64 25, i1 false), !tbaa.struct !136
  %i.an = icmp sgt i64 %.0911.i.i.i.i.i, %.08.i.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_SR_T1_T2_.exit.i.i.i", !llvm.loop !998

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_SR_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 3 uses
  store ptr %.sroa.09.0.copyload.i.i.i, ptr %i.ao, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx37.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %.sroa.410.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx37.i.i.i.i, align 8, !tbaa !70
  %.sroa.5.0..sroa_idx39.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.0..sroa_idx39.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i.i, i64 13, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.ap = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_RT0_.exit.i.i", label %bb.c, !llvm.loop !999

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_T0_SR_T1_T2_.exit.i.i.i"
  %i.aq = icmp sgt i64 %.fr.i25.lcssa, 32
  br i1 %i.aq, label %.lr.ph.i10.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_T0_.exit"

.lr.ph.i10.i:                                     ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_RT0_.exit.i23.i"
  %.sroa.0.03.i.i = phi ptr [ %i.ar, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_RT0_.exit.i23.i" ], [ %storemerge23.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_RT0_.exit.i.i" ] ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 4 uses
  %.sroa.08.0.copyload.i.i11.i = load ptr, ptr %i.ar, align 8, !tbaa !89
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %.sroa.49.0.copyload.i.i.i = load i32, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.sroa.510.0..sroa.0.0..sroa_idx.i.i12.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -20
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i9.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.510.0..sroa.0.0..sroa_idx.i.i12.i, i64 13, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ar, ptr noundef nonnull align 8 dereferenceable(25) %0, i64 25, i1 false), !tbaa.struct !136
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.a                     ; 3 uses
  %i.au = ashr exact i64 %i.at, 5                 ; 3 uses
  %i.av = add nsw i64 %i.au, -1
  %i.aw = lshr i64 %i.av, 1
  %i.ax = icmp sgt i64 %i.au, 2
  br i1 %i.ax, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i10.i, %.lr.ph.i.i.i29.i
  %.041.i.i.i30.i = phi i64 [ %spec.select.i.i.i33.i, %.lr.ph.i.i.i29.i ], [ 0, %.lr.ph.i10.i ] ; 2 uses
  %i.ay = shl i64 %.041.i.i.i30.i, 1              ; 2 uses
  %i.az = add i64 %i.ay, 2                        ; 2 uses
  %i.ba = getelementptr inbounds [32 x i8], ptr %0, i64 %i.az
  %i.bb = or disjoint i64 %i.ay, 1                ; 2 uses
  %i.bc = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %.val.i.i.i.i31.i = load i32, ptr %i.bd, align 8, !tbaa !69
  %i.be = getelementptr i8, ptr %i.bc, i64 8
  %.val1.i.i.i.i32.i = load i32, ptr %i.be, align 8, !tbaa !69
  %i.bf = icmp ult i32 %.val.i.i.i.i31.i, %.val1.i.i.i.i32.i
  %spec.select.i.i.i33.i = select i1 %i.bf, i64 %i.bb, i64 %i.az ; 4 uses
  %i.bg = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i33.i
  %i.bh = getelementptr inbounds [32 x i8], ptr %0, i64 %.041.i.i.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bh, ptr noundef nonnull align 8 dereferenceable(25) %i.bg, i64 25, i1 false), !tbaa.struct !136
  %i.bi = icmp slt i64 %spec.select.i.i.i33.i, %i.aw
  br i1 %i.bi, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i, !llvm.loop !997

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i10.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i10.i ], [ %spec.select.i.i.i33.i, %.lr.ph.i.i.i29.i ] ; 5 uses
  %i.bj = and i64 %i.at, 32
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bl = add nsw i64 %i.au, -2
  %i.bm = ashr exact i64 %i.bl, 1
  %i.bn = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bm
  br i1 %i.bn, label %.thread.i.i28.i, label %bb.h

.thread.i.i28.i:                                  ; preds = %bb.g
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bp = or disjoint i64 %i.bo, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bp
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.br, ptr noundef nonnull align 8 dereferenceable(25) %i.bq, i64 25, i1 false), !tbaa.struct !136
  br label %.lr.ph.i.i.i.i18.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_RT0_.exit.i23.i", label %.lr.ph.i.i.i.i18.i.preheader

.lr.ph.i.i.i.i18.i.preheader:                     ; preds = %bb.h, %.thread.i.i28.i
  %.010.i.i.i.i19.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bp, %.thread.i.i28.i ]
  br label %.lr.ph.i.i.i.i18.i

.lr.ph.i.i.i.i18.i:                               ; preds = %.lr.ph.i.i.i.i18.i.preheader, %bb.i
  %.010.i.i.i.i19.i = phi i64 [ %.0911.i.i1213.i.i21.i, %bb.i ], [ %.010.i.i.i.i19.i.ph, %.lr.ph.i.i.i.i18.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i20.i = add nsw i64 %.010.i.i.i.i19.i, -1
  %.0911.i.i1213.i.i21.i = lshr i64 %.0911.in.i.i.i.i20.i, 1 ; 3 uses
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0911.i.i1213.i.i21.i ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %.val.i.i.i.i.i22.i = load i32, ptr %i.bt, align 8, !tbaa !69
  %i.bu = icmp ult i32 %.val.i.i.i.i.i22.i, %.sroa.49.0.copyload.i.i.i
  br i1 %i.bu, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_RT0_.exit.i23.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i18.i
  %i.bv = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i.i19.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bv, ptr noundef nonnull align 8 dereferenceable(25) %i.bs, i64 25, i1 false), !tbaa.struct !136
  %.not14.i.i27.i = icmp eq i64 %.0911.i.i1213.i.i21.i, 0
  br i1 %.not14.i.i27.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_RT0_.exit.i23.i", label %.lr.ph.i.i.i.i18.i, !llvm.loop !998

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_RT0_.exit.i23.i": ; preds = %bb.i, %.lr.ph.i.i.i.i18.i, %bb.h
  %.0.lcssa.i.i.i.i24.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i19.i, %.lr.ph.i.i.i.i18.i ], [ 0, %bb.i ]
  %i.bw = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i24.i ; 3 uses
  store ptr %.sroa.08.0.copyload.i.i11.i, ptr %i.bw, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx37.i.i.i25.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %.sroa.49.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx37.i.i.i25.i, align 8, !tbaa !70
  %.sroa.5.0..sroa_idx39.i.i.i26.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.0..sroa_idx39.i.i.i26.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i9.i, i64 13, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i9.i)
  %i.bx = icmp sgt i64 %i.at, 32
  br i1 %i.bx, label %.lr.ph.i10.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_T0_.exit", !llvm.loop !1000

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2339 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02438 = phi i64 [ %i.bz, %bb.b ], [ %2, %.lr.ph ]
  %i.by = phi i64 [ %i.cs, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bz = add nsw i64 %.02438, -1                 ; 3 uses
  %i.ca = lshr i64 %i.by, 1
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ca ; 5 uses
  %i.cc = getelementptr inbounds i8, ptr %storemerge2339, i64 -32 ; 4 uses
  %.val.i.i.i = load i32, ptr %i.g, align 8, !tbaa !69 ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 8
  %.val1.i.i.i = load i32, ptr %i.cd, align 8, !tbaa !69 ; 3 uses
  %i.ce = icmp ult i32 %.val.i.i.i, %.val1.i.i.i
  %i.cf = getelementptr i8, ptr %storemerge2339, i64 -24
  %.val1.i27.i.i = load i32, ptr %i.cf, align 8, !tbaa !69 ; 4 uses
  br i1 %i.ce, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph40
  %i.cg = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.cb, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cb, ptr noundef nonnull align 8 dereferenceable(25) %9, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.ch = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.cc, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cc, ptr noundef nonnull align 8 dereferenceable(25) %8, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.f, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, ptr noundef nonnull align 8 dereferenceable(25) %7, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph40
  %i.ci = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ci, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.f, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, ptr noundef nonnull align 8 dereferenceable(25) %6, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.cj = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.cc, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cc, ptr noundef nonnull align 8 dereferenceable(25) %5, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.cb, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cb, ptr noundef nonnull align 8 dereferenceable(25) %4, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cm, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2339, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %i.h, align 8, !tbaa !69 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i" ], [ %i.cm, %bb.t ] ; 9 uses
  %i.ck = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i32, ptr %i.ck, align 8, !tbaa !69
  %i.cl = icmp ult i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br i1 %i.cl, label %bb.t, label %.preheader.i.i, !llvm.loop !1001

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.cn = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %.val1.i9.i.i = load i32, ptr %i.cn, align 8, !tbaa !69
  %i.co = icmp ult i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.co, label %.preheader.i.i, label %bb.u, !llvm.loop !1002

bb.u:                                             ; preds = %.preheader.i.i
  %i.cp = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cp, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEET_SQ_SQ_T0_.exit"

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.1.i.i, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(25) %3, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_SQ_T0_.exit.i", !llvm.loop !1003

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEET_SQ_SQ_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2339, i64 noundef %i.bz)
  %i.cq = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cr = sub i64 %i.cq, %i.a
  %.fr.i = freeze i64 %i.cr                       ; 2 uses
  %i.cs = ashr exact i64 %.fr.i, 5                ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 16
  br i1 %i.ct, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_T0_.exit", !llvm.loop !996

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEET_SQ_SQ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_SQ_RT0_.exit.i23.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph14splitBlockImplES6_IPNS3_5BlockESaISE_EEPSt8optionalINS2_11SmallVectorIPNS3_6SymbolELj8EEEEE3$_2EEEvT_SQ_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !142, !noalias !1008 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143, !noalias !1008 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !144, !noalias !1008 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !80     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !70
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !152

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !80
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit, label %bb.c, !prof !134

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !70
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !153, !llvm.loop !13

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !204
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !145
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E22findBucketForInsertionIS4_EEPSE_RKT_SI_.exit, label %bb.d, !prof !134

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
end_hunk_3
begin_hunk_4_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_T0_T1_":bb.a
  %i.bw = icmp sgt i64 %i.bt, 2
  br i1 %i.bw, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bx = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.by = add i64 %i.bx, 2                        ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.by
  %i.ca = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ca
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !80
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !80
  %.val.i.i.i.i21.i = load i64, ptr %i.cc, align 8, !tbaa !42
  %.val1.i.i.i.i22.i = load i64, ptr %i.cd, align 8, !tbaa !42
  %i.ce = icmp ult i64 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.ce, i64 %i.ca, i64 %i.by ; 4 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i23.i
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !80
  %i.ch = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i20.i
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !80
  %i.ci = icmp slt i64 %spec.select.i.i.i23.i, %i.bv
  br i1 %i.ci, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !1042

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cj = and i64 %i.bs, 8
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cl = add nsw i64 %i.bt, -2
  %i.cm = ashr exact i64 %i.cl, 1
  %i.cn = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cm
  br i1 %i.cn, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.co = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cp = or disjoint i64 %i.co, 1                ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !80
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !80
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cp, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %.val.val.i.i.i.i14.i = load i64, ptr %i.bp, align 8, !tbaa !42
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i78.i.i.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !80 ; 2 uses
  %.val.i.i.i.i.i17.i = load i64, ptr %i.cu, align 8, !tbaa !42
  %i.cv = icmp ult i64 %.val.i.i.i.i.i17.i, %.val.val.i.i.i.i14.i
  br i1 %i.cv, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i15.i
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !80
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_RT0_.exit.i.i", label %bb.k, !llvm.loop !1043

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.cx = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bp, ptr %i.cx, align 8, !tbaa !80
  %i.cy = icmp sgt i64 %i.bs, 8
  br i1 %i.cy, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_T0_.exit", !llvm.loop !1045

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.da, %bb.b ], [ %2, %.lr.ph ]
  %i.cz = phi i64 [ %i.dz, %bb.b ], [ %i.d, %.lr.ph ]
  %i.da = add nsw i64 %.02752, -1                 ; 3 uses
  %i.db = lshr i64 %i.cz, 1
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.db ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !80  ; 3 uses
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !80 ; 3 uses
  %.val.i.i.i = load i64, ptr %i.de, align 8, !tbaa !42 ; 3 uses
  %.val1.i.i.i = load i64, ptr %i.df, align 8, !tbaa !42 ; 3 uses
  %i.dg = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !80 ; 3 uses
  %.val1.i27.i.i = load i64, ptr %i.dh, align 8, !tbaa !42 ; 4 uses
  br i1 %i.dg, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph54
  %i.di = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.di, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dj = load ptr, ptr %.fr29, align 8, !tbaa !80
  store ptr %i.df, ptr %.fr29, align 8, !tbaa !80
  store ptr %i.dj, ptr %i.dc, align 8, !tbaa !80
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dk = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  %i.dl = load ptr, ptr %.fr29, align 8, !tbaa !80 ; 2 uses
  br i1 %i.dk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.dh, ptr %.fr29, align 8, !tbaa !80
  store ptr %i.dl, ptr %i.dd, align 8, !tbaa !80
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store ptr %i.de, ptr %.fr29, align 8, !tbaa !80
  store ptr %i.dl, ptr %i.f, align 8, !tbaa !80
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph54
  %i.dm = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dn = load ptr, ptr %.fr29, align 8, !tbaa !80
  store ptr %i.de, ptr %.fr29, align 8, !tbaa !80
  store ptr %i.dn, ptr %i.f, align 8, !tbaa !80
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.do = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  %i.dp = load ptr, ptr %.fr29, align 8, !tbaa !80 ; 2 uses
  br i1 %i.do, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.dh, ptr %.fr29, align 8, !tbaa !80
  store ptr %i.dp, ptr %i.dd, align 8, !tbaa !80
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store ptr %i.df, ptr %.fr29, align 8, !tbaa !80
  store ptr %i.dp, ptr %i.dc, align 8, !tbaa !80
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.dt, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2653, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i.preheader" ]
  %i.dq = load ptr, ptr %.fr29, align 8, !tbaa !80
  %.val1.i.i13.i = load i64, ptr %i.dq, align 8, !tbaa !42 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i" ], [ %i.dt, %bb.w ] ; 8 uses
  %i.dr = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !80 ; 2 uses
  %.val.i.i14.i = load i64, ptr %i.dr, align 8, !tbaa !42
  %i.ds = icmp ult i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ds, label %bb.w, label %.preheader.i.i, !llvm.loop !1046

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.du = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !80 ; 2 uses
  %.val1.i9.i.i = load i64, ptr %i.du, align 8, !tbaa !42
  %i.dv = icmp ult i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.dv, label %.preheader.i.i, label %bb.x, !llvm.loop !1047

bb.x:                                             ; preds = %.preheader.i.i
  %i.dw = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dw, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEET_SI_SI_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store ptr %i.du, ptr %.sroa.012.1.i.i, align 8, !tbaa !80
  store ptr %i.dr, ptr %.sroa.0.1.i.i, align 8, !tbaa !80
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_SI_T0_.exit.i", !llvm.loop !1048

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEET_SI_SI_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2653, i64 noundef %i.da)
  %i.dx = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dy = sub i64 %i.dx, %i.a                     ; 2 uses
  %i.dz = ashr exact i64 %i.dy, 3                 ; 2 uses
  %i.ea = icmp sgt i64 %i.dz, 16
  br i1 %i.ea, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_T0_.exit", !llvm.loop !1041

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEET_SI_SI_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_2EEEvT_SI_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %3 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %4 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %5 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %6 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %7 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %8 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %9 = alloca %"class.llvm::jitlink::Edge", align 8 ; 4 uses
  %.sroa.5.i.i9.i = alloca <{ [4 x i8], i64, i8 }>, align 4 ; 4 uses
  %.sroa.5.i.i.i = alloca <{ [4 x i8], i64, i8 }>, align 4 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i22 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i22, 5               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEET_SH_SH_T0_.exit"
  %i.j = icmp eq i64 %i.bz, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph40, !llvm.loop !1049

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i25.lcssa = phi i64 [ %.fr.i22, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i25.lcssa, 5               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i25.lcssa, 32
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_SI_T1_T2_.exit.i.i.i", %._crit_edge
  %.08.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ap, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_SI_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.u = getelementptr inbounds [32 x i8], ptr %0, i64 %.08.i.i.i ; 3 uses
  %.sroa.09.0.copyload.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !89
  %.sroa.410.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.410.0.copyload.i.i.i = load i32, ptr %.sroa.410.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.sroa.511.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.511.0..sroa.0.0..sroa_idx.i.i.i, i64 13, i1 false)
  %i.v = icmp slt i64 %.08.i.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.041.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [32 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [32 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.val.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !69
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val1.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !69
  %i.ad = icmp ult i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.z, i64 %i.x ; 4 uses
  %i.ae = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.af, ptr noundef nonnull align 8 dereferenceable(25) %i.ae, i64 25, i1 false), !tbaa.struct !136
  %i.ag = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1050

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.t, ptr noundef nonnull align 8 dereferenceable(25) %i.s, i64 25, i1 false), !tbaa.struct !136
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i.i, %.08.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_SI_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val.i.i.i.i.i.i = load i32, ptr %i.ak, align 8, !tbaa !69
  %i.al = icmp ult i32 %.val.i.i.i.i.i.i, %.sroa.410.0.copyload.i.i.i
  br i1 %i.al, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_SI_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.010.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.am, ptr noundef nonnull align 8 dereferenceable(25) %i.aj, i64 25, i1 false), !tbaa.struct !136
  %i.an = icmp sgt i64 %.0911.i.i.i.i.i, %.08.i.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_SI_T1_T2_.exit.i.i.i", !llvm.loop !1051

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_SI_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 3 uses
  store ptr %.sroa.09.0.copyload.i.i.i, ptr %i.ao, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx37.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %.sroa.410.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx37.i.i.i.i, align 8, !tbaa !70
  %.sroa.5.0..sroa_idx39.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.0..sroa_idx39.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i.i, i64 13, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.ap = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_RT0_.exit.i.i", label %bb.c, !llvm.loop !1052

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_SI_T1_T2_.exit.i.i.i"
  %i.aq = icmp sgt i64 %.fr.i25.lcssa, 32
  br i1 %i.aq, label %.lr.ph.i10.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_T0_.exit"

.lr.ph.i10.i:                                     ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_RT0_.exit.i23.i"
  %.sroa.0.03.i.i = phi ptr [ %i.ar, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_RT0_.exit.i23.i" ], [ %storemerge23.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_RT0_.exit.i.i" ] ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 4 uses
  %.sroa.08.0.copyload.i.i11.i = load ptr, ptr %i.ar, align 8, !tbaa !89
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %.sroa.49.0.copyload.i.i.i = load i32, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.sroa.510.0..sroa.0.0..sroa_idx.i.i12.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -20
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i9.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.510.0..sroa.0.0..sroa_idx.i.i12.i, i64 13, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ar, ptr noundef nonnull align 8 dereferenceable(25) %0, i64 25, i1 false), !tbaa.struct !136
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.a                     ; 3 uses
  %i.au = ashr exact i64 %i.at, 5                 ; 3 uses
  %i.av = add nsw i64 %i.au, -1
  %i.aw = lshr i64 %i.av, 1
  %i.ax = icmp sgt i64 %i.au, 2
  br i1 %i.ax, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i10.i, %.lr.ph.i.i.i29.i
  %.041.i.i.i30.i = phi i64 [ %spec.select.i.i.i33.i, %.lr.ph.i.i.i29.i ], [ 0, %.lr.ph.i10.i ] ; 2 uses
  %i.ay = shl i64 %.041.i.i.i30.i, 1              ; 2 uses
  %i.az = add i64 %i.ay, 2                        ; 2 uses
  %i.ba = getelementptr inbounds [32 x i8], ptr %0, i64 %i.az
  %i.bb = or disjoint i64 %i.ay, 1                ; 2 uses
  %i.bc = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %.val.i.i.i.i31.i = load i32, ptr %i.bd, align 8, !tbaa !69
  %i.be = getelementptr i8, ptr %i.bc, i64 8
  %.val1.i.i.i.i32.i = load i32, ptr %i.be, align 8, !tbaa !69
  %i.bf = icmp ult i32 %.val.i.i.i.i31.i, %.val1.i.i.i.i32.i
  %spec.select.i.i.i33.i = select i1 %i.bf, i64 %i.bb, i64 %i.az ; 4 uses
  %i.bg = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i33.i
  %i.bh = getelementptr inbounds [32 x i8], ptr %0, i64 %.041.i.i.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bh, ptr noundef nonnull align 8 dereferenceable(25) %i.bg, i64 25, i1 false), !tbaa.struct !136
  %i.bi = icmp slt i64 %spec.select.i.i.i33.i, %i.aw
  br i1 %i.bi, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i, !llvm.loop !1050

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i10.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i10.i ], [ %spec.select.i.i.i33.i, %.lr.ph.i.i.i29.i ] ; 5 uses
  %i.bj = and i64 %i.at, 32
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bl = add nsw i64 %i.au, -2
  %i.bm = ashr exact i64 %i.bl, 1
  %i.bn = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bm
  br i1 %i.bn, label %.thread.i.i28.i, label %bb.h

.thread.i.i28.i:                                  ; preds = %bb.g
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bp = or disjoint i64 %i.bo, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bp
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.br, ptr noundef nonnull align 8 dereferenceable(25) %i.bq, i64 25, i1 false), !tbaa.struct !136
  br label %.lr.ph.i.i.i.i18.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_RT0_.exit.i23.i", label %.lr.ph.i.i.i.i18.i.preheader

.lr.ph.i.i.i.i18.i.preheader:                     ; preds = %bb.h, %.thread.i.i28.i
  %.010.i.i.i.i19.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bp, %.thread.i.i28.i ]
  br label %.lr.ph.i.i.i.i18.i

.lr.ph.i.i.i.i18.i:                               ; preds = %.lr.ph.i.i.i.i18.i.preheader, %bb.i
  %.010.i.i.i.i19.i = phi i64 [ %.0911.i.i1213.i.i21.i, %bb.i ], [ %.010.i.i.i.i19.i.ph, %.lr.ph.i.i.i.i18.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i20.i = add nsw i64 %.010.i.i.i.i19.i, -1
  %.0911.i.i1213.i.i21.i = lshr i64 %.0911.in.i.i.i.i20.i, 1 ; 3 uses
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0911.i.i1213.i.i21.i ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %.val.i.i.i.i.i22.i = load i32, ptr %i.bt, align 8, !tbaa !69
  %i.bu = icmp ult i32 %.val.i.i.i.i.i22.i, %.sroa.49.0.copyload.i.i.i
  br i1 %i.bu, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_RT0_.exit.i23.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i18.i
  %i.bv = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i.i19.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bv, ptr noundef nonnull align 8 dereferenceable(25) %i.bs, i64 25, i1 false), !tbaa.struct !136
  %.not14.i.i27.i = icmp eq i64 %.0911.i.i1213.i.i21.i, 0
  br i1 %.not14.i.i27.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_RT0_.exit.i23.i", label %.lr.ph.i.i.i.i18.i, !llvm.loop !1051

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_RT0_.exit.i23.i": ; preds = %bb.i, %.lr.ph.i.i.i.i18.i, %bb.h
  %.0.lcssa.i.i.i.i24.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i19.i, %.lr.ph.i.i.i.i18.i ], [ 0, %bb.i ]
  %i.bw = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i24.i ; 3 uses
  store ptr %.sroa.08.0.copyload.i.i11.i, ptr %i.bw, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx37.i.i.i25.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %.sroa.49.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx37.i.i.i25.i, align 8, !tbaa !70
  %.sroa.5.0..sroa_idx39.i.i.i26.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.0..sroa_idx39.i.i.i26.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i9.i, i64 13, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i9.i)
  %i.bx = icmp sgt i64 %i.at, 32
  br i1 %i.bx, label %.lr.ph.i10.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_T0_.exit", !llvm.loop !1053

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2339 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02438 = phi i64 [ %i.bz, %bb.b ], [ %2, %.lr.ph ]
  %i.by = phi i64 [ %i.cs, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bz = add nsw i64 %.02438, -1                 ; 3 uses
  %i.ca = lshr i64 %i.by, 1
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ca ; 5 uses
  %i.cc = getelementptr inbounds i8, ptr %storemerge2339, i64 -32 ; 4 uses
  %.val.i.i.i = load i32, ptr %i.g, align 8, !tbaa !69 ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 8
  %.val1.i.i.i = load i32, ptr %i.cd, align 8, !tbaa !69 ; 3 uses
  %i.ce = icmp ult i32 %.val.i.i.i, %.val1.i.i.i
  %i.cf = getelementptr i8, ptr %storemerge2339, i64 -24
  %.val1.i27.i.i = load i32, ptr %i.cf, align 8, !tbaa !69 ; 4 uses
  br i1 %i.ce, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph40
  %i.cg = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.cb, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cb, ptr noundef nonnull align 8 dereferenceable(25) %9, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.ch = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.cc, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cc, ptr noundef nonnull align 8 dereferenceable(25) %8, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.f, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, ptr noundef nonnull align 8 dereferenceable(25) %7, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph40
  %i.ci = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ci, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.f, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, ptr noundef nonnull align 8 dereferenceable(25) %6, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.cj = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.cc, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cc, ptr noundef nonnull align 8 dereferenceable(25) %5, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.cb, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cb, ptr noundef nonnull align 8 dereferenceable(25) %4, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cm, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2339, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %i.h, align 8, !tbaa !69 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.cm, %bb.t ] ; 9 uses
  %i.ck = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i32, ptr %i.ck, align 8, !tbaa !69
  %i.cl = icmp ult i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br i1 %i.cl, label %bb.t, label %.preheader.i.i, !llvm.loop !1054

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.cn = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %.val1.i9.i.i = load i32, ptr %i.cn, align 8, !tbaa !69
  %i.co = icmp ult i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.co, label %.preheader.i.i, label %bb.u, !llvm.loop !1055

bb.u:                                             ; preds = %.preheader.i.i
  %i.cp = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cp, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEET_SH_SH_T0_.exit"

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, i64 32, i1 false), !tbaa.struct !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.1.i.i, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(25) %3, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_SH_T0_.exit.i", !llvm.loop !1056

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEET_SH_SH_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2339, i64 noundef %i.bz)
  %i.cq = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cr = sub i64 %i.cq, %i.a
  %.fr.i = freeze i64 %i.cr                       ; 2 uses
  %i.cs = ashr exact i64 %.fr.i, 5                ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 16
  br i1 %i.ct, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_T0_.exit", !llvm.loop !1049

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_SH_RT0_.exit.i23.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_RT0_.exit.i.i"
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZZN4llvm6detail18UniqueFunctionBaseIRNS_7jitlink6SymbolEJRNS2_9LinkGraphERNS2_7SectionEPS3_mEEC1IPFS4_S6_S8_S9_mESD_EET_NSA_8CalledAsIT0_EEENUlPKSA_S6_S8_S9_mE_8__invokeESJ_S6_S8_S9_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, i64 noundef %4) #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !125
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.a(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, i64 noundef %4) #26, !inline_history !1057
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZZN4llvm6detail18UniqueFunctionBaseIRNS_7jitlink6SymbolEJRNS2_9LinkGraphERNS2_7SectionES4_EEC1IPFS4_S6_S8_S4_ESC_EET_NS9_8CalledAsIT0_EEENUlPKS9_S6_S8_S4_E_8__invokeESI_S6_S8_S4_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !125
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.a(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #26, !inline_history !1058
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
end_hunk_4
