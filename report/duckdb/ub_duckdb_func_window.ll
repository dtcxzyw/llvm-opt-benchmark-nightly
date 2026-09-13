Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_window?download=true
inline.NumInlined: 11766
inline.NumDeleted: 5032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb29WindowMergeSortTreeLocalState15ExecuteSortTaskERNS_16ExecutionContextERNS_14InterruptStateE:bb.a
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.a, %bb.ad, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit, %bb.g
  %i.br = atomicrmw add ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  ret void

bb.ag:                                            ; preds = %bb.v, %bb.ac, %bb.h, %bb.i, %bb.ae
  %.pn28.pn = phi { ptr, i32 } [ %i.bq, %bb.ae ], [ %i.t, %bb.h ], [ %i.u, %bb.i ], [ %.pn.pn.pn.pn, %bb.ac ], [ %i.az, %bb.v ]
  %i.bs = atomicrmw add ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  resume { ptr, i32 } %.pn28.pn
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb19WindowMergeSortTree20MeasurePayloadBlocksEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !278  ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !721
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13MergeSortTreeIjjSt4lessIjELm32ELm32EEESt14default_deleteIS4_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EE8AllocateEm(ptr noundef nonnull align 8 dereferenceable(112) %i.g, i64 noundef %i.d) ; 0 uses
  %i.i = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13MergeSortTreeIjjSt4lessIjELm32ELm32EEESt14default_deleteIS4_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_IjLb1ESaIjEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 noundef 0) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !758  ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !727  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp ugt i64 %i.d, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = sub nuw i64 %i.d, %i.q
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.s)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.d, %i.q
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.u, ptr %i.k, align 8, !tbaa !758
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !729
  %.not6 = icmp eq ptr %i.w, null
  br i1 %.not6, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13MergeSortTreeImmSt4lessImELm32ELm32EEESt14default_deleteIS4_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE8AllocateEm(ptr noundef nonnull align 8 dereferenceable(112) %i.x, i64 noundef %i.d) ; 0 uses
  %i.z = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13MergeSortTreeImmSt4lessImELm32ELm32EEESt14default_deleteIS4_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %i.z, i64 noundef 0) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !368 ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !366 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 3 uses
  %i.ai = icmp ugt i64 %i.d, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = sub nuw i64 %i.d, %i.ah
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef %i.aj)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %i.d, %i.ah
  br i1 %i.ak, label %bb.j, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.d ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.ac, %i.al
  br i1 %.not.i.i5, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  store ptr %i.al, ptr %i.ab, align 8, !tbaa !368
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.j, %bb.i, %bb.h, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %bb.e, %bb.d, %bb.c, %bb.f
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EE8AllocateEm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.1043", align 8   ; 12 uses
  %3 = alloca %"class.duckdb::vector.709", align 16 ; 12 uses
  %4 = alloca %"class.duckdb::vector.709", align 16 ; 11 uses
  %i.a = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.a, label %.noexc, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb6vectorIjLb1ESaIjEECI2St6vectorIjS1_EEmRKS1_.exit, label %.noexc28

.noexc28:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.b = shl nuw nsw i64 %1, 2
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #32 ; 5 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !79
  %i.e = getelementptr i8, ptr %i.c, i64 4        ; 3 uses
  %i.f = add nsw i64 %1, -1                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN6duckdb6vectorIjLb1ESaIjEECI2St6vectorIjS1_EEmRKS1_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc28
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.f, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.e, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZN6duckdb6vectorIjLb1ESaIjEECI2St6vectorIjS1_EEmRKS1_.exit

_ZN6duckdb6vectorIjLb1ESaIjEECI2St6vectorIjS1_EEmRKS1_.exit: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc28, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.d, %.noexc28 ], [ %i.d, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.075.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.c, %.noexc28 ], [ %i.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.e, %.noexc28 ], [ %i.h, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %.sroa.075.0, ptr %2, align 8, !tbaa !727
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.i, align 8, !tbaa !758
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sroa.11.0, ptr %i.j, align 8, !tbaa !760
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !725  ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !761
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.b, label %_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %_ZN6duckdb6vectorIjLb1ESaIjEECI2St6vectorIjS1_EEmRKS1_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %.sroa.075.0, ptr %i.m, align 8, !tbaa !727
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.q, align 8, !tbaa !758
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.11.0, ptr %i.r, align 8, !tbaa !760
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = load <2 x ptr>, ptr %i.k, align 8, !tbaa !757
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !757
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !760
  store ptr %i.v, ptr %i.u, align 8, !tbaa !760
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.w, ptr %i.l, align 8, !tbaa !725
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

bb.b:                                             ; preds = %_ZN6duckdb6vectorIjLb1ESaIjEECI2St6vectorIjS1_EEmRKS1_.exit
  invoke void @_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit32

_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %bb.b
  %.pr = load ptr, ptr %i.k, align 8, !tbaa !727  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %bb.c, %_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.x = load ptr, ptr %2, align 8, !tbaa !727    ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.x) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.d, %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.y = icmp samesign ugt i64 %1, 1
  br i1 %i.y, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.lr.ph, label %_ZNSt6vectorIjSaIjEED2Ev.exit49

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.lr.ph: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = shl nuw nsw i64 %1, 2
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.z, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit49:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit43, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store atomic i64 1, ptr %i.af seq_cst, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  store atomic i64 0, ptr %i.ag seq_cst, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.ah, align 8, !tbaa !769
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 32, ptr %i.ai, align 8, !tbaa !770
  %i.aj = add nuw nsw i64 %1, 31
  %i.ak = lshr i64 %i.aj, 5
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !771
  %i.am = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_IjLb1ESaIjEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef 0)
  ret ptr %i.am

