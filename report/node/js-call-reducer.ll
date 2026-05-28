inline.NumInlined: 12029
inline.NumDeleted: 2622
begin_hunk_0_@_ZN2v88internal8compiler13JSCallReducer19CheckIfElementsKindEPNS1_4NodeENS0_12ElementsKindES4_PS4_S6_:bb.a
  %i.bc = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6IfTrueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.ax, ptr %9, align 8
  %i.bd = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.az, ptr noundef %i.bc, i32 noundef 1, ptr noundef nonnull %9, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.be = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder7IfFalseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.ax, ptr %8, align 8
  %i.bj = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bf, ptr noundef %i.bi, i32 noundef 1, ptr noundef nonnull %8, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bk = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i32 noundef 2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.x, ptr %7, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bd, ptr %i.bp, align 8
  %i.bq = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bl, ptr noundef %i.bo, i32 noundef 2, ptr noundef nonnull %7, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  store ptr %i.bq, ptr %4, align 8
  br label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit
  store ptr %i.x, ptr %4, align 8
  %i.br = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder7IfFalseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.r, ptr %6, align 8
  %i.bw = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bs, ptr noundef %i.bv, i32 noundef 1, ptr noundef nonnull %6, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit
  %storemerge = phi ptr [ %i.bw, %bb.h ], [ %i.bj, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit ]
  store ptr %storemerge, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal8compiler12_GLOBAL__N_129CanInlineArrayResizingBuiltinEPNS1_12JSHeapBrokerERKNS0_14ZoneCompactSetINS1_6MapRefEEEPSt6vectorINS0_12ElementsKindESaISB_EEb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 7 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %1, align 8 ; 3 uses
  %i.a = icmp eq i64 %.sroa.01.0.copyload.i.i.i, 1
  br i1 %i.a, label %.loopexit30, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %.sroa.01.0.copyload.i.i.i, 3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.lr.ph176, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit: ; preds = %bb.b
  %i.d = add i64 %.sroa.01.0.copyload.i.i.i, -2
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not173 = icmp eq i64 %i.g, 0
  br i1 %.not173, label %.loopexit30, label %.lr.ph176

