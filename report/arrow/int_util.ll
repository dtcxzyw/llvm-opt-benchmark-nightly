inline.NumInlined: 2192
inline.NumDeleted: 629
begin_hunk_0_@_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_:bb.a
.lr.ph168.i.i522:                                 ; preds = %.preheader134.i.i521, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i.i
  %.073167.i.i523 = phi i64 [ %i.idw, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i.i ], [ 0, %.preheader134.i.i521 ] ; 3 uses
  %i.idk = add nsw i64 %.073167.i.i523, %.092169.i.i505 ; 2 uses
  %i.idl = lshr i64 %i.idk, 3
  %i.idm = getelementptr inbounds nuw i8, ptr %i.hul, i64 %i.idl
  %i.idn = load i8, ptr %i.idm, align 1, !tbaa !7, !noalias !713
  %i.ido = trunc i64 %i.idk to i8
  %i.idp = and i8 %i.ido, 7
  %i.idq = lshr i8 %i.idn, %i.idp
  %i.idr = trunc i8 %i.idq to i1
  br i1 %i.idr, label %bb.bg, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i.i

bb.bg:                                            ; preds = %.lr.ph168.i.i522
  %i.ids = getelementptr inbounds nuw [8 x i8], ptr %.088173.i.i503, i64 %.073167.i.i523
  %i.idt = load i64, ptr %i.ids, align 8, !tbaa !30, !noalias !713 ; 3 uses
  %i.idu = icmp ult i64 %i.idt, %.val50
  %i.idv = icmp ugt i64 %i.idt, %.val51
  %or.cond131.i.i525 = or i1 %i.idu, %i.idv
  br i1 %or.cond131.i.i525, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread.i.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread.i.i: ; preds = %bb.bg
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE0_clEm(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i64 noundef %i.idt)
  br label %.critedge103.i.i500

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i.i: ; preds = %bb.bg, %.lr.ph168.i.i522
  %i.idw = add nuw nsw i64 %.073167.i.i523, 1     ; 2 uses
  %exitcond193.not.i.i524 = icmp eq i64 %i.idw, %i.idj
  br i1 %exitcond193.not.i.i524, label %.critedge.i.i508, label %.lr.ph168.i.i522, !llvm.loop !722

bb.bh:                                            ; preds = %.lr.ph.i.i517
  %i.idx = add nuw nsw i64 %.0165.i.i518, 1       ; 2 uses
  %exitcond192.not.i.i520 = icmp eq i64 %i.idx, %i.idj
  br i1 %exitcond192.not.i.i520, label %.critedge.i.i508, label %.lr.ph.i.i517, !llvm.loop !723

.lr.ph.i.i517:                                    ; preds = %.preheader135.i.i516, %bb.bh
  %.0165.i.i518 = phi i64 [ %i.idx, %bb.bh ], [ 0, %.preheader135.i.i516 ] ; 2 uses
  %i.idy = getelementptr inbounds nuw [8 x i8], ptr %.088173.i.i503, i64 %.0165.i.i518
  %i.idz = load i64, ptr %i.idy, align 8, !tbaa !30, !noalias !713 ; 3 uses
  %i.iea = icmp ult i64 %i.idz, %.val50
  %i.ieb = icmp ugt i64 %i.idz, %.val51
  %or.cond132.i.i519 = or i1 %i.iea, %i.ieb
  br i1 %or.cond132.i.i519, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit122.thread.i.i, label %bb.bh

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit122.thread.i.i: ; preds = %.lr.ph.i.i517
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE0_clEm(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i64 noundef %i.idz)
  br label %.critedge103.i.i500

.critedge.i.i508:                                 ; preds = %bb.bh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i.i, %.preheader134.i.i521, %.preheader135.i.i516, %.loopexit.i.i513, %bb.be
  %i.iec = sext i32 %i.huy to i64
  %i.ied = getelementptr inbounds [8 x i8], ptr %.088173.i.i503, i64 %i.iec
  %i.iee = sext i16 %.sroa.0.0.extract.trunc.i.i506 to i64 ; 2 uses
  %i.ief = add nsw i64 %.090172.i.i504, %i.iee    ; 2 uses
  %i.ieg = add nsw i64 %.092169.i.i505, %i.iee
  %i.ieh = load i64, ptr %i.hum, align 8, !tbaa !291, !noalias !713
  %i.iei = icmp slt i64 %i.ief, %i.ieh
  br i1 %i.iei, label %.lr.ph176.i.i502, label %._crit_edge.i.i499, !llvm.loop !724

._crit_edge.i.i499:                               ; preds = %.critedge.i.i508, %bb.bd
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !725
  br label %.critedge103.i.i500

.critedge103.i.i500:                              ; preds = %._crit_edge.i.i499, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit122.thread.i.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !713
  br label %_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt64TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_.exit

_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt64TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_.exit: ; preds = %bb.bc, %.critedge103.i.i500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !707
  br label %bb.bj

bb.bi:                                            ; preds = %bb.d
  tail call void @_ZN5arrow6Status8FromArgsIJRA38_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(38) @.str)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt64TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_.exit, %_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt32TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_.exit, %_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt16TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_.exit, %_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9UInt8TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_.exit, %_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int64TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_.exit, %_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int32TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_.exit, %_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int16TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_.exit, %_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_8Int8TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal14IntegersCanFitERKNS_9ArraySpanERKNS_8DataTypeE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::UInt64Scalar", align 8 ; 13 uses
  %4 = alloca %"struct.arrow::UInt64Scalar", align 8 ; 12 uses
  %5 = alloca %"struct.arrow::UInt32Scalar", align 8 ; 13 uses
  %6 = alloca %"struct.arrow::UInt32Scalar", align 8 ; 12 uses
  %7 = alloca %"struct.arrow::UInt16Scalar", align 8 ; 13 uses
  %8 = alloca %"struct.arrow::UInt16Scalar", align 8 ; 12 uses
  %9 = alloca %"struct.arrow::UInt8Scalar", align 8 ; 13 uses
  %10 = alloca %"struct.arrow::UInt8Scalar", align 8 ; 12 uses
  %11 = alloca %"struct.arrow::Int64Scalar", align 8 ; 13 uses
  %12 = alloca %"struct.arrow::Int64Scalar", align 8 ; 12 uses
  %13 = alloca %"struct.arrow::Int32Scalar", align 8 ; 13 uses
  %14 = alloca %"struct.arrow::Int32Scalar", align 8 ; 12 uses
  %15 = alloca %"struct.arrow::Int16Scalar", align 8 ; 13 uses
  %16 = alloca %"struct.arrow::Int16Scalar", align 8 ; 12 uses
  %17 = alloca %"struct.arrow::Int8Scalar", align 8 ; 13 uses
  %18 = alloca %"struct.arrow::Int8Scalar", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !260  ; 9 uses
  %.off.i = add i32 %i.b, -2
  %switch.i = icmp ult i32 %.off.i, 8
  br i1 %switch.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22, !noalias !728
  call void @_ZN5arrow8internal12JoinToStringIJRA37_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 1 dereferenceable(37) @.str.2, ptr noundef nonnull align 8 dereferenceable(72) %2), !noalias !728
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %19, align 8, !tbaa !307, !noalias !728 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN5arrow6Status7InvalidIJRA37_KcRKNS_8DataTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.d, align 8, !tbaa !7, !noalias !728
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZN5arrow6Status7InvalidIJRA37_KcRKNS_8DataTypeEEEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %19, align 8, !tbaa !307, !noalias !728 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !7, !noalias !728
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %bb.it, %bb.ho, %bb.gj, %bb.fe, %bb.dz, %bb.cu, %bb.bp, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %.pn.i, %bb.ak ], [ %.pn.i30, %bb.bp ], [ %.pn.i56, %bb.cu ], [ %.pn.i83, %bb.dz ], [ %.pn.i109, %bb.fe ], [ %.pn.i135, %bb.gj ], [ %.pn.i161, %bb.ho ], [ %.pn.i187, %bb.it ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22, !noalias !728
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA37_KcRKNS_8DataTypeEEEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22, !noalias !728
  br label %bb.iv

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !277
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !260
  switch i32 %i.p, label %bb.iu [
    i32 3, label %bb.f
    i32 5, label %switch.lookup
    i32 7, label %switch.lookup269
    i32 9, label %switch.lookup275
    i32 2, label %_ZN5arrow8internal12_GLOBAL__N_113GetSafeMinMaxINS_9UInt8TypeEhEEvNS_4Type4typeEPT0_S7_.exit.i
    i32 4, label %switch.lookup281
    i32 6, label %switch.lookup285
    i32 8, label %switch.lookup289
  ]

bb.f:                                             ; preds = %bb.e
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.b to i8
  %switch.idx.mult.i.i = shl i8 %switch.idx.cast.i.i, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22, !noalias !733
  %i.q = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev(), !noalias !736 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !739, !noalias !736 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.q, align 8, !tbaa !740, !noalias !736
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow10Int8ScalarCI2NS_13NumericScalarINS_8Int8TypeEEEEa.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !736
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3, !noalias !741
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3, !noalias !741
  br label %_ZN5arrow10Int8ScalarCI2NS_13NumericScalarINS_8Int8TypeEEEEa.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4, !noalias !741 ; 0 uses
  br label %_ZN5arrow10Int8ScalarCI2NS_13NumericScalarINS_8Int8TypeEEEEa.exit.i

_ZN5arrow10Int8ScalarCI2NS_13NumericScalarINS_8Int8TypeEEEEa.exit.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !noalias !733
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 32
  store <2 x ptr> %i.t, ptr %i.aa, align 8, !tbaa !740, !noalias !733
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i8 1, ptr %i.ac, align 8, !tbaa !742, !noalias !733
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 41
  store i8 %switch.idx.mult.i.i, ptr %i.ad, align 1, !tbaa !518, !noalias !733
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow10Int8ScalarE, i64 16), ptr %17, align 8, !tbaa !743, !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22, !noalias !733
  %i.ae = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %.noexc.i unwind label %bb.ai  ; 2 uses

.noexc.i:                                         ; preds = %_ZN5arrow10Int8ScalarCI2NS_13NumericScalarINS_8Int8TypeEEEEa.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !739, !noalias !745 ; 9 uses
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !740, !noalias !745
  %.not.i.i.i.i.i.i5.i = icmp eq ptr %i.ag, null  ; 2 uses
  br i1 %.not.i.i.i.i.i.i5.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.noexc.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !748
  %.not.i.i.i.i.i.i.i6.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i6.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !745
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !3, !noalias !745
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4, !noalias !745 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.noexc.i
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !noalias !733
  %i.ao = getelementptr inbounds nuw i8, ptr %18, i64 24
  store <2 x ptr> %i.ah, ptr %i.ao, align 8, !tbaa !740, !noalias !733
  %i.ap = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i8 1, ptr %i.ap, align 8, !tbaa !742, !noalias !733
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 41
  store i8 127, ptr %i.aq, align 1, !tbaa !518, !noalias !733
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow10Int8ScalarE, i64 16), ptr %18, align 8, !tbaa !743, !noalias !733
  invoke void @_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(41) %17, ptr noundef nonnull align 8 dereferenceable(41) %18)
          to label %bb.n unwind label %bb.aj

bb.n:                                             ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %18, align 8, !tbaa !743, !noalias !733
  br i1 %.not.i.i.i.i.i.i5.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ar, align 8, !tbaa !749
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !751
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !743
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #22, !inline_history !752
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !743
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #22, !inline_history !752
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !733
  %.not.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.au, %bb.r ], [ %i.be, %bb.s ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !206

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.p, %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !754, !noalias !733 ; 4 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i1.i.i, label %_ZN5arrow6ScalarD2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12 ; 3 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !733
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !3  ; 2 uses
  %i.bl = add nsw i32 %i.bk, -1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bm = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.v ], [ %i.bm, %bb.w ]
  %i.bn = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bn, label %bb.x, label %_ZN5arrow6ScalarD2Ev.exit.i

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !743
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #22, !inline_history !755
  br label %_ZN5arrow6ScalarD2Ev.exit.i

_ZN5arrow6ScalarD2Ev.exit.i:                      ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22, !noalias !733
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %17, align 8, !tbaa !743, !noalias !733
  %i.br = load ptr, ptr %i.ab, align 8, !tbaa !739, !noalias !733 ; 8 uses
  %.not.i.i.i8.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i8.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i, label %bb.y

bb.y:                                             ; preds = %_ZN5arrow6ScalarD2Ev.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bs, align 8, !tbaa !749
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !751
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !743
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #22, !inline_history !752
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !743
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #22, !inline_history !752
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i

bb.aa:                                            ; preds = %bb.y
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !733
  %.not.i.i.i.i9.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i9.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i

