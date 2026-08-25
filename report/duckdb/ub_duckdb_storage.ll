Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage?download=true
inline.NumInlined: 20074
inline.NumDeleted: 9324
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6duckdb25WriteAheadLogDeserializer12ReplayDeleteEv:bb.a

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2032
  %i.af = load ptr, ptr %0, align 8, !tbaa !3575, !nonnull !67, !align !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_17TableCatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1294 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef nonnull align 8 dereferenceable(124) ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(448) %i.ah)
          to label %bb.n unwind label %bb.r       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.an = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %.noexc43 unwind label %bb.s

.noexc43:                                         ; preds = %bb.n
  %i.ao = invoke noundef i64 @_ZNK6duckdb18RowGroupCollection12GetTotalRowsEv(ptr noundef nonnull align 8 dereferenceable(217) %i.an)
          to label %_ZNK6duckdb9DataTable12GetTotalRowsEv.exit.preheader unwind label %bb.s

_ZNK6duckdb9DataTable12GetTotalRowsEv.exit.preheader: ; preds = %.noexc43
  %i.ap = load i64, ptr %i.ab, align 8, !tbaa !1498 ; 2 uses
  %.not56 = icmp eq i64 %i.ap, 0
  br i1 %.not56, label %_ZNK6duckdb9DataTable12GetTotalRowsEv.exit._crit_edge, label %.lr.ph

_ZNK6duckdb9DataTable12GetTotalRowsEv.exit:       ; preds = %.lr.ph
  %i.aq = add nuw i64 %.01455, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.ap
  br i1 %exitcond.not, label %_ZNK6duckdb9DataTable12GetTotalRowsEv.exit._crit_edge, label %.lr.ph, !llvm.loop !3866

_ZNK6duckdb9DataTable12GetTotalRowsEv.exit._crit_edge: ; preds = %_ZNK6duckdb9DataTable12GetTotalRowsEv.exit, %_ZNK6duckdb9DataTable12GetTotalRowsEv.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr null, ptr %6, align 8, !tbaa !1787
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.ar, align 8, !tbaa !2026
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.as)
          to label %bb.y unwind label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb9DataTable12GetTotalRowsEv.exit._crit_edge
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !1698  ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %.body, label %_ZNKSt14default_deleteIN6duckdb15ConstraintStateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15ConstraintStateEEclEPS1_.exit.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.au) #44
  br label %.body

bb.p:                                             ; preds = %bb.j, %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.q:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.r:                                             ; preds = %bb.l, %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.s:                                             ; preds = %.noexc43, %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.lr.ph:                                           ; preds = %_ZNK6duckdb9DataTable12GetTotalRowsEv.exit.preheader, %_ZNK6duckdb9DataTable12GetTotalRowsEv.exit
  %.01455 = phi i64 [ %i.aq, %_ZNK6duckdb9DataTable12GetTotalRowsEv.exit ], [ 0, %_ZNK6duckdb9DataTable12GetTotalRowsEv.exit.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.01455
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !70
  %.not = icmp slt i64 %i.ba, %i.ao
  br i1 %.not, label %_ZNK6duckdb9DataTable12GetTotalRowsEv.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.bb = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.217, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb22SerializationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN6duckdb22SerializationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.ad unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread: ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0 = phi i1 [ false, %bb.v ], [ true, %bb.u ]  ; 2 uses
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.be) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.0, label %bb.x, label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.0, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn3053 = phi { ptr, i32 } [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  call void @__cxa_free_exception(ptr %i.bb) #23
  br label %bb.ac

bb.y:                                             ; preds = %_ZNK6duckdb9DataTable12GetTotalRowsEv.exit._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i8 0, i64 40, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !3594, !nonnull !67, !align !68
  %i.bk = load i64, ptr %i.ab, align 8, !tbaa !1498
  %i.bl = invoke noundef i64 @_ZN6duckdb9DataTable6DeleteERNS_16TableDeleteStateERNS_13ClientContextERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(124) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(512) %i.bj, ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i64 noundef %i.bk)
          to label %bb.z unwind label %bb.ab      ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @_ZN6duckdb16TableDeleteStateD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZN6duckdb12Deserializer10ReadObjectIZNS_25WriteAheadLogDeserializer12ReplayDeleteEvE3$_0EEvtPKcT_.exit", %bb.z
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.ab:                                            ; preds = %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb16TableDeleteStateD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #23
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb15ConstraintStateEEclEPS1_.exit.i.i, %bb.o, %bb.ab
  %.pn28 = phi { ptr, i32 } [ %i.bm, %bb.ab ], [ %i.at, %bb.o ], [ %i.at, %_ZNKSt14default_deleteIN6duckdb15ConstraintStateEEclEPS1_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p, %bb.r, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %.body, %bb.s, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %bb.b
  %.pn30.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.q, %bb.b ], [ %.pn50, %bb.h ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.av, %bb.p ], [ %i.aw, %bb.q ], [ %i.ax, %bb.r ], [ %i.ay, %bb.s ], [ %.pn28, %.body ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn3053, %bb.x ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn.pn

bb.ad:                                            ; preds = %bb.v, %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25WriteAheadLogDeserializer12ReplayUpdateEv(ptr noundef nonnull align 8 dereferenceable(760) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::vector.797", align 8 ; 11 uses
  %2 = alloca %"class.duckdb::DataChunk", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %7 = alloca %"class.duckdb::Vector", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 19 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !3867
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !noalias !3867
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(632) %i.a, i16 noundef zeroext 101, ptr noundef nonnull @.str.150), !noalias !3867, !inline_history !3870
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3871)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !3871
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !3871
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !noalias !3871
  %i.i = invoke noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(632) %i.a)
          to label %.preheader.i unwind label %bb.b, !noalias !3871 ; 2 uses

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

