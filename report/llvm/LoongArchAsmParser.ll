Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchAsmParser?download=true
inline.NumInlined: 2436
inline.NumDeleted: 708
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_118LoongArchAsmParser26convertToMapAndConstraintsEjRKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEE:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %.047, ptr %i.ae, align 8, !tbaa !47
  tail call void @_ZN4llvm18MCParsedAsmOperand13setConstraintENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr nonnull @.str.85, i64 1)
  br label %bb.l

bb.i:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !28
  %i.ah = zext i8 %i.ag to i64
  %i.ai = load ptr, ptr %2, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %.047, ptr %i.al, align 8, !tbaa !47
  tail call void @_ZN4llvm18MCParsedAsmOperand13setConstraintENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr nonnull @.str.85, i64 1)
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !28
  %i.ao = zext i8 %i.an to i64
  %i.ap = load ptr, ptr %2, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %.047, ptr %i.as, align 8, !tbaa !47
  tail call void @_ZN4llvm18MCParsedAsmOperand13setConstraintENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr nonnull @.str.76, i64 0)
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !28
  %i.av = zext i8 %i.au to i64
  %i.aw = load ptr, ptr %2, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %.047, ptr %i.az, align 8, !tbaa !47
  tail call void @_ZN4llvm18MCParsedAsmOperand13setConstraintENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr nonnull @.str.85, i64 1)
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.1 = add i32 %.047, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0, i64 2
  br label %bb.b, !llvm.loop !252
}

declare noundef zeroext i1 @_ZNK4llvm17MCTargetAsmParser12areEqualRegsERKNS_18MCParsedAsmOperandES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm17MCTargetAsmParser20equalIsAsmAssignmentEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm17MCTargetAsmParser7isLabelERNS_8AsmTokenE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm17MCTargetAsmParser23tokenIsStartOfStatementENS_8AsmToken9TokenKindE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm17MCTargetAsmParser14applySpecifierEPKNS_6MCExprEjRNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(2208) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17MCTargetAsmParser17doBeforeLabelEmitEPNS_8MCSymbolENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17MCTargetAsmParser13onLabelParsedEPNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17MCTargetAsmParser24flushPendingInstructionsERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17MCTargetAsmParser13onBeginOfFileEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17MCTargetAsmParser11onEndOfFileEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @_ZN4llvm17MCTargetAsmParserD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm27getLoongArchMCRegisterClassEj(i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243), ptr, ptr noundef nonnull align 8 dereferenceable(34), ptr, ptr) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243)) local_unnamed_addr #2

