Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeUtils?download=true
inline.NumInlined: 2503
inline.NumDeleted: 1278
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4Luau8toStringB5cxx11EPKNS_4TypeE:bb.a
  %.not4.i.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4Luau8toStringB5cxx11EPKNS_4TypeEONS_15ToStringOptionsE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.w, %_ZN4Luau8toStringB5cxx11EPKNS_4TypeEONS_15ToStringOptionsE.exit ] ; 3 uses
  %i.z = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !75 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !76
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.y
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.v, align 8, !tbaa !147
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZN4Luau8toStringB5cxx11EPKNS_4TypeEONS_15ToStringOptionsE.exit
  %i.af = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.w, %_ZN4Luau8toStringB5cxx11EPKNS_4TypeEONS_15ToStringOptionsE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !149
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !150 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN4Luau15ToStringOptionsD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.an, align 8, !tbaa !152
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !153
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !155
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #30, !inline_history !371
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !155
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #30, !inline_history !371
  br label %_ZN4Luau15ToStringOptionsD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i1.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.aq, %bb.f ], [ %i.ba, %bb.g ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.h, label %_ZN4Luau15ToStringOptionsD2Ev.exit, !prof !24

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #30
  br label %_ZN4Luau15ToStringOptionsD2Ev.exit

_ZN4Luau15ToStringOptionsD2Ev.exit:               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @_ZN4Luau15ToStringNameMapD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau15ToStringOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.bc
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau19getParameterExtentsEPKNS_6TxnLogEPKNS_11TypePackVarEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.86") align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Luau::TypePackIterator", align 8 ; 9 uses
  %5 = alloca %"struct.Luau::TypePackIterator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN4Luau5beginEPKNS_11TypePackVarEPKNS_6TxnLogE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %4, ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN4Luau3endEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %5, ptr noundef %2)
  %i.a = call noundef zeroext i1 @_ZN4Luau16TypePackIteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.017 = phi i64 [ %.1, %.lr.ph ], [ 0, %bb.a ]
  %.01416 = phi i64 [ %.115, %.lr.ph ], [ 0, %bb.a ]
  %i.b = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau16TypePackIteratordeEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = call noundef zeroext i1 @_ZN4Luau10isOptionalEPKNS_4TypeE(ptr noundef %i.c) ; 2 uses
  %i.e = add i64 %.017, 1                         ; 2 uses
  %i.f = select i1 %i.d, i64 0, i64 %i.e
  %.115 = add i64 %.01416, %i.f                   ; 2 uses
  %.1 = select i1 %i.d, i64 %i.e, i64 0           ; 2 uses
  %i.g = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau16TypePackIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40) %4) ; 0 uses
  %i.h = call noundef zeroext i1 @_ZN4Luau16TypePackIteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !383

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.014.lcssa = phi i64 [ 0, %bb.a ], [ %.115, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %.lr.ph ]
  %i.i = call { ptr, i8 } @_ZN4Luau16TypePackIterator4tailEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.j = extractvalue { ptr, i8 } %i.i, 1
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %._crit_edge
  %i.l = call { ptr, i8 } @_ZN4Luau16TypePackIterator4tailEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.m = extractvalue { ptr, i8 } %i.l, 0
  %i.n = call noundef zeroext i1 @_ZN4Luau14isVariadicTailEPKNS_11TypePackVarERKNS_6TxnLogEb(ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext %3)
  br i1 %i.n, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  store i64 %.014.lcssa, ptr %0, align 8, !tbaa !389
  br label %bb.d

