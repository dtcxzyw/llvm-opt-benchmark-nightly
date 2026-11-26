Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/command_args?download=true
inline.NumInlined: 1117
inline.NumDeleted: 425
begin_hunk_0_@_ZNK3g2o11CommandArgs7str2argERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_15CommandArgumentE:bb.a
  %i.a = alloca double, align 8                   ; 4 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::vector.8", align 8     ; 14 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::vector.25", align 8    ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::vector.3", align 8     ; 14 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  switch i32 %i.h, label %bb.au [
    i32 1, label %bb.b
    i32 0, label %bb.d
    i32 2, label %bb.f
    i32 4, label %bb.h
    i32 3, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.i = call noundef zeroext i1 @_ZN3g2o13convertStringIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_b(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i1 noundef zeroext true)
  br i1 %i.i, label %bb.c, label %_ZN3g2o12_GLOBAL__N_113parseArgumentIfEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.l = load float, ptr %i.f, align 4, !tbaa !66
  store float %i.l, ptr %i.k, align 4, !tbaa !66
  br label %_ZN3g2o12_GLOBAL__N_113parseArgumentIfEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit

_ZN3g2o12_GLOBAL__N_113parseArgumentIfEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.au

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.m = call noundef zeroext i1 @_ZN3g2o13convertStringIdEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_b(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext true)
  br i1 %i.m, label %bb.e, label %_ZN3g2o12_GLOBAL__N_113parseArgumentIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = load double, ptr %i.e, align 8, !tbaa !68
  store double %i.p, ptr %i.o, align 8, !tbaa !68
  br label %_ZN3g2o12_GLOBAL__N_113parseArgumentIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit

_ZN3g2o12_GLOBAL__N_113parseArgumentIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.au

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.q = call noundef zeroext i1 @_ZN3g2o13convertStringIiEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_b(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i1 noundef zeroext true)
  br i1 %i.q, label %bb.g, label %_ZN3g2o12_GLOBAL__N_113parseArgumentIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.t = load i32, ptr %i.d, align 4, !tbaa !69
  store i32 %i.t, ptr %i.s, align 4, !tbaa !69
  br label %_ZN3g2o12_GLOBAL__N_113parseArgumentIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit

_ZN3g2o12_GLOBAL__N_113parseArgumentIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.au

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.u = call noundef zeroext i1 @_ZN3g2o13convertStringIbEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_b(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i1 noundef zeroext true)
  br i1 %i.u, label %bb.i, label %_ZN3g2o12_GLOBAL__N_113parseArgumentIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.x = load i8, ptr %i.c, align 1, !tbaa !38, !range !35, !noundef !36
  store i8 %i.x, ptr %i.w, align 1, !tbaa !38
  br label %_ZN3g2o12_GLOBAL__N_113parseArgumentIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit

_ZN3g2o12_GLOBAL__N_113parseArgumentIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.au