declare ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare ptr @_ZNK4llvm8AsmToken9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZL23matchRegisterNameHelperRN4llvm10MCRegisterENS_9StringRefE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #11 {
bb.a:
  switch i64 %2, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread [
    i64 2, label %bb.b
    i64 3, label %bb.e
    i64 4, label %bb.r
    i64 5, label %bb.ag
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !28
  switch i8 %i.a, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread [
    i8 102, label %bb.c
    i8 114, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !28    ; 2 uses
  %switch.tableidx.i = add i8 %i.c, -48
  %i.d = icmp ult i8 %switch.tableidx.i, 10
  br i1 %i.d, label %switch.lookup.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !28    ; 2 uses
  %switch.tableidx56.i = add i8 %i.f, -48
  %i.g = icmp ult i8 %switch.tableidx56.i, 10
  br i1 %i.g, label %switch.lookup57.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.h = load i8, ptr %1, align 1, !tbaa !28
  switch i8 %i.h, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread [
    i8 102, label %bb.f
    i8 114, label %bb.j
    i8 118, label %bb.n
    i8 120, label %bb.p
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !28
  switch i8 %i.j, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread [
    i8 49, label %bb.g
    i8 50, label %bb.h
    i8 51, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28    ; 2 uses
  %switch.tableidx60.i = add i8 %i.l, -48
  %i.m = icmp ult i8 %switch.tableidx60.i, 10
  br i1 %i.m, label %switch.lookup61.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !28    ; 2 uses
  %switch.tableidx64.i = add i8 %i.o, -48
  %i.p = icmp ult i8 %switch.tableidx64.i, 10
  br i1 %i.p, label %switch.lookup65.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28    ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.r, 49
  %switch.select.i = select i1 %switch.selectcmp.i, i32 32, i32 0
  %switch.selectcmp42.i = icmp eq i8 %i.r, 48
  br i1 %switch.selectcmp42.i, label %.sink.split, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

bb.j:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28
  switch i8 %i.t, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread [
    i8 49, label %bb.k
    i8 50, label %bb.l
    i8 51, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28    ; 2 uses
  %switch.tableidx68.i = add i8 %i.v, -48
  %i.w = icmp ult i8 %switch.tableidx68.i, 10
  br i1 %i.w, label %switch.lookup69.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !28    ; 2 uses
  %switch.tableidx72.i = add i8 %i.y, -48
  %i.z = icmp ult i8 %switch.tableidx72.i, 10
  br i1 %i.z, label %switch.lookup73.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !28  ; 2 uses
  %switch.selectcmp44.i = icmp eq i8 %i.ab, 49
  %switch.select45.i = select i1 %switch.selectcmp44.i, i32 76, i32 0
  %switch.selectcmp46.i = icmp eq i8 %i.ab, 48
  br i1 %switch.selectcmp46.i, label %.sink.split, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

bb.n:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !28
  %.not8.i = icmp eq i8 %i.ad, 114
  br i1 %.not8.i, label %bb.o, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !28  ; 2 uses
  %switch.tableidx76.i = add i8 %i.af, -48
  %i.ag = icmp ult i8 %switch.tableidx76.i, 10
  br i1 %i.ag, label %switch.lookup77.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.p:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !28
  %.not7.i = icmp eq i8 %i.ai, 114
  br i1 %.not7.i, label %bb.q, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28  ; 2 uses
  %switch.tableidx80.i = add i8 %i.ak, -48
  %i.al = icmp ult i8 %switch.tableidx80.i, 10
  br i1 %i.al, label %switch.lookup81.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.r:                                             ; preds = %bb.a
  %i.am = load i8, ptr %1, align 1, !tbaa !28
  switch i8 %i.am, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread [
    i8 102, label %bb.s
    i8 115, label %bb.u
    i8 118, label %bb.w
    i8 120, label %bb.ab
  ]

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ao = load i16, ptr %i.an, align 1
  %i.ap = icmp ne i16 %i.ao, 25443
  %i.aq = zext i1 %i.ap to i32
  %.not6.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i, label %bb.t, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !28  ; 2 uses
  %i.at = and i8 %i.as, -8
  %i.au = icmp eq i8 %i.at, 48
  br i1 %i.au, label %switch.lookup85.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.u:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = icmp ne i16 %i.aw, 29283
  %i.ay = zext i1 %i.ax to i32
  %.not4.i = icmp eq i32 %i.ay, 0
  br i1 %.not4.i, label %bb.v, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28  ; 2 uses
  %i.bb = and i8 %i.ba, -4
  %i.bc = icmp eq i8 %i.bb, 48
  br i1 %i.bc, label %switch.lookup89.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.w:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !28
  %.not2.i = icmp eq i8 %i.be, 114
  br i1 %.not2.i, label %bb.x, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !28
  switch i8 %i.bg, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread [
    i8 49, label %bb.y
    i8 50, label %bb.z
    i8 51, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !28  ; 2 uses
  %switch.tableidx92.i = add i8 %i.bi, -48
  %i.bj = icmp ult i8 %switch.tableidx92.i, 10
  br i1 %i.bj, label %switch.lookup93.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !28  ; 2 uses
  %switch.tableidx96.i = add i8 %i.bl, -48
  %i.bm = icmp ult i8 %switch.tableidx96.i, 10
  br i1 %i.bm, label %switch.lookup97.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.aa:                                            ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !28  ; 2 uses
  %switch.selectcmp48.i = icmp eq i8 %i.bo, 49
  %switch.select49.i = select i1 %switch.selectcmp48.i, i32 112, i32 0
  %switch.selectcmp50.i = icmp eq i8 %i.bo, 48
  br i1 %switch.selectcmp50.i, label %.sink.split, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

bb.ab:                                            ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !28
  %.not1.i = icmp eq i8 %i.bq, 114
  br i1 %.not1.i, label %bb.ac, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !28
  switch i8 %i.bs, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread [
    i8 49, label %bb.ad
    i8 50, label %bb.ae
    i8 51, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !28  ; 2 uses
  %switch.tableidx100.i = add i8 %i.bu, -48
  %i.bv = icmp ult i8 %switch.tableidx100.i, 10
  br i1 %i.bv, label %switch.lookup101.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.ae:                                            ; preds = %bb.ac
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !28  ; 2 uses
  %switch.tableidx104.i = add i8 %i.bx, -48
  %i.by = icmp ult i8 %switch.tableidx104.i, 10
  br i1 %i.by, label %switch.lookup105.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.af:                                            ; preds = %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !28  ; 2 uses
  %switch.selectcmp52.i = icmp eq i8 %i.ca, 49
  %switch.select53.i = select i1 %switch.selectcmp52.i, i32 144, i32 0
  %switch.selectcmp54.i = icmp eq i8 %i.ca, 48
  br i1 %switch.selectcmp54.i, label %.sink.split, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

bb.ag:                                            ; preds = %bb.a
  %i.cb = load i32, ptr %1, align 1
  %i.cc = icmp ne i32 %i.cb, 1920164710
  %i.cd = zext i1 %i.cc to i32
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %bb.ah, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !28  ; 2 uses
  %i.cg = and i8 %i.cf, -4
  %i.ch = icmp eq i8 %i.cg, 48
  br i1 %i.ch, label %switch.lookup109.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread

switch.lookup.i:                                  ; preds = %bb.c
  %narrow125.i = add nsw i8 %i.c, -47
  br label %.sink.split

switch.lookup57.i:                                ; preds = %bb.d
  %narrow124.i = add nsw i8 %i.f, -3
  br label %.sink.split

switch.lookup61.i:                                ; preds = %bb.g
  %narrow123.i = add nsw i8 %i.l, -37
  br label %.sink.split

switch.lookup65.i:                                ; preds = %bb.h
  %narrow122.i = add nsw i8 %i.o, -27
  br label %.sink.split

switch.lookup69.i:                                ; preds = %bb.k
  %narrow121.i = add nuw nsw i8 %i.v, 7
  br label %.sink.split

switch.lookup73.i:                                ; preds = %bb.l
  %narrow120.i = add nuw nsw i8 %i.y, 17
  br label %.sink.split

switch.lookup77.i:                                ; preds = %bb.o
  %narrow119.i = add nuw nsw i8 %i.af, 33
  br label %.sink.split

switch.lookup81.i:                                ; preds = %bb.q
  %narrow118.i = add nuw nsw i8 %i.ak, 65
  br label %.sink.split

switch.lookup85.i:                                ; preds = %bb.t
  %narrow117.i = add nsw i8 %i.as, -15
  br label %.sink.split

switch.lookup89.i:                                ; preds = %bb.v
  %narrow116.i = add nuw nsw i8 %i.ba, 29
  br label %.sink.split

switch.lookup93.i:                                ; preds = %bb.y
  %narrow115.i = add nuw nsw i8 %i.bi, 43
  br label %.sink.split

switch.lookup97.i:                                ; preds = %bb.z
  %narrow114.i = add nuw nsw i8 %i.bl, 53
  br label %.sink.split

switch.lookup101.i:                               ; preds = %bb.ad
  %narrow113.i = add nuw i8 %i.bu, 75
  br label %.sink.split

switch.lookup105.i:                               ; preds = %bb.ae
  %narrow112.i = add nuw i8 %i.bx, 85
  br label %.sink.split

switch.lookup109.i:                               ; preds = %bb.ah
  %narrow.i = add nsw i8 %i.cf, -7
  br label %.sink.split

_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread: ; preds = %bb.ah, %bb.ae, %bb.ad, %bb.z, %bb.y, %bb.v, %bb.t, %bb.q, %bb.o, %bb.l, %bb.k, %bb.h, %bb.g, %bb.d, %bb.c, %bb.ag, %bb.r, %bb.s, %bb.u, %bb.w, %bb.x, %bb.ab, %bb.ac, %bb.e, %bb.f, %bb.j, %bb.n, %bb.p, %bb.b, %bb.a
  store i32 0, ptr %0, align 4, !tbaa !30
  br label %bb.ai

_ZL17MatchRegisterNameN4llvm9StringRefE.exit:     ; preds = %bb.m, %bb.i, %bb.aa, %bb.af
  %.sroa.041.0.i = phi i32 [ %switch.select49.i, %bb.aa ], [ %switch.select.i, %bb.i ], [ %switch.select53.i, %bb.af ], [ %switch.select45.i, %bb.m ] ; 2 uses
  store i32 %.sroa.041.0.i, ptr %0, align 4, !tbaa !30
  %i.ci = icmp eq i32 %.sroa.041.0.i, 0
  br i1 %i.ci, label %bb.ai, label %bb.az

bb.ai:                                            ; preds = %_ZL17MatchRegisterNameN4llvm9StringRefE.exit.thread, %_ZL17MatchRegisterNameN4llvm9StringRefE.exit
  switch i64 %2, label %bb.ay [
    i64 2, label %bb.aj
    i64 3, label %bb.ap
    i64 4, label %bb.au
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.cj = load i8, ptr %1, align 1, !tbaa !28
  switch i8 %i.cj, label %bb.ay [
    i8 97, label %bb.ak
    i8 102, label %bb.al
    i8 114, label %bb.am
    i8 115, label %bb.an
    i8 116, label %bb.ao
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !28  ; 2 uses
  %i.cm = and i8 %i.cl, -8
  %i.cn = icmp eq i8 %i.cm, 48
  br i1 %i.cn, label %switch.lookup.i15, label %bb.ay

bb.al:                                            ; preds = %bb.aj
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !28
  %.not5.i = icmp eq i8 %i.cp, 112
  br i1 %.not5.i, label %.sink.split, label %bb.ay

bb.am:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !28
  %.not4.i14 = icmp eq i8 %i.cr, 97
  br i1 %.not4.i14, label %.sink.split, label %bb.ay

bb.an:                                            ; preds = %bb.aj
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !28
  %switch.tableidx = add i8 %i.ct, -48            ; 2 uses
  %i.cu = icmp ult i8 %switch.tableidx, 65
  br i1 %i.cu, label %switch.lookup, label %bb.ay

bb.ao:                                            ; preds = %bb.aj
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !28
  %switch.tableidx23 = add i8 %i.cw, -48          ; 2 uses
  %i.cx = icmp ult i8 %switch.tableidx23, 65
  br i1 %i.cx, label %switch.lookup24, label %bb.ay

bb.ap:                                            ; preds = %bb.ai
  %i.cy = load i8, ptr %1, align 1, !tbaa !28
  %.not3.i = icmp eq i8 %i.cy, 102
  br i1 %.not3.i, label %bb.aq, label %bb.ay

bb.aq:                                            ; preds = %bb.ap
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !28
  switch i8 %i.da, label %bb.ay [
    i8 97, label %bb.ar
    i8 115, label %bb.as
    i8 116, label %bb.at
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !28  ; 2 uses
  %i.dd = and i8 %i.dc, -8
  %i.de = icmp eq i8 %i.dd, 48
  br i1 %i.de, label %switch.lookup22.i, label %bb.ay

bb.as:                                            ; preds = %bb.aq
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !28  ; 2 uses
  %i.dh = and i8 %i.dg, -8
  %i.di = icmp eq i8 %i.dh, 48
  br i1 %i.di, label %switch.lookup26.i, label %bb.ay

bb.at:                                            ; preds = %bb.aq
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !28  ; 2 uses
  %switch.tableidx29.i = add i8 %i.dk, -48
  %i.dl = icmp ult i8 %switch.tableidx29.i, 10
  br i1 %i.dl, label %switch.lookup30.i, label %bb.ay

bb.au:                                            ; preds = %bb.ai
  %i.dm = load i8, ptr %1, align 1, !tbaa !28
  switch i8 %i.dm, label %bb.ay [
    i8 102, label %bb.av
    i8 122, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.do = load i16, ptr %i.dn, align 1
  %i.dp = icmp ne i16 %i.do, 12660
  %i.dq = zext i1 %i.dp to i32
  %.not2.i12 = icmp eq i32 %i.dq, 0
  br i1 %.not2.i12, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !28  ; 2 uses
  %switch.tableidx33.i = add i8 %i.ds, -48
  %i.dt = icmp ult i8 %switch.tableidx33.i, 6
  br i1 %i.dt, label %switch.lookup34.i, label %bb.ay

bb.ax:                                            ; preds = %bb.au
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.dv = load i16, ptr %i.du, align 1
  %i.dw = xor i16 %i.dv, 29285
  %i.dx = getelementptr i8, ptr %i.du, i64 2
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = zext i8 %i.dy to i16
  %i.ea = xor i16 %i.dz, 111
  %i.eb = or i16 %i.dw, %i.ea
  %i.ec = icmp ne i16 %i.eb, 0
  %i.ed = zext i1 %i.ec to i32
  %.not.i11 = icmp eq i32 %i.ed, 0
  br i1 %.not.i11, label %.sink.split, label %bb.ay

bb.ay:                                            ; preds = %bb.ao, %bb.an, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  br label %.sink.split

switch.lookup.i15:                                ; preds = %bb.ak
  %narrow40.i = add nuw nsw i8 %i.cl, 1
  br label %.sink.split

switch.lookup22.i:                                ; preds = %bb.ar
  %narrow39.i = add nsw i8 %i.dc, -47
  br label %.sink.split

switch.lookup26.i:                                ; preds = %bb.as
  %narrow38.i = add nsw i8 %i.dg, -23
  br label %.sink.split

switch.lookup30.i:                                ; preds = %bb.at
  %narrow37.i = add nsw i8 %i.dk, -39
  br label %.sink.split

switch.lookup34.i:                                ; preds = %bb.aw
  %narrow.i13 = add nsw i8 %i.ds, -29
  br label %.sink.split

switch.lookup:                                    ; preds = %bb.an
  %i.ee = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL23matchRegisterNameHelperRN4llvm10MCRegisterENS_9StringRefE, i64 %i.ee
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.sink.split

switch.lookup24:                                  ; preds = %bb.ao
  %i.ef = zext nneg i8 %switch.tableidx23 to i64
  %switch.gep25 = getelementptr inbounds nuw i8, ptr @switch.table._ZL23matchRegisterNameHelperRN4llvm10MCRegisterENS_9StringRefE.83, i64 %i.ef
  %switch.load26 = load i8, ptr %switch.gep25, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup24, %switch.lookup, %switch.lookup34.i, %switch.lookup30.i, %switch.lookup26.i, %switch.lookup22.i, %switch.lookup.i15, %bb.ay, %bb.ax, %bb.am, %bb.al, %bb.m, %bb.i, %bb.aa, %bb.af, %switch.lookup77.i, %switch.lookup57.i, %switch.lookup69.i, %switch.lookup101.i, %switch.lookup61.i, %switch.lookup109.i, %switch.lookup.i, %switch.lookup65.i, %switch.lookup97.i, %switch.lookup93.i, %switch.lookup89.i, %switch.lookup73.i, %switch.lookup105.i, %switch.lookup81.i, %switch.lookup85.i
  %.sroa.041.0.i.ph.shrunk.sink = phi i8 [ 75, %bb.m ], [ -113, %bb.af ], [ %narrow117.i, %switch.lookup85.i ], [ 31, %bb.i ], [ 111, %bb.aa ], [ %narrow119.i, %switch.lookup77.i ], [ %narrow124.i, %switch.lookup57.i ], [ %narrow121.i, %switch.lookup69.i ], [ %narrow113.i, %switch.lookup101.i ], [ %narrow123.i, %switch.lookup61.i ], [ %narrow.i, %switch.lookup109.i ], [ %narrow125.i, %switch.lookup.i ], [ %narrow122.i, %switch.lookup65.i ], [ %narrow114.i, %switch.lookup97.i ], [ %narrow115.i, %switch.lookup93.i ], [ %narrow116.i, %switch.lookup89.i ], [ %narrow120.i, %switch.lookup73.i ], [ %narrow112.i, %switch.lookup105.i ], [ %narrow118.i, %switch.lookup81.i ], [ 0, %bb.ay ], [ %narrow.i13, %switch.lookup34.i ], [ 45, %bb.ax ], [ %switch.load, %switch.lookup ], [ 46, %bb.am ], [ %switch.load26, %switch.lookup24 ], [ %narrow38.i, %switch.lookup26.i ], [ %narrow39.i, %switch.lookup22.i ], [ %narrow37.i, %switch.lookup30.i ], [ %narrow40.i, %switch.lookup.i15 ], [ 67, %bb.al ] ; 2 uses
  %.sroa.041.0.i.ph.a = zext i8 %.sroa.041.0.i.ph.shrunk.sink to i32
  store i32 %.sroa.041.0.i.ph.a, ptr %0, align 4, !tbaa !30
  %i.eg = icmp eq i8 %.sroa.041.0.i.ph.shrunk.sink, 0
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %_ZL17MatchRegisterNameN4llvm9StringRefE.exit
  %3 = phi i1 [ false, %_ZL17MatchRegisterNameN4llvm9StringRefE.exit ], [ %i.eg, %.sink.split ]
  ret i1 %3
}

declare noundef zeroext i1 @_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE(ptr noundef nonnull align 8 dereferenceable(243), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118LoongArchAsmParser12parseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEENS1_9StringRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %i.d = add i32 %i.c, -1
  br label %bb.b

bb.b:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.thread15.i.i.i, %bb.a
  %.01322.i.i.i = phi i64 [ 90, %bb.a ], [ %.2.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.thread15.i.i.i ] ; 3 uses
  %.021.i.i.i = phi ptr [ @_ZL17OperandMatchTable, %bb.a ], [ %.1.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.thread15.i.i.i ] ; 5 uses
  %i.e = lshr i64 %.01322.i.i.i, 1                ; 6 uses
  %.idx55 = mul nuw nsw i64 %i.e, 6               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.021.i.i.i, i64 %.idx55 ; 3 uses
  %.val.i.i.i = load i16, ptr %i.f, align 2, !tbaa !264
  %i.g = zext i16 %.val.i.i.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_ZL13MnemonicTable, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !28
  %i.j = sext i8 %i.i to i64                      ; 4 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.j) ; 3 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %.thread.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.m = tail call i32 @memcmp(ptr noundef nonnull %i.l, ptr noundef readonly %2, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #24
  %.fr.i.i.i.i.i.i.i = freeze i32 %i.m            ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.thread.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.b
  %i.n = icmp ugt i64 %3, %i.j
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i.i, label %.thread.i.i.i.i34.i.i.i

.thread.i.i.i.i.thread.i.i.i:                     ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.o = icmp ugt i64 %3, %i.j
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i28.i.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.p = icmp slt i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i28.i.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i, %.thread.i.i.i.i.thread.i.i.i, %.thread.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.r = xor i64 %i.e, -1
  %i.s = add nsw i64 %.01322.i.i.i, %i.r
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.thread15.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i28.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i, %.thread.i.i.i.i.thread.i.i.i
  %i.t = tail call i32 @memcmp(ptr noundef readonly %2, ptr noundef nonnull %i.l, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #24
  %.fr.i.i.i.i29.i.i.i = freeze i32 %i.t          ; 2 uses
  %.not.not.i.i.i.i30.i.i.i = icmp eq i32 %.fr.i.i.i.i29.i.i.i, 0
  br i1 %.not.not.i.i.i.i30.i.i.i, label %.thread.i.i.i.i34.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i

.thread.i.i.i.i34.i.i.i:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i28.i.i.i, %.thread.i.i.i.i.i.i.i
  %i.u = icmp ult i64 %3, %i.j
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.thread15.i.i.i, label %.critedge.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i28.i.i.i
  %i.v = icmp slt i32 %.fr.i.i.i.i29.i.i.i, 0
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.thread15.i.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i, %.thread.i.i.i.i34.i.i.i
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZSt13__lower_boundIPKN12_GLOBAL__N_117OperandMatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_17LessOpcodeOperandEEEET_SB_SB_RKT0_T1_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i
  %.04.i.i.i.i = phi i64 [ %.1.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i ], [ %i.e, %.critedge.i.i.i ] ; 2 uses
  %.0113.i.i.i.i = phi ptr [ %.112.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i ], [ %.021.i.i.i, %.critedge.i.i.i ] ; 2 uses
  %i.w = lshr i64 %.04.i.i.i.i, 1                 ; 3 uses
  %i.x = getelementptr inbounds nuw [6 x i8], ptr %.0113.i.i.i.i, i64 %i.w ; 2 uses
  %.val.i.i.i.i = load i16, ptr %i.x, align 2, !tbaa !264
  %i.y = zext i16 %.val.i.i.i.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZL13MnemonicTable, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !28
  %i.ab = sext i8 %i.aa to i64                    ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.ab) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %.thread.i.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ae = tail call i32 @memcmp(ptr noundef nonnull %i.ad, ptr noundef readonly %2, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #24
  %.fr.i.i.i.i.i.i.i.i = freeze i32 %i.ae         ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i, 0
  %.inv.i.i.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.af = icmp eq i64 %3, %i.ab
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.ag = icmp ugt i64 %3, %i.ab
  %i.ah = select i1 %i.ag, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i: ; preds = %bb.c, %.thread.i.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %i.ah, %bb.c ], [ 0, %.thread.i.i.i.i.i.i.i.i ]
  %i.ai = icmp slt i32 %.1.i.i.i.i.i.i.i.i, 0     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.ak = xor i64 %i.w, -1
  %i.al = add nsw i64 %.04.i.i.i.i, %i.ak
  %.112.i.i.i.i = select i1 %i.ai, ptr %i.aj, ptr %.0113.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.ai, i64 %i.al, i64 %i.w ; 2 uses
  %i.am = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.am, label %.lr.ph.i.i.i.i, label %_ZSt13__lower_boundIPKN12_GLOBAL__N_117OperandMatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_17LessOpcodeOperandEEEET_SB_SB_RKT0_T1_.exit.i.i.i, !llvm.loop !253

_ZSt13__lower_boundIPKN12_GLOBAL__N_117OperandMatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_17LessOpcodeOperandEEEET_SB_SB_RKT0_T1_.exit.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i, %.critedge.i.i.i
  %.011.lcssa.i.i.i.i = phi ptr [ %.021.i.i.i, %.critedge.i.i.i ], [ %.112.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i ] ; 2 uses
  %.idx = mul nuw nsw i64 %.01322.i.i.i, 6
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 6 ; 2 uses
  %i.ao = add nuw nsw i64 %.idx55, 6
  %gepdiff = sub nsw i64 %.idx, %i.ao             ; 2 uses
  %i.ap = icmp sgt i64 %gepdiff, 0
  br i1 %i.ap, label %.lr.ph.preheader.i38.i.i.i, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_117OperandMatchEntryEN4llvm9StringRefENS0_17LessOpcodeOperandEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.i

.lr.ph.preheader.i38.i.i.i:                       ; preds = %_ZSt13__lower_boundIPKN12_GLOBAL__N_117OperandMatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_17LessOpcodeOperandEEEET_SB_SB_RKT0_T1_.exit.i.i.i
  %i.aq = udiv exact i64 %gepdiff, 6
  br label %.lr.ph.i39.i.i.i

.lr.ph.i39.i.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i.i, %.lr.ph.preheader.i38.i.i.i
  %.04.i40.i.i.i = phi i64 [ %.1.i52.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i.i ], [ %i.aq, %.lr.ph.preheader.i38.i.i.i ] ; 2 uses
  %.0113.i41.i.i.i = phi ptr [ %.112.i51.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i.i ], [ %i.an, %.lr.ph.preheader.i38.i.i.i ] ; 2 uses
  %i.ar = lshr i64 %.04.i40.i.i.i, 1              ; 3 uses
  %i.as = getelementptr inbounds nuw [6 x i8], ptr %.0113.i41.i.i.i, i64 %i.ar ; 2 uses
  %.val14.i.i.i.i = load i16, ptr %i.as, align 2, !tbaa !264
  %i.at = zext i16 %.val14.i.i.i.i to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZL13MnemonicTable, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !28
  %i.aw = sext i8 %i.av to i64                    ; 3 uses
  %.sroa.speculated.i.i.i.i.i44.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %3) ; 2 uses
  %i.ax = icmp eq i64 %.sroa.speculated.i.i.i.i.i44.i.i.i, 0
  br i1 %i.ax, label %.thread.i.i.i.i.i53.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i.i: ; preds = %.lr.ph.i39.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.az = tail call i32 @memcmp(ptr noundef readonly %2, ptr noundef nonnull %i.ay, i64 noundef %.sroa.speculated.i.i.i.i.i44.i.i.i) #24
  %.fr.i.i.i.i.i46.i.i.i = freeze i32 %i.az       ; 2 uses
  %.not.not.i.i.i.i.i47.i.i.i = icmp eq i32 %.fr.i.i.i.i.i46.i.i.i, 0
  %.inv.i.i.i.i.i48.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i46.i.i.i, -1
  %spec.select.i.i.i.i.i49.i.i.i = select i1 %.inv.i.i.i.i.i48.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i47.i.i.i, label %.thread.i.i.i.i.i53.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i.i

.thread.i.i.i.i.i53.i.i.i:                        ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i.i, %.lr.ph.i39.i.i.i
  %i.ba = icmp eq i64 %3, %i.aw
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.thread.i.i.i.i.i53.i.i.i
  %i.bb = icmp ult i64 %3, %i.aw
  %i.bc = select i1 %i.bb, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i.i: ; preds = %bb.d, %.thread.i.i.i.i.i53.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i.i
  %.1.i.i.i.i.i50.i.i.i = phi i32 [ %spec.select.i.i.i.i.i49.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i.i ], [ %i.bc, %bb.d ], [ 0, %.thread.i.i.i.i.i53.i.i.i ]
  %i.bd = icmp slt i32 %.1.i.i.i.i.i50.i.i.i, 0   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  %i.bf = xor i64 %i.ar, -1
  %i.bg = add nsw i64 %.04.i40.i.i.i, %i.bf
  %.112.i51.i.i.i = select i1 %i.bd, ptr %.0113.i41.i.i.i, ptr %i.be ; 2 uses
  %.1.i52.i.i.i = select i1 %i.bd, i64 %i.ar, i64 %i.bg ; 2 uses
  %i.bh = icmp sgt i64 %.1.i52.i.i.i, 0
  br i1 %i.bh, label %.lr.ph.i39.i.i.i, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_117OperandMatchEntryEN4llvm9StringRefENS0_17LessOpcodeOperandEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.i, !llvm.loop !254

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.thread15.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i, %.thread.i.i.i.i34.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i.i
  %.1.i.i.i = phi ptr [ %i.q, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i.i ], [ %.021.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i ], [ %.021.i.i.i, %.thread.i.i.i.i34.i.i.i ]
  %.2.i.i.i = phi i64 [ %i.s, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_117LessOpcodeOperandEEclIPKNS2_17OperandMatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i.i ], [ %i.e, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i ], [ %i.e, %.thread.i.i.i.i34.i.i.i ] ; 2 uses
  %i.bi = icmp sgt i64 %.2.i.i.i, 0
  br i1 %i.bi, label %bb.b, label %.thread, !llvm.loop !255

_ZSt11equal_rangeIPKN12_GLOBAL__N_117OperandMatchEntryEN4llvm9StringRefENS0_17LessOpcodeOperandEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i.i, %_ZSt13__lower_boundIPKN12_GLOBAL__N_117OperandMatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_17LessOpcodeOperandEEEET_SB_SB_RKT0_T1_.exit.i.i.i
  %.sroa.3.0.i.i.i = phi ptr [ %i.an, %_ZSt13__lower_boundIPKN12_GLOBAL__N_117OperandMatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_17LessOpcodeOperandEEEET_SB_SB_RKT0_T1_.exit.i.i.i ], [ %.112.i51.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_117LessOpcodeOperandEEclIKN4llvm9StringRefEPKNS2_17OperandMatchEntryEEEbRT_T0_.exit.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq ptr %.011.lcssa.i.i.i.i, %.sroa.3.0.i.i.i
  br i1 %i.bj, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %_ZSt11equal_rangeIPKN12_GLOBAL__N_117OperandMatchEntryEN4llvm9StringRefENS0_17LessOpcodeOperandEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.i
  %i.bk = shl nuw i32 1, %i.d
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN12_GLOBAL__N_118LoongArchAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEEj.exit.thread36.i, %.preheader.i
  %.053.i = phi ptr [ %.011.lcssa.i.i.i.i, %.preheader.i ], [ %i.eq, %_ZN12_GLOBAL__N_118LoongArchAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEEj.exit.thread36.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.053.i, i64 2
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !265
end_hunk_0