_ZNSt6vectorIjSaIjEED2Ev.exit32:                  ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN6duckdb6vectorIjLb1ESaIjEEES3_ED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit51

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.lr.ph, %_ZNSt6vectorIjSaIjEED2Ev.exit43
  %.080 = phi i64 [ 1, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.lr.ph ], [ %i.ao, %_ZNSt6vectorIjSaIjEED2Ev.exit43 ] ; 2 uses
  %i.ao = shl i64 %.080, 5                        ; 5 uses
  %i.ap = add i64 %i.z, %i.ao
  %i.aq = call range(i64 5, 65) i64 @llvm.cttz.i64(i64 %i.ao, i1 true)
  %i.ar = lshr i64 %i.ap, %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #32
          to label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i unwind label %bb.h ; 4 uses

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.as, align 4, !tbaa !79
  %i.at = getelementptr i8, ptr %i.as, i64 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.at, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !79
  store ptr %i.as, ptr %3, align 16, !tbaa !727
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %1 ; 2 uses
  store ptr %i.au, ptr %i.aa, align 8, !tbaa !758
  store ptr %i.au, ptr %i.ab, align 16, !tbaa !760
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.av = icmp ugt i64 %i.ao, 32
  br i1 %i.av, label %bb.e, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit37

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i
  %i.aw = shl nuw i64 %i.ar, 5
  %i.ax = and i64 %.080, 576460752303423457
  %i.ay = or disjoint i64 %i.ax, 2
  %i.az = mul i64 %i.aw, %i.ay                    ; 5 uses
  %.not = icmp eq i64 %i.az, 0
  br i1 %.not, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = icmp ugt i64 %i.az, 2305843009213693951
  br i1 %i.ba, label %bb.g, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i61

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #31
          to label %.noexc69 unwind label %.loopexit.split-lp

.noexc69:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i61: ; preds = %bb.f
  %i.bb = shl nuw nsw i64 %i.az, 2
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #32
          to label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i65 unwind label %.loopexit ; 4 uses

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i65: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i61
  store i32 0, ptr %i.bc, align 4, !tbaa !79
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %i.be = shl nuw nsw i64 %i.az, 2
  %.idx.i.i.i.i.i31.i64 = add nsw i64 %i.be, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bd, i8 0, i64 %.idx.i.i.i.i.i31.i64, i1 false), !tbaa !79
  store ptr %i.bc, ptr %4, align 16, !tbaa !727
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.ad, align 8, !tbaa !758
  store ptr %i.bf, ptr %i.ae, align 16, !tbaa !760
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit37

bb.h:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i61
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt6vectorIjSaIjEE6resizeEm.exit37:             ; preds = %bb.e, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i65, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !725 ; 7 uses
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !761
  %.not.i38 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i38, label %bb.i, label %_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit.thread

_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit.thread: ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit37
  %i.bj = load <2 x ptr>, ptr %3, align 16, !tbaa !757
  store <2 x ptr> %i.bj, ptr %i.bh, align 8, !tbaa !757
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load ptr, ptr %i.ab, align 16, !tbaa !760
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !760
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load <2 x ptr>, ptr %4, align 16, !tbaa !757
  store <2 x ptr> %i.bn, ptr %i.bm, align 8, !tbaa !757
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bp = load ptr, ptr %i.ae, align 16, !tbaa !760
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !760
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store ptr %i.bq, ptr %i.l, align 8, !tbaa !725
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit41

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit37
  invoke void @_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE17_M_realloc_insertIJS4_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit unwind label %bb.l

_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit: ; preds = %bb.i
  %.pr79 = load ptr, ptr %4, align 16, !tbaa !727 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %.pr79, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIjSaIjEED2Ev.exit41, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr79) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit41