bb.ac:                                            ; preds = %bb.aa
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i11.i = phi i32 [ %i.bv, %bb.ab ], [ %i.cf, %bb.ac ]
  %i.cg = icmp eq i32 %.0.i.i.i.i.i11.i, 1
  br i1 %i.cg, label %bb.ad, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i, !prof !206

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i, %bb.z, %_ZN5arrow6ScalarD2Ev.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !754, !noalias !733 ; 4 uses
  %.not.i.i.i1.i13.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i1.i13.i, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_8Int8TypeEaNS_10Int8ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12 ; 3 uses
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !733
  %.not.i.i.i.i.i14.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i14.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !3  ; 2 uses
  %i.cm = add nsw i32 %i.cl, -1
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i

bb.ag:                                            ; preds = %bb.ae
  %i.cn = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i16.i = phi i32 [ %i.cl, %bb.af ], [ %i.cn, %bb.ag ]
  %i.co = icmp eq i32 %.0.i.i.i.i.i.i16.i, 1
  br i1 %i.co, label %bb.ah, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_8Int8TypeEaNS_10Int8ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i
  %i.cp = load ptr, ptr %i.ci, align 8, !tbaa !743
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #22, !inline_history !755
  br label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_8Int8TypeEaNS_10Int8ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.ai:                                            ; preds = %_ZN5arrow10Int8ScalarCI2NS_13NumericScalarINS_8Int8TypeEEEEa.exit.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(42) %18) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %i.ct, %bb.aj ], [ %i.cs, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22, !noalias !733
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(42) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22, !noalias !733
  br label %common.resume

_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_8Int8TypeEaNS_10Int8ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22, !noalias !733
  br label %bb.iv

switch.lookup:                                    ; preds = %bb.e
  %switch.tableidx = add nsw i32 %i.b, -2         ; 2 uses
  %i.cu = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN5arrow8internal14IntegersCanFitERKNS_9ArraySpanERKNS_8DataTypeE, i64 %i.cu
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cv = zext nneg i32 %switch.tableidx to i64
  %switch.gep266 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN5arrow8internal14IntegersCanFitERKNS_9ArraySpanERKNS_8DataTypeE.180, i64 %i.cv
  %switch.load267 = load i16, ptr %switch.gep266, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22, !noalias !756
  %i.cw = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev(), !noalias !759 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !739, !noalias !759 ; 2 uses
  %i.cz = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !740, !noalias !759
  %.not.i.i.i.i.i.i.i28 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i.i.i28, label %_ZN5arrow11Int16ScalarCI2NS_13NumericScalarINS_9Int16TypeEEEEs.exit.i, label %bb.al

bb.al:                                            ; preds = %switch.lookup
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 3 uses
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !762
  %.not.i.i.i.i.i.i.i.i29 = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i.i.i.i.i.i29, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !3, !noalias !759
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !3, !noalias !759
  br label %_ZN5arrow11Int16ScalarCI2NS_13NumericScalarINS_9Int16TypeEEEEs.exit.i

bb.an:                                            ; preds = %bb.al
  %i.de = atomicrmw volatile add ptr %i.da, i32 1 acq_rel, align 4, !noalias !759 ; 0 uses
  br label %_ZN5arrow11Int16ScalarCI2NS_13NumericScalarINS_9Int16TypeEEEEs.exit.i

_ZN5arrow11Int16ScalarCI2NS_13NumericScalarINS_9Int16TypeEEEEs.exit.i: ; preds = %bb.an, %bb.am, %switch.lookup
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false), !noalias !756
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 32
  store <2 x ptr> %i.cz, ptr %i.dg, align 8, !tbaa !740, !noalias !756
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i8 1, ptr %i.di, align 8, !tbaa !742, !noalias !756
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 42
  store i16 %switch.load, ptr %i.dj, align 2, !tbaa !554, !noalias !756
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow11Int16ScalarE, i64 16), ptr %15, align 8, !tbaa !743, !noalias !756
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22, !noalias !756
  %i.dk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %.noexc.i31 unwind label %bb.bn ; 2 uses

.noexc.i31:                                       ; preds = %_ZN5arrow11Int16ScalarCI2NS_13NumericScalarINS_9Int16TypeEEEEs.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !739, !noalias !763 ; 9 uses
  %i.dn = load <2 x ptr>, ptr %i.dk, align 8, !tbaa !740, !noalias !763
  %.not.i.i.i.i.i.i5.i32 = icmp eq ptr %i.dm, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i5.i32, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %.noexc.i31
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 3 uses
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !766
  %.not.i.i.i.i.i.i.i6.i33 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i6.i33, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !3, !noalias !763
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !3, !noalias !763
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ds = atomicrmw volatile add ptr %i.do, i32 1 acq_rel, align 4, !noalias !763 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %.noexc.i31
  %i.dt = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false), !noalias !756
  %i.du = getelementptr inbounds nuw i8, ptr %16, i64 24
  store <2 x ptr> %i.dn, ptr %i.du, align 8, !tbaa !740, !noalias !756
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i8 1, ptr %i.dv, align 8, !tbaa !742, !noalias !756
  %i.dw = getelementptr inbounds nuw i8, ptr %16, i64 42
  store i16 %switch.load267, ptr %i.dw, align 2, !tbaa !554, !noalias !756
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow11Int16ScalarE, i64 16), ptr %16, align 8, !tbaa !743, !noalias !756
  invoke void @_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(41) %15, ptr noundef nonnull align 8 dereferenceable(41) %16)
          to label %bb.as unwind label %bb.bo

bb.as:                                            ; preds = %bb.ar
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %16, align 8, !tbaa !743, !noalias !756
  br i1 %.not.i.i.i.i.i.i5.i32, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i37, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.dx, align 8, !tbaa !749
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !751
  %i.ec = load ptr, ptr %i.dm, align 8, !tbaa !743
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  tail call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #22, !inline_history !767
  %i.ef = load ptr, ptr %i.dm, align 8, !tbaa !743
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  tail call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #22, !inline_history !767
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i37

bb.av:                                            ; preds = %bb.at
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !756
  %.not.i.i.i.i.i34 = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i.i34, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ej = add nsw i32 %i.ea, -1
  store i32 %i.ej, ptr %i.dx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35

bb.ax:                                            ; preds = %bb.av
  %i.ek = atomicrmw volatile add ptr %i.dx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i36 = phi i32 [ %i.ea, %bb.aw ], [ %i.ek, %bb.ax ]
  %i.el = icmp eq i32 %.0.i.i.i.i.i.i36, 1
  br i1 %i.el, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i37, !prof !206

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i37

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i37: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35, %bb.au, %bb.as
  %i.em = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !754, !noalias !756 ; 4 uses
  %.not.i.i.i1.i.i38 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i1.i.i38, label %_ZN5arrow6ScalarD2Ev.exit.i42, label %bb.az

bb.az:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i37
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12 ; 3 uses
  %i.ep = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !756
  %.not.i.i.i.i.i.i39 = icmp eq i8 %i.ep, 0
  br i1 %.not.i.i.i.i.i.i39, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !3  ; 2 uses
  %i.er = add nsw i32 %i.eq, -1
  store i32 %i.er, ptr %i.eo, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i40

bb.bb:                                            ; preds = %bb.az
  %i.es = atomicrmw volatile add ptr %i.eo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i40

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i40: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i.i41 = phi i32 [ %i.eq, %bb.ba ], [ %i.es, %bb.bb ]
  %i.et = icmp eq i32 %.0.i.i.i.i.i.i.i41, 1
  br i1 %i.et, label %bb.bc, label %_ZN5arrow6ScalarD2Ev.exit.i42

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i40
  %i.eu = load ptr, ptr %i.en, align 8, !tbaa !743
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  tail call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #22, !inline_history !768
  br label %_ZN5arrow6ScalarD2Ev.exit.i42

_ZN5arrow6ScalarD2Ev.exit.i42:                    ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i40, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22, !noalias !756
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %15, align 8, !tbaa !743, !noalias !756
  %i.ex = load ptr, ptr %i.dh, align 8, !tbaa !739, !noalias !756 ; 8 uses
  %.not.i.i.i8.i43 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i8.i43, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i47, label %bb.bd

bb.bd:                                            ; preds = %_ZN5arrow6ScalarD2Ev.exit.i42
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 4294967297
  %i.fb = trunc i64 %i.ez to i32                  ; 2 uses
  br i1 %i.fa, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.ey, align 8, !tbaa !749
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !751
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !743
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  tail call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #22, !inline_history !767
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !743
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  tail call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #22, !inline_history !767
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i47

bb.bf:                                            ; preds = %bb.bd
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !756
  %.not.i.i.i.i9.i44 = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.i9.i44, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i45

bb.bh:                                            ; preds = %bb.bf
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i45

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i45: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i11.i46 = phi i32 [ %i.fb, %bb.bg ], [ %i.fl, %bb.bh ]
  %i.fm = icmp eq i32 %.0.i.i.i.i.i11.i46, 1
  br i1 %i.fm, label %bb.bi, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i47, !prof !206

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i45
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i47

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i47: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i45, %bb.be, %_ZN5arrow6ScalarD2Ev.exit.i42
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !754, !noalias !756 ; 4 uses
  %.not.i.i.i1.i13.i48 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i1.i13.i48, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int16TypeEsNS_11Int16ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i47
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12 ; 3 uses
  %i.fq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !756
  %.not.i.i.i.i.i14.i49 = icmp eq i8 %i.fq, 0
  br i1 %.not.i.i.i.i.i14.i49, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !3  ; 2 uses
  %i.fs = add nsw i32 %i.fr, -1
  store i32 %i.fs, ptr %i.fp, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i50

bb.bl:                                            ; preds = %bb.bj
  %i.ft = atomicrmw volatile add ptr %i.fp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i50

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i50: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i16.i51 = phi i32 [ %i.fr, %bb.bk ], [ %i.ft, %bb.bl ]
  %i.fu = icmp eq i32 %.0.i.i.i.i.i.i16.i51, 1
  br i1 %i.fu, label %bb.bm, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int16TypeEsNS_11Int16ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i50
  %i.fv = load ptr, ptr %i.fo, align 8, !tbaa !743
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  tail call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #22, !inline_history !768
  br label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int16TypeEsNS_11Int16ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.bn:                                            ; preds = %_ZN5arrow11Int16ScalarCI2NS_13NumericScalarINS_9Int16TypeEEEEs.exit.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.ar
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %16) #22
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn.i30 = phi { ptr, i32 } [ %i.fz, %bb.bo ], [ %i.fy, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22, !noalias !756
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22, !noalias !756
  br label %common.resume

_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int16TypeEsNS_11Int16ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i47, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i50, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22, !noalias !756
  br label %bb.iv

switch.lookup269:                                 ; preds = %bb.e
  %switch.tableidx268 = add nsw i32 %i.b, -2      ; 2 uses
  %i.ga = zext nneg i32 %switch.tableidx268 to i64
  %switch.gep270 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5arrow8internal14IntegersCanFitERKNS_9ArraySpanERKNS_8DataTypeE.181, i64 %i.ga
  %switch.load271 = load i32, ptr %switch.gep270, align 4
  %i.gb = zext nneg i32 %switch.tableidx268 to i64
  %switch.gep272 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5arrow8internal14IntegersCanFitERKNS_9ArraySpanERKNS_8DataTypeE.182, i64 %i.gb
  %switch.load273 = load i32, ptr %switch.gep272, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22, !noalias !769
  %i.gc = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev(), !noalias !772 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !739, !noalias !772 ; 2 uses
  %i.gf = load <2 x ptr>, ptr %i.gc, align 8, !tbaa !740, !noalias !772
  %.not.i.i.i.i.i.i.i54 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i.i.i54, label %_ZN5arrow11Int32ScalarCI2NS_13NumericScalarINS_9Int32TypeEEEEi.exit.i, label %bb.bq

bb.bq:                                            ; preds = %switch.lookup269
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 3 uses
  %i.gh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !775
  %.not.i.i.i.i.i.i.i.i55 = icmp eq i8 %i.gh, 0
  br i1 %.not.i.i.i.i.i.i.i.i55, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !3, !noalias !772
  %i.gj = add nsw i32 %i.gi, 1
  store i32 %i.gj, ptr %i.gg, align 4, !tbaa !3, !noalias !772
  br label %_ZN5arrow11Int32ScalarCI2NS_13NumericScalarINS_9Int32TypeEEEEi.exit.i

bb.bs:                                            ; preds = %bb.bq
  %i.gk = atomicrmw volatile add ptr %i.gg, i32 1 acq_rel, align 4, !noalias !772 ; 0 uses
  br label %_ZN5arrow11Int32ScalarCI2NS_13NumericScalarINS_9Int32TypeEEEEi.exit.i

_ZN5arrow11Int32ScalarCI2NS_13NumericScalarINS_9Int32TypeEEEEi.exit.i: ; preds = %bb.bs, %bb.br, %switch.lookup269
  %i.gl = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, i8 0, i64 16, i1 false), !noalias !769
  %i.gm = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %13, i64 32
  store <2 x ptr> %i.gf, ptr %i.gm, align 8, !tbaa !740, !noalias !769
  %i.go = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i8 1, ptr %i.go, align 8, !tbaa !742, !noalias !769
  %i.gp = getelementptr inbounds nuw i8, ptr %13, i64 44
  store i32 %switch.load271, ptr %i.gp, align 4, !tbaa !580, !noalias !769
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow11Int32ScalarE, i64 16), ptr %13, align 8, !tbaa !743, !noalias !769
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !769
  %i.gq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %.noexc.i57 unwind label %bb.cs ; 2 uses