.critedge:                                        ; preds = %._crit_edge, %bb.b
  %i.o = add i64 %.0.lcssa, %.014.lcssa
  store i64 %.014.lcssa, ptr %0, align 8, !tbaa !389
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.sink = phi i8 [ 1, %.critedge ], [ 0, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.q, align 8, !tbaa !390
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

declare void @_ZN4Luau5beginEPKNS_11TypePackVarEPKNS_6TxnLogE(ptr dead_on_unwind writable sret(%"struct.Luau::TypePackIterator") align 8, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN4Luau3endEPKNS_11TypePackVarE(ptr dead_on_unwind writable sret(%"struct.Luau::TypePackIterator") align 8, ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4Luau16TypePackIteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau16TypePackIteratordeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4Luau10isOptionalEPKNS_4TypeE(ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau16TypePackIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare { ptr, i8 } @_ZN4Luau16TypePackIterator4tailEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4Luau14isVariadicTailEPKNS_11TypePackVarERKNS_6TxnLogEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau14extendTypePackERNS_9TypeArenaENS_7NotNullINS_12BuiltinTypesEEEPKNS_11TypePackVarEmSt6vectorISt8optionalIPKNS_4TypeEESaISD_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::TypePack") align 8 captures(none) initializes((0, 24), (32, 33)) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr nofree readonly captures(none) %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly align 8 captures(none) %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Luau::Type", align 8       ; 13 uses
  %7 = alloca %"class.Luau::Variant.485", align 8 ; 7 uses
  %8 = alloca %"struct.Luau::TypePack", align 8   ; 7 uses
  %9 = alloca %"struct.Luau::TypePack", align 8   ; 15 uses
  %10 = alloca %"struct.Luau::FreeType", align 8  ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i8 0, ptr %i.a, align 8, !tbaa !157
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.bw, %bb.a
  %.promoted290 = phi ptr [ null, %bb.a ], [ %i.bd, %bb.bw ] ; 13 uses
  %i.d = phi ptr [ null, %bb.a ], [ %i.be, %bb.bw ] ; 13 uses
  %i.e = phi ptr [ null, %bb.a ], [ %i.bf, %bb.bw ] ; 3 uses
  %.promoted294 = phi ptr [ null, %bb.a ], [ %.lcssa245, %bb.bw ] ; 19 uses
  %.0185 = phi ptr [ %3, %bb.a ], [ %i.ne, %bb.bw ]
  %i.f = invoke noundef ptr @_ZN4Luau6followEPKNS_11TypePackVarE(ptr noundef %.0185)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 10 uses

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.f, align 8, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  switch i32 %i.g, label %.thread [
    i32 4, label %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader
    i32 5, label %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader
  ]

_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51   ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader
  %i.l = ptrtoint ptr %.promoted290 to i64
  %i.m = ptrtoint ptr %.promoted294 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ult i64 %i.o, %4
  br i1 %i.p, label %.lr.ph651, label %.critedge

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit
  %i.q = ptrtoint ptr %i.at to i64
  %i.r = ptrtoint ptr %i.au to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %i.u = icmp ult i64 %i.t, %4
  br i1 %i.u, label %.lr.ph651, label %.critedge, !llvm.loop !391

.lr.ph651:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.v = phi i64 [ %i.t, %.lr.ph ], [ %i.o, %.lr.ph.preheader ] ; 3 uses
  %i.w = phi i64 [ %i.s, %.lr.ph ], [ %i.n, %.lr.ph.preheader ] ; 5 uses
  %i.x = phi ptr [ %i.au, %.lr.ph ], [ %.promoted294, %.lr.ph.preheader ] ; 8 uses
  %.064248650 = phi i64 [ %i.av, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.y = phi ptr [ %i.aw, %.lr.ph ], [ %i.k, %.lr.ph.preheader ]
  %i.z = phi ptr [ %i.as, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.aa = phi ptr [ %i.ar, %.lr.ph ], [ %i.j, %.lr.ph.preheader ]
  %i.ab = phi ptr [ %i.at, %.lr.ph ], [ %.promoted290, %.lr.ph.preheader ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.064248650 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %i.z
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph651
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit

bb.f:                                             ; preds = %.lr.ph651
  %i.af = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.af, label %bb.g, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.x, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #26
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.v
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #27
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.w ; 2 uses
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !49
  store ptr %i.an, ptr %i.am, align 8, !tbaa !49
  %i.ao = icmp sgt i64 %i.w, 0
  br i1 %i.ao, label %bb.h, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.h:                                             ; preds = %.noexc83
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.x, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.h, %.noexc83
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.w) #29
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj ; 2 uses
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !160
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.e
  %i.ar = phi ptr [ %.pre, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.as = phi ptr [ %i.aq, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.z, %bb.e ] ; 5 uses
  %i.at = phi ptr [ %i.ap, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ae, %bb.e ] ; 4 uses
  %i.au = phi ptr [ %i.al, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.x, %bb.e ] ; 4 uses
  %i.av = add nuw i64 %.064248650, 1              ; 5 uses
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !47  ; 2 uses
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3                 ; 2 uses
  %i.bb = icmp ult i64 %i.av, %i.ba
  br i1 %i.bb, label %.lr.ph, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit..critedge.loopexit_crit_edge, !llvm.loop !391

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit..critedge.loopexit_crit_edge: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit
  %i.bc = icmp eq i64 %i.av, %i.ba
  br label %.critedge, !llvm.loop !391

.critedge:                                        ; preds = %.lr.ph.preheader, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit..critedge.loopexit_crit_edge, %.lr.ph, %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader
  %i.bd = phi ptr [ %.promoted290, %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ], [ %.promoted290, %.lr.ph.preheader ], [ %i.at, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit..critedge.loopexit_crit_edge ], [ %i.at, %.lr.ph ] ; 2 uses
  %i.be = phi ptr [ %i.d, %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ], [ %i.d, %.lr.ph.preheader ], [ %i.as, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit..critedge.loopexit_crit_edge ], [ %i.as, %.lr.ph ] ; 5 uses
  %i.bf = phi ptr [ %i.e, %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.as, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit..critedge.loopexit_crit_edge ], [ %i.as, %.lr.ph ]
  %.lcssa245 = phi ptr [ %.promoted294, %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ], [ %.promoted294, %.lr.ph.preheader ], [ %i.au, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit..critedge.loopexit_crit_edge ], [ %i.au, %.lr.ph ] ; 7 uses
  %.064.lcssa = phi i64 [ 0, %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ], [ 0, %.lr.ph.preheader ], [ %i.av, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit..critedge.loopexit_crit_edge ], [ %i.av, %.lr.ph ]
  %.lcssa223 = phi i1 [ true, %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ], [ false, %.lr.ph.preheader ], [ %i.bc, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit..critedge.loopexit_crit_edge ], [ false, %.lr.ph ]
  store ptr %.lcssa245, ptr %0, align 8
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = ptrtoint ptr %.lcssa245 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = icmp eq i64 %i.bj, %4
  br i1 %i.bk, label %bb.j, label %bb.r

bb.j:                                             ; preds = %.critedge
  br i1 %.lcssa223, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false)
  br label %.loopexit217

bb.l:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 0, ptr %i.bn, align 8, !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.bo = invoke noundef ptr @_ZN4Luau9TypeArena11addTypePackENS_8TypePackE(ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 %8)
          to label %bb.m unwind label %bb.p       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %8, align 8, !tbaa !47    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau8TypePackD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !160
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #29
  br label %_ZN4Luau8TypePackD2Ev.exit

_ZN4Luau8TypePackD2Ev.exit:                       ; preds = %bb.m, %bb.n
  %i.bv = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %i.bo)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc85:                                         ; preds = %_ZN4Luau8TypePackD2Ev.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !161
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.064.lcssa
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !161
  invoke void @_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvNS8_IPS3_S5_EET_SE_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr %i.bx, ptr %i.bz, ptr %i.ca)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %.noexc85
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bo, ptr %i.cd, align 8
  store i8 1, ptr %i.a, align 8
  br label %.loopexit217

bb.p:                                             ; preds = %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %8, align 8, !tbaa !47    ; 3 uses
  %.not.i.i.i.i87 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i87, label %_ZN4Luau8TypePackD2Ev.exit88, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !160
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #29
  br label %_ZN4Luau8TypePackD2Ev.exit88

bb.r:                                             ; preds = %.critedge
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !157, !range !87, !noundef !88
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.bw, label %.loopexit217

_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader: ; preds = %bb.d
  %i.co = ptrtoint ptr %.promoted290 to i64
  %i.cp = ptrtoint ptr %.promoted294 to i64       ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = ashr exact i64 %i.cq, 3                 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %4
  br i1 %i.cs, label %.lr.ph263, label %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit._crit_edge

.lr.ph263:                                        ; preds = %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99
  %i.ct = phi ptr [ %i.do, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99 ], [ %i.d, %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ] ; 3 uses
  %i.cu = phi ptr [ %i.dp, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99 ], [ %i.e, %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ] ; 3 uses
  %i.cv = phi i64 [ %i.dv, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99 ], [ %i.cr, %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ] ; 3 uses
  %i.cw = phi i64 [ %i.du, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99 ], [ %i.cq, %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ] ; 4 uses
  %i.cx = phi i64 [ %i.dt, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99 ], [ %i.cp, %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ]
  %i.cy = phi ptr [ %i.dr, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99 ], [ %.promoted290, %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ] ; 5 uses
  %i.cz = phi ptr [ %i.dq, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99 ], [ %.promoted294, %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ] ; 8 uses
  %.not.i90 = icmp eq ptr %i.cy, %i.cu
  br i1 %.not.i90, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph263
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !49
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !49
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99

bb.t:                                             ; preds = %.lr.ph263
  %i.db = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.db, label %bb.u, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i91

bb.u:                                             ; preds = %bb.t
  store ptr %i.cy, ptr %i.b, align 8
  store ptr %i.cz, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #26
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i91: ; preds = %bb.t
  %.sroa.speculated.i.i.i92 = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i92, %i.cv ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.cv
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 1152921504606846975)
  %i.df = select i1 %i.dd, i64 1152921504606846975, i64 %i.de ; 3 uses
  %.not.i.i.i93 = icmp ne i64 %i.df, 0
  tail call void @llvm.assume(i1 %.not.i.i.i93)
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #27
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i91
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %i.cw ; 2 uses
  %i.dj = load ptr, ptr %i.h, align 8, !tbaa !49
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !49
  %i.dk = icmp sgt i64 %i.cw, 0
  br i1 %i.dk, label %bb.v, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i94

bb.v:                                             ; preds = %.noexc98
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr align 8 %i.cz, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i94

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i94: ; preds = %bb.v, %.noexc98
  %.not.i17.i.i95 = icmp eq ptr %i.cz, null
  br i1 %.not.i17.i.i95, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i96, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i94
  %i.dl = ptrtoint ptr %i.cu to i64
  %i.dm = sub i64 %i.dl, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dm) #29
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i96

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i96: ; preds = %bb.w, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i94
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.df ; 3 uses
  store ptr %i.dn, ptr %i.c, align 8, !tbaa !160
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99: ; preds = %bb.s, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i96
  %i.do = phi ptr [ %i.ct, %bb.s ], [ %i.dn, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i96 ]
  %i.dp = phi ptr [ %i.cu, %bb.s ], [ %i.dn, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i96 ]
  %i.dq = phi ptr [ %i.cz, %bb.s ], [ %i.dh, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i96 ] ; 3 uses
  %.pn = phi ptr [ %i.cy, %bb.s ], [ %i.di, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i96 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 3 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 2 uses
  %i.dv = ashr exact i64 %i.du, 3                 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %4
  br i1 %i.dw, label %.lr.ph263, label %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit._crit_edge

_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit._crit_edge: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99, %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader
  %.lcssa260 = phi ptr [ %.promoted294, %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ], [ %i.dq, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99 ]
  %.lcssa256 = phi ptr [ %.promoted290, %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit.preheader ], [ %i.dr, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit99 ]
  store ptr %.lcssa256, ptr %i.b, align 8
  store ptr %.lcssa260, ptr %0, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.dx, align 8
  store i8 1, ptr %i.a, align 8
  br label %.loopexit217

.thread:                                          ; preds = %bb.c, %bb.d
  %.lcssa731 = phi ptr [ null, %bb.c ], [ %i.f, %bb.d ] ; 5 uses
  %i.dy = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %.lcssa731)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc101:                                        ; preds = %.thread
  %.not.i.i100 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i100, label %bb.bn, label %bb.x

bb.x:                                             ; preds = %.noexc101
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !159
  %i.ea = icmp eq i32 %i.dz, 2
  br i1 %i.ea, label %_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PKNS_11TypePackVarE.exit, label %bb.bn

_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PKNS_11TypePackVarE.exit: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 24, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i8 0, ptr %i.eb, align 8, !tbaa !157
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 4 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !394
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !395
  %i.eg = invoke noundef ptr @_ZN4Luau9TypeArena13freshTypePackEPNS_5ScopeENS_8PolarityE(ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef %i.ed, i8 noundef zeroext %i.ef)
          to label %bb.y unwind label %.loopexit.split-lp205 ; 3 uses

bb.y:                                             ; preds = %_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PKNS_11TypePackVarE.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.eg, ptr %i.eh, align 8
  store i8 1, ptr %i.eb, align 8
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !394 ; 2 uses
  %.not6.i = icmp eq ptr %i.ei, null
  br i1 %.not6.i, label %_ZN4Luau25trackInteriorFreeTypePackEPNS_5ScopeEPKNS_11TypePackVarE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %bb.af
  %.07.i = phi ptr [ %i.fl, %bb.af ], [ %i.ei, %bb.y ] ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.07.i, i64 968
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !164, !range !87, !noundef !88
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.z, label %bb.af

bb.z:                                             ; preds = %.lr.ph.i
  %i.em = getelementptr inbounds nuw i8, ptr %.07.i, i64 944 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.07.i, i64 952 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !165 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.07.i, i64 960 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !166
  %.not.i.i103 = icmp eq ptr %i.eo, %i.eq
  br i1 %.not.i.i103, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.eg, ptr %i.eo, align 8, !tbaa !167
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.er, ptr %i.en, align 8, !tbaa !165
  br label %_ZN4Luau25trackInteriorFreeTypePackEPNS_5ScopeEPKNS_11TypePackVarE.exit

bb.ab:                                            ; preds = %bb.z
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !168 ; 4 uses
  %i.et = ptrtoint ptr %i.eo to i64
  %i.eu = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.ev = sub i64 %i.et, %i.eu                    ; 5 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775800
  br i1 %i.ew, label %bb.ac, label %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #26
          to label %.noexc105 unwind label %.loopexit.split-lp205

.noexc105:                                        ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ab
  %i.ex = ashr exact i64 %i.ev, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ey = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ex ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  %i.fa = tail call i64 @llvm.umin.i64(i64 %i.ey, i64 1152921504606846975)
  %i.fb = select i1 %i.ez, i64 1152921504606846975, i64 %i.fa ; 3 uses
  %.not.i.i.i.i104 = icmp ne i64 %i.fb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i104)
  %i.fc = shl nuw nsw i64 %i.fb, 3
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #27
          to label %.noexc106 unwind label %.loopexit.split-lp205 ; 4 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %i.ev ; 2 uses
  store ptr %i.eg, ptr %i.fe, align 8, !tbaa !167
  %i.ff = icmp sgt i64 %i.ev, 0
  br i1 %i.ff, label %bb.ad, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.ad:                                            ; preds = %.noexc106
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fd, ptr align 8 %i.es, i64 %i.ev, i1 false)
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.ad, %.noexc106
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.fh = load ptr, ptr %i.ep, align 8, !tbaa !166
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 %i.fi, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.fj) #29
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.ae, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.fd, ptr %i.em, align 8, !tbaa !168
  store ptr %i.fg, ptr %i.en, align 8, !tbaa !165
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  store ptr %i.fk, ptr %i.ep, align 8, !tbaa !166
  br label %_ZN4Luau25trackInteriorFreeTypePackEPNS_5ScopeEPKNS_11TypePackVarE.exit