_ZNSt6vectorIjSaIjEED2Ev.exit41:                  ; preds = %_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit.thread, %_ZNSt6vectorISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.br = load ptr, ptr %3, align 16, !tbaa !727  ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIjSaIjEED2Ev.exit43, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit41
  call void @_ZdlPv(ptr noundef nonnull %i.br) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit43

_ZNSt6vectorIjSaIjEED2Ev.exit43:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit41, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.bs = icmp ult i64 %i.ao, %1
  br i1 %i.bs, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit49, !llvm.loop !1356

bb.l:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bu = load ptr, ptr %4, align 16, !tbaa !727  ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIjSaIjEED2Ev.exit45, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPv(ptr noundef nonnull %i.bu) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit45

_ZNSt6vectorIjSaIjEED2Ev.exit45:                  ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit45, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit45 ], [ %i.bg, %bb.h ]
  %i.bv = load ptr, ptr %3, align 16, !tbaa !727  ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIjSaIjEED2Ev.exit47, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.bv) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit47

_ZNSt6vectorIjSaIjEED2Ev.exit47:                  ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit51

_ZNSt6vectorIjSaIjEED2Ev.exit51:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit47, %_ZNSt6vectorIjSaIjEED2Ev.exit32
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.an, %_ZNSt6vectorIjSaIjEED2Ev.exit32 ], [ %.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit47 ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE8AllocateEm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.644", align 8    ; 12 uses
  %3 = alloca %"class.duckdb::vector.251", align 16 ; 12 uses
  %4 = alloca %"class.duckdb::vector.251", align 16 ; 11 uses
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb6vectorImLb1ESaImEECI2St6vectorImS1_EEmRKS1_.exit, label %.noexc28

.noexc28:                                         ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.b = shl nuw nsw i64 %1, 3
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #32 ; 5 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !278
  %i.e = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  %i.f = add nsw i64 %1, -1                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN6duckdb6vectorImLb1ESaImEECI2St6vectorImS1_EEmRKS1_.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc28
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.f, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !278
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZN6duckdb6vectorImLb1ESaImEECI2St6vectorImS1_EEmRKS1_.exit

_ZN6duckdb6vectorImLb1ESaImEECI2St6vectorImS1_EEmRKS1_.exit: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc28, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.d, %.noexc28 ], [ %i.d, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.075.0 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.c, %.noexc28 ], [ %i.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.e, %.noexc28 ], [ %i.h, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %.sroa.075.0, ptr %2, align 8, !tbaa !366
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.i, align 8, !tbaa !368
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sroa.11.0, ptr %i.j, align 8, !tbaa !369
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !641  ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !642
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.b, label %_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %_ZN6duckdb6vectorImLb1ESaImEECI2St6vectorImS1_EEmRKS1_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %.sroa.075.0, ptr %i.m, align 8, !tbaa !366
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.q, align 8, !tbaa !368
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.11.0, ptr %i.r, align 8, !tbaa !369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = load <2 x ptr>, ptr %i.k, align 8, !tbaa !414
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !414
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !369
  store ptr %i.v, ptr %i.u, align 8, !tbaa !369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.w, ptr %i.l, align 8, !tbaa !641
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

bb.b:                                             ; preds = %_ZN6duckdb6vectorImLb1ESaImEECI2St6vectorImS1_EEmRKS1_.exit
  invoke void @_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit unwind label %_ZNSt6vectorImSaImEED2Ev.exit32

_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %bb.b
  %.pr = load ptr, ptr %i.k, align 8, !tbaa !366  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %bb.c, %_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.x = load ptr, ptr %2, align 8, !tbaa !366    ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.x) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.y = icmp samesign ugt i64 %1, 1
  br i1 %i.y, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.lr.ph, label %_ZNSt6vectorImSaImEED2Ev.exit49

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.lr.ph: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = shl nuw nsw i64 %1, 3
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.z, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

_ZNSt6vectorImSaImEED2Ev.exit49:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit43, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store atomic i64 1, ptr %i.af seq_cst, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  store atomic i64 0, ptr %i.ag seq_cst, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.ah, align 8, !tbaa !622
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 32, ptr %i.ai, align 8, !tbaa !623
  %i.aj = add nuw nsw i64 %1, 31
  %i.ak = lshr i64 %i.aj, 5
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !624
  %i.am = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef 0)
  ret ptr %i.am