.noexc.i57:                                       ; preds = %_ZN5arrow11Int32ScalarCI2NS_13NumericScalarINS_9Int32TypeEEEEi.exit.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !739, !noalias !776 ; 9 uses
  %i.gt = load <2 x ptr>, ptr %i.gq, align 8, !tbaa !740, !noalias !776
  %.not.i.i.i.i.i.i5.i58 = icmp eq ptr %i.gs, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i5.i58, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %.noexc.i57
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 3 uses
  %i.gv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !779
  %.not.i.i.i.i.i.i.i6.i59 = icmp eq i8 %i.gv, 0
  br i1 %.not.i.i.i.i.i.i.i6.i59, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !3, !noalias !776
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gu, align 4, !tbaa !3, !noalias !776
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.gy = atomicrmw volatile add ptr %i.gu, i32 1 acq_rel, align 4, !noalias !776 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %.noexc.i57
  %i.gz = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !noalias !769
  %i.ha = getelementptr inbounds nuw i8, ptr %14, i64 24
  store <2 x ptr> %i.gt, ptr %i.ha, align 8, !tbaa !740, !noalias !769
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i8 1, ptr %i.hb, align 8, !tbaa !742, !noalias !769
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 44
  store i32 %switch.load273, ptr %i.hc, align 4, !tbaa !580, !noalias !769
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow11Int32ScalarE, i64 16), ptr %14, align 8, !tbaa !743, !noalias !769
  invoke void @_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(41) %13, ptr noundef nonnull align 8 dereferenceable(41) %14)
          to label %bb.bx unwind label %bb.ct

bb.bx:                                            ; preds = %bb.bw
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %14, align 8, !tbaa !743, !noalias !769
  br i1 %.not.i.i.i.i.i.i5.i58, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i63, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 4 uses
  %i.he = load atomic i64, ptr %i.hd acquire, align 8 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 4294967297
  %i.hg = trunc i64 %i.he to i32                  ; 2 uses
  br i1 %i.hf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.hd, align 8, !tbaa !749
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 0, ptr %i.hh, align 4, !tbaa !751
  %i.hi = load ptr, ptr %i.gs, align 8, !tbaa !743
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  tail call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.gs) #22, !inline_history !780
  %i.hl = load ptr, ptr %i.gs, align 8, !tbaa !743
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  tail call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.gs) #22, !inline_history !780
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i63

bb.ca:                                            ; preds = %bb.by
  %i.ho = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !769
  %.not.i.i.i.i.i60 = icmp eq i8 %i.ho, 0
  br i1 %.not.i.i.i.i.i60, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hp = add nsw i32 %i.hg, -1
  store i32 %i.hp, ptr %i.hd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i61

bb.cc:                                            ; preds = %bb.ca
  %i.hq = atomicrmw volatile add ptr %i.hd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i61

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i61: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i.i62 = phi i32 [ %i.hg, %bb.cb ], [ %i.hq, %bb.cc ]
  %i.hr = icmp eq i32 %.0.i.i.i.i.i.i62, 1
  br i1 %i.hr, label %bb.cd, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i63, !prof !206

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i61
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gs) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i63

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i63: ; preds = %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i61, %bb.bz, %bb.bx
  %i.hs = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !754, !noalias !769 ; 4 uses
  %.not.i.i.i1.i.i64 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i1.i.i64, label %_ZN5arrow6ScalarD2Ev.exit.i68, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i63
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 12 ; 3 uses
  %i.hv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !769
  %.not.i.i.i.i.i.i65 = icmp eq i8 %i.hv, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hw = load i32, ptr %i.hu, align 4, !tbaa !3  ; 2 uses
  %i.hx = add nsw i32 %i.hw, -1
  store i32 %i.hx, ptr %i.hu, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i66

bb.cg:                                            ; preds = %bb.ce
  %i.hy = atomicrmw volatile add ptr %i.hu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i66

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i66: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i.i.i.i67 = phi i32 [ %i.hw, %bb.cf ], [ %i.hy, %bb.cg ]
  %i.hz = icmp eq i32 %.0.i.i.i.i.i.i.i67, 1
  br i1 %i.hz, label %bb.ch, label %_ZN5arrow6ScalarD2Ev.exit.i68

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i66
  %i.ia = load ptr, ptr %i.ht, align 8, !tbaa !743
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  tail call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #22, !inline_history !781
  br label %_ZN5arrow6ScalarD2Ev.exit.i68

_ZN5arrow6ScalarD2Ev.exit.i68:                    ; preds = %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i66, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !769
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %13, align 8, !tbaa !743, !noalias !769
  %i.id = load ptr, ptr %i.gn, align 8, !tbaa !739, !noalias !769 ; 8 uses
  %.not.i.i.i8.i69 = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i8.i69, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i73, label %bb.ci

bb.ci:                                            ; preds = %_ZN5arrow6ScalarD2Ev.exit.i68
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 4 uses
  %i.if = load atomic i64, ptr %i.ie acquire, align 8 ; 2 uses
  %i.ig = icmp eq i64 %i.if, 4294967297
  %i.ih = trunc i64 %i.if to i32                  ; 2 uses
  br i1 %i.ig, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.ie, align 8, !tbaa !749
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  store i32 0, ptr %i.ii, align 4, !tbaa !751
  %i.ij = load ptr, ptr %i.id, align 8, !tbaa !743
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  tail call void %i.il(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #22, !inline_history !780
  %i.im = load ptr, ptr %i.id, align 8, !tbaa !743
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8
  tail call void %i.io(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #22, !inline_history !780
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i73

bb.ck:                                            ; preds = %bb.ci
  %i.ip = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !769
  %.not.i.i.i.i9.i70 = icmp eq i8 %i.ip, 0
  br i1 %.not.i.i.i.i9.i70, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.iq = add nsw i32 %i.ih, -1
  store i32 %i.iq, ptr %i.ie, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i71

bb.cm:                                            ; preds = %bb.ck
  %i.ir = atomicrmw volatile add ptr %i.ie, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i71

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i71: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i11.i72 = phi i32 [ %i.ih, %bb.cl ], [ %i.ir, %bb.cm ]
  %i.is = icmp eq i32 %.0.i.i.i.i.i11.i72, 1
  br i1 %i.is, label %bb.cn, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i73, !prof !206

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i71
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i73

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i73: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i71, %bb.cj, %_ZN5arrow6ScalarD2Ev.exit.i68
  %i.it = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !754, !noalias !769 ; 4 uses
  %.not.i.i.i1.i13.i74 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i1.i13.i74, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int32TypeEiNS_11Int32ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, label %bb.co

bb.co:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i73
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 12 ; 3 uses
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !769
  %.not.i.i.i.i.i14.i75 = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i.i.i14.i75, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ix = load i32, ptr %i.iv, align 4, !tbaa !3  ; 2 uses
  %i.iy = add nsw i32 %i.ix, -1
  store i32 %i.iy, ptr %i.iv, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i76

bb.cq:                                            ; preds = %bb.co
  %i.iz = atomicrmw volatile add ptr %i.iv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i76

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i76: ; preds = %bb.cq, %bb.cp
  %.0.i.i.i.i.i.i16.i77 = phi i32 [ %i.ix, %bb.cp ], [ %i.iz, %bb.cq ]
  %i.ja = icmp eq i32 %.0.i.i.i.i.i.i16.i77, 1
  br i1 %i.ja, label %bb.cr, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int32TypeEiNS_11Int32ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.cr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i76
  %i.jb = load ptr, ptr %i.iu, align 8, !tbaa !743
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8
  tail call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #22, !inline_history !781
  br label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int32TypeEiNS_11Int32ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.cs:                                            ; preds = %_ZN5arrow11Int32ScalarCI2NS_13NumericScalarINS_9Int32TypeEEEEi.exit.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.bw
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %14) #22
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn.i56 = phi { ptr, i32 } [ %i.jf, %bb.ct ], [ %i.je, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !769
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !769
  br label %common.resume

_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int32TypeEiNS_11Int32ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i73, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i76, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !769
  br label %bb.iv

switch.lookup275:                                 ; preds = %bb.e
  %switch.tableidx274 = add nsw i32 %i.b, -2      ; 2 uses
  %i.jg = zext nneg i32 %switch.tableidx274 to i64
  %switch.gep276 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5arrow8internal14IntegersCanFitERKNS_9ArraySpanERKNS_8DataTypeE.183, i64 %i.jg
  %switch.load277 = load i64, ptr %switch.gep276, align 8
  %i.jh = zext nneg i32 %switch.tableidx274 to i64
  %switch.gep278 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5arrow8internal14IntegersCanFitERKNS_9ArraySpanERKNS_8DataTypeE.184, i64 %i.jh
  %switch.load279 = load i64, ptr %switch.gep278, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !782
  %i.ji = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev(), !noalias !785 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !739, !noalias !785 ; 2 uses
  %i.jl = load <2 x ptr>, ptr %i.ji, align 8, !tbaa !740, !noalias !785
  %.not.i.i.i.i.i.i.i81 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i.i.i.i81, label %_ZN5arrow11Int64ScalarCI2NS_13NumericScalarINS_9Int64TypeEEEEl.exit.i, label %bb.cv

bb.cv:                                            ; preds = %switch.lookup275
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 3 uses
  %i.jn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !788
  %.not.i.i.i.i.i.i.i.i82 = icmp eq i8 %i.jn, 0
  br i1 %.not.i.i.i.i.i.i.i.i82, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jo = load i32, ptr %i.jm, align 4, !tbaa !3, !noalias !785
  %i.jp = add nsw i32 %i.jo, 1
  store i32 %i.jp, ptr %i.jm, align 4, !tbaa !3, !noalias !785
  br label %_ZN5arrow11Int64ScalarCI2NS_13NumericScalarINS_9Int64TypeEEEEl.exit.i

bb.cx:                                            ; preds = %bb.cv
  %i.jq = atomicrmw volatile add ptr %i.jm, i32 1 acq_rel, align 4, !noalias !785 ; 0 uses
  br label %_ZN5arrow11Int64ScalarCI2NS_13NumericScalarINS_9Int64TypeEEEEl.exit.i

_ZN5arrow11Int64ScalarCI2NS_13NumericScalarINS_9Int64TypeEEEEl.exit.i: ; preds = %bb.cx, %bb.cw, %switch.lookup275
  %i.jr = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jr, i8 0, i64 16, i1 false), !noalias !782
  %i.js = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.jt = getelementptr inbounds nuw i8, ptr %11, i64 32
  store <2 x ptr> %i.jl, ptr %i.js, align 8, !tbaa !740, !noalias !782
  %i.ju = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i8 1, ptr %i.ju, align 8, !tbaa !742, !noalias !782
  %i.jv = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i64 %switch.load277, ptr %i.jv, align 8, !tbaa !604, !noalias !782
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow11Int64ScalarE, i64 16), ptr %11, align 8, !tbaa !743, !noalias !782
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22, !noalias !782
  %i.jw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev()
          to label %.noexc.i84 unwind label %bb.dx ; 2 uses

.noexc.i84:                                       ; preds = %_ZN5arrow11Int64ScalarCI2NS_13NumericScalarINS_9Int64TypeEEEEl.exit.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !739, !noalias !789 ; 9 uses
  %i.jz = load <2 x ptr>, ptr %i.jw, align 8, !tbaa !740, !noalias !789
  %.not.i.i.i.i.i.i5.i85 = icmp eq ptr %i.jy, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i5.i85, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %.noexc.i84
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 3 uses
  %i.kb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !792
  %.not.i.i.i.i.i.i.i6.i86 = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i.i.i.i.i6.i86, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !3, !noalias !789
  %i.kd = add nsw i32 %i.kc, 1
  store i32 %i.kd, ptr %i.ka, align 4, !tbaa !3, !noalias !789
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.ke = atomicrmw volatile add ptr %i.ka, i32 1 acq_rel, align 4, !noalias !789 ; 0 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %.noexc.i84
  %i.kf = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i8 0, i64 16, i1 false), !noalias !782
  %i.kg = getelementptr inbounds nuw i8, ptr %12, i64 24
  store <2 x ptr> %i.jz, ptr %i.kg, align 8, !tbaa !740, !noalias !782
  %i.kh = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i8 1, ptr %i.kh, align 8, !tbaa !742, !noalias !782
  %i.ki = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 %switch.load279, ptr %i.ki, align 8, !tbaa !604, !noalias !782
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow11Int64ScalarE, i64 16), ptr %12, align 8, !tbaa !743, !noalias !782
  invoke void @_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(41) %11, ptr noundef nonnull align 8 dereferenceable(41) %12)
          to label %bb.dc unwind label %bb.dy