.lr.ph176:                                        ; preds = %bb.b, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit
  %.0.i.i269 = phi i64 [ %i.g, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit ], [ 1, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph176, %.critedge
  %.sroa.5.0174 = phi i64 [ 0, %.lr.ph176 ], [ %i.au, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.j = call ptr @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.sroa.5.0174)
  store ptr %i.j, ptr %4, align 8
  %i.k = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef26supports_fast_array_resizeEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %0) #22
  br i1 %i.k, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %i.m = icmp ne i8 %i.l, 5
  %or.cond = or i1 %3, %i.m
  br i1 %or.cond, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.n = call noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22 ; 5 uses
  %i.o = load ptr, ptr %2, align 8                ; 10 uses
  %i.p = load ptr, ptr %i.h, align 8              ; 7 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %.not186 = icmp eq ptr %i.p, %i.o
  br i1 %.not186, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.t = and i8 %i.n, -2
  switch i8 %i.t, label %.lr.ph.split.split [
    i8 4, label %.lr.ph.split.us.split.split
    i8 2, label %.lr.ph.split.split.us.split
  ]

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph, %bb.f
  %.042.us = phi i64 [ %i.w, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %.01741.us = phi ptr [ %i.x, %bb.f ], [ %i.o, %.lr.ph ] ; 3 uses
  %i.u = load i8, ptr %.01741.us, align 1         ; 2 uses
  %i.v = and i8 %i.u, -2
  %switch181 = icmp eq i8 %i.v, 4
  br i1 %switch181, label %_ZN2v88internal31UnionElementsKindUptoPackednessEPNS0_12ElementsKindES1_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.split.split
  %i.w = add nuw i64 %.042.us, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01741.us, i64 1
  %exitcond237.not = icmp eq i64 %i.w, %i.s
  br i1 %exitcond237.not, label %.loopexit.thread, label %.lr.ph.split.us.split.split, !llvm.loop !2305

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph, %bb.g
  %.042.us55 = phi i64 [ %i.aa, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %.01741.us56 = phi ptr [ %i.ab, %bb.g ], [ %i.o, %.lr.ph ] ; 3 uses
  %i.y = load i8, ptr %.01741.us56, align 1       ; 2 uses
  %i.z = and i8 %i.y, -2
  %switch184 = icmp eq i8 %i.z, 2
  br i1 %switch184, label %_ZN2v88internal31UnionElementsKindUptoPackednessEPNS0_12ElementsKindES1_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split.us.split
  %i.aa = add nuw i64 %.042.us55, 1               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01741.us56, i64 1
  %exitcond235.not = icmp eq i64 %i.aa, %i.s
  br i1 %exitcond235.not, label %.loopexit.thread, label %.lr.ph.split.split.us.split, !llvm.loop !2305

.lr.ph.split.split:                               ; preds = %.lr.ph
  %or.cond.i = icmp ult i8 %i.n, 2
  br i1 %or.cond.i, label %.lr.ph.split.split.split.us, label %.loopexit.thread

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %bb.h
  %.042.us74 = phi i64 [ %i.ad, %bb.h ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %.01741.us75 = phi ptr [ %i.ae, %bb.h ], [ %i.o, %.lr.ph.split.split ] ; 3 uses
  %i.ac = load i8, ptr %.01741.us75, align 1      ; 2 uses
  %switch185 = icmp ult i8 %i.ac, 2
  br i1 %switch185, label %_ZN2v88internal31UnionElementsKindUptoPackednessEPNS0_12ElementsKindES1_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split.split.us
  %i.ad = add nuw i64 %.042.us74, 1               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01741.us75, i64 1
  %exitcond.not = icmp eq i64 %i.ad, %i.s
  br i1 %exitcond.not, label %.loopexit.thread, label %.lr.ph.split.split.split.us, !llvm.loop !2305

_ZN2v88internal31UnionElementsKindUptoPackednessEPNS0_12ElementsKindES1_.exit: ; preds = %.lr.ph.split.split.us.split, %.lr.ph.split.us.split.split, %.lr.ph.split.split.split.us
  %.us-phi = phi i8 [ %i.ac, %.lr.ph.split.split.split.us ], [ %i.u, %.lr.ph.split.us.split.split ], [ %i.y, %.lr.ph.split.split.us.split ]
  %.us-phi44 = phi ptr [ %.01741.us75, %.lr.ph.split.split.split.us ], [ %.01741.us, %.lr.ph.split.us.split.split ], [ %.01741.us56, %.lr.ph.split.split.us.split ]
  %.us-phi45 = phi i64 [ %.042.us74, %.lr.ph.split.split.split.us ], [ %.042.us, %.lr.ph.split.us.split.split ], [ %.042.us55, %.lr.ph.split.split.us.split ] ; 2 uses
  %.sroa.speculated.i = call i8 @llvm.umax.i8(i8 %.us-phi, i8 %i.n)
  store i8 %.sroa.speculated.i, ptr %.us-phi44, align 1
  %.pr = load ptr, ptr %2, align 8                ; 2 uses
  %.pre = load ptr, ptr %i.h, align 8             ; 2 uses
  %.pre241 = ptrtoint ptr %.pre to i64
  %.pre242 = ptrtoint ptr %.pr to i64
  %.pre244 = sub i64 %.pre241, %.pre242
  %i.af = icmp eq i64 %.us-phi45, %.pre244
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %_ZN2v88internal31UnionElementsKindUptoPackednessEPNS0_12ElementsKindES1_.exit
  %.pre-phi245 = phi i1 [ %i.af, %_ZN2v88internal31UnionElementsKindUptoPackednessEPNS0_12ElementsKindES1_.exit ], [ true, %bb.e ]
  %i.ag = phi ptr [ %.pre, %_ZN2v88internal31UnionElementsKindUptoPackednessEPNS0_12ElementsKindES1_.exit ], [ %i.p, %bb.e ]
  %.035 = phi i64 [ %.us-phi45, %_ZN2v88internal31UnionElementsKindUptoPackednessEPNS0_12ElementsKindES1_.exit ], [ 0, %bb.e ]
  %i.ah = phi ptr [ %.pr, %_ZN2v88internal31UnionElementsKindUptoPackednessEPNS0_12ElementsKindES1_.exit ], [ %i.o, %bb.e ]
  br i1 %.pre-phi245, label %.loopexit.thread, label %.critedge

.loopexit.thread:                                 ; preds = %bb.g, %bb.f, %bb.h, %.lr.ph.split.split, %.loopexit
  %i.ai = phi ptr [ %i.ah, %.loopexit ], [ %i.o, %.lr.ph.split.split ], [ %i.o, %bb.f ], [ %i.o, %bb.h ], [ %i.o, %bb.g ] ; 3 uses
  %.035272 = phi i64 [ %.035, %.loopexit ], [ %i.s, %.lr.ph.split.split ], [ %i.s, %bb.f ], [ %i.s, %bb.h ], [ %i.s, %bb.g ] ; 8 uses
  %i.aj = phi ptr [ %i.ag, %.loopexit ], [ %i.p, %.lr.ph.split.split ], [ %i.p, %bb.f ], [ %i.p, %bb.h ], [ %i.p, %bb.g ] ; 2 uses
  %i.ak = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit.thread
  store i8 %i.n, ptr %i.aj, align 1
  %i.al = load ptr, ptr %i.h, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %i.h, align 8
  br label %.critedge

bb.j:                                             ; preds = %.loopexit.thread
  %i.an = icmp eq i64 %.035272, 9223372036854775807
  br i1 %i.an, label %bb.k, label %_ZNKSt6vectorIN2v88internal12ElementsKindESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
  unreachable

_ZNKSt6vectorIN2v88internal12ElementsKindESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %.035272, i64 1)
  %i.ao = add i64 %.sroa.speculated.i.i.i, %.035272 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %.035272
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ao, i64 9223372036854775807)
  %i.ar = select i1 %i.ap, i64 9223372036854775807, i64 %i.aq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #23 ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 %.035272 ; 2 uses
  store i8 %i.n, ptr %6, align 1
  %7 = icmp sgt i64 %.035272, 0
  br i1 %7, label %bb.l, label %_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN2v88internal12ElementsKindESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %i.ai, i64 %.035272, i1 false)
  br label %_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN2v88internal12ElementsKindESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 1
  %.not.i17.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %.035272) #26
  br label %_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %5, ptr %2, align 8
  store ptr %i.as, ptr %i.h, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 %i.ar
  store ptr %i.at, ptr %i.i, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN2v88internal12ElementsKindESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.au = add nuw i64 %.sroa.5.0174, 1            ; 2 uses
  %.not = icmp eq i64 %i.au, %.0.i.i269
  br i1 %.not, label %.loopexit30, label %bb.c

