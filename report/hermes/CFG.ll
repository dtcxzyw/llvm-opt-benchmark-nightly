Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/CFG?download=true
inline.NumInlined: 3113
inline.NumDeleted: 1058
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE10setNewRootEPS2_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #13
  br label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 56) #13
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !64
  br label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i, %bb.a
  %i.p = phi ptr [ %.pre, %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !40
  %.not.i7 = icmp eq i32 %i.r, 0
  br i1 %.not.i7, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !41
  %.not.i.i.not = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.not, label %bb.e, label %_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7addRootEPS2_.exit, !prof !110

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 8) #14
  %.pre.i.i = load i32, ptr %i.q, align 8, !tbaa !40
  %i.w = zext i32 %.pre.i.i to i64
  br label %_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7addRootEPS2_.exit

_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7addRootEPS2_.exit: ; preds = %bb.d, %bb.e
  %i.x = phi i64 [ %i.w, %bb.e ], [ 0, %bb.d ]
  %i.y = load ptr, ptr %0, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = ptrtoint ptr %i.s to i64
  store i64 %i.aa, ptr %i.z, align 1
  %i.ab = load i32, ptr %i.q, align 8, !tbaa !40
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !40
  br label %bb.n

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ad = load ptr, ptr %0, align 8, !tbaa !39
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !63
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !63
  %i.af = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !64
  %i.ak = inttoptr i64 %i.aj to ptr               ; 4 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !76, !noalias !260 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !69, !noalias !260
  %.not.i.i.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !64, !noalias !260
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !76, !noalias !260
  br label %_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !68, !noalias !260 ; 4 uses
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 5 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.i, label %_ZNKSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16, !noalias !260
  unreachable

_ZNKSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975)
  %i.ba = select i1 %i.ay, i64 1152921504606846975, i64 %i.az ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ba, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #15, !noalias !260 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 2 uses
  store ptr %i.ak, ptr %i.bd, align 8, !tbaa !64, !noalias !260
  %i.be = icmp sgt i64 %i.au, 0
  br i1 %i.be, label %bb.j, label %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %i.ar, i64 %i.au, i1 false), !noalias !260
  br label %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i

_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !69, !noalias !260
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bi) #13, !noalias !260
  br label %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i
  store ptr %i.bc, ptr %i.al, align 8, !tbaa !68, !noalias !260
  store ptr %i.bf, ptr %i.am, align 8, !tbaa !76, !noalias !260
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bj, ptr %i.ao, align 8, !tbaa !69, !noalias !260
  br label %_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE.exit

_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE.exit: ; preds = %bb.g, %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !64 ; 4 uses
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !64
  %.not.i.i.i.i8 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i8, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit19, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i9, label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i10, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !69
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #13
  br label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i10

_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i10: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 56) #13
  %.pre25 = load ptr, ptr %i.ag, align 8, !tbaa !64
  br label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit19

_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit19: ; preds = %_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE.exit, %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i10
  %i.bs = phi ptr [ %i.ak, %_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE.exit ], [ %.pre25, %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i10 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.p, ptr %i.bt, align 8, !tbaa !94
  %i.bu = load ptr, ptr %i.ag, align 8, !tbaa !64
  call void @_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE11UpdateLevelEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bu)
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.bw = load ptr, ptr %0, align 8, !tbaa !39
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit19, %_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7addRootEPS2_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.p, ptr %i.bx, align 8, !tbaa !91
  ret ptr %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7addRootEPS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !41
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 8) #14
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !40
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !39
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = ptrtoint ptr %1 to i64
  store i64 %i.j, ptr %i.i, align 1
  %i.k = load i32, ptr %i.a, align 8, !tbaa !40
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE11UpdateLevelEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvh::SmallVector.45", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !81
  %i.g = add i32 %i.f, 1
  %i.h = icmp eq i32 %i.b, %i.g
  br i1 %i.h, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 64, ptr %i.k, align 4, !tbaa !41
  store ptr %0, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %2 = phi ptr [ %i.i, %bb.b ], [ %5, %._crit_edge ]
  %3 = phi ptr [ %i.i, %bb.b ], [ %6, %._crit_edge ] ; 2 uses
  %4 = phi i32 [ 1, %bb.b ], [ %.pr, %._crit_edge ] ; 2 uses
  %i.l = zext i32 %4 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64   ; 4 uses
  %i.p = add i32 %4, -1                           ; 3 uses
  store i32 %i.p, ptr %i.j, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !81
  %i.u = add i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 %i.u, ptr %i.v, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !88   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !88   ; 2 uses
  %.not1112 = icmp eq ptr %i.x, %i.z
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %5 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %2, %bb.c ] ; 3 uses
  %.pr = phi i32 [ %i.ar, %._crit_edge.loopexit ], [ %i.p, %bb.c ] ; 2 uses
  %6 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %3, %bb.c ]
  %.not.i = icmp eq i32 %.pr, 0
  br i1 %.not.i, label %bb.g, label %bb.c, !llvm.loop !261

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %i.aa = phi i32 [ %i.ar, %bb.f ], [ %i.p, %bb.c ] ; 3 uses
  %.sroa.07.013 = phi ptr [ %i.as, %bb.f ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.07.013, align 8, !tbaa !64 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !81
  %i.ai = add i32 %i.ah, 1
  %.not = icmp eq i32 %i.ad, %i.ai
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aj = load i32, ptr %i.k, align 4, !tbaa !41
  %.not.i6 = icmp ult i32 %i.aa, %i.aj
  br i1 %.not.i6, label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.i, i64 noundef 0, i64 noundef 8) #14
  %.pre.i = load i32, ptr %i.j, align 8, !tbaa !40
  br label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit

_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit: ; preds = %bb.d, %bb.e
  %i.ak = phi i32 [ %.pre.i, %bb.e ], [ %i.aa, %bb.d ]
  %i.al = load ptr, ptr %1, align 8, !tbaa !39
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = ptrtoint ptr %i.ab to i64
  store i64 %i.ao, ptr %i.an, align 1
  %i.ap = load i32, ptr %i.j, align 8, !tbaa !40
  %i.aq = add i32 %i.ap, 1                        ; 2 uses
  store i32 %i.aq, ptr %i.j, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit, %.lr.ph
  %i.ar = phi i32 [ %i.aq, %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 8 ; 2 uses
  %.not11 = icmp eq ptr %i.as, %i.z
  br i1 %.not11, label %._crit_edge.loopexit, label %.lr.ph

bb.g:                                             ; preds = %._crit_edge
  %i.at = icmp eq ptr %5, %i.i
  br i1 %i.at, label %_ZN4llvh11SmallVectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELj64EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %5) #14
  br label %_ZN4llvh11SmallVectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELj64EED2Ev.exit

_ZN4llvh11SmallVectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELj64EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN4llvh11SmallVectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELj64EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS2_EES6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.a, align 8, !tbaa !54
  tail call void @_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE7setIDomEPS3_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE7setIDomEPS3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88   ; 7 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.i = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = ashr i64 %i.j, 5                         ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.m = and i64 %i.j, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.e, i64 %i.m ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.y, %bb.g ] ; 9 uses
  %i.n = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !64
  %i.o = icmp eq ptr %i.n, %0
  br i1 %i.o, label %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = icmp eq ptr %i.t, %0
  br i1 %i.u, label %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit31, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.x = icmp eq ptr %i.w, %0
  br i1 %i.x, label %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit33, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.z = add nsw i64 %.052.i.i.i.i, -1
  %i.aa = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.aa, label %bb.c, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !7

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.h, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.b
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.j, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.ab = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.ab, label %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !64
  %i.ad = icmp eq ptr %i.ac, %0
  br i1 %i.ad, label %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.af = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !64
  %i.ag = icmp eq ptr %i.af, %0
  br i1 %i.ag, label %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.j
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.ah, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !64
  %i.aj = icmp eq ptr %i.ai, %0
  %spec.select.i.i.i.i = select i1 %i.aj, ptr %.sroa.032.2.i.i.i.i, ptr %i.g
  br label %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit

_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit

_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit31: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit

_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit33: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit

_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit: ; preds = %bb.c, %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit31, %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit33, %._crit_edge.i.i.i.i, %bb.h, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %i.g, %._crit_edge.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.h ], [ %i.am, %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit33 ], [ %i.ak, %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit ], [ %i.al, %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit31 ], [ %.sroa.032.051.i.i.i.i, %bb.c ]
  %i.an = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i to i64
  %i.ao = sub i64 %i.an, %i.i
  %i.ap = getelementptr inbounds i8, ptr %i.e, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.aq, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.h, %i.ar                     ; 3 uses
  %i.at = icmp sgt i64 %i.as, 8
  br i1 %i.at, label %bb.l, label %bb.m, !prof !74

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ap, ptr nonnull align 8 %i.aq, i64 %i.as, i1 false)
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !76
  br label %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit

bb.m:                                             ; preds = %bb.k
  %i.au = icmp eq i64 %i.as, 8
  br i1 %i.au, label %bb.n, label %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !64
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !64
  br label %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit

_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit: ; preds = %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit, %bb.l, %bb.m, %bb.n
  %i.aw = phi ptr [ %i.g, %bb.n ], [ %i.g, %bb.m ], [ %.pre.i.i, %bb.l ], [ %i.g, %_ZN4llvh4findIRSt6vectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS6_EES6_EEDTcl9adl_beginfp_EEOT_RKT0_.exit ]
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  store ptr %i.ax, ptr %i.f, align 8, !tbaa !76
  store ptr %1, ptr %i.a, align 8, !tbaa !94
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !69
  %.not.i.i3 = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  store ptr %0, ptr %i.ba, align 8, !tbaa !64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !76
  br label %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE9push_backEOS5_.exit

bb.p:                                             ; preds = %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !68 ; 4 uses
  %i.bf = ptrtoint ptr %i.ba to i64
  %i.bg = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 5 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.q, label %_ZNKSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.bj = ashr exact i64 %i.bh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #15 ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bh ; 2 uses
end_hunk_0