_ZNSt6vectorImSaImEED2Ev.exit32:                  ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN6duckdb6vectorImLb1ESaImEEES3_ED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit51

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.lr.ph, %_ZNSt6vectorImSaImEED2Ev.exit43
  %.080 = phi i64 [ 1, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.lr.ph ], [ %i.ao, %_ZNSt6vectorImSaImEED2Ev.exit43 ] ; 2 uses
  %i.ao = shl i64 %.080, 5                        ; 5 uses
  %i.ap = add i64 %i.z, %i.ao
  %i.aq = call range(i64 5, 65) i64 @llvm.cttz.i64(i64 %i.ao, i1 true)
  %i.ar = lshr i64 %i.ap, %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #32
          to label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i unwind label %bb.h ; 4 uses

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.as, align 8, !tbaa !278
  %i.at = getelementptr i8, ptr %i.as, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !278
  store ptr %i.as, ptr %3, align 16, !tbaa !366
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %1 ; 2 uses
  store ptr %i.au, ptr %i.aa, align 8, !tbaa !368
  store ptr %i.au, ptr %i.ab, align 16, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.av = icmp ugt i64 %i.ao, 32
  br i1 %i.av, label %bb.e, label %_ZNSt6vectorImSaImEE6resizeEm.exit37

bb.e:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i
  %i.aw = shl nuw i64 %i.ar, 5
  %i.ax = and i64 %.080, 576460752303423457
  %i.ay = or disjoint i64 %i.ax, 2
  %i.az = mul i64 %i.aw, %i.ay                    ; 5 uses
  %.not = icmp eq i64 %i.az, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE6resizeEm.exit37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = icmp ugt i64 %i.az, 1152921504606846975
  br i1 %i.ba, label %bb.g, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i61

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #31
          to label %.noexc69 unwind label %.loopexit.split-lp

.noexc69:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i61: ; preds = %bb.f
  %i.bb = shl nuw nsw i64 %i.az, 3
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #32
          to label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i65 unwind label %.loopexit ; 4 uses

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i65: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i61
  store i64 0, ptr %i.bc, align 8, !tbaa !278
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = shl nuw nsw i64 %i.az, 3
  %.idx.i.i.i.i.i31.i64 = add nsw i64 %i.be, -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i8 0, i64 %.idx.i.i.i.i.i31.i64, i1 false), !tbaa !278
  store ptr %i.bc, ptr %4, align 16, !tbaa !366
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.ad, align 8, !tbaa !368
  store ptr %i.bf, ptr %i.ae, align 16, !tbaa !369
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit37

bb.h:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i61
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt6vectorImSaImEE6resizeEm.exit37:             ; preds = %bb.e, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i65, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !641 ; 7 uses
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !642
  %.not.i38 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i38, label %bb.i, label %_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit.thread

_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit.thread: ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit37
  %i.bj = load <2 x ptr>, ptr %3, align 16, !tbaa !414
  store <2 x ptr> %i.bj, ptr %i.bh, align 8, !tbaa !414
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load ptr, ptr %i.ab, align 16, !tbaa !369
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load <2 x ptr>, ptr %4, align 16, !tbaa !414
  store <2 x ptr> %i.bn, ptr %i.bm, align 8, !tbaa !414
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bp = load ptr, ptr %i.ae, align 16, !tbaa !369
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !369
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store ptr %i.bq, ptr %i.l, align 8, !tbaa !641
  br label %_ZNSt6vectorImSaImEED2Ev.exit41

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit37
  invoke void @_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE17_M_realloc_insertIJS4_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit unwind label %bb.l

_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit: ; preds = %bb.i
  %.pr79 = load ptr, ptr %4, align 16, !tbaa !366 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %.pr79, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorImSaImEED2Ev.exit41, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr79) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit41

_ZNSt6vectorImSaImEED2Ev.exit41:                  ; preds = %_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit.thread, %_ZNSt6vectorISt4pairIN6duckdb6vectorImLb1ESaImEEES4_ESaIS5_EE12emplace_backIJS4_S4_EEEvDpOT_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.br = load ptr, ptr %3, align 16, !tbaa !366  ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorImSaImEED2Ev.exit43, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit41
  call void @_ZdlPv(ptr noundef nonnull %i.br) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit43

_ZNSt6vectorImSaImEED2Ev.exit43:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit41, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.bs = icmp ult i64 %i.ao, %1
  br i1 %i.bs, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, label %_ZNSt6vectorImSaImEED2Ev.exit49, !llvm.loop !1357

bb.l:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bu = load ptr, ptr %4, align 16, !tbaa !366  ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorImSaImEED2Ev.exit45, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPv(ptr noundef nonnull %i.bu) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit45

_ZNSt6vectorImSaImEED2Ev.exit45:                  ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit45, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorImSaImEED2Ev.exit45 ], [ %i.bg, %bb.h ]
  %i.bv = load ptr, ptr %3, align 16, !tbaa !366  ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorImSaImEED2Ev.exit47, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.bv) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit47

_ZNSt6vectorImSaImEED2Ev.exit47:                  ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit51

_ZNSt6vectorImSaImEED2Ev.exit51:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit47, %_ZNSt6vectorImSaImEED2Ev.exit32
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.an, %_ZNSt6vectorImSaImEED2Ev.exit32 ], [ %.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit47 ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb19WindowMergeSortTree8FinishedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !258  ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !258
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i

end_hunk_0