bb.dc:                                            ; preds = %bb.db
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %12, align 8, !tbaa !743, !noalias !782
  br i1 %.not.i.i.i.i.i.i5.i85, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i90, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 4 uses
  %i.kk = load atomic i64, ptr %i.kj acquire, align 8 ; 2 uses
  %i.kl = icmp eq i64 %i.kk, 4294967297
  %i.km = trunc i64 %i.kk to i32                  ; 2 uses
  br i1 %i.kl, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %i.kj, align 8, !tbaa !749
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  store i32 0, ptr %i.kn, align 4, !tbaa !751
  %i.ko = load ptr, ptr %i.jy, align 8, !tbaa !743
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8
  tail call void %i.kq(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #22, !inline_history !793
  %i.kr = load ptr, ptr %i.jy, align 8, !tbaa !743
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8
  tail call void %i.kt(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #22, !inline_history !793
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i90

bb.df:                                            ; preds = %bb.dd
  %i.ku = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !782
  %.not.i.i.i.i.i87 = icmp eq i8 %i.ku, 0
  br i1 %.not.i.i.i.i.i87, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kv = add nsw i32 %i.km, -1
  store i32 %i.kv, ptr %i.kj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i88

bb.dh:                                            ; preds = %bb.df
  %i.kw = atomicrmw volatile add ptr %i.kj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i88

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i88: ; preds = %bb.dh, %bb.dg
  %.0.i.i.i.i.i.i89 = phi i32 [ %i.km, %bb.dg ], [ %i.kw, %bb.dh ]
  %i.kx = icmp eq i32 %.0.i.i.i.i.i.i89, 1
  br i1 %i.kx, label %bb.di, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i90, !prof !206

bb.di:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i88
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i90

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i90: ; preds = %bb.di, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i88, %bb.de, %bb.dc
  %i.ky = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !754, !noalias !782 ; 4 uses
  %.not.i.i.i1.i.i91 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i1.i.i91, label %_ZN5arrow6ScalarD2Ev.exit.i95, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i90
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 12 ; 3 uses
  %i.lb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !782
  %.not.i.i.i.i.i.i92 = icmp eq i8 %i.lb, 0
  br i1 %.not.i.i.i.i.i.i92, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lc = load i32, ptr %i.la, align 4, !tbaa !3  ; 2 uses
  %i.ld = add nsw i32 %i.lc, -1
  store i32 %i.ld, ptr %i.la, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i93

bb.dl:                                            ; preds = %bb.dj
  %i.le = atomicrmw volatile add ptr %i.la, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i93

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i93: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i.i.i.i94 = phi i32 [ %i.lc, %bb.dk ], [ %i.le, %bb.dl ]
  %i.lf = icmp eq i32 %.0.i.i.i.i.i.i.i94, 1
  br i1 %i.lf, label %bb.dm, label %_ZN5arrow6ScalarD2Ev.exit.i95

bb.dm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i93
  %i.lg = load ptr, ptr %i.kz, align 8, !tbaa !743
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = load ptr, ptr %i.lh, align 8
  tail call void %i.li(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #22, !inline_history !794
  br label %_ZN5arrow6ScalarD2Ev.exit.i95

_ZN5arrow6ScalarD2Ev.exit.i95:                    ; preds = %bb.dm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i93, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !782
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %11, align 8, !tbaa !743, !noalias !782
  %i.lj = load ptr, ptr %i.jt, align 8, !tbaa !739, !noalias !782 ; 8 uses
  %.not.i.i.i8.i96 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i8.i96, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i100, label %bb.dn

bb.dn:                                            ; preds = %_ZN5arrow6ScalarD2Ev.exit.i95
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 4 uses
  %i.ll = load atomic i64, ptr %i.lk acquire, align 8 ; 2 uses
  %i.lm = icmp eq i64 %i.ll, 4294967297
  %i.ln = trunc i64 %i.ll to i32                  ; 2 uses
  br i1 %i.lm, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i32 0, ptr %i.lk, align 8, !tbaa !749
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  store i32 0, ptr %i.lo, align 4, !tbaa !751
  %i.lp = load ptr, ptr %i.lj, align 8, !tbaa !743
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8
  tail call void %i.lr(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #22, !inline_history !793
  %i.ls = load ptr, ptr %i.lj, align 8, !tbaa !743
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8
  tail call void %i.lu(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #22, !inline_history !793
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i100

bb.dp:                                            ; preds = %bb.dn
  %i.lv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !782
  %.not.i.i.i.i9.i97 = icmp eq i8 %i.lv, 0
  br i1 %.not.i.i.i.i9.i97, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lw = add nsw i32 %i.ln, -1
  store i32 %i.lw, ptr %i.lk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i98

bb.dr:                                            ; preds = %bb.dp
  %i.lx = atomicrmw volatile add ptr %i.lk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i98

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i98: ; preds = %bb.dr, %bb.dq
  %.0.i.i.i.i.i11.i99 = phi i32 [ %i.ln, %bb.dq ], [ %i.lx, %bb.dr ]
  %i.ly = icmp eq i32 %.0.i.i.i.i.i11.i99, 1
  br i1 %i.ly, label %bb.ds, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i100, !prof !206

bb.ds:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i98
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i100

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i100: ; preds = %bb.ds, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i98, %bb.do, %_ZN5arrow6ScalarD2Ev.exit.i95
  %i.lz = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !754, !noalias !782 ; 4 uses
  %.not.i.i.i1.i13.i101 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i1.i13.i101, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int64TypeElNS_11Int64ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i100
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 12 ; 3 uses
  %i.mc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !782
  %.not.i.i.i.i.i14.i102 = icmp eq i8 %i.mc, 0
  br i1 %.not.i.i.i.i.i14.i102, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.md = load i32, ptr %i.mb, align 4, !tbaa !3  ; 2 uses
  %i.me = add nsw i32 %i.md, -1
  store i32 %i.me, ptr %i.mb, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i103

bb.dv:                                            ; preds = %bb.dt
  %i.mf = atomicrmw volatile add ptr %i.mb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i103

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i103: ; preds = %bb.dv, %bb.du
  %.0.i.i.i.i.i.i16.i104 = phi i32 [ %i.md, %bb.du ], [ %i.mf, %bb.dv ]
  %i.mg = icmp eq i32 %.0.i.i.i.i.i.i16.i104, 1
  br i1 %i.mg, label %bb.dw, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int64TypeElNS_11Int64ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.dw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i103
  %i.mh = load ptr, ptr %i.ma, align 8, !tbaa !743
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8
  tail call void %i.mj(ptr noundef nonnull align 8 dereferenceable(16) %i.ma) #22, !inline_history !794
  br label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int64TypeElNS_11Int64ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.dx:                                            ; preds = %_ZN5arrow11Int64ScalarCI2NS_13NumericScalarINS_9Int64TypeEEEEl.exit.i
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dy:                                            ; preds = %bb.db
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %12) #22
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.pn.i83 = phi { ptr, i32 } [ %i.ml, %bb.dy ], [ %i.mk, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !782
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !782
  br label %common.resume

_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int64TypeElNS_11Int64ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i100, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i103, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !782
  br label %bb.iv

_ZN5arrow8internal12_GLOBAL__N_113GetSafeMinMaxINS_9UInt8TypeEhEEvNS_4Type4typeEPT0_S7_.exit.i: ; preds = %bb.e
  %i.mm = icmp eq i32 %i.b, 3
  %. = select i1 %i.mm, i8 127, i8 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !795
  %i.mn = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5uint8Ev(), !noalias !798 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !739, !noalias !798 ; 2 uses
  %i.mq = load <2 x ptr>, ptr %i.mn, align 8, !tbaa !740, !noalias !798
  %.not.i.i.i.i.i.i.i107 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i.i.i.i107, label %_ZN5arrow11UInt8ScalarCI2NS_13NumericScalarINS_9UInt8TypeEEEEh.exit.i, label %bb.ea

bb.ea:                                            ; preds = %_ZN5arrow8internal12_GLOBAL__N_113GetSafeMinMaxINS_9UInt8TypeEhEEvNS_4Type4typeEPT0_S7_.exit.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 3 uses
  %i.ms = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !801
  %.not.i.i.i.i.i.i.i.i108 = icmp eq i8 %i.ms, 0
  br i1 %.not.i.i.i.i.i.i.i.i108, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.mt = load i32, ptr %i.mr, align 4, !tbaa !3, !noalias !798
  %i.mu = add nsw i32 %i.mt, 1
  store i32 %i.mu, ptr %i.mr, align 4, !tbaa !3, !noalias !798
  br label %_ZN5arrow11UInt8ScalarCI2NS_13NumericScalarINS_9UInt8TypeEEEEh.exit.i

bb.ec:                                            ; preds = %bb.ea
  %i.mv = atomicrmw volatile add ptr %i.mr, i32 1 acq_rel, align 4, !noalias !798 ; 0 uses
  br label %_ZN5arrow11UInt8ScalarCI2NS_13NumericScalarINS_9UInt8TypeEEEEh.exit.i

_ZN5arrow11UInt8ScalarCI2NS_13NumericScalarINS_9UInt8TypeEEEEh.exit.i: ; preds = %bb.ec, %bb.eb, %_ZN5arrow8internal12_GLOBAL__N_113GetSafeMinMaxINS_9UInt8TypeEhEEvNS_4Type4typeEPT0_S7_.exit.i
  %i.mw = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mw, i8 0, i64 16, i1 false), !noalias !795
  %i.mx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.my = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <2 x ptr> %i.mq, ptr %i.mx, align 8, !tbaa !740, !noalias !795
  %i.mz = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 1, ptr %i.mz, align 8, !tbaa !742, !noalias !795
  %i.na = getelementptr inbounds nuw i8, ptr %9, i64 41
  store i8 0, ptr %i.na, align 1, !tbaa !628, !noalias !795
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow11UInt8ScalarE, i64 16), ptr %9, align 8, !tbaa !743, !noalias !795
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !795
  %i.nb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5uint8Ev()
          to label %.noexc.i110 unwind label %bb.fc ; 2 uses

.noexc.i110:                                      ; preds = %_ZN5arrow11UInt8ScalarCI2NS_13NumericScalarINS_9UInt8TypeEEEEh.exit.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !739, !noalias !802 ; 9 uses
  %i.ne = load <2 x ptr>, ptr %i.nb, align 8, !tbaa !740, !noalias !802
  %.not.i.i.i.i.i.i5.i111 = icmp eq ptr %i.nd, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i5.i111, label %bb.eg, label %bb.ed

bb.ed:                                            ; preds = %.noexc.i110
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 3 uses
  %i.ng = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !805
  %.not.i.i.i.i.i.i.i6.i112 = icmp eq i8 %i.ng, 0
  br i1 %.not.i.i.i.i.i.i.i6.i112, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.nh = load i32, ptr %i.nf, align 4, !tbaa !3, !noalias !802
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.nf, align 4, !tbaa !3, !noalias !802
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  %i.nj = atomicrmw volatile add ptr %i.nf, i32 1 acq_rel, align 4, !noalias !802 ; 0 uses
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %.noexc.i110
  %i.nk = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nk, i8 0, i64 16, i1 false), !noalias !795
  %i.nl = getelementptr inbounds nuw i8, ptr %10, i64 24
  store <2 x ptr> %i.ne, ptr %i.nl, align 8, !tbaa !740, !noalias !795
  %i.nm = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i8 1, ptr %i.nm, align 8, !tbaa !742, !noalias !795
  %i.nn = getelementptr inbounds nuw i8, ptr %10, i64 41
  store i8 %., ptr %i.nn, align 1, !tbaa !628, !noalias !795
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow11UInt8ScalarE, i64 16), ptr %10, align 8, !tbaa !743, !noalias !795
  invoke void @_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(41) %10)
          to label %bb.eh unwind label %bb.fd

