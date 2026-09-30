Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVAsmParser?download=true
inline.NumInlined: 6935
inline.NumDeleted: 1768
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !39, !range !24, !noundef !25
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !24
  %i.j = load i8, ptr %i.d, align 8, !range !24
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal noundef nonnull ptr @_ZN4llvm19RegisterMCAsmParserIN12_GLOBAL__N_114RISCVAsmParserEE9AllocatorERKNS_15MCSubtargetInfoERNS_11MCAsmParserERKNS_11MCInstrInfoE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(243) %1, ptr noundef nonnull align 8 dereferenceable(58) %2) #4 align 2 {
bb.a:
  %3 = alloca %"class.llvm::FeatureBitset", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #25 ; 17 uses
  tail call void @_ZN4llvm17MCTargetAsmParserC2ERKNS_15MCSubtargetInfoERKNS_11MCInstrInfoE(ptr noundef nonnull align 8 dereferenceable(345) %i.a, ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(58) %2) #24
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN12_GLOBAL__N_114RISCVAsmParserE, i64 16), ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.c, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i32 0, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store i32 4, ptr %i.e, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store ptr %i.g, ptr %i.f, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i64 0, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store i64 4, ptr %i.i, align 8, !tbaa !45
  tail call void @_ZN4llvm20MCAsmParserExtension10InitializeERNS_11MCAsmParserE(ptr noundef nonnull align 8 dereferenceable(345) %i.a, ptr noundef nonnull align 8 dereferenceable(243) %1) #24
  %i.j = load ptr, ptr %1, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(243) %1, ptr nonnull @.str.26, i64 5, ptr nonnull @.str.27, i64 6) #24, !inline_history !371
  %i.m = load ptr, ptr %1, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(243) %1, ptr nonnull @.str.28, i64 6, ptr nonnull @.str.27, i64 6) #24, !inline_history !371
  %i.p = load ptr, ptr %1, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(243) %1, ptr nonnull @.str.29, i64 5, ptr nonnull @.str.30, i64 6) #24, !inline_history !371
  %i.s = load ptr, ptr %1, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(243) %1, ptr nonnull @.str.31, i64 6, ptr nonnull @.str.32, i64 6) #24, !inline_history !371
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  call fastcc void @_ZNK12_GLOBAL__N_114RISCVAsmParser24ComputeAvailableFeaturesERKN4llvm13FeatureBitsetE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71, !nonnull !25, !align !72
  %i.ab = call noundef nonnull align 8 dereferenceable(282) ptr @_ZNK4llvm9MCContext16getTargetOptionsEv(ptr noundef nonnull align 8 dereferenceable(2208) %i.aa) #24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !73 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !74 ; 3 uses
  %cond.i = icmp eq i64 %i.af, 0
  br i1 %cond.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit.i, label %_ZNK4llvm9StringRef9ends_withES0_.exit.i

_ZNK4llvm9StringRef9ends_withES0_.exit.i:         ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -1 ; 2 uses
  %lhsc.i = load i8, ptr %i.ah, align 1           ; 2 uses
  %i.ai = icmp eq i8 %lhsc.i, 102
  br i1 %i.ai, label %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i, label %_ZNK4llvm9StringRef9ends_withES0_.exit15.i

_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i:  ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.i
  %i.aj = call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(345) %i.a) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 240
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !29
  %i.am = and i64 %i.al, 35184372088832
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %bb.b, label %_ZNK4llvm9StringRef9ends_withES0_.exit.thread._ZNK4llvm9StringRef9ends_withES0_.exit15_crit_edge.i

_ZNK4llvm9StringRef9ends_withES0_.exit.thread._ZNK4llvm9StringRef9ends_withES0_.exit15_crit_edge.i: ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i
  %lhsc42.pre.i = load i8, ptr %i.ah, align 1
  br label %_ZNK4llvm9StringRef9ends_withES0_.exit15.i