bb.j:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.au

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ab, ptr %7, align 8, !tbaa !28
  store i16 15148, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.ac, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i8 0, ptr %i.ad, align 2, !tbaa !20
  invoke void @_ZN3g2o8strSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.25") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ab
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.ag = load i64, ptr %i.ab, align 8, !tbaa !20
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ai = load ptr, ptr %6, align 8, !tbaa !140   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !140 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not24.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  br label %bb.o

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i.i
  store ptr %i.ca, ptr %i.aa, align 8
  store ptr %i.bz, ptr %i.al, align 8
  store ptr %i.by, ptr %8, align 8
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !72 ; 3 uses
  %.pre27.i.i = load ptr, ptr %i.aj, align 8, !tbaa !73 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre27.i.i
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %.pre.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !20
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %.pre27.i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %6, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.as = phi ptr [ %i.by, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.by, %._crit_edge.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 2 uses
  %i.at = phi ptr [ %i.ca, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ca, %._crit_edge.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  %i.au = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i.i.i, label %bb.w, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !74
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #22
  br label %bb.w

bb.n:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ab
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i: ; preds = %bb.n
  %i.bd = load i64, ptr %i.ab, align 8, !tbaa !20
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.v

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i.i, %.lr.ph.i.i
  %i.bf = phi ptr [ null, %.lr.ph.i.i ], [ %i.by, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i.i ] ; 8 uses
  %i.bg = phi ptr [ null, %.lr.ph.i.i ], [ %i.bz, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i.i ] ; 5 uses
  %i.bh = phi ptr [ null, %.lr.ph.i.i ], [ %i.ca, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i.i ] ; 5 uses
  %.sroa.020.025.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.cb, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bi = invoke noundef zeroext i1 @_ZN3g2o13convertStringIiEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_b(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020.025.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !69  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not.i.i.i = icmp eq ptr %i.bh, %i.bg
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !69
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = ptrtoint ptr %i.bf to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 6 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775804
  br i1 %i.bn, label %bb.s, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  store ptr %i.bh, ptr %i.aa, align 8
  store ptr %i.bg, ptr %i.al, align 8
  store ptr %i.bf, ptr %8, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #24
          to label %.noexc17.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i

.noexc17.i.i:                                     ; preds = %bb.s
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.r
  %i.bo = ashr exact i64 %i.bm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = call i64 @llvm.umin.i64(i64 %i.bp, i64 2305843009213693951)
  %i.bs = select i1 %i.bq, i64 2305843009213693951, i64 %i.br ; 3 uses
  %.not.i.i.i16.i.i = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i16.i.i)
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #27
          to label %.noexc18.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ; 4 uses

.noexc18.i.i:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bm ; 2 uses
  store i32 %i.bj, ptr %i.bv, align 4, !tbaa !69
  %i.bw = icmp sgt i64 %i.bm, 0
  br i1 %i.bw, label %bb.t, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.t:                                             ; preds = %.noexc18.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %i.bf, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.t, %.noexc18.i.i
  %.not.i17.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bm) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bs
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.q
  %i.by = phi ptr [ %i.bu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.bf, %bb.q ] ; 4 uses
  %i.bz = phi ptr [ %i.bx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.bg, %bb.q ] ; 2 uses
  %.pn.i = phi ptr [ %i.bv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.bh, %bb.q ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.020.025.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, %i.ak
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.o

.loopexit.split-lp.loopexit.split-lp.i.loopexit.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.o
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bh, ptr %i.aa, align 8
  store ptr %i.bg, ptr %i.al, align 8
  store ptr %i.bf, ptr %8, align 8
  br label %.loopexit.split-lp.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i: ; preds = %bb.s
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i
  %i.cc = phi ptr [ %i.bf, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i ]
  %.pn10.i.i = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body.i

bb.w:                                             ; preds = %bb.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i = icmp eq ptr %i.at, %i.as
  br i1 %.not.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !37
  %i.cf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %._crit_edge.i unwind label %bb.y ; 0 uses

._crit_edge.i:                                    ; preds = %bb.x
  %.pre31.i = load ptr, ptr %8, align 8, !tbaa !76
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !76
  br label %.body.i

.body.i:                                          ; preds = %bb.y, %bb.v
  %i.ch = phi ptr [ %.pre.i, %bb.y ], [ %i.cc, %bb.v ] ; 3 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cg, %bb.y ], [ %.pn10.i.i, %bb.v ]
  %.not.i.i.i7.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %.body.i
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !77
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ], [ %eh.lpad-body.i20, %_ZNSt6vectorIdSaIdEED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.z, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.aa:                                            ; preds = %._crit_edge.i, %bb.w
  %i.cn = phi ptr [ %.pre31.i, %._crit_edge.i ], [ %i.as, %bb.w ] ; 3 uses
  %.not.i.i.i8.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i8.i, label %_ZN3g2o12_GLOBAL__N_111parseVectorIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !77
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #22
  br label %_ZN3g2o12_GLOBAL__N_111parseVectorIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit

_ZN3g2o12_GLOBAL__N_111parseVectorIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.au

bb.ac:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.cu, ptr %4, align 8, !tbaa !28
  store i16 15148, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.cv, align 8, !tbaa !27
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.cw, align 2, !tbaa !20
  invoke void @_ZN3g2o8strSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.25") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cx = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cu
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23: ; preds = %bb.ad
  %i.cz = load i64, ptr %i.cu, align 8, !tbaa !20
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i24: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.db = load ptr, ptr %3, align 8, !tbaa !140   ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !140 ; 2 uses
  %.not24.i.i25 = icmp eq ptr %i.db, %i.dd
  br i1 %.not24.i.i25, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i46, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i24
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  br label %bb.ag

._crit_edge.i.i35:                                ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit.i.i
  store ptr %i.et, ptr %i.ct, align 8
  store ptr %i.es, ptr %i.de, align 8
  store ptr %i.er, ptr %5, align 8
  %.pre.i.i36 = load ptr, ptr %3, align 8, !tbaa !72 ; 3 uses
  %.pre27.i.i37 = load ptr, ptr %i.dc, align 8, !tbaa !73 ; 2 uses
  %.not4.i.i.i.i.i38 = icmp eq ptr %.pre.i.i36, %.pre27.i.i37
  br i1 %.not4.i.i.i.i.i38, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i46, label %.lr.ph.i.i.i.i.i39

.lr.ph.i.i.i.i.i39:                               ; preds = %._crit_edge.i.i35, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i42
  %.05.i.i.i.i.i40 = phi ptr [ %i.dk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i42 ], [ %.pre.i.i36, %._crit_edge.i.i35 ] ; 3 uses
  %i.df = load ptr, ptr %.05.i.i.i.i.i40, align 8, !tbaa !19 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i40, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i41: ; preds = %.lr.ph.i.i.i.i.i39
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !20
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i42

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i42: ; preds = %.lr.ph.i.i.i.i.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i41
  %i.dk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i40, i64 32 ; 2 uses
  %.not.i.i.i.i.i43 = icmp eq ptr %i.dk, %.pre27.i.i37
  br i1 %.not.i.i.i.i.i43, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i44, label %.lr.ph.i.i.i.i.i39, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i44: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i42
  %.pr.i.i.i45 = load ptr, ptr %3, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i46: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i44, %._crit_edge.i.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i24
  %i.dl = phi ptr [ %i.er, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i44 ], [ %i.er, %._crit_edge.i.i35 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i24 ] ; 2 uses
  %i.dm = phi ptr [ %i.et, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i44 ], [ %i.et, %._crit_edge.i.i35 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i24 ]
  %i.dn = phi ptr [ %.pr.i.i.i45, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i44 ], [ %.pre.i.i36, %._crit_edge.i.i35 ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i24 ] ; 3 uses
  %.not.i.i1.i.i.i47 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i1.i.i.i47, label %bb.ao, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i46
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !74
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #22
  br label %bb.ao

bb.af:                                            ; preds = %bb.ac
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.cu
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i16: ; preds = %bb.af
  %i.dw = load i64, ptr %i.cu, align 8, !tbaa !20
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i17: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.an

bb.ag:                                            ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit.i.i, %.lr.ph.i.i26
  %i.dy = phi ptr [ null, %.lr.ph.i.i26 ], [ %i.er, %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit.i.i ] ; 8 uses
  %i.dz = phi ptr [ null, %.lr.ph.i.i26 ], [ %i.es, %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit.i.i ] ; 5 uses
  %i.ea = phi ptr [ null, %.lr.ph.i.i26 ], [ %i.et, %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit.i.i ] ; 5 uses
  %.sroa.020.025.i.i27 = phi ptr [ %i.db, %.lr.ph.i.i26 ], [ %i.eu, %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.eb = invoke noundef zeroext i1 @_ZN3g2o13convertStringIdEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_b(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020.025.i.i27, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext true)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i28 ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.ec = load double, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i.i.i32 = icmp eq ptr %i.ea, %i.dz
  br i1 %.not.i.i.i32, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store double %i.ec, ptr %i.ea, align 8, !tbaa !68
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = ptrtoint ptr %i.dy to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 6 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775800
  br i1 %i.eg, label %bb.ak, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.ea, ptr %i.ct, align 8
  store ptr %i.dz, ptr %i.de, align 8
  store ptr %i.dy, ptr %5, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #24
          to label %.noexc17.i.i60 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i58

.noexc17.i.i60:                                   ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.aj
  %i.eh = ashr exact i64 %i.ef, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i54 = call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i.i.i54, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = call i64 @llvm.umin.i64(i64 %i.ei, i64 1152921504606846975)
  %i.el = select i1 %i.ej, i64 1152921504606846975, i64 %i.ek ; 3 uses
  %.not.i.i.i16.i.i55 = icmp ne i64 %i.el, 0
  call void @llvm.assume(i1 %.not.i.i.i16.i.i55)
  %i.em = shl nuw nsw i64 %i.el, 3
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #27
          to label %.noexc18.i.i56 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i28 ; 4 uses

.noexc18.i.i56:                                   ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ef ; 2 uses
  store double %i.ec, ptr %i.eo, align 8, !tbaa !68
  %i.ep = icmp sgt i64 %i.ef, 0
  br i1 %i.ep, label %bb.al, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i

bb.al:                                            ; preds = %.noexc18.i.i56
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.en, ptr align 8 %i.dy, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.al, %.noexc18.i.i56
  %.not.i17.i.i.i.i57 = icmp eq ptr %i.dy, null
  br i1 %.not.i17.i.i.i.i57, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ef) #22
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i: ; preds = %bb.am, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i, %bb.ai
  %i.er = phi ptr [ %i.en, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i ], [ %i.dy, %bb.ai ] ; 4 uses
  %i.es = phi ptr [ %i.eq, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i ], [ %i.dz, %bb.ai ] ; 2 uses
  %.pn.i33 = phi ptr [ %i.eo, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i ], [ %i.ea, %bb.ai ]
  %i.et = getelementptr inbounds nuw i8, ptr %.pn.i33, i64 8 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.020.025.i.i27, i64 32 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.eu, %i.dd
  br i1 %.not.i.i34, label %._crit_edge.i.i35, label %bb.ag

.loopexit.split-lp.loopexit.split-lp.i.loopexit.i28: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.ag
  %lpad.loopexit.i29 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ea, ptr %i.ct, align 8
  store ptr %i.dz, ptr %i.de, align 8
  store ptr %i.dy, ptr %5, align 8
  br label %.loopexit.split-lp.loopexit.split-lp.i.i30

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i58: ; preds = %bb.ak
  %lpad.loopexit.split-lp.i59 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i.i30

.loopexit.split-lp.loopexit.split-lp.i.i30:       ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i58, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i28
  %lpad.phi.i31 = phi { ptr, i32 } [ %lpad.loopexit.i29, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i28 ], [ %lpad.loopexit.split-lp.i59, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i58 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i17
  %i.ev = phi ptr [ %i.dy, %.loopexit.split-lp.loopexit.split-lp.i.i30 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i17 ]
  %.pn10.i.i18 = phi { ptr, i32 } [ %lpad.phi.i31, %.loopexit.split-lp.loopexit.split-lp.i.i30 ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body.i19

bb.ao:                                            ; preds = %bb.ae, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not.i48 = icmp eq ptr %i.dm, %i.dl
  br i1 %.not.i48, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !37
  %i.ey = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %._crit_edge.i50 unwind label %bb.aq ; 0 uses

._crit_edge.i50:                                  ; preds = %bb.ap
  %.pre31.i51 = load ptr, ptr %5, align 8, !tbaa !80
  br label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %.pre.i49 = load ptr, ptr %5, align 8, !tbaa !80
  br label %.body.i19

.body.i19:                                        ; preds = %bb.aq, %bb.an
  %i.fa = phi ptr [ %.pre.i49, %bb.aq ], [ %i.ev, %bb.an ] ; 3 uses
  %eh.lpad-body.i20 = phi { ptr, i32 } [ %i.ez, %bb.aq ], [ %.pn10.i.i18, %bb.an ]
  %.not.i.i.i7.i21 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i7.i21, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %.body.i19
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !81
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = sub i64 %i.fd, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.ff) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.ar, %.body.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume

bb.as:                                            ; preds = %._crit_edge.i50, %bb.ao
  %i.fg = phi ptr [ %.pre31.i51, %._crit_edge.i50 ], [ %i.dl, %bb.ao ] ; 3 uses
  %.not.i.i.i8.i52 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i8.i52, label %_ZN3g2o12_GLOBAL__N_111parseVectorIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !81
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fl) #22
  br label %_ZN3g2o12_GLOBAL__N_111parseVectorIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit

_ZN3g2o12_GLOBAL__N_111parseVectorIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.au

bb.au:                                            ; preds = %_ZN3g2o12_GLOBAL__N_111parseVectorIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit, %_ZN3g2o12_GLOBAL__N_111parseVectorIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit, %bb.j, %_ZN3g2o12_GLOBAL__N_113parseArgumentIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit, %_ZN3g2o12_GLOBAL__N_113parseArgumentIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit, %_ZN3g2o12_GLOBAL__N_113parseArgumentIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit, %_ZN3g2o12_GLOBAL__N_113parseArgumentIfEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CommandArgs15CommandArgumentE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o11CommandArgs5paramERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbbS8_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.g2o::CommandArgs::CommandArgument", align 8 ; 18 uses
  %i.a = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !27
  store i8 0, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !27
  store i8 0, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 81
  store i8 0, ptr %i.j, align 1, !tbaa !82
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7 unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  store i32 4, ptr %i.g, align 8, !tbaa !33
  store ptr %2, ptr %i.h, align 8, !tbaa !37
  store i8 0, ptr %i.i, align 8, !tbaa !34
  store i8 %i.a, ptr %2, align 1, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7
  invoke void @_ZN3g2o11CommandArgs15CommandArgumentC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(82) %i.l, ptr noundef nonnull align 8 dereferenceable(82) %5)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store ptr %i.p, ptr %i.k, align 8, !tbaa !24
  br label %_ZNSt6vectorIN3g2o11CommandArgs15CommandArgumentESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt6vectorIN3g2o11CommandArgs15CommandArgumentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(82) %5)
          to label %_ZNSt6vectorIN3g2o11CommandArgs15CommandArgumentESaIS2_EE9push_backERKS2_.exit unwind label %bb.d