bb.n:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.loopexit30

.loopexit30:                                      ; preds = %.critedge, %bb.a, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit, %bb.n
  %.not40 = phi i1 [ false, %bb.n ], [ true, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit ], [ true, %bb.a ], [ true, %.critedge ]
  ret i1 %.not40
}

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder26EnsureWritableFastElementsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler7JSGraph11OneConstantEv(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode") align 8, ptr noundef nonnull align 8 dereferenceable(1144)) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder10StoreFieldERKNS1_11FieldAccessEb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder12StoreElementERKNS1_13ElementAccessE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(19)) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler7JSGraph15TheHoleConstantEv(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.934") align 8, ptr noundef nonnull align 8 dereferenceable(1144)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler13JSCallReducer25ReduceArrayPrototypeShiftEPNS1_4NodeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::array", align 8       ; 4 uses
  %3 = alloca %"struct.std::array.986", align 8   ; 6 uses
  %4 = alloca %"struct.std::array.986", align 8   ; 6 uses
  %5 = alloca %"struct.std::array.337", align 8   ; 5 uses
  %6 = alloca %"struct.std::array.986", align 8   ; 6 uses
  %7 = alloca %"struct.std::array.986", align 8   ; 6 uses
  %8 = alloca %"struct.std::array.337", align 8   ; 5 uses
  %9 = alloca %"struct.std::array.1076", align 8  ; 15 uses
  %10 = alloca %"struct.std::array", align 8      ; 4 uses
  %11 = alloca %"struct.std::array.1032", align 8 ; 8 uses
  %12 = alloca %"struct.std::array.1005", align 8 ; 7 uses
  %13 = alloca %"struct.std::array.1005", align 8 ; 7 uses
  %14 = alloca %"struct.std::array.337", align 8  ; 5 uses
  %15 = alloca %"struct.std::array.337", align 8  ; 5 uses
  %16 = alloca %"struct.std::array.1032", align 8 ; 8 uses
  %17 = alloca %"struct.std::array.337", align 8  ; 5 uses
  %18 = alloca %"struct.std::array.1005", align 8 ; 7 uses
  %19 = alloca %"struct.std::array.986", align 8  ; 6 uses
  %20 = alloca %"struct.std::array", align 8      ; 4 uses
  %21 = alloca %"struct.std::array", align 8      ; 4 uses
  %22 = alloca %"struct.std::array.337", align 8  ; 5 uses
  %23 = alloca %"struct.std::array.337", align 8  ; 5 uses
  %24 = alloca %"struct.std::array.986", align 8  ; 6 uses
  %25 = alloca %"struct.std::array.337", align 8  ; 5 uses
  %26 = alloca %"struct.std::array.986", align 8  ; 6 uses
  %27 = alloca %"struct.std::array.337", align 8  ; 5 uses
  %28 = alloca %"struct.std::array.1005", align 8 ; 7 uses
  %29 = alloca %"struct.std::array.1005", align 8 ; 7 uses
  %30 = alloca %"struct.std::array.986", align 8  ; 6 uses
  %31 = alloca %"struct.std::array", align 8      ; 4 uses
  %32 = alloca %"struct.std::array.337", align 8  ; 5 uses
  %33 = alloca %"struct.std::array.337", align 8  ; 5 uses
  %34 = alloca %"struct.std::array", align 8      ; 4 uses
  %35 = alloca %"struct.std::array", align 8      ; 4 uses
  %36 = alloca %"struct.std::array.337", align 8  ; 5 uses
  %37 = alloca %"struct.std::array.337", align 8  ; 5 uses
  %38 = alloca %"struct.std::array.986", align 8  ; 6 uses
  %39 = alloca %"class.v8::internal::compiler::Effect", align 8 ; 15 uses
  %40 = alloca %"class.v8::internal::compiler::MapInference", align 8 ; 9 uses
  %41 = alloca %"class.std::vector.927", align 8  ; 9 uses
  %42 = alloca %"class.v8::internal::TNode.98", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %43 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %44 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %45 = alloca %"class.v8::internal::TNode.98", align 8 ; 4 uses
  %46 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %47 = alloca %"struct.v8::internal::compiler::ElementAccess", align 8 ; 4 uses
  %48 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %49 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %50 = alloca %"struct.v8::internal::compiler::ElementAccess", align 8 ; 5 uses
  %51 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %52 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %53 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %54 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %55 = alloca %"struct.v8::internal::compiler::ElementAccess", align 8 ; 4 uses
  %56 = alloca %"class.v8::internal::TNode.934", align 8 ; 2 uses
  %57 = alloca %"class.v8::internal::TNode.934", align 8 ; 2 uses
  %58 = alloca %"class.v8::internal::TNode.98", align 8 ; 2 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef %i.c) #22 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 805306368
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.bt

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !noalias !2306 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4, !noalias !2306 ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2306
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.l = load i32, ptr %i.k, align 4, !noalias !2306
  %i.m = and i32 %i.l, 251658240
  %.not.i.i.i.i = icmp eq i32 %i.m, 251658240
  %i.n = ptrtoint ptr %1 to i64
  %i.o = add i64 %i.n, 32
  %i.p = inttoptr i64 %i.o to ptr                 ; 10 uses
  %.not265 = icmp eq i32 %i.i, 1                  ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit: ; preds = %bb.d
  br i1 %.not265, label %bb.e, label %bb.f, !prof !141

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread: ; preds = %bb.d
  br i1 %.not265, label %bb.e, label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit, !prof !141

