Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/topology?download=true
inline.NumInlined: 6315
inline.NumDeleted: 2385
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5boost6detail8function15functor_managerINS_9algorithm6detail13token_finderFINS4_10is_any_ofFIcEEEEE7managerERKNS1_15function_bufferERSA_NS1_30functor_manager_operation_typeESt17integral_constantIbLb0EE:bb.a

_ZN5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEED2Ev.exit: ; preds = %bb.h, %bb.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 32) #32
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEED2Ev.exit, %bb.g
  store ptr null, ptr %1, align 8, !tbaa !61
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %1, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !238  ; 3 uses
  %i.x = icmp eq ptr %i.w, @_ZTSN5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEEE
  br i1 %i.x, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load i8, ptr %i.w, align 1, !tbaa !61
  %.not.i = icmp eq i8 %i.y, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread24, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.m
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(63) @_ZTSN5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEEE) #30
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread24

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.l, %_ZNKSt9type_infoeqERKS_.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !61
  store ptr %i.ab, ptr %1, align 8, !tbaa !61
  br label %bb.o

_ZNKSt9type_infoeqERKS_.exit.thread24:            ; preds = %bb.m, %_ZNKSt9type_infoeqERKS_.exit
  store ptr null, ptr %1, align 8, !tbaa !61
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  store ptr @_ZTIN5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEEE, ptr %1, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.ac, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 0, ptr %i.ad, align 1, !tbaa !61
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.n, %_ZNKSt9type_infoeqERKS_.exit.thread24, %_ZNKSt9type_infoeqERKS_.exit.thread, %bb.k, %bb.d
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNK5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEEclIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %3 = alloca %"struct.boost::algorithm::detail::is_any_ofF", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !100  ; 4 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !100
  store ptr null, ptr %3, align 8, !tbaa !61
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #36 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !61
  %i.g = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit

_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit: ; preds = %bb.a, %bb.b
  %.06.i = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ]
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %3, %bb.a ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr align 1 %.06.i, i64 %i.d, i1 false)
  %i.h = invoke ptr @_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN5boost9algorithm6detail10is_any_ofFIcEEET_SG_SG_T0_(ptr %1, ptr %2, ptr noundef nonnull align 8 %3)
          to label %bb.c unwind label %bb.f       ; 15 uses

bb.c:                                             ; preds = %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = load i64, ptr %i.b, align 8, !tbaa !100
  %i.k = icmp ult i64 %i.j, 17
  br i1 %i.k, label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.l) #32
  br label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit

_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.m = icmp eq ptr %i.h, %2
  br i1 %i.m, label %.critedge, label %bb.i

bb.f:                                             ; preds = %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %i.b, align 8, !tbaa !100
  %i.p = icmp ult i64 %i.o, 17
  br i1 %i.p, label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit9, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %.not.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i8, label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit9, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.q) #32
  br label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit9

_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit9: ; preds = %bb.f, %bb.g, %bb.h
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !221
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %bb.l