_ZNSt6vectorIN3g2o11CommandArgs15CommandArgumentESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc, %bb.c
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN3g2o11CommandArgs15CommandArgumentESaIS2_EE9push_backERKS2_.exit
  %i.t = load i64, ptr %i.e, align 8, !tbaa !20
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN3g2o11CommandArgs15CommandArgumentESaIS2_EE9push_backERKS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.v = load ptr, ptr %5, align 8, !tbaa !19     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZN3g2o11CommandArgs15CommandArgumentD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.x = load i64, ptr %i.b, align 8, !tbaa !20
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #22
  br label %_ZN3g2o11CommandArgs15CommandArgumentD2Ev.exit

_ZN3g2o11CommandArgs15CommandArgumentD2Ev.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3g2o11CommandArgs15CommandArgumentD2Ev(ptr noundef nonnull align 8 dead_on_return(82) dereferenceable(82) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.z
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o11CommandArgs15CommandArgumentD2Ev(ptr noundef nonnull align 8 dead_on_return(82) dereferenceable(82) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK3g2o11CommandArgs7arg2strB5cxx11ERKNS0_15CommandArgumentE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i34
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !20, !noalias !196
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #22
  br label %_ZN3g2o12_GLOBAL__N_115argument2StringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11CommandArgs15CommandArgumentE.exit

bb.q:                                             ; preds = %bb.l
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body.i26

.body.i26:                                        ; preds = %bb.o, %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32
  %eh.lpad-body.i27 = phi { ptr, i32 } [ %i.ea, %bb.q ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32 ], [ %i.dh, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !196
  br label %common.resume

_ZN3g2o12_GLOBAL__N_115argument2StringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11CommandArgs15CommandArgumentE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dt, align 8, !tbaa !13, !noalias !196
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eb) #23
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !196 ; 2 uses
  store ptr %i.ec, ptr %6, align 8, !tbaa !13, !noalias !196
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !196
  %i.ee = getelementptr i8, ptr %i.ec, i64 -24
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds i8, ptr %6, i64 %i.ef
  store ptr %i.ed, ptr %i.eg, align 8, !tbaa !13, !noalias !196
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.eh, align 8, !tbaa !88, !noalias !196
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ei) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !196
  br label %bb.ao

bb.r:                                             ; preds = %bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.val14 = load ptr, ptr %i.ej, align 8, !tbaa !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !200
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5), !noalias !200
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.el = load i8, ptr %.val14, align 1, !tbaa !38, !range !35, !noalias !200, !noundef !36
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, i1 noundef zeroext %i.em)
          to label %_ZNSolsEb.exit.i unwind label %bb.v, !noalias !200 ; 0 uses