bb.b:                                             ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i
  %i.an = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #24 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !79 ; 2 uses
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ult i64 %i.au, 121
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull @.str.34, i64 noundef 121) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(121) %i.ar, ptr noundef nonnull align 1 dereferenceable(121) @.str.34, i64 121, i1 false)
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !79
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 121
  store ptr %i.ay, ptr %i.aq, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZNK4llvm9StringRef9ends_withES0_.exit15.i:       ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.thread._ZNK4llvm9StringRef9ends_withES0_.exit15_crit_edge.i, %_ZNK4llvm9StringRef9ends_withES0_.exit.i
  %lhsc42.i = phi i8 [ %lhsc42.pre.i, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread._ZNK4llvm9StringRef9ends_withES0_.exit15_crit_edge.i ], [ %lhsc.i, %_ZNK4llvm9StringRef9ends_withES0_.exit.i ]
  %i.az = icmp eq i8 %lhsc42.i, 100
  br i1 %i.az, label %_ZNK4llvm9StringRef9ends_withES0_.exit15.thread.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZNK4llvm9StringRef9ends_withES0_.exit15.thread.i: ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit15.i
  %i.ba = call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(345) %i.a) #24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 240
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !29
  %i.bd = and i64 %i.bc, 8796093022208
  %.not43.i = icmp eq i64 %i.bd, 0
  br i1 %.not43.i, label %bb.e, label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.e:                                             ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit15.thread.i
  %i.be = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #24 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !78
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !79 ; 2 uses
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = icmp ult i64 %i.bl, 121
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull @.str.36, i64 noundef 121) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(121) %i.bi, ptr noundef nonnull align 1 dereferenceable(121) @.str.36, i64 121, i1 false)
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !79
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 121
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.g, %bb.f, %_ZNK4llvm9StringRef9ends_withES0_.exit15.thread.i, %_ZNK4llvm9StringRef9ends_withES0_.exit15.i, %bb.d, %bb.c, %bb.a
  %i.bq = call noundef i32 @_ZN4llvm8RISCVABI16computeTargetABIERKNS_15MCSubtargetInfoENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr %i.ad, i64 %i.af) #24 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !71, !nonnull !25, !align !72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 168
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !372
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 904
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !380, !range !24, !noundef !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i8 %i.bw, ptr %i.bx, align 8, !tbaa !243
  %i.by = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL18AddBuildAttributes, i64 120), align 8, !tbaa !247, !range !24, !noundef !25
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.h, label %_ZN12_GLOBAL__N_114RISCVAsmParserC2ERKN4llvm15MCSubtargetInfoERNS1_11MCAsmParserERKNS1_11MCInstrInfoE.exit

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %.val.i = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.ca = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.ca, align 8, !tbaa !248
  %i.cb = getelementptr i8, ptr %.val.val.i, i64 16
  %.val.val.val.i = load ptr, ptr %i.cb, align 8, !tbaa !250
  call void @_ZN4llvm19RISCVTargetStreamer20emitTargetAttributesERKNS_15MCSubtargetInfoEb(ptr noundef nonnull align 8 dereferenceable(22) %.val.val.val.i, ptr noundef nonnull align 8 dereferenceable(320) %0, i1 noundef zeroext false) #24
  br label %_ZN12_GLOBAL__N_114RISCVAsmParserC2ERKN4llvm15MCSubtargetInfoERNS1_11MCAsmParserERKNS1_11MCInstrInfoE.exit

_ZN12_GLOBAL__N_114RISCVAsmParserC2ERKN4llvm15MCSubtargetInfoERNS1_11MCAsmParserERKNS1_11MCInstrInfoE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i, %bb.h
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare void @_ZN4llvm17MCTargetAsmParserC2ERKNS_15MCSubtargetInfoERKNS_11MCInstrInfoE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(58)) unnamed_addr #5