.lr.ph:                                           ; preds = %bb.i
  %i.u = load i64, ptr %i.c, align 8, !tbaa !100  ; 5 uses
  %i.v = icmp ult i64 %i.u, 17
  %i.w = load ptr, ptr %0, align 8                ; 2 uses
  %spec.select.i = select i1 %i.v, ptr %0, ptr %i.w ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %i.u
  %i.y = icmp sgt i64 %i.u, 0
  br i1 %i.y, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us.preheader, label %.lr.ph.split

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us.preheader: ; preds = %.lr.ph
  %i.z = sub i64 %i.a, %i.i
  %scevgep30 = getelementptr i8, ptr %i.h, i64 %i.z
  br label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us: ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us.preheader, %bb.j
  %.sroa.0.019.us = phi ptr [ %i.aj, %bb.j ], [ %i.h, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us.preheader ] ; 4 uses
  %i.aa = load i8, ptr %.sroa.0.019.us, align 1, !tbaa !61 ; 2 uses
  br label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us: ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us
  %.017.i.i.i.us = phi i64 [ %.1.i.i.i.us, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us ], [ %i.u, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us ] ; 2 uses
  %.01116.i.i.i.us = phi ptr [ %.112.i.i.i.us, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us ], [ %spec.select.i, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us ] ; 2 uses
  %i.ab = lshr i64 %.017.i.i.i.us, 1              ; 3 uses
  %.sink.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.01116.i.i.i.us, i64 %i.ab ; 2 uses
  %i.ac = load i8, ptr %.sink.i.i.i.i.us, align 1, !tbaa !61
  %i.ad = icmp slt i8 %i.ac, %i.aa                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.us, i64 1
  %i.af = xor i64 %i.ab, -1
  %i.ag = add nsw i64 %.017.i.i.i.us, %i.af
  %.112.i.i.i.us = select i1 %i.ad, ptr %i.ae, ptr %.01116.i.i.i.us ; 3 uses
  %.1.i.i.i.us = select i1 %i.ad, i64 %i.ag, i64 %i.ab ; 2 uses
  %i.ah = icmp sgt i64 %.1.i.i.i.us, 0
  br i1 %i.ah, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us, label %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i.loopexit.us, !llvm.loop !8

_ZNK5boost9algorithm6detail10is_any_ofFIcEclIcEEbT_.exit.us: ; preds = %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i.loopexit.us
  %i.ai = load i8, ptr %.112.i.i.i.us, align 1, !tbaa !61
  %.not17.us = icmp slt i8 %i.aa, %i.ai
  br i1 %.not17.us, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK5boost9algorithm6detail10is_any_ofFIcEclIcEEbT_.exit.us
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.019.us, i64 1 ; 2 uses
  %.not.us = icmp eq ptr %i.aj, %2
  br i1 %.not.us, label %.critedge, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us, !llvm.loop !618

_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i.loopexit.us: ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us
  %.not.i.i.us = icmp eq ptr %.112.i.i.i.us, %i.x
  br i1 %.not.i.i.us, label %.critedge, label %_ZNK5boost9algorithm6detail10is_any_ofFIcEclIcEEbT_.exit.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i.i = icmp samesign eq i64 %i.u, 0
  br i1 %.not.i.i, label %.critedge, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.ak = load i8, ptr %i.w, align 1, !tbaa !61
  %i.al = sub i64 %i.a, %i.i
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.al
  br label %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i

_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i: ; preds = %.lr.ph.split.split, %bb.k
  %.sroa.0.019 = phi ptr [ %i.h, %.lr.ph.split.split ], [ %i.an, %bb.k ] ; 3 uses
  %i.am = load i8, ptr %.sroa.0.019, align 1, !tbaa !61
  %.not17 = icmp slt i8 %i.am, %i.ak
  br i1 %.not17, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.an, %2
  br i1 %.not, label %.critedge, label %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i, !llvm.loop !618

bb.l:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  br label %.critedge