_ZNSolsEb.exit.i:                                 ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.eo, ptr %0, align 8, !tbaa !28, !alias.scope !203
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ep, align 8, !tbaa !27, !alias.scope !203
  store i8 0, ptr %i.eo, align 8, !tbaa !20, !alias.scope !203
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !190, !noalias !203 ; 3 uses
  %.not.i.not.i.i.i39 = icmp eq ptr %i.er, null
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !noalias !203 ; 2 uses
  %i.eu = icmp ugt ptr %i.er, %i.et
  %.08.i.i.i.i40 = select i1 %i.eu, ptr %i.er, ptr %i.et ; 2 uses
  %.not5.i.i.i41 = icmp eq ptr %.08.i.i.i.i40, null
  %.not.i.i.i42 = select i1 %.not.i.not.i.i.i39, i1 true, i1 %.not5.i.i.i41
  br i1 %.not.i.i.i42, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZNSolsEb.exit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !191, !noalias !203 ; 2 uses
  %i.ex = ptrtoint ptr %.08.i.i.i.i40 to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ew, i64 noundef %i.ez)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i45 unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !203 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.eo
  br i1 %i.fd, label %.body.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43: ; preds = %bb.t
  %i.fe = load i64, ptr %i.eo, align 8, !tbaa !20, !alias.scope !203
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #22
  br label %.body.i37