bb.eh:                                            ; preds = %bb.eg
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %10, align 8, !tbaa !743, !noalias !795
  br i1 %.not.i.i.i.i.i.i5.i111, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i116, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.no = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 4 uses
  %i.np = load atomic i64, ptr %i.no acquire, align 8 ; 2 uses
  %i.nq = icmp eq i64 %i.np, 4294967297
  %i.nr = trunc i64 %i.np to i32                  ; 2 uses
  br i1 %i.nq, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i32 0, ptr %i.no, align 8, !tbaa !749
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nd, i64 12
  store i32 0, ptr %i.ns, align 4, !tbaa !751
  %i.nt = load ptr, ptr %i.nd, align 8, !tbaa !743
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8
  tail call void %i.nv(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #22, !inline_history !806
  %i.nw = load ptr, ptr %i.nd, align 8, !tbaa !743
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  %i.ny = load ptr, ptr %i.nx, align 8
  tail call void %i.ny(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #22, !inline_history !806
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i116

bb.ek:                                            ; preds = %bb.ei
  %i.nz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !795
  %.not.i.i.i.i.i113 = icmp eq i8 %i.nz, 0
  br i1 %.not.i.i.i.i.i113, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.oa = add nsw i32 %i.nr, -1
  store i32 %i.oa, ptr %i.no, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i114

bb.em:                                            ; preds = %bb.ek
  %i.ob = atomicrmw volatile add ptr %i.no, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i114

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i114: ; preds = %bb.em, %bb.el
  %.0.i.i.i.i.i.i115 = phi i32 [ %i.nr, %bb.el ], [ %i.ob, %bb.em ]
  %i.oc = icmp eq i32 %.0.i.i.i.i.i.i115, 1
  br i1 %i.oc, label %bb.en, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i116, !prof !206

bb.en:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i114
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i116

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i116: ; preds = %bb.en, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i114, %bb.ej, %bb.eh
  %i.od = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !754, !noalias !795 ; 4 uses
  %.not.i.i.i1.i.i117 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i.i1.i.i117, label %_ZN5arrow6ScalarD2Ev.exit.i121, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i116
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 12 ; 3 uses
  %i.og = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !795
  %.not.i.i.i.i.i.i118 = icmp eq i8 %i.og, 0
  br i1 %.not.i.i.i.i.i.i118, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.oh = load i32, ptr %i.of, align 4, !tbaa !3  ; 2 uses
  %i.oi = add nsw i32 %i.oh, -1
  store i32 %i.oi, ptr %i.of, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119

bb.eq:                                            ; preds = %bb.eo
  %i.oj = atomicrmw volatile add ptr %i.of, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119: ; preds = %bb.eq, %bb.ep
  %.0.i.i.i.i.i.i.i120 = phi i32 [ %i.oh, %bb.ep ], [ %i.oj, %bb.eq ]
  %i.ok = icmp eq i32 %.0.i.i.i.i.i.i.i120, 1
  br i1 %i.ok, label %bb.er, label %_ZN5arrow6ScalarD2Ev.exit.i121

bb.er:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119
  %i.ol = load ptr, ptr %i.oe, align 8, !tbaa !743
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.on = load ptr, ptr %i.om, align 8
  tail call void %i.on(ptr noundef nonnull align 8 dereferenceable(16) %i.oe) #22, !inline_history !807
  br label %_ZN5arrow6ScalarD2Ev.exit.i121

_ZN5arrow6ScalarD2Ev.exit.i121:                   ; preds = %bb.er, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !795
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %9, align 8, !tbaa !743, !noalias !795
  %i.oo = load ptr, ptr %i.my, align 8, !tbaa !739, !noalias !795 ; 8 uses
  %.not.i.i.i8.i122 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i.i8.i122, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i126, label %bb.es

bb.es:                                            ; preds = %_ZN5arrow6ScalarD2Ev.exit.i121
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8 ; 4 uses
  %i.oq = load atomic i64, ptr %i.op acquire, align 8 ; 2 uses
  %i.or = icmp eq i64 %i.oq, 4294967297
  %i.os = trunc i64 %i.oq to i32                  ; 2 uses
  br i1 %i.or, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 0, ptr %i.op, align 8, !tbaa !749
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oo, i64 12
  store i32 0, ptr %i.ot, align 4, !tbaa !751
  %i.ou = load ptr, ptr %i.oo, align 8, !tbaa !743
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8
  tail call void %i.ow(ptr noundef nonnull align 8 dereferenceable(16) %i.oo) #22, !inline_history !806
  %i.ox = load ptr, ptr %i.oo, align 8, !tbaa !743
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.oz = load ptr, ptr %i.oy, align 8
  tail call void %i.oz(ptr noundef nonnull align 8 dereferenceable(16) %i.oo) #22, !inline_history !806
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i126

bb.eu:                                            ; preds = %bb.es
  %i.pa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !795
  %.not.i.i.i.i9.i123 = icmp eq i8 %i.pa, 0
  br i1 %.not.i.i.i.i9.i123, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.pb = add nsw i32 %i.os, -1
  store i32 %i.pb, ptr %i.op, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i124

bb.ew:                                            ; preds = %bb.eu
  %i.pc = atomicrmw volatile add ptr %i.op, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i124

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i124: ; preds = %bb.ew, %bb.ev
  %.0.i.i.i.i.i11.i125 = phi i32 [ %i.os, %bb.ev ], [ %i.pc, %bb.ew ]
  %i.pd = icmp eq i32 %.0.i.i.i.i.i11.i125, 1
  br i1 %i.pd, label %bb.ex, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i126, !prof !206

bb.ex:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i124
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oo) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i126

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i126: ; preds = %bb.ex, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i124, %bb.et, %_ZN5arrow6ScalarD2Ev.exit.i121
  %i.pe = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !754, !noalias !795 ; 4 uses
  %.not.i.i.i1.i13.i127 = icmp eq ptr %i.pf, null
  br i1 %.not.i.i.i1.i13.i127, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9UInt8TypeEhNS_11UInt8ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i126
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 12 ; 3 uses
  %i.ph = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !795
  %.not.i.i.i.i.i14.i128 = icmp eq i8 %i.ph, 0
  br i1 %.not.i.i.i.i.i14.i128, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.pi = load i32, ptr %i.pg, align 4, !tbaa !3  ; 2 uses
  %i.pj = add nsw i32 %i.pi, -1
  store i32 %i.pj, ptr %i.pg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i129

bb.fa:                                            ; preds = %bb.ey
  %i.pk = atomicrmw volatile add ptr %i.pg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i129

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i129: ; preds = %bb.fa, %bb.ez
  %.0.i.i.i.i.i.i16.i130 = phi i32 [ %i.pi, %bb.ez ], [ %i.pk, %bb.fa ]
  %i.pl = icmp eq i32 %.0.i.i.i.i.i.i16.i130, 1
  br i1 %i.pl, label %bb.fb, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9UInt8TypeEhNS_11UInt8ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.fb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i129
  %i.pm = load ptr, ptr %i.pf, align 8, !tbaa !743
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.po = load ptr, ptr %i.pn, align 8
  tail call void %i.po(ptr noundef nonnull align 8 dereferenceable(16) %i.pf) #22, !inline_history !807
  br label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9UInt8TypeEhNS_11UInt8ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.fc:                                            ; preds = %_ZN5arrow11UInt8ScalarCI2NS_13NumericScalarINS_9UInt8TypeEEEEh.exit.i
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.fd:                                            ; preds = %bb.eg
  %i.pq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(42) %10) #22
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.pn.i109 = phi { ptr, i32 } [ %i.pq, %bb.fd ], [ %i.pp, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !795
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(42) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !795
  br label %common.resume

_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9UInt8TypeEhNS_11UInt8ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i126, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i129, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !795
  br label %bb.iv

switch.lookup281:                                 ; preds = %bb.e
  %i.pr = zext nneg i32 %i.b to i64
  %i.ps = getelementptr [2 x i8], ptr @switch.table._ZN5arrow8internal14IntegersCanFitERKNS_9ArraySpanERKNS_8DataTypeE.185, i64 %i.pr
  %switch.gep282 = getelementptr i8, ptr %i.ps, i64 -4
  %switch.load283 = load i16, ptr %switch.gep282, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !808
  %i.pt = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint16Ev(), !noalias !811 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !739, !noalias !811 ; 2 uses
  %i.pw = load <2 x ptr>, ptr %i.pt, align 8, !tbaa !740, !noalias !811
  %.not.i.i.i.i.i.i.i133 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i.i.i.i.i133, label %_ZN5arrow12UInt16ScalarCI2NS_13NumericScalarINS_10UInt16TypeEEEEt.exit.i, label %bb.ff

bb.ff:                                            ; preds = %switch.lookup281
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 8 ; 3 uses
  %i.py = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !814
  %.not.i.i.i.i.i.i.i.i134 = icmp eq i8 %i.py, 0
  br i1 %.not.i.i.i.i.i.i.i.i134, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.pz = load i32, ptr %i.px, align 4, !tbaa !3, !noalias !811
  %i.qa = add nsw i32 %i.pz, 1
  store i32 %i.qa, ptr %i.px, align 4, !tbaa !3, !noalias !811
  br label %_ZN5arrow12UInt16ScalarCI2NS_13NumericScalarINS_10UInt16TypeEEEEt.exit.i

bb.fh:                                            ; preds = %bb.ff
  %i.qb = atomicrmw volatile add ptr %i.px, i32 1 acq_rel, align 4, !noalias !811 ; 0 uses
  br label %_ZN5arrow12UInt16ScalarCI2NS_13NumericScalarINS_10UInt16TypeEEEEt.exit.i

_ZN5arrow12UInt16ScalarCI2NS_13NumericScalarINS_10UInt16TypeEEEEt.exit.i: ; preds = %bb.fh, %bb.fg, %switch.lookup281
  %i.qc = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qc, i8 0, i64 16, i1 false), !noalias !808
  %i.qd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.qe = getelementptr inbounds nuw i8, ptr %7, i64 32
  store <2 x ptr> %i.pw, ptr %i.qd, align 8, !tbaa !740, !noalias !808
  %i.qf = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 1, ptr %i.qf, align 8, !tbaa !742, !noalias !808
  %i.qg = getelementptr inbounds nuw i8, ptr %7, i64 42
  store i16 0, ptr %i.qg, align 2, !tbaa !654, !noalias !808
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12UInt16ScalarE, i64 16), ptr %7, align 8, !tbaa !743, !noalias !808
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !808
  %i.qh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint16Ev()
          to label %.noexc.i136 unwind label %bb.gh ; 2 uses

.noexc.i136:                                      ; preds = %_ZN5arrow12UInt16ScalarCI2NS_13NumericScalarINS_10UInt16TypeEEEEt.exit.i
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !739, !noalias !815 ; 9 uses
  %i.qk = load <2 x ptr>, ptr %i.qh, align 8, !tbaa !740, !noalias !815
  %.not.i.i.i.i.i.i5.i137 = icmp eq ptr %i.qj, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i5.i137, label %bb.fl, label %bb.fi

bb.fi:                                            ; preds = %.noexc.i136
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 8 ; 3 uses
  %i.qm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !818
  %.not.i.i.i.i.i.i.i6.i138 = icmp eq i8 %i.qm, 0
  br i1 %.not.i.i.i.i.i.i.i6.i138, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.qn = load i32, ptr %i.ql, align 4, !tbaa !3, !noalias !815
  %i.qo = add nsw i32 %i.qn, 1
  store i32 %i.qo, ptr %i.ql, align 4, !tbaa !3, !noalias !815
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  %i.qp = atomicrmw volatile add ptr %i.ql, i32 1 acq_rel, align 4, !noalias !815 ; 0 uses
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj, %.noexc.i136
  %i.qq = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qq, i8 0, i64 16, i1 false), !noalias !808
  %i.qr = getelementptr inbounds nuw i8, ptr %8, i64 24
  store <2 x ptr> %i.qk, ptr %i.qr, align 8, !tbaa !740, !noalias !808
  %i.qs = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i8 1, ptr %i.qs, align 8, !tbaa !742, !noalias !808
  %i.qt = getelementptr inbounds nuw i8, ptr %8, i64 42
  store i16 %switch.load283, ptr %i.qt, align 2, !tbaa !654, !noalias !808
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12UInt16ScalarE, i64 16), ptr %8, align 8, !tbaa !743, !noalias !808
  invoke void @_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(41) %7, ptr noundef nonnull align 8 dereferenceable(41) %8)
          to label %bb.fm unwind label %bb.gi

bb.fm:                                            ; preds = %bb.fl
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %8, align 8, !tbaa !743, !noalias !808
  br i1 %.not.i.i.i.i.i.i5.i137, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i142, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qj, i64 8 ; 4 uses
  %i.qv = load atomic i64, ptr %i.qu acquire, align 8 ; 2 uses
  %i.qw = icmp eq i64 %i.qv, 4294967297
  %i.qx = trunc i64 %i.qv to i32                  ; 2 uses
  br i1 %i.qw, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  store i32 0, ptr %i.qu, align 8, !tbaa !749
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qj, i64 12
  store i32 0, ptr %i.qy, align 4, !tbaa !751
  %i.qz = load ptr, ptr %i.qj, align 8, !tbaa !743
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8
  tail call void %i.rb(ptr noundef nonnull align 8 dereferenceable(16) %i.qj) #22, !inline_history !819
  %i.rc = load ptr, ptr %i.qj, align 8, !tbaa !743
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  %i.re = load ptr, ptr %i.rd, align 8
  tail call void %i.re(ptr noundef nonnull align 8 dereferenceable(16) %i.qj) #22, !inline_history !819
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i142