.critedge:                                        ; preds = %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i, %bb.k, %_ZNK5boost9algorithm6detail10is_any_ofFIcEclIcEEbT_.exit.us, %bb.j, %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i.loopexit.us, %.lr.ph.split, %bb.l, %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit
  %.sroa.016.0 = phi ptr [ %2, %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit ], [ %i.h, %bb.l ], [ %i.h, %.lr.ph.split ], [ %i.h, %_ZNK5boost9algorithm6detail10is_any_ofFIcEclIcEEbT_.exit.us ], [ %i.h, %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i.loopexit.us ], [ %i.h, %bb.j ], [ %i.h, %bb.k ], [ %i.h, %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i ]
  %.sroa.3.0 = phi ptr [ %2, %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit ], [ %i.ao, %bb.l ], [ %i.h, %.lr.ph.split ], [ %.sroa.0.019.us, %_ZNK5boost9algorithm6detail10is_any_ofFIcEclIcEEbT_.exit.us ], [ %scevgep30, %bb.j ], [ %.sroa.0.019.us, %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i.loopexit.us ], [ %scevgep, %bb.k ], [ %.sroa.0.019, %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN5boost9algorithm6detail10is_any_ofFIcEEET_SG_SG_T0_(ptr %0, ptr %1, ptr noundef align 8 %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 12 uses
  %4 = alloca %"struct.boost::algorithm::detail::is_any_ofF", align 8 ; 10 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 8 uses
  %6 = alloca %"struct.boost::algorithm::detail::is_any_ofF", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !100  ; 4 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !100
  store ptr null, ptr %6, align 8, !tbaa !61
  %i.d = icmp ult i64 %i.c, 17
  br i1 %i.d, label %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #36 ; 2 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !61
  %i.f = load ptr, ptr %2, align 8, !tbaa !61
  br label %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit

_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit: ; preds = %bb.a, %bb.b
  %.06.i = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ]
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %6, %bb.a ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr align 1 %.06.i, i64 %i.c, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !621 ; 4 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !100, !noalias !621
  store ptr null, ptr %4, align 8, !tbaa !61, !noalias !621
  %i.i = icmp ult i64 %i.h, 17                    ; 3 uses
  br i1 %i.i, label %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit
  %i.j = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #36
          to label %.noexc unwind label %.body.thread ; 2 uses

.noexc:                                           ; preds = %bb.c
  store ptr %i.j, ptr %4, align 8, !tbaa !61, !noalias !621
  %i.k = load ptr, ptr %6, align 8, !tbaa !61, !noalias !621
  br label %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit.i

_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit.i: ; preds = %.noexc, %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit
  %.06.i.i = phi ptr [ %i.k, %.noexc ], [ %6, %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit ]
  %.0.i.i = phi ptr [ %i.j, %.noexc ], [ %4, %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i, ptr align 1 %.06.i.i, i64 %i.h, i1 false), !noalias !621
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.g, align 8, !tbaa !100, !noalias !621 ; 7 uses
  store i64 %i.m, ptr %i.l, align 8, !tbaa !100, !alias.scope !621
  store ptr null, ptr %5, align 8, !tbaa !61, !alias.scope !621
  %i.n = icmp ult i64 %i.m, 17
  br i1 %i.n, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit.i
  %i.o = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #36
          to label %bb.e unwind label %bb.g, !noalias !621 ; 2 uses

bb.e:                                             ; preds = %bb.d
  store ptr %i.o, ptr %5, align 8, !tbaa !61, !alias.scope !621
  %i.p = load ptr, ptr %4, align 8, !tbaa !61, !noalias !621 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.p, i64 %i.m, i1 false), !noalias !621
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #32, !noalias !621
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !61, !noalias !621 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i1.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #32, !noalias !621
  br label %.body

.thread:                                          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.m, ptr %i.s, align 8, !tbaa !100
  store ptr null, ptr %3, align 8, !tbaa !61
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %4, i64 %i.m, i1 false)
  %.pre = load i64, ptr %i.l, align 8, !tbaa !100 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %.pre, ptr %i.t, align 8, !tbaa !100
  store ptr null, ptr %3, align 8, !tbaa !61
  %i.u = icmp ult i64 %.pre, 17
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEEC2ERKS7_.exit.i, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.v = phi ptr [ %i.s, %.thread ], [ %i.t, %bb.i ]
  %i.w = phi i64 [ %i.m, %.thread ], [ %.pre, %bb.i ] ; 2 uses
  %i.x = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #36
          to label %.noexc7 unwind label %.body8.thread ; 2 uses

.noexc7:                                          ; preds = %bb.j
  store ptr %i.x, ptr %3, align 8, !tbaa !61
  %i.y = load ptr, ptr %5, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEEC2ERKS7_.exit.i