bb.u:                                             ; preds = %_ZNSolsEb.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.fg)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i45 unwind label %bb.t

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i45: ; preds = %bb.u, %bb.s
  %i.fh = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !200 ; 2 uses
  store ptr %i.fh, ptr %5, align 8, !tbaa !13, !noalias !200
  %i.fi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !200
  %i.fj = getelementptr i8, ptr %i.fh, i64 -24
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds i8, ptr %5, i64 %i.fk
  store ptr %i.fi, ptr %i.fl, align 8, !tbaa !13, !noalias !200
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !200
  store ptr %i.fm, ptr %i.ek, align 8, !tbaa !13, !noalias !200
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fn, align 8, !tbaa !13, !noalias !200
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !19, !noalias !200 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZN3g2o12_GLOBAL__N_115argument2StringIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11CommandArgs15CommandArgumentE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i46: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i45
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !20, !noalias !200
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #22
  br label %_ZN3g2o12_GLOBAL__N_115argument2StringIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11CommandArgs15CommandArgumentE.exit

bb.v:                                             ; preds = %bb.r
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i37

.body.i37:                                        ; preds = %bb.t, %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43
  %eh.lpad-body.i38 = phi { ptr, i32 } [ %i.fu, %bb.v ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43 ], [ %i.fb, %bb.t ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !200
  br label %common.resume

_ZN3g2o12_GLOBAL__N_115argument2StringIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11CommandArgs15CommandArgumentE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i46
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fn, align 8, !tbaa !13, !noalias !200
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fv) #23
  %i.fw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !200 ; 2 uses
  store ptr %i.fw, ptr %5, align 8, !tbaa !13, !noalias !200
  %i.fx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !200
  %i.fy = getelementptr i8, ptr %i.fw, i64 -24
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds i8, ptr %5, i64 %i.fz
  store ptr %i.fx, ptr %i.ga, align 8, !tbaa !13, !noalias !200
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.gb, align 8, !tbaa !88, !noalias !200
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gc) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !200
  br label %bb.ao