bb.af:                                            ; preds = %.lr.ph.i
  %i.fl = load ptr, ptr %.07.i, align 8, !tbaa !169 ; 2 uses
  %.not.i102 = icmp eq ptr %i.fl, null
  br i1 %.not.i102, label %_ZN4Luau25trackInteriorFreeTypePackEPNS_5ScopeEPKNS_11TypePackVarE.exit, label %.lr.ph.i, !llvm.loop !4

_ZN4Luau25trackInteriorFreeTypePackEPNS_5ScopeEPKNS_11TypePackVarE.exit: ; preds = %bb.af, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.aa, %bb.y
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false)
  %i.fn = ptrtoint ptr %.promoted290 to i64
  %i.fo = ptrtoint ptr %.promoted294 to i64       ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 2 uses
  %i.fq = ashr exact i64 %i.fp, 3                 ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %4
  br i1 %i.fr, label %.lr.ph287, label %._crit_edge

.lr.ph287:                                        ; preds = %_ZN4Luau25trackInteriorFreeTypePackEPNS_5ScopeEPKNS_11TypePackVarE.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 336
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 376 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 384
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 344
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 360 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph287, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136
  %i.ge = phi ptr [ %i.d, %.lr.ph287 ], [ %i.ko, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136 ] ; 6 uses
  %i.gf = phi i64 [ %i.fq, %.lr.ph287 ], [ %i.kv, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136 ] ; 3 uses
  %i.gg = phi i64 [ %i.fp, %.lr.ph287 ], [ %i.ku, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136 ] ; 4 uses
  %i.gh = phi i64 [ %i.fo, %.lr.ph287 ], [ %i.kt, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136 ]
  %.0285 = phi i64 [ 0, %.lr.ph287 ], [ %i.kr, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136 ] ; 3 uses
  %i.gi = phi ptr [ %.promoted290, %.lr.ph287 ], [ %i.kq, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136 ] ; 10 uses
  %i.gj = phi ptr [ %.promoted294, %.lr.ph287 ], [ %i.kp, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136 ] ; 14 uses
  %i.gk = load ptr, ptr %i.fs, align 8, !tbaa !398
  %i.gl = load ptr, ptr %5, align 8, !tbaa !399   ; 2 uses
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 4
  %i.gq = icmp ult i64 %.0285, %i.gp
  br i1 %i.gq, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %.0285 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load i8, ptr %i.gs, align 8, !tbaa !86, !range !87, !noundef !88
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gv = load ptr, ptr %i.gr, align 8, !tbaa !49
  br label %bb.az

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i144
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.md, ptr %i.b, align 8
  store ptr %i.me, ptr %0, align 8
  br label %_ZN4Luau8TypePackD2Ev.exit88

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i91
  %lpad.loopexit209 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cy, ptr %i.b, align 8
  store ptr %i.cz, ptr %0, align 8
  br label %_ZN4Luau8TypePackD2Ev.exit88

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit212 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.x, ptr %0, align 8
  br label %_ZN4Luau8TypePackD2Ev.exit88

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.b
  %lpad.loopexit303 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau8TypePackD2Ev.exit88

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.u, %.thread, %bb.bn, %bb.bs, %_ZN4Luau8TypePackD2Ev.exit, %.noexc85
  %i.gw = phi ptr [ %i.ab, %bb.g ], [ %i.ct, %bb.u ], [ %i.d, %.thread ], [ %i.d, %bb.bn ], [ %i.lz, %bb.bs ], [ %i.be, %_ZN4Luau8TypePackD2Ev.exit ], [ %i.be, %.noexc85 ]
  %i.gx = phi ptr [ %i.x, %bb.g ], [ %i.cz, %bb.u ], [ %.promoted294, %.thread ], [ %.promoted294, %bb.bn ], [ %i.me, %bb.bs ], [ %.lcssa245, %_ZN4Luau8TypePackD2Ev.exit ], [ %.lcssa245, %.noexc85 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau8TypePackD2Ev.exit88

end_hunk_0
begin_hunk_1_@_ZN4Luau14extendTypePackERNS_9TypeArenaENS_7NotNullINS_12BuiltinTypesEEEPKNS_11TypePackVarEmSt6vectorISt8optionalIPKNS_4TypeEESaISD_EE:bb.a
  call void @llvm.assume(i1 %.not.i.i.i.i113)
  %i.iw = shl nuw nsw i64 %i.iv, 3
  %i.ix = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iw) #27
          to label %.noexc116 unwind label %.loopexit199 ; 4 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 %i.ip ; 2 uses
  store ptr %i.hc, ptr %i.iy, align 8, !tbaa !49
  %i.iz = icmp sgt i64 %i.ip, 0
  br i1 %i.iz, label %bb.aw, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.aw:                                            ; preds = %.noexc116
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ix, ptr align 8 %i.im, i64 %i.ip, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.aw, %.noexc116
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %.not.i17.i.i.i114 = icmp eq ptr %i.im, null
  br i1 %.not.i17.i.i.i114, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.jb = load ptr, ptr %i.ij, align 8, !tbaa !160
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = sub i64 %i.jc, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.jd) #29
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.ax, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ix, ptr %i.ig, align 8, !tbaa !47
  store ptr %i.ja, ptr %i.ih, align 8, !tbaa !51
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iv
  store ptr %i.je, ptr %i.ij, align 8, !tbaa !160
  br label %_ZN4Luau21trackInteriorFreeTypeEPNS_5ScopeEPKNS_4TypeE.exit

bb.ay:                                            ; preds = %.lr.ph.i108
  %i.jf = load ptr, ptr %.07.i109, align 8, !tbaa !169 ; 2 uses
  %.not.i110 = icmp eq ptr %i.jf, null
  br i1 %.not.i110, label %_ZN4Luau21trackInteriorFreeTypeEPNS_5ScopeEPKNS_4TypeE.exit, label %.lr.ph.i108, !llvm.loop !5

_ZN4Luau21trackInteriorFreeTypeEPNS_5ScopeEPKNS_4TypeE.exit: ; preds = %bb.ay, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.at, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.az

.loopexit199:                                     ; preds = %bb.aj, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit201 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gi, ptr %i.b, align 8
  store ptr %i.gj, ptr %0, align 8
  br label %.body