_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEEC2ERKS7_.exit.i: ; preds = %.noexc7, %bb.i
  %i.z = phi i1 [ false, %.noexc7 ], [ true, %bb.i ] ; 2 uses
  %i.aa = phi ptr [ %i.v, %.noexc7 ], [ %i.t, %bb.i ] ; 2 uses
  %i.ab = phi i64 [ %i.w, %.noexc7 ], [ %.pre, %bb.i ]
  %.06.i.i.i = phi ptr [ %i.y, %.noexc7 ], [ %5, %bb.i ]
  %.0.i.i.i = phi ptr [ %i.x, %.noexc7 ], [ %3, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr align 1 %.06.i.i.i, i64 %i.ab, i1 false)
  %i.ac = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEEEET_SJ_SJ_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr noundef nonnull align 8 %3)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEEC2ERKS7_.exit.i
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !100
  %i.ae = icmp ult i64 %i.ad, 17
  br i1 %i.ae, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.af) #32
  br label %bb.q

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEEC2ERKS7_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !100
  %i.ai = icmp ult i64 %i.ah, 17
  br i1 %i.ai, label %.body8, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i4.i, label %.body8, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #32
  br label %.body8

bb.q:                                             ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i10, label %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #32
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEED2Ev.exit

_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEED2Ev.exit: ; preds = %bb.q, %bb.r, %bb.s
  br i1 %i.i, label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEED2Ev.exit
  %i.al = load ptr, ptr %6, align 8, !tbaa !61    ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.al) #32
  br label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit

_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEED2Ev.exit, %bb.t, %bb.u
  ret ptr %i.ac

.body.thread:                                     ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.body8.thread:                                    ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.body8:                                           ; preds = %bb.n, %bb.o, %bb.p
  br i1 %i.z, label %.body, label %bb.v

bb.v:                                             ; preds = %.body8.thread, %.body8
  %eh.lpad-body916 = phi { ptr, i32 } [ %i.an, %.body8.thread ], [ %i.ag, %.body8 ] ; 2 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.ao, null
end_hunk_0
begin_hunk_1_@_ZN5boost10function_nINS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEJSB_SB_EE9assign_toINS_9algorithm6detail13token_finderFINSG_10is_any_ofFIcEEEEEEvT_:bb.a
  %.not.i.i3.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i3.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.x) #32
  br label %.body

bb.j:                                             ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.m, label %_ZN5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.y) #32
  br label %_ZN5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEED2Ev.exit

_ZN5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEED2Ev.exit: ; preds = %bb.j, %bb.k, %bb.l
  %_ZZN5boost10function_nINS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEJSB_SB_EE9assign_toINS_9algorithm6detail13token_finderFINSG_10is_any_ofFIcEEEEEEvT_E13stored_vtableB5cxx11. = select i1 %i.q, ptr @_ZZN5boost10function_nINS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEJSB_SB_EE9assign_toINS_9algorithm6detail13token_finderFINSG_10is_any_ofFIcEEEEEEvT_E13stored_vtableB5cxx11, ptr null
  store ptr %_ZZN5boost10function_nINS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEJSB_SB_EE9assign_toINS_9algorithm6detail13token_finderFINSG_10is_any_ofFIcEEEEEEvT_E13stored_vtableB5cxx11., ptr %0, align 8, !tbaa !224
  ret void

.body.thread:                                     ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.body:                                            ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.m, label %_ZN5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEED2Ev.exit4, label %bb.m

bb.m:                                             ; preds = %.body.thread, %.body
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.z, %.body.thread ], [ %i.u, %.body ] ; 2 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i3, label %_ZN5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEED2Ev.exit4, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #32
  br label %_ZN5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEED2Ev.exit4

_ZN5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEED2Ev.exit4: ; preds = %.body, %bb.m, %bb.n
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.u, %.body ], [ %eh.lpad-body6, %bb.m ], [ %eh.lpad-body6, %bb.n ]
  resume { ptr, i32 } %eh.lpad-body7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN5boost6detail8function20function_obj_invokerINS_9algorithm6detail13token_finderFINS4_10is_any_ofFIcEEEENS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEJSJ_SJ_EE6invokeERNS1_15function_bufferESJ_SJ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61
  %i.b = tail call { ptr, ptr } @_ZNK5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESI_SI_(ptr noundef nonnull align 8 dereferenceable(28) %i.a, ptr %1, ptr %2)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNK5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESI_SI_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %3 = alloca %"struct.boost::algorithm::detail::is_any_ofF", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !100  ; 4 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !100
  store ptr null, ptr %3, align 8, !tbaa !61
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #36 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !61
  %i.g = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit

_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit: ; preds = %bb.a, %bb.b
  %.06.i = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ]
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %3, %bb.a ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr align 1 %.06.i, i64 %i.d, i1 false)
  %i.h = invoke ptr @_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN5boost9algorithm6detail10is_any_ofFIcEEET_SF_SF_T0_(ptr %1, ptr %2, ptr noundef nonnull align 8 %3)
          to label %bb.c unwind label %bb.f       ; 15 uses

bb.c:                                             ; preds = %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = load i64, ptr %i.b, align 8, !tbaa !100
  %i.k = icmp ult i64 %i.j, 17
  br i1 %i.k, label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.l) #32
  br label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit

_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.m = icmp eq ptr %i.h, %2
  br i1 %i.m, label %.critedge, label %bb.i

bb.f:                                             ; preds = %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %i.b, align 8, !tbaa !100
  %i.p = icmp ult i64 %i.o, 17
  br i1 %i.p, label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit9, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %.not.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i8, label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit9, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.q) #32
  br label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit9

_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit9: ; preds = %bb.f, %bb.g, %bb.h
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !221
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %bb.l

.lr.ph:                                           ; preds = %bb.i
  %i.u = load i64, ptr %i.c, align 8, !tbaa !100  ; 5 uses
  %i.v = icmp ult i64 %i.u, 17
  %i.w = load ptr, ptr %0, align 8                ; 2 uses
  %spec.select.i = select i1 %i.v, ptr %0, ptr %i.w ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %i.u
  %i.y = icmp sgt i64 %i.u, 0
  br i1 %i.y, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us.preheader, label %.lr.ph.split

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us.preheader: ; preds = %.lr.ph
  %i.z = sub i64 %i.a, %i.i
  %scevgep30 = getelementptr i8, ptr %i.h, i64 %i.z
  br label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us: ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us.preheader, %bb.j
  %.sroa.0.019.us = phi ptr [ %i.aj, %bb.j ], [ %i.h, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us.preheader ] ; 4 uses
  %i.aa = load i8, ptr %.sroa.0.019.us, align 1, !tbaa !61 ; 2 uses
  br label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us: ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us
  %.017.i.i.i.us = phi i64 [ %.1.i.i.i.us, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us ], [ %i.u, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us ] ; 2 uses
  %.01116.i.i.i.us = phi ptr [ %.112.i.i.i.us, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us ], [ %spec.select.i, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us ] ; 2 uses
  %i.ab = lshr i64 %.017.i.i.i.us, 1              ; 3 uses
  %.sink.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.01116.i.i.i.us, i64 %i.ab ; 2 uses
  %i.ac = load i8, ptr %.sink.i.i.i.i.us, align 1, !tbaa !61
  %i.ad = icmp slt i8 %i.ac, %i.aa                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.us, i64 1
  %i.af = xor i64 %i.ab, -1
  %i.ag = add nsw i64 %.017.i.i.i.us, %i.af
  %.112.i.i.i.us = select i1 %i.ad, ptr %i.ae, ptr %.01116.i.i.i.us ; 3 uses
  %.1.i.i.i.us = select i1 %i.ad, i64 %i.ag, i64 %i.ab ; 2 uses
  %i.ah = icmp sgt i64 %.1.i.i.i.us, 0
  br i1 %i.ah, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us, label %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i.loopexit.us, !llvm.loop !8

_ZNK5boost9algorithm6detail10is_any_ofFIcEclIcEEbT_.exit.us: ; preds = %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i.loopexit.us
  %i.ai = load i8, ptr %.112.i.i.i.us, align 1, !tbaa !61
  %.not17.us = icmp slt i8 %i.aa, %i.ai
  br i1 %.not17.us, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK5boost9algorithm6detail10is_any_ofFIcEclIcEEbT_.exit.us
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.019.us, i64 1 ; 2 uses
  %.not.us = icmp eq ptr %i.aj, %2
  br i1 %.not.us, label %.critedge, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader.us, !llvm.loop !661