bb.w:                                             ; preds = %bb.a
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !37 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.gf, ptr %0, align 8, !tbaa !28
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !19 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.gi, ptr %i.a, align 8, !tbaa !29
  %i.gj = icmp ugt i64 %i.gi, 15
  br i1 %i.gj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.w
  %i.gk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.gk, ptr %0, align 8, !tbaa !19
  %i.gl = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.gl, ptr %i.gf, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.w
  %i.gm = phi ptr [ %i.gk, %.noexc.i ], [ %i.gf, %bb.w ] ; 2 uses
  switch i64 %i.gi, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.x:                                             ; preds = %._crit_edge.i.i
  %i.gn = load i8, ptr %i.gg, align 1, !tbaa !20
  store i8 %i.gn, ptr %i.gm, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.y:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gm, ptr align 1 %i.gg, i64 %i.gi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.x, %bb.y
  %i.go = load i64, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !27
  %i.gq = load ptr, ptr %0, align 8, !tbaa !19
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.go
  store i8 0, ptr %i.gr, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ao

bb.z:                                             ; preds = %bb.a
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !37 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !204
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4), !noalias !204
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !83, !noalias !204 ; 3 uses
  %i.gw = load ptr, ptr %i.gt, align 8, !tbaa !76, !noalias !204 ; 2 uses
  %.not.i = icmp eq ptr %i.gv, %i.gw
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gy = load i32, ptr %i.gw, align 4, !tbaa !69, !noalias !204
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, i32 noundef %i.gy)
          to label %._crit_edge13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !204 ; 0 uses

._crit_edge13.i:                                  ; preds = %bb.aa
  %.pre.i = load ptr, ptr %i.gu, align 8, !tbaa !83, !noalias !204
  %.pre14.i = load ptr, ptr %i.gt, align 8, !tbaa !76, !noalias !204
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge13.i, %bb.z
  %i.ha = phi ptr [ %.pre14.i, %._crit_edge13.i ], [ %i.gv, %bb.z ]
  %i.hb = phi ptr [ %.pre.i, %._crit_edge13.i ], [ %i.gv, %bb.z ]
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = icmp ugt i64 %i.he, 4
  br i1 %i.hf, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ab
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.af

._crit_edge.i:                                    ; preds = %bb.ag, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.hh, ptr %0, align 8, !tbaa !28, !alias.scope !207
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.hi, align 8, !tbaa !27, !alias.scope !207
  store i8 0, ptr %i.hh, align 8, !tbaa !20, !alias.scope !207
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !190, !noalias !207 ; 3 uses
  %.not.i.not.i.i.i50 = icmp eq ptr %i.hk, null
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !207 ; 2 uses
  %i.hn = icmp ugt ptr %i.hk, %i.hm
  %.08.i.i.i.i51 = select i1 %i.hn, ptr %i.hk, ptr %i.hm ; 2 uses
  %.not5.i.i.i52 = icmp eq ptr %.08.i.i.i.i51, null
  %.not.i.i.i53 = select i1 %.not.i.not.i.i.i50, i1 true, i1 %.not5.i.i.i52
  br i1 %.not.i.i.i53, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !191, !noalias !207 ; 2 uses
  %i.hq = ptrtoint ptr %.08.i.i.i.i51 to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.hp, i64 noundef %i.hs)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i56 unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !207 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.hh
  br i1 %i.hw, label %.body.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54: ; preds = %bb.ad
  %i.hx = load i64, ptr %i.hh, align 8, !tbaa !20, !alias.scope !207
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #22
  br label %.body.i48

bb.ae:                                            ; preds = %._crit_edge.i
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.hz)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i56 unwind label %bb.ad

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i
  %.011.i = phi i64 [ 1, %.lr.ph.i ], [ %i.if, %bb.ag ] ; 2 uses
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !204 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.af
  %i.ib = load ptr, ptr %i.gt, align 8, !tbaa !76, !noalias !204
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %.011.i
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !69, !noalias !204
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, i32 noundef %i.id)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !204 ; 0 uses

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.if = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.ig = load ptr, ptr %i.gu, align 8, !tbaa !83, !noalias !204
  %i.ih = load ptr, ptr %i.gt, align 8, !tbaa !76, !noalias !204
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = ashr exact i64 %i.ik, 2
  %i.im = icmp ult i64 %i.if, %i.il
  br i1 %i.im, label %bb.af, label %._crit_edge.i, !llvm.loop !177

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.af, %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i48