._crit_edge.i:                                    ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit.i, %.preheader.i
  %i.l = phi ptr [ null, %.preheader.i ], [ %i.an, %_ZNSt6vectorImSaImEE9push_backEOm.exit.i ] ; 5 uses
  store ptr %i.l, ptr %1, align 8, !alias.scope !3871
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !3871
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3871
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(632) %i.a)
          to label %_ZN6duckdb12Deserializer4ReadINS_6vectorImLb1ESaImEEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES6_E4typeEv.exit unwind label %bb.b, !noalias !3871

bb.b:                                             ; preds = %._crit_edge.i, %bb.a
  %i.p = phi ptr [ %i.l, %._crit_edge.i ], [ null, %bb.a ]
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit.i, %.lr.ph.i
  %i.r = phi ptr [ null, %.lr.ph.i ], [ %i.am, %_ZNSt6vectorImSaImEE9push_backEOm.exit.i ] ; 3 uses
  %i.s = phi ptr [ null, %.lr.ph.i ], [ %.pn, %_ZNSt6vectorImSaImEE9push_backEOm.exit.i ] ; 3 uses
  %.013.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ao, %_ZNSt6vectorImSaImEE9push_backEOm.exit.i ]
  %i.t = phi ptr [ null, %.lr.ph.i ], [ %i.an, %_ZNSt6vectorImSaImEE9push_backEOm.exit.i ] ; 7 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !3871
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3871
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(632) %i.a)
          to label %_ZN6duckdb12Deserializer4ReadImEENSt9enable_ifIXsr3std7is_sameIT_mEE5valueES3_E4typeEv.exit.i unwind label %.loopexit.i, !noalias !3871, !inline_history !3874 ; 2 uses

_ZN6duckdb12Deserializer4ReadImEENSt9enable_ifIXsr3std7is_sameIT_mEE5valueES3_E4typeEv.exit.i: ; preds = %bb.c
  %.not.i.i.i35 = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb12Deserializer4ReadImEENSt9enable_ifIXsr3std7is_sameIT_mEE5valueES3_E4typeEv.exit.i
  store i64 %i.x, ptr %i.s, align 8, !tbaa !70, !noalias !3871
  %8 = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %8, ptr %i.j, align 8, !tbaa !1164, !alias.scope !3871
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit.i

bb.e:                                             ; preds = %_ZN6duckdb12Deserializer4ReadImEENSt9enable_ifIXsr3std7is_sameIT_mEE5valueES3_E4typeEv.exit.i
  %i.y = ptrtoint ptr %i.r to i64
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !3871

.noexc.i:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #46
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !3871 ; 4 uses

.noexc9.i:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store i64 %i.x, ptr %i.aj, align 8, !tbaa !70, !noalias !3871
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i

bb.g:                                             ; preds = %.noexc9.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.t, i64 %i.aa, i1 false), !noalias !3871
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.g, %.noexc9.i
  %9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #44, !noalias !3871
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i
  store ptr %9, ptr %i.j, align 8, !tbaa !1164, !alias.scope !3871
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag ; 2 uses
  store ptr %i.al, ptr %i.k, align 8, !tbaa !1165, !alias.scope !3871
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit.i