bb.fp:                                            ; preds = %bb.fn
  %i.rf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !808
  %.not.i.i.i.i.i139 = icmp eq i8 %i.rf, 0
  br i1 %.not.i.i.i.i.i139, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.rg = add nsw i32 %i.qx, -1
  store i32 %i.rg, ptr %i.qu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i140

bb.fr:                                            ; preds = %bb.fp
  %i.rh = atomicrmw volatile add ptr %i.qu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i140

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i140: ; preds = %bb.fr, %bb.fq
  %.0.i.i.i.i.i.i141 = phi i32 [ %i.qx, %bb.fq ], [ %i.rh, %bb.fr ]
  %i.ri = icmp eq i32 %.0.i.i.i.i.i.i141, 1
  br i1 %i.ri, label %bb.fs, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i142, !prof !206

bb.fs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i140
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qj) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i142

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i142: ; preds = %bb.fs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i140, %bb.fo, %bb.fm
  %i.rj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !754, !noalias !808 ; 4 uses
  %.not.i.i.i1.i.i143 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i.i1.i.i143, label %_ZN5arrow6ScalarD2Ev.exit.i147, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i142
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 12 ; 3 uses
  %i.rm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !808
  %.not.i.i.i.i.i.i144 = icmp eq i8 %i.rm, 0
  br i1 %.not.i.i.i.i.i.i144, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.rn = load i32, ptr %i.rl, align 4, !tbaa !3  ; 2 uses
  %i.ro = add nsw i32 %i.rn, -1
  store i32 %i.ro, ptr %i.rl, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i145

bb.fv:                                            ; preds = %bb.ft
  %i.rp = atomicrmw volatile add ptr %i.rl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i145

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i145: ; preds = %bb.fv, %bb.fu
  %.0.i.i.i.i.i.i.i146 = phi i32 [ %i.rn, %bb.fu ], [ %i.rp, %bb.fv ]
  %i.rq = icmp eq i32 %.0.i.i.i.i.i.i.i146, 1
  br i1 %i.rq, label %bb.fw, label %_ZN5arrow6ScalarD2Ev.exit.i147

bb.fw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i145
  %i.rr = load ptr, ptr %i.rk, align 8, !tbaa !743
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 24
  %i.rt = load ptr, ptr %i.rs, align 8
  tail call void %i.rt(ptr noundef nonnull align 8 dereferenceable(16) %i.rk) #22, !inline_history !820
  br label %_ZN5arrow6ScalarD2Ev.exit.i147

_ZN5arrow6ScalarD2Ev.exit.i147:                   ; preds = %bb.fw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i145, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !808
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %7, align 8, !tbaa !743, !noalias !808
  %i.ru = load ptr, ptr %i.qe, align 8, !tbaa !739, !noalias !808 ; 8 uses
  %.not.i.i.i8.i148 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i.i8.i148, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i152, label %bb.fx

bb.fx:                                            ; preds = %_ZN5arrow6ScalarD2Ev.exit.i147
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 4 uses
  %i.rw = load atomic i64, ptr %i.rv acquire, align 8 ; 2 uses
  %i.rx = icmp eq i64 %i.rw, 4294967297
  %i.ry = trunc i64 %i.rw to i32                  ; 2 uses
  br i1 %i.rx, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  store i32 0, ptr %i.rv, align 8, !tbaa !749
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 12
  store i32 0, ptr %i.rz, align 4, !tbaa !751
  %i.sa = load ptr, ptr %i.ru, align 8, !tbaa !743
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8
  tail call void %i.sc(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #22, !inline_history !819
  %i.sd = load ptr, ptr %i.ru, align 8, !tbaa !743
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sf = load ptr, ptr %i.se, align 8
  tail call void %i.sf(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #22, !inline_history !819
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i152

bb.fz:                                            ; preds = %bb.fx
  %i.sg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !808
  %.not.i.i.i.i9.i149 = icmp eq i8 %i.sg, 0
  br i1 %.not.i.i.i.i9.i149, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.sh = add nsw i32 %i.ry, -1
  store i32 %i.sh, ptr %i.rv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i150

bb.gb:                                            ; preds = %bb.fz
  %i.si = atomicrmw volatile add ptr %i.rv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i150

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i150: ; preds = %bb.gb, %bb.ga
  %.0.i.i.i.i.i11.i151 = phi i32 [ %i.ry, %bb.ga ], [ %i.si, %bb.gb ]
  %i.sj = icmp eq i32 %.0.i.i.i.i.i11.i151, 1
  br i1 %i.sj, label %bb.gc, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i152, !prof !206

bb.gc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i150
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i152

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i152: ; preds = %bb.gc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i150, %bb.fy, %_ZN5arrow6ScalarD2Ev.exit.i147
  %i.sk = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !754, !noalias !808 ; 4 uses
  %.not.i.i.i1.i13.i153 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i1.i13.i153, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt16TypeEtNS_12UInt16ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, label %bb.gd

bb.gd:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i152
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 12 ; 3 uses
  %i.sn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !808
  %.not.i.i.i.i.i14.i154 = icmp eq i8 %i.sn, 0
  br i1 %.not.i.i.i.i.i14.i154, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.so = load i32, ptr %i.sm, align 4, !tbaa !3  ; 2 uses
  %i.sp = add nsw i32 %i.so, -1
  store i32 %i.sp, ptr %i.sm, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i155

bb.gf:                                            ; preds = %bb.gd
  %i.sq = atomicrmw volatile add ptr %i.sm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i155

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i155: ; preds = %bb.gf, %bb.ge
  %.0.i.i.i.i.i.i16.i156 = phi i32 [ %i.so, %bb.ge ], [ %i.sq, %bb.gf ]
  %i.sr = icmp eq i32 %.0.i.i.i.i.i.i16.i156, 1
  br i1 %i.sr, label %bb.gg, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt16TypeEtNS_12UInt16ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.gg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i155
  %i.ss = load ptr, ptr %i.sl, align 8, !tbaa !743
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.su = load ptr, ptr %i.st, align 8
  tail call void %i.su(ptr noundef nonnull align 8 dereferenceable(16) %i.sl) #22, !inline_history !820
  br label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt16TypeEtNS_12UInt16ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.gh:                                            ; preds = %_ZN5arrow12UInt16ScalarCI2NS_13NumericScalarINS_10UInt16TypeEEEEt.exit.i
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.gi:                                            ; preds = %bb.fl
  %i.sw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %8) #22
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.pn.i135 = phi { ptr, i32 } [ %i.sw, %bb.gi ], [ %i.sv, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !808
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !808
  br label %common.resume

_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt16TypeEtNS_12UInt16ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i152, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i155, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !808
  br label %bb.iv

switch.lookup285:                                 ; preds = %bb.e
  %i.sx = zext nneg i32 %i.b to i64
  %i.sy = getelementptr [4 x i8], ptr @switch.table._ZN5arrow8internal14IntegersCanFitERKNS_9ArraySpanERKNS_8DataTypeE.186, i64 %i.sx
  %switch.gep286 = getelementptr i8, ptr %i.sy, i64 -8
  %switch.load287 = load i32, ptr %switch.gep286, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !821
  %i.sz = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint32Ev(), !noalias !824 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !739, !noalias !824 ; 2 uses
  %i.tc = load <2 x ptr>, ptr %i.sz, align 8, !tbaa !740, !noalias !824
  %.not.i.i.i.i.i.i.i159 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i.i.i.i.i.i159, label %_ZN5arrow12UInt32ScalarCI2NS_13NumericScalarINS_10UInt32TypeEEEEj.exit.i, label %bb.gk

bb.gk:                                            ; preds = %switch.lookup285
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 8 ; 3 uses
  %i.te = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !827
  %.not.i.i.i.i.i.i.i.i160 = icmp eq i8 %i.te, 0
  br i1 %.not.i.i.i.i.i.i.i.i160, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.tf = load i32, ptr %i.td, align 4, !tbaa !3, !noalias !824
  %i.tg = add nsw i32 %i.tf, 1
  store i32 %i.tg, ptr %i.td, align 4, !tbaa !3, !noalias !824
  br label %_ZN5arrow12UInt32ScalarCI2NS_13NumericScalarINS_10UInt32TypeEEEEj.exit.i

bb.gm:                                            ; preds = %bb.gk
  %i.th = atomicrmw volatile add ptr %i.td, i32 1 acq_rel, align 4, !noalias !824 ; 0 uses
  br label %_ZN5arrow12UInt32ScalarCI2NS_13NumericScalarINS_10UInt32TypeEEEEj.exit.i

_ZN5arrow12UInt32ScalarCI2NS_13NumericScalarINS_10UInt32TypeEEEEj.exit.i: ; preds = %bb.gm, %bb.gl, %switch.lookup285
  %i.ti = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ti, i8 0, i64 16, i1 false), !noalias !821
  %i.tj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.tk = getelementptr inbounds nuw i8, ptr %5, i64 32
  store <2 x ptr> %i.tc, ptr %i.tj, align 8, !tbaa !740, !noalias !821
  %i.tl = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 1, ptr %i.tl, align 8, !tbaa !742, !noalias !821
  %i.tm = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %i.tm, align 4, !tbaa !681, !noalias !821
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12UInt32ScalarE, i64 16), ptr %5, align 8, !tbaa !743, !noalias !821
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !821
  %i.tn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint32Ev()
          to label %.noexc.i162 unwind label %bb.hm ; 2 uses

.noexc.i162:                                      ; preds = %_ZN5arrow12UInt32ScalarCI2NS_13NumericScalarINS_10UInt32TypeEEEEj.exit.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !739, !noalias !828 ; 9 uses
  %i.tq = load <2 x ptr>, ptr %i.tn, align 8, !tbaa !740, !noalias !828
  %.not.i.i.i.i.i.i5.i163 = icmp eq ptr %i.tp, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i5.i163, label %bb.gq, label %bb.gn

bb.gn:                                            ; preds = %.noexc.i162
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 8 ; 3 uses
  %i.ts = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !831
  %.not.i.i.i.i.i.i.i6.i164 = icmp eq i8 %i.ts, 0
  br i1 %.not.i.i.i.i.i.i.i6.i164, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.tt = load i32, ptr %i.tr, align 4, !tbaa !3, !noalias !828
  %i.tu = add nsw i32 %i.tt, 1
  store i32 %i.tu, ptr %i.tr, align 4, !tbaa !3, !noalias !828
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gn
  %i.tv = atomicrmw volatile add ptr %i.tr, i32 1 acq_rel, align 4, !noalias !828 ; 0 uses
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go, %.noexc.i162
  %i.tw = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tw, i8 0, i64 16, i1 false), !noalias !821
  %i.tx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store <2 x ptr> %i.tq, ptr %i.tx, align 8, !tbaa !740, !noalias !821
  %i.ty = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 1, ptr %i.ty, align 8, !tbaa !742, !noalias !821
  %i.tz = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %switch.load287, ptr %i.tz, align 4, !tbaa !681, !noalias !821
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12UInt32ScalarE, i64 16), ptr %6, align 8, !tbaa !743, !noalias !821
  invoke void @_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(41) %5, ptr noundef nonnull align 8 dereferenceable(41) %6)
          to label %bb.gr unwind label %bb.hn

bb.gr:                                            ; preds = %bb.gq
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %6, align 8, !tbaa !743, !noalias !821
  br i1 %.not.i.i.i.i.i.i5.i163, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i168, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tp, i64 8 ; 4 uses
  %i.ub = load atomic i64, ptr %i.ua acquire, align 8 ; 2 uses
  %i.uc = icmp eq i64 %i.ub, 4294967297
  %i.ud = trunc i64 %i.ub to i32                  ; 2 uses
  br i1 %i.uc, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  store i32 0, ptr %i.ua, align 8, !tbaa !749
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tp, i64 12
  store i32 0, ptr %i.ue, align 4, !tbaa !751
  %i.uf = load ptr, ptr %i.tp, align 8, !tbaa !743
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8
  tail call void %i.uh(ptr noundef nonnull align 8 dereferenceable(16) %i.tp) #22, !inline_history !832
  %i.ui = load ptr, ptr %i.tp, align 8, !tbaa !743
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %i.uk = load ptr, ptr %i.uj, align 8
  tail call void %i.uk(ptr noundef nonnull align 8 dereferenceable(16) %i.tp) #22, !inline_history !832
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i168

bb.gu:                                            ; preds = %bb.gs
  %i.ul = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !821
  %.not.i.i.i.i.i165 = icmp eq i8 %i.ul, 0
  br i1 %.not.i.i.i.i.i165, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.um = add nsw i32 %i.ud, -1
  store i32 %i.um, ptr %i.ua, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i166

bb.gw:                                            ; preds = %bb.gu
  %i.un = atomicrmw volatile add ptr %i.ua, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i166

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i166: ; preds = %bb.gw, %bb.gv
  %.0.i.i.i.i.i.i167 = phi i32 [ %i.ud, %bb.gv ], [ %i.un, %bb.gw ]
  %i.uo = icmp eq i32 %.0.i.i.i.i.i.i167, 1
  br i1 %i.uo, label %bb.gx, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i168, !prof !206