.loopexit.split-lp200:                            ; preds = %bb.av
  %lpad.loopexit.split-lp202 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit199, %.loopexit.split-lp200, %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.hv, %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2.i ], [ %lpad.loopexit201, %.loopexit199 ], [ %lpad.loopexit.split-lp202, %.loopexit.split-lp200 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.bl

bb.az:                                            ; preds = %_ZN4Luau21trackInteriorFreeTypeEPNS_5ScopeEPKNS_4TypeE.exit, %bb.ai
  %.0186 = phi ptr [ %i.gv, %bb.ai ], [ %i.hc, %_ZN4Luau21trackInteriorFreeTypeEPNS_5ScopeEPKNS_4TypeE.exit ] ; 2 uses
  %i.jg = load ptr, ptr %i.gc, align 8, !tbaa !51 ; 5 uses
  %i.jh = load ptr, ptr %i.gd, align 8, !tbaa !160
  %.not.i117 = icmp eq ptr %i.jg, %i.jh
  br i1 %.not.i117, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr %.0186, ptr %i.jg, align 8, !tbaa !49
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %i.ji, ptr %i.gc, align 8, !tbaa !51
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit126

bb.bb:                                            ; preds = %bb.az
  %i.jj = load ptr, ptr %9, align 8, !tbaa !47    ; 4 uses
  %i.jk = ptrtoint ptr %i.jg to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl                    ; 6 uses
  %i.jn = icmp eq i64 %i.jm, 9223372036854775800
  br i1 %i.jn, label %.invoke, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i118

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i118: ; preds = %bb.bb
  %i.jo = ashr exact i64 %i.jm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i119 = call i64 @llvm.umax.i64(i64 %i.jo, i64 1)
  %i.jp = add nsw i64 %.sroa.speculated.i.i.i119, %i.jo ; 2 uses
  %i.jq = icmp ult i64 %i.jp, %i.jo
  %i.jr = call i64 @llvm.umin.i64(i64 %i.jp, i64 1152921504606846975)
  %i.js = select i1 %i.jq, i64 1152921504606846975, i64 %i.jr ; 3 uses
  %.not.i.i.i120 = icmp ne i64 %i.js, 0
  call void @llvm.assume(i1 %.not.i.i.i120)
  %i.jt = shl nuw nsw i64 %i.js, 3
  %i.ju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #27
          to label %.noexc125 unwind label %.loopexit204 ; 4 uses

.noexc125:                                        ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i118
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 %i.jm ; 3 uses
  store ptr %.0186, ptr %i.jv, align 8, !tbaa !49
  %i.jw = icmp sgt i64 %i.jm, 0
  br i1 %i.jw, label %bb.bc, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i121

bb.bc:                                            ; preds = %.noexc125
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ju, ptr align 8 %i.jj, i64 %i.jm, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i121

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i121: ; preds = %bb.bc, %.noexc125
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %.not.i17.i.i122 = icmp eq ptr %i.jj, null
  br i1 %.not.i17.i.i122, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i123, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i121
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jm) #29
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i123

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i123: ; preds = %bb.bd, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i121
  store ptr %i.ju, ptr %9, align 8, !tbaa !47
  store ptr %i.jx, ptr %i.gc, align 8, !tbaa !51
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.js
  store ptr %i.jy, ptr %i.gd, align 8, !tbaa !160
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit126

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit126: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i123, %bb.ba
  %i.jz = phi ptr [ %i.jv, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i123 ], [ %i.jg, %bb.ba ] ; 2 uses
  %.not.i127 = icmp eq ptr %i.gi, %i.ge
  br i1 %.not.i127, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit126
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !49
  store ptr %i.ka, ptr %i.gi, align 8, !tbaa !49
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136

bb.bf:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit126
  %i.kb = icmp eq i64 %i.gg, 9223372036854775800
  br i1 %i.kb, label %.invoke, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i128

.invoke:                                          ; preds = %bb.bf, %bb.bb
  store ptr %i.gi, ptr %i.b, align 8
  store ptr %i.gj, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #26
          to label %.cont unwind label %.loopexit.split-lp205

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i128: ; preds = %bb.bf
  %.sroa.speculated.i.i.i129 = call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  %i.kc = add nsw i64 %.sroa.speculated.i.i.i129, %i.gf ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.gf
  %i.ke = call i64 @llvm.umin.i64(i64 %i.kc, i64 1152921504606846975)
  %i.kf = select i1 %i.kd, i64 1152921504606846975, i64 %i.ke ; 3 uses
  %.not.i.i.i130 = icmp ne i64 %i.kf, 0
  call void @llvm.assume(i1 %.not.i.i.i130)
  %i.kg = shl nuw nsw i64 %i.kf, 3
  %i.kh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kg) #27
          to label %.noexc135 unwind label %.loopexit204 ; 4 uses

.noexc135:                                        ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i128
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 %i.gg ; 2 uses
  %i.kj = load ptr, ptr %i.jz, align 8, !tbaa !49
  store ptr %i.kj, ptr %i.ki, align 8, !tbaa !49
  %i.kk = icmp sgt i64 %i.gg, 0
  br i1 %i.kk, label %bb.bg, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i131

bb.bg:                                            ; preds = %.noexc135
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kh, ptr align 8 %i.gj, i64 %i.gg, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i131

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i131: ; preds = %bb.bg, %.noexc135
  %.not.i17.i.i132 = icmp eq ptr %i.gj, null
  br i1 %.not.i17.i.i132, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i133, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i131
  %i.kl = ptrtoint ptr %i.ge to i64
  %i.km = sub i64 %i.kl, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.km) #29
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i133

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i133: ; preds = %bb.bh, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i131
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kf ; 2 uses
  store ptr %i.kn, ptr %i.c, align 8, !tbaa !160
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i133, %bb.be
  %i.ko = phi ptr [ %i.kn, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i133 ], [ %i.ge, %bb.be ] ; 2 uses
  %i.kp = phi ptr [ %i.kh, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i133 ], [ %i.gj, %bb.be ] ; 3 uses
  %.pn301 = phi ptr [ %i.ki, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i133 ], [ %i.gi, %bb.be ]
  %i.kq = getelementptr inbounds nuw i8, ptr %.pn301, i64 8 ; 3 uses
  %i.kr = add i64 %.0285, 1
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.ku = sub i64 %i.ks, %i.kt                    ; 2 uses
  %i.kv = ashr exact i64 %i.ku, 3                 ; 2 uses
  %i.kw = icmp ult i64 %i.kv, %4
  br i1 %i.kw, label %bb.ag, label %._crit_edge, !llvm.loop !392

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136, %_ZN4Luau25trackInteriorFreeTypePackEPNS_5ScopeEPKNS_11TypePackVarE.exit
  %i.kx = phi ptr [ %i.d, %_ZN4Luau25trackInteriorFreeTypePackEPNS_5ScopeEPKNS_11TypePackVarE.exit ], [ %i.ko, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136 ] ; 2 uses
  %.lcssa276 = phi ptr [ %.promoted294, %_ZN4Luau25trackInteriorFreeTypePackEPNS_5ScopeEPKNS_11TypePackVarE.exit ], [ %i.kp, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136 ] ; 3 uses
  %.lcssa267 = phi ptr [ %.promoted290, %_ZN4Luau25trackInteriorFreeTypePackEPNS_5ScopeEPKNS_11TypePackVarE.exit ], [ %i.kq, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit136 ]
  store ptr %.lcssa267, ptr %i.b, align 8
  store ptr %.lcssa276, ptr %0, align 8
  %i.ky = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %.lcssa731)
          to label %bb.bi unwind label %.loopexit.split-lp205

bb.bi:                                            ; preds = %._crit_edge
  %i.kz = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE7emplaceISB_JSB_EEERT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %i.ky, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %bb.bj unwind label %.loopexit.split-lp205 ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.la = load ptr, ptr %9, align 8, !tbaa !47    ; 3 uses
  %.not.i.i.i.i137 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i.i137, label %_ZN4Luau8TypePackD2Ev.exit138, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !160
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %i.la to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.lf) #29
  br label %_ZN4Luau8TypePackD2Ev.exit138

_ZN4Luau8TypePackD2Ev.exit138:                    ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.loopexit217

.loopexit204:                                     ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i128, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i118
  %lpad.loopexit206 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gi, ptr %i.b, align 8
  store ptr %i.gj, ptr %0, align 8
  br label %bb.bl

.loopexit.split-lp205:                            ; preds = %.invoke, %._crit_edge, %bb.bi, %bb.ac, %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PKNS_11TypePackVarE.exit
  %i.lg = phi ptr [ %i.kx, %._crit_edge ], [ %i.kx, %bb.bi ], [ %i.d, %bb.ac ], [ %i.d, %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ge, %.invoke ], [ %i.d, %_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PKNS_11TypePackVarE.exit ]
  %i.lh = phi ptr [ %.lcssa276, %._crit_edge ], [ %.lcssa276, %bb.bi ], [ %.promoted294, %bb.ac ], [ %.promoted294, %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.gj, %.invoke ], [ %.promoted294, %_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PKNS_11TypePackVarE.exit ]
  %lpad.loopexit.split-lp207 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit204, %.loopexit.split-lp205, %.body
  %i.li = phi ptr [ %i.ge, %.body ], [ %i.ge, %.loopexit204 ], [ %i.lg, %.loopexit.split-lp205 ]
  %i.lj = phi ptr [ %i.gj, %.body ], [ %i.gj, %.loopexit204 ], [ %i.lh, %.loopexit.split-lp205 ]
  %.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.loopexit206, %.loopexit204 ], [ %lpad.loopexit.split-lp207, %.loopexit.split-lp205 ]
  %i.lk = load ptr, ptr %9, align 8, !tbaa !47    ; 3 uses
  %.not.i.i.i.i139 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i.i139, label %_ZN4Luau8TypePackD2Ev.exit140, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ll = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !160
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.lk to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef %i.lp) #29
  br label %_ZN4Luau8TypePackD2Ev.exit140

_ZN4Luau8TypePackD2Ev.exit140:                    ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %_ZN4Luau8TypePackD2Ev.exit88

