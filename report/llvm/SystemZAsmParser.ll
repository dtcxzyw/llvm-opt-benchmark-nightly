Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SystemZAsmParser?download=true
inline.NumInlined: 2019
inline.NumDeleted: 668
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_116SystemZAsmParser7isLabelERN4llvm8AsmTokenE:bb.a
  switch i8 %i.u, label %bb.g [
    i8 95, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.preheader
    i8 64, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.preheader
    i8 36, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.preheader
    i8 35, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.preheader
    i8 0, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.preheader
  ]

bb.g:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.z, align 1, !tbaa !255
  store ptr @.str.212, ptr %4, align 8, !tbaa !240
  store i8 3, ptr %i.y, align 8, !tbaa !256
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.ac = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.ab, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr null, ptr null) #19
  %i.ad = xor i1 %i.ac, true
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.preheader, %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit.thread ], [ 1, %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !240 ; 3 uses
  %i.ag = and i8 %i.af, -33
  %i.ah = add i8 %i.ag, -65
  %i.ai = icmp ult i8 %i.ah, 26
  br i1 %i.ai, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit.thread, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.i

_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.i: ; preds = %.lr.ph
  switch i8 %i.af, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit [
    i8 95, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit.thread
    i8 64, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit.thread
    i8 36, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit.thread
    i8 35, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit.thread
    i8 0, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit.thread
  ]

_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit: ; preds = %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.i
  %i.aj = add i8 %i.af, -48
  %i.ak = icmp ult i8 %i.aj, 10
  br i1 %i.ak, label %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.am, align 1, !tbaa !255
  store ptr @.str.213, ptr %5, align 8, !tbaa !240
  store i8 3, ptr %i.al, align 8, !tbaa !256
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !23
  %i.ap = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.ao, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, ptr null) #19
  %i.aq = xor i1 %i.ap, true
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.loopexit

_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit.thread: ; preds = %.lr.ph, %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.i, %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.i, %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.i, %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.i, %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.i, %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %.not14.not = icmp ugt i64 %.sroa.2.0.copyload.i, %indvars.iv.next
  br i1 %.not14.not, label %.lr.ph, label %.loopexit, !llvm.loop !383

.loopexit:                                        ; preds = %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit.thread, %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.preheader, %bb.h, %bb.c, %bb.e, %bb.g, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ %i.t, %bb.e ], [ %i.m, %bb.c ], [ %i.ad, %bb.g ], [ %i.aq, %bb.h ], [ true, %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlphaEc.exit.preheader ], [ true, %_ZN12_GLOBAL__N_116SystemZAsmParser12isHLASMAlnumEc.exit.thread ]
  ret i1 %.2
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
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @_ZN4llvm17MCTargetAsmParserD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116SystemZAsmParser13parseRegisterERNS0_8RegisterEbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((8, 16)) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44, !nonnull !257, !align !258
  %i.d = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #19 ; 8 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !252
  %i.f = icmp eq i32 %i.e, 37                     ; 6 uses
  %i.g = tail call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #19
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !29
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.d, align 8, !tbaa !252
  %.not = icmp eq i32 %i.i, 37
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !255
  store ptr @.str.2, ptr %4, align 8, !tbaa !240
  store i8 3, ptr %i.k, align 8, !tbaa !256
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.o = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.n, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr null, ptr null) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ac

bb.d:                                             ; preds = %bb.b, %bb.a
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !44, !nonnull !257, !align !258 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(243) %i.p) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !44, !nonnull !257, !align !258
  %i.v = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.u) #19
  %i.w = load i32, ptr %i.v, align 8, !tbaa !252
  %.not68 = icmp eq i32 %i.w, 2
  br i1 %.not68, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %or.cond = and i1 %3, %i.f
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ab = tail call noundef ptr @_ZN4llvm15SmallVectorImplINS_8AsmTokenEE15insert_one_implIRKS1_EEPS1_S6_OT_(ptr noundef nonnull align 8 dereferenceable(176) %i.z, ptr noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %i.d) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.015.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ac = select i1 %i.f, ptr @.str.3, ptr @.str.2 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ad, align 1, !tbaa !255
  %10 = load i8, ptr %i.ac, align 1, !tbaa !240
  %.not.i = icmp eq i8 %10, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %11

11:                                               ; preds = %bb.i
  store ptr %i.ac, ptr %5, align 8, !tbaa !240
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.i, %11
  %storemerge.i = phi i8 [ 3, %11 ], [ 1, %bb.i ]
  store i8 %storemerge.i, ptr %9, align 8, !tbaa !256
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %13, ptr %.sroa.015.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, ptr null) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ac