bb.gx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i166
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tp) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i168

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i168: ; preds = %bb.gx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i166, %bb.gt, %bb.gr
  %i.up = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !754, !noalias !821 ; 4 uses
  %.not.i.i.i1.i.i169 = icmp eq ptr %i.uq, null
  br i1 %.not.i.i.i1.i.i169, label %_ZN5arrow6ScalarD2Ev.exit.i173, label %bb.gy

bb.gy:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i168
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 12 ; 3 uses
  %i.us = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !821
  %.not.i.i.i.i.i.i170 = icmp eq i8 %i.us, 0
  br i1 %.not.i.i.i.i.i.i170, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ut = load i32, ptr %i.ur, align 4, !tbaa !3  ; 2 uses
  %i.uu = add nsw i32 %i.ut, -1
  store i32 %i.uu, ptr %i.ur, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i171

bb.ha:                                            ; preds = %bb.gy
  %i.uv = atomicrmw volatile add ptr %i.ur, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i171

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i171: ; preds = %bb.ha, %bb.gz
  %.0.i.i.i.i.i.i.i172 = phi i32 [ %i.ut, %bb.gz ], [ %i.uv, %bb.ha ]
  %i.uw = icmp eq i32 %.0.i.i.i.i.i.i.i172, 1
  br i1 %i.uw, label %bb.hb, label %_ZN5arrow6ScalarD2Ev.exit.i173

bb.hb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i171
  %i.ux = load ptr, ptr %i.uq, align 8, !tbaa !743
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 24
  %i.uz = load ptr, ptr %i.uy, align 8
  tail call void %i.uz(ptr noundef nonnull align 8 dereferenceable(16) %i.uq) #22, !inline_history !833
  br label %_ZN5arrow6ScalarD2Ev.exit.i173

_ZN5arrow6ScalarD2Ev.exit.i173:                   ; preds = %bb.hb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i171, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !821
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %5, align 8, !tbaa !743, !noalias !821
  %i.va = load ptr, ptr %i.tk, align 8, !tbaa !739, !noalias !821 ; 8 uses
  %.not.i.i.i8.i174 = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i8.i174, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i178, label %bb.hc

bb.hc:                                            ; preds = %_ZN5arrow6ScalarD2Ev.exit.i173
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8 ; 4 uses
  %i.vc = load atomic i64, ptr %i.vb acquire, align 8 ; 2 uses
  %i.vd = icmp eq i64 %i.vc, 4294967297
  %i.ve = trunc i64 %i.vc to i32                  ; 2 uses
  br i1 %i.vd, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  store i32 0, ptr %i.vb, align 8, !tbaa !749
  %i.vf = getelementptr inbounds nuw i8, ptr %i.va, i64 12
  store i32 0, ptr %i.vf, align 4, !tbaa !751
  %i.vg = load ptr, ptr %i.va, align 8, !tbaa !743
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vi = load ptr, ptr %i.vh, align 8
  tail call void %i.vi(ptr noundef nonnull align 8 dereferenceable(16) %i.va) #22, !inline_history !832
  %i.vj = load ptr, ptr %i.va, align 8, !tbaa !743
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 24
  %i.vl = load ptr, ptr %i.vk, align 8
  tail call void %i.vl(ptr noundef nonnull align 8 dereferenceable(16) %i.va) #22, !inline_history !832
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i178

bb.he:                                            ; preds = %bb.hc
  %i.vm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !821
  %.not.i.i.i.i9.i175 = icmp eq i8 %i.vm, 0
  br i1 %.not.i.i.i.i9.i175, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.vn = add nsw i32 %i.ve, -1
  store i32 %i.vn, ptr %i.vb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i176

bb.hg:                                            ; preds = %bb.he
  %i.vo = atomicrmw volatile add ptr %i.vb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i176

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i176: ; preds = %bb.hg, %bb.hf
  %.0.i.i.i.i.i11.i177 = phi i32 [ %i.ve, %bb.hf ], [ %i.vo, %bb.hg ]
  %i.vp = icmp eq i32 %.0.i.i.i.i.i11.i177, 1
  br i1 %i.vp, label %bb.hh, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i178, !prof !206

bb.hh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i176
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.va) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i178

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i178: ; preds = %bb.hh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i176, %bb.hd, %_ZN5arrow6ScalarD2Ev.exit.i173
  %i.vq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !754, !noalias !821 ; 4 uses
  %.not.i.i.i1.i13.i179 = icmp eq ptr %i.vr, null
  br i1 %.not.i.i.i1.i13.i179, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt32TypeEjNS_12UInt32ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, label %bb.hi

bb.hi:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i178
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 12 ; 3 uses
  %i.vt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !821
  %.not.i.i.i.i.i14.i180 = icmp eq i8 %i.vt, 0
  br i1 %.not.i.i.i.i.i14.i180, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.vu = load i32, ptr %i.vs, align 4, !tbaa !3  ; 2 uses
  %i.vv = add nsw i32 %i.vu, -1
  store i32 %i.vv, ptr %i.vs, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i181

bb.hk:                                            ; preds = %bb.hi
  %i.vw = atomicrmw volatile add ptr %i.vs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i181

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i181: ; preds = %bb.hk, %bb.hj
  %.0.i.i.i.i.i.i16.i182 = phi i32 [ %i.vu, %bb.hj ], [ %i.vw, %bb.hk ]
  %i.vx = icmp eq i32 %.0.i.i.i.i.i.i16.i182, 1
  br i1 %i.vx, label %bb.hl, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt32TypeEjNS_12UInt32ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.hl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i181
  %i.vy = load ptr, ptr %i.vr, align 8, !tbaa !743
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8
  tail call void %i.wa(ptr noundef nonnull align 8 dereferenceable(16) %i.vr) #22, !inline_history !833
  br label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt32TypeEjNS_12UInt32ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.hm:                                            ; preds = %_ZN5arrow12UInt32ScalarCI2NS_13NumericScalarINS_10UInt32TypeEEEEj.exit.i
  %i.wb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

bb.hn:                                            ; preds = %bb.gq
  %i.wc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #22
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %.pn.i161 = phi { ptr, i32 } [ %i.wc, %bb.hn ], [ %i.wb, %bb.hm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !821
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !821
  br label %common.resume

_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt32TypeEjNS_12UInt32ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i178, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i181, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !821
  br label %bb.iv

switch.lookup289:                                 ; preds = %bb.e
  %i.wd = zext nneg i32 %i.b to i64
  %i.we = getelementptr [8 x i8], ptr @switch.table._ZN5arrow8internal14IntegersCanFitERKNS_9ArraySpanERKNS_8DataTypeE.187, i64 %i.wd
  %switch.gep290 = getelementptr i8, ptr %i.we, i64 -16
  %switch.load291 = load i64, ptr %switch.gep290, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !834
  %i.wf = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev(), !noalias !837 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !739, !noalias !837 ; 2 uses
  %i.wi = load <2 x ptr>, ptr %i.wf, align 8, !tbaa !740, !noalias !837
  %.not.i.i.i.i.i.i.i185 = icmp eq ptr %i.wh, null
  br i1 %.not.i.i.i.i.i.i.i185, label %_ZN5arrow12UInt64ScalarCI2NS_13NumericScalarINS_10UInt64TypeEEEEm.exit.i, label %bb.hp

bb.hp:                                            ; preds = %switch.lookup289
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 8 ; 3 uses
  %i.wk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !840
  %.not.i.i.i.i.i.i.i.i186 = icmp eq i8 %i.wk, 0
  br i1 %.not.i.i.i.i.i.i.i.i186, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.wl = load i32, ptr %i.wj, align 4, !tbaa !3, !noalias !837
  %i.wm = add nsw i32 %i.wl, 1
  store i32 %i.wm, ptr %i.wj, align 4, !tbaa !3, !noalias !837
  br label %_ZN5arrow12UInt64ScalarCI2NS_13NumericScalarINS_10UInt64TypeEEEEm.exit.i

bb.hr:                                            ; preds = %bb.hp
  %i.wn = atomicrmw volatile add ptr %i.wj, i32 1 acq_rel, align 4, !noalias !837 ; 0 uses
  br label %_ZN5arrow12UInt64ScalarCI2NS_13NumericScalarINS_10UInt64TypeEEEEm.exit.i

_ZN5arrow12UInt64ScalarCI2NS_13NumericScalarINS_10UInt64TypeEEEEm.exit.i: ; preds = %bb.hr, %bb.hq, %switch.lookup289
  %i.wo = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wo, i8 0, i64 16, i1 false), !noalias !834
  %i.wp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.wq = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <2 x ptr> %i.wi, ptr %i.wp, align 8, !tbaa !740, !noalias !834
  %i.wr = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 1, ptr %i.wr, align 8, !tbaa !742, !noalias !834
  %i.ws = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.ws, align 8, !tbaa !705, !noalias !834
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12UInt64ScalarE, i64 16), ptr %3, align 8, !tbaa !743, !noalias !834
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !834
  %i.wt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc.i188 unwind label %bb.ir ; 2 uses

.noexc.i188:                                      ; preds = %_ZN5arrow12UInt64ScalarCI2NS_13NumericScalarINS_10UInt64TypeEEEEm.exit.i
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !739, !noalias !841 ; 9 uses
  %i.ww = load <2 x ptr>, ptr %i.wt, align 8, !tbaa !740, !noalias !841
  %.not.i.i.i.i.i.i5.i189 = icmp eq ptr %i.wv, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i5.i189, label %bb.hv, label %bb.hs

bb.hs:                                            ; preds = %.noexc.i188
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 8 ; 3 uses
  %i.wy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !844
  %.not.i.i.i.i.i.i.i6.i190 = icmp eq i8 %i.wy, 0
  br i1 %.not.i.i.i.i.i.i.i6.i190, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.wz = load i32, ptr %i.wx, align 4, !tbaa !3, !noalias !841
  %i.xa = add nsw i32 %i.wz, 1
  store i32 %i.xa, ptr %i.wx, align 4, !tbaa !3, !noalias !841
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  %i.xb = atomicrmw volatile add ptr %i.wx, i32 1 acq_rel, align 4, !noalias !841 ; 0 uses
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht, %.noexc.i188
  %i.xc = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xc, i8 0, i64 16, i1 false), !noalias !834
  %i.xd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x ptr> %i.ww, ptr %i.xd, align 8, !tbaa !740, !noalias !834
  %i.xe = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 1, ptr %i.xe, align 8, !tbaa !742, !noalias !834
  %i.xf = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %switch.load291, ptr %i.xf, align 8, !tbaa !705, !noalias !834
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12UInt64ScalarE, i64 16), ptr %4, align 8, !tbaa !743, !noalias !834
  invoke void @_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %bb.hw unwind label %bb.is

bb.hw:                                            ; preds = %bb.hv
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %4, align 8, !tbaa !743, !noalias !834
  br i1 %.not.i.i.i.i.i.i5.i189, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i194, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wv, i64 8 ; 4 uses
  %i.xh = load atomic i64, ptr %i.xg acquire, align 8 ; 2 uses
  %i.xi = icmp eq i64 %i.xh, 4294967297
  %i.xj = trunc i64 %i.xh to i32                  ; 2 uses
  br i1 %i.xi, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  store i32 0, ptr %i.xg, align 8, !tbaa !749
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wv, i64 12
  store i32 0, ptr %i.xk, align 4, !tbaa !751
  %i.xl = load ptr, ptr %i.wv, align 8, !tbaa !743
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %i.xn = load ptr, ptr %i.xm, align 8
  tail call void %i.xn(ptr noundef nonnull align 8 dereferenceable(16) %i.wv) #22, !inline_history !845
  %i.xo = load ptr, ptr %i.wv, align 8, !tbaa !743
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 24
  %i.xq = load ptr, ptr %i.xp, align 8
  tail call void %i.xq(ptr noundef nonnull align 8 dereferenceable(16) %i.wv) #22, !inline_history !845
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i194

bb.hz:                                            ; preds = %bb.hx
  %i.xr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !834
  %.not.i.i.i.i.i191 = icmp eq i8 %i.xr, 0
  br i1 %.not.i.i.i.i.i191, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.xs = add nsw i32 %i.xj, -1
  store i32 %i.xs, ptr %i.xg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i192

bb.ib:                                            ; preds = %bb.hz
  %i.xt = atomicrmw volatile add ptr %i.xg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i192

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i192: ; preds = %bb.ib, %bb.ia
  %.0.i.i.i.i.i.i193 = phi i32 [ %i.xj, %bb.ia ], [ %i.xt, %bb.ib ]
  %i.xu = icmp eq i32 %.0.i.i.i.i.i.i193, 1
  br i1 %i.xu, label %bb.ic, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i194, !prof !206