bb.bn:                                            ; preds = %bb.x, %.noexc101
  %i.lq = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %.lcssa731)
          to label %.noexc142 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc142:                                        ; preds = %bb.bn
  %.not.i.i141 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i141, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %.noexc142
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !159
  %i.ls = icmp eq i32 %i.lr, 1
  br i1 %i.ls, label %_ZN4Luau10getMutableINS_9Unifiable5ErrorIPKNS_11TypePackVarEEEEEPT_S5_.exit.preheader, label %bb.bv

_ZN4Luau10getMutableINS_9Unifiable5ErrorIPKNS_11TypePackVarEEEEEPT_S5_.exit.preheader: ; preds = %bb.bo
  %i.lt = ptrtoint ptr %.promoted290 to i64
  %i.lu = ptrtoint ptr %.promoted294 to i64       ; 2 uses
  %i.lv = sub i64 %i.lt, %i.lu                    ; 2 uses
  %i.lw = ashr exact i64 %i.lv, 3                 ; 2 uses
  %i.lx = icmp ult i64 %i.lw, %4
  br i1 %i.lx, label %.lr.ph298, label %_ZN4Luau10getMutableINS_9Unifiable5ErrorIPKNS_11TypePackVarEEEEEPT_S5_.exit._crit_edge

.lr.ph298:                                        ; preds = %_ZN4Luau10getMutableINS_9Unifiable5ErrorIPKNS_11TypePackVarEEEEEPT_S5_.exit.preheader
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph298, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit152
  %i.lz = phi ptr [ %i.d, %.lr.ph298 ], [ %i.mt, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit152 ] ; 5 uses
  %i.ma = phi i64 [ %i.lw, %.lr.ph298 ], [ %i.mz, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit152 ] ; 3 uses
  %i.mb = phi i64 [ %i.lv, %.lr.ph298 ], [ %i.my, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit152 ] ; 4 uses
  %i.mc = phi i64 [ %i.lu, %.lr.ph298 ], [ %i.mx, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit152 ]
  %i.md = phi ptr [ %.promoted290, %.lr.ph298 ], [ %i.mv, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit152 ] ; 5 uses
  %i.me = phi ptr [ %.promoted294, %.lr.ph298 ], [ %i.mu, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit152 ] ; 8 uses
  %.not.i143 = icmp eq ptr %i.md, %i.lz
  br i1 %.not.i143, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mf = load ptr, ptr %i.ly, align 8, !tbaa !49
  store ptr %i.mf, ptr %i.md, align 8, !tbaa !49
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit152

bb.br:                                            ; preds = %bb.bp
  %i.mg = icmp eq i64 %i.mb, 9223372036854775800
  br i1 %i.mg, label %bb.bs, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i144

bb.bs:                                            ; preds = %bb.br
  store ptr %i.md, ptr %i.b, align 8
  store ptr %i.me, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #26
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %bb.bs
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i144: ; preds = %bb.br
  %.sroa.speculated.i.i.i145 = tail call i64 @llvm.umax.i64(i64 %i.ma, i64 1)
  %i.mh = add nsw i64 %.sroa.speculated.i.i.i145, %i.ma ; 2 uses
  %i.mi = icmp ult i64 %i.mh, %i.ma
  %i.mj = tail call i64 @llvm.umin.i64(i64 %i.mh, i64 1152921504606846975)
  %i.mk = select i1 %i.mi, i64 1152921504606846975, i64 %i.mj ; 3 uses
  %.not.i.i.i146 = icmp ne i64 %i.mk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i146)
  %i.ml = shl nuw nsw i64 %i.mk, 3
  %i.mm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ml) #27
          to label %.noexc151 unwind label %.loopexit ; 4 uses

.noexc151:                                        ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i144
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 %i.mb ; 2 uses
  %i.mo = load ptr, ptr %i.ly, align 8, !tbaa !49
  store ptr %i.mo, ptr %i.mn, align 8, !tbaa !49
  %i.mp = icmp sgt i64 %i.mb, 0
  br i1 %i.mp, label %bb.bt, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i147

bb.bt:                                            ; preds = %.noexc151
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mm, ptr align 8 %i.me, i64 %i.mb, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i147

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i147: ; preds = %bb.bt, %.noexc151
  %.not.i17.i.i148 = icmp eq ptr %i.me, null
  br i1 %.not.i17.i.i148, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i149, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i147
  %i.mq = ptrtoint ptr %i.lz to i64
  %i.mr = sub i64 %i.mq, %i.mc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef %i.mr) #29
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i149

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i149: ; preds = %bb.bu, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i147
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.mk ; 2 uses
  store ptr %i.ms, ptr %i.c, align 8, !tbaa !160
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit152

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit152: ; preds = %bb.bq, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i149
  %i.mt = phi ptr [ %i.lz, %bb.bq ], [ %i.ms, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i149 ]
  %i.mu = phi ptr [ %i.me, %bb.bq ], [ %i.mm, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i149 ] ; 3 uses
  %.pn302 = phi ptr [ %i.md, %bb.bq ], [ %i.mn, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i149 ]
  %i.mv = getelementptr inbounds nuw i8, ptr %.pn302, i64 8 ; 3 uses
  %i.mw = ptrtoint ptr %i.mv to i64
  %i.mx = ptrtoint ptr %i.mu to i64               ; 2 uses
  %i.my = sub i64 %i.mw, %i.mx                    ; 2 uses
  %i.mz = ashr exact i64 %i.my, 3                 ; 2 uses
  %i.na = icmp ult i64 %i.mz, %4
  br i1 %i.na, label %bb.bp, label %_ZN4Luau10getMutableINS_9Unifiable5ErrorIPKNS_11TypePackVarEEEEEPT_S5_.exit._crit_edge

_ZN4Luau10getMutableINS_9Unifiable5ErrorIPKNS_11TypePackVarEEEEEPT_S5_.exit._crit_edge: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit152, %_ZN4Luau10getMutableINS_9Unifiable5ErrorIPKNS_11TypePackVarEEEEEPT_S5_.exit.preheader
  %.lcssa295 = phi ptr [ %.promoted294, %_ZN4Luau10getMutableINS_9Unifiable5ErrorIPKNS_11TypePackVarEEEEEPT_S5_.exit.preheader ], [ %i.mu, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit152 ]
  %.lcssa291 = phi ptr [ %.promoted290, %_ZN4Luau10getMutableINS_9Unifiable5ErrorIPKNS_11TypePackVarEEEEEPT_S5_.exit.preheader ], [ %i.mv, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit152 ]
  store ptr %.lcssa291, ptr %i.b, align 8
  store ptr %.lcssa295, ptr %0, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.lcssa731, ptr %i.nb, align 8
  store i8 1, ptr %i.a, align 8
  br label %.loopexit217

bb.bv:                                            ; preds = %bb.bo, %.noexc142
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.lcssa731, ptr %i.nc, align 8
  store i8 1, ptr %i.a, align 8
  br label %.loopexit217

bb.bw:                                            ; preds = %bb.r
  %i.nd = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !167
  br label %bb.b

.loopexit217:                                     ; preds = %bb.r, %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit._crit_edge, %bb.bv, %_ZN4Luau10getMutableINS_9Unifiable5ErrorIPKNS_11TypePackVarEEEEEPT_S5_.exit._crit_edge, %_ZN4Luau8TypePackD2Ev.exit138, %bb.o, %bb.k
  ret void

_ZN4Luau8TypePackD2Ev.exit88:                     ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.p, %bb.q, %_ZN4Luau8TypePackD2Ev.exit140
  %i.nf = phi ptr [ %i.be, %bb.p ], [ %i.li, %_ZN4Luau8TypePackD2Ev.exit140 ], [ %i.be, %bb.q ], [ %i.lz, %.loopexit ], [ %i.ct, %.loopexit.split-lp.loopexit ], [ %i.ab, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.d, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.gw, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ng = phi ptr [ %.lcssa245, %bb.p ], [ %i.lj, %_ZN4Luau8TypePackD2Ev.exit140 ], [ %.lcssa245, %bb.q ], [ %i.me, %.loopexit ], [ %i.cz, %.loopexit.split-lp.loopexit ], [ %i.x, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.promoted294, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.gx, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.p ], [ %.pn.pn.pn, %_ZN4Luau8TypePackD2Ev.exit140 ], [ %i.ce, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit209, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit212, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit303, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i.i155 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i.i155, label %_ZN4Luau8TypePackD2Ev.exit156, label %bb.bx

bb.bx:                                            ; preds = %_ZN4Luau8TypePackD2Ev.exit88
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = sub i64 %i.nh, %i.ni
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.nj) #29
  br label %_ZN4Luau8TypePackD2Ev.exit156

_ZN4Luau8TypePackD2Ev.exit156:                    ; preds = %_ZN4Luau8TypePackD2Ev.exit88, %bb.bx
  resume { ptr, i32 } %.pn79.pn.pn
}