declare void @_ZN4llvm20MCAsmParserExtension10InitializeERNS_11MCAsmParserE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(243)) unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_114RISCVAsmParser24ComputeAvailableFeaturesERKN4llvm13FeatureBitsetE(ptr dead_on_unwind noalias nofree nonnull writable align 8 initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 52 uses
  %i.c = shl i64 %i.b, 39
  %i.d = and i64 %i.c, 70368744177664
  %i.e = shl i64 %i.b, 38
  %i.f = and i64 %i.e, 140737488355328
  %i.g = or disjoint i64 %i.d, %i.f
  %i.h = shl i64 %i.b, 38
  %i.i = and i64 %i.h, 281474976710656
  %spec.select = or disjoint i64 %i.g, %i.i
  %i.j = shl i64 %i.b, 38
  %i.k = and i64 %i.j, 562949953421312
  %spec.select189 = or disjoint i64 %spec.select, %i.k
  %i.l = shl i64 %i.b, 30
  %i.m = and i64 %i.l, 4503599627370496
  %spec.select190 = or disjoint i64 %spec.select189, %i.m
  %i.n = shl i64 %i.b, 30
  %i.o = and i64 %i.n, 2251799813685248
  %spec.select191 = or disjoint i64 %spec.select190, %i.o
  %i.p = shl i64 %i.b, 30
  %i.q = and i64 %i.p, 9007199254740992
  %spec.select192 = or i64 %spec.select191, %i.q
  %i.r = shl i64 %i.b, 30
  %i.s = and i64 %i.r, 36028797018963968
  %spec.select193 = or i64 %spec.select192, %i.s
  %i.t = shl i64 %i.b, 30
  %i.u = and i64 %i.t, 18014398509481984
  %spec.select194 = or i64 %spec.select193, %i.u
  %i.v = shl i64 %i.b, 29
  %i.w = and i64 %i.v, 144115188075855872
  %spec.select195 = or i64 %spec.select194, %i.w
  %i.x = shl i64 %i.b, 31
  %i.y = and i64 %i.x, 1125899906842624
  %spec.select196 = or i64 %spec.select195, %i.y
  %i.z = shl i64 %i.b, 29
  %i.aa = and i64 %i.z, 72057594037927936
  %spec.select197 = or i64 %spec.select196, %i.aa ; 3 uses
  %i.ab = and i64 %i.b, 468192896
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %spec.select197, ptr %0, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ac = and i64 %i.b, 549755813888
  %.not44 = icmp eq i64 %i.ac, 0
  br i1 %.not44, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ad, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = phi i64 [ 2, %bb.d ], [ 0, %bb.c ]      ; 2 uses
  %i.af = load i64, ptr %1, align 8, !tbaa !29    ; 7 uses
  %i.ag = and i64 %i.af, 281474976710656
  %.not45 = icmp eq i64 %i.ag, 0
  br i1 %.not45, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = or i64 %spec.select197, 128             ; 2 uses
  store i64 %i.ah, ptr %0, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = phi i64 [ %i.ah, %bb.f ], [ %spec.select197, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !29 ; 26 uses
  %i.al = lshr i64 %i.ak, 26
  %i.am = and i64 %i.al, 278528
  %i.an = or i64 %i.am, %i.ai
  %i.ao = and i64 %i.ak, 18691697672192
  %i.ap = and i64 %i.af, 1099511627776            ; 2 uses
  %i.aq = lshr exact i64 %i.ap, 38
  %spec.select198 = or i64 %i.an, %i.aq           ; 2 uses
  %i.ar = or i64 %i.ao, %i.ap
  %.not225 = icmp eq i64 %i.ar, 0
  br i1 %.not225, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %spec.select198, ptr %0, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.as = and i64 %i.b, 1099511627776
  %.not49 = icmp eq i64 %i.as, 0
  br i1 %.not49, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = or disjoint i64 %i.ae, 4                ; 2 uses
  store i64 %i.au, ptr %i.at, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = phi i64 [ %i.au, %bb.j ], [ %i.ae, %bb.i ] ; 2 uses
  %i.aw = lshr i64 %i.ak, 26
  %i.ax = and i64 %i.aw, 229376
  %i.ay = lshr i64 %i.ak, 27
  %i.az = and i64 %i.ay, 524288
  %i.ba = or disjoint i64 %i.ax, %i.az
  %i.bb = and i64 %i.ak, 85761906966528
  %i.bc = and i64 %i.af, 35184372088832           ; 3 uses
  %.not54.not = icmp eq i64 %i.bc, 0
  %i.bd = lshr exact i64 %i.bc, 41
  %i.be = or disjoint i64 %i.ba, %i.bd
  %i.bf = and i64 %i.af, 8796093022208            ; 2 uses
  %i.bg = lshr exact i64 %i.bf, 40
  %i.bh = or disjoint i64 %i.be, %i.bg
  %i.bi = and i64 %i.af, 1125899906842624         ; 2 uses
  %i.bj = lshr exact i64 %i.bi, 41
  %i.bk = or disjoint i64 %i.bh, %i.bj
  %i.bl = and i64 %i.b, 8                         ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 39
  %i.bn = or disjoint i64 %i.bk, %i.bm
  %i.bo = shl i64 %i.b, 38
  %i.bp = and i64 %i.bo, 1649267441664
  %i.bq = or i64 %i.bp, %i.bn
  %spec.select206 = or i64 %i.bq, %spec.select198 ; 2 uses
  %i.br = and i64 %i.b, 6
  %i.bs = or disjoint i64 %i.bb, %i.br
  %i.bt = or disjoint i64 %i.bs, %i.bc
  %i.bu = or i64 %i.bt, %i.bf
  %i.bv = or disjoint i64 %i.bu, %i.bi
  %i.bw = or disjoint i64 %i.bv, %i.bl
  %i.bx = and i64 %i.b, 14                        ; 2 uses
  %brmerge14.not.not = icmp eq i64 %i.bx, 0
  %i.by = or i64 %spec.select206, 2
  %spec.select207 = select i1 %brmerge14.not.not, i64 %spec.select206, i64 %i.by
  %i.bz = or i64 %i.bw, %i.bx
  %i.ca = icmp ne i64 %i.bz, 0
  %.not59 = trunc i64 %i.b to i1
  %i.cb = shl i64 %i.b, 38
  %i.cc = and i64 %i.cb, 274877906944
  %spec.select208 = or i64 %spec.select207, %i.cc ; 4 uses
  %i.cd = or i1 %i.ca, %.not59
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 %spec.select208, ptr %0, align 8, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ce = and i64 %i.b, 16
  %.not60 = icmp eq i64 %i.ce, 0
  br i1 %.not60, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = or i64 %spec.select208, 8796093022208
  br label %bb.o

.thread:                                          ; preds = %bb.m
  br i1 %.not54.not, label %.thread1, label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread
  %i.cg = phi i64 [ %i.cf, %bb.n ], [ %spec.select208, %.thread ]
  %i.ch = or i64 %i.cg, 32                        ; 2 uses
  store i64 %i.ch, ptr %0, align 8, !tbaa !29
  br label %.thread1

.thread1:                                         ; preds = %.thread, %bb.o
  %i.ci = phi i64 [ %spec.select208, %.thread ], [ %i.ch, %bb.o ]
  %i.cj = lshr i64 %i.ak, 26
  %i.ck = and i64 %i.cj, 137438953472
  %i.cl = or i64 %i.ci, %i.ck
  %i.cm = shl i64 %i.b, 39
  %i.cn = and i64 %i.cm, 52776558133248
  %spec.select209 = or i64 %i.cn, %i.cl
  %i.co = and i64 %i.b, 96
  %i.cp = lshr i64 %i.ak, 25
  %i.cq = and i64 %i.cp, 536870912
  %spec.select210 = or i64 %spec.select209, %i.cq
  %i.cr = and i64 %i.ak, 36028797018963968        ; 2 uses
  %i.cs = lshr exact i64 %i.cr, 25
  %spec.select211 = or i64 %spec.select210, %i.cs
  %i.ct = and i64 %i.ak, 288230376151711744       ; 2 uses
  %i.cu = lshr exact i64 %i.ct, 26
  %spec.select212 = or i64 %spec.select211, %i.cu
  %i.cv = and i64 %i.ak, 72057594037927936        ; 2 uses
  %i.cw = lshr exact i64 %i.cv, 25
  %spec.select213 = or i64 %spec.select212, %i.cw
  %i.cx = lshr i64 %i.ak, 26
  %i.cy = and i64 %i.cx, 42949672960
  %spec.select215 = or i64 %i.cy, %spec.select213
  %i.cz = lshr i64 %i.ak, 26
  %i.da = and i64 %i.cz, 85899345920
  %spec.select217 = or i64 %i.da, %spec.select215
  %i.db = and i64 %i.ak, -558446353793941504
  %i.dc = or disjoint i64 %i.db, %i.co
  %i.dd = or disjoint i64 %i.dc, %i.cr
  %i.de = or disjoint i64 %i.dd, %i.ct
  %i.df = or disjoint i64 %i.de, %i.cv
  %i.dg = and i64 %i.ak, 140737488355328          ; 2 uses
  %i.dh = lshr exact i64 %i.dg, 27
  %spec.select218 = or i64 %spec.select217, %i.dh ; 3 uses
  %i.di = or disjoint i64 %i.df, %i.dg
  %.not226 = icmp eq i64 %i.di, 0
  br i1 %.not226, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread1
  store i64 %spec.select218, ptr %0, align 8, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %.thread1, %bb.p
  %i.dj = and i64 %i.ak, 281474976710656
  %.not75 = icmp eq i64 %i.dj, 0
  br i1 %.not75, label %bb.r, label %.thread2

.thread2:                                         ; preds = %bb.q
  %i.dk = or i64 %spec.select218, 2097152         ; 2 uses
  store i64 %i.dk, ptr %0, align 8, !tbaa !29
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4398046511104, ptr %i.dl, align 8, !tbaa !29
  br label %bb.s

bb.s:                                             ; preds = %.thread2, %bb.r
  %i.dm = phi i64 [ 0, %.thread2 ], [ 4398046511104, %bb.r ] ; 2 uses
  %i.dn = phi i64 [ %i.dk, %.thread2 ], [ %spec.select218, %bb.r ] ; 2 uses
  %i.do = and i64 %i.ak, 9007199254740992
  %.not73 = icmp eq i64 %i.do, 0
  br i1 %.not73, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = or i64 %i.dn, 268435456                 ; 2 uses
  store i64 %i.dp, ptr %0, align 8, !tbaa !29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dq = phi i64 [ %i.dp, %bb.t ], [ %i.dn, %bb.s ] ; 2 uses
  %i.dr = and i64 %i.ak, 1125899906842624
  %.not76 = icmp eq i64 %i.dr, 0                  ; 2 uses
  br i1 %.not76, label %bb.v, label %.thread3

.thread3:                                         ; preds = %bb.u
  %i.ds = or i64 %i.dq, 16777216                  ; 2 uses
  store i64 %i.ds, ptr %0, align 8, !tbaa !29
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = or disjoint i64 %i.dm, 8796093022208    ; 2 uses
  store i64 %i.du, ptr %i.dt, align 8, !tbaa !29
  br label %bb.w

bb.w:                                             ; preds = %.thread3, %bb.v
  %i.dv = phi i64 [ %i.dm, %.thread3 ], [ %i.du, %bb.v ]
  %i.dw = phi i64 [ %i.ds, %.thread3 ], [ %i.dq, %bb.v ]
  %i.dx = lshr i64 %i.ak, 25
  %i.dy = and i64 %i.dx, 134217728
  %i.dz = or i64 %i.dw, %i.dy                     ; 2 uses
  %i.ea = and i64 %i.ak, 1407374883553280
  %brmerge15.not.not = icmp eq i64 %i.ea, 0
  %i.eb = or i64 %i.dz, 4194304
  %i.ec = select i1 %brmerge15.not.not, i64 %i.dz, i64 %i.eb
  %i.ed = lshr i64 %i.ak, 25
  %i.ee = and i64 %i.ed, 67108864
  %spec.select219 = or i64 %i.ec, %i.ee
  %i.ef = lshr i64 %i.ak, 26
  %i.eg = and i64 %i.ef, 8388608
  %spec.select220 = or i64 %spec.select219, %i.eg ; 3 uses
  %i.eh = and i64 %i.ak, 8725724278030336
  %.not227 = icmp eq i64 %i.eh, 0
  br i1 %.not227, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %spec.select220, ptr %0, align 8, !tbaa !29
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ei = and i64 %i.b, 2147483648
  %.not80.a = icmp eq i64 %i.ei, 0
  br i1 %.not80.a, label %.thread12, label %bb.z

bb.z:                                             ; preds = %bb.y
  %2 = shl i64 %i.b, 28
  %3 = and i64 %2, 1152921504606846976
  %spec.select221.v = or disjoint i64 %3, 288230376151711744
  br label %.thread4

.thread12:                                        ; preds = %bb.y
  %4 = and i64 %i.b, 4294967296
  %.not80 = icmp eq i64 %4, 0
  br i1 %.not80, label %.thread5, label %.thread4

.thread4:                                         ; preds = %.thread12, %bb.z
  %spec.select221.v.pn = phi i64 [ %spec.select221.v, %bb.z ], [ 1152921504606846976, %.thread12 ]
  %i.ej = or i64 %spec.select220, %spec.select221.v.pn
  %i.ek = or i64 %i.ej, 576460752303423488        ; 2 uses
  store i64 %i.ek, ptr %0, align 8, !tbaa !29
  br label %.thread5

.thread5:                                         ; preds = %.thread12, %.thread4
  %i.el = phi i64 [ %spec.select220, %.thread12 ], [ %i.ek, %.thread4 ]
  %i.em = shl i64 %i.b, 28
  %i.en = and i64 %i.em, 2305843009213693952
  %i.eo = or i64 %i.el, %i.en
  %i.ep = shl i64 %i.b, 27
  %i.eq = and i64 %i.ep, -9223372036854775808
  %i.er = or i64 %i.eo, %i.eq                     ; 3 uses
  %i.es = and i64 %i.b, 77309411328
  %.not228 = icmp eq i64 %i.es, 0
  br i1 %.not228, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.thread5
  store i64 %i.er, ptr %0, align 8, !tbaa !29
  br label %bb.ab

bb.ab:                                            ; preds = %.thread5, %bb.aa
  %i.et = and i64 %i.b, 137438953472
  %.not84 = icmp eq i64 %i.et, 0
  br i1 %.not84, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = or i64 %i.av, 1                         ; 2 uses
  store i64 %i.ev, ptr %i.eu, align 8, !tbaa !29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ew = phi i64 [ %i.ev, %bb.ac ], [ %i.av, %bb.ab ] ; 2 uses
  %i.ex = and i64 %i.b, 17179869184
  %.not85 = icmp eq i64 %i.ex, 0
  br i1 %.not85, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ey = or i64 %i.er, 4611686018427387904       ; 2 uses
  store i64 %i.ey, ptr %0, align 8, !tbaa !29
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ez = phi i64 [ %i.ey, %bb.ae ], [ %i.er, %bb.ad ] ; 2 uses
  %i.fa = and i64 %i.b, 2199023255552
  %.not86 = icmp eq i64 %i.fa, 0
  br i1 %.not86, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = or i64 %i.ew, 8                         ; 2 uses
  store i64 %i.fc, ptr %i.fb, align 8, !tbaa !29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fd = phi i64 [ %i.fc, %bb.ag ], [ %i.ew, %bb.af ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !29 ; 37 uses
  %i.fg = and i64 %i.ff, 402653184
  %or.cond.not = icmp eq i64 %i.fg, 0
  br i1 %or.cond.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fi = or i64 %i.fd, 67108864                  ; 2 uses
  store i64 %i.fi, ptr %i.fh, align 8, !tbaa !29
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.fj = phi i64 [ %i.fd, %bb.ah ], [ %i.fi, %bb.ai ] ; 2 uses
  %i.fk = and i64 %i.b, 2305843009213693952
  %.not87 = icmp eq i64 %i.fk, 0
  br i1 %.not87, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fm = or i64 %i.fj, 65536                     ; 2 uses
  store i64 %i.fm, ptr %i.fl, align 8, !tbaa !29
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fn = phi i64 [ %i.fm, %bb.ak ], [ %i.fj, %bb.aj ] ; 2 uses
  %i.fo = and i64 %i.b, 576460752303423488
  %.not88 = icmp eq i64 %i.fo, 0
  br i1 %.not88, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = or i64 %i.fn, 16384                     ; 2 uses
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !29
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fr = phi i64 [ %i.fq, %bb.am ], [ %i.fn, %bb.al ] ; 2 uses
  %i.fs = and i64 %i.b, 9007199254740992
  %.not89 = icmp eq i64 %i.fs, 0                  ; 2 uses
  br i1 %.not89, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fu = or i64 %i.fr, 512                       ; 2 uses
  store i64 %i.fu, ptr %i.ft, align 8, !tbaa !29
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fv = phi i64 [ %i.fu, %bb.ao ], [ %i.fr, %bb.an ] ; 2 uses
  %i.fw = and i64 %i.b, 18014398509481984
  %.not90 = icmp eq i64 %i.fw, 0
  br i1 %.not90, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fy = or i64 %i.fv, 2048                      ; 2 uses
  store i64 %i.fy, ptr %i.fx, align 8, !tbaa !29
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fz = phi i64 [ %i.fy, %bb.aq ], [ %i.fv, %bb.ap ] ; 3 uses
  %i.ga = and i64 %i.b, 36028797018963972
  %or.cond18.not = icmp eq i64 %i.ga, 0
  br i1 %or.cond18.not, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gb = or i64 %i.ez, 2199023255552             ; 2 uses
  store i64 %i.gb, ptr %0, align 8, !tbaa !29
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.gc = phi i64 [ %i.ez, %bb.ar ], [ %i.gb, %bb.as ]
  %i.gd = and i64 %i.b, 144115188075855872
  %.not92 = icmp eq i64 %i.gd, 0
  br i1 %.not92, label %.thread6, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ge = or i64 %i.fz, 4096
  br label %bb.av

.thread6:                                         ; preds = %bb.at
  br i1 %.not89, label %.thread7, label %bb.av

bb.av:                                            ; preds = %bb.au, %.thread6
  %i.gf = phi i64 [ %i.ge, %bb.au ], [ %i.fz, %.thread6 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gh = or i64 %i.gf, 1024                      ; 2 uses
  store i64 %i.gh, ptr %i.gg, align 8, !tbaa !29
  br label %.thread7

.thread7:                                         ; preds = %.thread6, %bb.av
  %i.gi = phi i64 [ %i.fz, %.thread6 ], [ %i.gh, %bb.av ] ; 2 uses
  %i.gj = and i64 %i.b, 4611686018427387904
  %.not93 = icmp eq i64 %i.gj, 0
  br i1 %.not93, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.thread7
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gl = or i64 %i.gi, 131072                    ; 2 uses
  store i64 %i.gl, ptr %i.gk, align 8, !tbaa !29
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.thread7
  %i.gm = phi i64 [ %i.gl, %bb.aw ], [ %i.gi, %.thread7 ] ; 2 uses
  %i.gn = and i64 %i.b, 4398046511104
  %.not94 = icmp eq i64 %i.gn, 0
  br i1 %.not94, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gp = or i64 %i.gm, 16                        ; 2 uses
  store i64 %i.gp, ptr %i.go, align 8, !tbaa !29
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gq = phi i64 [ %i.gp, %bb.ay ], [ %i.gm, %bb.ax ] ; 3 uses
  %i.gr = and i64 %i.b, 8796093022208
  %.not95 = icmp eq i64 %i.gr, 0
  br i1 %.not95, label %bb.ba, label %.thread8

.thread8:                                         ; preds = %bb.az
  %i.gs = or i64 %i.gq, 32
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gt = and i64 %i.b, 17592186044416
  %.not96 = icmp eq i64 %i.gt, 0
  br i1 %.not96, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.thread8, %bb.ba
  %i.gu = phi i64 [ %i.gs, %.thread8 ], [ %i.gq, %bb.ba ]
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gw = or i64 %i.gu, 64                        ; 2 uses
  store i64 %i.gw, ptr %i.gv, align 8, !tbaa !29
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gx = phi i64 [ %i.gw, %bb.bb ], [ %i.gq, %bb.ba ] ; 2 uses
  %.not97 = icmp sgt i64 %i.b, -1
end_hunk_0