_ZNSt6vectorImSaImEE9push_backEOm.exit.i:         ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i, %bb.d
  %i.am = phi ptr [ %i.al, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i ], [ %i.r, %bb.d ]
  %.pn = phi ptr [ %9, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i ], [ %8, %bb.d ]
  %i.an = phi ptr [ %i.ai, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.ao = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !3875

.loopexit.i:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.b
  %i.ap = phi ptr [ %i.p, %bb.b ], [ %i.t, %.loopexit.i ], [ %i.t, %.loopexit.split-lp.i ] ; 2 uses
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.b ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i33, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ap) #44, !noalias !3871
  br label %common.resume

common.resume:                                    ; preds = %bb.k, %bb.l, %bb.i, %bb.j, %_ZNSt6vectorImSaImEED2Ev.exit32
  %common.resume.op = phi { ptr, i32 } [ %.pn16.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit32 ], [ %.pn.i, %bb.i ], [ %.pn.i, %bb.j ], [ %i.at, %bb.l ], [ %i.at, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb12Deserializer4ReadINS_6vectorImLb1ESaImEEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES6_E4typeEv.exit: ; preds = %._crit_edge.i
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !3867
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(632) %i.a)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorImLb1ESaImEEEEET_tPKc.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_6vectorImLb1ESaImEEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES6_E4typeEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #44
  br label %common.resume

_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorImLb1ESaImEEEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_6vectorImLb1ESaImEEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES6_E4typeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorImLb1ESaImEEEEET_tPKc.exit
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(632) %i.a, i16 noundef zeroext 102, ptr noundef nonnull @.str.148)
          to label %.noexc unwind label %bb.o, !inline_history !3876

.noexc:                                           ; preds = %bb.m
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(632) %i.a)
          to label %.noexc20 unwind label %bb.o, !inline_history !3876

.noexc20:                                         ; preds = %.noexc
  invoke void @_ZN6duckdb9DataChunk11DeserializeERNS_12DeserializerE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(632) %i.a)
          to label %.noexc21 unwind label %bb.o

.noexc21:                                         ; preds = %.noexc20
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(632) %i.a)
          to label %.noexc22 unwind label %bb.o, !inline_history !3876

.noexc22:                                         ; preds = %.noexc21
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(632) %i.a)
          to label %"_ZN6duckdb12Deserializer10ReadObjectIZNS_25WriteAheadLogDeserializer12ReplayUpdateEvE3$_0EEvtPKcT_.exit" unwind label %bb.o, !inline_history !3876

"_ZN6duckdb12Deserializer10ReadObjectIZNS_25WriteAheadLogDeserializer12ReplayUpdateEvE3$_0EEvtPKcT_.exit": ; preds = %.noexc22
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !3593, !range !249, !noundef !67
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.ak, label %bb.p

bb.n:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorImLb1ESaImEEEEET_tPKc.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.o:                                             ; preds = %bb.w, %.noexc22, %.noexc21, %.noexc20, %.noexc, %bb.m, %bb.x, %bb.v
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.p:                                             ; preds = %"_ZN6duckdb12Deserializer10ReadObjectIZNS_25WriteAheadLogDeserializer12ReplayUpdateEvE3$_0EEvtPKcT_.exit"
  %i.bl = load ptr, ptr %0, align 8, !tbaa !3575, !nonnull !67, !align !68
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1294
  %.not42 = icmp eq ptr %i.bn, null
  br i1 %.not42, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bo = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.218, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.as unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.q
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %.04 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.br = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.br) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.04, label %bb.u, label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.04, label %bb.u, label %bb.ap

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn38 = phi { ptr, i32 } [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bo) #23
  br label %bb.ap

bb.v:                                             ; preds = %bb.p
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
          to label %bb.w unwind label %bb.o

bb.w:                                             ; preds = %bb.v
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !70
  %i.bw = load ptr, ptr %0, align 8, !tbaa !3575, !nonnull !67, !align !68
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_17TableCatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.x unwind label %bb.o

bb.x:                                             ; preds = %bb.w
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1294
  %i.bz = invoke noundef nonnull align 8 dereferenceable(105) ptr @_ZNK6duckdb17TableCatalogEntry10GetColumnsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.by)
          to label %bb.y unwind label %bb.o       ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1164
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !526
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  %.not = icmp ult i64 %i.bv, %i.ch
  br i1 %.not, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.219, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.as unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread: ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
end_hunk_0