declare noundef ptr @_ZN4Luau9TypeArena11addTypePackENS_8TypePackE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef align 8) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef ptr @_ZN4Luau9TypeArena13freshTypePackEPNS_5ScopeENS_8PolarityE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau25trackInteriorFreeTypePackEPNS_5ScopeEPKNS_11TypePackVarE(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not6 = icmp eq ptr %0, null
  br i1 %.not6, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE9push_backERKS3_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.07 = phi ptr [ %i.ac, %bb.h ], [ %0, %bb.a ]  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 968
  %i.b = load i8, ptr %i.a, align 8, !tbaa !164, !range !87, !noundef !88
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.07, i64 944 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 952 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 960 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !166
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.f, align 8, !tbaa !167
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !165
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE9push_backERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !168  ; 4 uses
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #26
  unreachable

_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.m ; 2 uses
  store ptr %1, ptr %i.v, align 8, !tbaa !167
  %i.w = icmp sgt i64 %i.m, 0
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.not.i17.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !166
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.aa) #29
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.u, ptr %i.d, align 8, !tbaa !168
  store ptr %i.x, ptr %i.e, align 8, !tbaa !165
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !166
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE9push_backERKS3_.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ac = load ptr, ptr %.07, align 8, !tbaa !169 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE9push_backERKS3_.exit, label %.lr.ph, !llvm.loop !4

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.h, %bb.a, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.c
  ret void
}

declare void @_ZN4Luau8FreeTypeC1EPNS_5ScopeEPKNS_4TypeES5_NS_8PolarityE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau21trackInteriorFreeTypeEPNS_5ScopeEPKNS_4TypeE(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not6 = icmp eq ptr %0, null
  br i1 %.not6, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.07 = phi ptr [ %i.ac, %bb.h ], [ %0, %bb.a ]  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 936
  %i.b = load i8, ptr %i.a, align 8, !tbaa !197, !range !87, !noundef !88
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.07, i64 912 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 920 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 928 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !160
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.f, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !51
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !47   ; 4 uses
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #26
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.m ; 2 uses
  store ptr %1, ptr %i.v, align 8, !tbaa !49
  %i.w = icmp sgt i64 %i.m, 0
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.not.i17.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !160
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.aa) #29
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.u, ptr %i.d, align 8, !tbaa !47
end_hunk_1
begin_hunk_2_@_ZN4Luau11reduceUnionERKSt6vectorIPKNS_4TypeESaIS3_EE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180
  %.sroa.0133.0323 = phi ptr [ null, %.lr.ph ], [ %.sroa.0133.8187, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180 ] ; 16 uses
  %.sroa.14.0322 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.5186, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180 ] ; 11 uses
  %.sroa.25.0321 = phi ptr [ null, %.lr.ph ], [ %.sroa.25.8185, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180 ] ; 10 uses
  %.sroa.0130.0320 = phi ptr [ %i.a, %.lr.ph ], [ %i.fx, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180 ] ; 2 uses
  %i.n = load ptr, ptr %.sroa.0130.0320, align 8, !tbaa !49
  %i.o = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.n)
          to label %bb.c unwind label %.loopexit212 ; 13 uses

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %.thread158, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  switch i32 %i.p, label %bb.e [
    i32 17, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180
    i32 1, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit
    i32 12, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit
  ]

_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit: ; preds = %bb.d, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread188 unwind label %.loopexit.split-lp213 ; 3 uses

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread188: ; preds = %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit
  store ptr %i.q, ptr %0, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.i, align 8, !tbaa !160
  store ptr %i.o, ptr %i.q, align 8, !tbaa !49
  store ptr %i.r, ptr %i.j, align 8, !tbaa !51
  br label %.loopexit220

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %i.p, 13
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.s, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit, label %.thread158

_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN4Luau5beginEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %2, ptr noundef nonnull %i.t)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZN4Luau3endEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %3, ptr noundef nonnull %i.t)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit unwind label %bb.i

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit:  ; preds = %bb.f, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i
  %.sroa.25.1 = phi ptr [ %.sroa.25.2.ph, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i ], [ %.sroa.25.0321, %bb.f ] ; 8 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.2.ph, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i ], [ %.sroa.14.0322, %bb.f ] ; 10 uses
  %.sroa.0133.1 = phi ptr [ %.sroa.0133.2.ph, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i ], [ %.sroa.0133.0323, %bb.f ] ; 13 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !27
  %i.v = icmp eq i64 %i.u, 0                      ; 2 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !27
  %i.x = icmp eq i64 %i.w, 0                      ; 2 uses
  %brmerge.i.i = select i1 %i.v, i1 true, i1 %i.x
  br i1 %brmerge.i.i, label %bb.g, label %.split

.split:                                           ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !25
  %i.z = load i64, ptr %i.f, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !25
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !44
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.ag = icmp eq ptr %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp eq i64 %i.ai, %i.ak
  %i.am = select i1 %i.ag, i1 %i.al, i1 false
  br i1 %i.am, label %.loopexit208, label %bb.j

bb.g:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit
  %.mux.i.i = select i1 %i.v, i1 %i.x, i1 false
  br i1 %.mux.i.i, label %.loopexit208, label %bb.j

.loopexit212:                                     ; preds = %bb.b, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i94
  %.sroa.25.0321.lcssa = phi ptr [ %.sroa.25.0321, %bb.b ], [ %.sroa.14.0322, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i94 ]
  %lpad.loopexit214 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp213:                            ; preds = %bb.as, %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit
  %.sroa.25.0321385 = phi ptr [ %.sroa.14.0322, %bb.as ], [ %.sroa.25.0321, %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit ]
  %lpad.loopexit.split-lp215 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.i:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ab, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i
  %lpad.loopexit.split-lp577 = landingpad { ptr, i32 }
          cleanup
  br label %.body60

bb.j:                                             ; preds = %.split, %bb.g
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc unwind label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  %i.ap = load ptr, ptr %2, align 8, !tbaa !25
  %i.aq = load i64, ptr %i.f, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ar, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.as = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %.sroa.0.0.copyload.i)
          to label %.noexc50 unwind label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.noexc
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.4.0.copyload.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !49
  %i.aw = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.av)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit unwind label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit:  ; preds = %.noexc50
  %i.ax = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.aw)
          to label %bb.k unwind label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

bb.k:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit
  %.not.i.i52 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i52, label %.thread166, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !18
  switch i32 %i.ay, label %.thread166 [
    i32 17, label %bb.aa
    i32 1, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit55
    i32 12, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit55
  ]

_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit55: ; preds = %bb.l, %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.az = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit53 unwind label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit, %bb.j, %.noexc, %.noexc50, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit55, %bb.x
  %lpad.loopexit.split-lp581 = landingpad { ptr, i32 }
          cleanup
  br label %.body60