_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i.loopexit.us: ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.us
  %.not.i.i.us = icmp eq ptr %.112.i.i.i.us, %i.x
  br i1 %.not.i.i.us, label %.critedge, label %_ZNK5boost9algorithm6detail10is_any_ofFIcEclIcEEbT_.exit.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i.i = icmp samesign eq i64 %i.u, 0
  br i1 %.not.i.i, label %.critedge, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.ak = load i8, ptr %i.w, align 1, !tbaa !61
  %i.al = sub i64 %i.a, %i.i
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.al
  br label %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i

_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i: ; preds = %.lr.ph.split.split, %bb.k
  %.sroa.0.019 = phi ptr [ %i.h, %.lr.ph.split.split ], [ %i.an, %bb.k ] ; 3 uses
  %i.am = load i8, ptr %.sroa.0.019, align 1, !tbaa !61
  %.not17 = icmp slt i8 %i.am, %i.ak
  br i1 %.not17, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.an, %2
  br i1 %.not, label %.critedge, label %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i, !llvm.loop !661

bb.l:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  br label %.critedge

.critedge:                                        ; preds = %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i, %bb.k, %_ZNK5boost9algorithm6detail10is_any_ofFIcEclIcEEbT_.exit.us, %bb.j, %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i.loopexit.us, %.lr.ph.split, %bb.l, %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit
  %.sroa.016.0 = phi ptr [ %2, %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit ], [ %i.h, %bb.l ], [ %i.h, %.lr.ph.split ], [ %i.h, %_ZNK5boost9algorithm6detail10is_any_ofFIcEclIcEEbT_.exit.us ], [ %i.h, %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i.loopexit.us ], [ %i.h, %bb.j ], [ %i.h, %bb.k ], [ %i.h, %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i ]
  %.sroa.3.0 = phi ptr [ %2, %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit ], [ %i.ao, %bb.l ], [ %i.h, %.lr.ph.split ], [ %.sroa.0.019.us, %_ZNK5boost9algorithm6detail10is_any_ofFIcEclIcEEbT_.exit.us ], [ %scevgep30, %bb.j ], [ %.sroa.0.019.us, %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i.loopexit.us ], [ %scevgep, %bb.k ], [ %.sroa.0.019, %_ZSt13__lower_boundIPKccN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i.i ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN5boost9algorithm6detail10is_any_ofFIcEEET_SF_SF_T0_(ptr %0, ptr %1, ptr noundef align 8 %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 12 uses
  %4 = alloca %"struct.boost::algorithm::detail::is_any_ofF", align 8 ; 10 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 8 uses
  %6 = alloca %"struct.boost::algorithm::detail::is_any_ofF", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !100  ; 4 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !100
  store ptr null, ptr %6, align 8, !tbaa !61
  %i.d = icmp ult i64 %i.c, 17
  br i1 %i.d, label %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #36 ; 2 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !61
  %i.f = load ptr, ptr %2, align 8, !tbaa !61
  br label %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit

_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit: ; preds = %bb.a, %bb.b
  %.06.i = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ]
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %6, %bb.a ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr align 1 %.06.i, i64 %i.c, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !664 ; 4 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !100, !noalias !664
  store ptr null, ptr %4, align 8, !tbaa !61, !noalias !664
  %i.i = icmp ult i64 %i.h, 17                    ; 3 uses
  br i1 %i.i, label %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit
  %i.j = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #36
          to label %.noexc unwind label %.body.thread ; 2 uses

.noexc:                                           ; preds = %bb.c
  store ptr %i.j, ptr %4, align 8, !tbaa !61, !noalias !664
  %i.k = load ptr, ptr %6, align 8, !tbaa !61, !noalias !664
  br label %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit.i

_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit.i: ; preds = %.noexc, %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit
  %.06.i.i = phi ptr [ %i.k, %.noexc ], [ %6, %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit ]
  %.0.i.i = phi ptr [ %i.j, %.noexc ], [ %4, %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i, ptr align 1 %.06.i.i, i64 %i.h, i1 false), !noalias !664
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.g, align 8, !tbaa !100, !noalias !664 ; 7 uses
  store i64 %i.m, ptr %i.l, align 8, !tbaa !100, !alias.scope !664
  store ptr null, ptr %5, align 8, !tbaa !61, !alias.scope !664
  %i.n = icmp ult i64 %i.m, 17
  br i1 %i.n, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit.i
  %i.o = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #36
          to label %bb.e unwind label %bb.g, !noalias !664 ; 2 uses

bb.e:                                             ; preds = %bb.d
  store ptr %i.o, ptr %5, align 8, !tbaa !61, !alias.scope !664
  %i.p = load ptr, ptr %4, align 8, !tbaa !61, !noalias !664 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.p, i64 %i.m, i1 false), !noalias !664
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #32, !noalias !664
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !61, !noalias !664 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i1.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #32, !noalias !664
  br label %.body