bb.j:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !44, !nonnull !257, !align !258
  %i.af = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.ae) #19 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !21 ; 2 uses
  %i.ag = icmp ult i64 %.sroa.2.0.copyload.i, 2
  br i1 %i.ag, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %or.cond3 = and i1 %3, %i.f
  br i1 %or.cond3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.al = tail call noundef ptr @_ZN4llvm15SmallVectorImplINS_8AsmTokenEE15insert_one_implIRKS1_EEPS1_S6_OT_(ptr noundef nonnull align 8 dereferenceable(176) %i.aj, ptr noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.d) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.014.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.an, align 1, !tbaa !255
  store ptr @.str.3, ptr %6, align 8, !tbaa !240
  store i8 3, ptr %i.am, align 8, !tbaa !256
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.aq = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.ap, ptr %.sroa.014.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, ptr null) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ac

bb.n:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 2 uses
  %i.as = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !240
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 1
  %i.au = add i64 %.sroa.2.0.copyload.i, -1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.aw = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr nonnull %i.at, i64 %i.au, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  br i1 %i.aw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !385 ; 7 uses
  %.not.i61 = icmp ult i64 %i.ax, 4294967296
  br i1 %.not.i61, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %or.cond5 = and i1 %3, %i.f
  br i1 %or.cond5, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !17
  %i.bc = call noundef ptr @_ZN4llvm15SmallVectorImplINS_8AsmTokenEE15insert_one_implIRKS1_EEPS1_S6_OT_(ptr noundef nonnull align 8 dereferenceable(176) %i.ba, ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.d) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.09.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.be, align 1, !tbaa !255
  store ptr @.str.3, ptr %7, align 8, !tbaa !240
  store i8 3, ptr %i.bd, align 8, !tbaa !256
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !23
  %i.bh = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.bg, ptr %.sroa.09.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr null, ptr null) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ac

bb.s:                                             ; preds = %bb.o
  %i.bi = trunc nuw i64 %i.ax to i32
  store i32 %i.bi, ptr %i.av, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  switch i8 %i.as, label %bb.y [
    i8 114, label %bb.t
    i8 102, label %bb.u
    i8 118, label %bb.v
    i8 97, label %bb.w
    i8 99, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.bj = icmp samesign ult i64 %i.ax, 16
  br i1 %i.bj, label %bb.ab, label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.bk = icmp samesign ult i64 %i.ax, 16
  br i1 %i.bk, label %bb.ab, label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.bl = icmp samesign ult i64 %i.ax, 32
  br i1 %i.bl, label %bb.ab, label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.bm = icmp samesign ult i64 %i.ax, 16
  br i1 %i.bm, label %bb.ab, label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bn = icmp samesign ult i64 %i.ax, 16
  br i1 %i.bn, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.x
  %or.cond7 = and i1 %3, %i.f
  br i1 %or.cond7, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !17
  %i.bs = call noundef ptr @_ZN4llvm15SmallVectorImplINS_8AsmTokenEE15insert_one_implIRKS1_EEPS1_S6_OT_(ptr noundef nonnull align 8 dereferenceable(176) %i.bq, ptr noundef %i.br, ptr noundef nonnull align 8 dereferenceable(40) %i.d) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.08.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.bu, align 1, !tbaa !255
  store ptr @.str.3, ptr %8, align 8, !tbaa !240
  store i8 3, ptr %i.bt, align 8, !tbaa !256
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !23
  %i.bx = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.bw, ptr %.sroa.08.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr null, ptr null) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.sink = phi i32 [ 0, %bb.t ], [ 2, %bb.v ], [ 3, %bb.w ], [ 1, %bb.u ], [ 4, %bb.x ]
  store i32 %.sink, ptr %1, align 8, !tbaa !26
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !44, !nonnull !257, !align !258
  %i.bz = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.by) #19
  %i.ca = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bz) #19
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !29
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !44, !nonnull !257, !align !258 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 152
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call noundef nonnull align 8 dereferenceable(40) ptr %i.cf(ptr noundef nonnull align 8 dereferenceable(243) %i.cc) #19 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.m, %bb.ab, %bb.aa, %bb.r, %_ZN4llvm5TwineC2EPKc.exit, %bb.c
  %.2 = phi i1 [ %i.o, %bb.c ], [ %14, %_ZN4llvm5TwineC2EPKc.exit ], [ %i.aq, %bb.m ], [ %i.bh, %bb.r ], [ false, %bb.ab ], [ %i.bx, %bb.aa ]
  ret i1 %.2
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243)) local_unnamed_addr #2

declare ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243), ptr, ptr noundef nonnull align 8 dereferenceable(34), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplINS_8AsmTokenEE15insert_one_implIRKS1_EEPS1_S6_OT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.d ; 2 uses
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19
  %.not.i.i.not.i = icmp ult i32 %i.c, %i.i
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i, label %bb.c, !prof !246