.thread166:                                       ; preds = %bb.l, %bb.k
  %i.ba = ptrtoint ptr %.sroa.14.1 to i64         ; 2 uses
  %i.bb = ptrtoint ptr %.sroa.0133.1 to i64       ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 8 uses
  %i.bd = ashr i64 %i.bc, 5                       ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread166
  %i.bf = and i64 %i.bc, -32
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0133.1, i64 %i.bf ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i ], [ %i.bs, %bb.q ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.0133.1, %.lr.ph.i.i.i ], [ %i.br, %bb.q ] ; 9 uses
  %i.bg = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !49
  %i.bh = icmp eq ptr %i.bg, %i.ax
  br i1 %i.bh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !49
  %i.bk = icmp eq ptr %i.bj, %i.ax
  br i1 %i.bk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit486, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !49
  %i.bn = icmp eq ptr %i.bm, %i.ax
  br i1 %i.bn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit484, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !49
  %i.bq = icmp eq ptr %i.bp, %i.ax
  br i1 %i.bq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.bs = add nsw i64 %.052.i.i.i, -1
  %4 = icmp samesign ugt i64 %.052.i.i.i, 1
  br i1 %4, label %bb.m, label %._crit_edge.loopexit.i.i.i, !llvm.loop !401

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.q
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ba, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.thread166
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bc, %.thread166 ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.0133.1, %.thread166 ] ; 5 uses
  %i.bt = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.bt, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit [
    i64 3, label %bb.r
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.bu = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !49
  %i.bv = icmp eq ptr %i.bu, %i.ax
  br i1 %i.bv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.s
  %.sroa.032.1.i.i.i = phi ptr [ %i.bw, %bb.s ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bx = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !49
  %i.by = icmp eq ptr %i.bx, %i.ax
  br i1 %i.by, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.t
  %.sroa.032.2.i.i.i = phi ptr [ %i.bz, %bb.t ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ca = load ptr, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !49
  %i.cb = icmp eq ptr %i.ca, %i.ax
  %spec.select.i.i.i = select i1 %i.cb, ptr %.sroa.032.2.i.i.i, ptr %.sroa.14.1
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit484: ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit486: ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit: ; preds = %bb.m, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit484, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit486, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.r, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.14.1, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.r ], [ %i.ce, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit486 ], [ %i.cc, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit ], [ %i.cd, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit484 ], [ %.sroa.032.051.i.i.i, %bb.m ]
  %i.cf = icmp eq ptr %.sroa.14.1, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %i.cf, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %.not.i = icmp eq ptr %.sroa.14.1, %.sroa.25.1
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.ax, ptr %.sroa.14.1, align 8, !tbaa !49
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.14.1, i64 8
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.ch = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.ch, label %bb.x, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #26
          to label %.noexc63 unwind label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.ci = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #27
          to label %.noexc64 unwind label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.bc ; 2 uses
  store ptr %i.ax, ptr %i.cp, align 8, !tbaa !49
  %i.cq = icmp sgt i64 %i.bc, 0
  br i1 %i.cq, label %bb.y, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.y:                                             ; preds = %.noexc64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %.sroa.0133.1, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.y, %.noexc64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0133.1, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.cs = ptrtoint ptr %.sroa.25.1 to i64
  %i.ct = sub i64 %i.cs, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0133.1, i64 noundef %i.ct) #29
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
  br label %bb.aa

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit53: ; preds = %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit55
  store ptr %i.az, ptr %0, align 8, !tbaa !47
  %i.cv = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  store ptr %i.cv, ptr %i.i, align 8, !tbaa !160
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !49
  store ptr %i.cv, ptr %i.j, align 8, !tbaa !51
  br label %.loopexit208

bb.aa:                                            ; preds = %bb.l, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, %bb.v, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.25.2.ph = phi ptr [ %.sroa.25.1, %bb.v ], [ %i.cu, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.25.1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit ], [ %.sroa.25.1, %bb.l ] ; 2 uses
  %.sroa.14.2.ph = phi ptr [ %i.cg, %bb.v ], [ %i.cr, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.14.1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit ], [ %.sroa.14.1, %bb.l ]
  %.sroa.0133.2.ph = phi ptr [ %.sroa.0133.1, %bb.v ], [ %i.co, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0133.1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit ], [ %.sroa.0133.1, %bb.l ] ; 2 uses
  %i.cw = load i64, ptr %i.d, align 8, !tbaa !27
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !26
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.lr.ph.i.i
  %i.cy = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.du, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i ]
  %i.cz = load ptr, ptr %2, align 8, !tbaa !25
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cy ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !50
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !50
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !40
  %i.df = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %i.de)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc66:                                         ; preds = %bb.ab
  %i.dg = load i64, ptr %i.db, align 8, !tbaa !50
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !51
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !47
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3
  %.not.i.i65 = icmp ult i64 %i.dg, %i.dn
  br i1 %.not.i.i65, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc66
  %i.do = load i64, ptr %i.f, align 8, !tbaa !26
  %i.dp = add i64 %i.do, 1                        ; 3 uses
  store i64 %i.dp, ptr %i.f, align 8, !tbaa !26
  %i.dq = load i64, ptr %i.d, align 8, !tbaa !27
  %i.dr = add i64 %i.dq, -1                       ; 2 uses
  store i64 %i.dr, ptr %i.d, align 8, !tbaa !27
  %i.ds = load i64, ptr %i.h, align 8, !tbaa !23
  %i.dt = icmp eq i64 %i.dp, %i.ds
  br i1 %i.dt, label %bb.ad, label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  store i64 0, ptr %i.f, align 8, !tbaa !26
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i: ; preds = %bb.ad, %bb.ac
  %i.du = phi i64 [ 0, %bb.ad ], [ %i.dp, %bb.ac ]
  %i.dv = icmp eq i64 %i.dr, 0
  br i1 %i.dv, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.ab

_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i: ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.noexc66, %bb.aa
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit208:                                     ; preds = %bb.g, %.split, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit53
  %.0.i.i412 = phi i1 [ false, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit53 ], [ true, %.split ], [ true, %bb.g ]
  %i.dw = load ptr, ptr %i.k, align 8, !tbaa !39  ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i68, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %.loopexit208
  call void @_ZdlPv(ptr noundef nonnull %i.dw) #30
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit:  ; preds = %.loopexit208, %bb.ae
  %i.dx = load ptr, ptr %3, align 8, !tbaa !25
  %i.dy = load i64, ptr %i.l, align 8, !tbaa !23
  %i.dz = shl i64 %i.dy, 4
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.dz) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !39  ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i69, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit70, label %bb.af

bb.af:                                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ea) #30
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit70

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit70: ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, %bb.af
  %i.eb = load ptr, ptr %2, align 8, !tbaa !25
  %i.ec = load i64, ptr %i.h, align 8, !tbaa !23
  %i.ed = shl i64 %i.ec, 4
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ed) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i412, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180, label %.loopexit220