.body.i48:                                        ; preds = %bb.ad, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54
  %eh.lpad-body.i49 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54 ], [ %i.hu, %bb.ad ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !204
  br label %common.resume

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i56: ; preds = %bb.ae, %bb.ac
  %i.in = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !204 ; 2 uses
  store ptr %i.in, ptr %4, align 8, !tbaa !13, !noalias !204
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !204
  %i.ip = getelementptr i8, ptr %i.in, i64 -24
  %i.iq = load i64, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds i8, ptr %4, i64 %i.iq
  store ptr %i.io, ptr %i.ir, align 8, !tbaa !13, !noalias !204
  %i.is = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !204
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.is, ptr %i.it, align 8, !tbaa !13, !noalias !204
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.iu, align 8, !tbaa !13, !noalias !204
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !19, !noalias !204 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZN3g2o12_GLOBAL__N_119writeVectorAsStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i56
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !20, !noalias !204
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #22
  br label %_ZN3g2o12_GLOBAL__N_119writeVectorAsStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EE.exit

_ZN3g2o12_GLOBAL__N_119writeVectorAsStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.iu, align 8, !tbaa !13, !noalias !204
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jb) #23
  %i.jc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !204 ; 2 uses
  store ptr %i.jc, ptr %4, align 8, !tbaa !13, !noalias !204
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !204
  %i.je = getelementptr i8, ptr %i.jc, i64 -24
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = getelementptr inbounds i8, ptr %4, i64 %i.jf
  store ptr %i.jd, ptr %i.jg, align 8, !tbaa !13, !noalias !204
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.jh, align 8, !tbaa !88, !noalias !204
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ji) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !204
  br label %bb.ao

bb.ah:                                            ; preds = %bb.a
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !37 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !208
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3), !noalias !208
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 3 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !86, !noalias !208 ; 3 uses
  %i.jn = load ptr, ptr %i.jk, align 8, !tbaa !80, !noalias !208 ; 2 uses
  %.not.i59 = icmp eq ptr %i.jm, %i.jn
  br i1 %.not.i59, label %_ZNSolsEd.exit.i65, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jp = load double, ptr %i.jn, align 8, !tbaa !68, !noalias !208
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jo, double noundef %i.jp)
          to label %._ZNSolsEd.exit_crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.i60.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !208 ; 0 uses

._ZNSolsEd.exit_crit_edge.i:                      ; preds = %bb.ai
  %.pre.i63 = load ptr, ptr %i.jl, align 8, !tbaa !86, !noalias !208
  %.pre14.i64 = load ptr, ptr %i.jk, align 8, !tbaa !80, !noalias !208
  br label %_ZNSolsEd.exit.i65

_ZNSolsEd.exit.i65:                               ; preds = %._ZNSolsEd.exit_crit_edge.i, %bb.ah
  %i.jr = phi ptr [ %.pre14.i64, %._ZNSolsEd.exit_crit_edge.i ], [ %i.jm, %bb.ah ]
  %i.js = phi ptr [ %.pre.i63, %._ZNSolsEd.exit_crit_edge.i ], [ %i.jm, %bb.ah ]
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jr to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = icmp ugt i64 %i.jv, 8
  br i1 %i.jw, label %.lr.ph.i76, label %._crit_edge.i66

.lr.ph.i76:                                       ; preds = %_ZNSolsEd.exit.i65
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.am

._crit_edge.i66:                                  ; preds = %_ZNSolsEd.exit11.i, %_ZNSolsEd.exit.i65
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.jy, ptr %0, align 8, !tbaa !28, !alias.scope !211
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.jz, align 8, !tbaa !27, !alias.scope !211
  store i8 0, ptr %i.jy, align 8, !tbaa !20, !alias.scope !211
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !190, !noalias !211 ; 3 uses
  %.not.i.not.i.i.i67 = icmp eq ptr %i.kb, null
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !211 ; 2 uses
  %i.ke = icmp ugt ptr %i.kb, %i.kd
  %.08.i.i.i.i68 = select i1 %i.ke, ptr %i.kb, ptr %i.kd ; 2 uses
  %.not5.i.i.i69 = icmp eq ptr %.08.i.i.i.i68, null
  %.not.i.i.i70 = select i1 %.not.i.not.i.i.i67, i1 true, i1 %.not5.i.i.i69
  br i1 %.not.i.i.i70, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i66
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !191, !noalias !211 ; 2 uses
  %i.kh = ptrtoint ptr %.08.i.i.i.i68 to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.kg, i64 noundef %i.kj)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i73 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.km = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !211 ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.jy
  br i1 %i.kn, label %.body.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71: ; preds = %bb.ak
  %i.ko = load i64, ptr %i.jy, align 8, !tbaa !20, !alias.scope !211
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #22
  br label %.body.i61