.thread:                                          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.m, ptr %i.s, align 8, !tbaa !100
  store ptr null, ptr %3, align 8, !tbaa !61
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost9algorithm6detail10is_any_ofFIcEC2ERKS3_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %4, i64 %i.m, i1 false)
  %.pre = load i64, ptr %i.l, align 8, !tbaa !100 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %.pre, ptr %i.t, align 8, !tbaa !100
  store ptr null, ptr %3, align 8, !tbaa !61
  %i.u = icmp ult i64 %.pre, 17
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEEC2ERKS7_.exit.i, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.v = phi ptr [ %i.s, %.thread ], [ %i.t, %bb.i ]
  %i.w = phi i64 [ %i.m, %.thread ], [ %.pre, %bb.i ] ; 2 uses
  %i.x = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #36
          to label %.noexc7 unwind label %.body8.thread ; 2 uses

.noexc7:                                          ; preds = %bb.j
  store ptr %i.x, ptr %3, align 8, !tbaa !61
  %i.y = load ptr, ptr %5, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEEC2ERKS7_.exit.i

_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEEC2ERKS7_.exit.i: ; preds = %.noexc7, %bb.i
  %i.z = phi i1 [ false, %.noexc7 ], [ true, %bb.i ] ; 2 uses
  %i.aa = phi ptr [ %i.v, %.noexc7 ], [ %i.t, %bb.i ] ; 2 uses
  %i.ab = phi i64 [ %i.w, %.noexc7 ], [ %.pre, %bb.i ]
  %.06.i.i.i = phi ptr [ %i.y, %.noexc7 ], [ %5, %bb.i ]
  %.0.i.i.i = phi ptr [ %i.x, %.noexc7 ], [ %3, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr align 1 %.06.i.i.i, i64 %i.ab, i1 false)
  %i.ac = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEEEET_SI_SI_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr noundef nonnull align 8 %3)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEEC2ERKS7_.exit.i
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !100
  %i.ae = icmp ult i64 %i.ad, 17
  br i1 %i.ae, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.af) #32
  br label %bb.q

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEEC2ERKS7_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !100
  %i.ai = icmp ult i64 %i.ah, 17
  br i1 %i.ai, label %.body8, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i4.i, label %.body8, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #32
  br label %.body8

bb.q:                                             ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i10, label %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #32
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEED2Ev.exit

_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEED2Ev.exit: ; preds = %bb.q, %bb.r, %bb.s
  br i1 %i.i, label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEED2Ev.exit
  %i.al = load ptr, ptr %6, align 8, !tbaa !61    ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.al) #32
  br label %_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit

_ZN5boost9algorithm6detail10is_any_ofFIcED2Ev.exit: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN5boost9algorithm6detail10is_any_ofFIcEEED2Ev.exit, %bb.t, %bb.u
  ret ptr %i.ac

.body.thread:                                     ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.body8.thread:                                    ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.body8:                                           ; preds = %bb.n, %bb.o, %bb.p
  br i1 %i.z, label %.body, label %bb.v

bb.v:                                             ; preds = %.body8.thread, %.body8
  %eh.lpad-body916 = phi { ptr, i32 } [ %i.an, %.body8.thread ], [ %i.ag, %.body8 ] ; 2 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.ao, null
end_hunk_1