.body60:                                          ; preds = %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.25.4 = phi ptr [ %.sroa.25.2.ph, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.25.1, %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0133.4 = phi ptr [ %.sroa.0133.2.ph, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0133.1, %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn40 = phi { ptr, i32 } [ %lpad.loopexit.split-lp577, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp581, %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #30
  br label %bb.ag

bb.ag:                                            ; preds = %.body60, %bb.i
  %.sroa.25.5 = phi ptr [ %.sroa.25.4, %.body60 ], [ %.sroa.25.0321, %bb.i ]
  %.sroa.0133.5 = phi ptr [ %.sroa.0133.4, %.body60 ], [ %.sroa.0133.0323, %bb.i ]
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %.body60 ], [ %i.ao, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #30
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.h
  %.sroa.25.6 = phi ptr [ %.sroa.25.5, %bb.ag ], [ %.sroa.25.0321, %bb.h ]
  %.sroa.0133.6 = phi ptr [ %.sroa.0133.5, %bb.ag ], [ %.sroa.0133.0323, %bb.h ]
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %bb.ag ], [ %i.an, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body

.thread158:                                       ; preds = %bb.c, %bb.e
  %i.ee = ptrtoint ptr %.sroa.14.0322 to i64      ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.0133.0323 to i64
  %i.eg = sub i64 %i.ee, %i.ef                    ; 9 uses
  %i.eh = ashr i64 %i.eg, 5                       ; 2 uses
  %i.ei = icmp sgt i64 %i.eh, 0
  br i1 %i.ei, label %.lr.ph.i.i.i82, label %._crit_edge.i.i.i71

.lr.ph.i.i.i82:                                   ; preds = %.thread158
  %i.ej = and i64 %i.eg, -32
  %scevgep.i.i.i83 = getelementptr i8, ptr %.sroa.0133.0323, i64 %i.ej ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.am, %.lr.ph.i.i.i82
  %.052.i.i.i84 = phi i64 [ %i.eh, %.lr.ph.i.i.i82 ], [ %i.ew, %bb.am ] ; 2 uses
  %.sroa.032.051.i.i.i85 = phi ptr [ %.sroa.0133.0323, %.lr.ph.i.i.i82 ], [ %i.ev, %bb.am ] ; 9 uses
  %i.ek = load ptr, ptr %.sroa.032.051.i.i.i85, align 8, !tbaa !49
  %i.el = icmp eq ptr %i.ek, %i.o
  br i1 %i.el, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i85, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !49
  %i.eo = icmp eq ptr %i.en, %i.o
  br i1 %i.eo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.loopexit.split.loop.exit494, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i85, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !49
  %i.er = icmp eq ptr %i.eq, %i.o
  br i1 %i.er, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.loopexit.split.loop.exit492, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i85, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !49
  %i.eu = icmp eq ptr %i.et, %i.o
  br i1 %i.eu, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.loopexit.split.loop.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i85, i64 32
  %i.ew = add nsw i64 %.052.i.i.i84, -1
  %5 = icmp samesign ugt i64 %.052.i.i.i84, 1
  br i1 %5, label %bb.ai, label %._crit_edge.loopexit.i.i.i86, !llvm.loop !401

._crit_edge.loopexit.i.i.i86:                     ; preds = %bb.am
  %.pre59.i.i.i87 = ptrtoint ptr %scevgep.i.i.i83 to i64
  %.pre60.i.i.i88 = sub i64 %i.ee, %.pre59.i.i.i87
  br label %._crit_edge.i.i.i71

._crit_edge.i.i.i71:                              ; preds = %._crit_edge.loopexit.i.i.i86, %.thread158
  %.pre-phi61.i.i.i72 = phi i64 [ %.pre60.i.i.i88, %._crit_edge.loopexit.i.i.i86 ], [ %i.eg, %.thread158 ]
  %.sroa.032.0.lcssa.i.i.i73 = phi ptr [ %scevgep.i.i.i83, %._crit_edge.loopexit.i.i.i86 ], [ %.sroa.0133.0323, %.thread158 ] ; 5 uses
  %i.ex = ashr exact i64 %.pre-phi61.i.i.i72, 3
  switch i64 %i.ex, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.thread [
    i64 3, label %bb.an
    i64 2, label %._crit_edge._crit_edge.i.i.i79
    i64 1, label %._crit_edge._crit_edge57.i.i.i74
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i71
  %i.ey = load ptr, ptr %.sroa.032.0.lcssa.i.i.i73, align 8, !tbaa !49
  %i.ez = icmp eq ptr %i.ey, %i.o
  br i1 %i.ez, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i73, i64 8
  br label %._crit_edge._crit_edge.i.i.i79

._crit_edge._crit_edge.i.i.i79:                   ; preds = %._crit_edge.i.i.i71, %bb.ao
  %.sroa.032.1.i.i.i81 = phi ptr [ %i.fa, %bb.ao ], [ %.sroa.032.0.lcssa.i.i.i73, %._crit_edge.i.i.i71 ] ; 3 uses
  %i.fb = load ptr, ptr %.sroa.032.1.i.i.i81, align 8, !tbaa !49
  %i.fc = icmp eq ptr %i.fb, %i.o
  br i1 %i.fc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge._crit_edge.i.i.i79
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i81, i64 8
  br label %._crit_edge._crit_edge57.i.i.i74

._crit_edge._crit_edge57.i.i.i74:                 ; preds = %._crit_edge.i.i.i71, %bb.ap
  %.sroa.032.2.i.i.i76 = phi ptr [ %i.fd, %bb.ap ], [ %.sroa.032.0.lcssa.i.i.i73, %._crit_edge.i.i.i71 ] ; 2 uses
  %i.fe = load ptr, ptr %.sroa.032.2.i.i.i76, align 8, !tbaa !49
  %i.ff = icmp eq ptr %i.fe, %i.o
  %spec.select.i.i.i77 = select i1 %i.ff, ptr %.sroa.032.2.i.i.i76, ptr %.sroa.14.0322
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.loopexit.split.loop.exit: ; preds = %bb.al
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i85, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.loopexit.split.loop.exit492: ; preds = %bb.ak
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i85, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.loopexit.split.loop.exit494: ; preds = %bb.aj
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i85, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92: ; preds = %bb.ai, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.loopexit.split.loop.exit492, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.loopexit.split.loop.exit494, %._crit_edge._crit_edge57.i.i.i74, %._crit_edge._crit_edge.i.i.i79, %bb.an
  %.sroa.08.0.in.sroa.speculated.i.i.i78 = phi ptr [ %.sroa.032.1.i.i.i81, %._crit_edge._crit_edge.i.i.i79 ], [ %spec.select.i.i.i77, %._crit_edge._crit_edge57.i.i.i74 ], [ %.sroa.032.0.lcssa.i.i.i73, %bb.an ], [ %i.fi, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.loopexit.split.loop.exit494 ], [ %i.fh, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.loopexit.split.loop.exit492 ], [ %i.fg, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i85, %bb.ai ]
  %i.fj = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i78, %.sroa.14.0322
  br i1 %i.fj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.thread, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.thread: ; preds = %._crit_edge.i.i.i71, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92
  %.not.i93 = icmp eq ptr %.sroa.14.0322, %.sroa.25.0321
  br i1 %.not.i93, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.thread
  store ptr %i.o, ptr %.sroa.14.0322, align 8, !tbaa !49
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.14.0322, i64 8
  br label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180

bb.ar:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92.thread
  %i.fl = icmp eq i64 %i.eg, 9223372036854775800
  br i1 %i.fl, label %bb.as, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i94

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #26
          to label %.noexc100 unwind label %.loopexit.split-lp213

.noexc100:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i94: ; preds = %bb.ar
  %i.fm = ashr exact i64 %i.eg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i95 = call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i95, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = call i64 @llvm.umin.i64(i64 %i.fn, i64 1152921504606846975)
  %i.fq = select i1 %i.fo, i64 1152921504606846975, i64 %i.fp ; 3 uses
  %.not.i.i.i96 = icmp ne i64 %i.fq, 0
  call void @llvm.assume(i1 %.not.i.i.i96)
  %i.fr = shl nuw nsw i64 %i.fq, 3
  %i.fs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #27
          to label %.noexc101 unwind label %.loopexit212 ; 4 uses

.noexc101:                                        ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i94
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.eg ; 2 uses
  store ptr %i.o, ptr %i.ft, align 8, !tbaa !49
  %i.fu = icmp sgt i64 %i.eg, 0
  br i1 %i.fu, label %bb.at, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i97

bb.at:                                            ; preds = %.noexc101
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr align 8 %.sroa.0133.0323, i64 %i.eg, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i97

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i97: ; preds = %bb.at, %.noexc101
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.not.i17.i.i98 = icmp eq ptr %.sroa.0133.0323, null
  br i1 %.not.i17.i.i98, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i99, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i97
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0133.0323, i64 noundef %i.eg) #29
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i99

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i99: ; preds = %bb.au, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i97
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fq
  br label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180: ; preds = %bb.d, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit70, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92, %bb.aq, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i99
  %.sroa.0133.8187 = phi ptr [ %.sroa.0133.0323, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92 ], [ %.sroa.0133.1, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit70 ], [ %.sroa.0133.0323, %bb.d ], [ %.sroa.0133.0323, %bb.aq ], [ %i.fs, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i99 ] ; 2 uses
  %.sroa.14.5186 = phi ptr [ %.sroa.14.0322, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92 ], [ %.sroa.14.1, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit70 ], [ %.sroa.14.0322, %bb.d ], [ %i.fk, %bb.aq ], [ %i.fv, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i99 ] ; 2 uses
  %.sroa.25.8185 = phi ptr [ %.sroa.25.0321, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit92 ], [ %.sroa.25.1, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit70 ], [ %.sroa.25.0321, %bb.d ], [ %.sroa.25.0321, %bb.aq ], [ %i.fw, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i99 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0130.0320, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fx, %i.c
  br i1 %.not, label %.thread204, label %bb.b

.body:                                            ; preds = %.loopexit212, %.loopexit.split-lp213, %bb.ah
  %.sroa.25.9 = phi ptr [ %.sroa.25.6, %bb.ah ], [ %.sroa.25.0321.lcssa, %.loopexit212 ], [ %.sroa.25.0321385, %.loopexit.split-lp213 ]
  %.sroa.0133.9 = phi ptr [ %.sroa.0133.6, %bb.ah ], [ %.sroa.0133.0323, %.loopexit212 ], [ %.sroa.0133.0323, %.loopexit.split-lp213 ] ; 3 uses
  %.pn45 = phi { ptr, i32 } [ %.pn40.pn.pn, %bb.ah ], [ %lpad.loopexit214, %.loopexit212 ], [ %lpad.loopexit.split-lp215, %.loopexit.split-lp213 ]
  %.not.i.i.i103 = icmp eq ptr %.sroa.0133.9, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %.body.thread

.body.thread:                                     ; preds = %.body
  %i.fy = ptrtoint ptr %.sroa.25.9 to i64
  %i.fz = ptrtoint ptr %.sroa.0133.9 to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0133.9, i64 noundef %i.ga) #29
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %.body, %.body.thread
  resume { ptr, i32 } %.pn45

.thread204:                                       ; preds = %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180, %bb.a
  %.sroa.25.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.25.8185, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180 ]
  %.sroa.14.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.14.5186, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180 ]
  %.sroa.0133.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0133.8187, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread180 ]
  store ptr %.sroa.0133.0.lcssa, ptr %0, align 8, !tbaa !47
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.14.0.lcssa, ptr %i.gb, align 8, !tbaa !51
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.25.0.lcssa, ptr %i.gc, align 8, !tbaa !160
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit107

.loopexit220:                                     ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit70, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread188
  %.sroa.25.11 = phi ptr [ %.sroa.25.0321, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread188 ], [ %.sroa.25.1, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit70 ]
  %.sroa.0133.11 = phi ptr [ %.sroa.0133.0323, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit.thread188 ], [ %.sroa.0133.1, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit70 ] ; 3 uses
  %.not.i.i.i105 = icmp eq ptr %.sroa.0133.11, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit107, label %bb.av

bb.av:                                            ; preds = %.loopexit220
  %i.gd = ptrtoint ptr %.sroa.25.11 to i64
  %i.ge = ptrtoint ptr %.sroa.0133.11 to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0133.11, i64 noundef %i.gf) #29
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit107

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit107:  ; preds = %.thread204, %.loopexit220, %bb.av
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau8stripNilENS_7NotNullINS_12BuiltinTypesEEERNS_9TypeArenaEPKNS_4TypeE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::TypeIterator", align 8 ; 9 uses
  %4 = alloca %"struct.Luau::TypeIterator", align 8 ; 9 uses
  %5 = alloca %"struct.Luau::TypeIterator", align 8 ; 17 uses
  %6 = alloca %"struct.Luau::TypeIterator", align 8 ; 12 uses
  %7 = alloca %"struct.Luau::UnionType", align 8  ; 9 uses
  %i.a = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %2) ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq i32 %i.b, 13
  br i1 %i.c, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit.i, label %bb.ag

_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  call void @_ZN4Luau5beginEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %3, ptr noundef nonnull %i.d)
  invoke void @_ZN4Luau3endEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %4, ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit.i
  %i.e = invoke noundef zeroext i1 @_ZSt6any_ofIN4Luau12TypeIteratorINS0_9UnionTypeEEEPFbPKNS0_4TypeEEEbT_S9_T0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noundef nonnull @_ZN4Luau5isNilEPKNS_4TypeE)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
end_hunk_2
