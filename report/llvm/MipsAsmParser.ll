Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsAsmParser?download=true
inline.NumInlined: 6896
inline.NumDeleted: 1235
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_113MipsAsmParser22clearModuleFeatureBitsEmN4llvm9StringRefE:bb.a
_ZN12_GLOBAL__N_113MipsAsmParser16clearFeatureBitsEmN4llvm9StringRefE.exit: ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3 = load ptr, ptr %i.p, align 8, !tbaa !50
  %.val = load ptr, ptr %.val3, align 8, !tbaa !68
  %i.q = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.r, i64 48, i1 false), !tbaa.struct !66
  ret void
}

declare noundef zeroext i1 @_ZN4llvm13MCParserUtils25parseAssignmentExpressionENS_9StringRefEbRNS_11MCAsmParserERPNS_8MCSymbolERPKNS_6MCExprE(ptr, i64, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(243), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #2

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm11MCAsmParser8parseEOLEv(ptr noundef nonnull align 8 dereferenceable(243)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm9MCContext13getELFSectionERKNS_5TwineEjjjS3_bjPKNS_11MCSymbolELFE(ptr noundef nonnull align 8 dereferenceable(2208), ptr noundef nonnull align 8 dereferenceable(34), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(34), i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113MipsAsmParser18processInstructionERN4llvm6MCInstENS1_5SMLocERNS1_10MCStreamerEPKNS1_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(128) initializes((8, 16)) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(304) %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvm::MCOperand", align 8  ; 5 uses
  %23 = alloca %"class.llvm::MCValue", align 8    ; 8 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %26 = alloca %"class.llvm::MCOperand", align 8  ; 5 uses
  %27 = alloca %"class.llvm::MCOperand", align 8  ; 6 uses
  %28 = alloca %"class.llvm::MCOperand", align 8  ; 5 uses
  %29 = alloca %"class.llvm::MCOperand", align 8  ; 5 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %35 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %45 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %49 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %50 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %51 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %52 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %53 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %54 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %55 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %56 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %57 = alloca %"class.llvm::MCInst", align 8     ; 9 uses
  %58 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %59 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %60 = alloca %"class.llvm::MCInst", align 8     ; 11 uses
  %61 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %62 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %63 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %64 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %65 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %66 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %67 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %68 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %69 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %70 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %71 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %72 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %73 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %74 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %75 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %76 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %77 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %78 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %79 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %80 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %81 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %82 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %83 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 82 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !73  ; 9 uses
  %i.b = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.c = getelementptr i8, ptr %.val.val, i64 16
  %.val.val.val = load ptr, ptr %i.c, align 8, !tbaa !76 ; 17 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !330    ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !331, !nonnull !48, !align !49
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !334
  %i.h = zext i32 %i.d to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.i ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store ptr %2, ptr %i.k, align 8, !tbaa !266
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !358
  %i.n = and i64 %i.m, 1152
  %or.cond721.not = icmp eq i64 %i.n, 0
  br i1 %or.cond721.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.d, label %.thread [
    i32 928, label %bb.c
    i32 929, label %bb.c
    i32 930, label %bb.c
    i32 931, label %bb.c
    i32 957, label %bb.c
    i32 1052, label %bb.c
    i32 971, label %bb.c
    i32 1074, label %bb.c
    i32 978, label %bb.g
    i32 991, label %bb.g
    i32 1020, label %bb.g
    i32 1035, label %bb.g
    i32 980, label %bb.g
    i32 1037, label %bb.g
    i32 936, label %bb.g
    i32 941, label %bb.g
    i32 990, label %bb.g
    i32 999, label %bb.g
    i32 1028, label %bb.g
    i32 1047, label %bb.g
    i32 985, label %bb.g
    i32 1042, label %bb.g
    i32 938, label %bb.g
    i32 943, label %bb.g
    i32 935, label %bb.g
    i32 940, label %bb.g
    i32 945, label %bb.g
    i32 947, label %bb.g
    i32 972, label %bb.k
    i32 974, label %bb.k
    i32 1029, label %bb.k
    i32 1031, label %bb.k
    i32 975, label %bb.k
    i32 977, label %bb.k
    i32 1032, label %bb.k
    i32 1034, label %bb.k
    i32 959, label %bb.k
    i32 961, label %bb.k
    i32 1054, label %bb.k
    i32 1056, label %bb.k
    i32 1024, label %bb.o
    i32 1026, label %bb.o
    i32 986, label %bb.o
    i32 988, label %bb.o
    i32 995, label %bb.o
    i32 997, label %bb.o
    i32 1043, label %bb.o
    i32 1045, label %bb.o
    i32 966, label %bb.s
    i32 970, label %bb.s
    i32 1069, label %bb.s
    i32 1073, label %bb.s
    i32 963, label %bb.w
    i32 967, label %bb.w
    i32 1066, label %bb.w
    i32 1070, label %bb.w
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.0597.0.copyload = load i8, ptr %i.q, align 8, !tbaa !360
  %.sroa.15613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.15613.0.copyload = load i64, ptr %.sroa.15613.0..sroa_idx, align 8, !tbaa !65 ; 4 uses
  %i.r = icmp eq i8 %.sroa.0597.0.copyload, 2
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #23
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 240
  %i.u = load i64, ptr %i.t, align 8, !tbaa !58
  %i.v = and i64 %i.u, 65536                      ; 2 uses
  %84 = or disjoint i64 %i.v, -131072
  %.not.i = icmp sle i64 %84, %.sroa.15613.0.copyload
  %85 = xor i64 %i.v, 131071
  %i.w = icmp sle i64 %.sroa.15613.0.copyload, %85
  %or.cond723 = and i1 %.not.i, %i.w
  br i1 %or.cond723, label %bb.e, label %_ZN4llvm6isIntNEjl.exit.thread

_ZN4llvm6isIntNEjl.exit.thread:                   ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  %i.x = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %32, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !275
  store ptr @.str.342, ptr %32, align 8, !tbaa !65
  store i8 3, ptr %i.x, align 8, !tbaa !274
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.aa = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.z, ptr %2, ptr noundef nonnull align 8 dereferenceable(34) %32, ptr null, ptr null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %_ZN12_GLOBAL__N_113MipsAsmParser20tryExpandInstructionERN4llvm6MCInstENS1_5SMLocERNS1_10MCStreamerEPKNS1_15MCSubtargetInfoE.exit.thread718

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 240
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !58
  %i.ae = and i64 %i.ad, 65536
  %.not735 = icmp eq i64 %i.ae, 0                 ; 2 uses
  %.neg736 = select i1 %.not735, i64 -4, i64 -2
  %i.af = select i1 %.not735, i64 4, i64 2
  %i.ag = add nsw i64 %.sroa.15613.0.copyload, -1
  %i.ah = add nsw i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, %.neg736
  %.not381 = icmp eq i64 %i.ai, %.sroa.15613.0.copyload
  br i1 %.not381, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %33, i64 33
  store i8 1, ptr %i.ak, align 1, !tbaa !275
  store ptr @.str.343, ptr %33, align 8, !tbaa !65
  store i8 3, ptr %i.aj, align 8, !tbaa !274
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.am = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.al, ptr %2, ptr noundef nonnull align 8 dereferenceable(34) %33, ptr null, ptr null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %_ZN12_GLOBAL__N_113MipsAsmParser20tryExpandInstructionERN4llvm6MCInstENS1_5SMLocERNS1_10MCStreamerEPKNS1_15MCSubtargetInfoE.exit.thread718

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.0597.0.copyload603 = load i8, ptr %i.ap, align 8, !tbaa !360
  %.sroa.15613.0..sroa_idx614 = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.15613.0.copyload615 = load i64, ptr %.sroa.15613.0..sroa_idx614, align 8, !tbaa !65 ; 4 uses
  %i.aq = icmp eq i8 %.sroa.0597.0.copyload603, 2
  br i1 %i.aq, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #23
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 240
  %i.at = load i64, ptr %i.as, align 8, !tbaa !58
  %i.au = and i64 %i.at, 65536                    ; 2 uses
  %86 = or disjoint i64 %i.au, -131072
  %.not.i428 = icmp sle i64 %86, %.sroa.15613.0.copyload615
  %87 = xor i64 %i.au, 131071
  %i.av = icmp sle i64 %.sroa.15613.0.copyload615, %87
  %or.cond725 = and i1 %.not.i428, %i.av
  br i1 %or.cond725, label %bb.i, label %_ZN4llvm6isIntNEjl.exit429.thread

_ZN4llvm6isIntNEjl.exit429.thread:                ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  %i.aw = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %34, i64 33
  store i8 1, ptr %i.ax, align 1, !tbaa !275
  store ptr @.str.342, ptr %34, align 8, !tbaa !65
  store i8 3, ptr %i.aw, align 8, !tbaa !274
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.az = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.ay, ptr %2, ptr noundef nonnull align 8 dereferenceable(34) %34, ptr null, ptr null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %_ZN12_GLOBAL__N_113MipsAsmParser20tryExpandInstructionERN4llvm6MCInstENS1_5SMLocERNS1_10MCStreamerEPKNS1_15MCSubtargetInfoE.exit.thread718

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 240
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !58
  %i.bd = and i64 %i.bc, 65536
  %.not733 = icmp eq i64 %i.bd, 0                 ; 2 uses
  %.neg = select i1 %.not733, i64 -4, i64 -2
  %i.be = select i1 %.not733, i64 4, i64 2
  %i.bf = add nsw i64 %.sroa.15613.0.copyload615, -1
  %i.bg = add nsw i64 %i.bf, %i.be
  %i.bh = and i64 %i.bg, %.neg
  %.not380 = icmp eq i64 %i.bh, %.sroa.15613.0.copyload615
  br i1 %.not380, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  %i.bi = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %35, i64 33
  store i8 1, ptr %i.bj, align 1, !tbaa !275
  store ptr @.str.343, ptr %35, align 8, !tbaa !65
  store i8 3, ptr %i.bi, align 8, !tbaa !274
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.bl = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.bk, ptr %2, ptr noundef nonnull align 8 dereferenceable(34) %35, ptr null, ptr null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %_ZN12_GLOBAL__N_113MipsAsmParser20tryExpandInstructionERN4llvm6MCInstENS1_5SMLocERNS1_10MCStreamerEPKNS1_15MCSubtargetInfoE.exit.thread718

bb.k:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !50 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.sroa.0597.0.copyload604 = load i8, ptr %i.bo, align 8, !tbaa !360
  %.sroa.15613.0..sroa_idx616 = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %.sroa.15613.0.copyload617 = load i64, ptr %.sroa.15613.0..sroa_idx616, align 8, !tbaa !65 ; 2 uses
  %i.bp = icmp eq i8 %.sroa.0597.0.copyload604, 2
  br i1 %i.bp, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bq = add i64 %.sroa.15613.0.copyload617, 131072
  %or.cond727 = icmp ult i64 %i.bq, 262144
  br i1 %or.cond727, label %bb.m, label %_ZN4llvm6isIntNEjl.exit431.thread

_ZN4llvm6isIntNEjl.exit431.thread:                ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  %i.br = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %36, i64 33
  store i8 1, ptr %i.bs, align 1, !tbaa !275
  store ptr @.str.342, ptr %36, align 8, !tbaa !65
  store i8 3, ptr %i.br, align 8, !tbaa !274
  %i.bt = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val, ptr %2, ptr noundef nonnull align 8 dereferenceable(34) %36, ptr null, ptr null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %_ZN12_GLOBAL__N_113MipsAsmParser20tryExpandInstructionERN4llvm6MCInstENS1_5SMLocERNS1_10MCStreamerEPKNS1_15MCSubtargetInfoE.exit.thread718

bb.m:                                             ; preds = %bb.l
  %i.bu = and i64 %.sroa.15613.0.copyload617, 3
  %.not379 = icmp eq i64 %i.bu, 0
  br i1 %.not379, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  %i.bv = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %37, i64 33
  store i8 1, ptr %i.bw, align 1, !tbaa !275
  store ptr @.str.343, ptr %37, align 8, !tbaa !65
  store i8 3, ptr %i.bv, align 8, !tbaa !274
  %i.bx = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val, ptr %2, ptr noundef nonnull align 8 dereferenceable(34) %37, ptr null, ptr null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  br label %_ZN12_GLOBAL__N_113MipsAsmParser20tryExpandInstructionERN4llvm6MCInstENS1_5SMLocERNS1_10MCStreamerEPKNS1_15MCSubtargetInfoE.exit.thread718

bb.o:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !50 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.0597.0.copyload605 = load i8, ptr %i.ca, align 8, !tbaa !360
  %.sroa.15613.0..sroa_idx618 = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.15613.0.copyload619 = load i64, ptr %.sroa.15613.0..sroa_idx618, align 8, !tbaa !65 ; 2 uses
  %i.cb = icmp eq i8 %.sroa.0597.0.copyload605, 2
  br i1 %i.cb, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cc = add i64 %.sroa.15613.0.copyload619, 131072
  %or.cond728 = icmp ult i64 %i.cc, 262144
  br i1 %or.cond728, label %bb.q, label %_ZN4llvm6isIntNEjl.exit433.thread

_ZN4llvm6isIntNEjl.exit433.thread:                ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  %i.cd = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %38, i64 33
  store i8 1, ptr %i.ce, align 1, !tbaa !275
  store ptr @.str.342, ptr %38, align 8, !tbaa !65
  store i8 3, ptr %i.cd, align 8, !tbaa !274
  %i.cf = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val, ptr %2, ptr noundef nonnull align 8 dereferenceable(34) %38, ptr null, ptr null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  br label %_ZN12_GLOBAL__N_113MipsAsmParser20tryExpandInstructionERN4llvm6MCInstENS1_5SMLocERNS1_10MCStreamerEPKNS1_15MCSubtargetInfoE.exit.thread718

bb.q:                                             ; preds = %bb.p
  %i.cg = and i64 %.sroa.15613.0.copyload619, 3
  %.not378 = icmp eq i64 %i.cg, 0
  br i1 %.not378, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  %i.ch = getelementptr inbounds nuw i8, ptr %39, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %39, i64 33
  store i8 1, ptr %i.ci, align 1, !tbaa !275
  store ptr @.str.343, ptr %39, align 8, !tbaa !65
  store i8 3, ptr %i.ch, align 8, !tbaa !274
  %i.cj = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val, ptr %2, ptr noundef nonnull align 8 dereferenceable(34) %39, ptr null, ptr null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %_ZN12_GLOBAL__N_113MipsAsmParser20tryExpandInstructionERN4llvm6MCInstENS1_5SMLocERNS1_10MCStreamerEPKNS1_15MCSubtargetInfoE.exit.thread718

bb.s:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !50 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.0597.0.copyload606 = load i8, ptr %i.cm, align 8, !tbaa !360
  %.sroa.15613.0..sroa_idx620 = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %.sroa.15613.0.copyload621 = load i64, ptr %.sroa.15613.0..sroa_idx620, align 8, !tbaa !65 ; 2 uses
  %i.cn = icmp eq i8 %.sroa.0597.0.copyload606, 2
  br i1 %i.cn, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.co = add i64 %.sroa.15613.0.copyload621, 4194304
  %or.cond729 = icmp ult i64 %i.co, 8388608
  br i1 %or.cond729, label %bb.u, label %_ZN4llvm6isIntNEjl.exit435.thread

_ZN4llvm6isIntNEjl.exit435.thread:                ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  %i.cp = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %40, i64 33
  store i8 1, ptr %i.cq, align 1, !tbaa !275
  store ptr @.str.342, ptr %40, align 8, !tbaa !65
  store i8 3, ptr %i.cp, align 8, !tbaa !274
  %i.cr = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val, ptr %2, ptr noundef nonnull align 8 dereferenceable(34) %40, ptr null, ptr null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  br label %_ZN12_GLOBAL__N_113MipsAsmParser20tryExpandInstructionERN4llvm6MCInstENS1_5SMLocERNS1_10MCStreamerEPKNS1_15MCSubtargetInfoE.exit.thread718

bb.u:                                             ; preds = %bb.t
  %i.cs = and i64 %.sroa.15613.0.copyload621, 3
  %.not377 = icmp eq i64 %i.cs, 0
  br i1 %.not377, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23
  %i.ct = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %41, i64 33
  store i8 1, ptr %i.cu, align 1, !tbaa !275
  store ptr @.str.343, ptr %41, align 8, !tbaa !65
  store i8 3, ptr %i.ct, align 8, !tbaa !274
  %i.cv = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val, ptr %2, ptr noundef nonnull align 8 dereferenceable(34) %41, ptr null, ptr null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  br label %_ZN12_GLOBAL__N_113MipsAsmParser20tryExpandInstructionERN4llvm6MCInstENS1_5SMLocERNS1_10MCStreamerEPKNS1_15MCSubtargetInfoE.exit.thread718

bb.w:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !50 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.sroa.0597.0.copyload607 = load i8, ptr %i.cy, align 8, !tbaa !360
  %.sroa.15613.0..sroa_idx622 = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %.sroa.15613.0.copyload623 = load i64, ptr %.sroa.15613.0..sroa_idx622, align 8, !tbaa !65 ; 2 uses
  %i.cz = icmp eq i8 %.sroa.0597.0.copyload607, 2
  br i1 %i.cz, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.da = add i64 %.sroa.15613.0.copyload623, 128
  %i.db = icmp ult i64 %i.da, 256
  br i1 %i.db, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  %i.dc = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %42, i64 33
  store i8 1, ptr %i.dd, align 1, !tbaa !275
  store ptr @.str.342, ptr %42, align 8, !tbaa !65
  store i8 3, ptr %i.dc, align 8, !tbaa !274
  %i.de = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val, ptr %2, ptr noundef nonnull align 8 dereferenceable(34) %42, ptr null, ptr null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  br label %_ZN12_GLOBAL__N_113MipsAsmParser20tryExpandInstructionERN4llvm6MCInstENS1_5SMLocERNS1_10MCStreamerEPKNS1_15MCSubtargetInfoE.exit.thread718

bb.z:                                             ; preds = %bb.x
  %i.df = and i64 %.sroa.15613.0.copyload623, 1
  %.not376 = icmp eq i64 %i.df, 0
  br i1 %.not376, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
end_hunk_0