bb.al:                                            ; preds = %._crit_edge.i66
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.kq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i73 unwind label %bb.ak

bb.am:                                            ; preds = %_ZNSolsEd.exit11.i, %.lr.ph.i76
  %.012.i = phi i64 [ 1, %.lr.ph.i76 ], [ %i.kw, %_ZNSolsEd.exit11.i ] ; 2 uses
  %i.kr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77 unwind label %.loopexit.split-lp.loopexit.split-lp.i60.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !208 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77: ; preds = %bb.am
  %i.ks = load ptr, ptr %i.jk, align 8, !tbaa !80, !noalias !208
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %.012.i
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !68, !noalias !208
  %i.kv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, double noundef %i.ku)
          to label %_ZNSolsEd.exit11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i60.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !208 ; 0 uses

_ZNSolsEd.exit11.i:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77
  %i.kw = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.kx = load ptr, ptr %i.jl, align 8, !tbaa !86, !noalias !208
  %i.ky = load ptr, ptr %i.jk, align 8, !tbaa !80, !noalias !208
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = ashr exact i64 %i.lb, 3
  %i.ld = icmp ult i64 %i.kw, %i.lc
  br i1 %i.ld, label %bb.am, label %._crit_edge.i66, !llvm.loop !184

.loopexit.split-lp.loopexit.split-lp.i60.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77, %bb.am, %bb.ai
  %lpad.loopexit.split-lp120 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i61

.body.i61:                                        ; preds = %bb.ak, %.loopexit.split-lp.loopexit.split-lp.i60.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71
  %eh.lpad-body.i62 = phi { ptr, i32 } [ %lpad.loopexit.split-lp120, %.loopexit.split-lp.loopexit.split-lp.i60.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.kl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71 ], [ %i.kl, %bb.ak ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !208
  br label %common.resume

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i73: ; preds = %bb.al, %bb.aj
  %i.le = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !208 ; 2 uses
  store ptr %i.le, ptr %3, align 8, !tbaa !13, !noalias !208
  %i.lf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !208
  %i.lg = getelementptr i8, ptr %i.le, i64 -24
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = getelementptr inbounds i8, ptr %3, i64 %i.lh
  store ptr %i.lf, ptr %i.li, align 8, !tbaa !13, !noalias !208
  %i.lj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !208
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !13, !noalias !208
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ll, align 8, !tbaa !13, !noalias !208
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !19, !noalias !208 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %_ZN3g2o12_GLOBAL__N_119writeVectorAsStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i73
  %i.lq = load i64, ptr %i.lo, align 8, !tbaa !20, !noalias !208
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lr) #22
  br label %_ZN3g2o12_GLOBAL__N_119writeVectorAsStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EE.exit

_ZN3g2o12_GLOBAL__N_119writeVectorAsStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ll, align 8, !tbaa !13, !noalias !208
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ls) #23
  %i.lt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !208 ; 2 uses
  store ptr %i.lt, ptr %3, align 8, !tbaa !13, !noalias !208
  %i.lu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !208
  %i.lv = getelementptr i8, ptr %i.lt, i64 -24
  %i.lw = load i64, ptr %i.lv, align 8
  %i.lx = getelementptr inbounds i8, ptr %3, i64 %i.lw
  store ptr %i.lu, ptr %i.lx, align 8, !tbaa !13, !noalias !208
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ly, align 8, !tbaa !88, !noalias !208
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.lz) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !208
  br label %bb.ao

bb.an:                                            ; preds = %bb.a
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ma, ptr %0, align 8, !tbaa !28
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.mb, align 8, !tbaa !27
  store i8 0, ptr %i.ma, align 8, !tbaa !20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN3g2o12_GLOBAL__N_119writeVectorAsStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EE.exit, %_ZN3g2o12_GLOBAL__N_119writeVectorAsStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZN3g2o12_GLOBAL__N_115argument2StringIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11CommandArgs15CommandArgumentE.exit, %_ZN3g2o12_GLOBAL__N_115argument2StringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11CommandArgs15CommandArgumentE.exit, %_ZN3g2o12_GLOBAL__N_115argument2StringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11CommandArgs15CommandArgumentE.exit, %_ZN3g2o12_GLOBAL__N_115argument2StringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11CommandArgs15CommandArgumentE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK3g2o11CommandArgs8type2strEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(144) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 7
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK3g2o11CommandArgs8type2strEi, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.27, %bb.a ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !20
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
end_hunk_1