bb.ic:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i192
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wv) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i194

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i194: ; preds = %bb.ic, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i192, %bb.hy, %bb.hw
  %i.xv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !754, !noalias !834 ; 4 uses
  %.not.i.i.i1.i.i195 = icmp eq ptr %i.xw, null
  br i1 %.not.i.i.i1.i.i195, label %_ZN5arrow6ScalarD2Ev.exit.i199, label %bb.id

bb.id:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i194
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 12 ; 3 uses
  %i.xy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !834
  %.not.i.i.i.i.i.i196 = icmp eq i8 %i.xy, 0
  br i1 %.not.i.i.i.i.i.i196, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.xz = load i32, ptr %i.xx, align 4, !tbaa !3  ; 2 uses
  %i.ya = add nsw i32 %i.xz, -1
  store i32 %i.ya, ptr %i.xx, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i197

bb.if:                                            ; preds = %bb.id
  %i.yb = atomicrmw volatile add ptr %i.xx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i197

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i197: ; preds = %bb.if, %bb.ie
  %.0.i.i.i.i.i.i.i198 = phi i32 [ %i.xz, %bb.ie ], [ %i.yb, %bb.if ]
  %i.yc = icmp eq i32 %.0.i.i.i.i.i.i.i198, 1
  br i1 %i.yc, label %bb.ig, label %_ZN5arrow6ScalarD2Ev.exit.i199

bb.ig:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i197
  %i.yd = load ptr, ptr %i.xw, align 8, !tbaa !743
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 24
  %i.yf = load ptr, ptr %i.ye, align 8
  tail call void %i.yf(ptr noundef nonnull align 8 dereferenceable(16) %i.xw) #22, !inline_history !846
  br label %_ZN5arrow6ScalarD2Ev.exit.i199

_ZN5arrow6ScalarD2Ev.exit.i199:                   ; preds = %bb.ig, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i197, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !834
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %3, align 8, !tbaa !743, !noalias !834
  %i.yg = load ptr, ptr %i.wq, align 8, !tbaa !739, !noalias !834 ; 8 uses
  %.not.i.i.i8.i200 = icmp eq ptr %i.yg, null
  br i1 %.not.i.i.i8.i200, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i204, label %bb.ih

bb.ih:                                            ; preds = %_ZN5arrow6ScalarD2Ev.exit.i199
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 8 ; 4 uses
  %i.yi = load atomic i64, ptr %i.yh acquire, align 8 ; 2 uses
  %i.yj = icmp eq i64 %i.yi, 4294967297
  %i.yk = trunc i64 %i.yi to i32                  ; 2 uses
  br i1 %i.yj, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  store i32 0, ptr %i.yh, align 8, !tbaa !749
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yg, i64 12
  store i32 0, ptr %i.yl, align 4, !tbaa !751
  %i.ym = load ptr, ptr %i.yg, align 8, !tbaa !743
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 16
  %i.yo = load ptr, ptr %i.yn, align 8
  tail call void %i.yo(ptr noundef nonnull align 8 dereferenceable(16) %i.yg) #22, !inline_history !845
  %i.yp = load ptr, ptr %i.yg, align 8, !tbaa !743
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 24
  %i.yr = load ptr, ptr %i.yq, align 8
  tail call void %i.yr(ptr noundef nonnull align 8 dereferenceable(16) %i.yg) #22, !inline_history !845
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i204

bb.ij:                                            ; preds = %bb.ih
  %i.ys = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !834
  %.not.i.i.i.i9.i201 = icmp eq i8 %i.ys, 0
  br i1 %.not.i.i.i.i9.i201, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.yt = add nsw i32 %i.yk, -1
  store i32 %i.yt, ptr %i.yh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i202

bb.il:                                            ; preds = %bb.ij
  %i.yu = atomicrmw volatile add ptr %i.yh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i202

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i202: ; preds = %bb.il, %bb.ik
  %.0.i.i.i.i.i11.i203 = phi i32 [ %i.yk, %bb.ik ], [ %i.yu, %bb.il ]
  %i.yv = icmp eq i32 %.0.i.i.i.i.i11.i203, 1
  br i1 %i.yv, label %bb.im, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i204, !prof !206

bb.im:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i202
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yg) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i204

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i204: ; preds = %bb.im, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i202, %bb.ii, %_ZN5arrow6ScalarD2Ev.exit.i199
  %i.yw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !754, !noalias !834 ; 4 uses
  %.not.i.i.i1.i13.i205 = icmp eq ptr %i.yx, null
  br i1 %.not.i.i.i1.i13.i205, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt64TypeEmNS_12UInt64ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, label %bb.in

bb.in:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i204
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 12 ; 3 uses
  %i.yz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !834
  %.not.i.i.i.i.i14.i206 = icmp eq i8 %i.yz, 0
  br i1 %.not.i.i.i.i.i14.i206, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.za = load i32, ptr %i.yy, align 4, !tbaa !3  ; 2 uses
  %i.zb = add nsw i32 %i.za, -1
  store i32 %i.zb, ptr %i.yy, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i207

bb.ip:                                            ; preds = %bb.in
  %i.zc = atomicrmw volatile add ptr %i.yy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i207

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i207: ; preds = %bb.ip, %bb.io
  %.0.i.i.i.i.i.i16.i208 = phi i32 [ %i.za, %bb.io ], [ %i.zc, %bb.ip ]
  %i.zd = icmp eq i32 %.0.i.i.i.i.i.i16.i208, 1
  br i1 %i.zd, label %bb.iq, label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt64TypeEmNS_12UInt64ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.iq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i207
  %i.ze = load ptr, ptr %i.yx, align 8, !tbaa !743
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 24
  %i.zg = load ptr, ptr %i.zf, align 8
  tail call void %i.zg(ptr noundef nonnull align 8 dereferenceable(16) %i.yx) #22, !inline_history !846
  br label %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt64TypeEmNS_12UInt64ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit

bb.ir:                                            ; preds = %_ZN5arrow12UInt64ScalarCI2NS_13NumericScalarINS_10UInt64TypeEEEEm.exit.i
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.is:                                            ; preds = %bb.hv
  %i.zi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %4) #22
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %.pn.i187 = phi { ptr, i32 } [ %i.zi, %bb.is ], [ %i.zh, %bb.ir ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !834
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !834
  br label %common.resume

_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt64TypeEmNS_12UInt64ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i12.i204, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15.i207, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !834
  br label %bb.iv

bb.iu:                                            ; preds = %bb.e
  tail call void @_ZN5arrow6Status8FromArgsIJRA38_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(38) @.str)
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt64TypeEmNS_12UInt64ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt32TypeEjNS_12UInt32ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_10UInt16TypeEtNS_12UInt16ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9UInt8TypeEhNS_11UInt8ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int64TypeElNS_11Int64ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int32TypeEiNS_11Int32ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_9Int16TypeEsNS_11Int16ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, %_ZN5arrow8internal12_GLOBAL__N_118IntegersCanFitImplINS_8Int8TypeEaNS_10Int8ScalarEEENS_6StatusERKNS_9ArraySpanERKNS_8DataTypeE.exit, %_ZN5arrow6Status7InvalidIJRA37_KcRKNS_8DataTypeEEEES0_DpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal14IntegersCanFitERKNS_6ScalarERKNS_8DataTypeE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !514
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !260
  %.off.i = add i32 %i.d, -2
  %switch.i = icmp ult i32 %.off.i, 8
  br i1 %switch.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(25) @.str.3)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i8, ptr %i.e, align 8, !tbaa !742, !range !517, !noundef !847
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !848
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.h, align 8, !tbaa !851
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan14FillFromScalarERKNS_6ScalarE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %_ZN5arrow9ArraySpanC2ERKNS_6ScalarE.exit unwind label %bb.f

common.resume:                                    ; preds = %bb.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.w, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #22
  br label %common.resume

_ZN5arrow9ArraySpanC2ERKNS_6ScalarE.exit:         ; preds = %bb.e
  invoke void @_ZN5arrow8internal14IntegersCanFitERKNS_9ArraySpanERKNS_8DataTypeE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN5arrow9ArraySpanC2ERKNS_6ScalarE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !852  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !853  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.g ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !854
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !855

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !852
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.g
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.g ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !856
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #23, !inline_history !857
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.j

end_hunk_0
begin_hunk_1_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE0_clEm:bb.a
  %i.b = load i64, ptr %.8.val, align 8, !tbaa !30
  invoke void @_ZN5arrow8internal7ToCharsImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 noundef %i.b)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !1551
  invoke void @_ZN5arrow8internal12JoinToStringIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA16_S2_SA_RA5_S2_SA_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(15) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(16) @.str.11, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(5) @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.c = load ptr, ptr %2, align 8, !tbaa !307, !noalias !1551 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !7, !noalias !1551
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !307, !noalias !1551 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !7, !noalias !1551
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !1551
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !1551
  %i.n = load ptr, ptr %5, align 8, !tbaa !307    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !7
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.s = load ptr, ptr %4, align 8, !tbaa !307    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !7
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.x = load ptr, ptr %3, align 8, !tbaa !307    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !7
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.g:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.h:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ] ; 2 uses
  %i.af = load ptr, ptr %5, align 8, !tbaa !307   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !7
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %eh.lpad-body, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ak = load ptr, ptr %4, align 8, !tbaa !307   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.an = load i64, ptr %i.al, align 8, !tbaa !7
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ap = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !7
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA37_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(37) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1449, !nonnull !847, !align !864
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(37) %1) #22
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(37) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA37_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA37_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1449, !nonnull !847, !align !864
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZZN5arrow8internal12JoinToStringIJRA37_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA37_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn6
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow10Int8ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(42) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !743
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !739  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !749
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !751
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !206

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !754  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !1557
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5arrow8internal15PrimitiveScalarINS_8Int8TypeEaE4dataEv(ptr noundef nonnull align 8 dereferenceable(42) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow8internal15PrimitiveScalarINS_8Int8TypeEaE4viewEv(ptr noundef nonnull align 8 dereferenceable(42) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  %.fca.1.insert = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !743
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !739  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !749
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !751
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !206

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !754  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !1557
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow11Int16ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !743
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !739  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !749
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !751
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !206

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !754  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !1557
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5arrow8internal15PrimitiveScalarINS_9Int16TypeEsE4dataEv(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 42
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow8internal15PrimitiveScalarINS_9Int16TypeEsE4viewEv(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 42
  %.fca.1.insert = insertvalue { i64, ptr } { i64 2, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev() local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow11Int32ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !743
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !739  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !749
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !751
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !206

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !754  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !1557
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5arrow8internal15PrimitiveScalarINS_9Int32TypeEiE4dataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow8internal15PrimitiveScalarINS_9Int32TypeEiE4viewEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.fca.1.insert = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev() local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow11Int64ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !743
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !739  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !749
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !751
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !206

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !754  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !1557
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5arrow8internal15PrimitiveScalarINS_9Int64TypeElE4dataEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow8internal15PrimitiveScalarINS_9Int64TypeElE4viewEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.fca.1.insert = insertvalue { i64, ptr } { i64 8, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev() local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow11UInt8ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(42) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !743
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !739  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !749
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !751
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !206

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !754  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !1557
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5arrow8internal15PrimitiveScalarINS_9UInt8TypeEhE4dataEv(ptr noundef nonnull align 8 dereferenceable(42) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow8internal15PrimitiveScalarINS_9UInt8TypeEhE4viewEv(ptr noundef nonnull align 8 dereferenceable(42) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  %.fca.1.insert = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5uint8Ev() local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12UInt16ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !743
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !739  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !749
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !751
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !206

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !754  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !1557
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5arrow8internal15PrimitiveScalarINS_10UInt16TypeEtE4dataEv(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 42
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow8internal15PrimitiveScalarINS_10UInt16TypeEtE4viewEv(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 42
  %.fca.1.insert = insertvalue { i64, ptr } { i64 2, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint16Ev() local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12UInt32ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !743
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !739  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !749
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !751
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !206

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !754  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !1557
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5arrow8internal15PrimitiveScalarINS_10UInt32TypeEjE4dataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow8internal15PrimitiveScalarINS_10UInt32TypeEjE4viewEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.fca.1.insert = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint32Ev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !743
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !739  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !749
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !751
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1558
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1558
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !206

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !754  ; 4 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !1559
  br label %_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit

_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12UInt64ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !743
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !739  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !749
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !751
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1556
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !206

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !754  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !743
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !1557
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5arrow8internal15PrimitiveScalarINS_10UInt64TypeEmE4dataEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow8internal15PrimitiveScalarINS_10UInt64TypeEmE4viewEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.fca.1.insert = insertvalue { i64, ptr } { i64 8, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(25) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !1560
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1560
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1449, !noalias !1560, !nonnull !847, !align !864
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %2) #22, !noalias !1560
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(25) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1560 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1560
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1560
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !307    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !7
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !307    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !7
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