bb.c:                                             ; preds = %bb.b
  %i.j = icmp uge ptr %2, %i.a
  %i.k = icmp ult ptr %2, %1
  %spec.select.i.i.i.i.i = and i1 %i.j, %i.k
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %.critedge.i.i.i, !prof !247

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g)
  %i.o = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %i.n
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i

.critedge.i.i.i:                                  ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i: ; preds = %.critedge.i.i.i, %bb.d, %bb.b
  %i.q = phi ptr [ %i.a, %bb.b ], [ %i.o, %bb.d ], [ %.pre.i, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %2, %bb.b ], [ %i.p, %bb.d ], [ %2, %.critedge.i.i.i ] ; 3 uses
  %i.r = load i32, ptr %i.b, align 8, !tbaa !18
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.s ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %.016.i.i.i, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !282  ; 2 uses
  store i32 %i.y, ptr %i.w, align 8, !tbaa !282
  %i.z = icmp ult i32 %i.y, 65
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !240
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !240
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE9push_backERKS1_.exit

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(12) %i.v) #19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE9push_backERKS1_.exit: ; preds = %bb.e, %bb.f
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !18
  %i.ac = add i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ac, ptr %i.b, align 8, !tbaa !18
  %i.ad = load ptr, ptr %0, align 8, !tbaa !17
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -40
  br label %_ZN4llvm8AsmTokenaSERKS0_.exit

bb.g:                                             ; preds = %bb.a
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = add nuw nsw i64 %i.d, 1                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !19
  %.not.i.i.not = icmp ult i32 %i.c, %i.am
  br i1 %.not.i.i.not, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit, label %bb.h, !prof !246

bb.h:                                             ; preds = %bb.g
  %i.an = icmp uge ptr %2, %i.a
  %i.ao = icmp ult ptr %2, %i.e
  %spec.select.i.i.i.i = and i1 %i.an, %i.ao
  br i1 %spec.select.i.i.i.i, label %bb.i, label %.critedge.i.i, !prof !247

bb.i:                                             ; preds = %bb.h
  %i.ap = ptrtoint ptr %2 to i64
  %i.aq = sub i64 %i.ap, %i.ai
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ak)
  %i.ar = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aq
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit

.critedge.i.i:                                    ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ak)
  %.pre = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit: ; preds = %bb.g, %bb.i, %.critedge.i.i
  %i.at = phi ptr [ %i.a, %bb.g ], [ %i.ar, %bb.i ], [ %.pre, %.critedge.i.i ] ; 2 uses
  %.016.i.i = phi ptr [ %2, %bb.g ], [ %i.as, %bb.i ], [ %2, %.critedge.i.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aj ; 7 uses
  %i.av = load i32, ptr %i.b, align 8, !tbaa !18
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.aw ; 6 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 -16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 -8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !282
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !282
  %i.be = load i64, ptr %i.ba, align 8
  store i64 %i.be, ptr %i.az, align 8
  store i32 0, ptr %i.bc, align 8, !tbaa !282
  %i.bf = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.bg = load i32, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bf, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -40 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.au to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit
  %i.bo = udiv exact i64 %i.bm, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.cb, %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i ], [ %i.bo, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bq, %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i ], [ %i.bi, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bp, %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i ], [ %i.bj, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %i.bp, i64 24, i1 false)
  %i.br = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !282
  %i.bu = icmp ult i32 %i.bt, 65
  br i1 %i.bu, label %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !240 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.bv) #21
  br label %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i

_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i:          ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i.i.i
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.by = load i64, ptr %i.bx, align 8
  store i64 %i.by, ptr %i.br, align 8
  %i.bz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !282
  store i32 %i.ca, ptr %i.bs, align 8, !tbaa !282
  store i32 0, ptr %i.bz, align 8, !tbaa !282
  %i.cb = add nsw i64 %.010.i.i.i.i.i, -1
  %i.cc = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit, !llvm.loop !386

_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit: ; preds = %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i
  %.pre15 = load i32, ptr %i.b, align 8, !tbaa !18
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit: ; preds = %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit
  %i.cd = phi ptr [ %.pre16, %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.bf, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit ]
  %i.ce = phi i32 [ %.pre15, %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.bg, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit ]
  %i.cf = add i32 %i.ce, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.b, align 8, !tbaa !18
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.cd, i64 %i.cg
  %i.ci = icmp uge ptr %.016.i.i, %i.au
  %i.cj = icmp ult ptr %.016.i.i, %i.ch
  %spec.select.i = and i1 %i.ci, %i.cj
  %spec.select.idx = select i1 %spec.select.i, i64 40, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 %spec.select.idx ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %spec.select, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %spec.select, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !282
end_hunk_0