bb.e:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !2309
  unreachable

bb.f:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2306
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, 16
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit

_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit: ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread, %bb.f
  %.in = phi ptr [ %i.t, %bb.f ], [ %i.p, %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE6targetEv.exit.thread ] ; 2 uses
  %i.u = load ptr, ptr %.in, align 8, !noalias !2306
  %i.v = getelementptr inbounds nuw i8, ptr %.in, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2309 ; 7 uses
  %i.x = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.g) #22, !noalias !2312
  br i1 %i.x, label %bb.h, label %bb.g, !prof !66

bb.g:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #24, !noalias !2312
  unreachable

bb.h:                                             ; preds = %_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1132EEE8receiverEv.exit
  %i.y = load ptr, ptr %1, align 8, !noalias !2312 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !noalias !2312
  %i.ab = load i32, ptr %i.k, align 4, !noalias !2312
  %i.ac = and i32 %i.ab, 251658240
  %.not.i.i.i.i143 = icmp eq i32 %i.ac, 251658240
  br i1 %.not.i.i.i.i143, label %bb.i, label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.p, align 8, !noalias !2312
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = add i64 %i.ae, 16
  %i.ag = inttoptr i64 %i.af to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit: ; preds = %bb.h, %bb.i
  %.sink.i.i.i.i144 = phi ptr [ %i.ag, %bb.i ], [ %i.p, %bb.h ]
  %i.ah = sext i32 %i.aa to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i144, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !2312
  %i.ak = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef nonnull %i.y) #22
  br i1 %i.ak, label %bb.k, label %bb.j, !prof !66

bb.j:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.38) #24
  unreachable

bb.k:                                             ; preds = %_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv.exit
  %i.al = load ptr, ptr %1, align 8               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef %i.al) #22
  %i.ap = load i32, ptr %i.k, align 4
  %i.aq = and i32 %i.ap, 251658240
  %.not.i.i.i.i145 = icmp eq i32 %i.aq, 251658240
  br i1 %.not.i.i.i.i145, label %bb.l, label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.p, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = add i64 %i.as, 16
  %i.au = inttoptr i64 %i.at to ptr
  br label %_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit

_ZNK2v88internal8compiler17JSNodeWrapperBase11frame_stateEv.exit: ; preds = %bb.k, %bb.l
  %.sink.i.i.i.i146 = phi ptr [ %i.au, %bb.l ], [ %i.p, %bb.k ]
  %i.av = zext i1 %i.ao to i32
  %i.aw = add nsw i32 %i.an, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i146, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8
end_hunk_0
